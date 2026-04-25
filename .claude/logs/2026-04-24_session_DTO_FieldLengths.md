# Session Log — DTO Field Length Fixes
**Date**: 2026-04-24  
**Branch**: master  
**Trigger**: Runtime validation error — `iType` "Must be at most 1 characters" + `reqName` "Must be at most 10 characters"

---

## Root Cause

Backend DTOs had `[StringLength]` values copied from VB6 field guesses rather than the actual `po_prh` / `po_prl` DB table column lengths. FSD + DB schema review revealed all discrepancies.

**`iType`**: `[StringLength(1)]` → was set in P25 assuming VB6 ABCFLG = CHAR(1), but `po_type.TYPE_CODE` values are multi-character and `po_prh.IType` is `VARCHAR(20)`.

**`reqName`**: `[StringLength(10)]` → frontend Select sends `pr_emp.ename` (full employee name), which exceeds 10 chars. DB column is `VARCHAR(100)`.

---

## Ground Truth Reference

All lengths now match **`po_prh`** and **`po_prl`** DB table column definitions from `Spinrise.DBScripts/Scripts/01 Tables/`.

---

## Changes Made

### Backend — `CreatePRHeaderDto.cs`
| Field | Before | After | DB Column |
|---|---|---|---|
| `DepCode` | `[StringLength(3)]` | `[StringLength(10)]` | `VARCHAR(10)` |
| `Section` | `[StringLength(20)]` | `[StringLength(100)]` | `VARCHAR(100)` |
| `IType` | `[StringLength(1)]` | `[StringLength(20)]` | `VARCHAR(20)` |
| `ReqName` | `[StringLength(10)]` | `[StringLength(100)]` | `VARCHAR(100)` |
| `RefNo` | `[StringLength(20)]` | `[StringLength(50)]` | `VARCHAR(50)` |
| `PoGroupCode` | `[StringLength(5)]` | `[StringLength(20)]` | `VARCHAR(20)` |
| `ScopeCode` | `[StringLength(2)]` | `[StringLength(20)]` | `VARCHAR(20)` |
| `SaleOrderNo` | `[StringLength(25)]` | `[StringLength(50)]` | `VARCHAR(50)` |

### Backend — `UpdatePRHeaderDto.cs`
Same changes as `CreatePRHeaderDto` (was a duplicate of the old wrong values).

### Backend — `CreatePRLineDto.cs` (also affects `UpdatePRLineDto` via inheritance)
| Field | Before | After | DB Column |
|---|---|---|---|
| `ItemCode` | `[StringLength(10)]` | `[StringLength(30)]` | `VARCHAR(30)` |
| `Uom` | `[StringLength(3)]` | `[StringLength(20)]` | `VARCHAR(20)` |
| `Place` | `[StringLength(40)]` | `[StringLength(100)]` | `VARCHAR(100)` |
| `Remarks` | `[StringLength(100)]` | `[StringLength(500)]` | `VARCHAR(500)` |
| `MachineNo` | `[StringLength(5)]` | `[StringLength(30)]` | `VARCHAR(30)` |
| `CostCentreCode` | `[StringLength(5)]` | `[StringLength(20)]` | `VARCHAR(20)` |
| `BudgetGroupCode` | `[StringLength(4)]` | `[StringLength(20)]` | `VARCHAR(20)` |
| `LastPoSupplierCode` | `[StringLength(8)]` | `[StringLength(20)]` | `VARCHAR(20)` |

Fields kept unchanged (correct): `ItemName` (200), `LastPoSupplierName` (100), `Model` (100), `CategoryCode` (1 — `in_cat.CATCODE` is CHAR(1)), `DrawNo` (25), `CatNo` (25).

### Frontend — `PRHeaderCards.tsx`
| Field | Before | After |
|---|---|---|
| `refNo` Input | `maxLength={20}` | `maxLength={50}` |
| `poGroupCode` Input | `maxLength={5}` | `maxLength={20}` |
| `saleOrderNo` Input | `maxLength={25}` | `maxLength={50}` |
| `section` Input | `maxLength={20}` | `maxLength={100}` |
| `scopeCode` Input | `maxLength={10}` | `maxLength={20}` |

### Frontend — `PRLineItemsTable.tsx` (entry form + drawer)
| Field | Before | After |
|---|---|---|
| `remarks` (entry row) | `maxLength={100}` | `maxLength={500}` |
| `drawNo` | `maxLength={30}` | `maxLength={25}` |
| `catNo` | `maxLength={30}` | `maxLength={25}` |
| `place` | `maxLength={50}` | `maxLength={100}` |
| `categoryCode` (drawer) | `maxLength={10}` | `maxLength={1}` |
| `remarks` (drawer) | `maxLength={100}` | `maxLength={500}` |
| `model` (drawer) | `maxLength={50}` | `maxLength={100}` |

---

## Build Status
- `Spinrise.Application` (DTOs): **0 errors, 0 warnings**
- Frontend TypeScript (`tsc --noEmit`): **clean**
- Solution-level: DLL lock errors only (dev server PID running) — not C# errors
