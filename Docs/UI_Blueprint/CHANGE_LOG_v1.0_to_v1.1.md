# SPINRISE Blueprint v1.0 → v1.1 Change Log
**Prepared by:** Abinandan N  
**Date:** 08 May 2026  
**Review Status:** Pending Sasi signature  

---

## MUST FIX — 7 Items

### M1: Add Mode Suppression Rule (Sections 4.1, 5.1)
**Issue:** KPI cards 3–5 (Created By, Approval Status) and Approval Pipeline display rules missing for Add mode.  
**Location:** 
- Section 4.1 (p.6): KPI Strip table lists all 5 cards, no mode-aware display rules
- Section 5.1 (p.7): Single-Screen Architecture table, no Add mode suppression

**Fix:** Add new subsection **5.1.1 Add Mode Display Rule**
```
In Add mode: KPI strip shows only Total Lines and Approx. Budget. 
Created By, Approval Status, and Approval Pipeline are hidden. 
All three activate with real data after first save.
```
**Status:** ✓ IMPLEMENTED

---

### M2: Value and Cost Formula Correction (Section 5.4, p.8)
**Issue:** Conflates two distinct Kalsofte ERP financial fields.  
**Current (WRONG):**
```
Approximate Cost | 2 | ₹ 30,750.00 | Rate + Tax (displayed, not editable)
```

**Fix — Replace with two rows:**
```
Value             | 2 | ₹ 30,368.25  | Quantity × Rate (editable when rate manual, else auto-calculated)
Cost (Landed)     | 2 | ₹ 30,750.00  | Value + Tax + Insurance + Freight + Other charges (read-only, grey)
```
**Rationale:** Item Value and Item Cost are distinct calculations in Kalsofte standard.  
**Status:** ✓ IMPLEMENTED

---

### M3: Budget Category Conditional Field (New subsection under Section 5)
**Issue:** Multi-vertical configuration architecture pattern missing. Budget Category required for Paper Mill capital PRs only.  
**Location:** Entire document — field not present anywhere

**Fix — Add new Section 5.4.1: Multi-Vertical Field Configuration Standard**
```
REFERENCE IMPLEMENTATION: Budget Category

Field Name: Budget Category
Data Type: Dropdown (list from master)
Visibility Rule: Conditional — displays ONLY when:
  • PR Type = Capital (C) AND
  • Division Profile = Paper Mill
Mandatory Flag: Yes (when visible on Paper Mill screens)
Hidden/Invisible: All other divisions (spinning mills, trading, etc.)

Architecture Pattern: This conditional display logic establishes 
the reference pattern for all future vertical-specific fields in 
SpinRise. All such fields must follow this structure:
  - Visibility rule documented in Blueprint
  - Backend configuration table maps field to division + transaction type
  - Frontend renders conditionally based on logged-in user's division profile

Sasi to confirm backend configuration table design before final sign-off.
```
**Status:** ✓ IMPLEMENTED

---

### M4: PR Type Configurable Default (Section 14, p.19)
**Issue:** Smart Defaults table missing PR Type as customer/division-configurable parameter.  
**Location:** Section 14 "Smart Defaults" row: Sample=No, Date=Today listed; PR Type default absent

**Fix — Add row to Smart Defaults table:**
```
PR Type Default | Customer/Division configurable at implementation time | 
                | Not hardcoded. Set per customer profile during setup.
```
**Status:** ✓ IMPLEMENTED

---

### M5: Add Multiple Interaction Pattern (Section 5.5, p.8)
**Issue:** Multi-select item lookup + quick row-count insert pattern not documented.  
**Location:** 
- Section 5.5 (Tab Sequence & Mandatory Field): Mentions "Add Line button" for subsequent rows
- Section 6 (Lookup Modal): Mentions "Multi-select checkbox" but no combined pattern

**Fix — Add new row to Section 5.5 table:**
```
Add Multiple button | Opens combined interaction: 
                    | (1) Multi-select item lookup — for browse users, 
                    |     selected items load as individual rows
                    | (2) Quick row-count input — for experienced users, 
                    |     inserts N blank rows with cursor on Item Code of first row
                    | Both modes must be available in same modal.
                    | Named customer requirement: Pallvaa Mills, SKS
                    | (Raised by Sasi in FSD review)
```
**Status:** ✓ IMPLEMENTED

---

### M6: Cover Page "Reviewed By" Correction (Page 1)
**Issue:** Shows reviewer name before review is complete — document control error.  
**Current:**
```
Reviewed By | Sasikumar R — Technical Lead (Development)
```

**Fix:**
```
Reviewed By | Review In Progress — Sasikumar R
```
**Update condition:** Change to "Reviewed By: Sasikumar R" only after Sasi sign-off email received.  
**Status:** ✓ IMPLEMENTED

---

### M7: PR List Screen Reference (Section 5, p.7)
**Issue:** Companion list screen requirement not acknowledged in Blueprint.  
**Location:** Entire document — only PR entry form covered, no list screen reference

**Fix — Add new subsection Section 5.9: PR List Screen Acknowledgment**
```
COMPANION SCREEN: PR List Screen

A document register screen is required for the Purchase Requisition module. 
Standard features (approved status badge column, filter by status, pagination) 
are to be added to Blueprint v1.1 after FSD amendment approval and 
IST column requirements are confirmed.

Timeline: Seenivasan and Palanivel's input on list screen columns due Fri 8 May 
to Mariyaiya. Formal spec in Blueprint v1.1.
```
**Status:** ✓ IMPLEMENTED

---

## MUST CLARIFY — 3 Items

### C1: AG Grid Enterprise Status Marker (Section 7.1, p.11)
**Issue:** Recommendation presented as decided standard, not proposed.  
**Current:**
```
7.1 Grid Component Comparison
PROPOSED RECOMMENDATION — Pending CEO Decision.
```

**Fix — Enhance header:**
```
7.1 Grid Component Comparison
STATUS: PROPOSED — Pending CEO Decision (Fri 8 May 2026)

Note: Comparison table and grid design standards in Section 7.3 that do not 
depend on library selection (row height, column alignment, etc.) are CONFIRMED. 
The library selection itself is PENDING CEO approval.
```
**Status:** ✓ IMPLEMENTED

---

### C2: Rate Selection Logic Alignment (Section 5.4 vs Section 14)
**Issue:** Section 5.4 implies 3-option toggle is confirmed; Section 14 correctly defers to FSD.  
**Current Section 5.4:**
```
Rate (Unit Price) | 4 | ₹ 125.7500 | User input / Last PO Rate / Avg Rate
```

**Current Section 14:**
```
Rate selection clarity | FSD gap: Last PO Rate / Average Rate / Manual Entry 
                       | (with Justification field). Decision pending Mariyaiya FSD amendment.
```

**Fix — Update Section 5.4 Rate row:**
```
Rate (Unit Price) | 4 | ₹ 125.7500 | [DEFERRED] Last PO Rate / Avg Rate / Manual Entry 
                  |   |           | (with Justification field) — to be confirmed in Blueprint v1.1 
                  |   |           | after FSD amendment approved by CEO.
```
**Status:** ✓ IMPLEMENTED

---

### C3: Ant Design 5 Approval Claim (Section 13.1, p.17)
**Issue:** Marked as "CEO-approved" when it was simply carried forward as current stack.  
**Current:**
```
UI Framework | Ant Design 5 | Ant Design 5 | RETAIN | CEO-approved; comprehensive component set for ERP
```

**Fix:**
```
UI Framework | Ant Design 5 | Ant Design 5 | RETAIN | Current stack — under review for grid component selection. 
             |              |              |        | Not explicitly CEO-approved independent of component library decision.
```
**Status:** ✓ IMPLEMENTED

---

## Summary Statistics

| Category | Count | Status |
|----------|-------|--------|
| Must Fix | 7 | ✓ All implemented |
| Must Clarify | 3 | ✓ All implemented |
| **Total** | **10** | **✓ Complete** |

---

## Document Versioning

- **v1.0** (08 May 2026): Initial release — QA review identified 10 items
- **v1.1** (08 May 2026, EOD): All corrections implemented — awaiting Sasi review
- **v1.2** (Post-Sasi review): Post Sasi sign-off, submit to CEO for final approval

---

## Review Sign-Off

**Developer (Abinandan):** Implemented all 10 corrections  
**Technical Lead (Sasi):** [ ] Reviewed and approved  
**CEO (T. Mani):** [ ] Final approval granted

