# M02 — RMI Purchase Order: Analysis, Requirements & Claude Code Development Plan

**FSD Source**: `SpinRise-M02-RMI-PurchaseOrder-FSD-17-04-26.txt` (v8, Stage 0 Complete)
**Module**: M02 — Raw Material Inventory (RMI)
**Date**: 2026-04-25
**Status**: FSD Approved — TL-IST (V. Palanivel 16-Apr) + PM (P.B. Saravanan 17-Apr)

---

## Part 1 — FSD Deep Summary

### 1.1 What This Module Does

The **Purchase Order screen** is the highest-stakes entry in the RMI module. A buyer raises a PO to a raw cotton supplier — either from a Purchase Requisition (PR/Indent) or as a direct spot purchase. Every downstream transaction (goods arrival, QC, inventory receipt, supplier invoice, GST input credit, AP payment) traces back to this PO number. Errors here cascade into Accounts Payable and are very hard to correct post-arrival.

**Who**: Purchase department buyers/executives in the Spinning Division.
**When**: After a PR is raised by planning, or for spot/direct purchases.
**Output**: A numbered PO that is the mandatory reference for all downstream modules.

---

### 1.2 Primary Database Tables

| Table | Role |
|---|---|
| `RM_CONT` | PO header — one row **per variety** per PO (multi-row header pattern) |
| `RM_DELSCHED` | Delivery schedule — date/qty/address/variety per PO |
| `RM_ContDiscntRate` | Discount type grid (Cash Dis%, Trade Dis%, Commission%, etc.) |
| `RM_CONT_SLOTNO` | Supplier lot number range management (post-commit) |
| `RM_Trans_Log` | Audit log — used for both PR and PO audit writes |
| `RM_DelReason` | Lookup for delete reasons (mandatory before deletion) |
| `RM_PARAM` | Configuration flags (7 flags that drive all conditional behaviour) |
| `rm_var` | Variety master — carries HSN, CGST%, SGST%, IGST%, TaxCode |
| `rm_area` | Area master — auto-fills Station + State |
| `rm_pmode` | Payment mode lookup |
| `rm_rateunit` | Rate unit (Candy, KGS, etc.) — drives rate-per-kg calculation |
| `fa_slmas` | Supplier master — GST state, GSTIN, GL code |
| `fa_currency` | Currency master |
| `PO_Para` | PO configuration — default currency per division |
| `Rm_PRL` | PR line items — balance updated when PO is created from PR |
| `RM_prh` | PR header — joined for PR date validation |
| `rm_sample` | Sample master — active in With-Sample mode (wosample=Y) |
| `VW_rm_SupplierVariety` | View — most recent approved rate per supplier/variety/plant |
| `ig_tax` | GST tax code master — validates active tax codes |
| `pp_divmas` | Division master — branding for QuestPDF print |

---

### 1.3 Existing Legacy SPs (in production DB — to be superseded by SPINRISE SPs)

| Legacy SP | Purpose |
|---|---|
| `SP_PRToPO_RMI` | Loads pending PR lines for PO conversion (2 sort modes) |
| `SP_PRToPO_RMIFilter` | Same as above + LIKE filters on PR No/variety/name |
| `VW_rm_SupplierVariety` | View — approved rate master for supplier/variety/plant |

---

### 1.4 Two Operating Modes (RM_PARAM Driven)

| Mode | Flag | Trigger | SPINRISE Default |
|---|---|---|---|
| **With-Sample** | `wosample = 'Y'` | Mill Sample No. leads grid entry; rate from sample master | **Y** (CEO decision) — used by 9 sites incl. SCM Group (5 mills), Skycotex, SLVSM, Poongodhai, SRG |
| **Rate-Master** | `wosample = 'N'` | Rate/Col-6-exit triggers GST auto-fill from `rm_var`; rate may auto-fill from `VW_rm_SupplierVariety` if `MasterEntryFlg=Y` | Must be explicitly configured at onboarding (e.g. Pallavaa) |

---

### 1.5 Seven RM_PARAM Configuration Flags

| Flag | SPINRISE Config Name | SPINRISE Default | Effect |
|---|---|---|---|
| `SuppLotNoReqArrival` | `po_require_supplier_lot_no` | **Y** | Lot From/To visible + mandatory |
| `CentralizedOrder` | `po_centralised_numbering` | N | Global vs. per-division PO number sequence |
| `SeasoncalcReq` | `po_auto_calculate_season` | N | Auto-calc vs. manual season field |
| `MasterEntryFlg` | `po_pr_rate_master_required` | N | Locks rate/variety in grid when Y |
| `PRBased` | `po_validate_hsn_taxcode_on_variety` | **Y** (CEO decision) | HSN + TaxCode mandatory on every line (GST compliance) |
| `PO_Approval` | `po_approval_workflow_enabled` | **Y** (mandatory) | 3-level approval; min 1 level for all customers |
| `ADDTAXREQUIRED` | `po_additional_tax_required` | N | Additional tax fields |

---

### 1.6 Critical Business Flows

#### Flow A — PR-to-PO Conversion (Primary Daily Workflow)
1. Buyer opens PO Create screen → clicks "Load PR Lines"
2. `ksp_RMI_PO_GetPendingPRLines` returns lines where: (a) positive balance remaining, (b) not over-received, (c) PR date ≤ PO date
3. **MasterEntryFlg filter** (critical): if `Y` → only lines with approved rate in `VW_rm_SupplierVariety`; if `N` → only lines without approved rate
4. Lines displayed in a PR indent grid with optional LIKE filter (PR No / variety code / variety name)
5. User selects lines → populate PO line grid (qty editable; must not exceed PR balance)
6. On PO Save → `UPDATE Rm_PRL SET qtyord = qtyord + [PO qty]` **WITH (UPDLOCK)** within same transaction (CD-3 fix)
7. PO Print: show PR No + Date on print **only if iprno is populated** (conditional per IST-3)

#### Flow B — Delete with Mandatory Delete Reason
1. Step 0 (SPINRISE new): Check `FIRST_APPFLG` → hard stop if `'Y'` (approval commenced)
2. Step 1: Check `RM_Arrival` → hard stop if any arrival exists
3. Step 2: User confirms deletion
4. Step 3: Validate `RM_DelReason` table not empty
5. Step 4: User **must** select a delete reason (cannot skip)
6. Step 5: Write audit to `RM_Trans_Log.DelReason` with reason code (IST-8 confirmed)
7. Step 6: DELETE `RM_CONT`, `RM_CONT_SLOTNO`, `RM_DELSCHED`, `RM_ContDiscntRate`
8. Step 7: COMMIT

#### Flow C — PO Approval Workflow
- 3-level approval (`PO_Approval=Y` mandatory for all SPINRISE customers)
- Minimum 1 level; Pallavaa: 3 levels (RM Dept Head → Plant Head → Management)
- `FIRST_APPFLG='Y'` blocks deletion — set by first approval action
- SPINRISE must implement as `IApprovalService` + Approval UI at `/approval/po`
- Approval configuration must be **self-service** in SPINRISE Division Setup UI (CEO direction)

#### Flow D — GST Determination (On Supplier Select)
| Supplier Type | IGSTFLG | GST Logic |
|---|---|---|
| Foreign (STATE_FLAG='F') | N | No GST; no state/GSTIN check |
| Domestic Registered same state | Y | CGST% + SGST% from `rm_var` |
| Domestic Registered different state | N | IGST% from `rm_var` |
| Domestic Unregistered | per state comparison | GSTIN not required; state checked |

#### Flow E — Lot Number Management (Post-Commit)
After main COMMIT: DELETE existing `RM_CONT_SLOTNO` rows, re-INSERT per lot in range, UPDATE `RM_CONT.NONRECIEVELOT` with comma-separated list.

---

### 1.7 Save Sequence (Add Mode — 12 Steps)
1. Generate `contno` (SEQUENCE object — CD-2 fix)
2. INSERT `RM_CONT` (one row per variety)
3. Lookup `rm_sample` (wosample=Y: plotno/prno/pressmarkno)
4. Write audit to `RM_Trans_Log`
5. INSERT `RM_ContDiscntRate` (discount types from grid)
6. INSERT `RM_DELSCHED` (delivery schedule rows)
7. UPDATE `Rm_PRL` balance for PR-linked lines (WITH UPDLOCK — CD-3 fix)
8. **COMMIT**
9. DELETE + re-INSERT `RM_CONT_SLOTNO` lot numbers (post-commit)
10. UPDATE `RM_CONT.Carcode` (post-commit)
11. UPDATE `RM_CONT.NONRECIEVELOT` (post-commit)
12. Trigger QuestPDF print (RPT_RMI_PO)

---

### 1.8 Critical Defects (Must Fix in SPINRISE)

| # | Defect | SPINRISE Fix |
|---|---|---|
| CD-2 | `contno` MAX+1 without UPDLOCK — concurrent saves = duplicate PO numbers | SQL Server `SEQUENCE` object or locked sequence table |
| CD-3 | PR balance UPDATE lacks UPDLOCK — concurrent saves can over-commit | `WITH (UPDLOCK)` on `Rm_PRL` within save transaction |
| CD-5 | All VB6 queries use string concatenation — SQL injection | All queries via parameterized Dapper SPs (already the SPINRISE standard) |
| CD-6 | Crystal credentials in global variables | Application service account / integrated auth — not applicable (QuestPDF replaces Crystal) |
| CD-8 | E36 typo "Cannnot" (3×n) in error message | Correct to "Cannot" in SPINRISE |

**Removed from scope (per FSD)**: `weignment` field (always `""` at all sites), BUTTON(12) Print (dead button), BED%/ED Cess%/HS Cess% grid columns (hidden; keep DB cols, hide in UI), legacy Crystal Reports.

---

### 1.9 Validation Summary

- **8 pre-add checks** (PA-1 to PA-8): master tables must not be empty
- **18 header validations** (HV-1 to HV-18): mandatory fields, GST state, lot ranges, dates
- **17 line/schedule validations** (LV-1 to LV-17): tax codes active, rates non-zero, PR balance check, schedule uniqueness/cumulative
- **53 exact error messages** catalogued in Section 9 of FSD (E01–E53)
- **UoM–ArrivalType consistency rule** (New SPINRISE): Candy → Pack-wise (P); KGS → KGS-wise (K); mismatch blocked at save (E55)

---

### 1.10 Print (QuestPDF)

- Template name: **RPT_RMI_PO** (replacing `Cry_RMIPO_JAT_NEW` Crystal template)
- All JAT-specific branding replaced with `pp_divmas` division-level details
- **Conditional PR No/Date**: display only when `iprno IS NOT NULL AND iprno != 0`
- Auto-export PDF to `RMERPPO` folder when `PDFExportFlag=1`
- GL journal triggered at **Arrival** (TC-01), not at PO save

---

## Part 2 — Development Requirements

### 2.1 New SPINRISE Stored Procedures (17 SPs)

> Convention: `ksp_RMI_PO_*` prefix. All use `CREATE OR ALTER PROCEDURE`. No string concatenation.

| # | SP Name | Purpose |
|---|---|---|
| 1 | `ksp_RMI_PO_PreChecks` | Validate 8 prerequisite masters (PA-1 to PA-8) + financial year check |
| 2 | `ksp_RMI_PO_GenerateNumber` | Atomic PO number generation using `rm_cont_number` sequence table (UPDLOCK) |
| 3 | `ksp_RMI_PO_GetDefaultCurrency` | SELECT CurrCode FROM PO_Para WHERE Divcode = @Divcode |
| 4 | `ksp_RMI_PO_GetParam` | SELECT all RM_PARAM flags for a Divcode |
| 5 | `ksp_RMI_PO_GetDeleteReasons` | SELECT from RM_DelReason |
| 6 | `ksp_RMI_PO_GetPaginated` | Paginated browse list (contno, supplier, date, status, line count) |
| 7 | `ksp_RMI_PO_GetById` | Full PO detail: header + all RM_CONT variety rows + RM_DELSCHED + RM_ContDiscntRate |
| 8 | `ksp_RMI_PO_GetPendingPRLines` | Replaces SP_PRToPO_RMI — pending PR lines with balance, rate master join, MasterEntryFlg filter |
| 9 | `ksp_RMI_PO_FilterPRLines` | Same as above + LIKE filter on @indent / @itemcode / @itemname |
| 10 | `ksp_RMI_PO_GetGSTConfig` | Supplier GST state + IGSTFLG + GSTINNO for supplier select event |
| 11 | `ksp_RMI_PO_Insert` | Insert RM_CONT row(s) + RM_ContDiscntRate + RM_DELSCHED + audit + PR balance update (single transaction) |
| 12 | `ksp_RMI_PO_InsertSlotNo` | Post-commit lot number management in RM_CONT_SLOTNO |
| 13 | `ksp_RMI_PO_Update` | Modify PO header/lines (locked fields enforced at SP level if arrivals exist) |
| 14 | `ksp_RMI_PO_Delete` | Delete with reason code; writes RM_Trans_Log.DelReason; cascades CONT/SLOTNO/DELSCHED/Discnt |
| 15 | `ksp_RMI_PO_InsertAuditLog` | Write to RM_Trans_Log (Create/Modify/Delete modes) |
| 16 | `ksp_RMI_PO_GetApprovalStatus` | Current approval state (FIRST_APPFLG + level statuses) |
| 17 | `ksp_RMI_PO_UpdateApproval` | Approve/Reject at a given level; sets FIRST_APPFLG on level 1 approve |

---

### 2.2 Backend — Domain Layer

**File**: `Development/Backend/Spinrise.Domain/Areas/Purchase/PurchaseOrder/`

```
PurchaseOrder.cs          — PO aggregate root (header fields matching RM_CONT)
PurchaseOrderLine.cs      — Variety line (ordqty, ordkgs, candyrate, GST fields, PR linkage)
DeliverySchedule.cs       — RM_DELSCHED row
DiscountRate.cs           — RM_ContDiscntRate row
POLotNumber.cs            — RM_CONT_SLOTNO row
POAuditLog.cs             — RM_Trans_Log projection
```

---

### 2.3 Backend — Application Layer

**Location**: `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/`

#### DTOs

| DTO | Description |
|---|---|
| `POListQueryDto` | Page, PageSize, SearchText, FromDate, ToDate, SupplierCode, DivCode |
| `POSummaryResponseDto` | List row: contno, date, supplier name, variety count, status, approval flag |
| `PODetailResponseDto` | Full: header + `List<POLineResponseDto>` + `List<DeliveryScheduleDto>` + `List<DiscountRateDto>` |
| `POLineResponseDto` | All RM_CONT variety-row columns + GST fields + PR linkage |
| `CreatePODto` | All header fields + `List<CreatePOLineDto>` + `List<CreateDeliveryScheduleDto>` + `List<DiscountRateDto>` |
| `CreatePOLineDto` | varcode, ordqty, ordkgs, candyrate, packType, GST%, taxCode, HSN, iprno, prdate, prsno, msDocno |
| `UpdatePODto` | Same as Create; locked-field enforcement done at SP level |
| `PODeleteRequestDto` | contno, contdt, divcode, deleteReasonCode |
| `PRLineDto` | Pending PR line: prNo, prDate, varCode, varName, packType, balanceQty, balanceKgs, prSno, requisitionerName, masterDocNo |
| `PRLineFilterDto` | sortBy enum (ByIndent=1/ByVariety=2), indent?, itemCode?, itemName? |
| `POParamDto` | All 7 RM_PARAM flags mapped to SPINRISE config names |
| `POApprovalActionDto` | contno, contdt, divcode, level, action (Approve/Reject), remarks |
| `POApprovalStatusDto` | FIRST_APPFLG, level statuses, approver details |
| `PODefaultsDto` | defaultCurrency, defaultWosample, defaultPRBased (for Add initialisation) |

#### Interfaces

```csharp
IPurchaseOrderRepository   // Dapper operations
IPurchaseOrderService      // Business logic
IPRConversionService       // PR-to-PO pending line loading
IPOApprovalService         // Approval workflow
IPOReportService           // QuestPDF print (RPT_RMI_PO)
IPONumberService           // Atomic sequence generation
```

#### Services

| Service | Key Responsibilities |
|---|---|
| `PurchaseOrderService` | Pre-add checks, GST determination, UoM-ArrivalType validation, save orchestration, delete guard (5-step) |
| `PRConversionService` | GetPendingPRLines (MasterEntryFlg filter), FilterPRLines, TransferToGrid |
| `POApprovalService` | GetApprovalStatus, ApproveLevel, RejectLevel, FIRST_APPFLG management |
| `PONumberService` | GenerateNumber with locking (CD-2 fix) |
| `POReportService` | BuildQuestPDFDocument (RPT_RMI_PO), conditional PR No/Date visibility |

---

### 2.4 Backend — Infrastructure Layer

**Location**: `Development/Backend/Spinrise.Infrastructure/Areas/Purchase/PurchaseOrder/`

```
PurchaseOrderRepository.cs     — All Dapper calls to ksp_RMI_PO_* SPs
PRConversionRepository.cs      — GetPendingPRLines / FilterPRLines SP calls
POApprovalRepository.cs        — GetApprovalStatus / UpdateApproval SP calls
```

UnitOfWork transaction wraps: `ksp_RMI_PO_Insert` + `ksp_RMI_PO_InsertAuditLog` + `Rm_PRL` balance update. Post-commit: `ksp_RMI_PO_InsertSlotNo`.

---

### 2.5 Backend — API Layer

**Location**: `Development/Backend/Spinrise.API/Areas/Purchase/PurchaseOrder/`

```csharp
// PurchaseOrderController.cs — inherits BaseApiController
GET    /api/v1/rmi/po                      // Paginated browse
GET    /api/v1/rmi/po/{contno}/{contdt}    // Full detail
GET    /api/v1/rmi/po/defaults             // Defaults for Add (currency, wosample, PRBased)
GET    /api/v1/rmi/po/params               // RM_PARAM flags
GET    /api/v1/rmi/po/delete-reasons       // RM_DelReason lookup
GET    /api/v1/rmi/po/pr-lines             // Pending PR lines (query params: sortBy, indent, itemCode, itemName)
POST   /api/v1/rmi/po                      // Create PO
PUT    /api/v1/rmi/po/{contno}/{contdt}    // Modify PO
DELETE /api/v1/rmi/po/{contno}/{contdt}    // Delete PO (deleteReasonCode in body)
GET    /api/v1/rmi/po/{contno}/{contdt}/print  // QuestPDF download
GET    /api/v1/rmi/po/{contno}/{contdt}/approval  // Get approval status
POST   /api/v1/rmi/po/{contno}/{contdt}/approve   // Submit approval action
```

---

### 2.6 Frontend Feature Module

**Location**: `Development/spinrise-web/src/features/purchase-order/`

```
api/
  purchaseOrderApi.ts         // All axios calls to /api/v1/rmi/po/*
  prConversionApi.ts          // /api/v1/rmi/po/pr-lines
components/
  po-list/
    POFilterBar.tsx           // Zoho-style filter: PO No | Date Range | Supplier | Status | Reset | New PO
    PODataTable.tsx           // List table: PO No, Date, Supplier, Varieties, Status, Approval badge
  po-form/
    POHeaderForm.tsx          // Header fields: supplier, date, area, payment, currency, flags
    POLineGrid.tsx            // Ant Design editable table: variety lines with GST auto-fill
    PODeliverySchedule.tsx    // Delivery date/qty/address/variety grid
    POPaymentTab.tsx          // Tab 1: delivery type, auth signatory, billing addr, transport
    POTaxTab.tsx              // Tab 2: tax choice, commission, TCS%, spot expense, plant code
    POQualityParams.tsx       // Cotton quality: grade, staple, micronaire, strength, moisture, trash
    PRIndentPanel.tsx         // Slide-in panel: pending PR lines grid with filter + multi-select transfer
    POSampleModeToggle.tsx    // With-Sample vs Rate-Master mode selector
    POApprovalBadge.tsx       // Approval status chip (Pending L1 / Approved / Rejected)
  po-approval/
    POApprovalModal.tsx       // Approve/Reject modal for approvers
pages/
  PurchaseOrderListPage.tsx   // Zoho-style list: title+count left, filter bar, table
  PurchaseOrderCreatePage.tsx // Create form with tabbed layout
  PurchaseOrderEditPage.tsx   // Edit form (locked fields when arrivals exist)
  PurchaseOrderApprovalPage.tsx // Approval dashboard (separate route: /approval/po)
services/
  poFormService.ts            // GST determination, UoM-ArrivalType rule, rate-per-kg calc
  gstService.ts               // IGSTFLG logic, GST rate auto-fill
store/
  usePOStore.ts               // Zustand: form state, wosample mode, PR line selection
  usePOListStore.ts           // Zustand: list filters, pagination
types.ts                      // All TypeScript interfaces matching DTOs
```

---

### 2.7 Print — QuestPDF (RPT_RMI_PO)

**Location**: `Development/Backend/Spinrise.Application/Areas/Purchase/Reports/`

Key layout elements from `Cry_RMIPO_JAT_NEW`:
- A4 Portrait (or Landscape — confirm from Crystal template inspection)
- **Division header** from `pp_divmas` (replaces JAT branding)
- PO Number, Date, Supplier, Agent, Area, Payment Mode, Currency, Crop Year
- Variety line table: Sample No, Variety Code/Name, Qty Bales, Order Kgs, Rate, Pack Type, Cash Dis%, Trade Dis%, GST%
- Cotton quality parameters section
- Delivery schedule section
- **PR No + PR Date**: conditional — visible only when `iprno IS NOT NULL AND iprno != 0`
- Authorised Signatory + signature image (from approval config)
- 3-level approval signature footer (configurable)
- PDF export to `RMERPPO/{DivCode}-PO-{contno} DT-{dd-mm-yy}-{supplier15}.pdf`

---

### 2.8 Approval Configuration Setup UI (SPINRISE New — CEO Direction)

**Location**: `Development/spinrise-web/src/features/admin/po-approval-config/`

- Division Setup UI for approval chain (no backend DB access by customer)
- Configure per division: number of levels (1–3), approver user IDs, designations, signature images, approval labels
- Maps to `RM_PARAM.PO_Approval` + a new `RM_POApprovalConfig` table (to be designed)

---

### 2.9 DI Registrations Required (`Program.cs`)

```csharp
builder.Services.AddScoped<IPurchaseOrderRepository, PurchaseOrderRepository>();
builder.Services.AddScoped<IPurchaseOrderService, PurchaseOrderService>();
builder.Services.AddScoped<IPRConversionService, PRConversionService>();
builder.Services.AddScoped<IPOApprovalService, POApprovalService>();
builder.Services.AddScoped<IPONumberService, PONumberService>();
builder.Services.AddScoped<IPOReportService, POReportService>();
```

---

### 2.10 Testing Requirements

| Layer | Tests |
|---|---|
| `PurchaseOrderService` | Pre-add checks, GST determination, UoM-ArrivalType rule, delete guard (5-step), PR balance validation |
| `PRConversionService` | MasterEntryFlg filter (Y/N paths), balance filter, date validation |
| `PurchaseOrderRepository` | SP parameter mapping, transaction boundary, post-commit lot numbers |
| `POReportService` | Conditional PR No/Date, division branding substitution |
| Frontend (Vitest + MSW) | GST auto-fill on col 6 exit, PR line transfer to grid, lot From/To validation, approval badge states |

---

## Part 3 — Real-Time Claude Code Development Planner

> **How to use**: Copy each prompt block and paste directly into Claude Code CLI. Work **phase by phase in order** — each phase depends on the previous. Tick each step as done before moving to the next.

---

### Phase 0 — Pre-flight Check (5 min)

**Purpose**: Verify DB tables exist, understand column layout before writing any code.

```
Read the FSD at Docs/M02/SpinRise-M02-RMI-PurchaseOrder-FSD-17-04-26.txt and confirm which of these tables exist in the production DB at 172.16.16.52\sql2016 (SpinRiseSaranya) by running SELECT TOP 0 * FROM each: RM_CONT, RM_DELSCHED, RM_ContDiscntRate, RM_CONT_SLOTNO, RM_Trans_Log, RM_DelReason, RM_PARAM, rm_var, rm_area, rm_pmode, rm_rateunit, fa_slmas, fa_currency, PO_Para, Rm_PRL, RM_prh, rm_sample, ig_tax, pp_divmas. List all columns found for RM_CONT and Rm_PRL — these are the two most critical tables for the PO module. Report which tables are missing (if any) so I can create them before SP development begins.
```

---

### Phase 1 — Stored Procedures (Day 1–2)

**Step 1.1 — Sequence Table + Number Generator**

```
In Development/Backend/Spinrise.DBScripts/Scripts/02 Stored Procedures/, create ksp_RMI_PO_GenerateNumber.sql.

The SP must solve CD-2 from the FSD (MAX+1 race condition causes duplicate PO numbers under concurrent saves). Use a locked sequence table approach:
- Table: rm_cont_number (divcode varchar(2), prefix char(1), fyear int, lastno int) — create this table script in 01 Tables/ as well
- SP takes @Divcode, @Prefix, @FYear parameters
- Uses BEGIN TRAN + UPDATE rm_cont_number WITH (UPDLOCK, HOLDLOCK) SET lastno = lastno + 1; if no row exists INSERT with lastno=1
- Returns @NewNumber int
- If CentralizedOrder=Y (from RM_PARAM), prefix='C' and divcode is ignored in the sequence key

This is the SPINRISE standard for all document number generation (ref: Guide v3 Section 11).
```

**Step 1.2 — Core Read SPs**

```
Create these 5 stored procedures in Development/Backend/Spinrise.DBScripts/Scripts/02 Stored Procedures/, following the ksp_ naming convention and CREATE OR ALTER PROCEDURE pattern used in this project:

1. ksp_RMI_PO_GetParam.sql
   - @Divcode varchar(2)
   - SELECT all 7 RM_PARAM flags (SuppLotNoReqArrival, CentralizedOrder, SeasoncalcReq, MasterEntryFlg, PRBased, PO_Approval, ADDTAXREQUIRED) + ftamt
   - Also include wosample default ('Y')

2. ksp_RMI_PO_GetDefaultCurrency.sql
   - @Divcode varchar(2)
   - SELECT CurrCode FROM PO_Para WHERE Divcode = @Divcode

3. ksp_RMI_PO_GetDeleteReasons.sql
   - No params
   - SELECT code + description FROM RM_DelReason ORDER BY code

4. ksp_RMI_PO_GetGSTConfig.sql
   - @SupplierCode varchar(10)
   - SELECT GSTSTATECODE, GSTINNO, SuppType, STATE_FLAG FROM fa_slmas WHERE slcode = @SupplierCode
   - Returns enough for the frontend to compute IGSTFLG

5. ksp_RMI_PO_PreChecks.sql
   - @Divcode varchar(2)
   - Run 8 existence checks (PA-1 to PA-8): RM_LOT (financial year), fa_slmas, rm_area, po_car, rm_var, RM_MIXGRP, rm_rateunit — return a result set with CheckName + Passed bit + ErrorMessage

After creating all 5, update Development/Backend/Spinrise.DBScripts/merged.sql by appending these SPs (use GO separators).
```

**Step 1.3 — Paginated List + Detail SPs**

```
Create these 2 stored procedures in Development/Backend/Spinrise.DBScripts/Scripts/02 Stored Procedures/:

1. ksp_RMI_PO_GetPaginated.sql
   - Params: @Divcode, @Page int, @PageSize int, @SearchText nvarchar(100) nullable, @FromDate date nullable, @ToDate date nullable, @SupplierCode varchar(10) nullable
   - Returns distinct PO headers: contno, contdt, supplier name (from fa_slmas), variety count (COUNT of RM_CONT rows), FIRST_APPFLG, IsDeleted, CreatedBy, TotalCount for pagination
   - ORDER BY contdt DESC, contno DESC
   - Use OFFSET/FETCH for pagination

2. ksp_RMI_PO_GetById.sql
   - Params: @Contno varchar(10), @Contdt datetime, @Divcode varchar(2)
   - Returns 3 result sets:
     Result 1: All RM_CONT rows for this PO (header info + each variety line with all columns)
     Result 2: RM_DELSCHED rows for this PO
     Result 3: RM_ContDiscntRate rows for this PO
   - Use LEFT JOINs on fa_slmas (supplier name), rm_var (variety name), rm_area (station/state)

Update merged.sql after creating both.
```

**Step 1.4 — PR Conversion SPs**

```
Create these 2 stored procedures. They replace the legacy SP_PRToPO_RMI and SP_PRToPO_RMIFilter in the production VB6 DB. Read Section 8.3 of the FSD at Docs/M02/SpinRise-M02-RMI-PurchaseOrder-FSD-17-04-26.txt for the full JOIN chain and WHERE conditions.

1. ksp_RMI_PO_GetPendingPRLines.sql
   - Params: @Divcode varchar(2), @ContDt date, @SortBy tinyint (1=by Indent No/Date, 2=by Variety), @SupplierCode varchar(8), @Plant varchar(8)
   - JOINs: Rm_PRL INNER JOIN rm_var INNER JOIN RM_prh LEFT JOIN pr_emp (when @SortBy=1) LEFT JOIN VW_rm_SupplierVariety (on supplier/variety/plant, MAX Effdate with appflg='Y')
   - WHERE: positive balance (ISNULL(qtyind,0) - ISNULL(qtyord,0) > 0), not over-received (ISNULL(qtyord,0) - ISNULL(qtyrec,0) >= 0), PR date <= @ContDt
   - MasterEntryFlg filter: read RM_PARAM.MasterEntryFlg; if 'Y' only return lines where VW_rm_SupplierVariety.varcode IS NOT NULL; if 'N' only where IS NULL
   - Return columns: prNo, prDate, varCode, varName, packType, balanceQty, balanceKgs, prSno, requisitionerName, masterDocNo, masterDocSno, candyRate (from rate master when MasterEntryFlg=Y)
   - ORDER BY varies per @SortBy

2. ksp_RMI_PO_FilterPRLines.sql
   - Same as above + 3 optional LIKE filter params: @Indent varchar(20), @ItemCode varchar(10), @ItemName varchar(250)
   - Apply WHERE LIKE '%@Indent%' on Rm_PRL.PRNO when @Indent IS NOT NULL, etc.

Update merged.sql.
```

**Step 1.5 — Write SPs (Insert / Update / Delete)**

```
Create these 3 stored procedures. Read Section 8.1 and 8.2 of the FSD carefully for the exact save and delete sequences.

1. ksp_RMI_PO_Insert.sql
   - Params: @Divcode, @Contno (generated before calling), @ContDt, @SupCd, @PayMode, @AreaCode, @CurrCode, @DlyType, @Acceptance, @Transport, @SupFileName, @CropYear, @Season, @FTFlg, @FTAmt, @TaxChoice, @CommPer, @CommPerBale, @PerBaleTruck, @TCSPer, @SpotExpense, @IncidentCharge, @SusCatType, @PlantCode, @LineNo, @Wosample, @IprNo nullable, @PrDate nullable, @WoSampleMode + JSON/TVP for line items + delivery schedule + discount rates
   - Inside a transaction: INSERT RM_CONT rows (one per variety), INSERT RM_ContDiscntRate, INSERT RM_DELSCHED, UPDATE Rm_PRL balances WITH (UPDLOCK) for PR-linked lines, write RM_Trans_Log
   - COMMIT
   - Lot number management runs separately (ksp_RMI_PO_InsertSlotNo)

2. ksp_RMI_PO_InsertSlotNo.sql
   - Params: @Contno, @Contdt, @Divcode, @LotFrom numeric, @LotTo numeric
   - DELETE existing RM_CONT_SLOTNO for this PO
   - If LotFrom=LotTo: single INSERT + UPDATE RM_CONT.NONRECIEVELOT
   - If LotFrom<LotTo: INSERT one row per lot in range + UPDATE NONRECIEVELOT with comma-separated list

3. ksp_RMI_PO_Delete.sql
   - Params: @Contno, @Contdt, @Divcode, @DeleteReasonCode varchar(10), @DeletedBy varchar(50)
   - Step 0: Check FIRST_APPFLG — return error if 'Y'
   - Step 1: Check RM_Arrival — return error if arrivals exist
   - Step 2: Write RM_Trans_Log with DelReason = @DeleteReasonCode (IST-8 confirmed)
   - Step 3: DELETE RM_CONT, RM_CONT_SLOTNO, RM_DELSCHED, RM_ContDiscntRate
   - COMMIT

Update merged.sql.
```

**Step 1.6 — Audit Log + Approval SPs**

```
Create these 3 stored procedures:

1. ksp_RMI_PO_InsertAuditLog.sql
   - Params: @Contno, @Contdt, @Divcode, @Mode varchar(10) ('ADD'/'MODIFY'/'DELETE'), @DeleteReasonCode varchar(10) nullable, @UserId varchar(50)
   - INSERT into RM_Trans_Log with appropriate fields per mode
   - On DELETE mode: also write DelReason column

2. ksp_RMI_PO_GetApprovalStatus.sql
   - Params: @Contno, @Contdt, @Divcode
   - Return FIRST_APPFLG from RM_CONT + current approval level statuses
   - Join approval config table if it exists, else return just FIRST_APPFLG

3. ksp_RMI_PO_UpdateApproval.sql
   - Params: @Contno, @Contdt, @Divcode, @Level tinyint, @Action varchar(10) ('APPROVE'/'REJECT'), @ApproverId varchar(50), @Remarks nvarchar(500)
   - On Level 1 APPROVE: set RM_CONT.FIRST_APPFLG = 'Y'
   - Write to approval log table

Update merged.sql. Confirm with me what the approval config table structure should be before writing this SP, as this is a new SPINRISE table.
```

---

### Phase 2 — Domain Layer (30 min)

```
Create the Domain layer for the RMI Purchase Order module. Location: Development/Backend/Spinrise.Domain/Areas/Purchase/PurchaseOrder/

Create these entity files:
- PurchaseOrder.cs — properties matching RM_CONT header columns (contno, contdt, supcd, paymode, areacode, currcode, dlotype, acceptance, transport, supfilename, cropyear, season, ftflg, ftamt, taxchoice, commper, commperbal, perbaletruckbale, tcsPer, spotexpense, incidentcharge, suscattype, plcode, lineno, wosample, FIRST_APPFLG, NONRECIEVELOT) — no methods, no EF attributes
- PurchaseOrderLine.cs — per-variety row (contno, contdt, divcode, varcode, ordqty, ordkgs, candyrate, bbflag, cashDisPer, tradeDisPer, cessPer, insPer, hsn, cgstPer, sgstPer, igstPer, taxCode, iprno, prdate, prsno, msDocno, msDocsno, noOfLoad, ratekg)
- DeliverySchedule.cs — RM_DELSCHED (divcode, contno, contdate, deldate, delqty, address, varcode, instruction, weighment)
- DiscountRate.cs — RM_ContDiscntRate (divcode, contno, contdt, discType, discPer, discAmt)
- POLotNumber.cs — RM_CONT_SLOTNO (divcode, contno, contdt, slotNo)
- POConfig.cs — RM_PARAM flags (all 7, mapped to SPINRISE property names per FSD Section 11)

Follow Spinrise.Domain existing entity style exactly — check Spinrise.Domain/Areas/Purchase/ for reference.
```

---

### Phase 3 — Application Layer (2–3 hours)

**Step 3.1 — DTOs**

```
Create all DTOs for the PurchaseOrder module in Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/DTOs/. Follow the DTO naming and DataAnnotations style used in Areas/Purchase/PurchaseRequisition/DTOs/.

Create these files:
- POListQueryDto.cs (Page, PageSize, SearchText, FromDate, ToDate, SupplierCode, DivCode)
- POSummaryResponseDto.cs (contno, contDt, supplierName, varietyCount, firstAppFlg, isDeleted, createdBy, totalCount)
- POLineResponseDto.cs (all RM_CONT variety columns + varName from rm_var join)
- DeliveryScheduleResponseDto.cs
- DiscountRateDto.cs
- PODetailResponseDto.cs (header fields + List<POLineResponseDto> + List<DeliveryScheduleResponseDto> + List<DiscountRateDto>)
- CreatePOLineDto.cs (with DataAnnotations — varcode Required, ordqty/ordkgs conditional, candyrate Required, iprno nullable)
- CreateDeliveryScheduleDto.cs (deldate Required, delqty > 0, address)
- CreatePODto.cs (all header fields with DataAnnotations per FSD Section 3 mandatory markers + List<CreatePOLineDto> + List<CreateDeliveryScheduleDto> + List<DiscountRateDto>)
- UpdatePODto.cs (same as Create; document which fields are locked when arrivals exist)
- PODeleteRequestDto.cs (contno, contdt, divcode, deleteReasonCode Required)
- PRLineDto.cs (prNo, prDate, varCode, varName, packType, balanceQty, balanceKgs, prSno, requisitionerName, masterDocNo, masterDocSno, candyRate)
- PRLineFilterDto.cs (sortBy int, indent string?, itemCode string?, itemName string?)
- POParamDto.cs (all 7 flags as bool/string properties with SPINRISE config names)
- PODefaultsDto.cs (defaultCurrency, wosample, prBased, centralizedOrder)
- POApprovalActionDto.cs (contno, contdt, divcode, level, action, remarks)
- POApprovalStatusDto.cs (firstAppFlg, levels List<ApprovalLevelDto>)
- GSTConfigDto.cs (gstStateCode, gstInNo, suppType, stateFlag, igstFlg)
- PreCheckResultDto.cs (checkName, passed, errorMessage) — reuse PagedResult.cs from PR module
```

**Step 3.2 — Interfaces**

```
Create these interface files in Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Interfaces/:

- IPurchaseOrderRepository.cs
  Methods: GetPaginatedAsync, GetByIdAsync, InsertAsync, UpdateAsync, DeleteAsync, InsertSlotNoAsync, InsertAuditLogAsync, GetDeleteReasonsAsync, GetParamAsync, GetDefaultCurrencyAsync, GetGSTConfigAsync, PreChecksAsync, GetApprovalStatusAsync, UpdateApprovalAsync

- IPurchaseOrderService.cs
  Methods: GetListAsync, GetDetailAsync, GetDefaultsAsync, GetDeleteReasonsAsync, CreateAsync (returns IReadOnlyList<string> warnings), UpdateAsync, DeleteAsync, GetApprovalStatusAsync, ApproveAsync

- IPRConversionService.cs
  Methods: GetPendingPRLinesAsync, FilterPRLinesAsync

- IPOReportService.cs
  Methods: GeneratePOPdfAsync (returns byte[])

- IPONumberService.cs
  Methods: GenerateNextNumberAsync (returns string contno)

All async, all return types wrapped in ApiResponse<T> pattern consistent with existing modules. Check Areas/Purchase/PurchaseRequisition/Interfaces/IPurchaseRequisitionService.cs for the exact signature pattern to follow.
```

**Step 3.3 — Service Implementation**

```
Implement PurchaseOrderService.cs in Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Services/. Follow PurchaseRequisitionService.cs as the reference pattern.

Implement these methods with full business logic:

1. GetListAsync — call repo, return paged result
2. GetDetailAsync — call repo, map to PODetailResponseDto
3. GetDefaultsAsync — GetParam + GetDefaultCurrency → PODefaultsDto
4. CreateAsync:
   a. Run PreChecks (PA-1 to PA-8) — throw if any fails
   b. Validate header (HV-1 to HV-18)
   c. Validate lines (LV-1 to LV-17) — silent purge empty rows first
   d. UoM-ArrivalType consistency check (Candy→P, KGS→K per FSD Section 5.12)
   e. GST determination (Section 5.1 — IGSTFLG logic)
   f. PRBased=Y: verify HSN + TaxCode non-blank per line
   g. Generate contno via IPONumberService
   h. Call repo.InsertAsync (single transaction)
   i. Call repo.InsertSlotNoAsync (post-commit, outside transaction)
   j. Return warnings (e.g. E34 GST%=0 confirmed by user — surface as warning not exception)
5. DeleteAsync: Implement the 5-step delete guard from FSD Section 5.10 (FIRST_APPFLG check, arrival check, reason validation) before calling repo.DeleteAsync

Do NOT implement UpdateAsync or approval methods yet — mark them with throw new NotImplementedException() for now. We will implement in the next step.
```

**Step 3.4 — PRConversionService + Update + Approval**

```
In Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Services/:

1. Implement PRConversionService.cs
   - GetPendingPRLinesAsync(@divcode, @contDt, @sortBy, @supplierCode, @plant): call repo, return List<PRLineDto>
   - FilterPRLinesAsync(PRLineFilterDto): call repo filter SP, return List<PRLineDto>
   - No business logic beyond param mapping — MasterEntryFlg filter is in the SP

2. Complete UpdateAsync in PurchaseOrderService.cs
   - Run same header/line validations as Create
   - Locked fields when arrivals exist: supplier, date — enforce at service layer (return error, not SP error)
   - Season save path: Modify mode uses txtfields(25) per FSD Section 5.9 — document this in the UpdatePODto comment

3. Add ApproveAsync to PurchaseOrderService.cs
   - Call repo.UpdateApprovalAsync
   - Return updated POApprovalStatusDto
```

---

### Phase 4 — Infrastructure Layer (1.5 hours)

```
Implement the repository in Development/Backend/Spinrise.Infrastructure/Areas/Purchase/PurchaseOrder/PurchaseOrderRepository.cs. Follow the Dapper pattern from existing repositories in Infrastructure/Areas/Purchase/PurchaseRequisition/.

Key requirements:
- All SP calls via _uow.Connection.QueryAsync / ExecuteAsync / QueryMultipleAsync
- GetByIdAsync: use QueryMultipleAsync to read 3 result sets (header rows, delivery schedule, discount rates) in one round trip
- InsertAsync: must wrap in _uow.BeginTransaction() ... _uow.CommitTransaction() covering: ksp_RMI_PO_Insert + ksp_RMI_PO_InsertAuditLog + Rm_PRL balance update
- InsertSlotNoAsync: called AFTER CommitTransaction (post-commit pattern, consistent with VB6 behaviour)
- DeleteAsync: transaction wraps audit log write + deletes
- For SP parameters, use anonymous objects matching exact @ParamName casing from the SPs

Also create PRConversionRepository.cs:
- GetPendingPRLinesAsync: call ksp_RMI_PO_GetPendingPRLines with Dapper.DynamicParameters
- FilterPRLinesAsync: call ksp_RMI_PO_FilterPRLines

Register all in Program.cs after implementing.
```

---

### Phase 5 — API Controller (45 min)

```
Create Development/Backend/Spinrise.API/Areas/Purchase/PurchaseOrder/PurchaseOrderController.cs.

Inherit from BaseApiController. Add [Authorize] attribute.

Implement all 11 endpoints listed in the development requirements Part 2.5. Follow PurchaseRequisitionController.cs exactly for: route pattern, ApiResponse<T> wrapping, correlation ID logging, try/catch, [HttpGet]/[HttpPost]/[HttpPut]/[HttpDelete] attribute usage.

Special attention:
- DELETE endpoint: read PODeleteRequestDto from [FromBody] — deleteReasonCode is mandatory
- GET /pr-lines: bind PRLineFilterDto from [FromQuery]
- GET /{contno}/{contdt}/print: return File(pdfBytes, "application/pdf", $"PO-{contno}.pdf")
- POST /{contno}/{contdt}/approve: read POApprovalActionDto from [FromBody]

Register the controller route prefix as "rmi/po" (not "purchase/po") to match the module M02 RMI scope.

Add Swagger XML doc comments on each endpoint for the spec.
```

---

### Phase 6 — Frontend Feature Module (Day 3–4)

**Step 6.1 — Types + API Layer**

```
Create the frontend types and API layer for the purchase-order feature module. Location: Development/spinrise-web/src/features/purchase-order/.

1. types.ts — TypeScript interfaces matching all backend DTOs:
   POSummaryResponse, PODetailResponse, POLineResponse, DeliveryScheduleResponse, DiscountRateDto, CreatePORequest, CreatePOLineRequest, CreateDeliveryScheduleRequest, PRLineDto, PRLineFilter, POParamDto, PODefaultsDto, POApprovalAction, POApprovalStatus, GSTConfigDto, POListQuery. All fields non-optional unless explicitly nullable in the DTO. No 'any'.

2. api/purchaseOrderApi.ts — axios calls to /api/v1/rmi/po/* matching all 11 endpoints. Use the shared axios client from src/shared/api/. Return types from types.ts.

3. api/prConversionApi.ts — GET /api/v1/rmi/po/pr-lines with PRLineFilter query params.

Follow the pattern in src/features/purchase-requisition/api/purchaseRequisitionApi.ts exactly.
```

**Step 6.2 — Zustand Stores**

```
Create Zustand stores for the purchase-order module in Development/spinrise-web/src/features/purchase-order/store/:

1. usePOListStore.ts
   - State: filters (fromDate, toDate, searchText, supplierCode), pagination (page, pageSize), data (POSummaryResponse[]), totalCount, loading, error
   - Actions: setFilter, resetFilters, setPage, fetchList, refreshList

2. usePOStore.ts
   - State: mode ('view'|'create'|'edit'), currentPO (PODetailResponse|null), params (POParamDto|null), defaults (PODefaultsDto|null), wosample (boolean), selectedPRLines (PRLineDto[]), pendingPRLines (PRLineDto[]), loadingPRLines
   - Actions: initCreate (loads defaults + params), loadForEdit (loads PO by id), setPRLines, addPRLineToGrid, removePRLine, setWosample, reset

Follow useLookupStore.ts in purchase-requisition as the Zustand style reference.
```

**Step 6.3 — PR Indent Panel + Line Grid**

```
Create these two core components in Development/spinrise-web/src/features/purchase-order/components/po-form/:

1. PRIndentPanel.tsx
   - Ant Design Drawer (slide-in from right, width=900)
   - Header: sort toggle (By Indent / By Variety) + 3 filter inputs (PR No, Item Code, Item Name) + Search button
   - Table showing PRLineDto[] with columns: PR No, PR Date, Variety Code, Variety Name, Pack Type, Balance Qty, Balance Kgs, Requisitioner
   - Row selection (checkbox) — multi-select allowed
   - "Transfer Selected" button at bottom — calls usePOStore.addPRLineToGrid for each selected row
   - Loading state while fetching; empty state with message

2. POLineGrid.tsx
   - Ant Design editable Table with these columns per FSD Section 2.4:
     Col 0: Mill Sample No. (active when wosample=Y)
     Col 1: Variety Code (lookup; triggers GST auto-fill on col 6 exit)
     Col 2: Variety Name (read-only)
     Col 3: Qty Bales (active when ArrivalType=P)
     Col 4: Pack Type (B/R/H)
     Col 5: Order Kgs (active when ArrivalType=K, 3dp)
     Col 6: Rate/Unit (10dp; locked when MasterEntryFlg=Y); on exit → GST auto-fill
     Col 7: Supplier Sample No. (read-only)
     Col 8: Cash Dis% | Col 9: Trade Dis% | Col 13: Cess% | Col 17: Ins%
     Hidden: HSN, CGST%, SGST%, IGST%, TaxCode, iprno, prdate, prsno, MSDocno, MSDocsno
   - On col 6 exit (Rate exit): call gstService.autoFillGST(varcode, igstFlg) → fill hidden GST columns
   - On Variety Code select: validate HSN + TaxCode non-blank (LV-16, LV-17) when PRBased=Y
   - Validate Qty vs PR balance on change (LV-10, LV-11) — show warn, auto-correct
   - Add/Remove row buttons
```

**Step 6.4 — Form Tabs + Header**

```
Create the remaining form components in Development/spinrise-web/src/features/purchase-order/components/po-form/:

1. POHeaderForm.tsx — Ant Design Form.Item grid (2-column) with these fields matching FSD Section 2.2:
   Order No (disabled, system), Order Date (DatePicker, yfdate to pdate range), Supplier Code (lookup with KSLLIST1 style), Supplier Name (auto-filled, disabled), Agent/Broker Code (optional), Area Code (lookup → Station + State auto-fill), Payment Mode (lookup), Currency Code (auto-defaulted from PODefaultsDto, mandatory), Country Code (optional), Centralised Order (Checkbox, from params), Import/Local/Other (Radio group), Mill Reference No. (free text), Crop Year (auto-default to current year), Prepared Date + Time (system, disabled). Add a sample mode toggle (With-Sample / Rate-Master) as a prominent Switch at top.

2. POPaymentTab.tsx — Tab 1 fields from FSD Section 2.7: Delivery Type, Auth Signatory (employee lookup), Billing Address, Delivery Address Code, Contact Person, Payment Term 1/2 + days, Credit Days, Interest%, Mode of Transport (required), Delivery Terms, Remarks, Supplier PO File upload (mandatory — validate physical file path HV-10/HV-11).

3. POTaxTab.tsx — Tab 2 fields from FSD Section 2.8: Tax Choice radio (Single per line / Common all lines), Tax Code Common (active when Common mode), Commission%, Commission Per Bale, Per Bale/Truck dropdown (Truck/Bale), TCS%, Spot Expenses, Incidental Charges%, Sustainability Category, Plant Code, Line Number.

4. POQualityParams.tsx — Cotton quality section from FSD Section 2.6: Grade, Staple Length, Micronaire, Strength (g/tex), Moisture%, Trash%.

5. PODeliverySchedule.tsx — Schedule grid from FSD Section 2.5: Date picker (>= Order Date), Qty (>0), Address text, Variety (from line items), Instruction. Validate LV-12 to LV-15 (date, qty, duplicate, cumulative).
```

**Step 6.5 — Pages + Routing**

```
Create the page components and wire up routing for the purchase-order module.

1. PurchaseOrderListPage.tsx — Zoho-style layout matching PurchaseRequisitionListPage.tsx:
   - Title "Purchase Orders" + count badge left; no report button right (separate)
   - POFilterBar.tsx: PO No | Date Range | Supplier | Status | Search | Reset | New PO button (right-aligned)
   - Full-width PODataTable.tsx: columns = PO No, Date, Supplier Name, Varieties (count), Status badge (Draft/Approved), Approval badge (Pending L1/Approved/Rejected), Actions (View/Edit/Delete/Print)
   - Delete action: confirmation modal with RM_DelReason dropdown (mandatory) — same pattern as PR delete

2. PurchaseOrderCreatePage.tsx — 3-tab Ant Design Tabs layout:
   Tab 0 "Order Details": POHeaderForm + POSampleModeToggle + POLineGrid + PRIndentPanel (triggered by "Load PR Lines" button) + POQualityParams + PODeliverySchedule
   Tab 1 "Payment Details": POPaymentTab
   Tab 2 "Tax Details": POTaxTab
   Save button: validates all tabs, calls createPO API, on success navigates to list + shows success toast + triggers print if PDFExportFlag.

3. PurchaseOrderEditPage.tsx — same layout as Create; pre-populate from PODetailResponse; locked fields (supplier, date) shown as disabled when FIRST_APPFLG='Y' or arrivals exist.

Add lazy routes in the app router (check src/App.tsx or routing config) for:
  /rmi/purchase-orders → PurchaseOrderListPage
  /rmi/purchase-orders/new → PurchaseOrderCreatePage
  /rmi/purchase-orders/:contno/:contdt/edit → PurchaseOrderEditPage

Add sidebar nav entry under "Raw Material Inventory" section.
```

---

### Phase 7 — QuestPDF Print (Day 5)

```
Implement the QuestPDF print template for RPT_RMI_PO.

Location: Development/Backend/Spinrise.Application/Areas/Purchase/Reports/

1. Create POReportDto.cs — the data shape fed into the QuestPDF document (header + lines + delivery schedule + quality params + approval signatories + division branding from pp_divmas)

2. Create PurchaseOrderQuestDocument.cs implementing IDocument — follow the existing PurchaseRequisitionQuestDocument.cs in the same folder as the reference pattern.

Layout requirements from FSD Section 7.2 and CEO decision (CEO Apr 2026):
- Replace ALL JAT-specific branding (company name, logo, header) with pp_divmas fields (divname, address, phone, logo path)
- PO Number, Date, Supplier, Agent, Area, Payment Mode, Currency, Crop Year in header section
- Line items table: Sample No, Variety Code, Variety Name, Qty Bales, Order Kgs, Rate/Unit, Pack Type, CGST%, SGST%/IGST%, Tax Code, HSN
- Cotton quality parameters section (grade, staple, micronaire, strength, moisture, trash)
- Delivery schedule section (date, qty, address, variety)
- CONDITIONAL: PR No + PR Date shown ONLY when iprno IS NOT NULL AND iprno != '' AND iprno != '0' (IST-3 confirmed rule)
- Signature footer: 3 columns for approval signatories (configurable labels: RM Dept Head / Plant Head / Management)
- Report name constant: "RPT_RMI_PO"

3. Create/Update QuestPdfPOService.cs implementing IPOReportService
   - GeneratePOPdfAsync(POReportDto) → byte[]
   - Also save PDF copy to RMERPPO folder: "{DivCode}-PO-{contno} DT-{dd-MM-yy}-{supplier15}.pdf"

Register in Program.cs.
```

---

### Phase 8 — Tests (Day 5–6)

```
Write unit tests for the PurchaseOrder module. Location: Development/Backend/Spinrise.Tests/Areas/Purchase/PurchaseOrder/.

Tests required:

1. PurchaseOrderServiceTests.cs
   - PreChecks_WhenSupplierMasterEmpty_ReturnsError
   - CreateAsync_WhenGSTPercentZero_ReturnsWarningNotException (LV-7 — confirm Y/N)
   - CreateAsync_WhenPRBasedYAndHSNBlank_ThrowsValidationError (LV-16)
   - CreateAsync_WhenUoMMismatch_CandyWithKMode_ThrowsE55
   - DeleteAsync_WhenFirstApprovalDone_ThrowsHardStop (Step 0 delete guard)
   - DeleteAsync_WhenArrivalExists_ThrowsHardStop (Step 1)
   - DeleteAsync_WhenDelReasonBlank_ThrowsValidationError

2. PRConversionServiceTests.cs
   - GetPendingPRLines_WhenMasterEntryFlgY_OnlyReturnsLinesWithApprovedRate
   - GetPendingPRLines_WhenMasterEntryFlgN_OnlyReturnsLinesWithoutRate
   - GetPendingPRLines_WhenPRDateAfterPODate_ExcludesLine

3. PONumberServiceTests.cs
   - GenerateNextNumber_ConcurrentCalls_ProduceUniqueNumbers (integration test with test DB)

Use xUnit + Moq + FluentAssertions. Arrange/Act/Assert pattern. Mock all repository dependencies. Target 80%+ coverage on service layer.
```

---

### Phase 9 — Approval Config Setup UI (Day 7)

```
Create the Division Approval Configuration UI — a new SPINRISE feature required by CEO direction (CEO Apr 2026). This allows customers to configure their PO approval chain without backend DB access.

Location: Development/spinrise-web/src/features/admin/po-approval-config/

1. Design and create a new backend table RM_POApprovalConfig (divcode, level tinyint, approverId varchar(50), designation varchar(100), label varchar(100), signatureImagePath varchar(200)). Create the table script in DBScripts/01 Tables/ and the CRUD SPs in DBScripts/02 Stored Procedures/ as ksp_RMI_POApprovalConfig_*.

2. Backend: Full CRUD module for RM_POApprovalConfig following the same layered pattern as the User module (Areas/Administration/User/) — Domain entity, DTO, Interface, Service, Repository, Controller at /api/v1/admin/po-approval-config.

3. Frontend page: POApprovalConfigPage.tsx
   - Ant Design Card per division
   - For each division: configure 1-3 approval levels (Add Level / Remove Level)
   - Per level: Approver (employee lookup), Designation (text), Label (RM Dept Head / Plant Head / Management / custom), Signature Image (upload)
   - Save button: PUT to API; success toast
   - Route: /admin/po-approval-config
   - Add to sidebar under Administration

This config is read by IPOApprovalService and embedded in QuestPDF signature footer.
```

---

### Phase 10 — Deploy + Smoke Test

```
The module is complete. Perform the deployment sequence:

Backend:
1. Stop IIS app pool SpinriseAPI (iisreset /stop or IIS Manager)
2. Run: dotnet publish Development/Backend/Spinrise.API/Spinrise.API.csproj -c Release -o "E:\Abinandan\SPINRISE\Server\Spinrise.API"
3. Start IIS app pool

Database:
4. Open SSMS → connect to 172.16.16.52\sql2016 → SpinRiseSaranya
5. Open Development/Backend/Spinrise.DBScripts/merged.sql
6. Execute (F5) — this runs all 17 new ksp_RMI_PO_* SPs

Frontend:
7. cd Development/spinrise-web && npm run build
8. Copy dist/ contents to E:\Abinandan\SPINRISE\Server\spinrise-web (IIS site root)

Smoke test checklist:
- [ ] GET /api/v1/rmi/po/params returns RM_PARAM flags
- [ ] GET /api/v1/rmi/po/defaults returns currency from PO_Para
- [ ] GET /api/v1/rmi/po returns empty paginated list (no error)
- [ ] GET /api/v1/rmi/po/pr-lines returns pending PR indent lines
- [ ] POST /api/v1/rmi/po creates PO, generates contno, returns PO number
- [ ] GET /api/v1/rmi/po/{contno}/{contdt} returns full detail with 3 sub-lists
- [ ] GET /api/v1/rmi/po/{contno}/{contdt}/print returns PDF with PR No conditional
- [ ] DELETE /api/v1/rmi/po/{contno}/{contdt} with deleteReasonCode writes audit
- [ ] Frontend: PR Indent Panel loads lines, transfer to grid works
- [ ] Frontend: GST auto-fill fires on Rate col exit (wosample=N, PRBased=Y)
- [ ] Frontend: Approval badge shows Pending/Approved correctly
```

---

## Development Timeline Estimate

| Phase | Task | Est. Days |
|---|---|---|
| 0 | Pre-flight DB check | 0.5 |
| 1 | 17 Stored Procedures | 2.0 |
| 2 | Domain Layer | 0.5 |
| 3 | Application Layer (DTOs + Interfaces + Services) | 2.0 |
| 4 | Infrastructure Layer (Repository) | 1.0 |
| 5 | API Controller | 0.5 |
| 6 | Frontend Feature Module | 3.0 |
| 7 | QuestPDF Print Template | 1.0 |
| 8 | Unit Tests | 1.5 |
| 9 | Approval Config Setup UI | 1.5 |
| 10 | Deploy + Smoke Test | 0.5 |
| **Total** | | **~14 working days** |

---

## Key Risk Register

| Risk | Impact | Mitigation |
|---|---|---|
| RM_CONT column layout differs from FSD assumptions | High — SP and DTO rework | Run Phase 0 column audit first |
| VW_rm_SupplierVariety view definition not accessible | Medium — PR conversion SP blocked | Use LINQ sub-query alternative per FSD Section 8.3 |
| wosample=Y sample entry flow (rm_sample join) is complex | High — grid state management | Implement wosample=N (Rate-Master) first; add Y mode in second iteration |
| Approval config table design (new table) | Medium — blocks Phase 9 | Confirm schema with PM before Phase 9 starts |
| QuestPDF print layout (Crystal template not directly readable) | Medium — visual iteration needed | Derive layout from FSD Section 2 field list; cross-check with business user |
| Concurrent PO saves (CD-2, CD-3) | High — data integrity | Sequence table (Phase 1.1) and UPDLOCK (Phase 1.5) must be implemented before any UAT |

---

*Generated by Claude Code — Spinrise ERP M02 RMI Purchase Order | 2026-04-25*
