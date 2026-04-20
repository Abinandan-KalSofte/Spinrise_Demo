# Session 4 — Composite Duplicate Check + MINLEVEL Validation

## Context
Module: M01 Purchase Requisition | FSD v2.3 | Spinrise ERP
Stack: ASP.NET Core 8 / Dapper
Rule: NO DB table changes. New SP allowed for MINLEVEL check.

## FSD References
- IST-15: Uniqueness rule = `ItemCode + MachineNo` composite (not ItemCode alone).
- §4.3: Qty must be >= `IN_ITEM.MINLEVEL` (if MINLEVEL > 0). Warning, not hard stop.

## Current State
- `ValidateCreateLinesAsync`: duplicate key = `itemCode` only (wrong — should be `itemCode|machineNo`).
- `ValidateUpdateLinesAsync`: already uses `itemCode|machineNo` composite (correct).
- No MINLEVEL check exists anywhere in the codebase.

## Tasks

### T1 — Fix Duplicate Check on Create
**File:** `PurchaseRequisitionService.cs` → `ValidateCreateLinesAsync`

Find:
```csharp
var seen = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
// ...
if (!seen.Add(line.ItemCode))
```

Replace with:
```csharp
var seen = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
// ...
var compositeKey = $"{line.ItemCode}|{line.MachineNo ?? ""}";
if (!seen.Add(compositeKey))
    errors.Add($"Line {lineNo}: {PRMessages.DuplicateItemMachine}");
```

Error message constant already defined: `PRMessages.DuplicateItemMachine`.

### T2 — Add MINLEVEL SP Constant
**File:** `Spinrise.Shared/Constants.cs` — inside `StoredProcedures.PurchaseRequisition`:
```csharp
public const string GetItemMinLevel = "ksp_PR_GetItemMinLevel";
```

### T3 — Add Repository Method
**Files:** `IPurchaseRequisitionRepository.cs` + `PurchaseRequisitionRepository.cs`

Interface:
```csharp
Task<decimal> GetItemMinLevelAsync(string divCode, string itemCode);
```

Implementation:
```csharp
public async Task<decimal> GetItemMinLevelAsync(string divCode, string itemCode)
{
    var connection = _uow.Connection ?? throw new InvalidOperationException(...);
    var result = await connection.ExecuteScalarAsync<decimal?>(
        StoredProcedures.PurchaseRequisition.GetItemMinLevel,
        new { DivCode = divCode, ItemCode = itemCode },
        transaction: _uow.Transaction,
        commandType: CommandType.StoredProcedure);
    return result ?? 0m;
}
```

### T4 — Add MINLEVEL Warning in Service
**File:** `PurchaseRequisitionService.cs`

In both `ValidateCreateLinesAsync` and `ValidateUpdateLinesAsync`, after qty > 0 check:
```csharp
var minLevel = await _repo.GetItemMinLevelAsync(divCode, line.ItemCode);
if (minLevel > 0 && line.QtyRequired < minLevel)
    warnings.Add($"Line {lineNo}: Required Quantity is below minimum order quantity ({minLevel}). Please confirm.");
```

Return warnings in service result alongside errors (warnings do NOT block save).
Update return type of `ValidateCreateLinesAsync` / `ValidateUpdateLinesAsync` to include warnings list if not already present.
Surface warnings in API response via `PRMessages` class addition: `QuantityBelowMinLevel`.

### SP Changes Required
**New file: `ksp_PR_GetItemMinLevel.sql`**
```sql
CREATE OR ALTER PROCEDURE ksp_PR_GetItemMinLevel
    @DivCode varchar(2),
    @ItemCode varchar(10)
AS
    SELECT ISNULL(MINLEVEL, 0)
    FROM IN_ITEM
    WHERE ITEMCODE = @ItemCode
      AND DIVCODE = @DivCode
```

## Do NOT Change
- Update duplicate check (already correct — itemCode|machineNo)
- DB table schemas
- Any other validation logic
