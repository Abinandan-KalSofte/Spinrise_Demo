# Purchase Requisition — Migration Guide
## SPINRISE · ASP.NET Core + React + Ant Design 5
**Source:** VB6 `tmpPOINDENT.frm` (Kalsofte ERP)
**Target Division:** Purchase · Module: PurchaseRequisition
**Date:** April 2026

---

## 1. Purpose of This Document

This document is the single source of truth for AI-assisted development of the Purchase Requisition module.
It covers what is already built, what gaps remain, and exact specifications for everything that still needs to be implemented.

**Read this before writing any code for the Purchase Requisition module.**

---

## 2. Is the Source Analysis Sufficient?

Yes. The VB6 critical analysis (`PR_Form_CriticalAnalysis_CORRECTED.md`) combined with the existing partial implementation provides everything needed:

- All header and line fields are known.
- All validation rules are mapped.
- All business logic is documented.
- PR status lifecycle is fully defined.
- Database tables and stored procedures are designed.
- The existing backend implementation validates the data model.

The only items that require a business decision before implementation are listed in Section 11 (Open Questions). Everything else in this guide can be implemented immediately.

---

## 3. Tech Stack

| Layer | Technology |
|---|---|
| Backend API | ASP.NET Core 9, C# |
| Data Access | Dapper + SQL Server Stored Procedures |
| Architecture | Controller → Service → Repository → SP |
| Frontend | React 18, TypeScript, Vite |
| UI Library | Ant Design 5 + `@ant-design/pro-components` |
| HTTP Client | Axios via `@/shared/api/client` (`apiHelpers`) |
| State | Zustand |
| Routing | React Router DOM 7 |
| Date Handling | Day.js |
| Testing (BE) | xUnit |
| Testing (FE) | Vitest + Testing Library |

---

## 4. Current Implementation Status

### 4.1 Backend — COMPLETE

All core backend files exist and are wired up in `Program.cs`.

| File | Status |
|---|---|
| `Spinrise.Domain/Areas/Purchase/PurchaseRequisition/PurchaseRequisitionHeader.cs` | Done |
| `Spinrise.Domain/Areas/Purchase/PurchaseRequisition/PurchaseRequisitionLine.cs` | Done |
| `Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/CreatePRHeaderDto.cs` | Done |
| `Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/UpdatePRHeaderDto.cs` | Done |
| `Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/PRHeaderResponseDto.cs` | Done |
| `Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/PRLineResponseDto.cs` | Done |
| `Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/PRSummaryResponseDto.cs` | Done |
| `Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/PreCheckResult.cs` | Done |
| `Spinrise.Application/Areas/Purchase/PurchaseRequisition/Mappings/PRMappings.cs` | Done |
| `Spinrise.Application/Areas/Purchase/PurchaseRequisition/Interfaces/IPurchaseRequisitionService.cs` | Done |
| `Spinrise.Application/Areas/Purchase/PurchaseRequisition/Interfaces/IPurchaseRequisitionRepository.cs` | Done |
| `Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs` | Done |
| `Spinrise.Infrastructure/Areas/Purchase/PurchaseRequisition/PurchaseRequisitionRepository.cs` | Done |
| `Spinrise.API/Areas/Purchase/Controllers/PurchaseRequisitionController.cs` | Done |
| `Spinrise.DBScripts/01 Tables/01_po_prh.sql` | Done |
| `Spinrise.DBScripts/01 Tables/02_po_prl.sql` | Done |
| `Spinrise.DBScripts/01 Tables/03_feature_flags.sql` | Done |
| `Spinrise.DBScripts/02 Stored Procedures/01_usp_PR_GetAll.sql` through `08_usp_PR_GenerateNumber.sql` | Done |
| `Spinrise.DBScripts/03 Seed Data/01_feature_flags_seed.sql` | Done |
| DI registration in `Program.cs` (lines 146–147) | Done |

### 4.2 Backend — GAPS (must be built before frontend)

These lookup endpoints do not exist yet. The frontend form needs them for dropdowns and item auto-fill.

| Endpoint | Purpose | Priority |
|---|---|---|
| `GET /api/v1/purchase/lookup/items` | Item search for line entry | Critical |
| `GET /api/v1/purchase/lookup/items/{itemCode}` | Item detail (name, UOM, rate, stock) | Critical |
| `GET /api/v1/purchase/lookup/departments` | Department dropdown | Critical |
| `GET /api/v1/purchase/lookup/machines` | Machine lookup filtered by dept | High |
| `GET /api/v1/purchase/lookup/cost-centres` | Cost centre dropdown | High |
| `GET /api/v1/purchase/lookup/budget-groups` | Budget group dropdown | High |

Also missing:
- SQL script for `usp_PR_SoftDeleteLines` (SP is called in the repository but has no script file in `02 Stored Procedures/`).

### 4.3 Frontend — COMPLETE

| Feature | Status |
|---|---|
| Auth (login, JWT store, interceptors) | Done |
| Dashboard | Done |
| Purchase Requisition Report (PDF/Excel/CSV download) | Done |
| Shared API client (`@/shared/api/client.ts`) | Done |
| Shared UI components (`@/shared/ui`) | Done |
| Layout with sidebar navigation | Done |

### 4.4 Frontend — GAPS (main work)

The entire Purchase Requisition CRUD module needs to be built:

```
src/features/purchase-requisition/
  api/purchaseRequisitionApi.ts
  types/index.ts
  hooks/usePurchaseRequisitionList.ts
  hooks/usePurchaseRequisitionForm.ts
  hooks/useLookups.ts
  pages/PurchaseRequisitionListPage.tsx
  pages/PurchaseRequisitionFormPage.tsx
  components/PRHeaderForm.tsx
  components/PRLineTable.tsx
  components/PRLineFormModal.tsx
  components/PRStatusBadge.tsx
```

Plus route and navigation updates in:
- `src/routes/dashboard.routes.tsx`
- `src/shared/layouts/MainLayout.tsx`

---

## 5. Existing API Endpoints (Backend — Already Built)

Base URL: `http://localhost:5243/api/v1`

All requests require `Authorization: Bearer {token}` header.

### 5.1 Pre-Checks
```
GET /purchase-requisitions/pre-checks?divCode={divCode}
```
Response `data`:
```json
{
  "itemMasterExists": true,
  "departmentExists": true,
  "docNumberConfigured": true
}
```
Call this before showing the New PR form. If any flag is false, show the corresponding error and block access to the form.

### 5.2 List PRs
```
GET /purchase-requisitions?divCode={divCode}&prNo={prNo}&fromDate={date}&toDate={date}&depCode={depCode}&status={status}
```
All query params except `divCode` are optional.

Response `data`: array of `PRSummaryResponseDto`:
```json
[
  {
    "id": 1,
    "divCode": "DIV01",
    "prNo": "PR/25-26/00001",
    "prDate": "2026-04-04",
    "depCode": "MFG",
    "depName": "Manufacturing",
    "reqName": "John Doe",
    "prStatus": "DRAFT",
    "createdBy": "admin@spinrise.com",
    "createdAt": "2026-04-04T10:00:00",
    "lineCount": 3
  }
]
```

### 5.3 Get PR by Number
```
GET /purchase-requisitions/{prNo}?divCode={divCode}
```
Response `data`: `PRHeaderResponseDto` with nested `lines` array.

```json
{
  "id": 1,
  "divCode": "DIV01",
  "prNo": "PR/25-26/00001",
  "prDate": "2026-04-04",
  "depCode": "MFG",
  "depName": "Manufacturing",
  "section": null,
  "subCostCode": null,
  "iType": null,
  "reqName": "John Doe",
  "refNo": null,
  "saleOrderNo": null,
  "saleOrderDate": null,
  "prStatus": "DRAFT",
  "createdBy": "admin@spinrise.com",
  "createdAt": "2026-04-04T10:00:00",
  "modifiedBy": null,
  "modifiedAt": null,
  "hasPendingIndentWarning": false,
  "pendingIndentWarningMessage": null,
  "lines": [
    {
      "id": 1,
      "prSNo": 1,
      "itemCode": "ITEM001",
      "itemName": "Steel Rod 10mm",
      "uom": "KG",
      "rate": 85.00,
      "currentStock": 120.00,
      "qtyRequired": 50.00,
      "requiredDate": "2026-04-15",
      "place": null,
      "approxCost": 4250.00,
      "remarks": null,
      "machineNo": null,
      "costCentreCode": null,
      "budgetGroupCode": null,
      "lastPoRate": 82.00,
      "lastPoDate": "2026-03-10",
      "lastPoSupplierCode": "SUP001",
      "lastPoSupplierName": "Metal Works Ltd",
      "isSample": false
    }
  ]
}
```

### 5.4 Create PR
```
POST /purchase-requisitions
Content-Type: application/json
```
Body: `CreatePRHeaderDto` (see Section 6.1).

Success response (201):
```json
{ "success": true, "message": "Purchase Requisition created successfully.", "data": { "prNo": "PR/25-26/00001" } }
```

### 5.5 Update PR
```
PUT /purchase-requisitions/{prNo}
Content-Type: application/json
```
Body: `UpdatePRHeaderDto`. The `prNo` in the body must match the URL parameter.

### 5.6 Delete PR
```
DELETE /purchase-requisitions/{prNo}?divCode={divCode}
```

### 5.7 Delete Line
```
DELETE /purchase-requisitions/{prNo}/lines/{lineNo}?divCode={divCode}
```

---

## 6. DTOs — Request Shapes

### 6.1 CreatePRHeaderDto
```json
{
  "divCode": "DIV01",
  "prDate": "2026-04-04",
  "depCode": "MFG",
  "section": "Welding",
  "subCostCode": null,
  "iType": null,
  "reqName": "John Doe",
  "refNo": null,
  "saleOrderNo": null,
  "saleOrderDate": null,
  "lines": [
    {
      "itemCode": "ITEM001",
      "qtyRequired": 50,
      "requiredDate": "2026-04-15",
      "place": null,
      "approxCost": 4250.00,
      "remarks": null,
      "machineNo": null,
      "costCentreCode": null,
      "budgetGroupCode": null,
      "isSample": false
    }
  ]
}
```
Rules:
- `divCode` required, max 10 chars
- `prDate` required
- `depCode` required, max 10 chars
- `lines` required, minimum 1 item
- Each line: `itemCode` required; `qtyRequired` required and > 0

### 6.2 UpdatePRHeaderDto
Same shape as Create but also includes `prNo` (required) and `divCode`. Same field rules apply.

---

## 7. Lookup Endpoints — TO BE BUILT

These endpoints must be built before the form is usable. Create a new controller:
`Spinrise.API/Areas/Purchase/Controllers/PurchaseLookupController.cs`

All endpoints are `GET`, read-only, `divCode` is always required.

### 7.1 Item Search
```
GET /api/v1/purchase/lookup/items?divCode={divCode}&search={text}&limit=20
```
Returns items where `IsActive = 1` and `ItemCode` or `ItemName` contains the search text.

Response `data` item shape:
```json
{
  "itemCode": "ITEM001",
  "itemName": "Steel Rod 10mm",
  "uom": "KG",
  "rate": 85.00,
  "currentStock": 120.00,
  "lastPoRate": 82.00,
  "lastPoDate": "2026-03-10",
  "lastPoSupplierCode": "SUP001",
  "lastPoSupplierName": "Metal Works Ltd"
}
```
The frontend uses this to auto-fill line fields when an item code is entered.

### 7.2 Department List
```
GET /api/v1/purchase/lookup/departments?divCode={divCode}
```
Response `data` item:
```json
{ "depCode": "MFG", "depName": "Manufacturing" }
```

### 7.3 Machine List
```
GET /api/v1/purchase/lookup/machines?divCode={divCode}&depCode={depCode}
```
Filter: `MACFLAG = 'M'`. Returns machines for the selected department.

Response `data` item:
```json
{ "machineNo": "MAC001", "machineModel": "CNC-5000", "description": "CNC Lathe Machine" }
```

### 7.4 Cost Centre List
```
GET /api/v1/purchase/lookup/cost-centres?divCode={divCode}
```
Response `data` item:
```json
{ "costCentreCode": "CC001", "costCentreName": "Production Floor" }
```

### 7.5 Budget Group List
```
GET /api/v1/purchase/lookup/budget-groups?divCode={divCode}
```
Response `data` item:
```json
{ "budgetGroupCode": "BG001", "budgetGroupName": "Capex - Machinery" }
```

### Backend Implementation Notes for Lookups

Follow the `User` module pattern:

1. Add DTOs in `Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/Lookup/`
2. Add `GetItemsAsync`, `GetItemByCodeAsync`, `GetDepartmentsAsync`, `GetMachinesAsync`, `GetCostCentresAsync`, `GetBudgetGroupsAsync` to `IPurchaseRequisitionRepository`
3. Implement in `PurchaseRequisitionRepository` using `QueryAsync<T>` with inline parameterised SQL (no stored procedure needed for simple lookups)
4. Add `GetLookupsAsync` methods to `IPurchaseRequisitionService`
5. Add lookup actions to `PurchaseLookupController` — inherit `BaseApiController`, use `[Area("Purchase")]`, `[Route("api/v1/purchase/lookup")]`
6. Register nothing new — `IPurchaseRequisitionRepository` and `IPurchaseRequisitionService` are already registered

### Missing SQL Script

Create `Spinrise.DBScripts/02 Stored Procedures/09_usp_PR_SoftDeleteLines.sql`:
```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_SoftDeleteLines
    @DivCode VARCHAR(10),
    @PrNo    VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE dbo.po_prl
    SET    IsDeleted = 1
    WHERE  DivCode = @DivCode
      AND  PrNo    = @PrNo;
END
```

---

## 8. PR Status Lifecycle

| `prStatus` value | Display Label | Badge Color |
|---|---|---|
| `DRAFT` | Draft | default (grey) |
| `L1_APPROVED` | L1 Approved | blue |
| `L2_APPROVED` | L2 Approved | cyan |
| `L3_APPROVED` | L3 Approved | geekblue |
| `APPROVED` | Approved | green |
| `ORDERED` | Ordered | purple |
| `ORDER_CANCELLED` | Order Cancelled | orange |
| `ENQUIRED` | Enquired | gold |
| `RECEIVED` | Received | green (strong) |
| `CANCELLED` | Cancelled | red |

Rules:
- A PR in `ORDERED`, `RECEIVED`, or `APPROVED` status cannot be modified or deleted. The backend returns `PRMessages.PrAlreadyConverted` for this case.
- Only `DRAFT` PRs are editable.
- Status changes are handled by approval and PO modules (future scope). The PR module only creates as `DRAFT`.

---

## 9. Frontend — Complete Implementation Spec

### 9.1 File Structure to Create

```
src/features/purchase-requisition/
  api/
    purchaseRequisitionApi.ts     ← API client functions
    lookupApi.ts                  ← lookup API functions
  types/
    index.ts                      ← TypeScript types and interfaces
  hooks/
    usePurchaseRequisitionList.ts ← list page data + actions
    usePurchaseRequisitionForm.ts ← form page data + submit logic
    useLookups.ts                 ← cached lookup data
  pages/
    PurchaseRequisitionListPage.tsx
    PurchaseRequisitionFormPage.tsx
  components/
    PRHeaderForm.tsx              ← header section of the form
    PRLineTable.tsx               ← editable line items table
    PRLineFormModal.tsx           ← modal for adding / editing a line
    PRStatusBadge.tsx             ← reusable status badge
```

### 9.2 TypeScript Types (`src/features/purchase-requisition/types/index.ts`)

```typescript
export type PRStatus =
  | 'DRAFT'
  | 'L1_APPROVED'
  | 'L2_APPROVED'
  | 'L3_APPROVED'
  | 'APPROVED'
  | 'ORDERED'
  | 'ORDER_CANCELLED'
  | 'ENQUIRED'
  | 'RECEIVED'
  | 'CANCELLED'

export interface PRSummary {
  id: number
  divCode: string
  prNo: string
  prDate: string
  depCode: string
  depName: string | null
  reqName: string | null
  prStatus: PRStatus
  createdBy: string
  createdAt: string
  lineCount: number
}

export interface PRLine {
  id: number
  prSNo: number
  itemCode: string
  itemName: string | null
  uom: string | null
  rate: number | null
  currentStock: number | null
  qtyRequired: number
  requiredDate: string | null
  place: string | null
  approxCost: number | null
  remarks: string | null
  machineNo: string | null
  costCentreCode: string | null
  budgetGroupCode: string | null
  lastPoRate: number | null
  lastPoDate: string | null
  lastPoSupplierCode: string | null
  lastPoSupplierName: string | null
  isSample: boolean
}

export interface PRHeader extends PRSummary {
  section: string | null
  subCostCode: string | null
  iType: string | null
  refNo: string | null
  saleOrderNo: string | null
  saleOrderDate: string | null
  modifiedBy: string | null
  modifiedAt: string | null
  hasPendingIndentWarning: boolean
  pendingIndentWarningMessage: string | null
  lines: PRLine[]
}

export interface PreCheckResult {
  itemMasterExists: boolean
  departmentExists: boolean
  docNumberConfigured: boolean
}

// Form models (used in React state, not directly sent to API)
export interface PRLineFormValues {
  itemCode: string
  itemName?: string
  uom?: string
  rate?: number
  currentStock?: number
  qtyRequired: number
  requiredDate?: string
  place?: string
  approxCost?: number
  remarks?: string
  machineNo?: string
  costCentreCode?: string
  budgetGroupCode?: string
  isSample: boolean
}

export interface PRHeaderFormValues {
  divCode: string
  prDate: string
  depCode: string
  section?: string
  subCostCode?: string
  iType?: string
  reqName?: string
  refNo?: string
  saleOrderNo?: string
  saleOrderDate?: string
}

// Lookup types
export interface ItemLookup {
  itemCode: string
  itemName: string
  uom: string
  rate: number | null
  currentStock: number | null
  lastPoRate: number | null
  lastPoDate: string | null
  lastPoSupplierCode: string | null
  lastPoSupplierName: string | null
}

export interface DepartmentLookup {
  depCode: string
  depName: string
}

export interface MachineLookup {
  machineNo: string
  machineModel: string | null
  description: string | null
}

export interface CostCentreLookup {
  costCentreCode: string
  costCentreName: string
}

export interface BudgetGroupLookup {
  budgetGroupCode: string
  budgetGroupName: string
}
```

### 9.3 API Client (`src/features/purchase-requisition/api/purchaseRequisitionApi.ts`)

Follow the exact same pattern as `src/features/auth/api/authApi.ts`. Use `apiHelpers` from `@/shared/api/client`.

```typescript
import { apiHelpers } from '@/shared/api/client'
import type { PRHeader, PRSummary, PreCheckResult } from '../types'

const BASE = 'purchase-requisitions'

export const purchaseRequisitionApi = {
  runPreChecks: (divCode: string) =>
    apiHelpers.get<PreCheckResult>(`${BASE}/pre-checks?divCode=${divCode}`),

  getAll: (params: { divCode: string; prNo?: string; fromDate?: string; toDate?: string; depCode?: string; status?: string }) => {
    const query = new URLSearchParams({ divCode: params.divCode })
    if (params.prNo) query.set('prNo', params.prNo)
    if (params.fromDate) query.set('fromDate', params.fromDate)
    if (params.toDate) query.set('toDate', params.toDate)
    if (params.depCode) query.set('depCode', params.depCode)
    if (params.status) query.set('status', params.status)
    return apiHelpers.get<PRSummary[]>(`${BASE}?${query}`)
  },

  getById: (divCode: string, prNo: string) =>
    apiHelpers.get<PRHeader>(`${BASE}/${encodeURIComponent(prNo)}?divCode=${divCode}`),

  create: (payload: unknown) =>
    apiHelpers.post<{ prNo: string }>(BASE, payload),

  update: (prNo: string, payload: unknown) =>
    apiHelpers.put<void>(`${BASE}/${encodeURIComponent(prNo)}`, payload),

  delete: (divCode: string, prNo: string) =>
    apiHelpers.delete(`${BASE}/${encodeURIComponent(prNo)}?divCode=${divCode}`),

  deleteLine: (divCode: string, prNo: string, lineNo: number) =>
    apiHelpers.delete(`${BASE}/${encodeURIComponent(prNo)}/lines/${lineNo}?divCode=${divCode}`),
}
```

### 9.4 Lookup API (`src/features/purchase-requisition/api/lookupApi.ts`)

```typescript
import { apiHelpers } from '@/shared/api/client'
import type { ItemLookup, DepartmentLookup, MachineLookup, CostCentreLookup, BudgetGroupLookup } from '../types'

const BASE = 'purchase/lookup'

export const lookupApi = {
  searchItems: (divCode: string, search: string) =>
    apiHelpers.get<ItemLookup[]>(`${BASE}/items?divCode=${divCode}&search=${encodeURIComponent(search)}&limit=20`),

  getItemByCode: (divCode: string, itemCode: string) =>
    apiHelpers.get<ItemLookup>(`${BASE}/items/${encodeURIComponent(itemCode)}?divCode=${divCode}`),

  getDepartments: (divCode: string) =>
    apiHelpers.get<DepartmentLookup[]>(`${BASE}/departments?divCode=${divCode}`),

  getMachines: (divCode: string, depCode: string) =>
    apiHelpers.get<MachineLookup[]>(`${BASE}/machines?divCode=${divCode}&depCode=${depCode}`),

  getCostCentres: (divCode: string) =>
    apiHelpers.get<CostCentreLookup[]>(`${BASE}/cost-centres?divCode=${divCode}`),

  getBudgetGroups: (divCode: string) =>
    apiHelpers.get<BudgetGroupLookup[]>(`${BASE}/budget-groups?divCode=${divCode}`),
}
```

### 9.5 List Page (`PurchaseRequisitionListPage.tsx`)

Use Ant Design `ProTable` from `@ant-design/pro-components`.

**Columns:**
| Column | Key | Render |
|---|---|---|
| PR No. | `prNo` | Text link → navigates to `/purchase/requisitions/{prNo}?divCode={divCode}` |
| PR Date | `prDate` | Formatted date `DD/MM/YYYY` using Day.js |
| Department | `depName` | Text |
| Requester | `reqName` | Text |
| Lines | `lineCount` | Number |
| Status | `prStatus` | `<PRStatusBadge status={record.prStatus} />` |
| Actions | — | Edit button (navigate to form), Delete button (confirm modal) |

**Toolbar:**
- "New Purchase Requisition" primary button → calls pre-checks first, then navigates to `/purchase/requisitions/new?divCode={divCode}`
- Filter: date range, department selector, status selector

**Behavior:**
- On mount, call `purchaseRequisitionApi.getAll({ divCode })`. Use `divCode` from auth store or a fixed value (see Section 11 — Open Questions).
- Show loading state while fetching.
- On delete, show `Modal.confirm`, then call `purchaseRequisitionApi.delete`, then refresh list.
- Display `message.success` / `message.error` feedback using `AntApp.useApp()`.

### 9.6 Form Page (`PurchaseRequisitionFormPage.tsx`)

This page handles both Create (path: `/purchase/requisitions/new`) and Edit (path: `/purchase/requisitions/:prNo`).

**Layout:**
```
Page Title: "Purchase Requisition" + PR No. (or "New" if creating)
[Header Section — PRHeaderForm]
[Line Items Section — PRLineTable with "Add Item" button]
[Footer — Save / Cancel buttons]
```

**Create flow:**
1. On mount, call `runPreChecks(divCode)`. If any check fails, show the error message and disable the form.
2. If `hasPendingIndentWarning` flag is enabled (returned by `getById`), show an `Alert` banner — do not block.
3. Render empty header form + empty line table.
4. On submit: validate header form → validate at least 1 line → call `purchaseRequisitionApi.create()` → navigate to list on success.

**Edit flow:**
1. Read `prNo` from URL params, call `purchaseRequisitionApi.getById(divCode, prNo)`.
2. Populate header form and line table with existing data.
3. If `prStatus !== 'DRAFT'`, render the form in read-only mode with an `Alert` saying the PR cannot be edited.
4. On submit: call `purchaseRequisitionApi.update(prNo, payload)` → show success message.

### 9.7 Header Form (`PRHeaderForm.tsx`)

Ant Design `Form` with `layout="vertical"`. Pass `form` instance in from the parent.

| Field | Component | Validation | Notes |
|---|---|---|---|
| PR Date | `DatePicker` | Required | Default today; disable future dates; use `dayjs` format `DD/MM/YYYY` |
| Department | `Select` with search | Required | Options from `lookupApi.getDepartments` |
| Section | `Input` | Max 100 chars | Optional |
| Requester | `Input` | Max 100 chars | Optional |
| Sub Cost Centre | `Input` | Conditional | Show red label `*` when budget validation is enabled (future: read from config) |
| Ref No. | `Input` | Max 50 chars | Optional |
| Order Type / IType | `Select` | Optional | Static options or from config |
| Sale Order No. | `Input` | Max 50 chars | Optional |

### 9.8 Line Table (`PRLineTable.tsx`)

Props:
```typescript
interface PRLineTableProps {
  lines: PRLineFormValues[]
  readonly?: boolean
  onAdd: (line: PRLineFormValues) => void
  onEdit: (index: number, line: PRLineFormValues) => void
  onDelete: (index: number) => void
}
```

Use Ant Design `Table` (not ProTable) for simplicity.

Columns: `#`, Item Code, Item Name, UOM, Qty Required, Rate, Approx Cost, Required Date, Machine No., Remarks, Actions (Edit, Delete).

- The "Add Item" button above the table opens `PRLineFormModal` in add mode.
- Clicking the edit icon in a row opens the modal in edit mode pre-filled with that row's data.
- Delete shows a `Popconfirm` before removing.
- Minimum 1 line must exist at save time — validate in parent before submit.

### 9.9 Line Form Modal (`PRLineFormModal.tsx`)

Ant Design `Modal` containing a `Form`.

Props:
```typescript
interface PRLineFormModalProps {
  open: boolean
  mode: 'add' | 'edit'
  divCode: string
  depCode: string
  initialValues?: PRLineFormValues
  onConfirm: (values: PRLineFormValues) => void
  onCancel: () => void
}
```

Fields:
| Field | Component | Behaviour |
|---|---|---|
| Item Code | `AutoComplete` | Search items via `lookupApi.searchItems`; on select, auto-fill Item Name, UOM, Rate, Current Stock, Last PO info |
| Item Name | `Input` | Read-only; auto-filled |
| UOM | `Input` | Read-only; auto-filled |
| Rate | `InputNumber` | Auto-filled; editable |
| Current Stock | `InputNumber` | Read-only; auto-filled |
| Qty Required | `InputNumber` | Required; min 1; > 0 |
| Required Date | `DatePicker` | Optional; must be >= today (create) or >= PR date (edit) |
| Place | `Input` | Optional |
| Approx Cost | `InputNumber` | Optional; 2 decimal places |
| Remarks | `Input` | Optional |
| Machine No. | `Select` | Optional; options from `lookupApi.getMachines(divCode, depCode)` |
| Cost Centre | `Select` | Optional; options from `lookupApi.getCostCentres(divCode)` |
| Budget Group | `Select` | Optional; options from `lookupApi.getBudgetGroups(divCode)` |
| Sample | `Checkbox` | Optional |

Last PO info (Rate, Date, Supplier) is displayed as read-only info text below the item fields — not editable, for reference only.

### 9.10 Status Badge (`PRStatusBadge.tsx`)

```typescript
import { Tag } from 'antd'
import type { PRStatus } from '../types'

const STATUS_MAP: Record<PRStatus, { label: string; color: string }> = {
  DRAFT:            { label: 'Draft',            color: 'default' },
  L1_APPROVED:      { label: 'L1 Approved',      color: 'blue' },
  L2_APPROVED:      { label: 'L2 Approved',      color: 'cyan' },
  L3_APPROVED:      { label: 'L3 Approved',      color: 'geekblue' },
  APPROVED:         { label: 'Approved',          color: 'green' },
  ORDERED:          { label: 'Ordered',           color: 'purple' },
  ORDER_CANCELLED:  { label: 'Order Cancelled',   color: 'orange' },
  ENQUIRED:         { label: 'Enquired',          color: 'gold' },
  RECEIVED:         { label: 'Received',          color: 'success' },
  CANCELLED:        { label: 'Cancelled',         color: 'red' },
}

export default function PRStatusBadge({ status }: { status: PRStatus }) {
  const config = STATUS_MAP[status] ?? { label: status, color: 'default' }
  return <Tag color={config.color}>{config.label}</Tag>
}
```

### 9.11 Routes Update (`src/routes/dashboard.routes.tsx`)

Add these two routes inside the existing `children` array of the `MainLayout` route:

```typescript
{
  path: 'purchase/requisitions',
  element: <PurchaseRequisitionListPage />,
},
{
  path: 'purchase/requisitions/new',
  element: <PurchaseRequisitionFormPage />,
},
{
  path: 'purchase/requisitions/:prNo',
  element: <PurchaseRequisitionFormPage />,
},
```

Add lazy imports:
```typescript
const PurchaseRequisitionListPage = lazy(
  () => import('@/features/purchase-requisition/pages/PurchaseRequisitionListPage')
)
const PurchaseRequisitionFormPage = lazy(
  () => import('@/features/purchase-requisition/pages/PurchaseRequisitionFormPage')
)
```

### 9.12 Navigation Update (`src/shared/layouts/MainLayout.tsx`)

Add to the `navigationItems` array:

```typescript
{
  key: '/purchase',
  label: 'Purchase',
  children: [
    {
      key: '/purchase/requisitions',
      label: 'Purchase Requisitions',
    },
    {
      key: '/purchase/reports/purchase-requisition',
      label: 'PR Report',
    },
  ],
},
```

Remove the existing flat `{ key: '/purchase/reports/purchase-requisition', label: 'PR Report' }` item and replace with the grouped version above.

---

## 10. Validation Rules Summary (Frontend)

These come directly from the VB6 analysis and are already enforced in the backend. Duplicate them in the frontend for immediate user feedback — do not rely on backend errors for basic field rules.

| Rule | Where | Implementation |
|---|---|---|
| PR Date required and equals today (or processing date) | Header form | `DatePicker` disabled dates; default today |
| Department required | Header form | `rules={[{ required: true }]}` |
| At least one line item | Form submit | Check `lines.length > 0` before calling API |
| Item Code required per line | Line modal | `rules={[{ required: true }]}` |
| Qty Required > 0 per line | Line modal | `rules={[{ required: true, min: 1, type: 'number' }]}` |
| Duplicate item codes in same PR not allowed | Line table | Check before adding to `lines` array; show `message.warning` |
| Required Date >= today (create) | Line modal | Custom `DatePicker` `disabledDate` |
| Required Date >= PR Date (edit) | Line modal | Custom `DatePicker` `disabledDate` using PR date from form |
| Pre-check: item master must exist | List page (New button click) | Show modal error before navigating |
| Pre-check: department must exist | List page (New button click) | Show modal error before navigating |
| Pre-check: doc number must be configured | List page (New button click) | Show modal error before navigating |

---

## 11. Open Questions (Decisions Needed Before Full Implementation)

These questions were identified in the VB6 critical analysis IST checklist. They do not block the core CRUD implementation but affect completeness.

| # | Question | Impact | Recommended Default |
|---|---|---|---|
| Q1 | Where does `divCode` come from in the frontend? From JWT claims, from a division selector on the UI, or hardcoded for single-division? | Affects every API call | Read from auth store (JWT claim `division`); if absent, prompt user |
| Q2 | Should `ksp_PendPR` pending PR check be implemented? Hard-block or soft warning? | Affects line modal UX | Soft warning banner only; never block |
| Q3 | Is the `PO_GRP` (Purchase Type) field required in SPINRISE? | If yes, add to DTOs and form | Omit for now; add in next iteration |
| Q4 | Is Sub Cost Centre required (i.e., is `budget_validation_enabled` flag on by default)? | Affects header form mandatory field | Off by default; configurable per division via feature_flags |
| Q5 | Is Manual PR numbering required? | Backend PR number generation is automatic | Skip; auto-generate only |
| Q6 | Should approval status be visible in the list/form? | Display-only enhancement | Show in form view (read-only) |
| Q7 | What is the format for `divCode`? Single-division deployment uses a fixed value? | Affects API calls | Confirm with team; default `'DIV01'` for development |

---

## 12. Implementation Order (Recommended)

Work in this order to unblock the frontend as fast as possible:

### Phase 1 — Backend Gaps (1–2 days)
1. Add `usp_PR_SoftDeleteLines.sql` script.
2. Add lookup DTOs to `Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/Lookup/`.
3. Add lookup methods to `IPurchaseRequisitionRepository` and `PurchaseRequisitionRepository`.
4. Create `PurchaseLookupController` with 5 lookup endpoints.
5. Run all DB scripts; verify all 9 PR stored procedures work.

### Phase 2 — Frontend Types and API Client (half day)
6. Create `src/features/purchase-requisition/types/index.ts`.
7. Create `src/features/purchase-requisition/api/purchaseRequisitionApi.ts`.
8. Create `src/features/purchase-requisition/api/lookupApi.ts`.

### Phase 3 — Core Components (1–2 days)
9. Build `PRStatusBadge.tsx`.
10. Build `PRLineFormModal.tsx` (item search + auto-fill is the hardest part).
11. Build `PRLineTable.tsx`.
12. Build `PRHeaderForm.tsx`.

### Phase 4 — Pages and Wiring (1 day)
13. Build `PurchaseRequisitionListPage.tsx`.
14. Build `PurchaseRequisitionFormPage.tsx`.
15. Update routes (`dashboard.routes.tsx`).
16. Update navigation (`MainLayout.tsx`).

### Phase 5 — Testing and Polish (1 day)
17. Test create / edit / delete flows end-to-end.
18. Verify pre-check flow (New button → pre-check → form).
19. Verify status badge rendering for all statuses.
20. Verify duplicate item validation in line table.

---

## 13. Patterns to Follow in This Codebase

When in doubt, copy these existing files as your starting template:

| What you're building | Copy from |
|---|---|
| API client functions | `src/features/auth/api/authApi.ts` |
| Page with form | `src/features/auth/pages/LoginPage.tsx` |
| Service file | `src/features/purchase-reports/services/purchaseReportService.ts` |
| Route registration | `src/routes/dashboard.routes.tsx` |
| Backend repository | `Spinrise.Infrastructure/Areas/Purchase/PurchaseRequisition/PurchaseRequisitionRepository.cs` |
| Backend service | `Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs` |
| Backend controller | `Spinrise.API/Areas/Purchase/Controllers/PurchaseRequisitionController.cs` |
| Stored procedure | `Spinrise.DBScripts/02 Stored Procedures/01_usp_PR_GetAll.sql` |

---

## 14. VB6 Features Intentionally Not Migrated

These VB6 behaviours are explicitly excluded from SPINRISE. Do not implement them.

| VB6 Behaviour | Reason Excluded |
|---|---|
| `If MsgBox(...) = vbYes Then End` — terminates application | Application-killing on warning is never acceptable |
| Oracle SQL paths (`to_char`, `decode`, `blcode`) | SPINRISE is SQL Server only |
| `tempPurType{IP}` session temp tables | Replaced by JWT claims / session context |
| Crystal Reports OCX (`CrystalReport1`, `clsCrystal`) | Replaced by server-side FastReport PDF generation (already in backend) |
| `intervalminutes` session counter in UI events | Handled at API/middleware layer |
| `DTPicker1` orphaned control | Removed; `DatePicker` from Ant Design used instead |
| Direct ADO string-concatenated SQL | Replaced by parameterised Dapper queries |
| `EmpCommon` Boolean report branch | Replaced by configurable `po_para` flag (future scope) |

---

*This document covers the complete Purchase Requisition module migration.*
*Update Section 3 (Current Implementation Status) as tasks are completed.*
*Kalpatharu Software Ltd · SPINRISE · Internal*
