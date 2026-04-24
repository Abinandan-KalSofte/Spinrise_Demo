# Session Log — PR List Global Search (Task 3)
**Date:** 2026-04-21
**Prompt:** session_UI_Changes.md — Task 3: Fix Search (global like modules)

## Changes

### SP: `ksp_PR_GetPaginated.sql` + `merged.sql`
Added `@SearchText VARCHAR(100) = NULL` parameter.
LIKE condition added to both COUNT and paged queries:
```sql
AND (@SearchText IS NULL
     OR CAST(h.prno AS VARCHAR(20)) LIKE '%' + @SearchText + '%'
     OR ISNULL(h.refno,   '')       LIKE '%' + @SearchText + '%'
     OR ISNULL(h.REQNAME, '')       LIKE '%' + @SearchText + '%'
    )
```
Searches across: PR No (numeric → varchar), Ref No, Requester code.

### Backend C#
- `PRListQueryDto.cs` — Added `public string? SearchText { get; set; }`
- `PRSummaryResponseDto.cs` — Added `public bool IsDeleted { get; set; }` (missed from previous delete session)
- `PurchaseRequisitionRepository.cs` — Added `SearchText = query.SearchText` to Dapper param object

### Frontend
- `purchaseRequisitionApi.ts` — Added `searchText?: string` to `PRPaginatedFilters`
- `prListConfig.ts` — Added `searchText?: string` to `SearchFormValues`
- `PRFilterBar.tsx` — Added `Input` (with `SearchOutlined` prefix) as first inline filter field; `onPressEnter` triggers search; placeholder: "Search PR No, Ref No, Requester…"; `allowClear`
- `usePurchaseRequisitionList.ts` — `handleSearch` now maps `values.searchText` → `searchText` filter param
- `index.css` — Added `.pr-filter-bar__item--search { width: 220px }` + responsive rule

## Files Changed
- `Spinrise.DBScripts/Scripts/02 Stored Procedures/ksp_PR_GetPaginated.sql`
- `Spinrise.DBScripts/merged.sql`
- `Spinrise.Application/.../DTOs/PRListQueryDto.cs`
- `Spinrise.Application/.../DTOs/PRSummaryResponseDto.cs`
- `Spinrise.Infrastructure/.../PurchaseRequisitionRepository.cs`
- `src/features/purchase-requisition/api/purchaseRequisitionApi.ts`
- `src/features/purchase-requisition/components/pr-list/prListConfig.ts`
- `src/features/purchase-requisition/components/pr-list/PRFilterBar.tsx`
- `src/features/purchase-requisition/hooks/usePurchaseRequisitionList.ts`
- `src/index.css`

## Build: TypeScript 0 errors

## Deploy Note
Run `ksp_PR_GetPaginated` section from `merged.sql` in SSMS. Rebuild and publish backend.

## session_UI_Changes.md — All 3 Tasks Now Complete
1. ✅ Redesign UI (Zoho SaaS style) — PRFilterBar, PRDataTable density, Zoho layout
2. ✅ Add Actions (View/Edit/Delete) — icons, delete confirmation modal, soft-delete SP
3. ✅ Fix Search (global like modules) — @SearchText SP param, Input.Search field, Enter-key trigger
