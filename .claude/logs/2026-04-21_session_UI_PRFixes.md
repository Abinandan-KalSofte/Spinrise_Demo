# Session Log — 2026-04-21
## Topic: PR Module Bug Fixes + UI Layout Redesign

### Changes Made

#### Backend
- `CreatePRHeaderDto.cs` — `IType` StringLength: 1 → 2
- `ksp_PR_Insert.sql` — `@IType CHAR(1)` → `VARCHAR(2)`, VALUES uses `LEFT(@IType, 1)`
- `ksp_PR_Update.sql` — same change
- `merged.sql` — updated both SP sections
- `PRHeaderV2.tsx` — removed subCost field (FSD: line-level only)
- `PurchaseRequisitionService.cs` — removed V10 SubCost null check from Create + Update
- `types.ts` — removed `subCost` from `PRHeaderFormValues`
- `PurchaseRequisitionV2Page.tsx` — removed subCost from payload; status keys → full string ('OPEN')

#### Frontend Bug Fixes (session_list_fix.md)
- BUG-1: Download used `record.prNo` → fixed to `record.id` (DB row ID)
- BUG-2: Added RECEIVED status to STATUS_TAG and STATUS_OPTIONS
- BUG-3: PRActionBarV2 used single-char status keys → switched to PR_STATUS_LABELS import
- OP-1: Added Edit button in PRDataTable → navigates to `/purchase/requisition/edit/:prNo`
- OP-2: Added PRViewModal columns (Machine, Sub-Cost, Cat)
- New file: `PurchaseRequisitionEditPage.tsx` with lock logic + cancel PR
- New route: `purchase/requisition/edit/:prNo` in dashboard.routes.tsx

#### UI Layout Redesign (session_UI_Layout.md)
- `App.tsx` — ConfigProvider: primary `#4f46e5`, borderRadius 8, component overrides
- `MainLayout.tsx` — full rewrite: 9-module registry, dynamic sidebar, ModuleSwitcherContent, Desktop Sider + Mobile Drawer
- `AppHeader.tsx` — full rewrite: 3-section topbar (left toggle+switcher, center search, right bell+profile)
- `index.css` — full rewrite: new layout classes, module switcher grid, responsive breakpoints at 768px/480px

### Pending (not yet deployed)
- Run merged.sql in SSMS (SpinRiseSaranya DB)
- Stop SpinriseAPI app pool → publish API → start app pool
- Publish frontend
- S3: Category Code full stack
- S4: Composite duplicate check + MINLEVEL validation
- S9: Item Purchase History modal
- Dark theme (not implemented)
