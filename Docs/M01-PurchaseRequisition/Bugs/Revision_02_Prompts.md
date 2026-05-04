# Revision 02 — Implementation Prompts
**Source**: `D:\Spinrise\Docs\M01\Revision\revision 02.md`
**Files in scope**: `PRHeaderCards.tsx`, `PRLineItemsTable.tsx`, `PRViewModal.tsx`
**Stack**: React 18, TypeScript strict, Ant Design 5, AG Grid Community
**Rule**: 0 TypeScript errors after every prompt. No `any` additions. No unused imports.

---

## Current State (read before every prompt)

### PRHeaderCards.tsx — current layout
```
Row 1 (inside Form): PR Number <Input disabled> | PR Date | Department | Reference No
Row 2 (inside Form): Requested By (alone)
Row 3 (inside Form): Section | Order Type
```

### PRLineItemsTable.tsx — current entry form layout
```
Row 1: Item Code (md=10) | UOM+Stock badge (md=6) | Qty (md=3) | Buttons col (md=5)
Row 2: Unit Price + Rate History btn (md=7) | Required Date + days (md=7)
Row 3: Machine (md=8) | Sub Cost Centre (md=10) | Sample checkbox (md=6)
Row 4: Remarks full-width
```
State: `itemMeta = { itemName, uom, currentStock }` — LPO fields NOT stored in state

### PRViewModal.tsx — current columns
`#`, `Item Code`, `Description`, `UOM`, `Qty`, `Stock`, `Last Rate`, `Reqd. Date`, `Approx. Cost`, `Remarks`, `Machine`, `Sub-Cost`, `Draw No`, `Cat`
Sub-Cost render: `v != null ? v : '—'` — shows 0 as `0` (bug)

---

## Implementation Order
```
H2 → H1+H3 → E7 → E6 → E1 → E2+E3 → E4 → G1 → G2 → S1
```

---

## H2 — PR Number: `<Input disabled>` → `<Tag>` badge

**File**: `PRHeaderCards.tsx`

**What to change**:
1. Remove the entire `<Col xs={24} sm={8} md={6}>` block containing `<Form.Item label="PR Number"><Input .../></Form.Item>`
2. Remove the `CopyOutlined` import (no longer needed)
3. Move PR number display into the card section header (above the `<Form>` tag), as a compact badge row:

```tsx
{/* PR number badge — shown only after save */}
{savedPrNo && (
  <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 12 }}>
    <Tag
      color="blue"
      style={{ fontSize: 13, fontWeight: 700, padding: '2px 10px', fontFamily: 'monospace', cursor: 'pointer' }}
      onClick={handleCopy}
    >
      {prNoText}
    </Tag>
    <Typography.Text type="secondary" style={{ fontSize: 11 }}>Click to copy</Typography.Text>
  </div>
)}
```

4. Keep `handleCopy` and `prNoText` logic — just the Tag replaces the Input.
5. `handleCopy` no longer needs `Tooltip` wrapper — the Tag itself is clickable.
6. Remove `Tooltip` from imports if no longer used elsewhere in the file.

**After this change, Row 1 inside Form has 3 cols only**: PR Date | Department | Reference No

---

## H1 + H3 — Header row reorganisation

**File**: `PRHeaderCards.tsx`  
**Depends on**: H2 done (PR Number already removed from Row 1)

**Target layout inside `<Form>`**:
```
Row 1: PR Date (md=12) | Department (md=12)
Row 2: Requested By (md=12) | Order Type (md=12)
Row 3: Section (md=12) | Reference No (md=12)
```

**What to change**:

Replace the entire contents of `<Form>` (all three `<Row>` blocks currently inside it) with:

```tsx
{/* Row 1 */}
<Row gutter={[16, 0]}>
  <Col xs={24} sm={12} md={12}>
    <Form.Item name="prDate" label={<FL text="PR Date" />} rules={[{ required: true, message: 'Required' }]} style={ITEM}>
      <DatePicker style={{ width: '100%' }} format="DD-MM-YYYY"
        disabledDate={(d) => backDateAllowed ? d.isAfter(dayjs(), 'day') : !d.isSame(dayjs(), 'day')} />
    </Form.Item>
  </Col>
  <Col xs={24} sm={12} md={12}>
    <Form.Item name="depCode" label={<FL text="Department" />} rules={[{ required: true, message: 'Required' }]} style={ITEM}>
      <Select showSearch placeholder="Search department…" options={deptOptions}
        filterOption={prefixFilterOption} filterSort={priorityFilterSort} allowClear />
    </Form.Item>
  </Col>
</Row>

{/* Row 2 */}
<Row gutter={[16, 0]}>
  <Col xs={24} sm={12} md={12}>
    <Form.Item name="reqName" label={<FL text="Requested By" />}
      rules={requireRequesterName ? [{ required: true, message: 'Required' }] : []} style={ITEM}>
      <Select showSearch placeholder="Search employee…" options={empOptions}
        filterOption={prefixFilterOption} filterSort={priorityFilterSort} allowClear />
    </Form.Item>
  </Col>
  <Col xs={24} sm={12} md={12}>
    <Form.Item name="iType" label={<FL text="Order Type" />}
      rules={pendingPoDetailsEnabled ? [{ required: true, message: 'Required' }] : []} style={ITEM}>
      <Select showSearch placeholder="Select order type…" options={orderTypeOptions}
        filterOption={prefixFilterOption} filterSort={priorityFilterSort} allowClear />
    </Form.Item>
  </Col>
</Row>

{/* Row 3 */}
<Row gutter={[16, 0]}>
  <Col xs={24} sm={12} md={12}>
    <Form.Item name="section" label={<FL text="Section" />} style={ITEM}>
      <Input placeholder="e.g. Infrastructure" maxLength={100} />
    </Form.Item>
  </Col>
  <Col xs={24} sm={12} md={12}>
    <Form.Item name="refNo" label={<FL text="Reference No." />}
      rules={requireRefNo ? [{ required: true, message: 'Required' }] : []} style={ITEM}>
      <Input placeholder="e.g. VEN-QUOT-2026" maxLength={50}
        style={{ textTransform: 'uppercase' }}
        onChange={(e) => form.setFieldValue('refNo', e.target.value.toUpperCase())} />
    </Form.Item>
  </Col>
</Row>
```

---

## E7 — Entry form card style upgrade

**File**: `PRLineItemsTable.tsx`

Find the outer `<div className="pr-entry-form" style={{...}}>` and update its style:

```tsx
// BEFORE
style={{
  background:   '#f8fafc',
  border:       '1px solid #e2e8f0',
  borderLeft:   '3px solid #1677ff',
  borderRadius: 8,
  padding:      '16px 20px',
}}

// AFTER
style={{
  background:   '#ffffff',
  border:       '1px solid #e2e8f0',
  borderLeft:   '3px solid #1677ff',
  borderRadius: 12,
  padding:      '16px 20px',
  boxShadow:    '0 2px 8px rgba(0,0,0,0.04)',
}}
```

---

## E6 — Entry form section header icon

**File**: `PRLineItemsTable.tsx`

**Add** `AppstoreOutlined` to the existing `@ant-design/icons` import.

Find the section header `<div>` containing `<Typography.Text strong ...>`:

```tsx
// BEFORE
<Typography.Text strong style={{ fontSize: 13, color: '#1e293b' }}>
  {editingKey ? 'Edit Item' : 'Item Entry'}
</Typography.Text>

// AFTER
<Space size={6}>
  <AppstoreOutlined style={{ color: '#1677ff', fontSize: 14 }} />
  <Typography.Text strong style={{ fontSize: 13, color: '#1e293b' }}>
    {editingKey ? 'Edit Item' : 'Item Entry'}
  </Typography.Text>
</Space>
```

`Space` is already imported from antd.

---

## E1 — Row 1 redesign: Item Code + Qty + Add button inline

**File**: `PRLineItemsTable.tsx`

**Target Row 1**:
```
Item Code search Select (md=14) | Qty InputNumber + Add/Update Button in Space.Compact (md=10)
```

The UOM/stock display moves to E2 (badge row). Remove UOM col from Row 1.

Replace the current Row 1 (`{/* Row 1: Item Code (wide) | UOM+Stock | Qty | Buttons */}`) with:

```tsx
{/* Row 1: Item Code | Qty + Action button (inline) */}
<Row gutter={[12, 0]}>
  <Col xs={24} sm={14} md={14}>
    <Form.Item
      name="itemCode"
      label={<span style={LABEL_STYLE}>Item Code</span>}
      rules={[{ required: true, message: 'Required' }]}
      style={{ marginBottom: 8 }}
    >
      <Select
        className="pr-entry-item-select"
        showSearch
        placeholder="Type to search item…"
        options={itemOptions}
        onSearch={handleItemSearch}
        onSelect={handleItemSelect}
        loading={itemSearching}
        filterOption={false}
        notFoundContent={itemSearching ? <Spin size="small" /> : 'Type ≥ 2 chars to search'}
        allowClear
        onClear={() => { setItemMeta(null); setItemOptions([]); setLpoMeta(null) }}
      />
    </Form.Item>
  </Col>

  <Col xs={24} sm={10} md={10}>
    <Form.Item
      label={<span style={LABEL_STYLE}>Qty</span>}
      style={{ marginBottom: 8 }}
    >
      <Space.Compact style={{ width: '100%' }}>
        <Form.Item
          name="qtyRequired"
          noStyle
          rules={[
            { required: true, message: 'Req.' },
            { type: 'number', min: 0.001, message: 'Must be > 0' },
          ]}
        >
          <InputNumber
            style={{ width: '100%', ...INPUT_STYLE }}
            min={0} precision={3}
            initialValue={0}
            onPressEnter={() => void handleAddOrUpdate()}
          />
        </Form.Item>
        {editingKey ? (
          <>
            <Button type="primary" onClick={() => void handleAddOrUpdate()} disabled={disabled}>
              Update
            </Button>
            <Button onClick={cancelEdit} disabled={disabled}>✕</Button>
          </>
        ) : (
          <Button
            type="primary"
            icon={<PlusOutlined />}
            onClick={() => void handleAddOrUpdate()}
            disabled={disabled}
          >
            Add
          </Button>
        )}
      </Space.Compact>
    </Form.Item>
  </Col>
</Row>
```

**Remove** the standalone Buttons `<Col>` that was in the old Row 1 (it's now inside Space.Compact).
**Remove** the "Editing row #N" `<Tag>` from the header div — it's no longer needed since button label changes.
**Note**: `initialValue={0}` on `Form.Item name="qtyRequired"` must remain (moved from old standalone Form.Item).

---

## E2 + E3 — Context badge row (UOM, Stock, Last Rate, PO Date)

**File**: `PRLineItemsTable.tsx`

**Add new state** for LPO metadata (needed for G1 too):

```tsx
// After the existing itemMeta state declaration
const [lpoMeta, setLpoMeta] = useState<{
  lastPoRate:         number | null
  lastPoDate:         string | null
  lastPoSupplierCode: string | null
  lastPoSupplierName: string | null
} | null>(null)
```

**In `handleItemSelect`**: after `setItemMeta(meta)`, inside the `getItemInfo` try block, after setting `rate`, also set:
```tsx
setLpoMeta({
  lastPoRate:         info.lastPoRate ?? null,
  lastPoDate:         info.lastPoDate ?? null,
  lastPoSupplierCode: info.lastPoSupplierCode ?? null,
  lastPoSupplierName: info.lastPoSupplierName ?? null,
})
```

**In `cancelEdit`**: add `setLpoMeta(null)` alongside `setItemMeta(null)`.

**In `startEdit`**: add:
```tsx
setLpoMeta({
  lastPoRate:         row.lastPoRate,
  lastPoDate:         row.lastPoDate,
  lastPoSupplierCode: row.lastPoSupplierCode,
  lastPoSupplierName: row.lastPoSupplierName,
})
```

**Add badge row JSX** after Row 1 (the new Item Code + Qty row), before Row 2 (Unit Price):

```tsx
{/* E2+E3: Context badges — shown after item select */}
{itemMeta && (
  <div style={{ display: 'flex', flexWrap: 'wrap', gap: 8, marginBottom: 8 }}>
    {/* UOM */}
    <Tag style={{ fontSize: 12, padding: '2px 8px' }}>
      UOM: {itemMeta.uom || '—'}
    </Tag>

    {/* Stock — E3: red if 0/null, green if > 0 */}
    <Tag
      color={itemMeta.currentStock != null && itemMeta.currentStock > 0 ? 'success' : 'error'}
      style={{ fontSize: 12, padding: '2px 8px', fontWeight: 600 }}
    >
      Stock: {itemMeta.currentStock ?? 0}
    </Tag>

    {/* Last Rate */}
    {lpoMeta?.lastPoRate != null && (
      <Tag color="green" style={{ fontSize: 12, padding: '2px 8px' }}>
        Last Rate: ₹{lpoMeta.lastPoRate.toFixed(2)}
      </Tag>
    )}

    {/* Last PO Date */}
    {lpoMeta?.lastPoDate && (
      <Tag color="cyan" style={{ fontSize: 12, padding: '2px 8px' }}>
        PO: {dayjs(lpoMeta.lastPoDate).format('DD-MMM-YY')}
      </Tag>
    )}
  </div>
)}
```

**Remove** the old UOM Col block from the old Row 1 (it was `<Col xs={12} sm={6} md={6}>` with the UOM Input + stock Tag).

---

## E4 — Collapsible "Advanced" panel for DrawNo, CatNo, Remarks

**File**: `PRLineItemsTable.tsx`

**Add** `Collapse` to antd imports.

**Remove** the current standalone Remarks full-width Row (Row 4).

**Replace** the row that currently contains DrawNo, CatNo (they were removed from UI in R11 but remain in types/payload). Now put them back inside a collapsible panel, together with Remarks.

**Add after Row 3 (Machine | Sub Cost Centre | Sample)**:

```tsx
{/* E4: Optional metadata — collapsible */}
<Collapse
  size="small"
  ghost
  style={{ marginTop: 4 }}
  items={[{
    key: 'adv',
    label: <span style={{ fontSize: 12, color: '#6b7280' }}>Advanced ▼</span>,
    children: (
      <Row gutter={[12, 0]}>
        <Col xs={24} sm={8} md={8}>
          <Form.Item name="drawNo" label={<span style={LABEL_STYLE}>Drawing No.</span>} style={{ marginBottom: 8 }}>
            <Input style={INPUT_STYLE} placeholder="Drawing number…" maxLength={25} />
          </Form.Item>
        </Col>
        <Col xs={24} sm={8} md={8}>
          <Form.Item name="catNo" label={<span style={LABEL_STYLE}>Cat No.</span>} style={{ marginBottom: 8 }}>
            <Input style={INPUT_STYLE} placeholder="Catalogue number…" maxLength={25} />
          </Form.Item>
        </Col>
        <Col xs={24} sm={8} md={8}>
          <Form.Item name="remarks" label={<span style={LABEL_STYLE}>Remarks</span>} style={{ marginBottom: 8 }}>
            <Input style={INPUT_STYLE} placeholder="Optional notes…" maxLength={500} />
          </Form.Item>
        </Col>
      </Row>
    ),
  }]}
/>
```

**Note**: `drawNo` and `catNo` fields are already in `EntryFormValues`, `startEdit()`, and both `handleAddOrUpdate()` branches — no changes needed there.

---

## G1 — Auto-bind LPO data into grid rows on Add

**File**: `PRLineItemsTable.tsx`  
**Depends on**: E2+E3 done (`lpoMeta` state already added)

**Problem**: `handleAddOrUpdate` ADD branch builds the new row from `emptyRow()` which has `lastPoRate: null, lastPoDate: null, lastPoSupplierCode: null, lastPoSupplierName: null`. The grid never shows LPO data because it's never populated.

**Fix**: In `handleAddOrUpdate`, ADD branch, spread `lpoMeta` into the new row:

```tsx
// BEFORE (ADD branch)
const row: PRLineFormItem = {
  ...emptyRow(),
  ...(itemMeta ?? {}),
  itemCode:    values.itemCode,
  // ... other fields
}

// AFTER
const row: PRLineFormItem = {
  ...emptyRow(),
  ...(itemMeta ?? {}),
  ...(lpoMeta ?? {}),           // ← adds lastPoRate, lastPoDate, lastPoSupplierCode, lastPoSupplierName
  itemCode:    values.itemCode,
  // ... other fields (unchanged)
}
```

Also reset `lpoMeta` after a successful add (after `setItemMeta(null); setItemOptions([])`):
```tsx
setLpoMeta(null)
```

---

## G2 — Grid column width: fit header + data without overflow

**File**: `PRLineItemsTable.tsx`

**Problem**: `onGridReady` calls `e.api.sizeColumnsToFit()` which compresses all columns to fit the container, causing data overflow/truncation.

**Fix**:

```tsx
// BEFORE
const onGridReady = useCallback((e: GridReadyEvent) => {
  apiRef.current = e.api
  e.api.sizeColumnsToFit()
}, [])

// AFTER
const onGridReady = useCallback((e: GridReadyEvent) => {
  apiRef.current = e.api
}, [])
```

Add `onFirstDataRendered` prop to `<AgGridReact>`:
```tsx
onFirstDataRendered={(e) => e.api.autoSizeAllColumns(false)}
```

This sizes each column to fit its header + cell content on first render. Existing fixed `width` values on column defs act as minimums when `autoSizeAllColumns` is used.

---

## S1 — Sub Cost Centre: show `—` when value is 0 or null

**File**: `PRViewModal.tsx`  
**Line ~159–162**

```tsx
// BEFORE
render: (v: number | undefined) =>
  v != null ? v : <Typography.Text type="secondary">—</Typography.Text>,

// AFTER
render: (v: number | undefined) =>
  v != null && v !== 0
    ? v
    : <Typography.Text type="secondary">—</Typography.Text>,
```

**Also check** the AG Grid `Description` column in `PRLineItemsTable.tsx` — the `headerName: 'Description'` field with `field: 'itemName'`. If the header is rendering as "IT..." (truncated), set `suppressHeaderMenuButton: false` and ensure the `minWidth: 140` is sufficient. If truncation persists, increase to `minWidth: 180`.

---

## V1 — PRViewModal: Drawing No binding verification

**File**: `PRViewModal.tsx`

Drawing No column already exists at `dataIndex: 'drawNo'`. Verify the backend SP `ksp_PR_GetById` returns the `DrawNo` column mapped to `drawNo` in `PRLineResponse`. If the column shows blank for all rows, check:
1. `PRLineResponse.drawNo` field exists in `types.ts` ✅ (it does)
2. `PRLineResponseDto` in the backend has `DrawNo` property mapped from SP result

If backend is not mapping it, add to the DTO and SP result mapping — no frontend change needed.

---

## Post-implementation checklist

```
□ npx tsc --noEmit → 0 errors
□ H2: PR Number shows as blue monospace Tag, clickable to copy, hidden when no savedPrNo
□ H1+H3: 3 rows, each with 2 equal-width fields
□ E1: Add button is inline with Qty in Space.Compact; Enter key triggers add
□ E2+E3: Badge row appears after item select; stock red when 0, green when > 0
□ E4: Advanced collapse shows Drawing No + Cat No + Remarks; hidden by default
□ G1: After adding an item, Last Rate / PO Date / Supplier cols in grid populate correctly
□ G2: Grid columns auto-size on first data load; no truncated headers
□ S1: Sub Cost 0 renders as — in View Modal
```
