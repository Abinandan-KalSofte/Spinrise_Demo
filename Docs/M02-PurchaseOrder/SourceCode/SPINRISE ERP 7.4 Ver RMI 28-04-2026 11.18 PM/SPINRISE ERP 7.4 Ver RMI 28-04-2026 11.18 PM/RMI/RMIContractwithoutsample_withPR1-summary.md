# `RMIContractwithoutsample_withPR1.frm` Deep Summary

## 1. Purpose and role of the form

- Form name: `RMIContractwithoutsample_withPR1`
- Caption: `Purchase Order`
- Module purpose: creation, modification, deletion, lookup, printing, PDF export, and supplier-file attachment handling for raw material purchase orders stored primarily in `RM_CONT`.
- Record style: one purchase order can contain multiple line items in `DataGrid1`, plus multiple delivery schedule rows in `Flexg1`.
- Core transaction modes:
  - `add`
  - `mod`
  - `del`
  - query / browse mode

This form is not a simple header-detail UI. It mixes:

- header/master fields
- line-item tax and pricing
- optional sample-based PO creation
- PR-to-PO generation
- delivery schedule maintenance
- supplier upload management
- Crystal report output
- transaction logging

## 2. High-level workflow

### Query mode

- `Form_Load` calls `OpenConnection1`, reads `RM_PARAM`, configures visibility, then enters `query_mode`.
- `query_mode` loads recent `RM_CONT` records for the current division and financial year window.
- Controls are locked or unlocked by `ENABLCONTLS` and `disablcontls`.
- `adoPrimaryRS_MoveComplete` binds current header and detail data to controls and grids.

### Add mode

- Entry point: `BUTTON_Click(0)` -> `addfunction`
- Preconditions:
  - valid financial year via `ToValidFinYear`
  - latest PO date in `RM_CONT` cannot exceed processing date
  - master setup records must exist for supplier, area, carrier, variety, mix group, and rate unit
- Add flow starts a DB transaction with `DB.BeginTrans`.
- User is asked whether PO should be created `With Sample`.
- If sample-based:
  - sample is selected from `RM_SAMPLE`
  - supplier / area / crop year / broker / variety are backfilled from sample
  - HSN and tax are validated from `RM_VAR`
- If not sample-based:
  - system may force PR-based population depending on `RM_PARAM.PRBased`
  - indent popup is opened through `dlmdfrm`

### Modify mode

- Entry point: `BUTTON_Click(1)`
- Only records that still have unreceived balance are eligible.
- Lookup is built from `RM_CONT` + `FA_SLMAS`.
- Supplier GST and GST state checks are performed before loading the order.
- Modifying a PO starts a DB transaction.
- If receipts already exist, supplier / agent / crop year become locked.
- On save, original ordered qty/kgs are preserved into `Org_OrdQty` / `Org_OrdKgs` if arrivals already exist.

### Delete mode

- Entry point: `BUTTON_Click(2)`
- Only records with no arrival activity are eligible.
- User must choose a delete reason from `RM_DelReason`.
- Deletes:
  - `RM_CONT`
  - `RM_CONT_SLOTNO`
  - `RM_DELSCHED`
  - `RM_ContDiscntRate`
- Deletion is also logged into `RM_Trans_Log`.

### Save / cancel / print

- Save entry point: `BUTTON_Click(9)`
- Cancel entry point: `BUTTON_Click(10)` -> `CancelButton` -> `DB.RollbackTrans`
- Print entry point: `BUTTON_Click(13)` -> `Trans_print`
- ERP PO PDF export: `ExportERPPOPDF`

## 3. Main UI sections

### Header / master details

- Order number / date
- Supplier / agent / area
- state / station / crop year
- payment mode / payment terms / pay term code
- mode of transport
- arrival type
- weighment / final weighment
- purchase type
- billing currency
- plant / sustainable type / line no.
- TCS / commission / incidental charge / spot expense
- supplier PO attachment

### Detail grid: `DataGrid1`

- One row per variety / sample / PR line
- Stores quantity, kgs, rate, tax, HSN, PR refs, discount values, sample refs, and hidden document refs

### Delivery schedule grid: `Flexg1`

- Columns:
  - Delivery Date
  - Quantity
  - Address
  - Variety
  - Instruction

### Cotton parameter section

- Trash
- Moisture
- Strength
- MIC
- Staple Length
- Grade

### Tax section

- Cash Discount %
- Trade Discount %
- BED %
- ED Cess %
- HS Cess %
- Cess %
- Tax Code
- Tax %
- Other Tax %
- Insurance %
- CGST %
- SGST %
- IGST %

## 4. Confirmed field map

This form uses many `txtfields(index)` controls. Below is the confirmed business mapping from the `.frm` design and save logic.

| Control / Index | Meaning | Backing column / usage |
|---|---|---|
| `txtfields(0)` | Order No. | `contno` |
| `MaskEdBox3` | Order Date | `contdt` |
| `txtfields(1)` | Supplier Code | `supcd` |
| `Text1` | Supplier Name | lookup from `FA_SLMAS` |
| `txtfields(2)` | Agent Code | `brkcd` |
| `Text2` | Agent Name | lookup from `FA_SLMAS` |
| `txtfields(3)` | Area Code | `areacode` |
| `Text3` | Area Name | lookup from `RM_AREA` |
| `Text11` | Station | derived from `RM_AREA` |
| `Text12` | State | derived from `RM_AREA` |
| `txtfields(5)` | Mixing Group | saved as `cntcode` |
| `Text10` | Mixing Group Name | lookup from `RM_MIXGRP` |
| `txtfields(8)` | Payment Mode | `paymode` |
| `Text4` | Payment Mode Desc | lookup from `RM_PMODE` |
| `txtfields(12)` | Payment Terms text | `PAYTERMS` |
| `txtfields(13)` | Crop Year | `CROPYEAR` |
| `txtfields(18)` | Authorized Signatory Code | `acceptance` |
| `txtfields(19)` | Remarks | `Remarks` |
| `txtfields(20)` | Delivery Type Code | `dlytype` / `deltype` |
| `txtdeldesc` | Delivery Type Desc | lookup from `RM_DELIVERY` |
| `txtfields(21)` | Billing Address Code | `billadd` |
| `Text5` | Billing Address Name | lookup from `RM_BILLADD` |
| `txtfields(22)` | Delivery Address Code | `deladd` |
| `Text6` | Delivery Address Name | lookup from `RM_DELADD` |
| `Text7` | Contact Person | `contperson` |
| `txtfields(23)` | Staple | `Staple` |
| `txtfields(25)` | Season or legacy season field | used in some code paths |
| `txtfields(27)` | Mill Ref No. | `MILLREFNO` |
| `txtfields(28)` | Cash Discount % | header tax helper |
| `txtfields(29)` | Trade Discount % | header tax helper |
| `txtfields(30)` | BED % | header tax helper |
| `txtfields(31)` | ED Cess % | header tax helper |
| `txtfields(32)` | HS Cess % | header tax helper |
| `txtfields(33)` | Cess % | header tax helper |
| `txtfields(34)` | Tax Code | header tax helper |
| `txtfields(35)` | Tax % | header tax helper |
| `txtfields(36)` | Other Tax % | header tax helper |
| `txtfields(37)` | Insurance % | header tax helper |
| `txtfields(38)` | Credit Days | `CreditDays` |
| `txtfields(39)` | Interest % | `InterestPer` |
| `txtfields(40)` | Supplier Lot No. From | `SUPPLIERLOTNOFROM` |
| `txtfields(41)` | Supplier Lot No. To | `SUPPLIERLOTNOTO` |
| `txtfields(42)` | Purchase Type | `purtype` |
| `Text13` | Purchase Type Desc | lookup from `RM_PURTYPE` |
| `txtfields(43)` | Season Code | `Season` |
| `Text14` | Season Name | lookup from `RM_SEASON` |
| `txtfields(44)` | Commission % | `CommPer` |
| `txtfields(45)` | Payment Terms line 1 | `Terms1` |
| `txtfields(46)` | Payment Terms line 1 days | `Terms1Days` |
| `txtfields(47)` | Payment Terms line 2 | `Terms2` |
| `txtfields(48)` | Payment Terms line 2 days | `Terms2Days` |
| `txtfields(49)` | hidden PR no helper | header tax copy helper |
| `txtfields(50)` | hidden PR date helper | header tax copy helper |
| `txtfields(51)` | hidden PR serial helper | header tax copy helper |
| `txtfields(52)` | Billing Currency Code | `CurrCode` |
| `txtfields(53)` | Billing Currency Name | lookup from `FA_CURRENCY` |
| `txtfields(54)` | Delivery Terms | `DeliveryTerms` |
| `MaskEdBox4` | Prepared Date | part of `prepdate` |
| `txtfields(58)` | Prepared Time | part of `prepdate` |
| `Combo10` | FT Flag | maps to `FTFlg` |
| `txtfields(59)` | FT Amount | `FTAmt` |
| `txtfields(60)` | Pay Term Code | `Paycode` |
| `txtfields(61)` | Plant Name display | lookup from `RM_PLANT` |
| `txtfields(62)` | Plant Code | `PlCode` |
| `txtfields(63)` | Line No. | `Line_No` |
| `txtfields(64)` | Sustainable Type Desc | lookup from `RM_SustainRMType` |
| `txtfields(65)` | Sustainable Type Code | `SusCatType` |
| `txtfields(66)` | Supplier PO file name | `SupFileName` |
| `txtfields(67)` | TCS % | `TCS_PER` |
| `txtfields(68)` | Trash | `Trash` |
| `txtfields(69)` | Moisture | `Moisture` |
| `txtfields(70)` | Strength | `Strength` |
| `txtfields(71)` | MIC | `MIC` |
| `txtfields(73)` | Grade | `Grade` |
| `txtfields(74)` | Commission per bale | `commperbale` |
| `txtfields(75)` | Incidental Charges % | `incidentcharge` |
| `txtfields(77)` | Spot Expenses | `spotexpense` |
| `Combo5` | Rate UOM | `rateunit` |
| `Combo7` | Arrival Type | `P-PackWise` or `K-KgsWise` |
| `Combo9` | Final Weighment | `MILL` / `SUPPLIER` style flag |
| `Combo12` | Expense basis | per truck / per bale |
| `ChkCentralized` | Centralized order numbering | affects next `contno` logic |

## 5. Detail grid schema

`DataGrid1` is the core line-item dataset. Confirmed columns from captions and save logic:

| Column | Meaning | Saved to |
|---|---|---|
| `0` | Mill Sample No. | `sno` |
| `1` | Variety Code | `varcode` |
| `2` | Variety | display only |
| `3` | Quantity | `ordqty` |
| `4` | Pack Type | `BBFLAG` (`B`, `R`, `H`) |
| `5` | Order Kgs | `ordkgs` |
| `6` | Rate / UOM | `candyrate` |
| `7` | Supplier Sample No. | `PTY_CONTNO` |
| `8` | Cash Dis % | `CashDisPer` |
| `9` | Trade Dis % | `TradeDisPer` |
| `10` | BED % | `BedPer` |
| `11` | ED Cess % | `EdcessPer` |
| `12` | HS Cess % | `HsCessPer` |
| `13` | Cess % | `CessPer` |
| `14` | Tax Code | `Tax_Code` |
| `15` | Tax % | `TaxPer` |
| `16` | Other Tax % | `OthTaxPer` |
| `17` | Ins % | `InsPer` |
| hidden | `Iprno` | PR / indent no |
| hidden | `prdate` | PR date |
| hidden | `prsno` | PR serial |
| named | `HSN Code` | `HSN` |
| named | `CGST %` | `cgstper` |
| named | `SGST %` | `sgstper` |
| named | `IGST %` | `igstper` |
| named | `MSDocno` | linked sample / fibre rate doc |
| named | `MSDocsno` | linked sample / fibre rate doc serial |
| named | `No_of_Load` | `No_of_Load` |

## 6. Delivery schedule (`Flexg1`)

Stored in `RM_DELSCHED`.

| Grid column | Meaning | Saved to |
|---|---|---|
| `1` | Delivery Date | `deldate` |
| `2` | Quantity | `qty` |
| `3` | Address | resolved to `deladd` |
| `4` | Variety | `varcode` |
| `5` | Instruction | `instruction` |

Behavior:

- schedule rows are inserted from the delivery tab controls
- duplicate schedule for same date + address + variety is prevented
- on modify, existing `RM_DELSCHED` rows are deleted and rebuilt
- on delete, all schedule rows are removed

## 7. Major validations and business rules

## 7.1 Header required-field validations before save

In save logic, the form blocks save if any of these are missing:

- supplier
- payment mode
- area
- delivery type
- uploaded supplier price list file
- accepted person / signatory
- billing currency
- mode of transport
- supplier lot numbers if `RM_PARAM.SuppLotNoReqArrival = 'Y'`

## 7.2 Supplier lot validations

- Controlled by `RM_PARAM.SuppLotNoReqArrival`
- `txtfields(40)` and `txtfields(41)` become mandatory if flag is `Y`
- from lot cannot be greater than to lot
- on save, lot range is exploded into `RM_CONT_SLOTNO`
- `RM_CONT.NONRECIEVELOT` is updated with either a single lot or comma-separated range

## 7.3 Supplier validation

- supplier must exist and be active in `FA_SLMAS`
- supplier lookup may be restricted by:
  - `masterlen.ptypecotton`
  - `VW_RM_SupplierVariety` when `MasterEntryFlg = 'Y'`
- GST logic:
  - supplier GST state code required for non-foreign cases
  - GSTIN required for supplier type `R`
  - `IGSTFLG` is derived by comparing supplier GST state against division GST state in `PP_DIVMAS`

## 7.4 Area / agent / crop year validation

- area code must exist in `RM_AREA`
- in sample-driven flow, area, broker, state, station, and crop year are inherited from sample
- crop year:
  - cannot be greater than processing year
  - cannot be less than 2000

## 7.5 Delivery type / address validation

- delivery type must exist in `RM_DELIVERY`
- delivery address must exist in `RM_DELADD`
- when no delivery address master rows exist:
  - schedule controls are disabled
  - user can jump straight to save or tax tab depending on tax mode

## 7.6 Purchase type / credit days behavior

- purchase type comes from `RM_PURTYPE`
- lookup also returns `CRDays`
- if `CRDays <> 'Y'`:
  - credit days and interest are disabled and cleared

## 7.7 Plant / sustain type / pay term / currency validation

- plant code -> `RM_PLANT`
- sustainable type -> `RM_SustainRMType`
- pay term code -> `IG_PAYTERM`
- billing currency -> `FA_CURRENCY`

## 7.8 Variety and line-item validation

- variety must exist in `RM_VAR`
- HSN must not be blank
- tax code must not be blank for taxable cases
- rate must not be zero
- quantity must be non-zero for pack-wise POs
- kgs must be non-zero for kg-wise POs
- pack type is constrained to `B`, `H`, or `R`
- duplicate sample or duplicate variety rows are blocked

## 7.9 PR / indent quantity balance validation

- when PR references exist, entered order quantity and order kgs cannot exceed pending PR balance from `Rm_PRL`
- on modify, old order qty/kgs are added back before checking pending balance

## 7.10 Arrival-protection validation

- if arrivals exist for a variety, modified order qty cannot go below already arrived quantity
- checks use `RM_Arrival`
  - `Quantity` for pack-wise
  - `NetWt` for kg-wise

## 7.11 Tax behavior

- tax can be maintained in two modes:
  - `SINGLE` / individual item tax (`Option4`)
  - `COMMON` / common header tax (`Option5`)
- header tax fields can be copied into current row by `HeaderTaxLoad`
- tax code validation uses `IG_TAX`
- inactive GST code is explicitly rejected
- if supplier state is foreign (`STATEFLAG = 'F'`), GST fields are effectively zeroed
- if GST percentages total zero, user is asked whether to continue

## 7.12 Commission behavior

- `txtfields(44)` and `txtfields(74)` are mutually exclusive:
  - if commission % > 0, commission per bale is reset to 0
  - if commission per bale > 0, commission % is reset to 0

## 7.13 File validation

- supplier file name is stored in `txtfields(66)`
- max file name length: 40 characters
- during save, a supplier copy must exist in:
  - `App.Path\RMSUPPLIERPO{CustID}\...`

## 8. Save logic and persistence

## 8.1 Main table: `RM_CONT`

Each line item is saved as one row in `RM_CONT`. Important saved values:

- header identifiers: division, order no, order date
- supplier / area / broker / plant / pay mode / pay code / line no.
- delivery type, transport, remarks, billing and delivery addresses
- purchase type, crop year, season, staple
- line-item variety, qty, kgs, rate
- HSN and GST breakdown
- TCS, discounts, insurance
- credit days and interest
- sample refs, PR refs, sample doc refs
- sustainable type
- cotton parameters
- uploaded supplier file name
- prep date/time

## 8.2 Delivery schedule table: `RM_DELSCHED`

- saved after header/line save
- rebuilt from `Flexg1`
- deleted and recreated on modify

## 8.3 Slot table: `RM_CONT_SLOTNO`

- generated from supplier lot number range
- every lot number in range is inserted as a separate row

## 8.4 Discount tables

- `RM_ContDiscntRate` stores discount details attached to line items
- `RM_FibreRateDiscTXN` is used as a transactional / temporary save area from discount popup

## 8.5 Logging table

- `SaveLogfunction` writes to `RM_Trans_Log`
- logs add / modify / delete snapshots including tax, qty, rate, supplier, PR refs, and delete reason

## 9. File attachment and print behavior

## Supplier uploaded copy

- browse button uses `CommonDialog1`
- file is copied to:
  - `App.Path\RMSUPPLIERPO{CustID}\{Divcode}-{contno}-{date}-{supplier}--{filename}`
- if file already exists, user can override

## ERP PO PDF

- Crystal report `RepRMI.rpt`
- exported to:
  - `App.Path\RMERPPO{CustID}\{Divcode}-PONO-{contno} DT-{date}-{supplier}.pdf`

## 10. SQL tables, views, and procedures used

### Core transaction tables

- `RM_CONT`
  - main PO header + detail storage
- `RM_DELSCHED`
  - delivery schedule lines
- `RM_CONT_SLOTNO`
  - supplier lot range exploded into per-lot records
- `RM_ContDiscntRate`
  - stored discount detail linked to PO
- `RM_Trans_Log`
  - add / modify / delete audit log

### Reference / master tables

- `FA_SLMAS`
  - supplier, agent, state, GST, pay terms
- `IG_STATE`
  - state flag mapping
- `PP_DIVMAS`
  - division GST state, cotton configuration
- `RM_AREA`
  - area, station, state, local/import/inter-state classification
- `RM_VAR`
  - variety master, HSN, GST rates, tax code
- `RM_DELIVERY`
  - delivery type
- `RM_DELADD`
  - delivery address
- `RM_BILLADD`
  - billing address
- `RM_PMODE`
  - payment mode
- `IG_PAYTERM`
  - pay term code master
- `RM_PURTYPE`
  - purchase type and CR-days behavior
- `RM_PLANT`
  - plant
- `RM_SustainRMType`
  - sustainability category
- `RM_RATEUNIT`
  - UOM and conversion value
- `IG_TAX`
  - GST / tax code and rate
- `RM_ACCEPTANCE`
  - authorized signatory
- `RM_SEASON`
  - season code / description
- `RM_MIXGRP`
  - mixing group
- `FA_CURRENCY`
  - billing currency
- `RM_DiscountType`
  - discount code descriptions
- `RM_DelReason`
  - delete reason setup
- `PO_Para`
  - default currency
- `RM_PARAM`
  - feature flags and behavior switches
- `masterlen`
  - code prefixes for supplier / broker filters

### Sample / indent / receipt-related tables

- `RM_SAMPLE`
  - sample-driven PO creation and supplier/variety defaults
- `Rm_PRL`
  - pending indent / PR balance check
- `RM_prh`
  - PR header context
- `RM_Arrival`
  - receipt quantity protection

### Discount / fibre-rate related tables

- `RM_FibreRate`
- `RM_FibreRateDisc`
- `RM_FibreRateDiscTXN`

### Views / procedures / helper SQL objects

- `VW_rm_SupplierVariety`
  - supplier filtering by allowed plant/variety
- `dbo.split`
  - splitting prefix list from configuration
- `SP_PRToPO_RMI`
  - pull indent rows into PO
- `SP_PRToPO_RMIFilter`
  - filtered PR-to-PO load

## 11. Important feature flags from `RM_PARAM`

- `SuppLotNoReqArrival`
  - toggles mandatory supplier lot number logic
- `CentralizedOrder`
  - controls division-wide vs centralized order numbering
- `SeasoncalcReq`
  - controls season code UI path
- `MasterEntryFlg`
  - changes supplier / plant / PR flow
- `PRBased`
  - controls indent-based PO creation

## 12. Confirmed keyboard shortcuts

- `Ctrl+A` add
- `Ctrl+M` modify
- `Ctrl+D` delete
- `Ctrl+F` find
- `Ctrl+Left` first
- `Ctrl+Down` next
- `Ctrl+Up` previous
- `Ctrl+Right` last
- `Ctrl+S` save
- `Ctrl+Backspace` cancel
- `Ctrl+Q` exit
- `Ctrl+Y` crystal print
- `F5` open discount detail popup on grid

## 13. Notable code risks / inconsistencies

- `TXTFIELDS_Validate` case `42` appears to read `rm_purtype` using `txtfields(41)` instead of `txtfields(42)`. That looks suspicious.
- `bindcontls` assigns `txtfields(37)` twice, once from `Ins %` and then from `commper`; the second assignment can overwrite the first.
- Season handling is inconsistent between `txtfields(25)` and `txtfields(43)` depending on feature flag and code path.
- Some control indices are reused heavily and the design is hard to follow; maintenance risk is high.
- The form concatenates SQL directly from control values throughout; this is a classic SQL-injection / data-integrity risk pattern.
- Several save/delete flows rebuild child rows completely instead of doing differential updates.

## 14. Practical maintenance takeaway

If you need to change behavior in this form, the most important places are:

1. `addfunction`
2. `BUTTON_Click` case `9` for save logic
3. `TXTFIELDS_Validate`
4. `txtfields_LostFocus`
5. `DataGrid1_RowColChange`
6. `DataGrid1_AfterColEdit`
7. `SaveLogfunction`

Those procedures contain almost all of the true business rules for supplier validation, GST behavior, PR/indent linking, delivery schedule handling, and final persistence.
