# M01 Purchase Requisition — Revision 01 Implementation Prompts
**Date**: 2026-04-24  
**Source**: `revision 01.md` + FSD v2.3 CEO Approved 17-Apr-2026  
**Status**: Awaiting implementation

---

## Summary

| ID | Area | Description | Priority |
|---|---|---|---|
| R01 | Header | Remove PO Group, Sale Order No/Date, Scope Code entirely | High |
| R02 | Header | Section label: "Section / Team" → "Section" | Low |
| R03 | Header | Order Type: show only E-Emergency, O-Ordinary, U-Urgent | High |
| R04 | Entry Form | Remove Description auto-fill display | Medium |
| R05 | Entry Form | Item Code wider; UOM wider | Medium |
| R06 | Entry Form | Qty default 0; validate > 0 | High |
| R07 | Entry Form | Rate History button adjacent to Unit Price; remove from grid actions | High |
| R08 | Entry Form | Required Date: add "days from today" quick-fill input | Medium |
| R09 | Entry Form | Remarks: move to last field | Low |
| R10 | Entry Form | Sub Cost Centre: add to main form, load from DB | High |
| R11 | Entry Form | Remove Drawing No, Cat No | Medium |
| R12 | Grid | Reorder columns: Item Code, Description, Last Rate, PO Date, Supplier Code, Supplier Name, Qty, UOM, Unit Price, Total | High |

---

## Implementation Order

```
1. R01 — Remove 4 header fields (lowest risk, pure deletion)
2. R02 — Section label rename (1-line change)
3. R03 — Order Type filter to E/O/U
4. R11 — Remove DrawNo, CatNo from entry form
5. R04 — Remove Description from entry form
6. R06 — Qty default 0 + validation
7. R09 — Remarks to last
8. R05 — Item Code / UOM wider
9. R10 — Sub Cost Centre in main form
10. R07 — Rate History button on Unit Price
11. R08 — Required Date days quick-fill
12. R12 — Grid column reorder
```

---

## Header Section

---

### R01 — Remove PO Group, Sale Order No/Date, Scope Code

**File**: `src/features/purchase-requisition/components/v2/PRHeaderCards.tsx`

**Background**: These fields were moved to an "Advanced Options" Collapse panel in the previous bug-fix session. Revision 01 now removes them entirely. The `poGroupCode` field is conditional on `PurTypeFlg=1` (not applicable for this customer). Sale Order No/Date and Scope Code are not used.

**What to remove** from `PRHeaderCards.tsx`:
1. The entire `<Collapse>` block that contains `saleOrderNo`, `saleOrderDate`, `scopeCode` (after Row 3)
2. The `poGroupCode` Form.Item and its `<Col>` from Row 2
3. Row 2 now has only `reqName` — expand to `md=16` or `md=12` as appropriate

**Also clean up from `PRHeaderCardsProps` interface**:
- Remove `purTypeFlgEnabled` prop (only used for poGroupCode required rule)
- Keep all other props

**Also clean up props usage** in both consumer pages:
- `src/features/purchase-requisition/pages/PurchaseRequisitionV2Page.tsx` — remove `purTypeFlgEnabled={...}` prop
- `src/features/purchase-requisition/pages/PurchaseRequisitionEditPage.tsx` — remove `purTypeFlgEnabled={...}` prop

**Also clean up `buildPayload`** in both pages:
- Remove `poGroupCode`, `scopeCode`, `saleOrderNo`, `saleOrderDate` from the payload object
- **Do NOT remove from the DTO or backend** — legacy data still uses these fields; only remove from the UI send path

**Row 2 after removal** — `reqName` is the only field; give it sensible width:
```tsx
{/* Row 2: Requested By */}
<Row gutter={[16, 0]}>
  <Col xs={24} sm={16} md={12}>
    <Form.Item name="reqName" ...>
      <Select ... />
    </Form.Item>
  </Col>
</Row>
```

**Also remove from `PRHeaderFormValues` type** in `types.ts`:
- Remove `poGroupCode`, `scopeCode`, `saleOrderNo`, `saleOrderDate` from the interface
- These values are no longer sent from the form; they remain in backend DTOs and DB

**Note on `Collapse` import**: After removing the Collapse block, remove the `Collapse` import from antd if it is no longer used.

---

### R02 — Section Label: "Section / Team" → "Section"

**File**: `src/features/purchase-requisition/components/v2/PRHeaderCards.tsx`

Single label change in Row 3:
```tsx
// Before
<Form.Item name="section" label={<FL text="Section / Team" />} style={ITEM}>

// After
<Form.Item name="section" label={<FL text="Section" />} style={ITEM}>
```

---

### R03 — Order Type: Filter to E-Emergency, O-Ordinary, U-Urgent Only

**File**: `src/features/purchase-requisition/components/v2/PRHeaderCards.tsx`

**Background**: The `iType` field (Order Type / Combo2 / ABCFLG in VB6) represents the PR classification. For this customer, only 3 types are valid: E (Emergency), O (Ordinary), U (Urgent). The `typeOptions` array comes from `po_type` table via `poTypes` prop.

**Current**:
```tsx
const typeOptions = poTypes.map((p) => ({ value: p.typeCode, label: `${p.typeCode} – ${p.typName}` }))
```

**Required**: Create a filtered option list for Order Type that only shows E, O, U:
```tsx
const typeOptions     = poTypes.map((p) => ({ value: p.typeCode, label: `${p.typeCode} – ${p.typName}` }))
const orderTypeOptions = typeOptions.filter((o) => ['E', 'O', 'U'].includes(o.value))
```

Then use `orderTypeOptions` on the `iType` Select instead of `typeOptions`:
```tsx
<Form.Item name="iType" label={<FL text="Order Type" />} ...>
  <Select
    showSearch
    placeholder="Select order type…"
    options={orderTypeOptions}
    filterOption={prefixFilterOption}
    filterSort={priorityFilterSort}
    allowClear
  />
</Form.Item>
```

**Note**: Since `poGroupCode` is being removed (R01), `typeOptions` is now only used for `orderTypeOptions`. You can rename `typeOptions` to `orderTypeOptions` directly if `poGroupCode` Select is removed.

---

## Item Entry Form

---

### R04 — Remove Description Auto-Fill from Entry Form

**File**: `src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx`

**Current**: A read-only `<Input>` showing `itemMeta?.itemName ?? ''` is rendered in a `Col xs={24} sm={12} md={7}` next to Item Code.

**Required**: Remove the entire `<Col>` block containing the Description read-only Input:
```tsx
{/* REMOVE this entire Col */}
<Col xs={24} sm={12} md={7}>
  <Form.Item label={<span style={LABEL_STYLE}>Description</span>} style={{ marginBottom: 12 }}>
    <Input value={itemMeta?.itemName ?? ''} readOnly style={READONLY_STYLE} placeholder="Auto-filled on item select" />
  </Form.Item>
</Col>
```

**What to keep**: `itemMeta` state still holds the itemName — it is still used for the payload (`itemName` goes into `handleAddOrUpdate`). Only the UI display element is removed.

**Row 1 rebalancing** after Description removal — Item Code, UOM+Stock badge, Qty:
- See R05 for the new column spans.

---

### R05 — Item Code Wider; UOM Wider

**File**: `src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx`

After removing Description (R04), Row 1 has: Item Code | UOM+Stock | Qty.

**Current spans** (before Description removal): `xs={24} sm={12} md={6}` for Item Code, `xs={12} sm={6} md={3}` for UOM.

**New spans** (after Description removed — distribute the freed 7 columns):
```tsx
{/* Item Code — wider */}
<Col xs={24} sm={12} md={10}>
  <Form.Item name="itemCode" ...>
    <Select ... />
  </Form.Item>
</Col>

{/* UOM + Stock badge — wider */}
<Col xs={12} sm={6} md={6}>
  <Form.Item label={...UOM...}>
    <div style={{ display: 'flex', alignItems: 'center', gap: 6 }}>
      <Input value={itemMeta?.uom ?? ''} readOnly style={{ ...READONLY_STYLE, width: 90 }} placeholder="—" />
      {/* stock badge stays */}
    </div>
  </Form.Item>
</Col>

{/* Qty */}
<Col xs={12} sm={6} md={4}>
  <Form.Item name="qtyRequired" ...>
    <InputNumber ... />
  </Form.Item>
</Col>
```

---

### R06 — Qty Default 0; Validate Must Be > 0

**File**: `src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx`

**Current**: `initialValue={1}` on qtyRequired Form.Item; validation rule `min: 0.001`.

**Required**:
1. Change `initialValue` to `0`
2. Change validation message to match FSD rule: "Required quantity must be greater than zero"

```tsx
<Form.Item
  name="qtyRequired"
  label={<span style={LABEL_STYLE}>Qty</span>}
  rules={[
    { required: true, message: 'Required' },
    { type: 'number', min: 0.001, message: 'Must be > 0' },
  ]}
  initialValue={0}
  style={{ marginBottom: 12 }}
>
  <InputNumber
    style={{ width: '100%', ...INPUT_STYLE }}
    min={0} precision={3}
  />
</Form.Item>
```

**Also update `emptyRow()`** — the `qtyRequired` default in `emptyRow()` should change from `qtyRequired: 1` to `qtyRequired: 0`:
```tsx
function emptyRow(): PRLineFormItem {
  return {
    ...
    qtyRequired: 0,
    ...
  }
}
```

**Also update `cancelEdit()` / `startEdit()` form reset** — when entering add mode, reset qtyRequired to 0.

---

### R07 — Rate History Button Adjacent to Unit Price; Remove from Grid Actions

**File**: `src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx`

**Background**: The Rate History (ClockCircleOutlined) button currently appears in the grid Actions column (per row). The revision wants it adjacent to the Unit Price (₹) field in the entry form, and removed from the grid.

**Step 1 — Add Rate History button to Unit Price field**:

The current Unit Price Form.Item:
```tsx
<Col xs={12} sm={8} md={5}>
  <Form.Item name="rate" label={<span style={LABEL_STYLE}>Unit Price (₹)</span>} ...>
    <InputNumber style={{ width: '100%', ...INPUT_STYLE }} min={0} precision={2} placeholder="0.00" prefix="₹" />
  </Form.Item>
</Col>
```

Change to render the InputNumber inside an `Input.Group` / `Space.Compact` with a suffix Rate History button:
```tsx
<Col xs={12} sm={8} md={5}>
  <Form.Item name="rate" label={<span style={LABEL_STYLE}>Unit Price (₹)</span>} style={{ marginBottom: 12 }}>
    <Space.Compact style={{ width: '100%' }}>
      <InputNumber
        style={{ flex: 1, ...INPUT_STYLE }}
        min={0} precision={2} placeholder="0.00"
        prefix="₹"
      />
      <Tooltip title="Rate History">
        <Button
          icon={<ClockCircleOutlined style={{ color: '#7c3aed' }} />}
          disabled={!entryForm.getFieldValue('itemCode')}
          onClick={() => {
            const code = entryForm.getFieldValue('itemCode') as string
            if (code) void openHistory({ itemCode: code } as PRLineFormItem)
          }}
          style={{ borderLeft: 0 }}
        />
      </Tooltip>
    </Space.Compact>
  </Form.Item>
</Col>
```

**Add `Space` to antd imports** if not already present.

**Step 2 — Remove Rate History button from grid Actions column**:

Find the `ClockCircleOutlined` Rate History Tooltip+Button in the grid `cellRenderer` for the actions column and delete it entirely:
```tsx
{/* REMOVE this block from grid actions */}
<Tooltip title="Rate History">
  <Button
    type="text" size="small"
    icon={<ClockCircleOutlined style={{ color: '#7c3aed' }} />}
    disabled={!data.itemCode}
    onClick={() => void openHistory(data)}
  />
</Tooltip>
```

After removal, the grid actions column has: Edit | Advanced | Delete.

**Step 3**: The `openHistory` function and rate history modal state (`historyOpen`, `historyData`, etc.) stay — they are used by the new entry form button.

---

### R08 — Required Date: "Days from Today" Quick-Fill

**File**: `src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx`

**Required**: Add a small `InputNumber` next to the Required Date DatePicker. When the user types a number of days (e.g., 7), the Required Date is auto-set to today + N days.

**Approach**: Use `Space.Compact` to combine a days InputNumber and the DatePicker in one row.

**Add state** for the days input:
```tsx
const [daysOffset, setDaysOffset] = useState<number | null>(null)
```

**Replace the Required Date Col**:
```tsx
<Col xs={12} sm={8} md={5}>
  <Form.Item
    name="requiredDate"
    label={<span style={LABEL_STYLE}>Required Date</span>}
    style={{ marginBottom: 12 }}
  >
    <Space.Compact style={{ width: '100%' }}>
      <InputNumber
        placeholder="Days"
        min={1} max={365}
        style={{ width: 72, ...INPUT_STYLE }}
        value={daysOffset}
        onChange={(val) => {
          setDaysOffset(val)
          if (val && val > 0) {
            entryForm.setFieldValue('requiredDate', dayjs().add(val, 'day'))
          }
        }}
      />
      <DatePicker
        style={{ flex: 1, ...INPUT_STYLE }}
        format="DD/MM/YYYY"
        placeholder="dd/mm/yyyy"
        onChange={() => setDaysOffset(null)}  // clear days offset when date picked manually
      />
    </Space.Compact>
  </Form.Item>
</Col>
```

**Reset `daysOffset` in `cancelEdit()` and `startEdit()`** when switching rows:
```tsx
setDaysOffset(null)
```

---

### R09 — Remarks: Move to Last Field

**File**: `src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx`

**Current**: Remarks is in Row 2, between Required Date and the Add/Update button group.

**Required**: Remarks should be the last field before the Add/Update buttons — move it below Row 3 (Machine/DrawNo/CatNo/Sample row).

**New layout** (after R11 removes DrawNo/CatNo):

Row 1: Item Code | UOM + Stock | Qty  
Row 2: Unit Price (with Rate History button) | Required Date (with days input) | [Add/Update button]  
Row 3: Machine | Sub Cost Centre | Sample  
Row 4 (last): Remarks (full width) | [no buttons — they are in Row 2]  

Wait — this means the Add/Update button needs to stay accessible. Keep buttons in Row 2 and Remarks in a separate final row spanning full width:
```tsx
<Row gutter={[12, 0]}>
  <Col xs={24} md={24}>
    <Form.Item
      name="remarks"
      label={<span style={LABEL_STYLE}>Remarks</span>}
      style={{ marginBottom: 12 }}
    >
      <Input style={INPUT_STYLE} placeholder="Optional notes…" maxLength={500} />
    </Form.Item>
  </Col>
</Row>
```

---

### R10 — Sub Cost Centre: Add to Main Entry Form

**File**: `src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx`

**Background**: `subCostCode` is already in `PRLineFormItem` and was previously editable only via the Advanced Drawer (SettingOutlined). Revision 01 moves it to the main entry form. The existing SP `ksp_GetSubCosts` already provides sub cost centre data.

**Step 1 — Add `subCostCode` to `EntryFormValues` interface**:
```tsx
interface EntryFormValues {
  itemCode:     string
  qtyRequired:  number
  rate:         number | null
  requiredDate: Dayjs | null
  remarks:      string
  machineNo:    string | null
  subCostCode:  number | null    // ADD
  isSample:     boolean
  // drawNo, catNo, place kept in interface but removed from UI (R11 / B07)
}
```

**Step 2 — Add `subCosts` to `PRLineItemsTableProps`**:
```tsx
interface PRLineItemsTableProps {
  // existing...
  subCosts: SubCostLookup[]   // ADD — loaded from useLookupStore
}
```

**Check if `SubCostLookup` type exists** in `types.ts`. If not, add:
```tsx
export interface SubCostLookup {
  sccCode:  number
  sccName:  string
  depCode?: string
}
```

**Step 3 — Add Sub Cost Select to entry form** (in Row 3 alongside Machine and Sample):

After R11 removes DrawNo/CatNo, Row 3 has: Machine | (space) | Sample
Insert Sub Cost Centre between Machine and Sample:
```tsx
<Row gutter={[12, 0]}>
  {/* Machine */}
  <Col xs={12} sm={8} md={8}>
    <Form.Item name="machineNo" ...>...</Form.Item>
  </Col>

  {/* Sub Cost Centre — ADD */}
  <Col xs={12} sm={8} md={8}>
    <Form.Item name="subCostCode" label={<span style={LABEL_STYLE}>Sub Cost Centre</span>} style={{ marginBottom: 12 }}>
      <Select
        showSearch
        allowClear
        placeholder="Select sub cost…"
        options={subCosts.map((s) => ({ value: s.sccCode, label: `${s.sccCode} – ${s.sccName}` }))}
        filterOption={(input, opt) =>
          (opt?.label as string ?? '').toLowerCase().includes(input.toLowerCase())
        }
        style={INPUT_STYLE}
      />
    </Form.Item>
  </Col>

  {/* Sample */}
  <Col xs={12} sm={8} md={8} style={{ display: 'flex', alignItems: 'flex-end', paddingBottom: 12 }}>
    <Form.Item name="isSample" valuePropName="checked" style={{ marginBottom: 0 }}>
      <Checkbox>Sample</Checkbox>
    </Form.Item>
  </Col>
</Row>
```

**Step 4 — Map in `startEdit()`**:
```tsx
entryForm.setFieldsValue({
  // existing fields...
  subCostCode: row.subCostCode ?? null,   // ADD
})
```

**Step 5 — Map in `handleAddOrUpdate()`**:
```tsx
const vals = entryForm.getFieldsValue()
// existing mapping...
subCostCode: vals.subCostCode ?? null,   // confirm this is already mapped or add it
```

**Step 6 — Pass `subCosts` from consumer pages**:

In `useLookupStore`, `subCosts` should already be loaded (check `ksp_GetSubCosts` is called in `loadAll()`). If not, add it.

In both `PurchaseRequisitionV2Page.tsx` and `PurchaseRequisitionEditPage.tsx`:
```tsx
const { departments, employees, poTypes, machines, subCosts, ... } = useLookupStore()
// ...
<PRLineItemsTable subCosts={subCosts} ... />
```

**Step 7 — Remove Sub Cost Centre from Advanced Drawer** (if it exists there). After adding to main form, remove the duplicate from the drawer to avoid confusion.

---

### R11 — Remove Drawing No, Cat No from Entry Form

**File**: `src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx`

**Background**: DrawNo and CatNo were added to the main entry form in P03. Revision 01 removes them. They remain in `EntryFormValues`, `PRLineFormItem`, `startEdit()`, `handleAddOrUpdate()`, and the DB payload.

**What to remove** — the two Col blocks in Row 3 (the Machine/DrawNo/CatNo/isSample row from B07):
```tsx
{/* REMOVE */}
<Col xs={12} sm={6} md={6}>
  <Form.Item name="drawNo" label={<span style={LABEL_STYLE}>Drawing No.</span>} ...>
    <Input style={INPUT_STYLE} placeholder="Drawing number…" maxLength={25} />
  </Form.Item>
</Col>

{/* REMOVE */}
<Col xs={12} sm={6} md={6}>
  <Form.Item name="catNo" label={<span style={LABEL_STYLE}>Cat No.</span>} ...>
    <Input style={INPUT_STYLE} placeholder="Catalogue number…" maxLength={25} />
  </Form.Item>
</Col>
```

**What to keep**: `drawNo` and `catNo` in `EntryFormValues`, `PRLineFormItem`, `startEdit()`, and payload — values come from DB when editing existing lines and are preserved in the update payload. Only the UI form elements are removed.

**Row 3 after R10 + R11**: Machine (md=8) | Sub Cost Centre (md=8) | Sample (md=8)

---

## Grid Section

---

### R12 — Grid Column Reorder / Replacement

**File**: `src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx`

**Current columns** (visible in `colDefs` useMemo): Item Code, Item Name, UOM, Rate, Total, Req Date, Actions (pinned right)

**Required columns** (from revision):
```
Item Code | Description | Last Rate | PO Date | Supplier Code | Supplier Name | Qty | UOM | Unit Price | Total | Actions
```

**FSD field mapping**:
| Revision Label | PRLineFormItem Field | VB6 Grid Col |
|---|---|---|
| Item Code | `itemCode` | Col 4 |
| Description | `itemName` | Col 5 |
| Last Rate | `lastPoRate` | Col 19 (LPO Rate) |
| PO Date | `lastPoDate` | Col 20 (LPO Date) |
| Supplier Code | `lastPoSupplierCode` | Col 21 |
| Supplier Name | `lastPoSupplierName` | Col 22 |
| Qty | `qtyRequired` | Col 9 |
| UOM | `uom` | Col 6 |
| Unit Price | `rate` | Col 7 |
| Total | computed `rate × qtyRequired` | Col 16 (Approx Cost derived) |

**New colDefs array** (replace existing colDefs):
```tsx
const colDefs = useMemo((): ColDef<PRLineFormItem>[] => [
  {
    headerName: 'Item Code',
    field:      'itemCode',
    width:      110,
    pinned:     'left',
    cellStyle:  { ...CELL, fontWeight: 600, color: '#1677ff' },
  },
  {
    headerName: 'Description',
    field:      'itemName',
    flex:       2,
    minWidth:   160,
    cellStyle:  CELL,
  },
  {
    headerName: 'Last Rate',
    field:      'lastPoRate',
    width:      100,
    cellStyle:  { ...CELL, justifyContent: 'flex-end' },
    headerClass: 'ag-right-aligned-header',
    valueFormatter: ({ value }) => value != null ? `₹ ${Number(value).toFixed(2)}` : '—',
  },
  {
    headerName: 'PO Date',
    field:      'lastPoDate',
    width:      96,
    cellStyle:  CELL,
    valueFormatter: ({ value }) => value ? dayjs(value as string).format('DD/MM/YY') : '—',
  },
  {
    headerName: 'Supplier Code',
    field:      'lastPoSupplierCode',
    width:      110,
    cellStyle:  CELL,
    valueFormatter: ({ value }) => (value as string) || '—',
  },
  {
    headerName: 'Supplier Name',
    field:      'lastPoSupplierName',
    flex:       1,
    minWidth:   130,
    cellStyle:  CELL,
    valueFormatter: ({ value }) => (value as string) || '—',
  },
  {
    headerName:  'Qty',
    field:       'qtyRequired',
    width:       80,
    cellStyle:   { ...CELL, justifyContent: 'flex-end' },
    headerClass: 'ag-right-aligned-header',
    valueFormatter: ({ value }) => Number(value).toFixed(3),
  },
  {
    headerName: 'UOM',
    field:      'uom',
    width:      72,
    cellStyle:  CELL,
    valueFormatter: ({ value }) => (value as string) || '—',
  },
  {
    headerName:  'Unit Price',
    field:       'rate',
    width:       108,
    cellStyle:   { ...CELL, justifyContent: 'flex-end' },
    headerClass: 'ag-right-aligned-header',
    valueFormatter: ({ value }) =>
      value != null ? `₹ ${Number(value).toFixed(2)}` : '—',
  },
  {
    headerName:  'Total',
    colId:       'total',
    width:       112,
    cellStyle:   { ...CELL, justifyContent: 'flex-end', fontWeight: 700, color: '#16a34a' },
    headerClass: 'ag-right-aligned-header',
    valueGetter: ({ data }) => data ? (data.rate ?? 0) * data.qtyRequired : 0,
    valueFormatter: ({ value }) =>
      Number(value) > 0
        ? `₹ ${Number(value).toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
        : '—',
    cellClassRules: { 'pr-cell-flash': ({ data }) => !!data && data.key === flashKey },
  },
  {
    headerName: '',
    colId:      'actions',
    width:      90,
    sortable:   false,
    pinned:     'right',
    cellStyle:  { ...CELL, justifyContent: 'center', gap: 2 },
    cellRenderer: ({ data }: ICellRendererParams<PRLineFormItem>) => {
      if (!data) return null
      return (
        <div style={{ display: 'flex', gap: 2, alignItems: 'center' }}>
          <Tooltip title="Edit">
            <Button type="text" size="small" icon={<EditOutlined style={{ color: '#1677ff' }} />}
              disabled={disabled} onClick={() => startEdit(data)} />
          </Tooltip>
          <Tooltip title="Advanced">
            <Button type="text" size="small" icon={<SettingOutlined style={{ color: '#6b7280' }} />}
              disabled={disabled} onClick={() => openDrawer(data)} />
          </Tooltip>
          {/* Delete button — per-line or popconfirm */}
          { /* keep existing delete logic */ }
        </div>
      )
    },
  },
], [disabled, flashKey, startEdit, openDrawer, onDelete, editingKey, cancelEdit, savedPrNo])
```

**Remove `ClockCircleOutlined` import** if Rate History button is removed from grid (R07 already removes it from actions, but confirm no other usage before removing import).

---

## FSD Reference (v2.3 — CEO Approved 17-Apr-2026)

### Why these changes are FSD-aligned

| Change | FSD Basis |
|---|---|
| Remove PO Group | FSD §2: `PO_GRP` — "Visible and mandatory only when PurTypeFlg=1"; PurTypeFlg=0 for this customer |
| Remove Sale Order No/Date/Scope | Not in VB6 main form header — these are extended fields added speculatively |
| Order Type E/O/U only | FSD §2: `Combo2` DataField=`ABCFLG`; VB6 loaded from `po_doc_para` with PR type options |
| Qty > 0 | FSD §4.3: "Quantity Required — Cannot be null; must not be < item MINLEVEL; cannot be null/zero" |
| Sub Cost Centre in main form | FSD §2: `txtfields(4)` SubCost in header frame; FSD §3: "Must exist in IN_SCC if entered" |
| LPO Rate/Date/Supplier in grid | FSD §2: Grid Cols 19–22 are prominent in VB6 display |
| Description in entry form removed | FSD §2: Item Description is read-only display auto-filled — belongs in grid not entry form |

---

## Files to Change

| File | Changes |
|---|---|
| `PRHeaderCards.tsx` | R01 (remove 4 fields), R02 (label), R03 (filter Order Type) |
| `PRLineItemsTable.tsx` | R04–R12 (all entry form + grid) |
| `types.ts` | R01 (remove fields from PRHeaderFormValues), R10 (SubCostLookup type if missing) |
| `PurchaseRequisitionV2Page.tsx` | R01 (remove from buildPayload + props), R10 (pass subCosts) |
| `PurchaseRequisitionEditPage.tsx` | R01 (remove from buildPayload + props), R10 (pass subCosts) |
| `useLookupStore.ts` | R10 (confirm subCosts loaded; add if missing) |
