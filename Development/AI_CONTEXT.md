# AI_CONTEXT.md — Spinrise ERP
> Last updated: 2026-04-25 | Maintained by: Claude Code sessions

---

## 1. Project Identity

| Item | Value |
|---|---|
| Product | **Spinrise ERP** — full-stack enterprise resource planning system |
| Nature | **Migration** from legacy VB6 ERP (Kalsofte) to ASP.NET Core 8 + React 18 |
| DB | SQL Server `172.16.16.52\sql2016`, database `SpinRiseSaranya` |
| Tables | **Already live and populated** — never write CREATE TABLE scripts as deliverables |
| DB work | **Stored procedures only** — all scripts in `DBScripts/Scripts/02 Stored Procedures/` |
| Client | Internal ERP — single organisation; currency is **₹ (Indian Rupee)**, locale `en-IN` |
| Phase | Phase 1 — M01 Purchase Requisition module is the primary active module |

---

## 2. Developer Persona

Always respond as a **senior .NET + React architect with 10 years of ERP experience**. Output rules:
- Code only — no explanations unless asked
- No repetition, minimal tokens
- Follow existing project structure strictly
- Do not generate unused code or hypothetical "future-proof" abstractions

---

## 3. Tech Stack

### Backend
- ASP.NET Core 8, C# 12
- Dapper (no Entity Framework)
- SQL Server stored procedures — all data access is parameterised SP calls
- JWT authentication
- QuestPDF — all transaction PDF prints
- EPPlus — all Excel / CSV exports
- FastReports — **excluded from Phase 1, do not use**

### Frontend
- React 18 + TypeScript (strict — no `any`)
- Vite + React Router v7
- Ant Design 5 (via project shared wrapper)
- Zustand (state management)
- Axios (HTTP client, centralised error handling)
- AG Grid Community (item grids)
- dayjs (dates)

---

## 4. Repository Layout

```
D:\Spinrise\Development\
├── Backend\
│   ├── Spinrise.sln
│   ├── Spinrise.API\           ← Controllers, middleware, Program.cs
│   ├── Spinrise.Application\   ← DTOs, interfaces, services, mappings
│   ├── Spinrise.Infrastructure\← Dapper repos, UoW, QuestPDF docs
│   ├── Spinrise.Domain\        ← Core entities (minimal use)
│   ├── Spinrise.Shared\        ← Cross-cutting utilities
│   ├── Spinrise.DBScripts\     ← SQL SPs + merged.sql
│   └── Spinrise.Tests\         ← xUnit + Moq
└── spinrise-web\               ← Vite React frontend
    └── src\
        ├── features\           ← Feature modules
        ├── shared\             ← Axios client, design system wrappers, utilities
        └── app\                ← Router, providers
```

**Flow**: `Controller → Service → Repository → Stored Procedure → SQL Server`

**Folder convention**: `Areas/<Division>/<Module>/` across all backend layers.

---

## 5. Implemented Backend Modules

| Division | Module | Status |
|---|---|---|
| Administration | User | ✅ Complete |
| Administration | Department | ✅ Complete |
| Administration | Section | ✅ Complete |
| Administration | Stock | ✅ Complete |
| Purchase | PurchaseRequisition | ✅ Complete (see §7) |
| Purchase | Reports (QuestPDF + EPPlus) | ✅ Complete |
| Security | Auth | ✅ Complete |
| Inventory | Stock structure | 🔲 Structure only |
| Common | Lookup | ✅ Complete |

---

## 6. Implemented Stored Procedures (34 total — all in `merged.sql`)

**Auth**
- `ksp_Auth_ValidateUser`

**Lookup / Shared**
- `ksp_GetDepartments`, `ksp_GetDivisionDetails`, `ksp_GetEmployees`
- `ksp_GetItems`, `ksp_GetItemsEnriched`
- `ksp_GetMachines`, `ksp_GetPOType`, `ksp_GetSubCosts`
- `ksp_Stock_GetCurrentStock`

**Purchase Requisition — Config & Checks**
- `ksp_PR_PreChecks`
- `ksp_PR_DepartmentExists`, `ksp_PR_ItemExists`, `ksp_PR_CostCentreExists`
- `ksp_PR_BudgetGroupExists`, `ksp_PR_MachineExists`, `ksp_PR_DeleteReasonExists`
- `ksp_PR_CategoryExists`, `ksp_PR_IsLinkedToEnquiry`

**Purchase Requisition — Read**
- `ksp_PR_GetMaxPrDate`, `ksp_PR_GenerateNumber`
- `ksp_PR_GetAll`, `ksp_PR_GetPaginated`, `ksp_PR_GetById`
- `ksp_PR_GetDeleteReasons`, `ksp_PR_GetItemInfo`, `ksp_PR_GetItemMinLevel`
- `ksp_PR_PendingIndentCheck`, `ksp_PR_PendingPRCheck`
- `ksp_PR_GetItemHistory`

**Purchase Requisition — Write**
- `ksp_PR_Insert`, `ksp_PR_InsertLine`, `ksp_PR_Update`
- `ksp_PR_SoftDeleteLines`, `ksp_PR_Delete`, `ksp_PR_DeleteLine`
- `ksp_PR_InsertAuditLog`

**Purchase Reports**
- `ksp_PO_RequisitionReport_DateWise`

---

## 7. M01 — Purchase Requisition Module (Primary Active Module)

### 7.1 FSD Reference

- **Approved FSD**: `D:\Spinrise\Docs\M01\M01 FSD Purchase Requisition - Approved\M01_FSD_PurchaseRequisition_v2.3_CEO_Approved.md`
- CEO approved: **17-Apr-2026** (T. Mani)
- VB6 reference: `D:\Spinrise\Docs\M01\VB6 Reference\tmpPoindent.frm` (7,453 lines)

### 7.2 VB6 Ground Truth — Critical Field Mappings

| UI Label | DB Field | VB6 Behaviour | Notes |
|---|---|---|---|
| Requested By | `po_prh.REQNAME` | Stores employee **code** (numeric) — `Val(txtfields(1).Text)` | NOT name — look up `eName` for display |
| Order Type | `po_prh.ITYPE` (ABCFLG) | E=Emergency, O=Ordinary, U=Urgent only | Filter POType lookup to these 3 |
| PO Group | `po_prh.PO_GRP` | Conditional on `PurTypeFlg=1` | **Removed from UI in Revision 01** |
| Sub Cost Centre | `po_prl.SUBCOSTCODE` | From `in_scc` table | Loaded via `ksp_GetSubCosts` |
| LPO Rate | `po_prl.LASTPORATE` | From last PO for item | Returned by `ksp_PR_GetItemInfo` |
| Drawing No | `po_prl.DRAWNO` | Optional, 25 chars max | In Advanced ▼ collapse |
| Cat No | `po_prl.CATNO` | Optional, 25 chars max | In Advanced ▼ collapse |
| Machine | `po_prl.MACHINENO` | Optional | In main entry form Row 3 |
| Place | Legacy VB6 field | Real field but not in current UI | Kept in DTO only |

### 7.3 Frontend Components (V2 page — current active)

**Page files:**
- `src/features/purchase-requisition/pages/PurchaseRequisitionV2Page.tsx` — New PR
- `src/features/purchase-requisition/pages/PurchaseRequisitionEditPage.tsx` — Edit PR
- `src/features/purchase-requisition/pages/PurchaseRequisitionListPage.tsx` — PR List

**V2 Component set (`components/v2/`):**
- `PRHeaderCards.tsx` — Header form (PR Date, Department, Requested By, Order Type, Section, Ref No)
- `PRLineItemsTable.tsx` — Item entry form + AG Grid + Rate History modal + Advanced drawer
- `PRActionBar.tsx` — Submit/Save action bar with workflow steps progress

**List component set (`components/pr-list/`):**
- `PRDataTable.tsx` — AG Grid list with View/Edit/Download/Delete actions
- `PRFilterBar.tsx` — Inline single-row filter (PR No, Date Range, Dept, Requested By, Status, Search)
- `PRViewModal.tsx` — Read-only detail modal with Descriptions + line items Table
- `prListConfig.ts` — STATUS_TAG, STATUS_COLORS, filter options

### 7.4 PRHeaderCards — Current Form Layout

```
Row 1: PR Date (md=12)     | Department (md=12)
Row 2: Requested By (md=12)| Order Type (md=12)   [E/O/U only]
Row 3: Section (md=12)     | Reference No (md=12)
```
- PR No badge (clickable, shows plain number e.g. `376`) — top-right corner, only when `savedPrNo` exists
- `orderTypeOptions = typeOptions.filter(o => ['E','O','U'].includes(o.value))`
- Removed props: `purTypeFlgEnabled` (removed entirely from all callers)

### 7.5 PRLineItemsTable — Entry Form Layout

```
Row 1: Item Code (md=14)         | Qty (md=10)
Badge row (after item select):   UOM | Stock (red/green) | Last Rate ₹ | PO Date
Row 2: Unit Price ₹ + History btn| Required Date + Days quick-fill
Row 3: Machine (md=8)            | Sub Cost Centre (md=10) | Sample checkbox (md=6)
Advanced ▼ (Collapse ghost):     Drawing No | Cat No | Remarks
Action row (right-aligned):      [Cancel] [Update Row] OR [+ Add to List]
```

**Key state:**
- `itemMeta` — `{ itemName, uom, currentStock }` — set on item select from lookup
- `lpoMeta` — `{ lastPoRate, lastPoDate, lastPoSupplierCode, lastPoSupplierName }` — set from `getItemInfo` API response
- Both spread into grid row on Add: `{ ...emptyRow(), ...(itemMeta ?? {}), ...(lpoMeta ?? {}) }`

### 7.6 AG Grid (Items Grid) — Column Order

`#` | Item Code | Description | Last Rate | PO Date | Supplier Code | Supplier Name | Qty | UOM | Unit Price | Total | Actions (pinned right)

- `onFirstDataRendered={(e) => e.api.autoSizeAllColumns(false)}` — auto-size, NOT `sizeColumnsToFit()`
- Editing row highlighted with blue outline (`.pr-row--editing` class)
- Flash animation on Total cell on rate change

### 7.7 Workflow Steps (PRActionBar)

`Draft → Submitted → Approved → Converted`

Status enum values: `OPEN`, `SUBMITTED`, `APPROVED`, `CONVERTED`, `CANCELLED`, `REJECTED`

### 7.8 Validation Rules

| Rule | Behaviour |
|---|---|
| Duplicate item | `ItemCode\|MachineNo` composite key check — blocks duplicate lines |
| Min Level | `QtyRequired < IN_ITEM.MINLEVEL` → non-blocking warning in `warnings[]` array |
| Budget Balance | Configurable via `preCheckResult.budgetValidationEnabled`; shows balance Tag in header |
| Pending Indent | Configurable warning; `ksp_PR_PendingIndentCheck` |
| Pending PR | Configurable warning; `ksp_PR_PendingPRCheck` |

### 7.9 Reports

**PDF** (`PurchaseRequisitionQuestDocument.cs`):
- A4 Landscape, Calibri font, 12-column table
- Merged "Previous Purchase Details" sub-header
- Machine sub-rows per line
- Signature footer (dynamic Requested By from SP, Created By in header)
- 0m fallback for blank App Cost

**Excel** (`BuildDatewiseExcel`):
- 13 columns (LastCol=13): PR No, Item Code, Item Name (merged C:F), Unit, Dept (merged H:I), Req Qty, Ordered Qty, Received Qty, Status

---

## 8. Critical Rules — Never Violate

### Database
- **Tables are live** — never generate `CREATE TABLE` statements as deliverables
- **SPs only** — all data access via parameterised stored procedures; no raw SQL, no EF
- **merged.sql must stay in sync** — every SP add/change in same session must also update `merged.sql`
- **Deploy via merged.sql** in SSMS — never run individual SP files in production
- Use `CREATE OR ALTER PROCEDURE` — never `DROP + CREATE`

### Backend
- Never expose domain entities in API responses — always DTOs
- Validate inputs via DataAnnotations on DTOs
- Use async/await throughout
- API response: `ApiResponse<T>` with optional `Warnings: IReadOnlyList<string>?`

### Frontend
- Strict TypeScript — 0 errors enforced after every change
- Currency: always `₹`, locale `en-IN` — RM/USD/en-MY are wrong
- `reqName` stores employee code (number), not name — look up `eName` only for display
- `iType` options: filter to E/O/U only (Emergency, Ordinary, Urgent)
- AG Grid: use `autoSizeAllColumns(false)` on `onFirstDataRendered` — never `sizeColumnsToFit()`

### Reporting
- PDF prints → QuestPDF only
- Excel/CSV exports → EPPlus only
- Do not introduce FastReports

---

## 9. Deployment

| Component | URL | IIS Pool | Physical Path |
|---|---|---|---|
| Frontend | `http://172.16.16.40:3000` | `SpinriseWeb` | `E:\Abinandan\SPINRISE\Server\spinrise-web` |
| Backend API | `http://172.16.16.40:5001` | `SpinriseAPI` | `E:\Abinandan\SPINRISE\Server\Spinrise.API` |
| Database | `172.16.16.52\sql2016` | — | DB: `SpinRiseSaranya` |

**Backend deploy sequence** (DLL lock — must stop pool first):
```
1. appcmd stop apppool /apppool.name:"SpinriseAPI"
2. dotnet publish Spinrise.API\Spinrise.API.csproj -c Release -o "E:\Abinandan\SPINRISE\Server\Spinrise.API"
3. appcmd start apppool /apppool.name:"SpinriseAPI"
```

**Frontend deploy sequence** (build first, then swap):
```
1. npm run build   (in spinrise-web\)
2. appcmd stop apppool /apppool.name:"SpinriseWeb"
3. robocopy dist "E:\Abinandan\SPINRISE\Server\spinrise-web" /MIR /NFL /NDL
4. appcmd start apppool /apppool.name:"SpinriseWeb"
```

**Database deploy** — open `merged.sql` in SSMS, connect to `172.16.16.52\sql2016 → SpinRiseSaranya`, F5.

**Publish batch**: `D:\Spinrise\publish.bat` — automates all 3 steps above.

---

## 10. Session Logging

After every session, write a log to: `D:\Spinrise\.claude\logs\<YYYY-MM-DD>_session_<topic>.md`
Update index: `D:\Spinrise\.claude\logs\README.md`

Session logs are in the git repo under `.claude/logs/`.

---

## 11. Key Documentation Locations

| Doc | Path |
|---|---|
| FSD v2.3 (CEO approved) | `Docs\M01\M01 FSD Purchase Requisition - Approved\M01_FSD_PurchaseRequisition_v2.3_CEO_Approved.md` |
| PR Master Planner | `Docs\M01\M01_PR_Master_Planner.md` |
| Revision 01 | `Docs\M01\Revision\revision 01.md` |
| Revision 02 | `Docs\M01\Revision\revision 02.md` |
| Revision 01 Prompts | `Docs\M01\Revision\Revision_01_Prompts.md` |
| Revision 02 Prompts | `Docs\M01\Revision\Revision_02_Prompts.md` |
| Bug Fix Prompts | `Docs\M01\24-04-2026\Bug_Fix_Prompts.md` |
| VB6 Reference | `Docs\M01\VB6 Reference\tmpPoindent.frm` |
| Backend Project Guide | `Development\Backend\PROJECT_GUIDE.md` |
| Dev Workflow Guide | `Development\Backend\DEVELOPMENT_WORKFLOW_GUIDE.md` |
| Frontend Guide | `Development\spinrise-web\Guide.md` |
| Session Logs | `.claude\logs\` |

---

## 12. Current Status (as of 2026-04-25)

### M01 Purchase Requisition — COMPLETE (Phase 1)

All CEO review items resolved (2026-04-24):

| Change Set | Items | Status |
|---|---|---|
| P01–P25 batch | Currency RM→₹, Workflow "Converted", entry form fields, approxCost, sub-cost, budget, per-line delete | ✅ Done |
| DTO field lengths | Corrected to match `po_prh`/`po_prl` DB schema | ✅ Done |
| Bug fixes B01–B07 | empNo code, PO Group dropdown, refNo uppercase, Advanced Options, Place removed, Download, Edit FY dates | ✅ Done |
| Revision 01 (R01–R12) | Header reorganised; entry form redesigned; column reorder; Advanced collapse | ✅ Done |
| Revision 02 (H1–H3/E1–E7/G1–G2/S1) | PR# → Tag badge; Item Code+Qty row; lpoMeta badges; inline Add; autoSizeAllColumns | ✅ Done |
| F01–F03 features | Download button, Edit FY date range, column auto-width | ✅ Done |

### CEO Screenshot Review (2026-04-24 — T. Mani)

All 8 review points confirmed complete:
1. ₹ currency globally ✅
2. Machine No in entry form ✅
3. Current Stock badge on item select ✅
4. Previous Purchase Rate + Date badge on item select ✅
5. Drawing No + Cat No in Advanced ▼ ✅
6. Workflow step "Converted" ✅
7. Sub-Cost 0 → "—" in View Modal ✅
8. Draw No column in View Modal ✅

**One minor open item**: Items column header "IT..." potential truncation in PR List — `autoSizeAllColumns` is in place; needs browser verification.

### Next Steps (Pending)

- Verify "Items" column header rendering in PR List (browser check)
- M02 / next module — to be determined by user/CEO
- Phase 1 remaining modules: Inventory, Finance, HR

---

## 13. CORS Configuration

`appsettings.json` → `Cors:AllowedOrigins`:
- `http://172.16.16.40:3000` (production frontend)
- `http://localhost:5173` (dev Vite)
- `http://localhost:3000`

Edit `appsettings.Development.json` for local dev origins — this file is NOT published (local only).
The base `appsettings.json` is what gets deployed; keep production origins in there.

---

## 14. Lookup Store (Zustand — `useLookupStore`)

Loaded on app mount in `PurchaseRequisitionV2Page` and `PurchaseRequisitionListPage`:

| Key | API | SP |
|---|---|---|
| `departments` | `lookupApi.getDepartments()` | `ksp_GetDepartments` |
| `employees` | `lookupApi.getEmployees()` | `ksp_GetEmployees` |
| `poTypes` | `lookupApi.getPOTypes()` | `ksp_GetPOType` |
| `machines` | `lookupApi.getMachines()` | `ksp_GetMachines` |
| `subCosts` | `lookupApi.getSubCosts()` | `ksp_GetSubCosts` |

Item search is **not** in the store — it's on-demand debounced search via `lookupApi.searchItems(q, depCode)` → `ksp_GetItemsEnriched`.
