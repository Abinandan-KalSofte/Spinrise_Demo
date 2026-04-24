# Session Log — PR Print Corrections (CEO Review 2026-04-21)
**Date:** 2026-04-21

## Summary
Applied all three CEO-flagged corrections to the QuestPDF PR print. No SP changes required. Build: 0 errors.

---

## Fix 1 — Created By field added (FSD §12 Rec 17)

**File:** `Spinrise.Infrastructure/Areas/Purchase/Reports/PurchaseRequisitionQuestDocument.cs`

Added "Created By" row to the info section left panel in `BuildInfo()`, sourced from `_header.CreatedBy`.
SP `ksp_PR_GetById` already returns `h.createdby AS CreatedBy` — Dapper maps it to the entity directly. No SP change needed.

Info panel left side now shows 4 rows:
1. Requester Name (KUMARESAN.V)
2. Created By (ERP login username from PO_PRH.createdby)
3. Department
4. Reference

---

## Fix 2 — Requested By footer now dynamic

**File:** `Spinrise.Infrastructure/Areas/Purchase/Reports/PurchaseRequisitionQuestDocument.cs`

- Removed `_user` field and `string user` constructor parameter (was the logged-in API caller's username — wrong source)
- `BuildSignature()` "Requested By" block changed from `_user` → `_header.ReqName ?? ""`
- Updated both call sites in `QuestPdfPurchaseRequisitionService.cs` to remove the `user` argument

---

## Fix 3 — App Cost Value blank on items with ApproxCost = 0

**File:** `Spinrise.Infrastructure/Areas/Purchase/Reports/PurchaseRequisitionQuestDocument.cs`

Root cause: `line.ApproxCost` stored as `0m` in DB (not null). Previous logic:
```csharp
var approxCost = line.ApproxCost ?? lpoValue;  // ?? doesn't trigger on 0m
```
Zero passed through, then `0m == 0m ? "" : ...` rendered blank.

Fix:
```csharp
var approxCost = (line.ApproxCost is null or <= 0m) ? lpoValue : line.ApproxCost.Value;
```
Now falls back to Previous Purchase Rate × QtyRequired when ApproxCost is null or 0.

---

## Files Changed
- `Spinrise.Infrastructure/Areas/Purchase/Reports/PurchaseRequisitionQuestDocument.cs`
- `Spinrise.Infrastructure/Areas/Purchase/Reports/QuestPdfPurchaseRequisitionService.cs`

## No SP changes (merged.sql not modified)
`ksp_PR_GetById` already returns `CreatedBy`. No DB changes required.

## Build Result
```
0 Error(s)
84 Warning(s) — all pre-existing from PO_Sample.cs (legacy FastReport file)
```
