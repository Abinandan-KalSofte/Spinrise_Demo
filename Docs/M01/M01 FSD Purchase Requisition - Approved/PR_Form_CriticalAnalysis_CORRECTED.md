# Critical Analysis — Purchase Requisition Form (tmpPoindent.frm)
### Kalsofte ERP · VB6 Platform · SQL Server / Oracle Backend
**Reviewed by:** Senior ERP Developer Perspective (20 Years — Purchase Order & Store Inventory Module)
**Form:** `tmpPOINDENT` | **Caption:** Purchase Requisition
**File Size:** 306,140 bytes | **Active Code Lines:** ~7,467 (commented lines: 27 blocks)
**Platform:** VB6 + ADO + SQL Server / Oracle (dual-DB SQL visible in code)
**Prepared For:** SPINRISE FSD — Kalpatharu Software Ltd
**Date:** April 2026

---

## 1. Form Overview

| Attribute | Detail |
|---|---|
| Form Name | `tmpPOINDENT` |
| Caption | Purchase Requisition |
| Window State | Maximized (MDIChild) |
| Tab Control | `SSTab1` — Single tab with embedded frames |
| Primary Table | `po_prh` (PR Header) |
| Detail Table | `po_prl` (PR Line Items) |
| Recordset Mode | ADO — `adOpenStatic` / `adLockBatchOptimistic` |
| Key OCX Controls | `FpSpread (FPSpreadADO)`, `MSDataGrid`, `SSTab (TabDlg)`, `Crystal.CrystalReport`, `MSMask.MaskEdBox`, `MSComCtl2.DTPicker`, `PurOrd.UserFooter` |
| Secondary Recordset | `adoSecondaryRS` — binds to `grddatagrid` |

---

## 2. Screen Layout

### 2.1 Header Section (Frame1)

| Field | Control | DataField | Mandatory | Notes |
|---|---|---|---|---|
| PR No. | `txtfields(2)` | `prno` | Auto-generated | System-assigned on Save; right-justified |
| PR Date | `MaskEdBox1(0)` | `prdate` | Yes | Mask `##/##/####`; must equal processing date |
| Department | `txtfields(5)` | `depcode` | Yes *(red)* | Lookup from `in_dep` |
| Department Name | `Text2` | `depname` | Auto-fill | Read-only; data-bound |
| Section | `Text3` | `section` | Optional | Free text; max 20 chars |
| Requester Code | `txtfields(1)` | `reqname` | Optional | Employee code; numeric format |
| Requester Name | `Text4` | — | Auto-fill | Read-only; from `pr_emp` |
| Sub Cost Centre | `txtfields(4)` | `SubCost` | Conditional | Required if `po_para.BudgetQty = 'Y'`; label turns red when active |
| Ref. No. | `txtfields(8)` | `refno` | Conditional | Max 20 chars; required in certain flows |
| Requisition Type / Order Type | `Combo2` | `ABCFLG` | Optional | Drop-down List; loaded from `po_doc_para` |
| PO Group / Purchase Type | `txtfields(7)` | `PO_GRP` | Optional | Lookup from `po_type` via `tempPurType` |
| PO Group Name | `Text11` | — | Auto-fill | Read-only; from `po_type` lookup |
| Scope Code | `txtfields(3)` | `scopecode` | Optional | Numeric format "0" |
| Scope Name | `Text7` | — | Auto-fill | From scope master |
| Item Group Code | `txtItemgrpcode` | — | Optional | Filters item lookup by group; active if `po_para.InditemGrp = 'Y'` |
| Item Group Name | `txtItemgrpName` | — | Auto-fill | Read-only; from group master |
| User (logged-in) | `lblLabels(6)` | — | Auto | Fetched from `PP_Passwd` via `ModuleNo` |
| Approval Status | `LblApproval` | — | Display only | Visible if `po_para.PRapprovalstatus = 'Y'`; shows current approval level |
| Date Picker | `DTPicker1` | — | Disabled | `Enabled = False`; overlaps `MaskEdBox1(0)` — orphaned control |
| Footer Selector | `UserFooter1` | — | Optional | `PurOrd.UserFooter` custom OCX; `UserFooter1.SelectedStr` used in print |

### 2.2 Item Entry Section (Frame7 / Buttonframe)

| Field | Control | Mandatory | Notes |
|---|---|---|---|
| Item Code | `ItemCodeTextBox` | Yes *(red)* | Lookup from `in_item`; `IsItemActive = 1` checked |
| Item Name | `ItemNameTextBox` | Auto-fill | Read-only |
| UOM | `Text9` | Auto-fill | From `in_item.uom` |
| Rate | `RateTextBox` | Optional | Last stored rate; overridden by last receipt from `IN_TRNHEAD/IN_TRNTAIL` (TC=1, SLCODE IS NOT NULL) |
| Current Stock | `Text8` | Auto-fill | From stored procedure `SP_GetStock` |
| Quantity Required | `QtyReqTextBox` | Yes *(red)* | Must be > 0 |
| Machine No. | `MachineTextBox` | Optional | Lookup from `mm_macmas` filtered by dept and `MACFLAG = 'M'` |
| Machine Model | `TxtMacModel` | Auto-fill | From `mm_macmas.Model` |
| Machine Description | `Text6` | Auto-fill | From `mm_macmas.description` |
| Required Date | `MaskEdBox2` | Optional | Must be >= processing date on Add; >= PR Date on Modify |
| Place | `PlaceTextBox` | Optional | Free text |
| Approx. Cost | `AppCostTextBox` | Optional | Numeric; 2 decimal places |
| Remarks | `RemarksTextBox` | Optional | Free text |
| Sample Flag | `ChkSample` | Optional | Checkbox — saves as `Y`/`N` |

### 2.3 Main Data Grid (`grddatagrid`)

The grid is an `MSDataGridLib.DataGrid` bound to `adoSecondaryRS`. Key column layout:

| Col Index | Caption | Editable | Notes |
|---|---|---|---|
| 4 | Item Code | No | Locked; read from entry frame |
| 5 | Item Description | No | Locked |
| 6 | UOM | No | Locked |
| 7 | Rate | No | Visibility controlled by `EmpCommon` global flag |
| 8 | Current Stock | No | Auto-filled |
| 9 | Quantity Required | Yes | Primary edit column |
| 10 | Category | No | Validated against `in_cat` via `ksldesc1` lookup |
| 11 | Cost Centre | Yes | Validated against `in_cc`; triggers lookup |
| 12 | Budget Group | Yes | Validated against `in_bgrp`; triggers lookup |
| 13 | Machine Code | Yes | Validated against `in_mac`; triggers `MacLookup` |
| 14 | Required Date | Yes | Format DD/MM/YY |
| 15 | Place | Yes | Free text |
| 16 | Approx. Cost | Yes | Format ##0.00 |
| 17 | Remarks | Yes | Free text |
| 19 | Last PO Rate | No | Auto-filled from `po_ordh/po_ordl` |
| 20 | Last PO Date | No | Auto-filled |
| 21 | Last PO Supplier Code | No | Auto-filled |
| 22 | Last PO Supplier Name | No | Auto-filled / editable via Delete Reason lookup |

**PR Status Column (Query/Modify mode):** Derived CASE expression from `PRSTATUS`, `DIRECTAPP`, `FirstApp`, `SecondApp`, `ThirdApp`, `QTYREQD` — displays: `Requested`, `First Level Approved`, `Second Level Approved`, `Third Level Approved`, `Final Level Approved`, `PR. Cancelled`, `Ordered`, `Order Cancelled`, `Enquired`, `Received`.

### 2.4 Item Lookup Pop-up (FrameItem / dlmdfrm)

A floating frame (`Visible = False` by default) containing `FpSpdIndHead` (header bar), `FpSpdInd` (item listing), `DataGrid3` (no active binding — orphaned), `CmdItemSelect` (OK), and `CmdCancel`. When `po_para.Penpodetails = 'Y'`, additional columns are added dynamically: Pending Qty, Delivery Date, Min/Max Level, Lead Time, Supplier Name. Item group filtering active when `po_para.InditemGrp = 'Y'`.

### 2.5 Stock Summary Pop-up (RecFrame)

Pop-up grid (`Reclist`) showing multi-division stock via `SP_GetStock`. Displayed in multi-division mode after item selection.

---

## 3. Toolbar Buttons (BUTTON Control Array)

| Button Index | Function | Key Behaviour |
|---|---|---|
| 0 | **New / Add** | Pre-checks: Item Master, Department, Document No. Setup; sets mode |
| 9 | **Save** | Full validation + INSERT to `po_prh` and `po_prl` + audit log to `LogDet_PO` |
| 10 | **Cancel / Clear** | Rolls back; calls `EmptyTextBox`; resets all controls |
| 1 | **Modify** | Loads PR for edit; `LookUp` filtered by `appflg <> 'Y'` and `CANCELFLAG IS NULL` |
| 2 | **Delete** | Checks `po_enql`; selects delete reason from `po_txndelreason`; logs to `LogDet_PO` |
| 3 | **Query / Search** | Searches PR; opens `LookUp` for all PRs including approved |
| 4 | **First Record** | Navigation |
| 5 | **Previous Record** | Navigation |
| 6 | **Next Record** | Navigation |
| 7 | **Last Record** | Navigation |
| 12 | **Line Delete** | Deletes specific grid row; triggers delete reason lookup |
| 13 | **Print** | Crystal Reports — branch controlled by `EmpCommon` global flag |

---

## 4. Validation Rules (Active Code Only)

### 4.1 Pre-Add Validations (Button 0 — New)

| # | Rule | Source |
|---|---|---|
| V1 | Item Master must have at least one record in `in_item` | `Record_Exists("in_item", ...)` |
| V2 | Department must be defined in `in_dep` for this division | `Record_Exists("in_dep where divcode=...")` |
| V3 | Document Number must be configured for `'PURCHASE REQUISITION'` in `po_doc_para` | `Record_Exists("po_doc_para where tc = 'PURCHASE REQUISITION'")` |
| V4 | If `in_para.backdate = 'N'`, PR date cannot be earlier than max existing PR date for the year | Checked via `RSG.Open "select max(prdate) from po_prh..."` |

### 4.2 Header Field Validations (Save — Button 9)

| # | Field | Rule | Error Message |
|---|---|---|---|
| V5 | PR Date | Must be a valid date | `"Please enter valid Date"` |
| V6 | PR Date | Must equal processing date | `"PR. date must be equal to processing date"` |
| V7 | Department | Cannot be empty | `"Department Cannot be empty"` |
| V8 | Order Type | Must be selected if visible | `"Please Select Order Type"` |
| V9 | Requester Name | Cannot be empty where enforced | `"Requester Name Cannot be empty"` |
| V10 | Sub Cost Centre | Required if `po_para.BudgetQty = 'Y'` | `Cancel = True` silently; label turns red on form load |
| V11 | Ref. No. | Required in certain flows | `"Enter the Reference Number"` |
| V12 | Line Items | PR must have at least one item | `"Purchase Requisition Requires at least one Item"` |

### 4.3 Item Line Entry Validations

| # | Field | Rule | Error Message |
|---|---|---|---|
| V13 | Item Code | Must exist in `in_item` (`IsItemActive = 1`) | Triggers item lookup |
| V14 | Item Code | Duplicate item in same PR not allowed | `"Same Item should not Be repeat"` |
| V15 | Item Code + Machine | Same item + same machine not allowed in Modify mode | `"Same Machine or Same Item should not Be repeat"` |
| V16 | Quantity Required | Must be > 0 | Focus returned silently |
| V17 | Quantity Required | Cannot be empty | `"Required quantity cannot be empty"` |
| V18 | Required Date | Must be valid | `"Invalid Date"` |
| V19 | Required Date (Add) | Must be >= processing date | `"Required Date must be equal to or after the Processing Date."` |
| V20 | Required Date (Modify) | Cannot be < PR Date | `"Required Date cannot be less than PR. Date"` |
| V21 | Machine Code (header) | Must exist in `mm_macmas` filtered by dept, `MACFLAG = 'M'` | Triggers `MacLookup` |
| V22 | Machine Code (grid col 13) | Must exist in `in_mac` | Triggers lookup |
| V23 | Cost Centre (grid col 11) | Must exist in `in_cc` | Triggers lookup |
| V24 | Budget Group (grid col 12) | Must exist in `in_bgrp` | Triggers lookup |
| V25 | Purchase Type | Must exist in `po_type` | Triggers PO Type lookup |

### 4.4 Pending PR / Pending Order Validations

| # | Condition | Rule | Behaviour |
|---|---|---|---|
| V26 | `po_para.PendingOrderPara = 'Y'` | `KSP_INDEDNT_CHECK` SP checks pending indent for same item/dept/year on item code entry | Shows pending qty; Yes = **`End`** (terminates application) ⚠️ |
| V27 | **Always — no gate** | `ksp_PendPR` SP checks if PO not raised for previous PR on item selection via lookup | Hard blocks item entry; sets focus to requester; no override possible |

### 4.5 Delete Validations

| # | Rule | Behaviour |
|---|---|---|
| V28 | PR linked to Enquiry (`po_enql` count > 0) | Delete blocked |
| V29 | Delete Reason required | `po_txndelreason` lookup mandatory before confirm |

### 4.6 Print Validation

| # | Rule | Behaviour |
|---|---|---|
| V30 | PR No. and Date must be valid | `"NO RECORDS TO PRINT"` — uses `vbhead` variable for caption |

---

## 5. Business Logic & Auto-Fill Rules

### 5.1 PR Number Generation
Auto-generated on Save using `po_doc_para` (TC = `'PURCHASE REQUISITION'`). Pattern: `Right(yfdate, 2) & divcode & Padl(CDec(Rs(0)) + 1, 5, "0")` — sequential within financial year. Manual PR number supported if `po_para.Manual_IndNo = 'Y'`.

### 5.2 Auto-Fill on Item Selection
- **Item Name** ← `in_item.itemname`
- **UOM** ← `in_item.uom`
- **Rate** ← `in_item.rate`; overridden by last receipt from `IN_TRNHEAD/IN_TRNTAIL` (TC=1, SLCODE IS NOT NULL)
- **Current Stock** ← `SP_GetStock`
- **Last PO Rate / Date / Supplier** ← `po_ordh`, `po_ordl`, `fa_slmas`

### 5.3 Auto-Fill on Machine / Department / Requester
- Machine → `mm_macmas.description`, `mm_macmas.Model` (filtered by `MACFLAG='M'`, `salesflag='N'`, `DEPCODE`)
- Department → `in_dep.depname`
- Sub Cost Centre → `in_scc.SccName`
- Requester → `pr_emp.ename` / `PR_DESIG`; `GNAME` padded to 25 chars → injected into Crystal formula

### 5.4 Pending Indent Check (`KSP_INDEDNT_CHECK`)
Gated by `po_para.PendingOrderPara = 'Y'`. Executes `exec KSP_INDEDNT_CHECK` on item code entry. If pending found → warning → **`If MsgBox(...) = vbYes Then End`** — terminates entire application.

### 5.5 `ksp_PendPR` Check
Executes unconditionally after every item selection via lookup. If previous PR exists for same item without a PO → hard blocks addition. No `po_para` flag controls this.

### 5.6 Item Group–Wise Filtering
`po_para.InditemGrp = 'Y'` → `bolLookupItemgrpwise = True` → item lookup filtered by `txtItemgrpcode`.

### 5.7 Approval Status Display
`po_para.PRapprovalstatus = 'Y'` → `LblApproval` visible on PR load, showing: `"Not Approved"` (red) through `"Final Level Approved"` (green). Display only — does not block any operation.

### 5.8 PR Status Lifecycle (Query Mode)

| PRSTATUS / Flag | Display Value |
|---|---|
| NULL + FirstApp IS NULL | Requested |
| NULL + QTYREQD = 0 | PR. Cancelled |
| `'F'` or FirstApp = `'Y'` | First Level Approved |
| `'S'` or SecondApp = `'Y'` | Second Level Approved |
| `'T'` or ThirdApp = `'Y'` | Third Level Approved |
| `'D'` or DIRECTAPP = `'Y'` | Final Level Approved |
| `'O'` + QTYORD > 0 | Ordered |
| `'O'` + QTYORD = 0 | Order Cancelled |
| `'E'` | Enquired |
| `'C'` | Received |

### 5.9 Amendment & Cancel Tracking
`amdflg = 'Y'` and `CancelFlag` exclude records from Modify/Delete queries. `amendno IS NULL or amendno = 0` filters original records.

### 5.10 Audit Logging
Full line-level audit to `LogDet_PO` on every Add/Modify/Delete: `divcode`, `prno`, `prdate`, `depcode`, `reqname`, `Trans_UserId`, `SubCost`, `prsno`, `itemcode`, `macno`, `RATE`, `quantity`, `username`, `Trans_date`, `Trans_Name` (`'Purchase Requisition'`), `Trans_Mod`, `Trans_IPADD`, `Trans_Host`, `moduleno`, `lastporate`, `lastpodate`, `lastposlcode`.

### 5.11 Report Footer
`RepFoot` loaded from `in_repfoot.footdesc` table and from `UserFooter1.SelectedStr` (`PurOrd.UserFooter` OCX).

---

## 6. Database Operations

### 6.1 Tables Read (Active Code)

| Table | Purpose |
|---|---|
| `po_prh` | PR Header — query, modify, delete |
| `po_prl` | PR Line Items — query, modify, delete |
| `in_item` | Item validation, name, UOM, rate |
| `in_dep` | Department validation and name |
| `in_scc` | Sub Cost Centre name |
| `in_cc` | Cost Centre validation (grid col 11) |
| `in_bgrp` | Budget Group validation (grid col 12) |
| `in_mac` | Machine code validation (grid col 13) |
| `in_cat` | Item category validation (grid col 10 via `ksldesc1`) |
| `in_grp` | Item group filtering (`InditemGrp = 'Y'`) |
| `mm_macmas` | Machine master — model, description, filtered by dept |
| `fa_slmas` | Supplier master — last PO supplier name |
| `po_ordh` | PO Header — last PO date |
| `po_ordl` | PO Lines — last PO rate, pending qty |
| `in_trntail` | Transaction Tail — lead time, last receipt rate |
| `IN_TRNHEAD` | Transaction Head — last receipt rate (TC=1) |
| `po_para` | PO Parameters — `BudgetQty`, `Manual_IndNo`, `PRapprovalstatus`, `Penpodetails`, `PendingOrderPara`, `InditemGrp` |
| `in_para` | Inventory Parameters — `backdate` flag |
| `in_repfoot` | Report footer text |
| `PP_Passwd` | User master — logged-in user name (by `ModuleNo`) |
| `po_doc_para` | Document number parameters — PR number generation, Requisition Type combo |
| `pr_emp` | Requester employee name |
| `PR_DESIG` | Requester designation |
| `po_type` | Purchase Order Type master — `PO_GRP` lookup |
| `po_txndelreason` | Delete reason master |
| `po_enql` | Enquiry records — prevents delete if linked |
| `pp_divmas` | Division master — print header (via `GNAME`) |
| `tempPurType{TLocalIPAdd}` | Session temp table — filters Purchase Type by user/IP |

### 6.2 Tables Written

| Table | Operation | Key Fields |
|---|---|---|
| `po_prh` | INSERT on Save | `divcode, prno, prdate, depcode, refno, section, itype, reqname, scopecode, UserId, SubCost, Planno, Amendno, PO_GRP, createdby, createddt` |
| `po_prl` | INSERT (multi-row) on Save | `divcode, prno, prdate, prsno, itemcode, macno, qtyind, reqddate, place, appcost, remarks, cccode, bgrpcode, rate, curstock, lpo_rate, lpo_date, pur_from, depcode, subcost, sample` |
| `LogDet_PO` | INSERT on Save/Modify/Delete | Full audit trail |
| `po_prh` | UPDATE on Modify | Header fields via `db.Execute` |
| `po_prl` | DELETE + re-INSERT on Modify | Re-inserts all active lines |

### 6.3 Stored Procedures Called

| Procedure | When Called | Purpose |
|---|---|---|
| `SP_GetStock` | On item code entry | Returns current stock |
| `KSP_INDEDNT_CHECK` | On item code entry (`PendingOrderPara = 'Y'`) | Checks pending indent for same item/dept/year |
| `ksp_PendPR` | On item selection via lookup (always) | Checks if PO not raised for previous PR of same item |

---

## 7. Print / Report Architecture

### 7.1 Print Branch — `EmpCommon` Global Flag
All print logic in `Case 13` branches on `EmpCommon` (Boolean, declared globally):
- `EmpCommon = True` → `Cry_Purchase_Req` report; passes `@Docno`, `@Docdt`; injects `IndUserNAME` formula
- `EmpCommon = False` → `Cry_PR_KSL` report; passes `@divcode`, `@prdate`, `@prno`; injects `NAME` formula

Both paths also call `Cry_PO_IndentcrTransPrint.CrystalPrint` via `clsCrystal` wrapper first, then execute `CrystalReport1`.

### 7.2 Crystal Report OCX (CrystalReport1 — Embedded)
- **Report File:** `KALFOLDERDATA & "RepPO.rpt"`
- **Connection:** `connectstring`
- **Window state:** `crptMaximized`

### 7.3 Report Viewer (Report.ReportView)
`Dim RPTV As Report.ReportView` — alternate viewer path for specific print flows.

---

## 8. Error Messages Catalogue

| # | Message | Trigger |
|---|---|---|
| E1 | `"Please Define Item in Item Master"` | Add: no items in `in_item` |
| E2 | `"Please Define Department in Setup"` | Add: no departments defined |
| E3 | `"Please Define Document No. for Requisition in Housekeeping"` | Add: no `po_doc_para` entry |
| E4 | `"Date should be Equal to Current Date Or Max PR. Date"` | PR date (backdate disabled) |
| E5 | `"Please enter valid Date"` | Invalid PR date format |
| E6 | `"PR. date must be equal to processing date"` | PR date mismatch |
| E7 | `"Department Cannot be empty"` | Save with blank department |
| E8 | `"Please Select Order Type"` | Save with blank Combo2 |
| E9 | `"Requester Name Cannot be empty"` | Save with blank requester |
| E10 | `"Required quantity cannot be empty"` | Qty blank on save |
| E11 | `"Purchase Requisition Requires at least one Item"` | Save with empty grid |
| E12 | `"Invalid Date"` | Invalid required date |
| E13 | `"Required Date must be equal to or after the Processing Date."` | Required date < processing date |
| E14 | `"Required Date cannot be less than PR. Date"` | Required date < PR date on Modify |
| E15 | `"Same Item should not Be repeat"` | Duplicate item |
| E16 | `"Same Machine or Same Item should not Be repeat"` | Duplicate item+machine on Modify |
| E17 | `"Pending Indent Quantity : {qty}"` | `KSP_INDEDNT_CHECK` returns result |
| E18 | `"Still Po Not Raised for Previouse PR (PR.No.{n})"` | `ksp_PendPR` finds pending PR (typo: *Previouse*) |
| E19 | `"NO RECORDS TO PRINT"` | Print: PR No. or Date missing (uses `vbhead`) |
| E20 | `"Budget Qty Not Defined . So check Parameter"` | `po_para.BudgetQty` record not found on Add |
| E21 | `" No records Found"` | Query mode: no PRs found |
| E22 | `"Enter the Reference Number"` | Ref No. empty when required |
| E23 | `"Error {n} ({desc}) in procedure MacLookup..."` | Machine lookup error |
| E24 | `"Error {n} ({desc}) in procedure txtfields_Validate..."` | txtfields validate error |
| E25 | `"Error {n} ({desc}) in procedure Form_Load..."` | Form_Load error |

---

## 9. External Files, Classes & Modules Referenced

### 9.1 OCX / ActiveX Controls

| OCX File | GUID (partial) | Control Used |
|---|---|---|
| `MSDATGRD.OCX` | `{CDE57A40-...}` v1.0 | `MSDataGridLib.DataGrid` — `grddatagrid`, `DataGrid3` |
| `MSDATLST.OCX` | `{F0D2F211-...}` v1.0 | MS Data List |
| `MSMASK32.OCX` | `{C932BA88-...}` v1.1 | `MSMask.MaskEdBox` — `MaskEdBox1`, `MaskEdBox2` |
| `MSCOMCTL[1].OCX` | `{831FDD16-...}` v2.2 | `MSComCtl2.DTPicker1` (disabled) |
| `TABCTL32.OCX` | `{BDC217C8-...}` v1.1 | `TabDlg.SSTab` — `SSTab1` |
| `MSCOMCT2.OCX` | `{86CF1D34-...}` v2.0 | Additional MS common controls |
| `Crystl32.OCX` | `{00025600-...}` v5.2 | `Crystal.CrystalReport` — `CrystalReport1` |
| `fpSPR80.OCX` | `{F856EC8B-...}` v8.0 | `FPSpreadADO.fpSpread` — `FpSpdInd`, `FpSpdIndHead` |
| `PurOrd.UserFooter` | Custom OCX (embedded in frame) | `UserFooter1` — footer selector; `SelectedStr` used in print |

### 9.2 Binary Resource File

| File | Purpose |
|---|---|
| `tmpPoindent.frx` | Stores tab picture, FpSpread designer data, Combo2 item list |

### 9.3 Class Modules Referenced

| Class / Object | Type | Purpose |
|---|---|---|
| `clsCrystal` | Class Module (`.cls`) | Crystal wrapper; `.cryRept` property; `.CrystalPrint` method |
| `Report.ReportView` | Class / COM Object | Alternate report viewer |

### 9.4 Global Variables Used (Declared Externally in Standard Module)

| Variable | Type | Purpose |
|---|---|---|
| `divcode` | String | Current division code |
| `usrid` | String | Logged-in user ID |
| `uid` | String | Alternate user ID (audit inserts) |
| `UserName` | String | Logged-in user display name |
| `UserID` | String | User ID for `po_prh` insert |
| `EmpCommon` | Boolean | Print report branch: `Cry_Purchase_Req` vs `Cry_PR_KSL` |
| `backend` | String | DB engine: `"Sql Server"` vs Oracle — controls SQL branch |
| `yfdate` | Date | Financial year start date |
| `yldate` | Date | Financial year end date |
| `ModuleNo` | Long | Module number — `PP_Passwd` query and audit log |
| `LocalIP` | String | Client machine IP |
| `LocalHost` | String | Client machine hostname |
| `TLocalIPAdd` | String | IP suffix for `tempPurType` temp table |
| `connectstring` | String | ADO connection string |
| `KALFOLDERDATA` | String | App data folder path — Crystal report file |
| `GNAME` | String | Requester name padded to 25 chars — Crystal formula |
| `head` | String | App title for MsgBox caption |
| `vbhead` | String/Variant | Alternate MsgBox caption (print block) |
| `intervalminutes` | Integer | Session timeout counter — reset in UI events |

### 9.5 External Forms / Objects Called

| Form / Object | Type | Purpose |
|---|---|---|
| `LookUp` | MDI-level Form | Generic lookup popup — PR listing, delete reason, PO Type, machine, item |
| `Cry_Purchase_Req` | Crystal Report Object | Global report — `EmpCommon = True` print path |
| `Cry_PR_KSL` | Crystal Report Object | Global report — `EmpCommon = False` print path |
| `UserFooter1` | `PurOrd.UserFooter` OCX | Footer selector; `SelectedStr` → `RepFoot` for print |
| `db` | ADODB.Connection | Global database connection |
| `ksldesc1` | Custom Lookup Control | In-grid lookup for `in_cat`, `in_mac`, department, item group in `grddatagrid` |

### 9.6 External Functions / Subroutines (Global Module)

| Function / Sub | Purpose |
|---|---|
| `Record_Exists(table, message)` | Checks if table has records; shows message if not |
| `Padl(value, length, char)` | Left-pad string — PR number generation |
| `Padr(value, length, char)` | Right-pad string — `GNAME` padding |
| `fnmfdate(date)` | Returns first date of month — used in SHAPE queries |

---

## 10. Related Screens & Navigation

| Screen / Sub | Trigger | Purpose |
|---|---|---|
| `LookUp` form | Modify / Delete / Query buttons | Generic PR selection popup |
| `LookUp` (Delete Reason) | Line Delete / Delete | `po_txndelreason` lookup |
| `LookUp` (Purchase Type) | `txtfields(7)` KeyDown | `po_type` filtered by `tempPurType` |
| `MacLookup` sub | `MachineTextBox` validation; grid col 13 | `mm_macmas` lookup by dept |
| Item Lookup (`FrameItem/dlmdfrm`) | `ItemCodeTextBox` empty or invalid | FpSpread-based item browser |
| Stock Summary (`RecFrame`) | After item selection (multi-division mode) | `SP_GetStock` display |
| `CrystalReport1` (OCX) | Print button | `KALFOLDERDATA & "RepPO.rpt"` |
| `clsCrystal` wrapper | Print button | `Cry_Purchase_Req` or `Cry_PR_KSL` by `EmpCommon` |
| `RPTV` (Report.ReportView) | Print button (alternate path) | Viewer-based report |

---

## 11. Critical Findings — Issues & Defects

### 🔴 CRITICAL — Application-Terminating Logic on Business Warning

**Location:** `ItemCodeTextBox_Validate` — `KSP_INDEDNT_CHECK` response handler

```vb
If MsgBox("Do you want to exit?", vbYesNo, head) = vbYes Then End
```

**Issue:** When a pending indent is found and the user clicks "Yes", `End` terminates the **entire VB6 application process** — not just the current screen or transaction. All unsaved data in any other open MDI child form is lost without warning. This is a hard process kill, not a graceful exit.

**Impact:** Severe data loss risk in a multi-form MDI session.

**SPINRISE Recommendation:** Replace with a soft, non-blocking informational banner in the React UI. Never terminate the application on a business rule warning.

---

### 🔴 CRITICAL — SQL Injection Vulnerability Throughout

**Location:** Every `rs.Open`, `rsnew.Open`, `db.Execute`, `adoPrimaryRS.Open` in the form.

**Issue:** All SQL is constructed by direct string concatenation of user-entered text. No parameterised queries, no input escaping, and no ADO `Command` objects with parameters. Every text field on the form is a potential injection vector.

**SPINRISE Recommendation:** All database calls must use parameterised queries (`@param` binding via Dapper or EF Core). Zero string concatenation of user input into SQL.

---

### 🔴 CRITICAL — Dual-Database SQL (SQL Server + Oracle) in Same Form

**Location:** Multiple `adoPrimaryRS.Open` SHAPE query blocks — branched by `backend = "Sql Server"`.

**Issue:** The SQL Server path uses `isnull(...)` and `CAST(...AS varchar)`; the Oracle path uses `to_char(...)`, `decode(...)`, outer join `(*=)`, and a `blcode` field not present in the SQL Server schema. Both paths coexist in the same `.frm` file. This means two divergent data models exist for the same tables depending on deployment.

**SPINRISE Recommendation:** SQL Server is the SPINRISE target. All Oracle-specific SQL and the `blcode` field must be formally reviewed — included in the canonical data model with documentation, or explicitly excluded.

---

### 🟠 HIGH — `ksp_PendPR` Executes Unconditionally — No Parameter Gate

**Location:** Both `ItemLookup` sub instances (lines 6506 and 7308)

**Issue:** Unlike `KSP_INDEDNT_CHECK` which is gated by `po_para.PendingOrderPara = 'Y'`, the `ksp_PendPR` stored procedure is called **unconditionally** on every item selection via the lookup popup. If any previous PR for the item exists without a PO raised, the item is hard-blocked from being added — no override is possible and no `po_para` flag can disable this behaviour.

**Impact:** Can silently block legitimate repeat procurement without any configuration option.

**SPINRISE Recommendation:** Make this check configurable via a `po_para` flag. It should warn but not hard-block in all cases.

---

### 🟠 HIGH — Missing Explicit Transaction Rollback on Save Error

**Location:** `BUTTON_Click(Case 9)` — Save

**Issue:** `db.BeginTrans` is called at the start of the save sequence. No explicit `db.RollbackTrans` with error handling is confirmed in the active code path. If the `INSERT` to `LogDet_PO` fails after `po_prh`/`po_prl` have been written, the transaction may remain open or partially committed. The `End` call from the pending indent warning also bypasses any rollback entirely.

**SPINRISE Recommendation:** Wrap all save operations in try-catch with explicit rollback in the service layer.

---

### 🟠 HIGH — Inconsistent Duplicate Item Check Logic

**Location:** `Command3_Click` (Add path), `Cmdnewitem_Click` (alternate Add path), and `ItemLookup` sub (Modify path).

**Issue:** Three different duplicate detection rules are active: item code only in both Add paths, and item code + machine code in the Modify path. The rule applied depends on which code path is triggered, not a defined business rule.

**SPINRISE Recommendation:** Define one explicit uniqueness key for PR lines — either `(itemcode)` or `(itemcode + macno)` — and enforce it consistently across Add and Modify.

---

### 🟡 MEDIUM — `DTPicker1` Present but Permanently Disabled

**Location:** `Frame1` — `DTPicker1` (`Enabled = False`) occupies the same position as `MaskEdBox1(0)` (Left=5160, Top=180).

**Issue:** `DTPicker1` is never enabled in any active code. It is an abandoned attempt to replace the masked date input. Two controls at the same position add confusion and form weight.

**SPINRISE Recommendation:** Remove `DTPicker1` entirely.

---

### 🟡 MEDIUM — `tempPurType{TLocalIPAdd}` Session Temp Table Dependency

**Location:** Multiple `LookUp.QUERY` strings.

**Issue:** Modify/Query/Delete listing queries filter by `po_grp IN (select purtype from tempPurType{IP})`. If the temp table does not exist at query time or the IP suffix mismatches, the query fails with a table-not-found error with no fallback.

**SPINRISE Recommendation:** Replace session-scoped temp tables with user-session context in API calls (JWT claims or session service).

---

### 🟡 MEDIUM — `intervalminutes` Reset Embedded in Every UI Event Handler

**Location:** `BUTTON_Click`, `Combo2_Click`, and other event handlers.

**Issue:** Session timeout reset (`intervalminutes = 0`) is a cross-cutting concern scattered across UI event code.

**SPINRISE Recommendation:** Handle session activity tracking as middleware at the API or gateway layer.

---

### 🟢 LOW — Spelling Error in Error Message

**Location:** `ksp_PendPR` message handler — `"Still Po Not Raised for Previouse PR"`. Should be "Previous".

---

### 🟢 LOW — Orphaned Controls: `DataGrid3` and `Text5`

**Issue:** `DataGrid3` inside `dlmdfrm` has no active data binding in any active code path. `Text5` in `Frame1` is permanently hidden with no `DataField` and no active code reference. Both are dead controls that should be removed.

---

## 12. Summary Scorecard

| Area | Rating | Comment |
|---|---|---|
| Screen Purpose Clarity | ✅ Good | Clear, well-structured procurement entry form |
| Header Field Coverage | ✅ Good | All standard PR header fields present |
| Line Item Coverage | ✅ Good | Complete item entry with machine, cost centre, budget group |
| Parameter-Driven Configuration | ✅ Good | All conditional behaviour driven by `po_para` / `in_para` flags — **no hardcoded customer IDs** |
| PR Status Lifecycle | ✅ Good | Full 4-level approval status model in query mode |
| Audit Logging | ✅ Good | `LogDet_PO` captures full add/modify/delete trail |
| Validation Coverage | ⚠️ Partial | Core validations present; `ksp_PendPR` not configurable; budget balance not validated |
| Business Logic | ⚠️ Moderate | Generally correct; pending check `End` call is critical; `ksp_PendPR` ungated |
| Report Architecture | ⚠️ Partial | Functional; `EmpCommon` flag controls template; file-path dependent |
| Transaction Safety | ⚠️ Partial | Transaction opened; explicit rollback not confirmed; `End` bypasses rollback |
| Code Quality | 🔴 Poor | SQL injection throughout; app-terminating `End`; Oracle/SQL Server mixed SQL |
| Database Abstraction | 🔴 Poor | Direct ADO string concatenation; dual SQL Server/Oracle paths |
| Migration Readiness | ⚠️ Needs Cleanup | Resolve Oracle vs SQL Server paths; confirm `blcode`; fix `ksp_PendPR` gate; remove orphaned controls |

---

## 13. SPINRISE Migration Recommendations

1. **PR Status as Enum** — Model `Requested → L1 Approved → L2 Approved → L3 Approved → Final Approved → Ordered → Received → Cancelled` as a first-class status enum in the database and API layer.

2. **`po_para` Flags → SPINRISE Config Model** — All current flags (`BudgetQty`, `PendingOrderPara`, `Penpodetails`, `InditemGrp`, `Manual_IndNo`, `PRapprovalstatus`) must map directly to SPINRISE configuration. No behaviour should be hardcoded.

3. **Parameterised Queries Only** — All SQL via Dapper `@param` binding. Zero string concatenation of user input.

4. **`ksp_PendPR` Must Be Configurable** — Add a `po_para` flag. It should warn but not hard-block by default.

5. **Pending Indent as Non-Blocking Notification** — `KSP_INDEDNT_CHECK` result → informational banner in React UI. Remove `End` call entirely.

6. **Single Duplicate Check Rule** — Confirm in FSD: `(itemcode)` or `(itemcode + macno)`? Enforce consistently.

7. **Oracle Paths** — Confirm whether `blcode` is required in SPINRISE. Either include in canonical schema or exclude with documentation.

8. **`EmpCommon` Flag → Division Config** — Document what `EmpCommon` represents (common employee module vs standalone PO). Map to a configurable division-level setting in SPINRISE, not a global Boolean.

9. **Crystal Reports → Server-Side PDF** — Replace `CrystalReport1`, `clsCrystal`, and `EmpCommon` branch logic with server-side PDF generation returning a download URL. Report template selection → `po_para` config.

10. **Session State** — Replace `tempPurType{IP}` temp tables with proper user-session context (JWT claims or session service).

### IST Review Checklist Before FSD Generation

- Confirm: What does `EmpCommon = True` represent? Which divisions use which Crystal report template?
- Confirm: Should `ksp_PendPR` be hard-blocking or a soft warning? Should it be configurable per division?
- Confirm: Is `blcode` (Oracle field) required in SPINRISE?
- Confirm: Uniqueness rule for PR line items — item code only, or item code + machine?
- Confirm: Is `po_para.PRapprovalstatus` display-only, or does it gate any operation?
- Confirm: Is Manual PR numbering (`Manual_IndNo`) required in SPINRISE?
- Confirm: Is `PurOrd.UserFooter` OCX footer selector functionality required in SPINRISE?
- Document: Complete list of `po_para` flags and their expected default values in SPINRISE

---

*Document generated for SPINRISE FSD preparation.*
*Kalpatharu Software Ltd · Internal & Confidential*
*Based on active code analysis only — commented code excluded as per developer instruction.*
