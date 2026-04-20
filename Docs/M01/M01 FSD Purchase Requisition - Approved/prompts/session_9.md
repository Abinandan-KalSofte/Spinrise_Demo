# Session 9 — Item Purchase History API + Modal

## Context
Module: M01 Purchase Requisition | FSD v2.3 | Spinrise ERP
Stack: ASP.NET Core 8 / React 18
Rule: NO DB table changes. New SP allowed for history query.

## FSD References
- Rec #22 (Critical): Item History shows 'No Records Found' despite data existing.
- §10 Frame6: cmd_history button opens full PO history grid for the selected item.
- FSD confirms: history reads from PO_ORDL + PO_ORDH (purchase order tables).

## Current State
`PRRateHistoryModal.tsx` renders only `lastPoRate`, `lastPoDate`, `lastPoSupplierName` from `getItemInfo` response.
This is NOT a real history — it's a single-row snapshot. FSD requires a full multi-row grid.

## Tasks

### T1 — New DTO
**File:** `Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/PRItemHistoryDto.cs`

```csharp
namespace Spinrise.Application.DTOs.Purchase;

public class PRItemHistoryDto
{
    public string PoNo { get; set; } = string.Empty;
    public DateTime PoDate { get; set; }
    public string? SupplierCode { get; set; }
    public string? SupplierName { get; set; }
    public decimal Rate { get; set; }
    public decimal OrderQty { get; set; }
    public decimal ReceivedQty { get; set; }
    public decimal PendingQty { get; set; }
}
```

### T2 — New SP Constant
**File:** `Constants.cs` — inside `StoredProcedures.PurchaseRequisition`:
```csharp
public const string GetItemHistory = "ksp_PR_GetItemHistory";
```

### T3 — Add Repository Method
**Files:** `IPurchaseRequisitionRepository.cs` + `PurchaseRequisitionRepository.cs`

Interface:
```csharp
Task<IEnumerable<PRItemHistoryDto>> GetItemHistoryAsync(string divCode, string itemCode);
```

Implementation: call `ksp_PR_GetItemHistory` with `@DivCode`, `@ItemCode`.

### T4 — Add Service Method
**Files:** `IPurchaseRequisitionService.cs` + `PurchaseRequisitionService.cs`

```csharp
Task<IEnumerable<PRItemHistoryDto>> GetItemHistoryAsync(string divCode, string itemCode);
```

Simple pass-through (no transaction needed — read-only):
```csharp
public async Task<IEnumerable<PRItemHistoryDto>> GetItemHistoryAsync(string divCode, string itemCode)
{
    await _uow.BeginAsync();
    try {
        var data = await _repo.GetItemHistoryAsync(divCode, itemCode);
        await _uow.CommitAsync();
        return data;
    } catch { await _uow.RollbackAsync(); throw; }
}
```

### T5 — Add Controller Endpoint
**File:** `PurchaseRequisitionController.cs`

```csharp
[HttpGet("item-history")]
public async Task<IActionResult> GetItemHistory([FromQuery] string itemCode)
{
    var divCode = User.FindFirstValue(SpinriseClaims.DivCode)
        ?? throw new UnauthorizedAccessException("Division code missing.");
    var data = await _service.GetItemHistoryAsync(divCode, itemCode);
    return Success(data, "Item history retrieved.");
}
```

### T6 — Add Frontend API Method
**File:** `purchaseRequisitionApi.ts`

```typescript
getItemHistory: (itemCode: string) =>
  apiHelpers.get<PRItemHistoryDto[]>(`${BASE}/item-history?itemCode=${encodeURIComponent(itemCode)}`),
```

### T7 — Frontend Type
**File:** `types.ts`
```typescript
export interface PRItemHistoryDto {
  poNo: string
  poDate: string
  supplierCode?: string
  supplierName?: string
  rate: number
  orderQty: number
  receivedQty: number
  pendingQty: number
}
```

### T8 — Rewrite PRRateHistoryModal
**File:** `PRRateHistoryModal.tsx`

Replace static display with:
- `useEffect` on `itemCode` prop → call `purchaseRequisitionApi.getItemHistory(itemCode)`
- Render `Table<PRItemHistoryDto>` with columns: PO No, PO Date, Supplier, Rate (₹), Order Qty, Received Qty, Pending Qty
- Loading spinner while fetching; "No purchase history found." if empty

### SP Changes Required
**New file: `ksp_PR_GetItemHistory.sql`**
```sql
CREATE OR ALTER PROCEDURE ksp_PR_GetItemHistory
    @DivCode varchar(2),
    @ItemCode varchar(10)
AS
    SELECT TOP 20
        h.PORDNO AS PoNo,
        h.PORDDT AS PoDate,
        h.SLCODE AS SupplierCode,
        sl.SLNAME AS SupplierName,
        l.RATE,
        ISNULL(l.ORDQTY, 0) AS OrderQty,
        ISNULL(l.RCVDQTY, 0) AS ReceivedQty,
        ISNULL(l.ORDQTY, 0) - ISNULL(l.RCVDQTY, 0) AS PendingQty
    FROM PO_ORDH h
    INNER JOIN PO_ORDL l
        ON l.DIVCODE = h.DIVCODE
       AND l.PORDNO  = h.PORDNO
       AND l.PORDDT  = h.PORDDT
    LEFT JOIN FA_SLMAS sl
        ON sl.SLCODE = h.SLCODE
       AND sl.DIVCODE = h.DIVCODE
    WHERE h.DIVCODE = @DivCode
      AND l.ITEMCODE = @ItemCode
      AND ISNULL(h.CANFLG, 'N') = 'N'
    ORDER BY h.PORDDT DESC
```

## Do NOT Change
- `getItemInfo` endpoint (still used for single-line auto-fill)
- DB table schemas
