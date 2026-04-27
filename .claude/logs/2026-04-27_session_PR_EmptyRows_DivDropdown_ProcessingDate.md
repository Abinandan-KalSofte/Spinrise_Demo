# Session: PR Empty Rows Fix + Division Dropdown + Processing Date
**Date**: 2026-04-27

## Changes Made

### 1. Division Dropdown on Login (ksp_GetActiveDivisions)
- New SP `ksp_GetActiveDivisions` selects `DivCode, DIVNAME AS DivName` from `pp_divmas` ordered by `DIV_PRINTNAME`
- Added to `merged.sql`
- Backend: `ActiveDivisionDto`, `ILookupRepository/Service`, `LookupRepository/Service`, `LookupController` (AllowAnonymous endpoint `/api/v1/divisions/active`)
- Frontend: `auth/types.ts` (`ActiveDivisionDto`), `authApi.ts` switched to `apiHelpers.get` to auto-unwrap `ApiResponse`, `LoginPage.tsx` replaced text Input with `<Select showSearch>` + fallback Input if API fails

### 2. Processing Date Field on Login
- `useAuthStore` extended: `processingDate: string | null`, `setProcessingDate`, `clearAuthSession` resets it, included in `partialize`
- `client.ts` request interceptor sends `X-Processing-Date` header on every authenticated request
- `LoginPage.tsx`: `<DatePicker>` defaulting to today, future dates disabled; strips field before API call, calls `setProcessingDate` after login
- `AppHeader.tsx`: amber badge showing processing date with `CalendarOutlined` icon + Tooltip
- `PRHeaderV2.tsx` + `PRHeaderCards.tsx`: reads `processingDate` from auth store, PR Date field locks to processing date only, validator rejects other dates, hint shows "Processing date: DD-MM-YYYY"

### 3. PR List Pagination Fix
- Root cause: AG Grid's built-in `pagination` prop was doing client-side pagination on the 20-row API response
- Fix: Removed AG Grid pagination props; added Ant Design `<Pagination>` below the grid connected to server-side `handlePageChange`
- `PRDataTable.tsx`: added `page`, `total`, `onPageChange` props; removed AG Grid pagination; added `<Pagination>` component
- `usePurchaseRequisitionList.ts`: added `handlePageChange` callback; exported from hook
- `PurchaseRequisitionListPage.tsx`: passes `page`, `total`, `onPageChange` to `PRDataTable`

### 4. PR List Empty Rows Fix (ROOT CAUSE + FIX)
- **Root cause**: `h.createddt` was in `GROUP BY` in `ksp_PR_GetPaginated`. When a PR header record has multiple distinct `createddt` values, it produced duplicate rows with the same PR data — AG Grid rendered near-empty duplicate rows.
- **SQL fix** (`ksp_PR_GetPaginated.sql` + `merged.sql`): Removed `h.createddt` from `GROUP BY`; changed `h.createddt` in SELECT to `MAX(h.createddt)` with existing `ISDATE/CAST` wrapper
- **Frontend safety net** (`usePurchaseRequisitionList.ts`): `setRows` now filters nulls: `.filter((item): item is PRSummaryResponse => item != null && !!item.prNo)`

### 5. PRViewModal Full Redesign
- Status banner with color coding per status (OPEN/CONVERTED/CANCELLED)
- Grouped sections with colored accent bar (`SectionHeading` sub-component)
- Field icons (`Field` sub-component)
- Summary row (total qty + total approx cost)
- Modal `width="90vw"`, body `maxHeight: '80vh'`
- `val()` helper normalises null/empty/"0" to em-dash
- Dark header for line items table

### 6. Other UI Fixes
- Removed Pending column from `PRLineItemsTable.tsx` (was in columns array at line 565)
- All Ant Design Tables: `scroll={{ x: 'max-content' }}` for non-shrinking columns
- Dark header color `#1e293b` on PRViewModal tables via `components.header.cell` override

## Files Changed
- `DBScripts/Scripts/02 Stored Procedures/ksp_GetActiveDivisions.sql` (new)
- `DBScripts/Scripts/02 Stored Procedures/ksp_PR_GetPaginated.sql` (GROUP BY fix)
- `DBScripts/merged.sql` (both SPs updated)
- `Spinrise.Application/Areas/Common/Lookup/DTOs/ActiveDivisionDto.cs` (new)
- `Spinrise.Shared/Constants.cs` (GetActiveDivisions SP + ApiRoutes.Divisions)
- `ILookupRepository.cs`, `ILookupService.cs`, `LookupRepository.cs`, `LookupService.cs`
- `LookupController.cs` (AllowAnonymous GetActiveDivisions endpoint)
- `auth/types.ts`, `auth/api/authApi.ts`, `auth/store/useAuthStore.ts`
- `auth/pages/LoginPage.tsx`
- `shared/api/client.ts` (X-Processing-Date header)
- `shared/layouts/AppHeader.tsx` (processing date badge)
- `purchase-requisition/components/v2/PRHeaderV2.tsx`
- `purchase-requisition/components/v2/PRHeaderCards.tsx` (if present)
- `purchase-requisition/components/v2/PRLineItemsTable.tsx` (removed Pending column)
- `purchase-requisition/components/pr-list/PRViewModal.tsx` (full redesign)
- `purchase-requisition/components/pr-list/PRDataTable.tsx` (server-side pagination)
- `purchase-requisition/hooks/usePurchaseRequisitionList.ts` (handlePageChange + null filter)
- `purchase-requisition/pages/PurchaseRequisitionListPage.tsx`
