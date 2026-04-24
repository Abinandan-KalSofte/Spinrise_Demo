# Session Log — List Page View Details & Download Fix
**Date:** 2026-04-21

## Root Causes Found

### Bug 1 — Download always failed (400 Bad Request)
`ksp_PR_GetPaginated` returns `0 AS Id` for every row. `PRSummaryResponse.id` is always 0.
The hook was passing `record.id` (= 0) to the download API route `/purchase/reports/pr/{id}/pdf/quest`.
The backend controller validates `if (id <= 0) → 400 Bad Request` — download failed for every row.

### Bug 2 — View Details failed for PRs with unresolved REQNAME
`ksp_PR_GetById` used INNER JOINs for `pr_emp` and `in_dep`:
- If `h.REQNAME` had no match in `pr_emp` (empty string, deleted employee, wrong divcode) → 0 header rows → 404
- Similarly for `in_dep` on `depcode`
These INNER JOINs silently excluded PRs, causing "PR not found" for any row where lookup data was missing.

---

## Fixes Applied

### Frontend — `usePurchaseRequisitionList.ts`
```typescript
// Before (wrong):
await prListService.downloadReport(record.id, startDate, endDate)
// After (correct):
await prListService.downloadReport(record.prNo, startDate, endDate)
```

### Frontend — `prListService.ts`
Renamed parameter `id` → `prNo` to match intent.

### Frontend — `purchaseReportService.ts`
Renamed parameter `id` → `prNo`; URL now uses `prNo` in the path and in the fallback filename.

### SP — `ksp_PR_GetById.sql` + `merged.sql`
1. `INNER JOIN pr_emp` → `LEFT JOIN pr_emp`
2. `INNER JOIN in_dep` → `LEFT JOIN in_dep`
3. `e.ename AS ReqName` → `ISNULL(e.ename, h.REQNAME) AS ReqName` (shows raw code if no name match)

---

## Files Changed
- `src/features/purchase-requisition/hooks/usePurchaseRequisitionList.ts`
- `src/features/purchase-requisition/services/prListService.ts`
- `src/features/purchase-reports/services/purchaseReportService.ts`
- `Spinrise.DBScripts/Scripts/02 Stored Procedures/ksp_PR_GetById.sql`
- `Spinrise.DBScripts/merged.sql`

## Build
- TypeScript: 0 errors
- SP: run `merged.sql` in SSMS before deploying API

## Deploy order
1. Run `merged.sql` in SSMS (updates `ksp_PR_GetById`)
2. Stop `SpinriseAPI` app pool → publish → start
3. Reload frontend (no redeploy needed — frontend-only change included in next build)
