# M01 Purchase Requisition — Bug Fix Prompts
**Date**: 2026-04-24  
**Source**: `Bugs.md` + FSD §2 & §3 + VB6 source `tmpPoindent.frm` (7,453 lines) deep analysis  
**Status**: Awaiting implementation

---

## VB6 Ground Truth Summary

Before the fix prompts, the key facts extracted from `tmpPoindent.frm` that correct earlier assumptions:

| Field | VB6 Control | DataField | VB6 Behaviour | DB Column |
|---|---|---|---|---|
| PR Type | `Combo2` (Style=2 DropList) | `ABCFLG` | Code extracted: `Mid(ss, 1, InStr(ss,"--")-1)` → stored in `Text5.Text`, then `adoPrimaryRS("itype") = Text5.Text` | `po_prh.IType VARCHAR(20)` |
| Requester | `txtfields(1)` (DataFormat=numeric "0") | `reqname` | `val(txtfields(1).Text)` stored — numeric employee CODE, NOT name | `po_prh.ReqName VARCHAR(100)` |
| Requester Name | `Text4` (read-only) | — | Auto-filled from `pr_emp.ename` — display only | not stored |
| PO Group | `txtfields(7)` | `PO_GRP` | `Visible=0 'False` by default; shown only when `PurTypeFlg=1` | `po_prh.PoGroupCode VARCHAR(20)` |
| Section | `Text3` | `section` | MaxLength=20 in form definition | `po_prh.Section VARCHAR(100)` |
| Scope Code | `txtfields(3)` | `scopecode` | DataFormat=numeric "0" | `po_prh.ScopeCode VARCHAR(20)` |
| Place | `PlaceTextBox` | col 15 in grid | Real VB6 field → `po_prl.place` | `po_prl.Place VARCHAR(100)` |

**Current UI bug on poGroupCode**: The form labels it "Cost Centre" — this is wrong. VB6 `txtfields(7)` DataField=`PO_GRP` = **PO Group / Order Type**. The actual "Cost Centre" in VB6 is a grid column (`po_prl.CCCODE`), not a header field.

---

## Summary

| ID | Area | Description | Priority |
|---|---|---|---|
| B01 | List Page | Column widths don't fit content | Medium |
| B02 | List Page | No Download button per row | High |
| B03 | List Page | Edit navigation loses FY date range | High |
| B04 | List Page | Requested By shows raw code, not "code – name" | High |
| B05 | Create/Edit Form | poGroupCode is plain text input, should be dropdown | High |
| B06 | Create/Edit Form | SaleOrderNo / SaleOrderDate / ScopeCode should be in collapsible section | Medium |
| B07 | Create/Edit Form | Remove Place field from item entry form | Medium |
| F01 | FSD Alignment | reqName must store empNo (employee code), not eName (full name) | High |
| F02 | FSD Alignment | Section max 20 chars per VB6 form — DTO allows 100 (intentional extension) | Low |
| F03 | FSD Alignment | Reference No. auto-uppercase per FSD — not implemented in frontend | Low |

---

## Requisition List Page Bugs

---

### B01 — Column Auto-Width to Fit Content

**File**: `src/features/purchase-requisition/components/pr-list/PRDataTable.tsx`

**Current behaviour**: `onGridReady` calls `sizeColumnsToFit()` which stretches all columns to fill the grid width. Columns with short content (PR No, Date, Items count) are over-wide; content-heavy columns (Department, Requested By) get too little space.

**Required**: Auto-size columns to their actual content on first data render. Keep `flex` on content-heavy columns so they absorb remaining space.

**Implementation**:

1. Remove or replace `sizeColumnsToFit()` in `onGridReady` — it conflicts with `autoSizeAllColumns`.
2. Add `onFirstDataRendered` event to fire after rows load:

```tsx
// PRDataTable.tsx — add to <AgGridReact> props
onFirstDataRendered={(e) => e.api.autoSizeAllColumns(false)}
```

3. For columns that should grow (Department, Requested By), keep `flex: 1` in column def — `autoSizeAllColumns` sets a minimum and flex distributes the rest.
4. For fixed-content columns (PR No, PR Date, Items, Status, Actions), remove any `flex` and let auto-size set their width.

**AG Grid Community note**: `autoSizeAllColumns(skipHeader?: boolean)` — pass `false` to include header text in sizing calculation.

---

### B02 — Download Button Per Row

**Files**:
- `src/features/purchase-requisition/components/pr-list/PRDataTable.tsx`
- `src/features/purchase-requisition/pages/PurchaseRequisitionListPage.tsx`

**Current behaviour**: `handleDownload` exists in `usePurchaseRequisitionList` hook and calls `prListService.downloadReport(record.prNo, startDate, endDate)`. The Actions column renders View / Edit / Cancel only — no Download button.

**Required**: Download (PDF) icon button in each row's Actions cell. Shows a loading spinner while that row's PDF is downloading. Tooltip "Download PDF".

**Step 1 — Update `PRDataTable` props interface**:
```tsx
interface PRDataTableProps {
  // existing props...
  onDownload: (record: PRSummaryResponse) => void
  downloading?: number | null   // prNo currently downloading (null = none)
}
```

**Step 2 — Add import**:
```tsx
import { DownloadOutlined } from '@ant-design/icons'
```

**Step 3 — Add Download button in Actions column** (after Edit, before Cancel):
```tsx
<Tooltip title="Download PDF">
  <Button
    type="text"
    size="small"
    icon={<DownloadOutlined />}
    loading={downloading === data.prNo}
    onClick={() => onDownload(data)}
  />
</Tooltip>
```

**Step 4 — Wire in `PurchaseRequisitionListPage.tsx`**:
```tsx
<PRDataTable
  // existing props...
  onDownload={handleDownload}
  downloading={downloading}
/>
```

**Backend note**: No changes needed. The hook's `handleDownload` already calls the correct service method with `startDate` and `endDate`.

---

### B03 — Edit Button Not Passing Financial Year Date Range

**Files**:
- `src/features/purchase-requisition/components/pr-list/PRDataTable.tsx`
- `src/features/purchase-requisition/pages/PurchaseRequisitionEditPage.tsx`
- `src/shared/utils/dateUtils.ts` (extract helper here)

**Current behaviour**:
```tsx
onClick={() => navigate(`/purchase/requisition/edit/${data.prNo}`)
```
No date context passed. `PurchaseRequisitionEditPage` calls `purchaseRequisitionApi.getById(prNo)` without start/end dates. `ksp_PR_GetById` SP accepts `@StartDate` / `@EndDate` for rate history context.

**Required**: Pass the active financial year bounds to the edit page via URL query params (bookmarkable, survives refresh).

**Step 1 — Extract `getFYBounds` to shared util** (`src/shared/utils/dateUtils.ts`):
```ts
export function getFYBounds(): { startDate: string; endDate: string } {
  const now = new Date()
  const year = now.getMonth() >= 3 ? now.getFullYear() : now.getFullYear() - 1
  return {
    startDate: `${year}-04-01`,
    endDate:   `${year + 1}-03-31`,
  }
}
```

**Step 2 — Update navigate call in `PRDataTable.tsx`**:
```tsx
import { getFYBounds } from '@/shared/utils/dateUtils'

// inside Actions column cellRenderer:
const { startDate, endDate } = getFYBounds()
onClick={() => navigate(
  `/purchase/requisition/edit/${data.prNo}?from=${startDate}&to=${endDate}`
)}
```

**Step 3 — Read params in `PurchaseRequisitionEditPage.tsx`**:
```tsx
import { useSearchParams } from 'react-router-dom'

const [searchParams] = useSearchParams()
const fromDate = searchParams.get('from') ?? undefined
const toDate   = searchParams.get('to')   ?? undefined

// ...pass to API call:
purchaseRequisitionApi.getById(prNo, fromDate, toDate)
```

**Step 4 — Verify `getById` API function signature** in `src/features/purchase-requisition/api/` accepts optional `fromDate`/`toDate` params and passes them as query string.

---

### B04 — Requested By Shows Raw Code, Not "Code – Name"

**VB6 Ground Truth** (`tmpPoindent.frm` line 381–383):
- `txtfields(1)` DataField=`reqname`, DataFormat=numeric "0"
- On save (line 2881): `adoPrimaryRS("reqname") = val(txtfields(1).Text)` — stores numeric employee CODE
- `Text4` (line 392–399) is read-only, auto-filled from `pr_emp.ename` — display only, never stored
- Therefore: `po_prh.ReqName` always contains the employee code (numeric string), not the name

**Files to change**:
- `src/features/purchase-requisition/components/v2/PRHeaderCards.tsx`
- `src/features/purchase-requisition/components/pr-list/PRDataTable.tsx`
- `src/features/purchase-requisition/pages/PurchaseRequisitionListPage.tsx`
- `src/features/purchase-requisition/pages/PurchaseRequisitionV2Page.tsx`
- `src/features/purchase-requisition/pages/PurchaseRequisitionEditPage.tsx`

**Fix 1 — `PRHeaderCards.tsx` — Select value must be `empNo` (code), not `eName`**:
```tsx
// Before
const empOptions = employees.map((e) => ({ value: e.eName, label: `${e.empNo} – ${e.eName}` }))

// After
const empOptions = employees.map((e) => ({ value: e.empNo, label: `${e.empNo} – ${e.eName}` }))
```

This ensures `form.getFieldValue('reqName')` returns the employee code string, matching VB6 behaviour.

**Fix 2 — `PRDataTable.tsx` — Enrich display in list column**:

Add `employees` prop:
```tsx
interface PRDataTableProps {
  // existing...
  employees: EmployeeLookup[]
}
```

Update Requested By column `valueFormatter`:
```tsx
{
  field: 'reqName',
  headerName: 'Requested By',
  flex: 1,
  valueFormatter: ({ value }) => {
    const emp = employees.find((e) => e.empNo === value || e.empNo === String(value))
    return emp ? `${emp.empNo} – ${emp.eName}` : (value || '—')
  }
}
```

**Fix 3 — `PurchaseRequisitionListPage.tsx`**: Pass `employees` from `useLookupStore`:
```tsx
const { employees } = useLookupStore()
// ...
<PRDataTable employees={employees} ... />
```

**Fix 4 — Edit page load**: Existing PR has `reqName` = empNo code → the Select with `value: e.empNo` will match and display "empNo – eName" automatically. No change needed for load, only for options mapping (Fix 1 above).

**Fix 5 — `buildPayload` in both V2Page and EditPage**: Once Fix 1 is applied, `values.reqName` will already be the employee code. No extra transform needed — the Select value is the code.

---

## New Requisition / Edit Page Bugs

---

### B05 — PO Group (poGroupCode) Should Be a Dropdown, Not Plain Text

**VB6 Ground Truth** (`tmpPoindent.frm`):
- `txtfields(7)` line 291: DataField=`PO_GRP`
- Line 297: `Visible = 0 'False` — hidden by default, shown only when `PurTypeFlg=1`
- FSD §2: "Order Type / PO Group (txtfields[7])" — `PO_PRH.PO_GRP` — lookup from `po_type`
- Current UI labels this "Cost Centre" — **that label is wrong**. The real Cost Centre field is `po_prl.CCCODE` (an item-line grid column)

**File**: `src/features/purchase-requisition/components/v2/PRHeaderCards.tsx`

**Current behaviour**: `poGroupCode` renders as `<Input maxLength={20} />` labeled "Cost Centre".

**Required**:
1. Fix label: "Cost Centre" → "PO Group"
2. Replace `<Input>` with `<Select>` using `typeOptions` (same options as the Order Type / iType field — both come from `po_type`)
3. The `required` rule should only apply when `purTypeFlgEnabled` is true (matching VB6 `Visible` = conditional)

```tsx
<Form.Item
  name="poGroupCode"
  label={<FL text="PO Group" />}
  rules={purTypeFlgEnabled ? [{ required: true, message: 'PO Group is required' }] : []}
  style={ITEM}
>
  <Select
    showSearch
    placeholder="Select PO group…"
    options={typeOptions}
    filterOption={prefixFilterOption}
    filterSort={priorityFilterSort}
    allowClear
    disabled={!purTypeFlgEnabled}
  />
</Form.Item>
```

**Note**: `typeOptions` is already computed in the component from `poTypes` prop — no new data fetch needed.

Remove `BankOutlined` import from `@ant-design/icons` if it is no longer used elsewhere in the file.

---

### B06 — Move SaleOrderNo / SaleOrderDate / ScopeCode to Collapsible Advanced Section

**File**: `src/features/purchase-requisition/components/v2/PRHeaderCards.tsx`

**Current behaviour**: Sale Order No, Sale Order Date, and Scope Code are in Row 2 and Row 3 of the main form, always visible. These are rarely used fields (no VB6 equivalent visible in the standard PR form header — scopeCode is a lookup, saleOrderNo is project-specific).

**Required**: Move these 3 fields into a collapsible panel below the main form rows. Collapsed by default.

**Step 1 — Add import**:
```tsx
import { Collapse } from 'antd'
```

**Step 2 — Remove the 3 fields from their current rows in the form.**

**Step 3 — After the last `<Row>` of the form, add**:
```tsx
<Collapse
  size="small"
  ghost
  style={{ marginTop: 4 }}
  items={[{
    key: 'advanced',
    label: <span style={{ fontSize: 12, color: '#6b7280' }}>Advanced Options</span>,
    children: (
      <Row gutter={[16, 0]}>
        <Col xs={24} sm={8} md={8}>
          <Form.Item name="saleOrderNo" label={<FL text="Sale Order No." />} style={ITEM}>
            <Input placeholder="Sale order number" maxLength={50} />
          </Form.Item>
        </Col>
        <Col xs={24} sm={8} md={8}>
          <Form.Item name="saleOrderDate" label={<FL text="Sale Order Date" />} style={ITEM}>
            <DatePicker style={{ width: '100%' }} format="DD-MM-YYYY" />
          </Form.Item>
        </Col>
        <Col xs={24} sm={8} md={8}>
          <Form.Item name="scopeCode" label={<FL text="Scope Code" />} style={ITEM}>
            <Input placeholder="e.g. 01" maxLength={20} />
          </Form.Item>
        </Col>
      </Row>
    ),
  }]}
/>
```

**Step 4 — Rebalance remaining rows**: Row 3 in the main form (after removing SaleOrderNo / SaleOrderDate / ScopeCode) should contain `section` and `iType` (PR Type). Adjust their `Col` spans to fill the row:
- `section`: `xs={24} sm={12} md={12}`
- `iType`: `xs={24} sm={12} md={12}`

---

### B07 — Remove Place Field from Item Entry Form

**VB6 Ground Truth** (`tmpPoindent.frm`):
- `PlaceTextBox` is a real VB6 control, DataField maps to grid column 15 → `po_prl.place`
- The field exists in the DB and is populated by legacy data
- Bug instruction: remove from **entry form UI only** — preserve in types, payload, and DB

**File**: `src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx`

**Required**: Delete the entire `<Col>` block containing the `place` Form.Item from the entry form. Do **not** remove `place` from:
- `EntryFormValues` type
- `PRLineFormItem` type
- `startEdit()` mapping
- `handleAddOrUpdate()` payload building

**What to remove** — find and delete this block from the entry form JSX:
```tsx
<Col ...>
  <Form.Item name="place" label={<span style={LABEL_STYLE}>Place</span>} ...>
    <Input style={INPUT_STYLE} placeholder="Delivery place…" maxLength={100} />
  </Form.Item>
</Col>
```

**Row 4 consolidation**: After removing `place`, if Row 4 contains only `isSample` Checkbox, merge it into Row 3 alongside `drawNo`, `catNo`, and `machineNo`. Adjust Col spans accordingly so Row 3 holds all four fields:
- `drawNo`: `xs={12} sm={6}`
- `catNo`: `xs={12} sm={6}`
- `machineNo`: `xs={12} sm={6}`
- `isSample`: `xs={12} sm={6}`

---

## FSD Alignment Items

---

### F01 — reqName Must Store Employee Code, Not Employee Name

**VB6 source confirmation** (`tmpPoindent.frm`):
- Line 381–383: `txtfields(1)` DataField=`reqname`, DataFormat=numeric, Format="0"
- Line 2881 (INSERT): `adoPrimaryRS("reqname") = val(txtfields(1).Text)` → stores numeric code
- Line 2985 (UPDATE): `adoPrimaryRS("reqname") = txtfields(1).Text` → stores code string
- `Text4` (line 392–399): read-only display, auto-filled from `pr_emp.ename` — never saved to DB

This is the **backend consequence of B04**. Once B04 is applied:
- `PRHeaderCards.tsx` Select value → `e.empNo` (numeric code string)
- `form.getFieldValue('reqName')` → employee code
- `buildPayload` passes code to `reqName` field
- `po_prh.ReqName VARCHAR(100)` stores code — consistent with all legacy VB6 data

**No backend DTO change needed**: `[StringLength(100)]` already set (fixed in the DTO session). Numeric employee codes are short (≤6 digits) — 100 chars is more than sufficient.

---

### F02 — Section Field Max 20 Chars Per VB6 Form

**VB6 confirmation** (`tmpPoindent.frm` line 317): `Text3` MaxLength=20 — VB6 UI enforced 20 chars.

**Decision**: Keep `[StringLength(100)]` on backend DTO and `maxLength={100}` on frontend. The VB6 limit was a UI mask constraint. Our DB column `po_prh.Section` is `VARCHAR(100)` — designed to be wider. No change needed; document as intentional extension.

---

### F03 — Reference No. Auto-Uppercase

**FSD §3**: "Reference No. → Text upper-case → auto upper-cased"  
**VB6 form**: `txtfields(8)` DataField=`refno` — VB6 handled uppercasing at save via SQL `UPPER()` or VB string functions.

**File**: `src/features/purchase-requisition/components/v2/PRHeaderCards.tsx`  
**Also**: `buildPayload` in both `PurchaseRequisitionV2Page.tsx` and `PurchaseRequisitionEditPage.tsx`

**Required**: Transform to uppercase in real-time in the input, and again in the payload builder.

**PRHeaderCards.tsx — update the refNo Input**:
```tsx
<Input
  placeholder="e.g. VEN-QUOT-2026"
  maxLength={50}
  style={{ textTransform: 'uppercase' }}
  onChange={(e) => form.setFieldValue('refNo', e.target.value.toUpperCase())}
/>
```

**buildPayload (both V2Page and EditPage)** — update refNo line:
```tsx
refNo: values.refNo?.trim().toUpperCase() || undefined,
```

---

## FSD Field Validation Checklist

Full review of FSD §2 / §3 against current implementation, corrected with VB6 source truth:

| FSD Field | Maps To | FSD Rule | VB6 Control | Current State | Status |
|---|---|---|---|---|---|
| PR Date | `prDate` | Auto-set to today; no future dates | `MaskEdBox1` DataField=`PRDATE` | DatePicker with `disabledDate` ✓ | ✅ OK |
| PR Number | `prNo` | Auto-generated; read-only | `txtfields(2)` DataField=`PRNO` | Auto-generated, read-only display ✓ | ✅ OK |
| Department Code | `depCode` | Max 3 chars; exists in IN_DEP | `txtfields(5)` DataField=`DEPCODE` | Select dropdown, validated in SP ✓ | ✅ OK |
| Requester Code | `reqName` | Numeric max 6 digits; stores empNo code | `txtfields(1)` numeric format; `val(txtfields(1))` at save | Stores eName (name not code) | ❌ **B04 / F01** |
| Section | `section` | Max 20 chars (VB6 UI mask) | `Text3` MaxLength=20 | Input maxLength=100, DTO=100 (DB is 100) | ⚠️ F02 — intentional extension |
| Scope Code | `scopeCode` | Numeric max 2 digits | `txtfields(3)` DataFormat=numeric "0" | Input maxLength=20, no numeric validation | ⚠️ Consider numeric-only input |
| Sub-Cost Centre | `subCostCode` | Numeric max 3 digits | `txtfields(4)` | InputNumber, SP validation ✓ | ✅ OK |
| Order Type / PO Group | `poGroupCode` | Max 5 chars; lookup po_type; only when PurTypeFlg=1 | `txtfields(7)` Visible=False, conditional | Plain Input, wrong label "Cost Centre" | ❌ **B05** |
| Reference No. | `refNo` | Max 20 chars; auto upper-case | `txtfields(8)` | Input maxLength=50, no uppercase | ⚠️ **F03** |
| Item Code | `itemCode` | Max 10 chars; active items | `ItemCodeTextBox` col 4 | Searchable Select with item lookup ✓ | ✅ OK |
| Qty Required | `qtyRequired` | > 0; >= MINLEVEL | col 9 | InputNumber, MINLEVEL warning via SP ✓ | ✅ OK |
| Machine No. | `machineNo` | Max 5 chars; exists in MM_MACMAS | col 13 | Select dropdown, validated in SP ✓ | ✅ OK |
| Required Date | `requiredDate` | >= processing date (Add); >= PR date (Modify) | col 14 | DatePicker, validated in SP ✓ | ✅ OK |
| Category Code | `categoryCode` | 1 char; exists in IN_CAT | col 10 | Input maxLength=1, validated ✓ | ✅ OK |
| Cost Centre Code | `costCentreCode` | Numeric max 4 digits | col 11 | Input in Drawer, SP validation ✓ | ✅ OK |
| Budget Group Code | `budgetGroupCode` | Max 4 chars | col 12 | Input in Drawer, SP validation ✓ | ✅ OK |
| Remarks | `remarks` | Max 100 chars upper-case | col 17 | Input maxLength=500 (extended by design) | ⚠️ Wider; no uppercase transform |
| Place | `place` | Free text delivery location | `PlaceTextBox` col 15 | In entry form — to be REMOVED from UI | ❌ **B07** |
| Approx. Cost | `approxCost` | 2dp; indicative | col 16 | Auto-calculated from rate × qty ✓ | ✅ OK |
| Sample Flag | `isSample` | Y/N | `SampleCheckBox` | Checkbox ✓ | ✅ OK |
| Drawing No. | `drawNo` | Print field | col 3 (extended) | Input in entry form ✓ | ✅ OK |
| Catalogue No. | `catNo` | Print field | — | Input in entry form ✓ | ✅ OK |

---

## Implementation Order

```
1. B04 + F01  → reqName stores empNo (code); list display "empNo – eName"; Select value fix
2. B05        → poGroupCode → Select dropdown; fix label "Cost Centre" → "PO Group"; conditional required
3. F03        → RefNo uppercase: Input style + onChange + buildPayload .toUpperCase()
4. B06        → Collapsible "Advanced Options" (SaleOrderNo, SaleOrderDate, ScopeCode)
5. B07        → Remove Place Col from entry form; merge isSample into Row 3
6. B02        → Download button per row (pure UI, no backend changes)
7. B03        → Edit passes FY date range via URL query params; extract getFYBounds to shared util
8. B01        → Column auto-width: replace sizeColumnsToFit with onFirstDataRendered autoSizeAllColumns
```

---

## Session Notes

- `tmpPoindent.frm` read: 7,453 lines. Key sections: lines 260–409 (header controls), 2700–2900 (Save/INSERT logic), 3369–3668 (AddItem/Combo2 logic).
- VB6 confirmed `reqname` = numeric employee CODE, not name — contradicts earlier assumption.
- VB6 confirmed `poGroupCode` (`PO_GRP`) is hidden by default — the "Cost Centre" label in current UI is an error from an earlier naming confusion.
- `Place` field is real in VB6 and DB — only the **UI entry form element** is to be removed.
- All DTO `[StringLength]` values have been corrected to match actual `po_prh`/`po_prl` DB column lengths (done in previous session — see `2026-04-24_session_DTO_FieldLengths.md`).
