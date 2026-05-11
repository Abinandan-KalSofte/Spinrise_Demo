# CEO PR Form Demo — Action Items
**MOM Ref:** MOM-SPINRISE-PR-20260505 | **Date:** 05 May 2026 | **Prepared by:** Vignesh

---

## Immediate Fixes (done in current session)

| # | Item | File | Status |
|---|---|---|---|
| F4 | Sample field default: "Yes" → **"No"** | PRLineItemsTable.tsx (line 127, 1238) + PRLineItemsTableV2.tsx (line 759) | **Fixed** |

---

## Priority 1 — Field & Form Corrections (do before next IST)

| # | Section | Action Item |
|---|---|---|
| F1 | 3.5 | Unit Price: fix **duplicate currency symbol** |
| F2 | 3.5 | Decimal precision: **Qty = 3dp, Rate = 4dp, Value = 2dp** |
| F5 | 3.5 | Approx Cost/Value: show Rate+Tax; **grey out in read-only mode** |
| F6 | 3.5 | Value field width: **increase** to avoid truncation |
| G1 | 3.2 | Label: "Purchase Requisitions" → **"Purchase Requisition"** (singular) |
| G4 | 3.2 | PR Date: **make editable** + auto-populate with login date |
| U3 | 3.4 | No abbreviations — **"Qty" → "Approved Quantity"** across all labels |
| U4 | 3.4 | All field labels in **CAPS** |
| U5 | 3.4 | Numeric fields: **right-aligned** — text fields: **left-aligned** |
| T1 | 3.6 | Tab sequence: cursor **must not advance** if mandatory field is empty |
| T2 | 3.6 | Item details: **no hyphens** in labels; Tier-1 B2B visual standard |
| P2 | 3.7 | Print: form name label — **must not appear in red** |
| P4 | 3.7 | Print header: **PR Time adjacent to PR Date** |

---

## Priority 2 — Layout & UX Redesign

| # | Section | Action Item |
|---|---|---|
| G2 | 3.2 | KPI cards: **reduce size** — full form must be visible in one screen |
| G3 | 3.2 | **Single-screen design** — zero vertical or horizontal scrolling |
| U6 | 3.4 | **WYSIWYG**: screen must match print at all times |
| U7 | 3.4 | Divider colour: **distinct colour** for section separation; 2–3 lines acceptable |
| U9 | 3.4 | Context-sensitive filters: load matching values **on each keystroke**; related fields (Dept/Section) adjacent and sequential |
| P1 | 3.7 | Print footer: **Total Value** + Kalsofte decimal format |
| P3 | 3.7 | Print footer: **Date + Time stamp** |
| T3 | 3.6 | **Document required filters** for PR Form — confirm before next demo |

---

## Priority 3 — New Features

| # | Section | Action Item |
|---|---|---|
| F3 | 3.5 | **Stamp/image from Item Master** — display on PR form (ref Payroll module) |
| U8 | 3.4 | Count keystrokes — **report as efficiency metric** |

---

## Priority 4 — Login Screen

| # | Section | Action Item |
|---|---|---|
| L1 | 3.1 | Spinrise name/logo: **CEO approval required** before release |
| L2 | 3.1 | Follow **CSM & Subam Portal** login screen standard exactly |
| L3 | 3.1 | Add **Date + Time** (adjacent) to login screen |
| L4 | 3.1 | Add **Company Name, Sequence Order** to login screen |
| L5 | 3.1 | Add **Company Name, Division Name, PO Name** to login screen |

---

## Priority 5 — Web Page Blueprint (new deliverable)

| # | Section | Action Item |
|---|---|---|
| B1 | 3.8 | Prepare **Web Page Blueprint** → submit to CEO |
| B2 | 3.8 | Blueprint must cover: **header/form structure, font, font size, colour terminology** |
| B3 | 3.8 | Align with **Kalsofte development standard**; reference SQL Server 2019 features |

---

## Process Changes (permanent from this MOM)

| Rule | Detail |
|---|---|
| Approval cycle | Every form: **Claude review → IST → TL-IST → PM → CEO** (same as FST process) |
| Visual language | Align with legacy software style — easy, purposeful colours, clear layout |
| Before IST | Always submit to Claude for review first |
| Label standard | Full text, CAPS, no abbreviations, no hyphens |
| Alignment | Numbers right, text left — everywhere |
| Target bar | Tier-1 B2B standard, "Wow factor", must run without IST support |

---

## Status Summary

| Priority | Total Items | Done | Remaining |
|---|---|---|---|
| Immediate | 1 | 1 | 0 |
| P1 — Field/Form | 13 | 0 | 13 |
| P2 — Layout/UX | 8 | 0 | 8 |
| P3 — New Features | 2 | 0 | 2 |
| P4 — Login Screen | 5 | 0 | 5 |
| P5 — Blueprint | 3 | 0 | 3 |
| **Total** | **32** | **1** | **31** |
