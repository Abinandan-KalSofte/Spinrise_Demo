# M01 — Purchase Requisition · Master Planner
**Module:** M01 Purchase Requisition | **FSD:** v2.3 | **CEO Approved:** 17 April 2026
**Last Updated:** 2026-04-24 | **Developer:** Abinandan N

---

## FSD Approval Chain

| Stage | Reviewer | Role | Status | Date |
|---|---|---|---|---|
| Stage 0 | Mariyaiya.M / Saikumar.R | Screen Readiness + TL-Dev | COMPLETED | 04-Apr-2026 |
| Stage 1 | Saikumar.R (Sasi) | TL-Dev Sign-Off | SIGNED OFF | 04-Apr-2026 |
| Stage 2 | MuthuVel | Sr. IST Sign-Off | SIGNED OFF | 13-Apr-2026 |
| Stage 3 | Palanivel | TL-IST Sign-Off | APPROVED | 17-Apr-2026 |
| Stage 4 | P.B. Saravanan | PM Sign-Off | APPROVED | 17-Apr-2026 |
| **CEO** | **T. Mani** | **CEO Approval** | **APPROVED — v2.3** | **17-Apr-2026** |

---

## Overall Progress

> CEO assessment (2026-04-24): *"The form is approximately 65 to 70 percent complete against FSD requirements."*

```
Backend (API + SPs):    ████████████████░░░░  ~80% complete
Frontend UI:            █████████████░░░░░░░  ~65% complete
Print / Reports:        ████████████████████  100% complete (CEO confirmed 2026-04-21)
```

---

## Section 1 — COMPLETED WORK

### 1.1 FSD & Documentation
- [x] FSD v2.3 authored and approved through full 5-stage review chain
- [x] Critical Analysis of legacy `tmpPoindent.frm` (VB6, 7,467 code lines)
- [x] 28 SPINRISE migration recommendations documented in FSD
- [x] 20 IST review questions resolved in FSD
- [x] Gap Analysis document (`PR_Gap_Analysis.md`) — 25 gaps catalogued
- [x] Implementation Planner (`PR_Implementation_Planner.md`) — 10 sessions planned

### 1.2 Database / Stored Procedures (34 total in merged.sql)

| Category | Stored Procedures |
|---|---|
| Auth | `ksp_Auth_ValidateUser` |
| Lookup | `ksp_GetDepartments`, `ksp_GetDivisionDetails`, `ksp_GetEmployees`, `ksp_GetItems`, `ksp_GetMachines`, `ksp_GetPOType`, `ksp_GetSubCosts`, `ksp_Stock_GetCurrentStock` |
| PR Config + Checks | `ksp_PR_PreChecks`, `ksp_PR_DepartmentExists`, `ksp_PR_ItemExists`, `ksp_PR_CostCentreExists`, `ksp_PR_BudgetGroupExists`, `ksp_PR_MachineExists`, `ksp_PR_DeleteReasonExists`, `ksp_PR_CategoryExists`, `ksp_PR_IsLinkedToEnquiry` |
| PR Read | `ksp_PR_GetMaxPrDate`, `ksp_PR_GenerateNumber`, `ksp_PR_GetAll`, `ksp_PR_GetPaginated`, `ksp_PR_GetById`, `ksp_PR_GetDeleteReasons`, `ksp_PR_GetItemInfo`, `ksp_PR_GetItemMinLevel`, `ksp_PR_PendingIndentCheck`, `ksp_PR_PendingPRCheck` |
| PR Write | `ksp_PR_Insert`, `ksp_PR_InsertLine`, `ksp_PR_Update`, `ksp_PR_SoftDeleteLines`, `ksp_PR_Delete`, `ksp_PR_DeleteLine`, `ksp_PR_InsertAuditLog` |
| Reports | `ksp_PO_RequisitionReport_DateWise` |

### 1.3 Backend API

| Layer | Status |
|---|---|
| Domain entity `PurchaseRequisitionHeader` + `PurchaseRequisitionLine` | Done |
| `IPurchaseRequisitionRepository` + `PurchaseRequisitionRepository` (Dapper) | Done |
| `IPurchaseRequisitionService` + `PurchaseRequisitionService` (validations V1–V29) | Done |
| `PurchaseRequisitionController` (CRUD endpoints) | Done |
| DTOs: `CreatePRHeaderDto`, `CreatePRLineDto`, `PRHeaderResponseDto`, `PRLineResponseDto` | Done |
| Mappings: `PRMappings.cs` | Done |
| `PRMessages.cs` — full error message catalogue | Done |
| Validation: IST-15 composite duplicate check (`ItemCode|MachineNo`) | Done |
| Validation: MINLEVEL non-blocking warning | Done |
| `ApiResponse.Warnings[]` pattern for non-blocking warnings | Done |

### 1.4 Frontend UI

| Feature | Status |
|---|---|
| PR List page — Zoho-style layout (filter bar, full-width table card) | Done |
| PR filter bar — PR No, Date Range, Dept, Requested By, Status, Search | Done |
| PR delete action — soft delete with reason dropdown + confirmation modal | Done |
| Dark mode — CSS variable system, light/dark toggle, persisted via Zustand | Done |
| PR Create/Edit flow (V2 components — `PRHeaderCards`, `PRLineItemsTable`) | Done (partial) |
| `PRDataTable.tsx` with Zoho density styling | Done |
| Datewise Report button — Excel download via EPPlus | Done |

### 1.5 Print / Reports

| Report | Status |
|---|---|
| **PR PDF (QuestPDF)** — A4 Landscape, Calibri, 12-column table | **Production-ready — CEO confirmed 2026-04-21** |
| Created By field (PO_PRH.userId) | Done |
| Requested By footer — dynamic from record | Done |
| ApproxCost fallback (Rate × Qty when ApproxCost null) | Done |
| Drawing No + Catalogue No sub-rows per line | Done |
| Previous Purchase Date populated | Done |
| Multi-page pagination (7 items across 2 pages tested) | Done |
| Approval/Signatory footer (Approved By, Approved Date, Auth Signatory) | Done |
| **Datewise Excel (EPPlus)** — 13-column, merged headers | Done |

### 1.6 Infrastructure

| Item | Status |
|---|---|
| IIS deployment — API at `172.16.16.40:5001`, Web at `172.16.16.40:3000` | Done |
| CORS configuration — multi-origin, dev appsettings | Done |
| LEFT JOIN fix on `ksp_PR_GetById` (pr_emp/in_dep) | Done |
| `@SearchText` filter in `ksp_PR_GetPaginated` | Done |
| `IsDeleted` flag per row in paginated response | Done |

---

## Section 2 — PENDING: IMMEDIATE (CEO Review — 2026-04-24)

> CEO email dated 2026-04-24 05:22 IST reviewed 3 UI screenshots.
> **Sasi must confirm revised completion date to CEO by end of day 2026-04-24.**

### CRITICAL — Fix Before Any Further Testing

| # | Gap | Scope |
|---|---|---|
| **C1** | **Currency RM → ₹ (INR) — fix GLOBALLY** | All forms, grids, modals, print templates. Change every `RM` / `MYR` reference to `₹` / `INR`. This is a product quality issue. |

**Files to search and fix:**
- `src/features/purchase-requisition/**` — all `.tsx`, `.ts`, `.css`
- `src/shared/**` — any currency utility
- `PurchaseRequisitionQuestDocument.cs` — confirm `₹` symbol in print (already likely correct)
- Search globally for `RM`, `MYR`, `Ringgit`

---

### HIGH — Required per Approved FSD (4 items)

| # | Gap | FSD Ref | Scope |
|---|---|---|---|
| **H1** | Drawing No + Catalogue No missing from Item Entry form | FSD Sec 12 Rec 28 | Add `DrawNo` + `CatNo` input fields in `PRLineItemsTable` item entry section. Both fields present in View modal and print, but absent from entry. |
| **H2** | Machine No missing from Item Entry form | FSD Sec 4.2 | Add `MachineNo` input to item entry section. Present in View modal and print only. |
| **H3** | Current Stock Quantity not shown on item selection | FSD Sec 5 | On item select → call `getItemInfo()` → display `currentStock` as read-only badge next to item. |
| **H4** | Previous Purchase Rate/Date/Supplier not auto-populating on item selection | FSD Sec 5.2 / IST | On item select → `getItemInfo()` → auto-fill `rate` field + show Last PO Rate, Last PO Date as read-only info. |

> Note: H3 and H4 are directly addressed by Gap Analysis G11 — `getItemInfo` never called on item select.

---

### MEDIUM — Polish Before Demo

| # | Gap | Fix |
|---|---|---|
| **M1** | "IT..." truncated column header in list view | Expand column width or change label to "Item Count" / "Items" |
| **M2** | Drawing No (DRAWNO) column missing from View modal grid | Add DRAWNO column alongside existing CAT column in View modal |
| **M3** | Workflow bar Step 4 label "PO Created" → should be "Converted" | Change label text in workflow bar component |
| **M4** | SUB-COST values showing 0 in View modal | Wire ApproxCost fallback logic (Rate × Qty when null) to modal view — same logic already working in print |

### MINOR

| # | Gap | Fix |
|---|---|---|
| **N1** | Item descriptions truncated in View modal | Add Ant Design `Tooltip` on hover showing full description |
| **N2** | Cost Centre shows "sad" (test data) | Clear test data before any demo — not a code defect |

---

## Section 3 — PENDING: Gap Analysis (25 Gaps)

> Source: `PR_Gap_Analysis.md` dated 2026-04-22

### P1 — Critical (Silent failures, broken workflow)

| Gap | Title | Key Fix |
|---|---|---|
| **G11** | `getItemInfo` never called on item select | Call `purchaseRequisitionApi.getItemInfo()` in `PRLineItemsTable.handleItemSelect()`. Show pending indent/PR warnings. Pre-fill rate. *(Also covers H3/H4 above)* |
| **G12** | `requireRequesterName` flag not enforced in UI | Add `requireRequesterName` prop to `PRHeaderCards`; apply conditional required rule to "Requested By" field |
| **G13** | `requireRefNo` flag not enforced in UI | Same pattern — `requireRefNo` prop → conditional required on "Reference No." |
| **G14** | `pendingPoDetailsEnabled` — Order Type not required in UI | `pendingPoDetailsEnabled` prop → conditional required on Order Type Select |
| **G19** | "Submit for Approval" = "Save Draft" — no distinction | Add `submitMode: 'DRAFT' | 'SUBMIT'` to `doSave()`. Backend: set `PrStatus = 'PENDING'` on submit. |
| **G20** | Edit page uses old V1 components | Migrate `PurchaseRequisitionEditPage` to use `PRHeaderCards` + `PRLineItemsTable` (V2 components) |

### P2 — High (Fields in payload/DTO but no UI)

| Gap | Title | Key Fix |
|---|---|---|
| **G05** | `isSample` checkbox absent from entry form | Add Checkbox "Samples?" to `PRLineItemsTable` entry form |
| **G06** | `place` field absent from entry form | Add Input "Place / Delivery Location" to entry form |
| **G07** | `approxCost` absent — auto-calculate instead | Auto-derive as `qty × rate` in `handleAddOrUpdate()` |
| **G08** | `subCostCode` absent from Advanced Drawer | Add Sub Cost Centre field to Advanced Drawer in `PRLineItemsTable` |
| **G10** | Approval status not displayed in V2 form | Add read-only approval section to `PRHeaderCards`; gate on `approvalStatusVisible` flag |
| **G15** | `backDateAllowed=false` not enforced by DatePicker | Update `disabledDate` logic in `PRHeaderCards` to check `backDateAllowed` flag |

### P3 — Medium (Missing fields, incomplete features)

| Gap | Title | Key Fix |
|---|---|---|
| **G01** | GIN No. field missing everywhere | Add `GinNo` to DTOs, SP params, and `PRHeaderCards` UI |
| **G03** | RequisitionType — write path missing | Add `RequisitionType` to `CreatePRHeaderDto`, `UpdatePRHeaderDto`, SP params, and `PRHeaderCards` Select |
| **G04** | Budget Balance not surfaced in UI | Show `BudgetBalance` read-only badge in `PRHeaderCards` when `budgetValidationEnabled=true`; warn when PR total exceeds balance |
| **G09** | Item Group not modelled anywhere | Add `itemGroup`/`itemGroupName` to `CreatePRLineDto`, `PRLineResponseDto`, SPs; add filter in item search when `itemGroupFilterEnabled=true` |
| **G21** | Line deletion for saved PRs not exposed in V2 | Add `savedPrNo` prop to `PRLineItemsTable`; call `deleteLine` API with reason for saved rows |

### P4 — Low (Edge-case flags, dead code)

| Gap | Title | Key Fix |
|---|---|---|
| **G02** | TC (Transaction Code) field missing | Add `Tc` to header DTOs and SP params |
| **G16** | `itemGroupFilterEnabled` — no group filter in search | Covered by G09 |
| **G17** | `approvalStatusVisible` flag unused | Covered by G10 |
| **G18** | `manualPrNumberEnabled` — no manual PR No input | Add editable PR No input in `PRHeaderCards` when flag is true; backend uniqueness check |
| **G22** | `SubCostRequired` validation is dead code | Activate SubCostCode validation in `ValidateCreateLinesAsync()` |

---

## Section 4 — PENDING: Implementation Sessions

> Source: `PR_Implementation_Planner.md` — 10 sessions, all pending

| Session | Title | Priority | Est. Time | Status |
|---|---|---|---|---|
| **S1** | Critical Status Fix + Partial Approval Block | CRITICAL | 3–4 hrs | PENDING |
| **S2** | Header Form — Missing Fields (ScopeCode, PoGroup, SaleOrder, SubCost) | HIGH | 2–3 hrs | PENDING |
| **S3** | Category Code — Full Stack (DTO → SP → Frontend) | HIGH | 4–5 hrs | PENDING |
| **S4** | Composite Duplicate Check + MINLEVEL Validation | HIGH | 2–3 hrs | PENDING |
| **S5** | FY Date Fix + Post-Save Reload | CRITICAL | 1–2 hrs | PENDING |
| **S6** | IType/Remarks Length Fix + DrawNo/CatNo DTOs | MEDIUM | 1–2 hrs | PENDING |
| **S7** | Approval Pipeline Display (Read-only Badge) | MEDIUM | 2–3 hrs | PENDING |
| **S8** | Pending Qty Before Item Selection | HIGH | 3–4 hrs | PENDING |
| **S9** | Item Purchase History API + Modal | HIGH | 3–4 hrs | PENDING |
| **S10** | Budget Balance Display | MEDIUM | 1–2 hrs | PENDING |

**Total estimate:** 22–32 hrs

---

## Section 5 — Recommended Execution Order

### WEEK 1 — Unblock CEO + Critical UI (2026-04-24 to 2026-04-27)

```
Day 1 (TODAY — 2026-04-24):
  C1  → Fix RM to ₹ globally (1–2 hrs)
  H1  → Add DrawNo + CatNo to item entry (1 hr) [also closes S6 partial]
  H2  → Add MachineNo to item entry (30 min)
  M1  → Fix truncated column header "IT..." (15 min)
  M3  → Change "PO Created" to "Converted" (10 min)
  N1  → Add tooltip on item descriptions (15 min)

Day 2:
  H3 + H4 + G11  → Call getItemInfo on item select; show stock; auto-fill rate;
                    show pending indent/PR warnings (3–4 hrs)
  M2  → Add DRAWNO column to View modal (30 min)
  M4  → Wire ApproxCost fallback to modal view (30 min)

Day 3:
  S5  → FY Date fix + post-save reload (1–2 hrs)
  S1  → Status fix + approval block (3–4 hrs)
  G12 + G13 + G14  → Config flags reflected in UI (2 hrs)
```

### WEEK 2 — Form Completeness + Workflow

```
Day 1:
  G19  → Save Draft vs Submit for Approval distinction
  G20  → Migrate Edit page to V2 components
  G05 + G06 + G07  → isSample, place, approxCost in entry form

Day 2:
  S2   → Header missing fields (ScopeCode, PoGroup, SaleOrder)
  S3   → Category Code full stack
  G08  → subCostCode in Advanced Drawer

Day 3:
  S7 + G10  → Approval pipeline display
  S10 + G04  → Budget balance display
```

### WEEK 3 — Lookup Enhancements + History

```
Day 1: S8 + G09  → Pending Qty before item selection + Item Group
Day 2: S9        → Item Purchase History API + Modal
Day 3: S4        → Composite duplicate + MINLEVEL (already done in backend — frontend wiring only)
       G21       → Per-line API deletion for saved PRs
       G01 + G03 + G02  → GIN No, RequisitionType, TC fields
```

---

## Section 6 — Summary Scorecard

| Area | Status | Notes |
|---|---|---|
| FSD Approval | ✅ Complete | CEO approved v2.3 on 17-Apr-2026 |
| Database / SPs | ✅ Complete (34 SPs) | All tables live; SP-only DB work |
| Backend CRUD API | ✅ ~80% Complete | Core create/read/update/delete done; a few DTO fields missing |
| PR Print (QuestPDF) | ✅ Production-Ready | CEO confirmed 2026-04-21; all 3 corrections applied |
| Datewise Excel (EPPlus) | ✅ Complete | 13-column export working |
| PR List Page | ✅ Complete | Zoho-style layout, filter bar, dark mode |
| PR Create Form | 🔶 ~65% Complete | Missing: DrawNo/CatNo/MachineNo in entry; currency RM→₹; getItemInfo not called |
| PR Edit Page | 🔴 Incomplete | Still uses V1 components (G20) |
| Submit for Approval | 🔴 Missing | Save Draft = Submit — no status distinction (G19) |
| Config Flags in UI | 🔴 Missing | requireRequesterName, requireRefNo, pendingPoDetailsEnabled not enforced |
| Approval Status Display | 🔴 Missing | No approval section in V2 form (G10) |
| Item Group Support | 🔴 Missing | Not modelled anywhere (G09) |
| Budget Balance Display | 🔴 Missing | In DTO but not rendered (G04) |
| Currency (INR ₹) | 🔴 Critical | Currently showing RM — CEO flagged 2026-04-24 |

---

## Change Log

| Date | What Changed | Files Modified | Session |
|---|---|---|---|
| 2026-04-21 | PR Print: Created By, Requested By, ApproxCost fallback; IST-15 composite duplicate; MINLEVEL warning; Zoho list redesign; dark mode; delete action | Multiple backend + frontend | PRPrint_Fix |
| 2026-04-22 | Gap Analysis produced (25 gaps); Implementation Planner (10 sessions) | Docs | Analysis |
| 2026-04-24 | CEO UI review received — 1 Critical, 4 High, 4 Medium, 2 Minor gaps identified | Email | CEO_UIReview |

---

*Reference: `Docs/M01/M01 FSD Purchase Requisition - Approved/M01_FSD_PurchaseRequisition_v2.3_CEO_Approved.docx`*
*Gap detail: `Docs/M01/PR_Gap_Analysis.md`*
*Session plan: `Docs/M01/M01 FSD Purchase Requisition - Approved/PR_Implementation_Planner.md`*
