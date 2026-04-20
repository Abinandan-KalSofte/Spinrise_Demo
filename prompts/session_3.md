# Session 3 — Category Code Full Stack

## Context
Module: M01 Purchase Requisition | FSD v2.3 | Spinrise ERP
Stack: ASP.NET Core 8 / Dapper / React 18
Rule: NO DB table changes. SP updates allowed (add @CATCODE param + new CategoryExists SP).

## FSD Reference
- §2 Item Grid Col 10: Category Code — `PO_PRL.CATCODE`, varchar(1), optional, lookup against `IN_CAT`.
- §4.3: Must exist in `IN_CAT` if entered. Lookup popup auto-opens on invalid code.

## Current State
`CategoryCode`/`CATCODE` is absent from every layer: DTO, SP params, repo, frontend.
Domain entity has `CatNo` (legacy FRX field). DB column `PO_PRL.CATCODE` exists.

## Tasks

### T1 — Add CategoryCode to DTOs
**Files:**
- `CreatePRLineDto.cs` — add `public string? CategoryCode { get; set; }` with `[StringLength(1)]`
- `UpdatePRLineDto.cs` — same
- `PRLineResponseDto.cs` — add `public string? CategoryCode { get; set; }`

### T2 — Add SP Constant
**File:** `Spinrise.Shared/Constants.cs` — inside `StoredProcedures.PurchaseRequisition`:
```csharp
public const string CategoryExists = "ksp_PR_CategoryExists";
```

### T3 — Add Repository Method
**Files:** `IPurchaseRequisitionRepository.cs` + `PurchaseRequisitionRepository.cs`

Interface:
```csharp
Task<bool> CategoryExistsAsync(string divCode, string catCode);
```
Implementation: call `ksp_PR_CategoryExists` SP with `@DivCode`, `@CatCode` params, return bool (1/0).

Add `@CATCODE` to `InsertLineAsync` Dapper params:
```csharp
new { ..., CatCode = line.CategoryCode }
```

### T4 — Add Validation in Service
**File:** `PurchaseRequisitionService.cs`

In both `ValidateCreateLinesAsync` and `ValidateUpdateLinesAsync`:
```csharp
if (!string.IsNullOrWhiteSpace(line.CategoryCode))
{
    if (!await _repo.CategoryExistsAsync(divCode, line.CategoryCode))
        errors.Add($"Line {lineNo}: Category Code not found.");
}
```

### T5 — Add Frontend Field
**Files:**
- `types.ts`: add `categoryCode?: string` to `PRLineFormItem` and `CreatePRLineRequest`
- `PRItemFormV2.tsx`: add Input field, maxLength 1, label "Category Code", after `machineNo` field

### SP Changes Required
**`ksp_PR_InsertLine.sql`** — add `@CATCODE varchar(1) = NULL` parameter, include in INSERT.
**`ksp_PR_ExistsChecks.sql`** — add new proc `ksp_PR_CategoryExists`:
```sql
CREATE OR ALTER PROCEDURE ksp_PR_CategoryExists
    @DivCode varchar(2),
    @CatCode varchar(1)
AS
    SELECT COUNT(1) FROM IN_CAT
    WHERE CATCODE = @CatCode
      AND DIVCODE = @DivCode
```

## Do NOT Change
- DB table schemas
- Any other module's SP
- `ksp_PR_Update.sql` — category on update handled by delete+reinsert (SoftDeleteLines + InsertLine)
