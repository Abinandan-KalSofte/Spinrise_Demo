# Session 2 — Header Form Missing Fields

## Context
Module: M01 Purchase Requisition | FSD v2.3 | Spinrise ERP
Stack: React 18 + TypeScript + Ant Design 5 | ASP.NET Core 8
Rule: NO DB changes. Frontend + service validation fix only.

## FSD References
- §2: ScopeCode, PoGroupCode, SaleOrderNo, SaleOrderDate, SubCost — all in DB and DTO, none rendered in V2 form.
- §4.2: `PO_GRP` (PoGroupCode) is MANDATORY when `PurTypeFlg=1` (maps to `PendingPoDetailsEnabled` — WRONG flag).

## Current State
`PRHeaderV2.tsx` renders: PrDate, DepCode, Section, RefNo, ReqName, IType.
Missing: ScopeCode, PoGroupCode, SaleOrderNo, SaleOrderDate, SubCost (header level).

## Tasks

### T1 — Add Missing Fields to PRHeaderV2.tsx
**File:** `Development/spinrise-web/src/features/purchase-requisition/components/v2/PRHeaderV2.tsx`

Add to "Request Details" group:
- `scopeCode` — Input, maxLength 2, label "Scope Code"
- `poGroupCode` — Input, maxLength 5, label "PO Group"
- `saleOrderNo` — Input, maxLength 25, label "Sale Order No."
- `saleOrderDate` — DatePicker, label "Sale Order Date", format DD-MM-YYYY
- `subCost` — InputNumber, label "Sub-Cost Centre", min 1, max 99999 (header level, not line level)

Conditionally show `poGroupCode` as required when `preCheckResult.pendingPoDetailsEnabled === true`
(keep same flag for now — note in change log that PurTypeFlg mapping needs backend clarification).

### T2 — Update PRHeaderFormValues Type
**File:** `Development/spinrise-web/src/features/purchase-requisition/types.ts`

Add to `PRHeaderFormValues`:
```typescript
scopeCode?: string
poGroupCode?: string
saleOrderNo?: string
saleOrderDate?: Dayjs | null
subCost?: number
```

### T3 — Update buildPayload in PurchaseRequisitionV2Page.tsx
**File:** `Development/spinrise-web/src/features/purchase-requisition/pages/PurchaseRequisitionV2Page.tsx`

Ensure `buildPayload()` maps all new header fields to `CreatePRRequest`.
Empty strings → `undefined`. `saleOrderDate` → ISO string or `null`.

### T4 — Fix Mandatory Validation Message for PO Group
**File:** `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs`

Locate V8 check. Current: `if (flags.PendingPoDetailsEnabled && string.IsNullOrWhiteSpace(dto.IType))`.
This is checking the WRONG flag. Correct flag is `flags.PendingPoDetailsEnabled` maps to `po_para.Penpodetails`.
PO Group mandatory maps to `purtypeflg > 0` — exposed via PreChecks as a new flag if needed, or leave note in change log for S1 follow-up.
For now: add V8b check — if `PoGroupCode` is blank AND `flags.PendingPoDetailsEnabled`, return error "Please Select Order Type."

## Do NOT Change
- DB table schemas
- Any other controller/service
- Lookup store (departments/employees already loaded)
