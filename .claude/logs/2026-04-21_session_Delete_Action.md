# Session Log — PR List Delete Action
**Date:** 2026-04-21
**Prompt:** session_UI_Changes.md

## Changes

### Updated: `ksp_PR_GetPaginated.sql`
Added computed `IsDeleted` column (no schema change — derived from existing `cancelflag`):
```sql
CASE WHEN ISNULL(h.cancelflag,'') = 'Y'
     THEN CAST(1 AS BIT)
     ELSE CAST(0 AS BIT)
END AS IsDeleted,
```
Also updated `merged.sql` with the same change.

### Updated: `types.ts`
Added `isDeleted: boolean` to `PRSummaryResponse`.

### Updated: `prListService.ts`
Added two methods wrapping existing `purchaseRequisitionApi` endpoints:
- `getDeleteReasons()` → `GET purchase-requisitions/delete-reasons`
- `deletePR(prNo, reasonCode)` → `DELETE purchase-requisitions/{prNo}?deleteReasonCode=...`

### Updated: `usePurchaseRequisitionList.ts`
Added delete state: `deleteOpen`, `deletingPrNo`, `deleteReasons`, `deleteReason`, `deleteSubmitting`.
Added handlers: `handleOpenDelete`, `handleCancelDelete`, `handleConfirmDelete`.
- `handleOpenDelete`: opens modal, lazy-loads reasons (fetched once, cached in state)
- `handleConfirmDelete`: calls API, shows success/error toast, refreshes current page

### Updated: `PRDataTable.tsx`
- Added `DeleteOutlined` import
- Added `deletingPrNo: number | null` and `onDelete: (prNo: number) => void` props
- Actions column width: 112 → 136px
- Added danger Delete button (disabled when `isDeleted || prStatus === 'CANCELLED' || prStatus === 'CONVERTED'`)
- Tooltip shows "Already cancelled or converted" when disabled

### Updated: `PurchaseRequisitionListPage.tsx`
- Added `Modal` + `Select` + `ExclamationCircleOutlined` imports
- Wired all delete state and handlers from hook
- Added delete confirmation Modal:
  - Title with red warning icon
  - Description paragraph naming the PR No
  - `Select` for cancellation reason (OK disabled until reason chosen)
  - Danger OK button, `destroyOnClose`

## Files Changed
- `Spinrise.DBScripts/Scripts/02 Stored Procedures/ksp_PR_GetPaginated.sql`
- `Spinrise.DBScripts/merged.sql`
- `src/features/purchase-requisition/types.ts`
- `src/features/purchase-requisition/services/prListService.ts`
- `src/features/purchase-requisition/hooks/usePurchaseRequisitionList.ts`
- `src/features/purchase-requisition/components/pr-list/PRDataTable.tsx`
- `src/features/purchase-requisition/pages/PurchaseRequisitionListPage.tsx`

## Build: TypeScript 0 errors

## Deploy Note
Run updated `ksp_PR_GetPaginated` section from `merged.sql` in SSMS before testing.
