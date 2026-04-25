# Session Log — Bug Fix Prompts + VB6 Deep Analysis
**Date**: 2026-04-24  
**Branch**: master  
**Trigger**: User request — rewrite Bug_Fix_Prompts.md after deep analysis of tmpPoindent.frm (VB6 source) against Bugs.md

---

## Work Done

### 1. VB6 Source Analysis — `tmpPoindent.frm` (7,453 lines)

Read and cross-referenced key sections:
- **Lines 260–409**: Header control definitions (DataField bindings, MaxLength, Visible, DataFormat)
- **Lines 2700–2900**: Save button (Case 9) — INSERT statement, validation sequence
- **Lines 3369–3668**: AddItem logic, Combo2_Click, PlaceTextBox usage

Key findings that corrected earlier assumptions:

| Finding | Detail |
|---|---|
| `reqname` stores NUMERIC CODE | `txtfields(1)` DataFormat=numeric "0"; INSERT: `val(txtfields(1).Text)` — NOT employee name |
| `Text4` is read-only display only | Auto-filled from `pr_emp.ename`; never written to DB |
| `itype` = extracted short code | `Combo2_Click()`: `Text5.Text = Mid(ss, 1, InStr(ss,"--")-1)` → `adoPrimaryRS("itype") = Text5.Text` |
| `poGroupCode` = `PO_GRP` (txtfields(7)) | `Visible=0 'False` by default; enabled only when `PurTypeFlg=1` |
| Current UI label "Cost Centre" on poGroupCode is WRONG | VB6 `txtfields(7)` DataField=`PO_GRP` = Order Type / PO Group |
| `PlaceTextBox` is real in VB6 | col 15 in grid → `po_prl.place`; bug says remove from NEW UI entry form only |
| `Section` MaxLength=20 in VB6 | Intentional extension in our DB (VARCHAR 100) and DTO (StringLength 100) |
| `scopeCode` is numeric format | DataFormat="0" in VB6 form definition |

### 2. Rewrote `Bug_Fix_Prompts.md`

**Location**: `D:/Spinrise/Docs/M01/24-04-2026/Bug_Fix_Prompts.md`

Content:
- VB6 Ground Truth summary table at top
- B01–B07: All 7 bugs with precise implementation steps
- F01–F03: FSD alignment items
- FSD Field Validation Checklist updated with VB6 control references
- Implementation order (8 items)
- Session notes section

Key changes from previous version:
- B04/F01: Confirmed `reqName` = empNo code — VB6 `val(txtfields(1).Text)` is the proof
- B05: Added note that "Cost Centre" label is wrong; poGroupCode should be "PO Group"; added `disabled={!purTypeFlgEnabled}` to Select
- B07: Confirmed Place is a real VB6/DB field; only the UI Col is removed; isSample merge into Row 3 added
- VB6 control column added to FSD checklist table

---

## Files Changed

| File | Change |
|---|---|
| `D:/Spinrise/Docs/M01/24-04-2026/Bug_Fix_Prompts.md` | Complete rewrite with VB6 ground truth |
| `D:/Spinrise/.claude/logs/README.md` | Added this session entry |
| `D:/Spinrise/.claude/logs/2026-04-24_session_BugFixPrompts_VB6.md` | Created (this file) |

---

## Pending Implementation

All items in `Bug_Fix_Prompts.md` remain to be implemented in the next session. Recommended order:
1. B04 + F01 → reqName = empNo (cascades to list + form)
2. B05 → poGroupCode Select, label fix
3. F03 → RefNo uppercase
4. B06 → Collapsible advanced section
5. B07 → Remove Place from entry form, merge isSample to Row 3
6. B02 → Download button per row
7. B03 → Edit passes FY date range
8. B01 → Column auto-width
