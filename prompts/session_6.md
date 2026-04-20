# Session 6 — IType/Remarks Length Fix + DrawNo/CatNo DTOs

## Context
Module: M01 Purchase Requisition | FSD v2.3 | Spinrise ERP
Stack: ASP.NET Core 8 / React 18
Rule: NO DB table changes. SP param additions allowed.

## FSD References
- §8 A.2: `PO_PRH.ITYPE` = `char(1)`. FSD: single char (C=Capital, S=Stores, H=Overhaul).
- Rec #16 (Critical): `PO_PRL.REMARKS` varchar(50) but form allows 100 — data truncation defect. Fix DTO to 100 (DB fix by team separately).
- Rec #28 (High): `DrawNo` (IN_ITEM.DRAWNO) and `CatNo` (IN_ITEM.CATLNO) must appear on printed PR. Domain entity has these but DTOs exclude them.

## Current State
- `CreatePRHeaderDto.IType` = `StringLength(2)` — should be `StringLength(1)`
- `CreatePRLineDto.Remarks` = `StringLength(50)` — should be `StringLength(100)`
- `DrawNo`, `CatNo` exist on `PurchaseRequisitionLine` domain entity but absent from all DTOs
- Frontend `PRLineResponse` missing `model` and `maxCost` fields

## Tasks

### T1 — Fix IType Length on Create
**File:** `CreatePRHeaderDto.cs`
```csharp
// BEFORE
[StringLength(2)]
public string? IType { get; set; }

// AFTER
[StringLength(1)]
public string? IType { get; set; }
```

### T2 — Fix Remarks Length
**File:** `CreatePRLineDto.cs`
```csharp
// BEFORE
[StringLength(50)]
public string? Remarks { get; set; }

// AFTER
[StringLength(100)]
public string? Remarks { get; set; }
```
Note in change log: DB `PO_PRL.REMARKS` is still varchar(50). Team must run DB fix. DTO updated in anticipation.

### T3 — Add DrawNo + CatNo to Line DTOs
**Files:** `CreatePRLineDto.cs`, `UpdatePRLineDto.cs`, `PRLineResponseDto.cs`

Add to each:
```csharp
[StringLength(25)]
public string? DrawNo { get; set; }

[StringLength(25)]
public string? CatNo { get; set; }
```

Map in `InsertLineAsync` Dapper params:
```csharp
new { ..., DrawNo = line.DrawNo, CatNo = line.CatNo }
```

### T4 — Fix Frontend PRLineResponse Type
**File:** `Development/spinrise-web/src/features/purchase-requisition/types.ts`

Find `PRLineResponse` interface. Add:
```typescript
model?: string
maxCost?: number
drawNo?: string
catNo?: string
```

### SP Changes Required
**`ksp_PR_InsertLine.sql`** — add params:
```sql
@DrawNo varchar(25) = NULL,
@CatNo varchar(25) = NULL
```
Include in INSERT column list: `DRAWNO`, `CATNO` (or equivalent column names — verify against DB).

## Do NOT Change
- `UpdatePRLineDto.cs` Remarks/IType (already StringLength(1) and StringLength(50) respectively — update Remarks to 100 only)
- DB table schemas
- Any other DTO or controller
