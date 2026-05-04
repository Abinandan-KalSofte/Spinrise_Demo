# M02 Migration Plan — Feedback & Gap Analysis
**Date:** 2026-04-29  
**Plan reviewed:** `RMIContractwithoutsample_withPR1-web-migration-steps.md`  
**Legacy source:** `RMIContractwithoutsample_withPR1.frm` (VB6, ~11,000 lines)  
**Current build state:** Phase 6c complete — backend + frontend skeleton live, lookup fields wired

---

## Overall Assessment

The migration plan is **architecturally sound** and the 20-step sequence is logical. The core backend architecture (Controller → Service → Repository → SP → JAT DB) correctly implements the plan's 3-layer target. However, **significant field and UX gaps exist between what has been built and what the legacy form actually persists** to `RM_CONT`.

---

## Section-by-Section Findings

### ✅ Section 3 — Business module split
**Status: Partially done.**

| Module | Status |
|---|---|
| PurchaseOrderHeader | Built |
| PurchaseOrderLine | Built |
| PurchaseOrderDeliverySchedule | Built |
| PurchaseOrderTax | Inline only — no dedicated service |
| PurchaseOrderAttachment | ❌ Not started |
| PurchaseOrderAuditLog | Stub only (RM_Trans_Log SP exists, not wired in service) |
| SampleToPO | ❌ Not started |
| PRToPO | ✅ PRLinePickerModal built |
| SupplierLotAllocation | ❌ Not started |

---

### ❌ Section 5 — Header fields gap (critical)

Legacy VB6 SELECT (line 4026 of .frm) reads **41 distinct header columns** from `RM_CONT`. Our `POHeaderFormValues` maps only **20**.

**Fields in legacy that are MISSING from current build:**

| Legacy column | Meaning | Priority |
|---|---|---|
| `brkcd` | Broker / agent code | High |
| `carcode` | Carrier / transport company | High |
| `arrivaltype` | P = bale/piece, K = kg — drives entire quantity logic | **Critical** |
| `rateunit` | Rate per candy / per kg / per bale | **Critical** |
| `remarks` | Free-text PO remarks | High |
| `billadd` | Billing address code | High |
| `deladd` | Delivery address code | High |
| `contperson` | Contact person | Medium |
| `PAYTERMS` / `Paycode` | Payment term code (separate from paymode) | High |
| `CreditDays` | Credit period in days | Medium |
| `InterestPer` | Interest percentage | Medium |
| `DeliveryTerms` | Delivery terms text | Medium |
| `Terms1`, `Terms1Days` | Payment term 1 details | Medium |
| `Terms2`, `Terms2Days` | Payment term 2 details | Medium |
| `purtype` | Purchase type (local/import etc.) | High |
| `Prefix` | PO number prefix | High |
| `prepdate` | Prepared date (≠ contDt — time of preparation) | Medium |
| `perbaletruckbale` | Per bale truck bale qty | Low |
| `Finalweighment` | Final weighment flag | Low |
| `MILLREFNO` | Mill reference number | Low |

**`arrivaltype` and `rateunit` are business-critical** — the entire quantity tracking (ordQty vs ordKgs) depends on arrival type. Without it, the PO cannot correctly integrate with GRN/arrival modules.

---

### ❌ Section 5 — Line fields gap

**Fields in `RsMod` (line-level VB6 query) missing from `POLineFormItem`:**

| Legacy column | Meaning | Priority |
|---|---|---|
| `Grade` | Cotton grade | Medium |
| `Staple` | Staple length | Medium |
| `MIC` | Micronaire value | Medium |
| `Strength` | Fibre strength | Medium |
| `Moisture` | Moisture content | Medium |
| `Trash` | Trash content | Medium |
| `freightperbale` | Freight per bale | Low |
| `rmpaycode` | RM-specific payment code | Low |
| `tax_choice` | Common vs item-wise tax (per line) | High |
| `TaxPer` | Tax percentage | High |
| `OthTaxPer` | Other tax percentage | Medium |
| `BedPer`, `SEDPER`, `HsCessPer` | Legacy cess fields (pre-GST, may be unused) | Low |

The **quality parameters** (Grade, Staple, MIC, Strength, Moisture, Trash) are shown in Section 5 of the plan as a dedicated UI section — this section has not been started at all.

---

### ⚠️ Section 6 — Backend services

**Status: Monolithic — all logic in `PurchaseOrderService`.**

The plan recommends splitting into:
- `PurchaseOrderValidationService` → not separate; inline in service
- `PurchaseOrderNumberService` → handled by SP only (correct approach for Dapper)
- `PurchaseOrderTaxService` → no GST computation service; client computes defaults
- `PurchaseOrderScheduleService` → no dedicated service
- `PRAllocationService` → no dedicated service

**Verdict:** For the current Dapper/SP architecture, full service splitting is over-engineering. However, the **validation layer** (section 10) is the most important gap — currently there is almost no Level 2 (API-side) validation.

---

### ⚠️ Section 9 — Frontend screen coverage

| Plan section | Built | Gap |
|---|---|---|
| Section 1: Header | Partial | Missing: agent, carrier, arrival type, rate unit, remarks, billing/delivery address, contact, payment terms, credit days, purchase type, delivery terms |
| Section 2: Line items | ✅ Core done | Missing: quality params per line, tax mode per line, tax% |
| Section 3: Delivery schedule | ✅ Basic done | Missing: delivery address lookup (currently free text) |
| Section 4: Commercials & tax | Partial | Tax mode selector not functional; TCS, commission ✅; cess fields missing |
| Section 5: Quality parameters | ❌ Not built | Grade, Staple, MIC, Strength, Moisture, Trash |
| Section 6: Attachments & output | ❌ Not built | File upload, PDF print |

---

### ❌ Section 10 — Validation (major gap)

| Validation level | Status |
|---|---|
| Level 1: Client-side (required, format) | Partial — only required supplier + at least one line |
| Level 2: API validation (supplier active, PR balance, duplicate variety, HSN present) | ❌ Not implemented |
| Level 3: Transaction validation inside save | ❌ Not implemented — save SP does basic inserts only |

**Specific missing validations from VB6:**
- Supplier must exist in `fa_slmas` before save
- Payment mode must exist in `rm_pmode` (VB6 line 9573 checks count)
- Currency must exist in `fa_currency`
- GST% sum check: if CGST+SGST+IGST = 0, warn user (VB6 line 4574)
- Variety must be active (`Is_Active = 'Y'` in rm_var — VB6 line 6067)
- Duplicate variety in same PO (VB6 checks this on save)
- Area must exist in `rm_area` (VB6 line 9563)
- PR balance — ordQty ≤ PR balanceQty

---

### ❌ Section 12 — File handling

**Status: Not started.** Legacy stores supplier file name in `SupFileName` column. The plan recommends a proper attachment table — this is Phase 2/3 work but `SupFileName` field is present in our DTO and should at least be wired to a file upload input.

---

### ✅ Section 13 — Transaction safety

`PurchaseOrderRepository.CreateAsync` correctly wraps all inserts (header, lines, delivery, discount rates, slot no, audit log) inside `IJATUnitOfWork` with begin/commit/rollback. **This matches the plan's requirement.**

---

### ⚠️ Section 14 — Audit log

`ksp_RMI_PO_InsertAuditLog` SP exists and is called in the save path. However:
- No JSON snapshot of before/after state
- Delete reason flow (`RM_DelReason`) SP exists but delete UI is not built

---

## Dropdown UX Issue (pending fix)

All lookup fields (Supplier, Area, Variety, Payment Mode, Currency) currently store only the **code** in the form field but show `code – name` in the dropdown options. After selection, the stored value reverts to just the code, giving the user no visual confirmation of what they selected.

**Required fix:** After selection, the displayed value in the field should remain `CODE – Name` (combined) so the user always sees both. The saved/submitted value is still just the code.

---

## Priority Action List

### P0 — Blocking correctness

| # | Item |
|---|---|
| 1 | Add `arrivaltype` field to header form (P = bale, K = kg) — drives GRN integration |
| 2 | Add `rateunit` field to header form (drives rateKg calculation basis) |
| 3 | Fix lookup dropdown UX — show `CODE – Name` combined after selection |
| 4 | Deploy `merged_jat.sql` to JAT DB (5 new lookup SPs not yet in DB) |
| 5 | Validate variety `Is_Active = 'Y'` before allowing save |
| 6 | Validate CGST+SGST+IGST > 0 on each line (or warn if all zero and tax_choice = G) |

### P1 — High value missing fields

| # | Item |
|---|---|
| 7 | Add `brkcd` (broker), `carcode` (carrier), `purtype` (purchase type) to header |
| 8 | Add `remarks`, `billadd`, `deladd`, `contperson` to header |
| 9 | Add `PAYTERMS`/`Paycode`, `CreditDays`, `InterestPer` to header |
| 10 | Add `tax_choice` (Common/Item-wise) to header with conditional UI behavior |

### P2 — Important but deferrable

| # | Item |
|---|---|
| 11 | Quality parameters section (Grade, Staple, MIC, Strength, Moisture, Trash) per line |
| 12 | Supplier file attachment upload (wire `SupFileName` to file input) |
| 13 | Level 2 API validations: supplier active, area exists, payment mode exists, currency exists |
| 14 | Delete flow with reason (RM_DelReason lookup + soft delete SP) |

### P3 — Phase 3+

| # | Item |
|---|---|
| 15 | Sample-to-PO flow |
| 16 | Supplier lot range → slot number generation |
| 17 | QuestPDF print template |
| 18 | Audit log JSON snapshots |

---

## What the Plan Gets Right

1. **"Build APIs before UI"** — followed correctly; all SPs and backend layers were built before the form.
2. **"Preserve transaction safety"** — the `IJATUnitOfWork` wrapping is correct.
3. **"Do not block form migration because report migration is not complete"** — print deferred correctly.
4. **"Phased delivery"** — Phase 1 (list/detail) and Phase 2 (new PO) are in progress; Phase 3 (sample, lot) correctly deferred.
5. **"Normalize JAT column names before writing code"** — done (column audit session 2026-04-25).

## What the Plan Underestimates

1. **`arrivaltype` complexity** — This single field changes how all quantity maths, GRN matching, and reporting work. It deserved its own section.
2. **Two-database architecture** — Plan does not mention that lookups (fa_slmas, rm_var, rm_area) are in JAT, not SpinRiseSaranya. This caused a real bug (wrong UoW used for lookup SPs).
3. **`RM_CONT` one-row-per-line design** — Header fields are duplicated across every line row. The plan treats it as header-detail but the actual table has no separate header table.
4. **Dropdown UX standard** — Plan says "build lookup APIs" but doesn't specify that all dropdowns must show `code – name` in the selection field (not just in the dropdown list). This is a VB6 convention that must carry over.
