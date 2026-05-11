# Session Log — 2026-05-02 IST Bug Fixes

**Topic:** IST re-test fixes after Sat 2 May demo  
**Developer:** Abinandan

## Changes Made

### Backend
- `ksp_PR_GetPaginated` — Removed erroneous `GROUP BY createddt` that collapsed rows and caused empty results
- Added `ksp_GetMaxPrSNo` SP — returns the current max `PRSNO` for a given `PRNO` so that new line items are numbered safely without race conditions
- `PurchaseRequisitionRepository.cs` — wired `GetMaxPrSNoAsync` call before insert
- `PRLineFormItem` — added `prSNo` field; backend now assigns line serial numbers from DB max+1

### Frontend
- `PRLineItemsTable.tsx` — fixed null filter in `buildPayload` (`items.filter(l => l.itemCode.trim() !== '')`) to exclude trailing empty rows from save
- PR line serial numbers (`prSNo`) now flow from backend on save and reload

## Root Cause
IST found that PR saves sometimes created duplicate line numbers (CD-2 style race). Fixed by reading max `PRSNO` from DB at save time rather than computing client-side.
