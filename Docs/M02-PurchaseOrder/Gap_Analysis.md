  M02 RMI Purchase Order — GAP ANALYSIS REPORT

  FSD v8 (14 Apr 2026) vs Current SPINRISE Implementation
  Analyst: Principal ERP Solutions Architect | Date: 05-May-2026

  ---
  1. MODULE OVERVIEW

  Purpose

  The Purchase Order (PO) screen is the formal procurement commitment for raw cotton in the Spinning Division. It is the highest-stakes entry screen in the
  RMI module: every downstream financial transaction (GST input credit, supplier payment, AP journals) traces back to this PO. A PO can be raised from a
  Purchase Requisition (PR-to-PO conversion) or as a direct/spot purchase.

  Key Workflows

  ┌──────────┬───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Workflow │                                                                Description                                                                │
  ├──────────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ Create   │ 8 pre-checks → supplier/GST determination → grid entry (With-Sample or Rate-Master mode) → delivery schedule → save → audit log → lot     │
  │          │ number management → Crystal/QuestPDF print                                                                                                │
  ├──────────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ Modify   │ Supplier & date locked if arrivals exist; FIRST_APPFLG=Y locks entirely                                                                   │
  ├──────────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ Delete   │ FIRST_APPFLG=Y hard-stop → arrival check → delete reason mandatory → audit log → cascade delete                                           │
  ├──────────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ PR-to-PO │ Load pending PR lines (SP_PRToPO_RMI) → filter/select → grid transfer → PR balance update on save                                         │
  ├──────────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ Approve  │ 1–3 level workflow; FIRST_APPFLG gates deletion and further modification                                                                  │
  ├──────────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ Print    │ QuestPDF (RPT_RMI_PO); PR No/Date conditional on iprno; PDF export                                                                        │
  └──────────┴───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘

  ---
  2. FIELD INVENTORY — COMPLETE FSD EXTRACTION

  2.1 Header Fields (Always Visible)

  ┌─────────┬────────────────────┬────────────────────┬─────────────┬───────────┬─────────────┬───────────────────────────┬─────────────────────────────┐
  │ Section │     Field Name     │      Control       │    Type     │ Mandatory │   Default   │          Source           │           Remarks           │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Order No.          │ txtfields(0)       │ varchar(10) │ System    │ Auto        │ MAX+1 / SEQUENCE          │ Locked all modes            │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Order Date         │ MaskEdBox3 +       │ datetime    │ Yes       │ pdate       │ User                      │ yfdate ≤ date ≤ pdate       │
  │         │                    │ DTPicker1          │             │           │             │                           │                             │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Supplier Code      │ txtfields(1)       │ varchar(10) │ Yes       │ —           │ fa_slmas lookup           │ GST fires on select; locked │
  │         │                    │                    │             │           │             │                           │  in Modify                  │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Supplier Name      │ Text1              │ Display     │ Display   │ —           │ fa_slmas.slname           │ Auto-filled                 │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Agent/Broker Code  │ txtfields(2)       │ varchar     │ Optional  │ —           │ Dual-mode: normal/sample  │ Locked in Modify            │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Area Code          │ txtfields(3)       │ varchar(4)  │ Yes       │ —           │ rm_area lookup            │ Station + State auto-fill   │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Station            │ Text11             │ Display     │ Display   │ —           │ rm_area                   │ Auto-filled                 │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ State              │ Text12             │ Display     │ Display   │ —           │ rm_area                   │ Auto-filled                 │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Payment Mode       │ txtfields(8)       │ char(2)     │ Yes       │ —           │ rm_pmode lookup           │ Hard stop if blank          │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Payment Terms      │ txtfields(12)      │ varchar     │ Optional  │ —           │ Display only              │ Locked=True                 │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Currency Code      │ txtfields(52)      │ varchar(3)  │ Yes       │ PO_Para     │ fa_currency               │ Auto-defaults from          │
  │         │                    │                    │             │           │             │                           │ PO_Para.CurrCode            │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Country Code       │ txtfields(5)       │ varchar     │ Optional  │ —           │ Country lookup            │ —                           │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Centralised Order  │ ChkCentralized     │ boolean     │ Optional  │ RM_PARAM    │ RM_PARAM.CentralizedOrder │ Pre-ticked from param       │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Import/Local/Other │ Option1/2/3        │ char(1)     │ Optional  │ L           │ —                         │ I/L/U → im_ind column       │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Mill Reference No. │ txtfields(27)      │ varchar     │ Optional  │ —           │ Free text                 │ Unlocked Add+Modify         │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Crop Year          │ txtfields(13)      │ varchar(20) │ Optional  │ Year(pdate) │ Auto                      │ Must be ≤ current year      │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Prepared Date      │ MaskEdBox4         │ datetime    │ System    │ Today       │ Auto                      │ Auto-set; no user entry     │
  ├─────────┼────────────────────┼────────────────────┼─────────────┼───────────┼─────────────┼───────────────────────────┼─────────────────────────────┤
  │ Header  │ Prepared Time      │ txtfields(58)      │ varchar(8)  │ System    │ Time        │ Auto                      │ Auto-set                    │
  └─────────┴────────────────────┴────────────────────┴─────────────┴───────────┴─────────────┴───────────────────────────┴─────────────────────────────┘

  2.2 Tab 0 — Order Details Sub-Header

  ┌─────────┬──────────────────┬───────────────┬───────────────┬─────────────┬──────────┬──────────────────────┬────────────────────────────────────────┐
  │ Section │    Field Name    │    Control    │     Type      │  Mandatory  │ Default  │        Source        │                Remarks                 │
  ├─────────┼──────────────────┼───────────────┼───────────────┼─────────────┼──────────┼──────────────────────┼────────────────────────────────────────┤
  │ Tab 0   │ Rate Unit        │ Combo5        │ varchar       │ Yes         │ —        │ rm_rateunit.unitname │ Drives rateKg formula                  │
  ├─────────┼──────────────────┼───────────────┼───────────────┼─────────────┼──────────┼──────────────────────┼────────────────────────────────────────┤
  │ Tab 0   │ Arrival Type     │ Combo7        │ char(1)       │ Yes         │ Last PO  │ —                    │ P=PackWise / K=KGSWise; auto-default   │
  │         │                  │               │               │             │          │                      │ from Rate Unit                         │
  ├─────────┼──────────────────┼───────────────┼───────────────┼─────────────┼──────────┼──────────────────────┼────────────────────────────────────────┤
  │ Tab 0   │ Final Weighment  │ Combo9        │ char(1)       │ Optional    │ S        │ —                    │ MILL=M; else=S                         │
  ├─────────┼──────────────────┼───────────────┼───────────────┼─────────────┼──────────┼──────────────────────┼────────────────────────────────────────┤
  │ Tab 0   │ Foreign Trade    │ Combo10       │ varchar(1)    │ Optional    │ N        │ —                    │ YES=Y triggers FTAmt visibility        │
  │         │ Flag             │               │               │             │          │                      │                                        │
  ├─────────┼──────────────────┼───────────────┼───────────────┼─────────────┼──────────┼──────────────────────┼────────────────────────────────────────┤
  │ Tab 0   │ Foreign Trade    │ txtfields(59) │ numeric(6,2)  │ Conditional │ RM_PARAM │ RM_PARAM.ftamt       │ Visible only when Combo10=YES          │
  │         │ Amount           │               │               │             │          │                      │                                        │
  ├─────────┼──────────────────┼───────────────┼───────────────┼─────────────┼──────────┼──────────────────────┼────────────────────────────────────────┤
  │ Tab 0   │ Season (manual)  │ txtfields(25) │ varchar(25)   │ Optional    │ —        │ User                 │ Visible when SeasoncalcReq=N           │
  ├─────────┼──────────────────┼───────────────┼───────────────┼─────────────┼──────────┼──────────────────────┼────────────────────────────────────────┤
  │ Tab 0   │ Season           │ txtfields(43) │ varchar(25)   │ Optional    │ —        │ Calculated           │ Visible when SeasoncalcReq=Y           │
  │         │ (auto-calc)      │               │               │             │          │                      │                                        │
  ├─────────┼──────────────────┼───────────────┼───────────────┼─────────────┼──────────┼──────────────────────┼────────────────────────────────────────┤
  │ Tab 0   │ Supplier Lot     │ txtfields(40) │ numeric(12,0) │ Conditional │ —        │ User                 │ Mandatory when SuppLotNoReqArrival=Y   │
  │         │ From             │               │               │             │          │                      │                                        │
  ├─────────┼──────────────────┼───────────────┼───────────────┼─────────────┼──────────┼──────────────────────┼────────────────────────────────────────┤
  │ Tab 0   │ Supplier Lot To  │ txtfields(41) │ numeric(12,0) │ Conditional │ —        │ User                 │ Must be >= Lot From                    │
  └─────────┴──────────────────┴───────────────┴───────────────┴─────────────┴──────────┴──────────────────────┴────────────────────────────────────────┘

  2.3 Line Items Grid (DataGrid1)

  ┌───────┬──────────────────────────┬─────────────┬───────────────┬──────────────────┬─────────────────────────────────────────────────────────┐
  │  Col  │        Field Name        │  DB Column  │     Type      │    Mandatory     │                          Notes                          │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 0     │ Mill Sample No.          │ sno         │ Text          │ With-Sample mode │ Leads entry in wosample=Y                               │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 1     │ Variety Code             │ varcode     │ varchar(10)   │ Yes/line         │ GST auto-fill on Col 6 exit                             │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 2     │ Variety Name             │ varname     │ Text          │ Display          │ Read-only; locked if MasterEntryFlg=Y                   │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 3     │ Quantity (Bales)         │ ordqty      │ decimal(10,2) │ Cond (P mode)    │ ArrivalType=P; ≤ PR balance                             │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 4     │ Pack Type                │ packtype    │ Text          │ Yes/line         │ B/R/H; first char → BBFLAG                              │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 5     │ Order Kgs                │ ordkgs      │ numeric(18,3) │ Cond (K mode)    │ ArrivalType=K; ≤ PR balance kgs                         │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 6     │ Rate/Unit                │ candyrate   │ decimal(15,7) │ Yes/line         │ 10dp; locked if MasterEntryFlg=Y; GST auto-fill on exit │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 7     │ Supplier Sample No.      │ PTY_CONTNO  │ Text          │ Read-only        │ Locked                                                  │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 8     │ Cash Dis %               │ CashDisPer  │ Decimal       │ Optional         │ —                                                       │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 9     │ Trade Dis %              │ TradeDisPer │ Decimal       │ Optional         │ —                                                       │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 10–12 │ BED%, ED Cess%, HS Cess% │ —           │ Decimal       │ HIDDEN           │ Legacy pre-GST; retain in DB                            │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 13    │ Cess %                   │ CessPer     │ Decimal       │ Optional         │ —                                                       │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 14    │ Tax Code                 │ TaxCode     │ varchar(3)    │ Cond             │ HIDDEN; auto-fill from rm_var                           │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 15–16 │ Tax %, Other Tax %       │ —           │ Decimal       │ HIDDEN           │ Legacy                                                  │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ 17    │ Ins %                    │ InsPer      │ Decimal(5dp)  │ Optional         │ —                                                       │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ —     │ HSN Code                 │ HSN         │ varchar(8)    │ Cond             │ HIDDEN; from rm_var; mandatory PRBased=Y                │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ —     │ CGST%                    │ CGSTPER     │ numeric(5,2)  │ Cond             │ HIDDEN; intra-state                                     │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ —     │ SGST%                    │ SGSTPER     │ numeric(5,2)  │ Cond             │ HIDDEN; intra-state                                     │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ —     │ IGST%                    │ IGSTPER     │ numeric(5,2)  │ Cond             │ HIDDEN; inter-state                                     │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ —     │ iprno                    │ iprno       │ numeric       │ HIDDEN           │ PR linkage                                              │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ —     │ prdate                   │ prdate      │ datetime      │ HIDDEN           │ PR linkage                                              │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ —     │ prsno                    │ prsno       │ int           │ HIDDEN           │ PR serial                                               │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ —     │ MSDocno                  │ MSDocno     │ numeric       │ HIDDEN           │ Rate master ref                                         │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ —     │ MSDocsno                 │ MSDocsno    │ numeric       │ HIDDEN           │ Rate master ref                                         │
  ├───────┼──────────────────────────┼─────────────┼───────────────┼──────────────────┼─────────────────────────────────────────────────────────┤
  │ —     │ No_of_Load               │ No_of_Load  │ numeric       │ Optional         │ Truck loads                                             │
  └───────┴──────────────────────────┴─────────────┴───────────────┴──────────────────┴─────────────────────────────────────────────────────────┘

  2.4 Delivery Schedule Section

  ┌──────────┬───────────────────┬───────────┬──────────────────────────────────────┐
  │ Section  │    Field Name     │  Control  │                Notes                 │
  ├──────────┼───────────────────┼───────────┼──────────────────────────────────────┤
  │ Delivery │ Delivery Date     │ DTPicker3 │ Must be >= Order Date                │
  ├──────────┼───────────────────┼───────────┼──────────────────────────────────────┤
  │ Delivery │ Delivery Quantity │ Text9     │ > 0; numeric                         │
  ├──────────┼───────────────────┼───────────┼──────────────────────────────────────┤
  │ Delivery │ Delivery Address  │ Text6     │ Free text → FA_SLMAS slcode on save  │
  ├──────────┼───────────────────┼───────────┼──────────────────────────────────────┤
  │ Delivery │ Variety           │ Combo6    │ Populated from line items            │
  ├──────────┼───────────────────┼───────────┼──────────────────────────────────────┤
  │ Delivery │ Weighment         │ Combo8    │ From rm_WEIGHNMENT; locked in Browse │
  ├──────────┼───────────────────┼───────────┼──────────────────────────────────────┤
  │ Delivery │ Instruction       │ —         │ Free text                            │
  └──────────┴───────────────────┴───────────┴──────────────────────────────────────┘

  2.5 Cotton Quality Parameters (Tab 0)

  ┌─────────┬──────────────────┬───────────┬─────────┬───────────┐
  │ Section │    Field Name    │ DB Column │  Type   │ Mandatory │
  ├─────────┼──────────────────┼───────────┼─────────┼───────────┤
  │ Quality │ Grade            │ grade     │ varchar │ Optional  │
  ├─────────┼──────────────────┼───────────┼─────────┼───────────┤
  │ Quality │ Staple Length    │ STAPLE    │ varchar │ Optional  │
  ├─────────┼──────────────────┼───────────┼─────────┼───────────┤
  │ Quality │ Micronaire       │ MIC       │ decimal │ Optional  │
  ├─────────┼──────────────────┼───────────┼─────────┼───────────┤
  │ Quality │ Strength (g/tex) │ STRENGTH  │ decimal │ Optional  │
  ├─────────┼──────────────────┼───────────┼─────────┼───────────┤
  │ Quality │ Moisture %       │ moisture  │ decimal │ Optional  │
  ├─────────┼──────────────────┼───────────┼─────────┼───────────┤
  │ Quality │ Trash %          │ trash     │ decimal │ Optional  │
  └─────────┴──────────────────┴───────────┴─────────┴───────────┘

  2.6 Tab 1 — Payment Details

  ┌─────────┬───────────────────────┬─────────────┬───────────┬────────────────────────────┐
  │ Section │      Field Name       │  DB Column  │ Mandatory │           Notes            │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Delivery Type         │ dlytype     │ Yes       │ Hard stop                  │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Authorized Signatory  │ acceptance  │ Yes       │ Employee lookup; hard stop │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Billing Address       │ billadd     │ Optional  │ rm_billadd lookup          │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Delivery Address Code │ delivadd    │ Optional  │ Delivery lookup            │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Contact Person        │ contperson  │ Optional  │ Bound to adoPrimaryRS      │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Payment Term 1        │ Terms1      │ Optional  │ Max 30 chars               │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Term 1 Days           │ Terms1Days  │ Optional  │ Max 3 digits               │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Payment Term 2        │ Terms2      │ Optional  │ —                          │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Term 2 Days           │ Terms2Days  │ Optional  │ —                          │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Credit Days           │ CREDITDAYS  │ Optional  │ —                          │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Interest %            │ INTERESTPER │ Optional  │ —                          │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Mode of Transport     │ TransPort   │ Yes       │ Hard stop                  │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Delivery Terms        │ —           │ Optional  │ Max 250 chars              │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Remarks               │ —           │ Optional  │ nvarchar(255)              │
  ├─────────┼───────────────────────┼─────────────┼───────────┼────────────────────────────┤
  │ Payment │ Supplier PO File      │ SupFileName │ Yes       │ Physical file must exist   │
  └─────────┴───────────────────────┴─────────────┴───────────┴────────────────────────────┘

  2.7 Tab 2 — Tax Details

  ┌─────────┬─────────────────────────┬──────────────────┬────────────────────────────────┐
  │ Section │       Field Name        │    DB Column     │             Notes              │
  ├─────────┼─────────────────────────┼──────────────────┼────────────────────────────────┤
  │ Tax     │ Tax Choice              │ tax_choice       │ Option4=SINGLE; Option5=COMMON │
  ├─────────┼─────────────────────────┼──────────────────┼────────────────────────────────┤
  │ Tax     │ Tax Code (Common)       │ taxcode          │ Active only when COMMON        │
  ├─────────┼─────────────────────────┼──────────────────┼────────────────────────────────┤
  │ Tax     │ Commission %            │ CommPer          │ —                              │
  ├─────────┼─────────────────────────┼──────────────────┼────────────────────────────────┤
  │ Tax     │ Commission Per Bale     │ commperbale      │ —                              │
  ├─────────┼─────────────────────────┼──────────────────┼────────────────────────────────┤
  │ Tax     │ Per Bale/Truck          │ perbaletruckbale │ Combo12: 0=blank, 1=T, 2=B     │
  ├─────────┼─────────────────────────┼──────────────────┼────────────────────────────────┤
  │ Tax     │ TCS %                   │ TCS_PER          │ —                              │
  ├─────────┼─────────────────────────┼──────────────────┼────────────────────────────────┤
  │ Tax     │ Spot Expenses           │ spotexpense      │ Rs amount                      │
  ├─────────┼─────────────────────────┼──────────────────┼────────────────────────────────┤
  │ Tax     │ Incidental Charges %    │ incidentcharge   │ —                              │
  ├─────────┼─────────────────────────┼──────────────────┼────────────────────────────────┤
  │ Tax     │ Sustainability Category │ SusCatType       │ 3 chars                        │
  ├─────────┼─────────────────────────┼──────────────────┼────────────────────────────────┤
  │ Tax     │ Plant Code              │ plcode           │ —                              │
  ├─────────┼─────────────────────────┼──────────────────┼────────────────────────────────┤
  │ Tax     │ Line Number             │ Line_No          │ Max 20 chars                   │
  └─────────┴─────────────────────────┴──────────────────┴────────────────────────────────┘

  ---
  3. GAP ANALYSIS

  3A. FRONTEND GAP ANALYSIS

  3A-1. Missing Entire UI Sections

  ┌─────────────────┬───────────────────────────────────────┬────────────────────────┬────────────────────────────────┬───────────────────────────────┐
  │      Area       │            FSD Requirement            │     Current Status     │              Gap               │        Recommendation         │
  ├─────────────────┼───────────────────────────────────────┼────────────────────────┼────────────────────────────────┼───────────────────────────────┤
  │ Tab 1 — Payment │ Full tab with 14 fields including     │                        │ Critical — 3 mandatory fields  │ Implement as a collapsible    │
  │  Details        │ mandatory Delivery Type, Auth         │ COMPLETELY ABSENT      │ (dlytype, acceptance,          │ card or tab section           │
  │                 │ Signatory, Transport                  │                        │ transport) have no UI          │ immediately                   │
  ├─────────────────┼───────────────────────────────────────┼────────────────────────┼────────────────────────────────┼───────────────────────────────┤
  │ Cotton Quality  │ 6 quality fields (Grade, Staple, MIC, │ COMPLETELY ABSENT      │ Data loss — quality parameters │ Add as an optional expandable │
  │ Parameters      │  Strength, Moisture, Trash)           │                        │  never entered                 │  section in Tab 0             │
  ├─────────────────┼───────────────────────────────────────┼────────────────────────┼────────────────────────────────┼───────────────────────────────┤
  │ Tab 2 — Tax     │ Tax Choice (SINGLE/COMMON), Common    │ Partial — some fields  │ Tax mode selection logic       │ Properly implement Tax        │
  │ Details         │ Tax Code, Per Bale/Truck selector     │ present under wrong    │ missing; COMMON tax code field │ Details section with          │
  │ (Partial)       │                                       │ section                │  absent                        │ SINGLE/COMMON toggle          │
  └─────────────────┴───────────────────────────────────────┴────────────────────────┴────────────────────────────────┴───────────────────────────────┘

  3A-2. Missing Individual Header Fields

  ┌─────────────────────┬───────────────────────────────────┬─────────────┬───────────────────────────────┬───────────────────────────────────────────┐
  │        Area         │          FSD Requirement          │  Current    │              Gap              │              Recommendation               │
  │                     │                                   │   Status    │                               │                                           │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Agent/Broker Code   │ txtfields(2); lookup; locked in   │ Missing     │ Agent cannot be recorded      │ Add autocomplete lookup after Supplier    │
  │                     │ Modify                            │             │                               │ field                                     │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Country Code        │ txtfields(5); Country lookup      │ Missing     │ Import POs cannot specify     │ Add to header Section 1                   │
  │                     │                                   │             │ country                       │                                           │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Centralised Order   │ ChkCentralized; default from      │ Missing     │ Pallavaa cross-division flow  │ Add as checkbox; default from             │
  │                     │ RM_PARAM                          │             │ broken                        │ POParam.centralizedOrder                  │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Import/Local/Other  │ Option1/2/3 → im_ind (I/L/U)      │ Missing     │ Import classification lost    │ Add as radio group in header              │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Mill Reference No.  │ txtfields(27); free text          │ Missing     │ Customer's own ref number not │ Add optional text field                   │
  │                     │                                   │             │  captured                     │                                           │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Rate Unit           │ Combo5 from rm_rateunit; drives   │ Missing     │ rateKg calculation falls back │ Add as Select; fetch from                 │
  │                     │ rateKg formula                    │             │  to hardcoded ÷180            │ /api/lookups/rate-units                   │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Arrival Type        │ Combo7; P=PackWise/K=KGSWise;     │ Missing —   │ ordQty and ordKgs both always │ Add Arrival Type selector to Tab 0;       │
  │                     │ drives qty vs kgs columns         │ CRITICAL    │  shown; mode logic absent     │ conditionally show qty/kgs columns        │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Final Weighment     │ Combo9; MILL=M / else=S           │ Missing     │ Weighment type not captured   │ Add small Select to Tab 0                 │
  │                     │                                   │             │ at PO level                   │                                           │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Station / State     │ Text11/Text12; auto-filled from   │ Missing     │ Area selected but             │ Show read-only fields after Area          │
  │ display             │ rm_area                           │             │ station/state not shown       │ autocomplete resolves                     │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Payment Terms       │ txtfields(12); locked display     │ Missing     │ Terms not visible on PO form  │ Add read-only field in header             │
  │ display             │ from lookup                       │             │                               │                                           │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Prepared Date /     │ Auto-set to today + current time  │ Missing     │ Audit timestamps not recorded │ Set automatically in Create handler;      │
  │ Time                │                                   │             │                               │ expose in view                            │
  ├─────────────────────┼───────────────────────────────────┼─────────────┼───────────────────────────────┼───────────────────────────────────────────┤
  │ Authorised          │ txtfields(18); employee lookup;   │ Missing —   │ Hard stop field (HV-8)        │ Add employee lookup field to Payment      │
  │ Signatory           │ mandatory                         │ CRITICAL    │ entirely absent from form     │ Details section                           │
  └─────────────────────┴───────────────────────────────────┴─────────────┴───────────────────────────────┴───────────────────────────────────────────┘

  3A-3. Wrong/Incorrect Fields

  ┌─────────────┬────────────────────────────────────────┬─────────────────────────┬────────────────────────────────────┬──────────────────────────────┐
  │    Area     │            FSD Requirement             │ Current Implementation  │                Gap                 │        Recommendation        │
  ├─────────────┼────────────────────────────────────────┼─────────────────────────┼────────────────────────────────────┼──────────────────────────────┤
  │ ftFlg label │ "Foreign Trade Flag" (Combo10; YES/NO) │ Labeled "Fixed          │ Completely wrong label; user will  │ Rename to "Foreign Trade"    │
  │             │                                        │ Transport"              │ misunderstand purpose              │                              │
  ├─────────────┼────────────────────────────────────────┼─────────────────────────┼────────────────────────────────────┼──────────────────────────────┤
  │ ftFlg type  │ Combo (YES/NO)                         │ Switch (Y/N)            │ Minor — mapping works but not      │ Acceptable; keep Switch      │
  │             │                                        │                         │ idiomatic                          │                              │
  ├─────────────┼────────────────────────────────────────┼─────────────────────────┼────────────────────────────────────┼──────────────────────────────┤
  │ taxChoice   │                                        │ G=GST / N=Non-GST —     │ Tax mode not being set; COMMON     │ Replace with SINGLE/COMMON   │
  │ options     │ SINGLE (Option4) / COMMON (Option5)    │ completely wrong values │ mode tax code never activated      │ Select; hide/show Common Tax │
  │             │                                        │                         │                                    │  Code field                  │
  ├─────────────┼────────────────────────────────────────┼─────────────────────────┼────────────────────────────────────┼──────────────────────────────┤
  │             │ Free text varchar(25); Add uses        │                         │ FSD has no K/R/S seasons; these    │ Change to free text Input;   │
  │ Season      │ txtfields(43), Modify uses             │ Select with K/R/S       │ are crop seasons not field values; │ handle Add/Modify            │
  │ field       │ txtfields(25); two modes               │ options                 │  Add vs Modify split not handled   │ distinction in hook          │
  │             │ (auto-calc/manual)                     │                         │                                    │                              │
  ├─────────────┼────────────────────────────────────────┼─────────────────────────┼────────────────────────────────────┼──────────────────────────────┤
  │             │ Auto-derived from first char of        │ Manual Select (Y/N) —   │ BBFlag is never correctly          │ Remove BBFlag column from    │
  │ BBFlag      │ PackType (B/R/H)                       │ completely wrong values │ populated                          │ grid; derive from packType   │
  │             │                                        │                         │                                    │ first char on save           │
  ├─────────────┼────────────────────────────────────────┼─────────────────────────┼────────────────────────────────────┼──────────────────────────────┤
  │ commPerBal  │ "Commission Per Bale" (separate from   │ Labeled "Comm/Bale"     │ Combo12 (T=Per Truck / B=Per Bale) │ Add Combo12 selector next to │
  │ label       │ CommPer%)                              │ with no Per Bale/Truck  │  is absent                         │  commPerBal                  │
  │             │                                        │ selector                │                                    │                              │
  └─────────────┴────────────────────────────────────────┴─────────────────────────┴────────────────────────────────────┴──────────────────────────────┘

  3A-4. Missing Line Item Grid Logic

  ┌───────────────────────┬────────────────────────────────────────┬─────────────────┬───────────────────────────────┬─────────────────────────────────┐
  │         Area          │            FSD Requirement             │ Current Status  │              Gap              │         Recommendation          │
  ├───────────────────────┼────────────────────────────────────────┼─────────────────┼───────────────────────────────┼─────────────────────────────────┤
  │ Mill Sample No. (Col  │ Leading entry column in wosample=Y     │ Missing from    │ With-Sample entry flow        │ Add Col 0 with sample lookup;   │
  │ 0)                    │ mode; looks up variety/qty/rate from   │ grid            │ completely broken; sno never  │ when sampleFlg=Y, disable       │
  │                       │ rm_sample                              │                 │ captured                      │ direct variety/rate entry       │
  ├───────────────────────┼────────────────────────────────────────┼─────────────────┼───────────────────────────────┼─────────────────────────────────┤
  │ Supplier Sample No.   │ PTY_CONTNO; read-only; set from        │ Missing         │ Sample cross-reference not    │ Add read-only display column    │
  │ (Col 7)               │ rm_sample lookup                       │                 │ captured                      │                                 │
  ├───────────────────────┼────────────────────────────────────────┼─────────────────┼───────────────────────────────┼─────────────────────────────────┤
  │ Tax Code column       │ Hidden in grid but stored; visible in  │ Missing         │ Tax code not captured per     │ Add hidden column; populate     │
  │                       │ COMMON mode                            │                 │ line                          │ from variety lookup             │
  ├───────────────────────┼────────────────────────────────────────┼─────────────────┼───────────────────────────────┼─────────────────────────────────┤
  │ ArrivalType-driven    │ When ArrivalType=P: show ordqty, hide  │ Both columns    │ User confusion; wrong qty     │ Conditionally show/hide based   │
  │ column visibility     │ ordkgs. When K: show ordkgs, hide      │ always shown    │ type entered silently         │ on arrivalType state            │
  │                       │ ordqty                                 │                 │                               │                                 │
  ├───────────────────────┼────────────────────────────────────────┼─────────────────┼───────────────────────────────┼─────────────────────────────────┤
  │ Rate/Unit precision   │ candyrate: decimal(15,7); 10dp display │ precision=2 on  │ Precision loss for high-value │ Change to precision=7 minimum   │
  │                       │                                        │ InputNumber     │  cotton rates                 │                                 │
  ├───────────────────────┼────────────────────────────────────────┼─────────────────┼───────────────────────────────┼─────────────────────────────────┤
  │                       │ ROUND(candyrate / rm_rateunit.value,   │ Hardcoded ÷180  │ Rate wrong for all non-Candy  │ Fetch rate unit value; pass to  │
  │ rateKg calculation    │ 5) — uses Rate Unit master value       │ in onUpdate     │ units (KGS mode will divide   │ grid for calculation            │
  │                       │                                        │                 │ by 180 kg incorrectly)        │                                 │
  ├───────────────────────┼────────────────────────────────────────┼─────────────────┼───────────────────────────────┼─────────────────────────────────┤
  │ GST auto-fill trigger │ On Col 6 exit (rate entry), auto-fill  │ On variety      │ Rate entry doesn't re-trigger │ Move GST fill trigger to rate   │
  │                       │ CGST/SGST/IGST/HSN/TaxCode from rm_var │ select only     │  GST fill                     │ field onBlur                    │
  ├───────────────────────┼────────────────────────────────────────┼─────────────────┼───────────────────────────────┼─────────────────────────────────┤
  │ PR balance validation │ Col 3 exit: ordQty ≤ Rm_PRL balance;   │ Missing on      │ Over-commitment possible      │ Add onBlur check against        │
  │                       │ warn + auto-correct                    │ column exit     │ without feedback until save   │ PRLine.balanceQty               │
  ├───────────────────────┼────────────────────────────────────────┼─────────────────┼───────────────────────────────┼─────────────────────────────────┤
  │ IGST vs CGST+SGST     │ Based on IGSTFLG from supplier GST     │ All three       │ User can enter contradictory  │ Make CGST/SGST readonly when    │
  │ display               │ determination                          │ columns always  │ intra+inter state rates       │ IGSTFLG=N; IGST readonly when   │
  │                       │                                        │ editable        │ simultaneously                │ IGSTFLG=Y                       │
  └───────────────────────┴────────────────────────────────────────┴─────────────────┴───────────────────────────────┴─────────────────────────────────┘

  3A-5. Delivery Schedule Gaps

  ┌───────────────────┬──────────────────────────────────┬──────────────┬───────────────────────────────┬────────────────────────────────────────────┐
  │       Area        │         FSD Requirement          │   Current    │              Gap              │               Recommendation               │
  │                   │                                  │    Status    │                               │                                            │
  ├───────────────────┼──────────────────────────────────┼──────────────┼───────────────────────────────┼────────────────────────────────────────────┤
  │ Weighment column  │ Combo8 from rm_WEIGHNMENT        │ Missing      │ Weighment not captured per    │ Add Select column populated from           │
  │                   │                                  │              │ schedule line                 │ /api/lookups/weighments                    │
  ├───────────────────┼──────────────────────────────────┼──────────────┼───────────────────────────────┼────────────────────────────────────────────┤
  │ Variety selector  │ Combo6 populated from line item  │ Free text    │ User can enter varieties not  │ Populate from current line items; use      │
  │                   │ grid varieties                   │ Input        │ in the PO                     │ Select not Input                           │
  ├───────────────────┼──────────────────────────────────┼──────────────┼───────────────────────────────┼────────────────────────────────────────────┤
  │ Date ≥ Order Date │ Frontend validation (LV-12)      │ No           │ Backdated delivery schedules  │ Add DatePicker disabledDate prop           │
  │                   │                                  │ validation   │ accepted                      │                                            │
  ├───────────────────┼──────────────────────────────────┼──────────────┼───────────────────────────────┼────────────────────────────────────────────┤
  │ Cumulative qty    │ Sum per variety ≤ ordered qty    │ Missing      │ Over-scheduled PO never       │ Add running total per variety; show        │
  │ check             │ (LV-15)                          │              │ flagged                       │ warning                                    │
  ├───────────────────┼──────────────────────────────────┼──────────────┼───────────────────────────────┼────────────────────────────────────────────┤
  │ Duplicate         │ Unique per PO (LV-14)            │ Missing      │ Duplicate schedules accepted  │ Add duplicate detection before append      │
  │ date+variety      │                                  │              │ silently                      │                                            │
  └───────────────────┴──────────────────────────────────┴──────────────┴───────────────────────────────┴────────────────────────────────────────────┘

  3A-6. UX & Workflow Gaps

  ┌──────────────────┬───────────────────────────────────────┬────────────────────────┬─────────────────────────────┬──────────────────────────────────┐
  │       Area       │            FSD Requirement            │     Current Status     │             Gap             │          Recommendation          │
  ├──────────────────┼───────────────────────────────────────┼────────────────────────┼─────────────────────────────┼──────────────────────────────────┤
  │ With-Sample mode │ On Add: ask "Enter PO With Sample?" — │ Switch toggle exists   │ sampleFlg captured but has  │ When sampleFlg=Y, lock           │
  │  prompt          │  drives entire entry flow             │ but drives nothing     │ zero effect on entry mode   │ variety/rate direct entry;       │
  │                  │                                       │                        │                             │ enable Mill Sample No. column    │
  ├──────────────────┼───────────────────────────────────────┼────────────────────────┼─────────────────────────────┼──────────────────────────────────┤
  │                  │ PA-1 through PA-8: master tables not  │ One pre-check call in  │ Frontend shows no           │ Show per-check result in a       │
  │ 8 Pre-Add checks │ empty before allowing Add             │ service                │ individual pre-check        │ preflight modal before the form  │
  │                  │                                       │                        │ failures                    │ loads                            │
  ├──────────────────┼───────────────────────────────────────┼────────────────────────┼─────────────────────────────┼──────────────────────────────────┤
  │ GST              │ On supplier select: show IGSTFLG      │                        │ User doesn't know which GST │ Add a GST badge (CGST+SGST /     │
  │ determination    │ result (intra/inter/foreign) visually │ No GST state indicator │  type applies               │ IGST / No GST) after supplier    │
  │ display          │                                       │                        │                             │ selection                        │
  ├──────────────────┼───────────────────────────────────────┼────────────────────────┼─────────────────────────────┼──────────────────────────────────┤
  │ PO Number        │ Shown as E47 after save: "Order No.   │ Not shown prominently  │ User unsure which PO was    │ Show PO number in success toast  │
  │ display          │ is [contno]"                          │                        │ created                     │ with copy button                 │
  ├──────────────────┼───────────────────────────────────────┼────────────────────────┼─────────────────────────────┼──────────────────────────────────┤
  │                  │ Three tabs: Order Details, Payment    │ Single flat form with  │ Payment and Tax data entry  │ Implement AntD Tabs or sectioned │
  │ Tab structure    │ Details, Tax Details                  │ 4 sections             │ paths absent                │  cards matching FSD tab          │
  │                  │                                       │                        │                             │ structure                        │
  ├──────────────────┼───────────────────────────────────────┼────────────────────────┼─────────────────────────────┼──────────────────────────────────┤
  │ Lot From/To      │ Visible/mandatory only when           │ Always visible, always │ Param not driving UI        │ Fetch POParam on load;           │
  │ conditional      │ SuppLotNoReqArrival=Y from POParam    │  optional              │ visibility                  │ conditionally show lot fields    │
  ├──────────────────┼───────────────────────────────────────┼────────────────────────┼─────────────────────────────┼──────────────────────────────────┤
  │                  │ Filter by indent/itemCode/itemName    │ Filter exists but      │ Kgs-based filtering/display │ Add balanceKgs to PRLineDto      │
  │ PRLineFilter     │ with partial match                    │ balanceKgs missing     │  broken                     │ frontend type                    │
  │                  │                                       │ from PRLineDto         │                             │                                  │
  └──────────────────┴───────────────────────────────────────┴────────────────────────┴─────────────────────────────┴──────────────────────────────────┘

  ---
  3B. BACKEND GAP ANALYSIS

  3B-1. DTO Field Gaps

  ┌──────────────────┬─────────────────────────────────────────────────┬─────────────────────────┬─────────────────────────┬──────────────────────────┐
  │       Area       │                    FSD Logic                    │      Missing/Issue      │           Gap           │           Fix            │
  ├──────────────────┼─────────────────────────────────────────────────┼─────────────────────────┼─────────────────────────┼──────────────────────────┤
  │ CreatePODto —    │ agentCode, countryCode, imInd, millRefNo,       │                         │ These fields are never  │ Add all fields to        │
  │ missing fields   │ rateUnit, arrivalType, finalWeighment           │ All absent from DTO     │ saved to DB             │ CreatePODto with proper  │
  │                  │                                                 │                         │                         │ SQL types                │
  ├──────────────────┼─────────────────────────────────────────────────┼─────────────────────────┼─────────────────────────┼──────────────────────────┤
  │                  │ billingAddress, deliveryAddressCode,            │                         │                         │                          │
  │ CreatePODto —    │ contactPerson, terms1, terms1Days, terms2,      │ All absent              │ Tab 1 data never        │ Add to CreatePODto;      │
  │ Payment Details  │ terms2Days, creditDays, interestPer,            │                         │ persisted               │ match DB column types    │
  │                  │ deliveryTerms, remarks                          │                         │                         │                          │
  ├──────────────────┼─────────────────────────────────────────────────┼─────────────────────────┼─────────────────────────┼──────────────────────────┤
  │ CreatePODto —    │ commonTaxCode (when taxChoice=COMMON),          │                         │ COMMON tax code never   │                          │
  │ Tax Details      │ perbaletruckbale (Combo12)                      │ Absent                  │ saved; per-bale/truck   │ Add fields               │
  │                  │                                                 │                         │ flag lost               │                          │
  ├──────────────────┼─────────────────────────────────────────────────┼─────────────────────────┼─────────────────────────┼──────────────────────────┤
  │ CreatePODto —    │                                                 │                         │ Cotton quality data     │ Add optional             │
  │ Quality Params   │ grade, staple, mic, strength, moisture, trash   │ All absent              │ never captured or       │ decimal/varchar fields   │
  │                  │                                                 │                         │ stored                  │                          │
  ├──────────────────┼─────────────────────────────────────────────────┼─────────────────────────┼─────────────────────────┼──────────────────────────┤
  │ PRLineDto —      │ SP returns BALQTYKG = ISNULL(qtyindKG,0) -      │                         │ Kgs-mode PR conversion  │ Add BalanceKgs decimal   │
  │ balanceKgs       │ ISNULL(qtyordKG,0)                              │ Absent from PRLineDto   │ cannot show available   │ to PRLineDto             │
  │                  │                                                 │                         │ kgs balance             │                          │
  ├──────────────────┼─────────────────────────────────────────────────┼─────────────────────────┼─────────────────────────┼──────────────────────────┤
  │ UpdatePODto      │ Add: txtfields(43); Modify: txtfields(25) —     │ UpdatePODto :           │ Season is saved from    │ Add bool IsAddMode flag  │
  │ season split     │ different source fields                         │ CreatePODto with single │ wrong source in Modify  │ or use distinct endpoint │
  │                  │                                                 │  Season field           │                         │  behavior                │
  ├──────────────────┼─────────────────────────────────────────────────┼─────────────────────────┼─────────────────────────┼──────────────────────────┤
  │ PODefaultsDto vs │ All 8 RM_PARAM flags needed to drive UI:        │ GetDefaultsAsync        │ 5 config flags never    │ Return full POParamDto   │
  │  POParamDto      │ SuppLotNoReqArrival, SeasoncalcReq,             │ returns only 3 flags    │ reach the frontend      │ from the defaults        │
  │                  │ MasterEntryFlg, ADDTAXREQUIRED, ftamt etc.      │                         │                         │ endpoint                 │
  └──────────────────┴─────────────────────────────────────────────────┴─────────────────────────┴─────────────────────────┴──────────────────────────┘

  3B-2. Service Validation Gaps

  ┌────────────────────┬─────────────────────────────────┬──────────────────────┬────────────────────────────┬─────────────────────────────────────────┐
  │        Area        │            FSD Logic            │    Missing/Issue     │            Gap             │                   Fix                   │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ PA-2: Last PO date │ Error if last RM_CONT date >    │ Not in service or    │ Stale processing dates not │ Add to PreChecksAsync                   │
  │  check             │ pdate (processing date)         │ pre-checks           │  caught                    │                                         │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ HV-2/HV-3:         │ On save, validate GSTSTATECODE  │ Not validated at     │ PO saved for supplier with │ Add GST validation in CreateAsync       │
  │ Supplier GST       │ ≠ '0' and GSTINNO ≠ '0' for     │ save                 │  incomplete GST master     │ before insert                           │
  │                    │ registered suppliers            │                      │                            │                                         │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ HV-7: Delivery     │                                 │ Marked Optional in   │ Field not required by      │                                         │
  │ Type mandatory     │ Hard stop                       │ DTO (string?         │ DataAnnotations            │ Change to [Required] on DlyType         │
  │                    │                                 │ DlyType)             │                            │                                         │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ HV-8: Auth         │                                 │ Acceptance is        │ Auth signatory skipped     │                                         │
  │ Signatory          │ Hard stop                       │ string? with no      │ silently                   │ Change to [Required] on Acceptance      │
  │ mandatory          │                                 │ Required annotation  │                            │                                         │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ HV-9: Transport    │                                 │ Transport is string? │                            │                                         │
  │ mandatory          │ Hard stop                       │  with no Required    │ Transport skipped          │ Change to [Required]                    │
  │                    │                                 │ annotation           │                            │                                         │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ HV-10/HV-11:       │ File name not blank + physical  │ File name is string? │                            │ HV-10: mark required; HV-11: redesign   │
  │ Supplier file      │ file exists at server path      │  optional            │ Both checks absent         │ for web (store to blob/network share,   │
  │                    │                                 │                      │                            │ validate path)                          │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ LV-2: Tax code     │ Tax code must exist and be      │ Not implemented      │ Inactive/invalid GST codes │ Add ig_tax active check in CreateAsync  │
  │ active check       │ active in ig_tax                │                      │  accepted                  │ per line                                │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ LV-7: GST = 0      │ When CGST+SGST+IGST = 0:        │ Currently adds to    │ Warnings not surfaced as   │ Return as a requiresConfirmation flag;  │
  │ confirm flow       │ confirm Y/N                     │ warnings list        │ blocking confirm to user   │ client must re-POST with                │
  │                    │                                 │                      │                            │ confirmZeroGst=true                     │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ LV-10/LV-11: PR    │ ordQty ≤ Rm_PRL balance; ordKgs │ Not validated in     │ Over-commitment persisted  │ Add balance check in CreateAsync for    │
  │ balance validation │  ≤ balance kgs                  │ service              │ to DB                      │ each PR-linked line                     │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ LV-14: Schedule    │ Unique Date+Address+Variety per │ Not validated        │ Duplicate delivery         │ Add uniqueness check in                 │
  │ duplicate          │  PO                             │                      │ schedules inserted         │ InsertDeliveryScheduleAsync             │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ LV-15: Schedule    │ Sum per variety ≤ ordered qty   │ Not validated        │ Over-scheduled deliveries  │ Add cumulative check before each insert │
  │ cumulative         │                                 │                      │ accepted                   │                                         │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ E55:               │ Candy rate unit requires        │                      │ Mismatched POs create      │                                         │
  │ UoM/ArrivalType    │ ArrivalType=P; KGS requires K   │ Not implemented      │ calculation errors         │ Add cross-validation in CreateAsync     │
  │ mismatch           │                                 │                      │ downstream in arrival      │                                         │
  ├────────────────────┼─────────────────────────────────┼──────────────────────┼────────────────────────────┼─────────────────────────────────────────┤
  │ Financial year     │                                 │ Pre-check runs but   │ Not specifically FY check  │ Ensure PreChecksAsync explicitly checks │
  │ check              │ PA-1: ToValidFinYear must pass  │ is a generic call    │ — unclear what PA-1 does   │  RM_LOT.FINDYRCLOSED                    │
  │                    │                                 │                      │ in PreChecksAsync          │                                         │
  └────────────────────┴─────────────────────────────────┴──────────────────────┴────────────────────────────┴─────────────────────────────────────────┘

  3B-3. Transaction Safety — CRITICAL Defects

  ┌─────────────────┬────────────────────────────────────┬─────────────────────────────────┬─────────────────────────┬─────────────────────────────────┐
  │      Area       │             FSD Logic              │         Current Status          │           Gap           │               Fix               │
  ├─────────────────┼────────────────────────────────────┼─────────────────────────────────┼─────────────────────────┼─────────────────────────────────┤
  │ CD-2: PO Number │ MAX(contno)+1 without UPDLOCK →    │ GenerateNumberAsync uses MAX+1  │ Two concurrent saves    │ Replace with SQL Server         │
  │  Race Condition │ duplicate PO numbers under         │ (confirmed by FSD Section 5.4)  │ produce same contno     │ SEQUENCE object per FSD/Guide   │
  │                 │ concurrency                        │                                 │                         │ v3 recommendation               │
  ├─────────────────┼────────────────────────────────────┼─────────────────────────────────┼─────────────────────────┼─────────────────────────────────┤
  │                 │ Rm_PRL UPDATE must have            │ No UPDLOCK; each                │ Two buyers can          │ Wrap entire CreateAsync in a    │
  │ CD-3: PR        │ WITH(UPDLOCK) within save          │ InsertLineAsync is a separate   │ over-commit same PR     │ single DB transaction with      │
  │ Balance UPDLOCK │ transaction                        │ await                           │ line                    │ UPDLOCK on Rm_PRL before        │
  │                 │                                    │                                 │                         │ balance read                    │
  ├─────────────────┼────────────────────────────────────┼─────────────────────────────────┼─────────────────────────┼─────────────────────────────────┤
  │ No transaction  │ All DB writes in a single          │ CreateAsync calls 5+ separate   │ Partial save on any     │ Wrap all inserts in             │
  │ scope           │ BeginTrans...CommitTrans           │ async inserts with no           │ failure leaves DB       │ IDbTransaction via UnitOfWork;  │
  │                 │                                    │ transaction                     │ inconsistent            │ rollback on any exception       │
  ├─────────────────┼────────────────────────────────────┼─────────────────────────────────┼─────────────────────────┼─────────────────────────────────┤
  │ FIRST_APPFLG    │ Step 0: check FIRST_APPFLG=Y       │ DeleteAsync passes directly to  │ Approved POs can be     │ Add FIRST_APPFLG=Y check in     │
  │ delete guard    │ before arrival check — hard stop   │ _repo.DeleteAsync with no       │ deleted                 │ DeleteAsync before calling repo │
  │                 │                                    │ FIRST_APPFLG check              │                         │                                 │
  ├─────────────────┼────────────────────────────────────┼─────────────────────────────────┼─────────────────────────┼─────────────────────────────────┤
  │                 │ RM_CONT_SLOTNO + NONRECIEVELOT     │ InsertSlotNoAsync called within │ Lot inserts may not     │ Execute lot number management   │
  │ Lot number      │ update must happen AFTER           │  main sequence with no commit   │ follow correct VB6      │ after explicit commit of main   │
  │ post-commit     │ CommitTrans                        │ boundary                        │ two-phase commit        │ transaction                     │
  │                 │                                    │                                 │ pattern                 │                                 │
  └─────────────────┴────────────────────────────────────┴─────────────────────────────────┴─────────────────────────┴─────────────────────────────────┘

  3B-4. UpdateAsync — Completely Unimplemented

  ┌───────────────┬─────────────────────────────────────┬──────────────────────────┬───────────────────────┬───────────────────────────────────────────┐
  │     Area      │              FSD Logic              │      Current Status      │          Gap          │                    Fix                    │
  ├───────────────┼─────────────────────────────────────┼──────────────────────────┼───────────────────────┼───────────────────────────────────────────┤
  │               │ Full Modify mode: re-validate GST,  │ Returns (false, "Update  │ Modify mode is        │ Implement full update: delete existing    │
  │ UpdateAsync   │ supplier/date locked if arrivals,   │ not yet implemented.")   │ non-functional        │ lines → re-insert; locked field           │
  │               │ update all tables                   │                          │                       │ enforcement; PR balance adjustment        │
  ├───────────────┼─────────────────────────────────────┼──────────────────────────┼───────────────────────┼───────────────────────────────────────────┤
  │ Season Modify │ Modify mode reads from              │ No Modify implementation │ Season would be saved │ Handle in UpdateAsync: use Season field   │
  │  path         │ txtfields(25) not txtfields(43)     │                          │  from wrong source    │ from manual entry control                 │
  └───────────────┴─────────────────────────────────────┴──────────────────────────┴───────────────────────┴───────────────────────────────────────────┘

  3B-5. Missing API Endpoints

  ┌──────────────────────────────┬────────────────────────────────┬────────────────────────────────────┬───────────────────────────────────────────────┐
  │           Endpoint           │        FSD Requirement         │           Current Status           │                      Gap                      │
  ├──────────────────────────────┼────────────────────────────────┼────────────────────────────────────┼───────────────────────────────────────────────┤
  │ GET /api/v1/po/{id}/print    │ QuestPDF generation;           │ Missing                            │ No print endpoint exists                      │
  │                              │ conditional PR No/Date         │                                    │                                               │
  ├──────────────────────────────┼────────────────────────────────┼────────────────────────────────────┼───────────────────────────────────────────────┤
  │ POST /api/v1/po/{id}/approve │ Approval action per level      │ Exists in controller — verify      │ Need to confirm repo UpdateApprovalAsync      │
  │                              │                                │ repository implements              │ writes FIRST_APPFLG correctly                 │
  ├──────────────────────────────┼────────────────────────────────┼────────────────────────────────────┼───────────────────────────────────────────────┤
  │ GET /api/v1/po/config        │ Full POParamDto (all 8         │ Returns only 3 fields via          │ 5 flags missing; frontend cannot drive        │
  │                              │ RM_PARAM flags)                │ GetDefaultsAsync                   │ conditional fields                            │
  ├──────────────────────────────┼────────────────────────────────┼────────────────────────────────────┼───────────────────────────────────────────────┤
  │ GET                          │ rm_rateunit.value for rateKg   │ Missing                            │ rateKg hardcoded to ÷180 everywhere           │
  │ /api/v1/po/rate-unit-value   │ calculation                    │                                    │                                               │
  └──────────────────────────────┴────────────────────────────────┴────────────────────────────────────┴───────────────────────────────────────────────┘

  ---
  4. LOOKUP & MASTER DEPENDENCIES

  ┌───────────────────┬─────────────────────┬────────────────────────────────┬─────────────────────────────────┬──────────────────────────────────────┐
  │      Lookup       │    Table/Source     │         FSD Reference          │         Current Status          │                 Gap                  │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Supplier          │ fa_slmas            │ Mandatory; drives GST          │ Implemented (searchSuppliers)   │ Missing GST config callback on       │
  │                   │                     │ determination                  │                                 │ select                               │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Area              │ rm_area             │ Mandatory; auto-fills          │ Implemented (searchAreas)       │ Station/State display after select   │
  │                   │                     │ Station+State                  │                                 │ missing                              │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Variety           │ rm_var              │ Per line; drives HSN+GST       │ Implemented (searchVarieties)   │ GST fill only on select; missing on  │
  │                   │                     │ auto-fill                      │                                 │ rate exit                            │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Rate Unit         │ rm_rateunit         │ Mandatory; drives rateKg       │ MISSING                         │ No endpoint; value needed for        │
  │                   │                     │ formula                        │                                 │ calculation                          │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Agent/Broker      │ fa_slmas            │ Optional header                │ MISSING                         │ No lookup for broker type            │
  │                   │ (ptypebroker)       │                                │                                 │                                      │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Payment Mode      │ rm_pmode            │ Mandatory                      │ Implemented                     │ OK                                   │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Currency          │ fa_currency         │ Mandatory; default from        │ Implemented                     │ OK                                   │
  │                   │                     │ PO_Para                        │                                 │                                      │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Country           │ Country master      │ Optional header                │ MISSING                         │ No endpoint                          │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Weighment         │ rm_WEIGHNMENT       │ Delivery schedule              │ MISSING                         │ No endpoint; needed for schedule     │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Delete Reason     │ RM_DelReason        │ Mandatory on delete            │ Implemented                     │ OK — verify table not empty check    │
  │                   │                     │                                │ (GetDeleteReasonsAsync)         │                                      │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Billing Address   │ rm_billadd          │ Payment tab                    │ MISSING                         │ No endpoint                          │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Common Tax Code   │ ig_tax (active      │ When taxChoice=COMMON          │ MISSING                         │ Active tax code list not exposed     │
  │                   │ only)               │                                │                                 │                                      │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Authorised        │ Employee master     │ Payment tab; mandatory         │ MISSING                         │ No employee lookup                   │
  │ Signatory         │                     │                                │                                 │                                      │
  ├───────────────────┼─────────────────────┼────────────────────────────────┼─────────────────────────────────┼──────────────────────────────────────┤
  │ Delivery Address  │ Delivery master     │ Payment tab                    │ MISSING                         │ No endpoint                          │
  └───────────────────┴─────────────────────┴────────────────────────────────┴─────────────────────────────────┴──────────────────────────────────────┘

  ---
  5. VALIDATION MATRIX

  ┌────────────────────────┬──────────────────────────────────┬────────────────────────────┬─────────────────────┬───────────────────────────────┐
  │         Field          │               Rule               │       Frontend Check       │    Backend Check    │         Missing Where         │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Supplier Code          │ Not blank on save (HV-1)         │ Required rule              │ Pre-check           │ OK                            │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Supplier GST State     │ ≠ '0' for Registered (HV-2)      │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Supplier GSTIN         │ ≠ '0' for Registered (HV-3)      │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Payment Mode           │ Not blank (HV-4)                 │ Optional Select            │ string? PayMode     │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Area Code              │ Not blank (HV-5)                 │ No required rule           │ string? AreaCode    │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Currency               │ Not blank (HV-6)                 │ Optional Select            │ string? CurrCode    │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Delivery Type          │ Not blank (HV-7)                 │ Field absent               │ string? DlyType     │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Auth Signatory         │ Not blank (HV-8)                 │ Field absent               │ string? Acceptance  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Transport              │ Not blank (HV-9)                 │ No required rule           │ string? Transport   │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Supplier File name     │ Not blank (HV-10)                │ No required rule           │ string? SupFileName │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Supplier File physical │ Must exist (HV-11)               │ N/A                        │ Not implemented     │ Backend                       │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Lot From               │ ≠ 0 when SuppLotReq=Y (HV-12)    │ No param check             │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Lot To                 │ ≠ 0 when SuppLotReq=Y (HV-13)    │ No param check             │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Lot From vs To         │ From ≤ To (HV-17/18)             │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Crop Year              │ ≤ current year (HV-14)           │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Due Date               │ ≥ Order Date (HV-16)             │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Tax Code per line      │ Not blank if STATE_FLAG≠F (LV-1) │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Tax Code active        │ Must be active in ig_tax (LV-2)  │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Rate (candyrate)       │ ≠ 0 (LV-3)                       │ InputNumber min=0 allows 0 │ [Range(0.0001...)]  │ Frontend (set min=0.0001)     │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Qty Bales              │ ≠ 0 when variety entered (LV-4)  │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Qty Kgs                │ ≠ 0 when variety entered (LV-5)  │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Grid not empty         │ At least one row (LV-8)          │ [MinLength(1)] on Lines    │ Checked             │ OK                            │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Qty vs PR balance      │ ≤ PR balance (LV-10)             │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Kgs vs PR balance      │ ≤ PR balance kgs (LV-11)         │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Schedule date          │ ≥ Order date (LV-12)             │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Schedule qty           │ > 0 (LV-13)                      │ [Range(0.001...)]          │ Annotated           │ OK                            │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Schedule duplicate     │ Unique date+addr+variety (LV-14) │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Schedule cumulative    │ Sum ≤ ordered qty (LV-15)        │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ HSN (PRBased=Y)        │ Not blank (LV-16)                │ No frontend enforcement    │ Service checks      │ Frontend missing              │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Tax Code (PRBased=Y)   │ Not blank (LV-17)                │ No frontend enforcement    │ Service checks      │ Frontend missing              │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ GST = 0                │ Confirm Y/N (LV-7)               │ No confirm flow            │ Warning only        │ Both (confirm pattern needed) │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ UoM/ArrivalType        │ Candy→P; KGS→K (E55)             │ No                         │ No                  │ Both                          │
  ├────────────────────────┼──────────────────────────────────┼────────────────────────────┼─────────────────────┼───────────────────────────────┤
  │ Financial year         │ ToValidFinYear (PA-1)            │ No                         │ Generic pre-check   │ Frontend                      │
  └────────────────────────┴──────────────────────────────────┴────────────────────────────┴─────────────────────┴───────────────────────────────┘

  ---
  6. BUSINESS RULES CHECK

  6.1 Tax Calculation

  ┌────────────────────┬──────────────────────────────────────────────────────┬────────────────────────────────────┬───────────────────────────────────┐
  │        Rule        │                         FSD                          │           Implementation           │              Status               │
  ├────────────────────┼──────────────────────────────────────────────────────┼────────────────────────────────────┼───────────────────────────────────┤
  │ IGSTFLG            │ Foreign supplier → no GST; Same state → CGST+SGST;   │ GSTConfigDto returned from         │ Partial — flag returned but       │
  │ determination      │ Diff state → IGST                                    │ /gst-config/{supCode}              │ frontend does not use it to lock  │
  │                    │                                                      │                                    │ grid columns                      │
  ├────────────────────┼──────────────────────────────────────────────────────┼────────────────────────────────────┼───────────────────────────────────┤
  │ GST auto-fill on   │ rm_var.CGSTPER/SGSTPER/IGSTPER/HSN/TaxCode filled    │ Only fires on Variety select       │ Gap: rate entry exit does not     │
  │ Col 6 exit         │ after rate entry                                     │                                    │ trigger re-fill                   │
  ├────────────────────┼──────────────────────────────────────────────────────┼────────────────────────────────────┼───────────────────────────────────┤
  │ COMMON tax mode    │ One Tax Code shared across all line items            │ taxChoice=G/N in frontend; COMMON  │ Broken: COMMON tax logic entirely │
  │                    │                                                      │ mode never activates               │  absent                           │
  ├────────────────────┼──────────────────────────────────────────────────────┼────────────────────────────────────┼───────────────────────────────────┤
  │ Tax code active    │ ig_tax must confirm code is active                   │ Not implemented                    │ Gap                               │
  │ validation         │                                                      │                                    │                                   │
  └────────────────────┴──────────────────────────────────────────────────────┴────────────────────────────────────┴───────────────────────────────────┘

  6.2 Commission Logic

  ┌───────────────────┬────────────────────────────────────┬───────────────────────────────────┬───────────────────────────────────────────────────────┐
  │       Rule        │                FSD                 │          Implementation           │                        Status                         │
  ├───────────────────┼────────────────────────────────────┼───────────────────────────────────┼───────────────────────────────────────────────────────┤
  │ Commission %      │ CommPer — header level percentage  │ commPer in DTO                    │ OK                                                    │
  ├───────────────────┼────────────────────────────────────┼───────────────────────────────────┼───────────────────────────────────────────────────────┤
  │ Commission Per    │ commperbale — fixed amount         │ commPerBal in DTO                 │ Field name mismatch: FSD = commperbale, DTO =         │
  │ Bale              │                                    │                                   │ CommPerBal — verify DB column name                    │
  ├───────────────────┼────────────────────────────────────┼───────────────────────────────────┼───────────────────────────────────────────────────────┤
  │ Per Bale/Truck    │ Combo12: 0=blank, 1=T (Per Truck), │ perbaletruckbale absent from all  │ Gap                                                   │
  │ selector          │  2=B (Per Bale)                    │ DTOs and UI                       │                                                       │
  └───────────────────┴────────────────────────────────────┴───────────────────────────────────┴───────────────────────────────────────────────────────┘

  6.3 Quantity Conversions

  ┌────────────────────┬────────────────────────────────────────────────┬─────────────────────────────────────┬───────────────────────────────────────┐
  │        Rule        │                      FSD                       │           Implementation            │                Status                 │
  ├────────────────────┼────────────────────────────────────────────────┼─────────────────────────────────────┼───────────────────────────────────────┤
  │ rateKg formula     │ ROUND(candyrate / rm_rateunit.value, 5) — uses │ rate / 180 hardcoded in             │ Critical gap — all non-Candy units    │
  │                    │  Rate Unit master value                        │ POLineItemsTable.tsx:207            │ will produce wrong per-kg rates       │
  ├────────────────────┼────────────────────────────────────────────────┼─────────────────────────────────────┼───────────────────────────────────────┤
  │ ArrivalType drives │ P mode → ordqty mandatory, ordkgs = 0; K mode  │ Both always captured                │ Gap: both always submitted; wrong one │
  │  qty type          │ → ordkgs mandatory, ordqty = 0                 │                                     │  may be zero                          │
  └────────────────────┴────────────────────────────────────────────────┴─────────────────────────────────────┴───────────────────────────────────────┘

  6.4 Status Transitions

  ┌────────────────────────┬───────────────────────────────────────────────────────┬──────────────────────────────────┬────────────────────────────────┐
  │       Transition       │                          FSD                          │          Implementation          │             Status             │
  ├────────────────────────┼───────────────────────────────────────────────────────┼──────────────────────────────────┼────────────────────────────────┤
  │ Draft → Level 1        │ FIRST_APPFLG = 'Y'                                    │ ApproveAsync Level=1             │ Exists — verify DB write       │
  │ Approved               │                                                       │                                  │                                │
  ├────────────────────────┼───────────────────────────────────────────────────────┼──────────────────────────────────┼────────────────────────────────┤
  │ Level 1 → Level 2      │ fAppFlg = 'Y'                                         │ ApproveAsync Level=2             │ Exists — verify DB write       │
  ├────────────────────────┼───────────────────────────────────────────────────────┼──────────────────────────────────┼────────────────────────────────┤
  │ Level 2 → Final        │ appFlg = 'Y'                                          │ ApproveAsync Level=3             │ Exists — verify DB write       │
  │ Approved               │                                                       │                                  │                                │
  ├────────────────────────┼───────────────────────────────────────────────────────┼──────────────────────────────────┼────────────────────────────────┤
  │ Approved → Delete      │ FIRST_APPFLG='Y' blocks delete (Step 0)               │ DeleteAsync has no FIRST_APPFLG  │ Critical gap — approved POs    │
  │                        │                                                       │ check                            │ deletable                      │
  ├────────────────────────┼───────────────────────────────────────────────────────┼──────────────────────────────────┼────────────────────────────────┤
  │ Arrivals exist → No    │ RM_Arrival check (Step 1)                             │ Handled in repo DeleteAsync      │ OK — verify                    │
  │ Delete                 │                                                       │                                  │                                │
  ├────────────────────────┼───────────────────────────────────────────────────────┼──────────────────────────────────┼────────────────────────────────┤
  │ Any state → Modify     │ Supplier/date locked after arrivals; FIRST_APPFLG=Y   │ UpdateAsync returns "not         │ Entire Modify mode absent      │
  │ lock                   │ blocks fully                                          │ implemented"                     │                                │
  └────────────────────────┴───────────────────────────────────────────────────────┴──────────────────────────────────┴────────────────────────────────┘

  6.5 Order Number Generation

  ┌────────────────────┬───────────────────────────────────────────────┬────────────────────────────────┬───────────────────────────────────────────────┐
  │        Rule        │                      FSD                      │         Implementation         │                    Status                     │
  ├────────────────────┼───────────────────────────────────────────────┼────────────────────────────────┼───────────────────────────────────────────────┤
  │ Per-division       │ MAX(contno)+1 per division+year               │ GenerateNumberAsync — likely   │ CD-2 open: race condition; duplicate PO       │
  │ sequence           │                                               │ MAX+1                          │ numbers under load                            │
  ├────────────────────┼───────────────────────────────────────────────┼────────────────────────────────┼───────────────────────────────────────────────┤
  │ Centralised        │ Global MAX across all divisions when          │ Not implemented                │ Gap                                           │
  │ sequence           │ CentralizedOrder=Y                            │                                │                                               │
  ├────────────────────┼───────────────────────────────────────────────┼────────────────────────────────┼───────────────────────────────────────────────┤
  │ First of year      │ If NULL: contno = 1                           │ Unknown                        │ Verify                                        │
  └────────────────────┴───────────────────────────────────────────────┴────────────────────────────────┴───────────────────────────────────────────────┘

  ---
  7. RISK IDENTIFICATION

  7.1 Data Integrity Risks

  ┌──────────────────────────┬──────────┬───────────────────────────────────────────────┬──────────────────────────────────────────────────────────────┐
  │           Risk           │ Severity │                  Description                  │                            Impact                            │
  ├──────────────────────────┼──────────┼───────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
  │ R-01: No DB transaction  │ CRITICAL │ 5+ separate async inserts with no rollback    │ Partial PO saves on any failure; DB left in inconsistent     │
  │ on Create                │          │ boundary                                      │ state                                                        │
  ├──────────────────────────┼──────────┼───────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
  │ R-02: Duplicate PO       │ CRITICAL │ MAX+1 contno under concurrent users           │ Two POs with same number; downstream arrival, AP, GST all    │
  │ numbers (CD-2)           │          │                                               │ broken                                                       │
  ├──────────────────────────┼──────────┼───────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
  │ R-03: PR over-commitment │ CRITICAL │ No UPDLOCK on Rm_PRL balance update           │ Two buyers can commit more than PR authorised; GST claims    │
  │  (CD-3)                  │          │                                               │ inflated                                                     │
  ├──────────────────────────┼──────────┼───────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
  │ R-04: Approved PO        │ HIGH     │ FIRST_APPFLG=Y not checked in DeleteAsync     │ Approved and potentially goods-received POs can be deleted   │
  │ deletion                 │          │                                               │                                                              │
  ├──────────────────────────┼──────────┼───────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
  │ R-05: Wrong rateKg       │ HIGH     │ ÷180 hardcoded for all rate units             │ All POs where Rate Unit ≠ standard Candy have incorrect      │
  │                          │          │                                               │ per-kg rate; AP invoice matching will fail                   │
  ├──────────────────────────┼──────────┼───────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
  │ R-06: Missing mandatory  │ HIGH     │ Delivery Type, Auth Signatory, Transport not  │ POs saved without legally/operationally required fields      │
  │ fields                   │          │ validated                                     │                                                              │
  ├──────────────────────────┼──────────┼───────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
  │ R-07: COMMON tax mode    │ MEDIUM   │ taxChoice never set to COMMON; common tax     │ GST filing for POs using shared tax code will have null tax  │
  │ broken                   │          │ code never captured                           │ code                                                         │
  ├──────────────────────────┼──────────┼───────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┤
  │ R-08: Season wrong on    │ MEDIUM   │ Add vs Modify season source split not         │ Season value incorrect after any PO modification             │
  │ Modify                   │          │ implemented; UpdateAsync unimplemented        │                                                              │
  └──────────────────────────┴──────────┴───────────────────────────────────────────────┴──────────────────────────────────────────────────────────────┘

  7.2 Performance Risks

  ┌──────────────────────────────────────────┬──────────┬───────────────────────────────────────────────────────────────────────────────────────────────┐
  │                   Risk                   │ Severity │                                          Description                                          │
  ├──────────────────────────────────────────┼──────────┼───────────────────────────────────────────────────────────────────────────────────────────────┤
  │ R-09: No pagination on PR Lines          │ MEDIUM   │ SP_PRToPO_RMI returns all pending lines; large customers (SCM Group 5 mills) may have         │
  │                                          │          │ thousands of open PR lines                                                                    │
  ├──────────────────────────────────────────┼──────────┼───────────────────────────────────────────────────────────────────────────────────────────────┤
  │ R-10: Supplier GST API call on every     │ LOW      │ GST config fetched per supplier but no client-side cache                                      │
  │ search char                              │          │                                                                                               │
  └──────────────────────────────────────────┴──────────┴───────────────────────────────────────────────────────────────────────────────────────────────┘

  7.3 Migration / Go-Live Risks

  ┌───────────────────────────────────────────┬──────────┬─────────────────────────────────────────────────────────────────┐
  │                   Risk                    │ Severity │                           Description                           │
  ├───────────────────────────────────────────┼──────────┼─────────────────────────────────────────────────────────────────┤
  │ R-11: Modify mode unimplemented           │ CRITICAL │ UpdateAsync returns a hardcoded failure message                 │
  ├───────────────────────────────────────────┼──────────┼─────────────────────────────────────────────────────────────────┤
  │ R-12: QuestPDF print absent               │ HIGH     │ No /print endpoint; Cry_RMIPO_JAT_NEW template not migrated     │
  ├───────────────────────────────────────────┼──────────┼─────────────────────────────────────────────────────────────────┤
  │ R-13: wosample=Y default not driving form │ HIGH     │ sampleFlg=Y captured but With-Sample entry mode not implemented │
  ├───────────────────────────────────────────┼──────────┼─────────────────────────────────────────────────────────────────┤
  │ R-14: Cotton quality parameters lost      │ MEDIUM   │ Grade, Staple, MIC etc. not in any DTO or form                  │
  ├───────────────────────────────────────────┼──────────┼─────────────────────────────────────────────────────────────────┤
  │ R-15: Approval configuration UI absent    │ MEDIUM   │ No self-service setup screen for approval chain                 │
  └───────────────────────────────────────────┴──────────┴─────────────────────────────────────────────────────────────────┘

  ---
  PRIORITY ACTION MATRIX

  ┌───────────────┬──────────────────────────────────────────────────────────────────────────┬─────────────────────────┬──────────┐
  │   Priority    │                                   Item                                   │          Type           │  Effort  │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P0 — Blocker  │ Wrap CreateAsync in single DB transaction                                │ Backend                 │ 1 day    │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P0 — Blocker  │ Add FIRST_APPFLG check to DeleteAsync                                    │ Backend                 │ 0.5 day  │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P0 — Blocker  │ Implement UpdateAsync (Modify mode)                                      │ Backend + Frontend      │ 3 days   │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P0 — Blocker  │ Replace MAX+1 contno with SEQUENCE (CD-2)                                │ Backend + DB            │ 1 day    │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P0 — Blocker  │ Fix rateKg formula: expose rm_rateunit.value API                         │ Backend + Frontend      │ 1 day    │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P1 — Critical │ Add Tab 1 (Payment Details) with all 14 fields                           │ Frontend                │ 2 days   │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P1 — Critical │ Add Arrival Type + Rate Unit fields; drive column visibility             │ Frontend                │ 1.5 days │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P1 — Critical │ Add mandatory field validation: DlyType, Acceptance, Transport, AreaCode │ Backend DTOs + Frontend │ 0.5 day  │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P1 — Critical │ UPDLOCK on Rm_PRL PR balance (CD-3)                                      │ Backend                 │ 0.5 day  │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P1 — Critical │ Implement QuestPDF print endpoint (RPT_RMI_PO)                           │ Backend                 │ 3 days   │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P1 — Critical │ Implement With-Sample entry mode (wosample=Y flow)                       │ Frontend                │ 2 days   │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P2 — High     │ Fix taxChoice to SINGLE/COMMON; implement COMMON tax code                │ Frontend + Backend      │ 1 day    │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P2 — High     │ Add PRLineDto.balanceKgs; expose in PR picker                            │ Backend + Frontend      │ 0.5 day  │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P2 — High     │ Fix BBFlag: derive from PackType first char                              │ Frontend + Backend      │ 0.5 day  │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P2 — High     │ Add Cotton Quality Parameters section                                    │ Frontend + Backend DTOs │ 1 day    │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P2 — High     │ Add missing lookups: Rate Unit, Weighment, Broker, Country, Signatory    │ Backend + Frontend      │ 2 days   │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P2 — High     │ LV-14/LV-15: delivery schedule duplicate + cumulative check              │ Backend + Frontend      │ 1 day    │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P3 — Medium   │ Add GST determination badge in UI after supplier select                  │ Frontend                │ 0.5 day  │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P3 — Medium   │ HV-2/HV-3: supplier GST state/GSTIN validation at save                   │ Backend                 │ 0.5 day  │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P3 — Medium   │ LV-2: ig_tax active code check                                           │ Backend                 │ 0.5 day  │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P3 — Medium   │ Approval Configuration Setup UI                                          │ Frontend + Backend      │ 3 days   │
  ├───────────────┼──────────────────────────────────────────────────────────────────────────┼─────────────────────────┼──────────┤
  │ P3 — Medium   │ Add Agent/Broker Code field                                              │ Frontend + Backend      │ 0.5 day  │
  └───────────────┴──────────────────────────────────────────────────────────────────────────┴─────────────────────────┴──────────┘

  ---
  Analysis covers FSD v8 (14 sections, 1,950 extracted lines) against 14 implementation files across frontend and backend layers. Total identified gaps: 72
  discrete items across 7 categories.
