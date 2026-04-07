# Purchase Requisition — CRUD Implementation Plan
**Spinrise ERP · ASP.NET Core 8 + React 18 + TypeScript**
**Prepared:** April 2026 | **Source:** VB6 `tmpPOINDENT.frm` Critical Analysis

> **Context:** This is a **migration project**. All database tables (`po_prh`, `po_prl`, `in_item`, `in_dep`, `in_scc`, `in_cc`, `in_bgrp`, `mm_macmas`, `in_grp`, `pr_emp`, `po_type`, `po_doc_para`, `po_enql`, `po_txndelreason`, etc.) already exist and are live with data. **Database work = stored procedures only.** No table scripts are needed.

---

## 1. Current Implementation Status

### ✅ Done — Backend
| Layer | Status | Notes |
|---|---|---|
| All CRUD stored procedures | ✅ Done | In `scrap/02 Stored Procedures/` — need to be run against DB |
| Domain entities | ✅ Done | `PurchaseRequisitionHeader`, `PurchaseRequisitionLine` |
| All DTOs (Create/Update/Response) | ✅ Done | In `Spinrise.Application/.../DTOs/` |
| `PurchaseRequisitionService` | ✅ Done | Full business logic, validation, financial year PR# |
| `PurchaseRequisitionRepository` | ✅ Done | All Dapper calls |
| `PurchaseRequisitionController` | ✅ Done | All 6 endpoints |

### ✅ Done — Frontend (UI shell only — no API wiring)
| Component | Status | Notes |
|---|---|---|
| `PRHeaderForm.tsx` | ✅ Done | Department + Section load from API |
| `PRItemEntryForm.tsx` | ✅ Done | UI complete; items from dummy data |
| `PRItemsGrid.tsx` | ✅ Done | UI complete; in-memory state only |
| `PRFooterActions.tsx` | ✅ Done | Save/Cancel buttons |
| `PREditItemModal.tsx` | ✅ Done | In-memory edit |
| `PurchaseRequisitionPage.tsx` | ✅ Done | Wires UI; **save is a fake setTimeout** |

### ❌ Not Done — Critical Gaps
| Area | Gap |
|---|---|
| DB | SP scripts in `scrap/` — not yet run against the live database |
| DB | Verify `po_prh` has `PoGroupCode` / `ScopeCode` columns; if not, add them via `ALTER TABLE` |
| DB | SPs may be missing `@PoGroupCode`, `@ScopeCode` params (check against live schema) |
| Backend | `CreatePRHeaderDto` / `UpdatePRHeaderDto` missing `PoGroupCode`, `ScopeCode` |
| Backend | `Constants.cs` missing SP constants for `PreChecks`, `GenerateNumber`, `SoftDeleteLines`, `InsertLine` |
| Backend | `createdBy` hardcoded as `"SYSTEM"` — must come from JWT claims |
| Backend | No lookup endpoints: items, requesters, PO groups, scopes, item groups, cost centres, budget groups, machines |
| Frontend | No `purchaseRequisitionService.ts` — zero API calls wired |
| Frontend | No `usePurchaseRequisition` hooks |
| Frontend | No PR list page |
| Frontend | No edit mode (load existing PR into form) |
| Frontend | All dropdown lookups (requesters, PO groups, scopes, item groups, cost centres, budget groups, items, machines) still use dummy data |

---

## 2. Database — Stored Procedures Only

> Tables already exist. Only SPs need to be created/run.

### 2.1 Core CRUD SPs

All scripts are in `scrap/02 Stored Procedures/`. Copy to `Spinrise.DBScripts/Scripts/02 Stored Procedures/` and run against the live DB in this order:

| # | Script | SP Name(s) | Notes |
|---|---|---|---|
| 01 | `01_usp_PR_GetAll.sql` | `usp_PR_GetAll` | Ready to run |
| 02 | `02_usp_PR_GetById.sql` | `usp_PR_GetById` | Ready — verify column list matches live `po_prh` |
| 03 | `03_usp_PR_Insert.sql` | `usp_PR_Insert`, `usp_PR_InsertLine` | Add `@PoGroupCode`, `@ScopeCode` if columns exist on live table |
| 04 | `04_usp_PR_Update.sql` | `usp_PR_Update`, `usp_PR_SoftDeleteLines` | Add `@PoGroupCode`, `@ScopeCode` if columns exist on live table |
| 05 | `05_usp_PR_Delete.sql` | `usp_PR_Delete` | Soft delete (IsDeleted = 1) — verify column exists |
| 06 | `06_usp_PR_DeleteLine.sql` | `usp_PR_DeleteLine` | Ready to run |
| 07 | `07_usp_PR_PreChecks.sql` | `usp_PR_PreChecks` | Checks `in_item`, `in_dep`, `po_doc_para` — all live tables |
| 08 | `08_usp_PR_GenerateNumber.sql` | `usp_PR_GenerateNumber` | Financial year sequential PR number |

### 2.2 Schema Verification Before Running Insert/Update SPs

Before running SPs 03 & 04, confirm the live `po_prh` table has these columns (from VB6 form, may or may not have been migrated):

```sql
-- Run this to check:
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'po_prh'
  AND COLUMN_NAME IN ('PoGroupCode', 'ScopeCode', 'IsDeleted');
```

- If `PoGroupCode` / `ScopeCode` **exist** → include them in the SPs
- If they **don't exist** → run `ALTER TABLE dbo.po_prh ADD PoGroupCode VARCHAR(20) NULL, ScopeCode VARCHAR(10) NULL;` first
- If `IsDeleted` **doesn't exist** → run `ALTER TABLE dbo.po_prh ADD IsDeleted BIT NOT NULL DEFAULT(0);` and same for `po_prl`

### 2.3 Lookup SPs (for dropdown endpoints — P1)

One SP per lookup. All query live master tables. Follow the pattern of `usp_GetDepartmentsByDivision`.

| SP Name | Source Table | Parameters | Returns |
|---|---|---|---|
| `usp_GetItemsByDivision` | `in_item` | `@DivCode`, `@SearchTerm` | `ItemCode`, `ItemName`, `Uom`, `Rate`, `CurrentStock` |
| `usp_GetRequestersByDivision` | `pr_emp` | `@DivCode` | `EmpCode`, `EmpName` |
| `usp_GetPoGroupsByDivision` | `po_type` | `@DivCode` | `PoGrpCode`, `PoGrpName` |
| `usp_GetScopesByDivision` | scope master | `@DivCode` | `ScopeCode`, `ScopeName` |
| `usp_GetItemGroupsByDivision` | `in_grp` | `@DivCode` | `GrpCode`, `GrpName` |
| `usp_GetCostCentresByDept` | `in_cc` | `@DivCode`, `@DepCode` | `CcCode`, `CcName` |
| `usp_GetBudgetGroupsByDivision` | `in_bgrp` | `@DivCode` | `BgrpCode`, `BgrpName` |
| `usp_GetMachinesByDept` | `mm_macmas` | `@DivCode`, `@DepCode` | `MacCode`, `MacModel`, `MacDesc` |
| `usp_GetItemStock` | Uses `SP_GetStock` logic | `@DivCode`, `@ItemCode` | `CurrentStock` |

> **Note on scope master:** Confirm the actual table name from the live DB — VB6 uses a scope code lookup but the table name is not explicitly visible in the form code.

### 2.4 Feature Flag Seed Data

If `feature_flags` table exists on the live DB, insert default flags per division:

```sql
INSERT INTO dbo.feature_flags (DivCode, FeatureKey, IsEnabled) VALUES
('01', 'backdate_allowed',           0),
('01', 'budget_validation_enabled',  0),
('01', 'pending_indent_check_enabled', 0);
```

---

## 3. Backend — Gaps to Close

### 3.1 Fix `Constants.cs` — Missing SP Constants

**File:** `Spinrise.Shared/Constants.cs`

Add to `StoredProcedures.PurchaseRequisition`:
```csharp
public const string PreChecks       = "usp_PR_PreChecks";
public const string GenerateNumber  = "usp_PR_GenerateNumber";
public const string SoftDeleteLines = "usp_PR_SoftDeleteLines";
public const string InsertLine      = "usp_PR_InsertLine";
```

Then replace the 4 hardcoded SP name strings in `PurchaseRequisitionRepository.cs` with these constants.

### 3.2 Add `PoGroupCode` / `ScopeCode` to DTOs and Domain Entity

#### `PurchaseRequisitionHeader.cs` (Domain)
```csharp
public string? PoGroupCode { get; set; }
public string? ScopeCode   { get; set; }
```

#### `CreatePRHeaderDto.cs`
```csharp
[StringLength(20)]
public string? PoGroupCode { get; set; }

[StringLength(10)]
public string? ScopeCode { get; set; }
```

#### `UpdatePRHeaderDto.cs` — same additions

#### `PRHeaderResponseDto.cs` — same additions

#### `PurchaseRequisitionService.cs`
Pass `PoGroupCode` and `ScopeCode` through `dto.ToEntity(...)` → `InsertHeaderAsync` / `UpdateHeaderAsync`.

#### `PurchaseRequisitionRepository.cs` — `InsertHeaderAsync` / `UpdateHeaderAsync`
Add `header.PoGroupCode` and `header.ScopeCode` to the anonymous parameter objects.

### 3.3 Replace Hardcoded `"SYSTEM"` with JWT Claims

**File:** `Spinrise.API/Areas/Purchase/Controllers/PurchaseRequisitionController.cs`

```csharp
// Replace:
var createdBy = "SYSTEM";
// With:
var createdBy = User.FindFirst(JwtRegisteredClaimNames.Email)?.Value ?? "SYSTEM";
```

Apply the same for `modifiedBy` in the Update action.

### 3.4 Lookup Endpoints Required

Each follows the same full-stack pattern as `DepartmentController` (SP → Repository → Service → Controller → DI).

| Endpoint | Route | SP | Priority |
|---|---|---|---|
| Items | `GET /api/v1/items/active?divCode=&searchTerm=` | `usp_GetItemsByDivision` | P1 |
| Requesters | `GET /api/v1/requesters/active?divCode=` | `usp_GetRequestersByDivision` | P1 |
| PO Groups | `GET /api/v1/po-groups/active?divCode=` | `usp_GetPoGroupsByDivision` | P1 |
| Scopes | `GET /api/v1/scopes/active?divCode=` | `usp_GetScopesByDivision` | P1 |
| Item Groups | `GET /api/v1/item-groups/active?divCode=` | `usp_GetItemGroupsByDivision` | P1 |
| Cost Centres | `GET /api/v1/cost-centres/active?divCode=&depCode=` | `usp_GetCostCentresByDept` | P1 |
| Budget Groups | `GET /api/v1/budget-groups/active?divCode=` | `usp_GetBudgetGroupsByDivision` | P1 |
| Machines | `GET /api/v1/machines/active?divCode=&depCode=` | `usp_GetMachinesByDept` | P2 |
| Item Stock | `GET /api/v1/items/{itemCode}/stock?divCode=` | `usp_GetItemStock` | P2 |

**Files per lookup endpoint** (8 files each, mirror Department pattern):
```
Spinrise.DBScripts/Scripts/02 Stored Procedures/  → SP script
Spinrise.Application/Areas/.../DTOs/              → {Name}ResponseDto.cs
Spinrise.Application/Areas/.../Interfaces/        → I{Name}Repository.cs + I{Name}Service.cs
Spinrise.Application/Areas/.../Services/          → {Name}Service.cs
Spinrise.Infrastructure/Areas/.../               → {Name}Repository.cs
Spinrise.API/Areas/.../Controllers/              → {Name}Controller.cs
Spinrise.Shared/Constants.cs                     → route + SP constants
Spinrise.API/Program.cs                          → DI registration
```

---

## 4. Frontend — Gaps to Close

### 4.1 PR API Service

**Create:** `src/features/purchase-requisition/services/purchaseRequisitionService.ts`

```typescript
// Methods required:
getAll(divCode, filters?)          // GET  /api/v1/purchase-requisitions
getById(divCode, prNo)             // GET  /api/v1/purchase-requisitions/{prNo}?divCode=
runPreChecks(divCode)              // GET  /api/v1/purchase-requisitions/pre-checks?divCode=
create(dto: CreatePRDto)           // POST /api/v1/purchase-requisitions
update(prNo, dto: UpdatePRDto)     // PUT  /api/v1/purchase-requisitions/{prNo}
deletePR(divCode, prNo)            // DELETE /api/v1/purchase-requisitions/{prNo}?divCode=
deleteLine(divCode, prNo, lineNo)  // DELETE /api/v1/purchase-requisitions/{prNo}/lines/{lineNo}?divCode=
```

TypeScript interfaces to add to `types.ts`:
```typescript
CreatePRDto       // mirrors CreatePRHeaderDto
UpdatePRDto       // mirrors UpdatePRHeaderDto
PRSummaryDto      // mirrors PRSummaryResponseDto
PRDetailDto       // mirrors PRHeaderResponseDto + lines[]
PRLineDto         // mirrors PRLineResponseDto
CreatePRLineDto   // mirrors CreatePRLineDto
```

### 4.2 React Hooks

**Create:** `src/features/purchase-requisition/hooks/usePurchaseRequisitions.ts`
- Calls `getAll()` with filter params (divCode, dateRange, depCode, status)
- Returns `{ prs, loading, error, refetch }`

**Create:** `src/features/purchase-requisition/hooks/usePurchaseRequisition.ts`
- Param: `divCode, prNo | null` — null signals create mode
- Returns `{ pr, loading, error }` — `pr` is null when creating

### 4.3 PR List Page

**Create:** `src/features/purchase-requisition/pages/PRListPage.tsx`

| Feature | Detail |
|---|---|
| Filter bar | Date range picker, Dept Select (API), Status Select, PR No. text search |
| Results table | PR No. · PR Date · Dept · Requester · Status badge · Line Count · Created By · Actions |
| Status badge | DRAFT=gray, FIRST_APPROVED=blue, FINAL_APPROVED=green, CANCELLED=red, CONVERTED=orange |
| Row actions | View / Edit / Delete — Edit & Delete disabled when status ≠ DRAFT |
| New PR button | Navigate to `/purchase-requisitions/new` |
| Pagination | Ant Design Table pagination; page size 20 |
| Delete flow | Confirm modal → `deletePR()` → refetch list |

### 4.4 Wire `PurchaseRequisitionPage.tsx` to Real API

Replace the fake `setTimeout` save with real API calls:

```typescript
// On mount: runPreChecks('01') — block form with Alert if pre-checks fail
// On save — build CreatePRDto:
const dto: CreatePRDto = {
  divCode: '01',
  prDate: headerForm.getFieldValue('prDate').toISOString(),
  depCode: headerForm.getFieldValue('departmentCode'),
  section: headerForm.getFieldValue('section'),
  subCostCode: headerForm.getFieldValue('subCostCentre') ?? null,
  iType: headerForm.getFieldValue('orderType') ?? null,
  reqName: headerForm.getFieldValue('requesterCode') ?? null,
  refNo: headerForm.getFieldValue('refNo') ?? null,
  poGroupCode: headerForm.getFieldValue('poGroupCode') ?? null,
  scopeCode: headerForm.getFieldValue('scopeCode') ?? null,
  lines: itemsGrid.map((item, i) => ({
    prSNo: i + 1,
    itemCode: item.itemCode,
    qtyRequired: item.quantityRequired,
    requiredDate: item.requiredDate || null,
    machineNo: item.machineNo || null,
    costCentreCode: item.costCentre || null,
    budgetGroupCode: item.budgetGroup || null,
    place: item.place || null,
    approxCost: item.approxCost || null,
    remarks: item.remarks || null,
    isSample: item.sampleFlag,
  })),
}
// On success: show generated PR No., navigate to list
// On error: display backend message in Alert (e.g., "PR date must equal processing date")
```

### 4.5 Edit Mode in `PurchaseRequisitionPage.tsx`

- Read route param `prNo` via `useParams()`
- If `prNo` present → call `getById(divCode, prNo)` on mount → populate form + grid
- On save → call `update()` instead of `create()`
- If status ≠ `DRAFT` → show read-only view; disable all inputs and save button

### 4.6 Replace Dummy Lookups with API-Driven Selects

Once backend lookup endpoints are live, replace every `dummy.ts` reference:

| Form Field | Current | Replace With |
|---|---|---|
| Requester Code | `requesters[]` from dummy | `useRequesters(divCode)` |
| PO Group | `poGroups[]` from dummy | `usePoGroups(divCode)` |
| Scope Code | `scopes[]` from dummy | `useScopes(divCode)` |
| Item Group | `itemGroups[]` from dummy | `useItemGroups(divCode)` |
| Item Code (entry form) | `items[]` from dummy | `useItems(divCode, itemGroupCode?)` |
| Cost Centre (line) | `costCentres[]` from dummy | `useCostCentres(divCode, depCode)` |
| Budget Group (line) | `budgetGroups[]` from dummy | `useBudgetGroups(divCode)` |
| Machine No. (line) | `machines[]` from dummy | `useMachines(divCode, depCode)` |

Each hook follows the `useDepartments` / `useSections` pattern exactly (useApi + refs + debounced search).

### 4.7 Routing

Add to `src/routes/` config:

```
/purchase-requisitions          → PRListPage        (lazy)
/purchase-requisitions/new      → PurchaseRequisitionPage  (create mode, no prNo param)
/purchase-requisitions/:prNo    → PurchaseRequisitionPage  (edit/view mode)
```

---

## 5. Validation Rules (from VB6 Analysis)

### Already Implemented in `PurchaseRequisitionService`

| Rule | Status |
|---|---|
| Pre-checks: item master, dept, doc number configured | ✅ `RunPreChecksAsync` |
| PR date = processing date (unless backdate feature flag) | ✅ |
| Department must exist for division | ✅ `DepartmentExistsAsync` |
| Sub cost centre required when budget feature flag on | ✅ |
| At least 1 line item | ✅ `[MinLength(1)]` on DTO |
| Item must be active in `in_item` | ✅ `ItemExistsAsync` |
| No duplicate item codes in same PR | ✅ `HashSet` dedup |
| Quantity required > 0 | ✅ |
| Required date ≥ processing date (Create) | ✅ |
| Required date ≥ PR date (Modify) | ✅ |
| Machine must exist for dept (`mm_macmas`) | ✅ `MachineExistsAsync` |
| Cost centre must exist (`in_cc`) | ✅ `CostCentreExistsAsync` |
| Budget group must exist (`in_bgrp`) | ✅ `BudgetGroupExistsAsync` |
| Block modify/delete if status = CONVERTED or CLOSED | ✅ |

### Not Yet Implemented

| Rule | Gap | Action |
|---|---|---|
| Delete blocked if linked to enquiry (`po_enql`) | ❌ | Add `EnquiryExistsAsync` check in `DeleteAsync` |
| Delete requires reason from `po_txndelreason` | ❌ | Add `DeleteReason` param to `DELETE` endpoint + modal on frontend |
| Pending indent warning (`KSP_INDEDNT_CHECK`) | ⚠️ Feature flag exists | Port SP; call on item selection; show non-blocking warning banner (never block/terminate) |

---

## 6. Implementation Phases

### Phase 1 — Run the SPs (P0 · Unblock everything)
1. Verify `po_prh` live schema for `PoGroupCode`, `ScopeCode`, `IsDeleted`
2. `ALTER TABLE` if columns missing
3. Copy SP scripts from `scrap/` → `Spinrise.DBScripts/Scripts/02 Stored Procedures/`
4. Run all 8 SP scripts (`CREATE OR ALTER`) against dev SQL Server
5. Insert feature flag seed rows for div `01`

### Phase 2 — Backend Cleanup (P0)
1. Add `PreChecks`, `GenerateNumber`, `SoftDeleteLines`, `InsertLine` to `Constants.cs`
2. Replace 4 hardcoded SP strings in `PurchaseRequisitionRepository`
3. Add `PoGroupCode`, `ScopeCode` to domain entity, all DTOs, service mapping, repository params
4. Replace `"SYSTEM"` with JWT claim in controller

### Phase 3 — Wire Frontend Create (P0)
1. Create `purchaseRequisitionService.ts` with all 7 methods
2. Add request/response types to `types.ts`
3. Create `usePurchaseRequisitions.ts` and `usePurchaseRequisition.ts`
4. Wire `PurchaseRequisitionPage.tsx` — pre-checks on mount, real POST on save
5. Display backend validation errors via Ant Design `Alert`

### Phase 4 — List + Edit + Delete (P1)
1. Create `PRListPage.tsx` with filters, table, status badges
2. Add edit mode to `PurchaseRequisitionPage.tsx` (load → PUT)
3. Add delete confirm modal
4. Wire routes

### Phase 5 — Lookup API Migration (P1)
1. Write 8 lookup SPs and run against DB
2. Build 8 backend lookup endpoints (full stack each)
3. Create 8 frontend service + hook files
4. Replace all `dummy.ts` references in components

### Phase 6 — Remaining Business Rules (P2)
1. Delete reason modal + `po_txndelreason` lookup endpoint
2. Enquiry-linked delete block (`po_enql` check)
3. Pending indent non-blocking warning on item selection

---

## 7. API Endpoints — Complete Reference

| Method | Route | Action |
|---|---|---|
| `GET` | `/api/v1/purchase-requisitions/pre-checks?divCode=` | Pre-add validation |
| `GET` | `/api/v1/purchase-requisitions?divCode=&prNo=&fromDate=&toDate=&depCode=&status=` | List / filter |
| `GET` | `/api/v1/purchase-requisitions/{prNo}?divCode=` | Get with lines |
| `POST` | `/api/v1/purchase-requisitions` | Create |
| `PUT` | `/api/v1/purchase-requisitions/{prNo}` | Update header + lines |
| `DELETE` | `/api/v1/purchase-requisitions/{prNo}?divCode=` | Soft delete |
| `DELETE` | `/api/v1/purchase-requisitions/{prNo}/lines/{lineNo}?divCode=` | Soft delete line |

---

## 8. PR Status Lifecycle (Display Only)

| DB Value | Display Label | Badge Colour |
|---|---|---|
| `DRAFT` | Requested | Gray |
| `FIRST_APPROVED` | First Level Approved | Blue |
| `SECOND_APPROVED` | Second Level Approved | Cyan |
| `THIRD_APPROVED` | Third Level Approved | Purple |
| `FINAL_APPROVED` | Final Level Approved | Green |
| `CANCELLED` | PR Cancelled | Red |
| `CONVERTED` | Ordered | Orange |
| `ENQUIRED` | Enquired | Yellow |
| `RECEIVED` | Received | Teal |
