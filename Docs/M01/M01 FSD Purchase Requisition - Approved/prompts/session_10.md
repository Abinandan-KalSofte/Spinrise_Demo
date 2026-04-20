# Session 10 — Budget Balance Display

## Context
Module: M01 Purchase Requisition | FSD v2.3 | Spinrise ERP
Stack: ASP.NET Core 8 / React 18 + Ant Design 5
Rule: NO DB table changes. SP SELECT update only.

## FSD References
- §8 A.1: `PO_PRH.budgetBALAMT numeric(18,2)` — "Budget balance at time of PR creation. Active when BudgetQty='Y'."
- §11: `BudgetQty='Y'` → Sub-Cost Centre label highlighted red as budget-tracking warning.
- Rec #26: Budget validation must be standard, configurable per division. `BudgetValidationEnabled` flag already in `PreCheckResult`.

## Current State
- `PreCheckResult.BudgetValidationEnabled` flag exists (mapped from `po_para.BudgetQty='Y'`)
- `PO_PRH.budgetBALAMT` column exists in DB but NOT in `PRHeaderResponseDto`
- V2 form shows no budget balance or visual indicator
- `SubCost` header field will be added in S2; budget indicator should co-locate with it

## Tasks

### T1 — Add BudgetBalance to Response DTO
**File:** `PRHeaderResponseDto.cs`

```csharp
public decimal? BudgetBalance { get; set; }
```

### T2 — Map in Domain Entity
**File:** `PurchaseRequisitionHeader.cs`

```csharp
public decimal? BudgetBalAmt { get; set; }  // Dapper maps PO_PRH.budgetBALAMT
```

### T3 — Map in Repository GetByIdAsync
**File:** `PurchaseRequisitionRepository.cs`

After Dapper reads header, add to DTO mapping:
```csharp
dto.BudgetBalance = header.BudgetBalAmt;
```
(or configure Dapper column alias in SP)

### T4 — SP Update
**File:** `ksp_PR_GetById.sql`

Add to SELECT if `budgetBALAMT` not already included:
```sql
prh.budgetBALAMT AS BudgetBalAmt
```

### T5 — Frontend Type
**File:** `types.ts` — `PRHeaderResponse`:
```typescript
budgetBalance?: number
```

### T6 — Render Budget Indicator in PRHeaderV2
**File:** `PRHeaderV2.tsx`

After S2 adds `SubCost` field, co-locate budget indicator:
```tsx
{preCheckResult?.budgetValidationEnabled && pr?.budgetBalance != null && (
  <Alert
    type="warning"
    showIcon
    message={`Budget Balance: ₹${pr.budgetBalance.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`}
    style={{ marginBottom: 12 }}
  />
)}
```

Only show in edit/view mode (when `pr` prop is populated from `getById` response).
In new-PR mode, no budget balance is available yet — do not show.

## Do NOT Change
- DB table schemas
- Any other DTO/service
- Budget validation logic in service (SubCost required on Update already handles this)

## Dependency
Requires S2 (SubCost header field rendered) to be complete first for co-location to make sense.
Can be done independently if placed in a separate section.
