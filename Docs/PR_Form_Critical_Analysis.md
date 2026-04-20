# Critical Analysis — Purchase Requisition Form (tmpPoindent.frm)
### Kalsofte ERP · VB6 Platform · SQL Server Backend
**Reviewed by:** Senior ERP Developer Perspective (20 Years — Purchase Order & Store Module)
**Form:** `tmpPOINDENT` | **Caption:** Purchase Requisition
**File Size:** 9,108 lines | **Platform:** VB6 + ADO + SQL Server

---

## 1. Form Overview

| Attribute | Detail |
|---|---|
| Form Name | tmpPOINDENT |
| Caption | Purchase Requisition |
| Window State | Maximized (MDIChild) |
| Tab Control | SSTab1 — Single Tab with embedded frames |
| Primary Table | `po_prh` (PR Header) |
| Detail Table | `po_prl` (PR Line Items) |
| Key OCX Controls | FpSpread (FPSpreadADO), MSDataGrid, SSTab, Crystal Reports, MaskEdBox |
| Recordset Mode | ADO — `adOpenStatic` / `adLockBatchOptimistic` |

---

## 2. Screen Layout

### 2.1 Header Section (Frame1 / Frame2)

| Field | Control | Mandatory | Notes |
|---|---|---|---|
| PR No. | `txtfields(2)` | Auto-generated | System-assigned on Save |
| PR Date | `MaskEdBox1(0)` | Yes | Must equal processing date (backdate controlled by `in_para`) |
| Department | `txtfields(5)` | Yes *(marked red)* | Lookup from `in_dep` |
| Department Name | `Text2` | Auto-fill | Read-only, filled from Department lookup |
| Section | `Text3` | Optional | Free text |
| Sub Cost Centre | `txtfields(4)` | Conditional | Required if BudgetPara = Y (BANNARI customer) |
| Requisition Type | `Combo2` | Optional | Loaded from `po_doc_para` |
| Requester Name | `Text4` | Optional | Auto-filled from employee lookup |
| User | `lblLabels(6)` | Auto | Current logged-in user name from `PP_Passwd` |
| Ref. No. | `txtfields(8)` | Conditional | Mandatory if Department is empty for some customers |
| Sale Order No. | `Text12` | Customer-specific | Visible only for SARANYA customer |
| Sale Order Date | `MaskEdBox3` | Customer-specific | Visible only for SARANYA customer |

### 2.2 Item Entry Section (Frame7 / Buttonframe)

| Field | Control | Mandatory | Notes |
|---|---|---|---|
| Item Code | `ItemCodeTextBox` | Yes *(marked red)* | Lookup from `in_item` |
| Item Name | `ItemNameTextBox` | Auto-fill | Read-only |
| UOM | `Text9` | Auto-fill | From item master |
| Rate | `RateTextBox` | Optional | Last purchase rate auto-filled |
| Current Stock | `Text8` | Auto-fill | From `SP_GetStock` stored procedure |
| Quantity Required | `QtyReqTextBox` | Yes *(marked red)* | Must be > 0 |
| Machine No. | `MachineTextBox` | Optional | Lookup from `mm_macmas` filtered by Department |
| Machine Model | `TxtMacModel` | Auto-fill | From machine master |
| Machine Description | `Text6` | Auto-fill | From machine master |
| Required Date | `MaskEdBox2` | Optional | Must be >= processing date on Add; >= PR Date on Modify |
| Place | `PlaceTextBox` | Optional | Free text |
| Approx. Cost | `AppCostTextBox` | Optional | Numeric, 2 decimal places |
| Remarks | `RemarksTextBox` | Optional | Free text |
| Sample Flag | `ChkSample` | Optional | Checkbox — Y/N |

### 2.3 Main Data Grid (`grddatagrid`)

The grid binds to `adoSecondaryRS` and displays all line items. Key visible columns:

| Column Index | Caption | Notes |
|---|---|---|
| 4 | Item Code | Locked (read from entry frame) |
| 5 | Item Description | Locked |
| 6 | UOM | Locked |
| 7 | Rate | Hidden by default (SKAATT customer) |
| 8 | Current Stock | Auto-filled |
| 9 | Quantity Required | Editable |
| 10 | Category | Hidden |
| 11 | Cost Centre | Editable — validated against `in_cc` |
| 12 | Budget Group | Editable — validated against `in_bgrp` |
| 13 | Machine Code | Editable — validated against `in_mac` |
| 14 | Required Date | Date format DD/MM/YY |
| 15 | Place | Editable |
| 16 | Approx. Cost | Numeric format ##0.00 |
| 17 | Remarks | Editable |
| 19 | Last PO Rate | Auto-filled from `po_ordh/po_ordl` |
| 20 | Last PO Date | Auto-filled |
| 21 | Last PO Supplier Code | Auto-filled |
| 22 | Last PO Supplier Name | Auto-filled |

### 2.4 Item Lookup Pop-up (FrameItem / dlmdfrm)

A floating frame containing:
- **FpSpdIndHead** — Header spread (column headings)
- **FpSpdInd** — Item listing spread (Item Code, Description, UOM, Catalogue No., Drawing No.)
- **CmdItemSelect (OK)** and **CmdCancel** buttons
- Columns: Item Code, Description, UOM, Catalogue No., Drawing No., Pending Qty *(if Pendpodet = Y)*, Delivery Date, Min Level, Max Level, Lead Time, Supplier Name

### 2.5 Stock Summary Pop-up (RecFrame)

A pop-up grid (`Reclist`) showing multi-division stock by executing `SP_GetStock` stored procedure. Visible only for PALLAVA and SHRIGIRI customers.

---

## 3. Toolbar Buttons (BUTTON Control Array)

| Button Index | Function | Key Behaviour |
|---|---|---|
| 0 | **New / Add** | Pre-checks: Item Master, Department Setup, Document No. Setup |
| 9 | **Save** | Full validation + insert to `po_prh` and `po_prl` |
| 10 | **Cancel / Clear** | Rolls back transaction |
| 1 | **Modify** | Loads existing PR for edit |
| 2 | **Delete** | Deletes PR header and lines |
| 3 | **Query / Search** | Searches PR by number and date |
| 4 | **First Record** | Navigation |
| 5 | **Previous Record** | Navigation |
| 6 | **Next Record** | Navigation |
| 7 | **Last Record** | Navigation |
| 12 | **Line Delete** | Deletes specific grid row |
| 13 | **Print** | Crystal Reports print with customer-specific report templates |

---

## 4. Validation Rules (Critical Analysis)

### 4.1 Pre-Add Validations (on Button 0 — New)

| # | Rule | Source |
|---|---|---|
| V1 | Item Master must have at least one record in `in_item` | `Record_Exists("in_item", ...)` |
| V2 | Department must be defined in `in_dep` for this division | `Record_Exists("in_dep where divcode=...")` |
| V3 | Document Number must be configured for 'PURCHASE REQUISITION' in `po_doc_para` | `Record_Exists("po_doc_para where tc=...")` |
| V4 | If backdate is disabled (`in_para.backdate = 'N'`), PR date cannot be earlier than the maximum existing PR date for the year | Checked on Add mode |

### 4.2 Header Field Validations

| # | Field | Rule | Error Message |
|---|---|---|---|
| V5 | PR Date | Must be a valid date | "Please enter valid Date" |
| V6 | PR Date | Must equal processing date (both > and < blocked) | "PR. date must be equal to processing date" |
| V7 | Department | Must exist in `in_dep` for current division | Triggers department lookup popup |
| V8 | Sub Cost Centre | If BudgetPara = Y (BANNARI), must be selected | Cancel = True |
| V9 | Ref. No. | If department is blank for certain flows, Ref No. is required | "Enter the Reference Number" |

### 4.3 Item Line Entry Validations

| # | Field | Rule | Error Message |
|---|---|---|---|
| V10 | Item Code | Must exist in `in_item` (IsItemActive = 1) | Triggers item lookup |
| V11 | Item Code | Duplicate item in same PR is not allowed | "Same Item should not Be repeat" |
| V12 | Item Code + Machine | Same item + same machine combination not allowed in Modify mode | "Same Machine or Same Item should not Be repeat" |
| V13 | Quantity Required | Must be > 0 | Focus returned to QtyReqTextBox silently |
| V14 | Required Date | Must be a valid date | "Invalid Date" |
| V15 | Required Date (Add) | Must be >= processing date | "Required Date must be equal to or after the Processing Date." |
| V16 | Required Date (Modify) | Cannot be < PR Date | "Required Date cannot be less than PR. Date" |
| V17 | Machine Code | Must exist in `mm_macmas` filtered by department | Triggers machine lookup |
| V18 | Cost Centre (Grid Col 11) | Must exist in `in_cc` for current division | Triggers Cost Centre lookup |
| V19 | Budget Group (Grid Col 12) | Must exist in `in_bgrp` | Triggers Budget Group lookup |

### 4.4 Customer-Specific Validations

| # | Customer | Rule |
|---|---|---|
| V20 | SUBAM | If a pending PR (PO not yet raised) exists for the same item, user is warned with PR No. and count. User can exit or continue. Checked via stored procedure `ksp_PendPR` |
| V21 | JTCL | Pending order quantity check via complex item-wise query joining `po_ordl` and `in_trntail` |
| V22 | Any customer with `PendingOrderPara = 'Y'` | On item selection, checks for pending indent via `KSP_INDEDNT_CHECK` stored procedure. Shows pending quantity and offers exit option |
| V23 | SHIVA-I / BANNARI / S.T.COTTEX | Print allowed only after final-level approval (`DirectApp = 'Y'`) | Error: "Final Level Approval not completed. Hence Printout can not be taken" |

---

## 5. Business Logic & Auto-Fill Rules

### 5.1 PR Number Generation
- PR Number is auto-generated using the document number sequence defined in `po_doc_para` (TC = 'PURCHASE REQUISITION')
- Format visible in print: `SUIL/ /YYYY-YY/00{PRNO}` — suggests site-specific prefix (SUIL = customer abbreviation)
- The `Right(yfdate, 2) & divcode & Padl(CDec(Rs(0)) + 1, 5, "0")` pattern generates the next sequential number within the financial year

### 5.2 Auto-Fill on Item Selection
When a valid item is selected:
- **Item Name** — filled from `in_item.itemname`
- **UOM** — filled from `in_item.uom`
- **Rate** — filled from `in_item.rate` (last stored rate)
- **Current Stock** — fetched via stored procedure `SP_GetStock` with date and division context
- **Last PO Rate** — fetched from `po_ordh/po_ordl` (most recent PO for this item)
- **Last PO Date** — same query
- **Last PO Supplier** — supplier code and name from `fa_slmas` joined to `po_ordl`

### 5.3 Auto-Fill on Machine Selection
- **Machine Description** — from `mm_macmas.description`
- **Machine Model** — from `mm_macmas.Model`

### 5.4 Auto-Fill on Department Selection
- **Department Name** — from `in_dep.depname`

### 5.5 Auto-Fill on Sub Cost Centre Selection
- **Sub Cost Centre Name** — from `in_scc.SccName`

### 5.6 Auto-Fill on Employee (Requester) Selection
- **Requester Name** — from `pr_emp.ename`

### 5.7 Pending Indent Warning Logic
If `po_para.PendingOrderPara = 'Y'`:
- On item code entry, executes `KSP_INDEDNT_CHECK` stored procedure
- If pending indent exists for the same item + department + financial year, shows: `"Pending Indent Quantity : {qty}"`
- Offers option to exit the application entirely (`If MsgBox(...) = vbYes Then End`) — **⚠️ Critical design defect — see Section 8**

### 5.8 Pending PO Quantity Display in Item Lookup
If `po_para.Penpodetails = 'Y'`, the item lookup popup shows:
- Pending Qty (ordered but not yet received) — computed as `SUM(ordqty) - SUM(rcvdqty)` from `po_ordl` joined with `po_ordh`
- Delivery Date (max due date from pending POs)
- Min Level, Max Level from item master
- Lead Time — calculated from `in_trntail` (days between issue date and PO date)
- Last Supplier Name — from most recent PO

---

## 6. Database Operations

### 6.1 Tables Read

| Table | Purpose |
|---|---|
| `po_prh` | PR Header — existing records for query/modify/delete |
| `po_prl` | PR Line Items — existing records |
| `in_item` | Item Master — item validation, name, UOM, rate, stock |
| `in_dep` | Department Master — department validation |
| `in_scc` | Sub Cost Centre Master |
| `in_cc` | Cost Centre Master — grid column 11 validation |
| `in_bgrp` | Budget Group Master — grid column 12 validation |
| `in_mac` | Machine Master — grid column 13 validation |
| `mm_macmas` | Machinery Management Master — machine validation with model |
| `fa_slmas` | Supplier Master — last PO supplier name |
| `po_ordh` | PO Header — last PO rate and date |
| `po_ordl` | PO Line Items — pending qty, last rate |
| `in_trntail` | Transaction Tail — lead time calculation |
| `po_para` | PO Parameters — pending order flag, pending PO details flag |
| `in_para` | Inventory Parameters — backdate flag |
| `pp_divmas` | Division Master — print header address |
| `PP_Passwd` | User Master — logged-in user name |
| `po_doc_para` | Document Number Parameters — PR number generation |
| `pr_emp` | Requester Employee Master |

### 6.2 Stored Procedures Called

| Procedure | When Called | Purpose |
|---|---|---|
| `SP_GetStock` | On item code entry | Returns current stock across divisions |
| `KSP_INDEDNT_CHECK` | On item code entry (if PendingOrderPara = Y) | Checks for pending PR for same item/dept |
| `ksp_PendPR` | On item code entry (SUBAM only) | Checks pending PRs where PO not yet raised |

### 6.3 Primary Save Tables (inferred from recordset queries)

| Table | Operation | Key Fields |
|---|---|---|
| `po_prh` | INSERT on Save | DIVCODE, PRNO, PRDATE, DEPCODE, SubCost, REFNO, SECTION, ITYPE, reqname, scopecode, PO_GRP, createdby, createddt |
| `po_prl` | INSERT (multi-row) on Save | DIVCODE, PRNO, PRDATE, PRSNO, ITEMCODE, QTYIND, REQDDATE, place, appcost, REMARKS, MACNO, CCCODE, BGRPCODE, LPO_RATE, LPO_DATE, Sample |

---

## 7. Error Messages Catalogue

| # | Message | Trigger |
|---|---|---|
| E1 | "Please Define Item in Item Master" | Add clicked with no items in `in_item` |
| E2 | "Please Define Department in Setup" | Add clicked with no departments defined |
| E3 | "Please Define Document No. for Requisition in Housekeeping" | No `po_doc_para` entry for 'PURCHASE REQUISITION' |
| E4 | "Date should be Equal to Current Date Or Max PR. Date" | PR date validation (backdate disabled) |
| E5 | "Please enter valid Date" | Invalid PR date format |
| E6 | "PR. date must be equal to processing date" | PR date not matching processing date |
| E7 | "Invalid Date" | Invalid required date format |
| E8 | "Required Date must be equal to or after the Processing Date." | Required date < processing date on Add |
| E9 | "Required Date cannot be less than PR. Date" | Required date < PR date on Modify |
| E10 | "Same Item should not Be repeat" | Duplicate item in same PR |
| E11 | "Same Machine or Same Item should not Be repeat" | Duplicate item+machine in Modify mode |
| E12 | "Pending Indent Quantity : {qty}" | Pending PR exists for item (KSP_INDEDNT_CHECK) |
| E13 | "Still Po Not Raised for Previouse PR (PR.No.{n})" | SUBAM: pending PO for previous PR on same item |
| E14 | "Final Level Approval not completed. Hence Printout can not be taken" | Print before approval (SHIVA-I / BANNARI / S.T.COTTEX) |
| E15 | "NO RECORDS TO PRINT" | Print attempted without PR No. or Date |
| E16 | "Enter the Reference Number" | Ref No. empty when required |
| E17 | "No Records Found" | Print attempted — `po_prl` returns no rows |

---

## 8. Critical Findings — Issues & Defects

### 🔴 CRITICAL — Application-Terminating Logic on Business Warning

**Location:** `ItemLookup` sub — `KSP_INDEDNT_CHECK` response
```vb
If MsgBox("Do you want to exit?", vbYesNo, head) = vbYes Then End
```
**Issue:** When a pending indent is found, clicking "Yes" on the confirmation box calls `End` — which terminates the **entire VB6 application**, not just the screen or transaction. This means a user checking whether a pending indent exists accidentally closes the whole ERP.

**Impact:** Data loss risk if other unsaved transactions are open in other MDI child forms.

**Recommendation for SPINRISE:** Replace with form close or transaction cancel — never application termination.

---

### 🔴 CRITICAL — SQL Injection Vulnerability Throughout

**Location:** Across all database calls — example:
```vb
rs.Open "select depcode,depname from in_dep where divcode='" & divcode & "' and depcode = '" & Trim(txtfields(5).Text) & "'"
```
**Issue:** All SQL queries are built by direct string concatenation of user input. No parameterised queries or stored procedures are used for basic CRUD. This is a textbook SQL injection surface.

**Recommendation for SPINRISE:** All queries must use parameterised ADO commands or stored procedures. In ASP.NET Core with Dapper, always use `@param` binding.

---

### 🔴 CRITICAL — Hardcoded Customer IDs in Business Logic

**Location:** Throughout the form — over 15 different `UCase(CustID) = "BANNARI"`, `"JTCL"`, `"SKS"`, `"SUBAM"`, `"SARANYA"`, `"NATURAL"`, `"PALLAVA"`, `"SHRIGIRI"`, `"SKAATT"`, `"KUMARAGIRI"`, `"ASM"`, `"MOTHERLAND"`, `"SPPL"` checks.

**Issue:** Customer-specific behaviour is embedded directly in form code using hardcoded string comparisons. This means every new customer requirement requires a code change and recompile.

**Impact:** High maintenance cost, high regression risk, impossible to configure without developer access.

**Recommendation for SPINRISE:** Replace all `CustID` checks with configuration parameters stored in a setup table. Behaviour should be driven by `po_para` or a new `customer_config` table, not hardcoded IF blocks.

---

### 🟠 HIGH — Commented-Out Dead Code Accumulation

**Location:** Lines 4050–4210, 6021–6035, 7566–7580 and dozens of other blocks.

**Issue:** Large sections of alternative logic are commented out rather than removed. Some commented blocks are contradicted by the active code immediately below them (e.g., duplicate item check — one version checks item+machine, another checks item only — old version left as comment).

**Impact:** Makes it impossible to determine which business rule is actually active. Creates confusion during FSD documentation.

**Recommendation:** Before FSD is generated via Claude, the developer must identify and confirm which logic is active and which is dead code. Dead code should be removed before submission.

---

### 🟠 HIGH — Inconsistent Duplicate Item Check Logic

**Location:** `Command3_Click` (line 4377) and `Cmdnewitem_Click` (line 4252) and `ItemLookup` (line 8913)

**Issue:** Three separate duplicate item check implementations exist:
1. In `Command3_Click` — checks item code only, comments say machine check was removed on 23-11-22
2. In `Cmdnewitem_Click` (SKS only) — checks item code only
3. In `ItemLookup` — checks item code + machine code for Modify mode

These three checks have inconsistent logic. On Add mode for non-SKS customers, the machine code is no longer checked (commented out) but the comment references are still present, creating ambiguity.

**Recommendation:** Define a single, authoritative duplicate check rule in the FSD.

---

### 🟠 HIGH — Dangerous Budget Check Implementation (BANNARI Customer)

**Location:** `txtfields_Validate` — Sub Cost Centre block
```vb
If txtfields(4).Text = "" And BudgetPara = "Y" And UCase(CustID) = "BANNARI" Then
    Cancel = True
End If
```
**Issue:** Budget validation is only active for BANNARI customer. The field `budgetBALAMT` is also only present in the `adoPrimaryRS` query for NATURAL customer. There is no general budget availability check — the system will save a PR even if the budget is exhausted.

**Recommendation for SPINRISE:** Budget validation should be a configurable parameter for all customers, not a hardcoded BANNARI-only check.

---

### 🟡 MEDIUM — `SP_GetStock` Called with Hardcoded Division Labels

**Location:** `RecFrame` — `Reclist.Columns` captions after `SP_GetStock` call
```vb
Reclist.Columns(3).Caption = "PTL-I"
Reclist.Columns(4).Caption = "PTL-II"
Reclist.Columns(5).Caption = "SCSL-I"
```
**Issue:** Division names are hardcoded as column captions. This applies to PTL and SCSL divisions only. Any customer with different division names will see wrong column headers.

---

### 🟡 MEDIUM — Crystal Reports Hard-Wired to File Path

**Location:** `BUTTON_Click(Case 13)` — report path logic
```vb
FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\PO\INDENT.rpt"
```
**Issue:** Report path is constructed from `App.Path` with hardcoded subfolder. This works on desktop but will not work in any server or web deployment scenario.

**Recommendation for SPINRISE:** All reports should be RDLC or FastReport templates, path-configured via application settings, not hardcoded relative paths.

---

### 🟡 MEDIUM — Missing Transaction Rollback on Save Error

**Location:** `BUTTON_Click(Case 0)` — Add mode
```vb
db.BeginTrans
```
The transaction is opened at Add mode. However, there is no explicit `db.CommitTrans` or `db.RollbackTrans` visible in the sections reviewed. The `adoSecondaryRS` uses `adLockBatchOptimistic` which does batch updates.

**Recommendation for SPINRISE:** Implement explicit transaction boundary with try-catch and rollback in ASP.NET Core service layer.

---

### 🟡 MEDIUM — Pending Indent Check Uses `SP_GetStock` Correctly But Calls for Non-SKS Only

**Location:** `ItemCodeTextBox_Validate` — line 6046
```vb
If UCase(CustID) <> "SKS" Then
    Set rsnew = New Recordset
    rsnew.Open "exec SP_GetStock ..."
```
**Issue:** Stock check via `SP_GetStock` is skipped entirely for SKS customer. There is no alternative stock check. This means SKS users raise PRs without seeing current stock.

---

### 🟢 LOW — Typo in Error Message

**Location:** Line 8888 and 8890
```
"Still Po Not Raised for Previouse PR"
```
**Issue:** "Previouse" is a spelling error. Should be "Previous".

---

### 🟢 LOW — `intervalminutes = 0` Scattered in Event Handlers

**Location:** Multiple event handlers — `BUTTON_Click`, `Combo2_Click`, etc.

**Issue:** A session timeout reset variable `intervalminutes` is reset in many UI event handlers. This is a cross-cutting concern embedded in UI code. Should be a middleware/session concern.

---

## 9. Related Screens & Navigation

| Screen / Function | Trigger | Purpose |
|---|---|---|
| Department Lookup Popup (Frame2 / ksldesc1) | Invalid dept code entry | Select department from `in_dep` |
| Item Lookup Popup (FrameItem / FpSpdInd) | Item code empty or invalid | Browse and select items |
| Machine Lookup (MacLookup sub) | Invalid machine code or F1 key | Browse `mm_macmas` or `in_mac` |
| Stock Summary Popup (RecFrame) | After item selection (PALLAVA/SHRIGIRI) | View multi-division stock from `SP_GetStock` |
| Crystal Report Viewer (FrmRpt) | Print button (SHIVA-I/BANNARI/S.T.COTTEX) | Crystal report viewer via PVFile |
| Crystal Report Direct (CrystalReport1) | Print button (all other customers) | Direct Crystal report rendering |
| PR List Text Print (`indentreplist`) | Dot matrix print for PR List | Text-based print to file + KALBATPROCESS |
| PR Slip Print (`BESTINDENTREPLIST`) | Alternative print format | Text-based PR slip (Best format) |

---

## 10. Database Table Summary

| Table | Type | Usage |
|---|---|---|
| `po_prh` | Transaction Header | PR Header — primary save and read |
| `po_prl` | Transaction Detail | PR Line Items — multi-row |
| `in_item` | Master | Item validation, auto-fill |
| `in_dep` | Master | Department validation |
| `in_scc` | Master | Sub Cost Centre |
| `in_cc` | Master | Cost Centre (grid) |
| `in_bgrp` | Master | Budget Group (grid) |
| `in_mac` | Master | Machine (grid, alternate) |
| `mm_macmas` | Master | Machine with model (header frame) |
| `fa_slmas` | Master | Supplier name for last PO display |
| `po_ordh` | Transaction | Last PO rate/date lookup |
| `po_ordl` | Transaction | Last PO rate, pending qty |
| `in_trntail` | Transaction | Lead time calculation |
| `po_para` | Configuration | Pending order flags |
| `in_para` | Configuration | Backdate flag |
| `pp_divmas` | Configuration | Division address for print header |
| `PP_Passwd` | Security | User name display |
| `po_doc_para` | Configuration | PR document number generation |
| `pr_emp` | Master | Requester employee name |

---

## 11. SPINRISE Migration Recommendations

### Architecture

1. **State Machine Model** — PR status must be modelled as: `Draft → Submitted → Approved → Converted to PO → Closed`. The VB6 form has no visible status field on-screen but the approval flag `DirectApp` in `po_prl` indicates partial approval tracking exists.

2. **Separate Item Entry from Grid** — The current design uses a separate entry frame (Frame7) to populate grid rows. In React with Ant Design Pro, use an inline editable table or a drawer/modal for row entry. Do not replicate the frame-then-grid pattern.

3. **Configuration Table for Customer Behaviour** — All `CustID` checks must be replaced with a `feature_flags` or `customer_config` table. Boolean flags per feature, configurable per division.

4. **Stored Procedures** — `SP_GetStock` and `KSP_INDEDNT_CHECK` must be preserved as-is or re-implemented in the API service layer. Their logic is complex and cross-module.

5. **Pending Indent Warning** — Replace `If ... Then End` with a soft warning in the React UI. Never terminate application on a business rule warning.

6. **Print → PDF Generation** — Replace Crystal Reports with server-side PDF generation (FastReport, RDLC, or similar) returning a PDF download URL from the API.

7. **Duplicate Item Validation** — Define one clear rule in the FSD: is duplicate item allowed or not? Is machine code part of the uniqueness key? This must be resolved before SPINRISE development begins.

8. **Budget Validation** — If `budgetBALAMT` is needed, it must be a general configurable check, not customer-specific hardcoding.

### IST Review Focus Areas for this Form

- Confirm: which customers require approval before print?
- Confirm: is the pending indent check (KSP_INDEDNT_CHECK) active for all customers or only specific ones?
- Document: complete list of `CustID`-specific behaviours and whether they should become configurable flags
- Confirm: is `SARANYA` customer's Sale Order linkage a unique requirement or should it be generalised?
- Confirm: PALLAVA/SHRIGIRI stock summary popup — should this be standard for all customers in SPINRISE?
- Document: PR number format — is `SUIL/ /YYYY-YY/00{N}` specific to one customer or general?

---

## 12. Summary Scorecard

| Area | Rating | Comment |
|---|---|---|
| Screen Purpose Clarity | ✅ Good | Clear procurement entry form |
| Field Coverage | ✅ Good | All standard PR fields present |
| Validation Coverage | ⚠️ Partial | Core validations present but budget check incomplete |
| Business Logic | ⚠️ Complex | Correct but heavily customer-specific |
| Code Quality | 🔴 Poor | SQL injection, dead code, hardcoded IDs, app-terminating logic |
| Customer Configurability | 🔴 Poor | 15+ hardcoded customer IDs |
| Report Architecture | ⚠️ Partial | Works but not web-deployable |
| Transaction Safety | ⚠️ Partial | Transaction opened but rollback not confirmed |
| Migration Readiness | ⚠️ Needs Cleanup | Stabilise + resolve dead code before FSD generation |

---

*Document generated for SPINRISE FSD preparation.*
*Kalpatharu Software Ltd · Internal & Confidential*
