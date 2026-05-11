# Session Log — M02 PO UpdateAsync Implementation
**Date:** 2026-05-08
**Task:** Implement PO UpdateAsync — last stub in M02 backend
**Status:** Complete

## Summary
Implemented full PO Update flow in the M02 Purchase Order module, completing the last stub method (`UpdateAsync` returned "Update not yet implemented"). All layers updated: Constants, Repository Interface, Repository, Service.

## Changes Made

### Constants.cs
Added two new SP entries to `StoredProcedures.PurchaseOrder`:
- `DeleteLinesForUpdate = "ksp_RMI_PO_DeleteLinesForUpdate"` — deletes all RM_CONT rows + delivery schedule + discount rates for a given PO
- `UpdatePRBalance = "ksp_RMI_PO_UpdatePRBalance"` — updates qtyordKG in Rm_PRL (used for both balance-add on insert and balance-undo on update)

### IPurchaseOrderRepository.cs
Added two new methods:
- `Task DeleteLinesForUpdateAsync(decimal contNo, DateTime contDt, string divCode)`
- `Task UndoPRBalanceAsync(string divCode, decimal prNo, DateTime prDate, int prSno, decimal qtyOrdKG)`

### PurchaseOrderRepository.cs
Implemented both new methods via Dapper SP calls.

### PurchaseOrderService.cs
Replaced the stub `UpdateAsync` with full implementation:
1. Approval lock check (FIRST_APPFLG = 'Y' blocks update)
2. Pre-checks (same as CreateAsync)
3. Line count validation
4. PR-based HSN/TaxCode validation
5. GST zero warning
6. Header field validation (DlyType, Acceptance, Transport, SupFileName)
7. Lot No validation (when RequireSupplierLotNo param active)
8. Rate > 0 per line
9. Qty per ArrivalType
10. RateUnit vs ArrivalType consistency (E55)
11. Undo PR balance for existing lines (calls UpdatePRBalance with negative qty before delete)
12. Delete all existing lines (ksp_RMI_PO_DeleteLinesForUpdate — also clears RM_DELSCHED, RM_ContDiscntRate)
13. Re-insert all lines (ksp_RMI_PO_Insert — also re-applies PR balance per line)
14. Re-insert delivery schedules
15. Re-insert discount rates
16. Re-insert slot no (if provided)
17. Audit log with mode "MOD"

## DB SPs Used (already in merged.sql)
- `ksp_RMI_PO_DeleteLinesForUpdate` — DELETE RM_ContDiscntRate + RM_DELSCHED + RM_CONT for PO
- `ksp_RMI_PO_UpdatePRBalance` — UPDATE Rm_PRL.qtyordKG with UPDLOCK (used with negative qty to undo balance)

## Build Verification
- `Spinrise.Application` → Build succeeded (no errors)
- `Spinrise.Infrastructure` → Build succeeded (no errors)
- Full solution build skipped (API process has DLLs locked; compile step confirmed clean via individual project builds)
