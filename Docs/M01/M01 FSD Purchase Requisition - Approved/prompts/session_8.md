# Session 8 — Pending Qty Before Item Selection

## Context
Module: M01 Purchase Requisition | FSD v2.3 | Spinrise ERP
Stack: ASP.NET Core 8 / React 18
Rule: NO DB table changes. Reuse existing SPs where possible.

## FSD References
- Rec #25: Pending PR qty + Pending PO qty must be visible BEFORE user confirms item selection.
- §5.6 (Penpodetails='Y'): Item lookup enriched with Pending Qty, Delivery Date, Min/Max Level, Lead Time, Last Supplier.
- §11: `ItemGroupFilterEnabled` flag — filter items by group when active.

## Current State
- `GET /lookups/items?search=` returns only: `itemCode`, `itemName`, `uom`
- Pending warnings shown AFTER item selected (via `getItemInfo`) — too late per FSD
- `ItemGroupFilterEnabled` flag exists in PreCheckResult but lookup ignores it

## Tasks

### T1 — Extend Item Lookup Response
**File:** `Spinrise.Application/.../Lookup/DTOs/ItemLookupDto.cs` (or equivalent)

Add:
```csharp
public decimal? CurrentStock { get; set; }
public decimal? PendingPrQty { get; set; }
public decimal? PendingPoQty { get; set; }
public decimal? MinLevel { get; set; }
```

### T2 — Extend Lookup API Query Params
**File:** `LookupController.cs` → `GetItems` action

Add query params:
```csharp
[FromQuery] string? depCode = null,
[FromQuery] string? itemGroup = null
```
Pass to service.

### T3 — Extend Lookup Service + Repository
**Files:** `ILookupService.cs`, `LookupService.cs`, `ILookupRepository.cs`, `LookupRepository.cs`

Add method:
```csharp
Task<IEnumerable<ItemLookupDto>> GetItemsWithStockAsync(
    string divCode, string search, string? depCode, string? itemGroup);
```

Repository calls a new or extended SP to return item + stock + pending data.

### T4 — SP Update or New SP
**Option A:** Update `ksp_GetItems` SP to accept `@DepCode` + `@ItemGroup`, join `IN_ITEM` with pending PR/PO query.
**Option B:** New SP `ksp_GetItemsEnriched`.

Pending PO qty logic (reuse from `ksp_PR_PendingIndentCheck` pattern):
```sql
SELECT SUM(ISNULL(ORDQTY,0) - ISNULL(RCVDQTY,0))
FROM PO_ORDL o JOIN PO_ORDH h ON ...
WHERE o.ITEMCODE = i.ITEMCODE AND ISNULL(h.CANFLG,'N')='N'
```

Pending PR qty logic:
```sql
SELECT SUM(prl.QTYIND)
FROM PO_PRL prl
WHERE prl.ITEMCODE = i.ITEMCODE
  AND prl.DIVCODE = @DivCode
  AND ISNULL(prl.PRSTATUS,' ') NOT IN ('O','C')
```

### T5 — Frontend Item Search Dropdown
**File:** `PRItemFormV2.tsx`

Update item search `Select` option rendering to show stock info:
```tsx
<Select.Option key={item.itemCode} value={item.itemCode} label={item.itemName}>
  <div style={{ display: 'flex', justifyContent: 'space-between' }}>
    <span>{item.itemCode} — {item.itemName}</span>
    <Space size={8}>
      <Tag color="blue">Stock: {item.currentStock ?? '—'}</Tag>
      {item.pendingPrQty > 0 && <Tag color="orange">PR Pending: {item.pendingPrQty}</Tag>}
      {item.pendingPoQty > 0 && <Tag color="red">PO Pending: {item.pendingPoQty}</Tag>}
    </Space>
  </div>
</Select.Option>
```

Pass `depCode` from form state to `lookupApi.getItems(search, depCode)`.

### T6 — Update lookupApi.ts
**File:** `Development/spinrise-web/src/features/purchase-requisition/api/lookupApi.ts`

```typescript
getItems: (search: string, depCode?: string) =>
  apiHelpers.get<ItemLookup[]>(`lookups/items?search=${encodeURIComponent(search)}${depCode ? `&depCode=${depCode}` : ''}`)
```

### T7 — Update Frontend ItemLookup Type
**File:** `types.ts`
```typescript
export interface ItemLookup {
  itemCode: string
  itemName: string
  uom: string
  currentStock?: number
  pendingPrQty?: number
  pendingPoQty?: number
  minLevel?: number
}
```

## Do NOT Change
- `getItemInfo` endpoint (post-selection data still needed for LPO rate etc.)
- DB table schemas
