# Session Log — 2026-04-24 — P01: RM → ₹ Currency Fix (CRITICAL)

**Session Type:** Bug Fix — Currency / Locale
**Developer:** Abinandan N
**Build result:** Frontend TypeScript ✅ 0 errors

---

## What Was Done

Replaced every Malaysian Ringgit reference (RM) with Indian Rupee (₹) and every `en-MY` locale with `en-IN` across the entire purchase-requisition feature.

---

## Files Changed (3 files, 12 occurrences)

### `components/v2/PRLineItemsTable.tsx` — 8 occurrences

| Location | Before | After |
|---|---|---|
| L376 — Unit Price column formatter | `` `RM ${...toFixed(2)}` `` | `` `₹ ${...toFixed(2)}` `` |
| L387 — Total column formatter | `` `RM ${...toLocaleString('en-MY', ...)}` `` | `` `₹ ${...toLocaleString('en-IN', ...)}` `` |
| L475 — Rate History inline column title | `'Rate (RM)'` | `'Rate (₹)'` |
| L476 — Rate History render | `` `RM ${...toFixed(2)}` `` | `` `₹ ${...toFixed(2)}` `` |
| L635 — Entry form label | `Unit Price (RM)` | `Unit Price (₹)` |
| L642 — InputNumber prefix (rate field) | `prefix="RM"` | `prefix="₹"` |
| L773 — Grand Total footer | `RM {subtotal.toLocaleString('en-MY', ...)}` | `₹ {subtotal.toLocaleString('en-IN', ...)}` |
| L857 — Max Cost InputNumber prefix | `prefix="RM"` | `prefix="₹"` |

### `components/v2/PRRateHistoryModal.tsx` — 2 occurrences

| Location | Before | After |
|---|---|---|
| L42 — Column title | `'Rate (RM)'` | `'Rate (₹)'` |
| L49 — Tag render | `RM {Number(v ?? 0).toFixed(2)}` | `₹ {Number(v ?? 0).toFixed(2)}` |

### `pages/PurchaseRequisitionV2Page.tsx` — 2 occurrences

| Location | Before | After |
|---|---|---|
| L491 — Subtotal display | `RM {subtotal.toLocaleString('en-MY', ...)}` | `₹ {subtotal.toLocaleString('en-IN', ...)}` |
| L505 — Grand Total display | `RM {subtotal.toLocaleString('en-MY', ...)}` | `₹ {subtotal.toLocaleString('en-IN', ...)}` |

---

## Verification

- `grep -r "RM|en-MY" src/features/purchase-requisition/**/*.tsx` → **0 matches**
- `npx tsc --noEmit` → **0 errors**

---

## P01 Status: COMPLETE ✅
