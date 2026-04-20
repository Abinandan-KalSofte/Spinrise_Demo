# Session 1 — Critical Status Fix + Partial Approval Block

## Context
Module: M01 Purchase Requisition | FSD v2.3 | Spinrise ERP
Stack: ASP.NET Core 8 / Dapper / SQL Server SPs / React 18 + TypeScript
Rule: NO DB table changes. SP SELECT updates allowed.

## FSD References
- IST-10: `prstatus='C'` = RECEIVED (not cancelled). Cancellation uses `PO_PRH.cancelflag`.
- IST-5: Partially approved PRs (FirstApp='Y') must NOT be modifiable.
- Rec #19: Machine JOIN in GetById SP must filter by `PO_PRH.DEPCODE` to prevent duplicate print rows.

## Tasks

### T1 — Fix `IsLockedStatus()` in PurchaseRequisitionService.cs
**File:** `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs`

Current logic blocks only: `CONVERTED`, `CLOSED`, `CANCELLED`

New logic must ALSO block when any approval flag is set:
- Read `header.FirstApp`, `header.SecondApp`, `header.ThirdApp` from fetched header
- If any = `'Y'` → return locked with message: "This PR has been approved and cannot be modified."

### T2 — Add Approval Flag Fields to Domain Entity
**File:** `Development/Backend/Spinrise.Domain/Areas/Purchase/PurchaseRequisition/PurchaseRequisitionHeader.cs`

Add properties (already exist as columns in PO_PRH, Dapper will map them):
```csharp
public string? FirstApp { get; set; }
public string? SecondApp { get; set; }
public string? ThirdApp { get; set; }
```

### T3 — Fix Status Label Map in Frontend
**File:** `Development/spinrise-web/src/features/purchase-requisition/types.ts`

Find `PR_STATUS_LABELS` and align:
- `'C'` = "Received" (not Cancelled) — IST-10 confirmed
- Cancellation shown via `cancelflag` on header (separate — no change needed now)

### T4 — Verify Machine JOIN in ksp_PR_GetById.sql
**File:** `Development/Backend/Spinrise.DBScripts/Scripts/02 Stored Procedures/ksp_PR_GetById.sql`

Find the JOIN to `MM_MACMAS`. Confirm it includes:
```sql
AND mm.DEPCODE = prl.Depcode  -- or prl.depcode = prh.DEPCODE
```
If the dept filter is missing, add it. This prevents duplicate item rows on print when same macno exists in multiple departments.

## Output Required
- Modified service method `IsLockedStatus` (or the callers — Update, Delete, DeleteLine)
- Modified domain entity
- Modified frontend type map
- SP diff (if machine JOIN was missing the dept filter)

## Do NOT Change
- DB table schemas
- Stored procedure logic beyond the machine JOIN fix
- Any other module
