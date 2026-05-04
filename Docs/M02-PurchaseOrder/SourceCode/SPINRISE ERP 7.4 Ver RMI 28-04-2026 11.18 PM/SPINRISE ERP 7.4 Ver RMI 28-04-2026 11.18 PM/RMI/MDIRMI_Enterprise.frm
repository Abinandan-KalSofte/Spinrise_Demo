VERSION 5.00
Begin VB.MDIForm MDIRMI_Enterprise 
   BackColor       =   &H00808080&
   Caption         =   "Raw Material Inventory"
   ClientHeight    =   8505
   ClientLeft      =   645
   ClientTop       =   3900
   ClientWidth     =   11145
   LinkTopic       =   "MDIForm1"
   MousePointer    =   1  'Arrow
   Picture         =   "MDIRMI_Enterprise.frx":0000
   WindowState     =   2  'Maximized
   Begin VB.Timer MDITimerChk 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   12840
      Top             =   720
   End
   Begin VB.Menu mnuMAS 
      Caption         =   "  &Masters  "
      Begin VB.Menu mnusupmas 
         Caption         =   "&1. Supplier"
      End
      Begin VB.Menu mnibroker 
         Caption         =   "&2. Agent"
      End
      Begin VB.Menu mnuwastetype 
         Caption         =   "&3. Waste"
      End
      Begin VB.Menu mnu_blend_mix 
         Caption         =   "&4. Mix Ratio"
      End
      Begin VB.Menu mnu_mas_SupVarietymap 
         Caption         =   "&5. Supplier and Variety Mapping"
      End
      Begin VB.Menu mnu_mas_Fibrerate 
         Caption         =   "&6. Fibre Rate Entry"
      End
      Begin VB.Menu mnu_fibrerateApproval 
         Caption         =   "&7. Fibre Rate Approval"
      End
      Begin VB.Menu mnu_Dicountrateentry 
         Caption         =   "&8. Fibre Discount Rate Entry"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_TransportRate 
         Caption         =   "&9. Transport Rate"
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuTran 
      Caption         =   "  &Transactions  "
      Begin VB.Menu mnusample 
         Caption         =   "&1. Sample"
      End
      Begin VB.Menu mnu_contract 
         Caption         =   "&2. Purchase Requisition && Order"
         Begin VB.Menu mnu_Pr 
            Caption         =   "&a. Purchase Requisition"
         End
         Begin VB.Menu mnuPurchaseRequlisition 
            Caption         =   "&b. Purchase Requisition Approval"
         End
         Begin VB.Menu mnu_PrForeclosure 
            Caption         =   "&c. Purchase Requisition Fore Closure"
         End
         Begin VB.Menu MnuPurchaseOrder 
            Caption         =   "&d. New Order"
         End
         Begin VB.Menu mnu_trnOrderAmendment 
            Caption         =   "&e. Order Amendment "
         End
         Begin VB.Menu mnuOrderCancel 
            Caption         =   "&f. Order Cancellation"
         End
         Begin VB.Menu mnu_Despatchdetails 
            Caption         =   "&g. Despatch Details"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuopenkeyloandetail 
            Caption         =   "&h. Open/Key Loan Details"
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnusepLine 
         Caption         =   "-"
      End
      Begin VB.Menu mniarrival 
         Caption         =   "&3. Arrival"
         Begin VB.Menu mnu_arrival 
            Caption         =   "&a. New Arrival"
            Shortcut        =   {F3}
         End
         Begin VB.Menu mnu_tranreceipt 
            Caption         =   "&b. Transfer Receipt"
         End
         Begin VB.Menu mnuBalePressDetails 
            Caption         =   "c. Bale Press Details"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuarrival 
            Caption         =   "&d. Import Arrival"
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnu_lotbalmaint 
         Caption         =   "&4. Lot Bale Details"
         Shortcut        =   {F4}
      End
      Begin VB.Menu mnu_quality 
         Caption         =   "&5. Inspection && Quality Parameters"
      End
      Begin VB.Menu mnu_qualityApp 
         Caption         =   "&6. Inspection && Quality Parameters Approval "
         Visible         =   0   'False
      End
      Begin VB.Menu mnulotsetl 
         Caption         =   "&6. Lot Allowance"
      End
      Begin VB.Menu mnu_LotCertificate 
         Caption         =   "&8. Lot Certificate Entry"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuSep 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_issueRequistion 
         Caption         =   "&7. Issue Requisition"
         Begin VB.Menu mnu_mixallocationissue 
            Caption         =   "&a. Mix wise Allocation"
         End
         Begin VB.Menu mnu_issueRequistionApp 
            Caption         =   "&b. Approval"
         End
      End
      Begin VB.Menu mnucomissue 
         Caption         =   "&8. Issues"
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnuwissue 
         Caption         =   "&9. Usable Waste Issue"
      End
      Begin VB.Menu mnu_mixingissue 
         Caption         =   "&a. Mixing Issue"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_IssueReturn 
         Caption         =   "&a. Issue Return"
      End
      Begin VB.Menu Godowntrans 
         Caption         =   "&b. Godown Transfer"
      End
      Begin VB.Menu mnuadj 
         Caption         =   "&c. Adjustments"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuPurchasebill 
         Caption         =   "&c. Purchase Bills Entry"
         Index           =   0
      End
      Begin VB.Menu mnuapproval 
         Caption         =   "&g. Purchase Bill Entry Approval"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_tradepurchaseBill 
         Caption         =   "&f. Trade Bill Entry"
         Visible         =   0   'False
      End
      Begin VB.Menu mnucottonsales 
         Caption         =   "&d. Raw Material Sales Invoice"
      End
      Begin VB.Menu mnugatepass 
         Caption         =   "&e. Gate Pass"
      End
      Begin VB.Menu d 
         Caption         =   "-"
      End
      Begin VB.Menu mnutrasStkUpdation 
         Caption         =   "&f. Stock Updation"
      End
      Begin VB.Menu mnuTransConsupUpdation 
         Caption         =   "&g. Consumption Updation"
      End
      Begin VB.Menu mnufrtentry 
         Caption         =   "&h. Freight Bill Entry"
      End
      Begin VB.Menu mnu_jobOrderMain 
         Caption         =   "&i. Job Order"
         Begin VB.Menu mnu_jobOrderEntry 
            Caption         =   "&a. Job Order Entry"
            Index           =   1
         End
         Begin VB.Menu mnu_jobOrderEntry 
            Caption         =   "&b. RM Issues"
            Index           =   2
         End
         Begin VB.Menu mnu_jobOrderEntry 
            Caption         =   "&c. Waste Despatch"
            Index           =   3
         End
         Begin VB.Menu mnu_jobOrderEntry 
            Caption         =   "&d. Waste Invoice"
            Index           =   4
         End
      End
      Begin VB.Menu mnu_FreightBillStatusEntry 
         Caption         =   "&m. Freight Bill Status Entry"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_jobworkReceipt 
         Caption         =   "&n. Jobwork Receipt"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_CreditNoteReceivable 
         Caption         =   "&o. Credit Note Receivable"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_FibreTestNote 
         Caption         =   "&p. Fibre Test Note"
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnu_reports 
      Caption         =   "  &Reports  "
      Begin VB.Menu mnudaily 
         Caption         =   "&1. Daily"
         Begin VB.Menu mnu_pendcont 
            Caption         =   "&a. Pending Order as on Date"
         End
         Begin VB.Menu mnuStkPosition 
            Caption         =   "&b. Stock Position"
            Begin VB.Menu mnu_lotstokposi 
               Caption         =   "&1. Mill Lotwise "
               Shortcut        =   {F7}
            End
            Begin VB.Menu mnuvarstkpos 
               Caption         =   "&2. Varietywise "
            End
         End
         Begin VB.Menu mnu_rmidrcrnote 
            Caption         =   "&c. Debit Note / Credit Note"
         End
         Begin VB.Menu mnuwasteinvoiceprintRep 
            Caption         =   "&d. Invoice Printing"
            Visible         =   0   'False
         End
         Begin VB.Menu mnu_rpt_mixing 
            Caption         =   "&d. Mixing Report"
            Begin VB.Menu mnu_rpt_qualitymixing 
               Caption         =   "&1. Quality Report"
            End
            Begin VB.Menu mnu_rpt_detailedmixing 
               Caption         =   "&2. Detailed Report"
            End
            Begin VB.Menu mnu_rpt_mixingchart 
               Caption         =   "&3. Mixing Chart"
            End
         End
         Begin VB.Menu mnu_delivery 
            Caption         =   "&e. Delivery Challan"
         End
         Begin VB.Menu mnustkstmtvariety 
            Caption         =   "&f. StockStatement Varietywise"
         End
      End
      Begin VB.Menu mnu_period 
         Caption         =   "&2. Periodical"
         Begin VB.Menu mnu_qualityparamtr 
            Caption         =   "&a. Sample List"
         End
         Begin VB.Menu mnucontractRegister 
            Caption         =   "&b. Purchase Order List"
            Begin VB.Menu mnuOrderRegister 
               Caption         =   "&1. Order List"
            End
            Begin VB.Menu mnu_rpt_orderamdmentlist 
               Caption         =   "&2. Order Amendment List"
            End
            Begin VB.Menu mnuOrderCancellationReport 
               Caption         =   "&3. Order Cancellation List"
            End
         End
         Begin VB.Menu mnu_pendingordersfr 
            Caption         =   "&c. Pending Orders"
            Begin VB.Menu mnu_pendinfdatewise 
               Caption         =   "&1. Datewise"
            End
            Begin VB.Menu mnu_supplierwise 
               Caption         =   "&2. Supplierwise"
            End
            Begin VB.Menu mnu_pendbrokerwise 
               Caption         =   "&3. Agentwise"
            End
         End
         Begin VB.Menu mnusep2 
            Caption         =   "-"
            Index           =   0
         End
         Begin VB.Menu mnu_arriv_reg 
            Caption         =   "&d. Arrival List"
            Begin VB.Menu mnu_arr_datewise 
               Caption         =   "&1. Datewise"
            End
            Begin VB.Menu mnuspreg 
               Caption         =   "&2. Supplierwise"
            End
            Begin VB.Menu mnuspregcarrier 
               Caption         =   "&3. Carrierwise"
            End
         End
         Begin VB.Menu mnu_receip_reg 
            Caption         =   "&e. Receipt List"
            Begin VB.Menu mnu_datewiserep 
               Caption         =   "&1. Datewise"
            End
            Begin VB.Menu mnuverietywise 
               Caption         =   "&2. Varietywise"
            End
            Begin VB.Menu mnurectpty 
               Caption         =   "&3. Supplierwise"
            End
            Begin VB.Menu mnu_brokerwiserep 
               Caption         =   "&4. Agentwise"
               Index           =   0
            End
         End
         Begin VB.Menu mnuPLTBI 
            Caption         =   "&f. Pending Lots to be Inspected"
         End
         Begin VB.Menu mnutransfer 
            Caption         =   "&g. Transfer Receipt Report"
         End
         Begin VB.Menu mnu_cottonwgt 
            Caption         =   "&h. Raw Material Weight List"
         End
         Begin VB.Menu mnuInsQtyParamater 
            Caption         =   "&i. Lot Quality Parameter List"
         End
         Begin VB.Menu mnuSep12 
            Caption         =   "-"
            Index           =   0
         End
         Begin VB.Menu mnu_purchase_daybook 
            Caption         =   "&j.  Purchase List"
            Begin VB.Menu mnu_purchase_List 
               Caption         =   "&a.  Purchase List"
               Index           =   0
            End
            Begin VB.Menu mnu_purchase_List 
               Caption         =   "&b.  Purchase Analysis Monthwise"
               Index           =   1
               Visible         =   0   'False
            End
         End
         Begin VB.Menu mnuAgentComm 
            Caption         =   "&k. Agent Commission List"
         End
         Begin VB.Menu frmFrgtdet 
            Caption         =   "&l. Freight Details List"
         End
         Begin VB.Menu mnusep14 
            Caption         =   "-"
            Index           =   1
         End
         Begin VB.Menu mnumixallocation 
            Caption         =   "&m. Mixing Allocation Report"
         End
         Begin VB.Menu mnu_issuereg 
            Caption         =   "&n. Issue List"
            Begin VB.Menu mniDatewise 
               Caption         =   "&1. Datewise"
            End
            Begin VB.Menu mnu_mixnowise 
               Caption         =   "&2. Mix No. wise"
            End
            Begin VB.Menu mnu_cntwise 
               Caption         =   "&3. Count wise"
            End
            Begin VB.Menu mnulotwise 
               Caption         =   "&4. Lotwise"
            End
            Begin VB.Menu mnu_DaywiseissueList 
               Caption         =   "&5. Daywise Issue List"
            End
            Begin VB.Menu mnu_VarietywiseissueList 
               Caption         =   "&6. Varietywise Issue List"
            End
            Begin VB.Menu mnu_MonthwiseissueList 
               Caption         =   "&7. Month wise"
               Visible         =   0   'False
            End
         End
         Begin VB.Menu mnu_Rpt_issuereturnreg 
            Caption         =   "&o. Issue Return List"
         End
         Begin VB.Menu mnuPartywise 
            Caption         =   "&p. Transfer List"
         End
         Begin VB.Menu mnusep15 
            Caption         =   "-"
            Index           =   0
         End
         Begin VB.Menu mnuRptAdjustRegister 
            Caption         =   "&q. Adjustment List"
         End
         Begin VB.Menu mnu_stock_stat 
            Caption         =   "&r. Stock Statement"
            Begin VB.Menu mnu_customStockRPT 
               Caption         =   "&1. Stock Statement"
            End
            Begin VB.Menu mnu_lotwise 
               Caption         =   "&1. Lotwise"
               Visible         =   0   'False
            End
            Begin VB.Menu mnu_varietywise 
               Caption         =   "&2. Varietywise"
               Shortcut        =   {F8}
               Visible         =   0   'False
            End
            Begin VB.Menu mnu_stktypewise 
               Caption         =   "&2. Varietywise and Typewise"
            End
            Begin VB.Menu mnu_godownwise 
               Caption         =   "&4. Godownwise"
               Visible         =   0   'False
            End
            Begin VB.Menu mnustkstation 
               Caption         =   "&5. Stationwise"
               Visible         =   0   'False
            End
         End
         Begin VB.Menu mnu_stockled 
            Caption         =   "&s. Stock Transactions Report"
            Begin VB.Menu mnustkleglot 
               Caption         =   "&1. Lotwise"
            End
            Begin VB.Menu mniitemledger 
               Caption         =   "&2. Item Ledger"
               Visible         =   0   'False
            End
            Begin VB.Menu mnucatvar 
               Caption         =   "&2. Categorywise Ledger"
            End
            Begin VB.Menu mnucatvar1 
               Caption         =   "&3. Varietywise ledger"
            End
         End
         Begin VB.Menu mnu_cottonbincard 
            Caption         =   "&t. Raw Material Bin Card"
            Shortcut        =   {F9}
         End
         Begin VB.Menu mnu_Cotton_Reconcilation 
            Caption         =   "&u. Lot wise Loss or Gain Report"
         End
         Begin VB.Menu mnumixingCost 
            Caption         =   "&v. Mixing Cost "
         End
         Begin VB.Menu mnusep17 
            Caption         =   "-"
         End
         Begin VB.Menu mnu_rejectedarr 
            Caption         =   "&w. Purchase Day Book"
            Index           =   5
         End
         Begin VB.Menu mnuPendingBillEntry 
            Caption         =   "&x. Pending Bill Entry Report"
            Index           =   3
         End
         Begin VB.Menu mnu_SaleDaybook 
            Caption         =   "&y. Raw Material Sales Day Book"
         End
         Begin VB.Menu mnu_freightbilllist 
            Caption         =   "&z. Freight Bill List"
         End
         Begin VB.Menu mmnusep15 
            Caption         =   "-"
            Index           =   1
         End
         Begin VB.Menu mnuform9 
            Caption         =   "&1. Form 9"
         End
         Begin VB.Menu mnumakrecpt 
            Caption         =   "&2. Market Committee Report"
         End
         Begin VB.Menu mnu_formiv 
            Caption         =   "&3.  Form IV"
         End
         Begin VB.Menu mnuksltotallyrmi 
            Caption         =   "&4. Kalsofte to Accounts Data Transfer"
         End
         Begin VB.Menu mnu_FibreTestresultrpt 
            Caption         =   "&5. Fibre Test Result"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuVATREPORT 
            Caption         =   "&u. VAT Report"
            Visible         =   0   'False
            Begin VB.Menu mnRMIpurchase 
               Caption         =   "&1. Raw Material Purchase"
               Index           =   1
            End
            Begin VB.Menu mnuRMISalesVATReport 
               Caption         =   "&2. Raw Material Sales"
               Index           =   2
            End
         End
         Begin VB.Menu mnu_insurancereport 
            Caption         =   "&5. Insurance Report"
         End
         Begin VB.Menu mnu_joborderList 
            Caption         =   "&6. Job Order List"
         End
         Begin VB.Menu mnuSep18 
            Caption         =   "-"
         End
      End
      Begin VB.Menu mnu_mis 
         Caption         =   "&3. M.I.S"
         Begin VB.Menu mnu_variety_purcha 
            Caption         =   "&a. Varietywise  Purchase"
            Visible         =   0   'False
         End
         Begin VB.Menu mnu_brokdate_purcha 
            Caption         =   "&a. Agentwise, Datewise Purchases"
         End
         Begin VB.Menu mnu_areaparty_purcha 
            Caption         =   "&b. Stationwise, Supplierwise Purchases"
         End
         Begin VB.Menu mnu_supass_record 
            Caption         =   "&c. Supplier Assessment Record"
         End
         Begin VB.Menu mnuStkpostvar 
            Caption         =   "&d. Stock Position Varietywise"
         End
         Begin VB.Menu mnuMatagestock 
            Caption         =   "&e. Raw Material Agewise Stock "
         End
         Begin VB.Menu MnuSuppqualityRank 
            Caption         =   "&f. Supplier Quality Ranking"
         End
         Begin VB.Menu mnuConsolidatedStockOnDate 
            Caption         =   "&g. Consolidated Stock On Date"
         End
         Begin VB.Menu mnu_mis_cottonpayment 
            Caption         =   "&h. Lot Profile"
         End
         Begin VB.Menu rpt_cottonReceiptList 
            Caption         =   "&i. Receipt List"
            Visible         =   0   'False
         End
         Begin VB.Menu rpt_cottoncost 
            Caption         =   "&j. Cotton Cost"
            Visible         =   0   'False
         End
         Begin VB.Menu mnu_rpt_postatus 
            Caption         =   "&i. PO Status"
         End
         Begin VB.Menu mnustatewise 
            Caption         =   "&j. Stock Position Statewise"
         End
         Begin VB.Menu mnu_cottonPaymentlist 
            Caption         =   "&k. Supplier Payment List"
         End
         Begin VB.Menu mnu_Rpt_SustainableRpt 
            Caption         =   "&l. Sustainable Report"
         End
         Begin VB.Menu mnu_FibrecreditnoteReport 
            Caption         =   "&m. Fibre Credit Note "
            Visible         =   0   'False
         End
         Begin VB.Menu mnu_fibreRequirement 
            Caption         =   "&n. Fibre Requirement"
            Visible         =   0   'False
         End
      End
   End
   Begin VB.Menu mnu_Queries 
      Caption         =   "  &Queries  "
      Begin VB.Menu mnu_QueriesSub 
         Caption         =   "&1. Lot Stock Position"
         Index           =   0
         Shortcut        =   {F11}
      End
      Begin VB.Menu mnu_QueriesSub 
         Caption         =   "&2. Varietywise Stock Position"
         Index           =   1
         Shortcut        =   {F12}
      End
      Begin VB.Menu mnu_QueriesSub 
         Caption         =   "&3. Quality Parameters"
         Index           =   4
         Visible         =   0   'False
      End
      Begin VB.Menu mnustkqry 
         Caption         =   "&3. Query on Stock"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuexceptionalreport 
         Caption         =   "&3. Stock Exception"
      End
      Begin VB.Menu mnulothistory 
         Caption         =   "&4. Lot History"
      End
      Begin VB.Menu mnuGenQry 
         Caption         =   "&5. Generic Query"
      End
   End
   Begin VB.Menu mnuview 
      Caption         =   " &Views"
      Begin VB.Menu mnuvarchart 
         Caption         =   "&1. Varietywise Receipt "
      End
      Begin VB.Menu mnuvarisschart 
         Caption         =   "&2. Varietywise Issue "
         Index           =   0
      End
      Begin VB.Menu mnuvarisschart 
         Caption         =   "&3. Countwise Issue"
         Index           =   1
      End
      Begin VB.Menu mnuvarmixchart 
         Caption         =   "&4. Mixing Countwise Issue"
      End
      Begin VB.Menu mnuvarstkchart 
         Caption         =   "&5. Varietywise Stock "
      End
      Begin VB.Menu mnu_receipt_chart 
         Caption         =   "&6. Supplierwise Receipt"
      End
      Begin VB.Menu mnu_dashboard 
         Caption         =   "&7. DashBoard"
      End
   End
   Begin VB.Menu mnuSetup 
      Caption         =   "  &Setup  "
      Begin VB.Menu mnu_setupGeneral 
         Caption         =   "&1. General"
         Begin VB.Menu mnu_SustainRptTypeSetup 
            Caption         =   "&a. Category Type"
         End
         Begin VB.Menu mnu_Citysetup 
            Caption         =   "&b. City"
         End
         Begin VB.Menu mnu_area 
            Caption         =   "&c. Station"
         End
         Begin VB.Menu mnu_setup_Plant 
            Caption         =   "&d. Plant"
         End
         Begin VB.Menu mnucar 
            Caption         =   "&e. Carrier"
         End
         Begin VB.Menu mnupurtype 
            Caption         =   "&f. Purchase Type"
         End
         Begin VB.Menu mnu_setup_Payterms 
            Caption         =   "&g. Payment Terms"
         End
         Begin VB.Menu mnupmode 
            Caption         =   "&h. Mode of Payment"
         End
         Begin VB.Menu mnuBank 
            Caption         =   "&i. Bank"
         End
         Begin VB.Menu mniDeliveryAddress 
            Caption         =   "&j. Delivery Address"
         End
         Begin VB.Menu mniBillAdd 
            Caption         =   "&k. Billing Address"
         End
         Begin VB.Menu mnu_BaleWeightRange 
            Caption         =   "&l. Bale Weight Range"
         End
         Begin VB.Menu mnu_SalesDelAdd 
            Caption         =   "&m. Sales Delivery Address"
         End
         Begin VB.Menu mnu_TransitpolicyDetails 
            Caption         =   "&n. Transit Policy Details"
            Visible         =   0   'False
         End
         Begin VB.Menu mnu_Setup_DiscType 
            Caption         =   "&o. Discount Type"
            Visible         =   0   'False
         End
         Begin VB.Menu mnu_setup_vessel 
            Caption         =   "&p. Vessel"
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnu_category 
         Caption         =   "&2. Category"
      End
      Begin VB.Menu MNU_SETUPHSN 
         Caption         =   "&3. HSN"
      End
      Begin VB.Menu mnu_accVariety 
         Caption         =   "&4. Accounts Variety"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_varietyGroup 
         Caption         =   "&4. Variety Group"
      End
      Begin VB.Menu mnu_variety 
         Caption         =   "&5. Variety"
         Begin VB.Menu mnu_cottvariety 
            Caption         =   "&a. Cotton Variety"
         End
         Begin VB.Menu mnu_varietySyn 
            Caption         =   "&b. Synthetic Variety"
         End
      End
      Begin VB.Menu mnudeltype 
         Caption         =   "&6. Delivery Type"
      End
      Begin VB.Menu mnuweightcontrol 
         Caption         =   "&7. Weighment Controller"
      End
      Begin VB.Menu mnirateunit 
         Caption         =   "&8. Rate Unit"
      End
      Begin VB.Menu mnuGodown 
         Caption         =   "&9. Godown"
      End
      Begin VB.Menu mnuFibreNorms 
         Caption         =   "&a. Fibre Norms"
      End
      Begin VB.Menu mnuQualityPara 
         Caption         =   "&b. Quality Parameter"
      End
      Begin VB.Menu mnuissuetype 
         Caption         =   "&c. Issue type"
      End
      Begin VB.Menu mnuoiltype 
         Caption         =   "&e. Oil Type"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_material 
         Caption         =   "&f. Material"
         Visible         =   0   'False
      End
      Begin VB.Menu MnuMixingExtimation 
         Caption         =   "&g. Mixing Estimation"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_mixgroup 
         Caption         =   "&d. Mixing Group"
      End
      Begin VB.Menu mnu_count 
         Caption         =   "&e. Mixing Count"
      End
      Begin VB.Menu mnutax 
         Caption         =   "&f. GST"
      End
      Begin VB.Menu mnuSeasonSetup 
         Caption         =   "&g. Season"
      End
      Begin VB.Menu mnuSetupGinner 
         Caption         =   "&h. Ginner"
      End
      Begin VB.Menu mnuSPOT 
         Caption         =   "&i. SPOT Passing Person"
      End
      Begin VB.Menu mnu_Reasonfordel 
         Caption         =   "&j. TXN Delete Reason"
      End
      Begin VB.Menu mnuuserlevel 
         Caption         =   "&o. User Level"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuconsperday 
         Caption         =   "&p. Consumption Per Day"
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuHKEEP 
      Caption         =   "  &House keeping  "
      Begin VB.Menu mnuParam 
         Caption         =   "&1. Parameter "
      End
      Begin VB.Menu mnuParamFA 
         Caption         =   "&2. Parameter FA - Related Details"
      End
      Begin VB.Menu mnuopenstk 
         Caption         =   "&3. Opening Stock"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuopen 
         Caption         =   "&3. Raw Material Opening Stock Entry"
      End
      Begin VB.Menu munwastestock 
         Caption         =   "&4. Waste Opening Stock Entry"
         Visible         =   0   'False
      End
      Begin VB.Menu mnu_opstocksustainable 
         Caption         =   "&4. Opening Stock- Sustainable Report"
         Visible         =   0   'False
      End
      Begin VB.Menu mnulotbaleweight 
         Caption         =   "&4. Lot-Bale Weightment Data Transfer"
      End
      Begin VB.Menu mnulotissue 
         Caption         =   "&5. Bale-Issue Weighment Data Transfer "
      End
      Begin VB.Menu mnu_FreightBillGL 
         Caption         =   "&6. Freight GL Mapping"
      End
      Begin VB.Menu mnu_JobworkopEntry 
         Caption         =   "&8. Jobwork Opening Stock Entry"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuyearhk 
         Caption         =   "&7. Year End Process"
         Begin VB.Menu mnuYearend 
            Caption         =   "&a. Accounting Year"
            Index           =   0
         End
         Begin VB.Menu mnuYearend 
            Caption         =   "&b. Stock Updation"
            Index           =   1
         End
      End
      Begin VB.Menu processdate 
         Caption         =   "&8. Processing Date"
         Shortcut        =   {F2}
      End
      Begin VB.Menu mnu_HSchangePassword 
         Caption         =   "&9. Change Password"
      End
      Begin VB.Menu b1 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_help 
         Caption         =   "&a. Help"
      End
   End
   Begin VB.Menu mnuwin 
      Caption         =   "  &Windows"
      WindowList      =   -1  'True
   End
   Begin VB.Menu Exmnu 
      Caption         =   "  &Exit"
      Begin VB.Menu mnu_log_off 
         Caption         =   "1. &Log off"
      End
      Begin VB.Menu mnu_exit 
         Caption         =   "2. &Exit"
      End
   End
End
Attribute VB_Name = "MDIRMI_Enterprise"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim cnt, I, ss As Integer
Dim rs1 As New Recordset
Dim MnuName As String

Private Sub arrreg_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As repform
    Screen.MousePointer = 11
    Repindex = 1001
    repform.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub frmFrgtdet_Click()
    intervalMinutes = -1
    Screen.MousePointer = 11
    Repindex = 3330
    frmReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub Godowntrans_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As New godtrans
    Screen.MousePointer = 11
    GSNO = SlNofn("Godowntrans")
    f.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub MDIForm_Activate()
        intervalMinutes = -1
        Me.Caption = RTrim(Module) + Space(4) + divabbr + " " + Right(yfdate, 4) + "-" + Right(yldate, 4)
        intervalMinutes = -1
End Sub

Private Sub MDIForm_Load()

On Error GoTo MDIForm_Load_Error
intervalMinutes = -1
Me.Caption = RTrim(Me.Caption) & " " & divabbr + Space(4) + Right(yfdate, 4) + "-" + Right(yldate, 4)
Me.Height = 7215
Me.Left = -45
Me.Width = 9705
Me.Top = 0
Me.WindowState = Normal
Set DB = New Connection
DB.Open connectstring
Call CustomisedReport
Dim rsnew As Recordset

'Call RMIGlobalFunction.PPCUserLevel(RMImain, ModuleNo)
intervalMinutes = -1
Call PPCUserLevel

If UCase(CustID) = "SKS" Then
    mnu_jobOrderMain.Visible = True
    mnu_joborderList.Visible = True
Else
    mnu_jobOrderMain.Visible = False
     mnu_joborderList.Visible = False
End If

intervalMinutes = -1
  ' Added on 29-08-19 by mariyaiya
'     Set rsnew = New Recordset
'            rsnew.Open " select isnull(purbillapproval,'N') purbillapproval  from rm_param ", DB, adOpenStatic, adLockReadOnly
'
'            If rsnew.RecordCount > 0 Then
'                If rsnew(0) = "Y" Then
'                    mnuapproval.Caption = "g. Purchase Bill Approval"
'                    mnucottonsales.Caption = "f. Raw Material Sales Invoice"
'                   ' mnuwissue.Caption = "g.Usable Waste ISSUE"
'                    mnutrasStkUpdation.Caption = "h.stock Updation"
'                    mnuTransConsupUpdation.Caption = "i.Consumption Updation"
'                    mnugatepass.Caption = "J.Gate Pass"
'                    mnuopenkeyloandetail.Caption = "k.Open/Key Loan Details"
'                    mnu_LotCertificate.Caption = "l.Lot Certificate Entry"
'                Else
'                    mnuapproval.Visible = False
'                    mnucottonsales.Caption = "e. Raw Material Sales Invoice"
'                   ' mnuwissue.Caption = "f.Usable Waste ISSUE"
'                    mnutrasStkUpdation.Caption = "g.stock Updation"
'                    mnuTransConsupUpdation.Caption = "h.Consumption Updation"
'                    mnugatepass.Caption = "i.Gate Pass"
'                    mnuopenkeyloandetail.Caption = "j.Open/Key Loan Details"
'                    mnu_LotCertificate.Caption = "k.Lot Certificate Entry"
'                End If
'            End If

intervalMinutes = -1
mnu_qualityApp.Enabled = False
Dim rs5 As New Recordset
    Set rs5 = New Recordset
    rs5.Open "select isnull(iqa,'Y') as iqa from rm_param ", DB, adOpenStatic, adLockReadOnly
    If Not rs5.EOF Then
        If rs5!iqa = "Y" Then
           mnu_qualityApp.Enabled = True
         Else
          ' MsgBox "Contact Administrator! Your Setting Has not Applicatioble this Form"
        End If
    End If
intervalMinutes = -1

If UCase(CustID) <> "PALLAVA" And UCase(CustID) <> "SHRIGIRI" Then
    mnuconsperday.Visible = False
End If

If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Then
mnuarrival.Visible = True
End If
 If Openkeyloanflg = "Y" Then
 mnuopenkeyloandetail.Visible = True
 mnuopenkeyloandetail.Enabled = True
 Else
 mnuopenkeyloandetail.Visible = False
 mnuopenkeyloandetail.Enabled = False
 End If
 
 If UCase(CustID) = "SKS" Then
    mnuksltotallyrmi.Visible = False
    mnu_Rpt_SustainableRpt.Visible = False
 End If
 
     intervalMinutes = -1
    Dim rsparam As Recordset
    Set rsparam = New Recordset
    If UCase(CustID) <> "JTCL" Then
     rsparam.Open "select  isnull(IdleMinutes,900) IdleMinutes ,isnull(IdleTimerFlg ,0) IdleTimerFlg from pp_passwd where divcode='" & Divcode & "' and module='" & ModuleNo & "' and user_id='" & usrid & "' ", DB
    
       If Not rsparam.EOF Then
            If rsparam(1) = 1 Then
                Autologoff = "Y"
                IdealMinutes = rsparam(0)
                MDITimerChk.Enabled = True
                MDITimerChk.Interval = CLng(1000) * 60
            Else
                Autologoff = "N"
                MDITimerChk.Enabled = True
                MDITimerChk.Interval = CLng(1000) * 60
                MDITimerChk.Enabled = False
            End If
       End If
    End If
  
If UCase(CustID) <> "ASM" Then
 mnu_mixallocationissue.Caption = "a. Issue Requisition"
 Else
 mnu_issueRequistionApp.Visible = False
End If


 If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then

    mnuConsolidatedStockOnDate.Visible = True
    Else
    mnuConsolidatedStockOnDate.Visible = False
    End If
intervalMinutes = -1
Call assigntc
intervalMinutes = -1
Dim Rs As Recordset
  Dim I As Integer
  Dim menu_name As String
  
'  frmmdiname = Me
'  Set Rs = New Recordset
'  Rs.Open "SELECT MENU_NAME FROM USERLEVEL WHERE MODULE = " & ModuleNo & " AND DIVCODE = '" & Divcode & "' AND ULEVEL = " & ulevel & " AND (GROUP_FLG = 'N' OR FORM_FLG = 'N')", DB, adOpenStatic, adLockOptimistic
'  If Rs.RecordCount = 0 Then Exit Sub
'    For i = 0 To Me.Controls.Count - 1
'        If IsIndex(Me.Controls(i)) Then
'            menu_name = Me.Controls(i).Name & "_" & Me.Controls(i).Index
'        Else
'            menu_name = Me.Controls(i).Name
'        End If
'    Set Rs = New Recordset
'    Rs.Open "SELECT MENU_NAME FROM USERLEVEL WHERE menu_name = '" & menu_name & "' and MODULE = " & ModuleNo & " AND DIVCODE = '" & Divcode & "' AND ULEVEL = " & ulevel & " AND (GROUP_FLG = 'N' OR FORM_FLG = 'N')", DB, adOpenStatic, adLockOptimistic
'    If Rs.RecordCount > 0 Then
'        Me.Controls(i).Enabled = False
'    Else
'        Me.Controls(i).Enabled = True
'    End If
'    Next
    Set Rs = New Recordset
    Rs.Open "SELECT isnull(PRBased,'Y') PRBASED FROM rm_param ", DB, adOpenStatic, adLockOptimistic
    If Not Rs.EOF Then
      If Rs("PRBASED") = "N" Then
          mnu_Pr.Enabled = False
      End If
    End If
'

Call dis
  intervalMinutes = -1
  
If UCase(Trim(CustID)) = "MAHADEV" Then
    mnu_mas_SupVarietymap.Visible = False
    mnu_mas_Fibrerate.Visible = False
    mnu_fibrerateApproval.Visible = False
    mnu_Dicountrateentry.Visible = False
    mnu_TransportRate.Visible = False
    
    mnuBalePressDetails.Visible = False
    mnu_LotCertificate.Visible = False
    mnucottonsales.Visible = False
    mnugatepass.Visible = False
    mnu_FreightBillStatusEntry.Visible = False
    mnu_jobworkReceipt.Visible = False
    mnu_CreditNoteReceivable.Visible = False
    mnu_FibreTestNote.Visible = False
    mnu_fibreRequirement.Visible = False
    
    mnu_delivery.Visible = False
    mnu_SaleDaybook.Visible = False
    mnuform9.Visible = False
    mnuksltotallyrmi.Visible = False
    mnu_FibreTestresultrpt.Visible = False
    mnu_FibrecreditnoteReport.Visible = False
    
    mnu_Setup_DiscType.Visible = False
    mnu_setup_vessel.Visible = False
    mnu_TransitpolicyDetails.Visible = False
    mnu_SalesDelAdd.Visible = False
    mnu_accVariety.Visible = False
    mnu_varietyGroup.Visible = False
    MnuMixingExtimation.Visible = False
    mnuuserlevel.Visible = False
    mnuconsperday.Visible = False
    
    mnu_JobworkopEntry.Visible = False
    
    mnu_issueRequistion.Caption = "8. Issue Requisition"
    mnucomissue.Caption = "9. Issues"
    mnuwissue.Caption = "a. Usable Waster Issue"
    mnu_IssueReturn.Caption = "b. Issue Return"
    Godowntrans.Caption = "c. Godown Transfer"
    mnuadj.Caption = "d. Adjustments"
    mnuPurchasebill(0).Caption = "e. Purchase Bill Entry"
    mnuapproval.Caption = "f. Purchase Bill Entry Approval"
    mnutrasStkUpdation.Caption = "g. Stock Updation"
    mnuTransConsupUpdation.Caption = "h. Consumption Updation"
    mnufrtentry.Caption = "i. Freight Bill Entry"
        
    mnu_freightbilllist.Caption = "y. Freight Bill List"
    mnumakrecpt.Caption = "z. Market Committee Report"
    mnu_formiv.Caption = "1. Form IV"
    
    mnu_mis_cottonpayment.Caption = "h. Lot Profile"
    mnu_rpt_postatus.Caption = "i. PO Status"
    mnustatewise.Caption = "j. Stock Position Statewise"
    mnu_Rpt_SustainableRpt.Caption = "k. Sustainable Report"
    mnu_cottonPaymentlist.Caption = "l. Cotton Payment List"
    
    mnu_variety.Caption = "4. Variety"
    mnudeltype.Caption = "5. Delivery Type"
    mnuweightcontrol.Caption = "6. Weighment Controller"
    mnirateunit.Caption = "7. Rate unit"
    mnuGodown.Caption = "8. Godown"
    mnuFibreNorms.Caption = "9. Fibre Norms"
    mnuQualityPara.Caption = "a. Quality Parameter"
    mnuissuetype.Caption = "b. Issue Type"
    mnuoiltype.Caption = "c. Oil Type"
    mnu_material.Caption = "d. Material"
    mnu_mixgroup.Caption = "e. Mixing Group"
    mnu_count.Caption = "f. Mixing Count"
    mnutax.Caption = "g. GST"
    mnuSeasonSetup.Caption = "h. Season"
    mnuSetupGinner.Caption = "i. Ginner"
    mnuSPOT.Caption = "j. SPOT Passing Person"
    mnu_Reasonfordel.Caption = "k. TXN Delete Reason"
    
    mnu_BaleWeightRange.Caption = "l. Bale Weight Range"
    
    mnuyearhk.Caption = "8. Year End Process"
    processdate.Caption = "9. Processing Date"
    mnu_HSchangePassword.Caption = "a. Change Password"
    mnu_help.Caption = "b. Help"
ElseIf UCase(Trim(CustID)) = "SLSPL" Then
    'master
    mnu_mas_SupVarietymap.Visible = False
    mnu_mas_Fibrerate.Visible = False
    mnu_fibrerateApproval.Visible = False
    mnu_Dicountrateentry.Visible = False
    mnu_TransportRate.Visible = False
    'transaction
    mnu_Pr.Visible = False
    mnuPurchaseRequlisition.Visible = False
    mnu_PrForeclosure.Visible = False
    MnuPurchaseOrder.Caption = "a. New Order"
    mnu_trnOrderAmendment.Caption = "b. Order Amendment "
    mnuOrderCancel.Caption = "c. Order Cancellation"
    mnu_Despatchdetails.Visible = False
    mnuopenkeyloandetail.Visible = False
    mnu_tranreceipt.Visible = False
    mnuBalePressDetails.Visible = False
    mnuarrival.Visible = False
    mnu_qualityApp.Visible = False
    mnulotsetl.Visible = False
    mnu_LotCertificate.Visible = False
    mnu_issueRequistion.Visible = False
    mnucomissue.Caption = "6. Issues"
    mnuwissue.Caption = "7. Usable Waste Issue"
    mnu_mixingissue.Visible = False
    mnu_IssueReturn.Caption = "8. Issue Return"
    Godowntrans.Visible = False
    mnuadj.Visible = False
    mnuPurchasebill(0).Caption = "9. Purchase Bills Entry"
    mnuapproval.Visible = False
    mnu_tradepurchaseBill.Visible = False
    mnucottonsales.Visible = False
    mnugatepass.Visible = False
    mnutrasStkUpdation.Visible = False
    mnuTransConsupUpdation.Visible = False
    mnufrtentry.Visible = False
    mnu_jobOrderMain.Visible = False
    mnu_FreightBillStatusEntry.Visible = False
    mnu_jobworkReceipt.Visible = False
    mnu_CreditNoteReceivable.Visible = False
    mnu_FibreTestNote.Visible = False
    'Reports
    mnu_rmidrcrnote.Visible = False
    mnuwasteinvoiceprintRep.Visible = False
    mnu_rpt_mixing.Caption = "c. Mixing Report"
    mnu_delivery.Visible = False
    mnustkstmtvariety.Visible = False
    mnuverietywise.Visible = False
    mnurectpty.Caption = "2. Supplierwise"
    mnu_brokerwiserep(0).Caption = "3. Agentwise"
    'mnuPLTBI.Caption = "&f. Pending Lots to be Inspected"
    mnutransfer.Visible = False
    mnu_cottonwgt.Caption = "g. Raw Material Weight List"
    mnuInsQtyParamater.Caption = "h. Lot Quality Parameter List"
    mnu_purchase_daybook.Caption = "i.  Purchase List"
    mnuAgentComm.Visible = False
    frmFrgtdet.Visible = False
    mnumixallocation.Visible = False
    mnu_issuereg.Caption = "j. Issue List"
    mnu_Rpt_issuereturnreg.Caption = "k. Issue Return List"
    mnuPartywise.Visible = False
    mnuRptAdjustRegister.Visible = False
    mnu_stock_stat.Caption = "l. Stock Statement"
    mnu_lotwise.Visible = False
    mnu_varietywise.Visible = False
    mnu_godownwise.Visible = False
    mnustkstation.Visible = False
    mnu_stockled.Caption = "m. Stock Ledger"
    mniitemledger.Visible = False
    mnu_cottonbincard.Caption = "n. Raw Material Bin Card"
    mnu_Cotton_Reconcilation.Caption = "o. Lot wise Loss or Gain Report"
    mnumixingCost.Caption = "p. Mixing Cost "
    mnumakrecpt.Caption = "q. Market Committee Report"
    mnu_formiv.Caption = "r.  Form IV"
    mnu_rejectedarr(5).Visible = False
    mnuPendingBillEntry(3).Visible = False
    mnu_SaleDaybook.Visible = False
    mnu_freightbilllist.Visible = False
    mnuform9.Visible = False
    mnuksltotallyrmi.Visible = False
    mnu_FibreTestresultrpt.Visible = False
    mnuVATREPORT.Visible = False
    mnu_insurancereport.Visible = False
    mnu_joborderList.Visible = False
    
    'MIS
    mnu_variety_purcha.Visible = True
    mnu_variety_purcha.Caption = "a. Varietywise  Purchase"
    mnu_brokdate_purcha.Caption = "b. Agentwise, Datewise Purchases"
    mnu_areaparty_purcha.Visible = False
    mnuConsolidatedStockOnDate.Visible = False
    mnu_mis_cottonpayment.Caption = "g. Lot Profile"
    rpt_cottonReceiptList.Visible = False
    rpt_cottoncost.Visible = False
    mnu_rpt_postatus.Visible = False
    mnustatewise.Visible = False
    mnu_cottonPaymentlist.Visible = False
    mnu_Rpt_SustainableRpt.Visible = False
    mnu_FibrecreditnoteReport.Visible = False
    mnu_fibreRequirement.Visible = False
    'Queries
    'views
     mnuview.Enabled = False
    mnuvarchart.Caption = "(No items)"
    mnuvarchart.Enabled = False
    'mnuvarchart.Visible = False
    'mnuvarchart.Visible = False
    mnuvarisschart(0).Visible = False
    mnuvarisschart(1).Visible = False
    mnuvarmixchart.Visible = False
    mnuvarstkchart.Visible = False
    mnu_receipt_chart.Visible = False
    mnu_dashboard.Visible = False
    'Setup
    mnu_SustainRptTypeSetup.Visible = False
    mnu_Citysetup.Caption = "a. City"
    mnu_area.Caption = "b. Station"
    mnu_setup_Plant.Caption = "c. Plant"
    mnucar.Caption = "d. Carrier"
    mnupurtype.Caption = "e. Purchase Type"
    mnu_setup_Payterms.Caption = "f. Payment Terms"
    mnupmode.Caption = "g. Mode of Payment"
    mnuBank.Caption = "h. Bank"
    mniDeliveryAddress.Caption = "i. Delivery Address"
    mniBillAdd.Caption = "j. Billing Address"
    mnu_BaleWeightRange.Caption = "k. Bale Weight Range"
    mnu_SalesDelAdd.Visible = False
    mnu_TransitpolicyDetails.Visible = False
    mnu_Setup_DiscType.Visible = False
    mnu_setup_vessel.Visible = False
    mnu_accVariety.Visible = False
    mnu_varietyGroup.Visible = False
    mnu_variety.Caption = "4. Variety"
    mnudeltype.Caption = "5. Delivery Type"
    mnuweightcontrol.Caption = "6. Weighment Controller"
    mnirateunit.Caption = "7. Rate Unit"
    mnuGodown.Caption = "8. Godown"
    mnuFibreNorms.Caption = "9. Fibre Norms"
    mnuQualityPara.Caption = "a. Quality Parameter"
    mnuissuetype.Caption = "b. Issue type"
    mnuoiltype.Visible = False
    mnu_material.Visible = False
    MnuMixingExtimation.Visible = False
    mnu_mixgroup.Caption = "c. Mixing Group"
    mnu_count.Caption = "d. Mixing Count"
    mnutax.Caption = "e. GST"
    mnuSeasonSetup.Caption = "f. Season"
    mnuSetupGinner.Caption = "g. Ginner"
    mnuSPOT.Caption = "h. SPOT Passing Person"
    mnu_Reasonfordel.Caption = "i. TXN Delete Reason"
    mnuuserlevel.Visible = False
    mnuconsperday.Visible = False
    'House keeping '
    mnuopenstk.Visible = False
    munwastestock.Visible = False
    mnu_opstocksustainable.Visible = False
    mnulotbaleweight.Visible = False
    mnulotissue.Visible = False
    mnu_FreightBillGL.Visible = False
    mnu_JobworkopEntry.Visible = False
    mnuyearhk.Caption = "4. Year End Process"
    processdate.Caption = "5. Processing Date"
    mnu_HSchangePassword.Caption = "6. Change Password"
    mnu_help.Caption = "7. Help"
    
    
    
End If

'End If
    
'sdfsdf
' MsgBox Me.Controls.Count

'Call RMIGlobalFunction.dis(RMImain, ModuleNo, Divcode, ulevel)

Exit Sub

MDIForm_Load_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MDIForm_Load of Form RMImain"
End Sub

Private Sub mnBannariConRpt_Click(Index As Integer)
intervalMinutes = -1

End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
intervalMinutes = -1
If SCREENRES_CHANGE = "Y" Then
    Call ChangeRes(Old_PixelsWidth, Old_PixelsHeight)
End If
Call DelSysUser
intervalMinutes = -1
End Sub

'Private Sub mni_wastemixstk_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'Repindex = 1011
'RepMxiningStock.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

Private Sub mniBillAdd_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnibilladd")
BillAddress.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnibroker_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnibroker")
BrokerMaster.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub
'
'Private Sub mnicatwise_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'Repindex = 100
'GSNO = SlNofn("mnicatwise")
'Dim f As New datewisecottonreceiptregister
'f.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

Private Sub mniDatewise_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 19111
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mniDeliveryAddress_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mniDeliveryAddress")
Deladd.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mniissreg_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
GSNO = SlNofn("mniissreg")
Repindex = 19
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mniitemledger_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 105
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnilotwiseissuereg_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
Repindex = 3435
GSNO = SlNofn("mnilotwiseissuereg")
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

'Private Sub mnimixingissue_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'GSNO = SlNofn("mnimixingissue")
'frmMixingIssue.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

'Private Sub mnimixingrep_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'GSNO = SlNofn("mnimixingrep")
'mixindex = 100
'MixingRep.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

'Private Sub mnimixingstock_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'Repindex = 1010
'RepMxiningStock.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub
'Private Sub mniMixRegNew_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'mixindex = 999
'MixingRep.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

Private Sub mnirateunit_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnirateunit")
FrmRateunit.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnistkrcd_cnsmp_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform1
GSNO = SlNofn("mnistkrcd_cnsmp")
Screen.MousePointer = 11
Repindex = 1432
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnRMIpurchase_Click(Index As Integer)
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 1190
    repform.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_accVariety_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_accVariety")
Frm_AccVariety.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_area_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_area")
FrmArea.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_areaparty_purcha_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As rmireports
Screen.MousePointer = 11
Repindex = 73
rmireports.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub


Private Sub mnu_arrival_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_arrival")
FrmArrival.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_BaleWeightRange_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_BaleWeightRange")
Frm_BaleWgt.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_blend_mix_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_blend_mix")
frmBlendMas.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_brokdate_purcha_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As rmireports
Screen.MousePointer = 11
Repindex = 71
rmireports.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub


Private Sub mnu_brokerwiserep_Click(Index As Integer)
intervalMinutes = -1
Call CheckNoofUsers
If Index = 0 Then
    Screen.MousePointer = 11
    Repindex = 0
    Dim f As New cottonbrokerwise
    f.Show
    Screen.MousePointer = 0
ElseIf Index = 1 Then
    Screen.MousePointer = 11
    Repindex = 1190
    repform.Show
    Screen.MousePointer = 0
End If
intervalMinutes = -1
End Sub

Private Sub mnu_category_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
   Screen.MousePointer = 11
   GSNO = SlNofn("mnu_category")
   FrmCategory.Show
   Screen.MousePointer = 0
   intervalMinutes = -1
End Sub

Private Sub mnu_Citysetup_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    GSNO = SlNofn("mnu_Citysetup")
    Screen.MousePointer = 11
    Frm_City.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_cntwise_Click()
intervalMinutes = -1
Call CheckNoofUsers
Call CheckNoofUsers
Dim f As repform
Screen.MousePointer = 11
Repindex = 13101
repform.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_Cotton_Reconcilation_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 155555
    AdjustmentReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1

'intervalMinutes = -1
'Call CheckNoofUsers
'On Error GoTo mnu_Cotton_Reconcilation_Click_Error
'Screen.MousePointer = 11
'Call Cotton_Recon.Cotton_Reconcil
'intervalMinutes = -1
'Screen.MousePointer = 0
'Exit Sub
'mnu_Cotton_Reconcilation_Click_Error:
'MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnu_Cotton_Reconcilation_Click of Form RMImain"
'Exit Sub
End Sub

Private Sub mnu_cottonbincard_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    frmRepCottonBinCard.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

'Private Sub mnu_cottonplan_Click()
'    intervalMinutes = -1
'    Call CheckNoofUsers
'    GSNO = SlNofn("mnu_cottonplan")
'    Screen.MousePointer = 11
'    frm_cottonreqplan.Show
'    Screen.MousePointer = 0
'    intervalMinutes = -1
'End Sub


Private Sub mnu_cottonreceivednote_Click(Index As Integer)
intervalMinutes = -1
Call CheckNoofUsers
On Error GoTo mnu_cottonreceivednote_Click_Error

GSNO = SlNofn("mnu_cottonreceivednote" & "_" & Index)
Select Case Index
Case 0
    Dim f As New repform45
    Repindex = 27
    f.Show
    Screen.MousePointer = 0
Case 1
    Repindex = 22228
    repform1.Show
    Screen.MousePointer = 0
End Select
intervalMinutes = -1

Exit Sub
mnu_cottonreceivednote_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnu_cottonreceivednote_Click of Form RMImain"
End Sub

Private Sub mnu_cottonPaymentlist_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3
    If UCase(CustID) = "COTTON" And UCase(divabbr) = "SCMTS" Then
        frmCottonPay.Show
    Else
        Frm_Rpt_List.Show
    End If
    
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_cottonwgt_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform1
Set f = New repform1
Screen.MousePointer = 11
Repindex = 66
 f.DataCombo4.Visible = False
f.Label6.Visible = False
f.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_cottvariety_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    sCatType = "C"
    GSNO = SlNofn("mnu_cottvariety")
    FrmVariety.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_count_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_count")
FrmCount.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_countwi_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As rmireports
Screen.MousePointer = 11
Repindex = 66
rmireports.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_CreditNoteReceivable_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_CreditNoteReceivable")
frm_CreditNoteReceivable.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_customStockRPT_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 1
    Frm_Rpt_StockStatment.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_dashboard_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11

    Dashboard1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_datewiserep_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 1190
    ReceiptRegister.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_DaywiseissueList_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 2
    Frm_Rpt_List.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_delivery_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_delivery")
    frmDeliveryChallan.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_Despatchdetails_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_Despatchdetails")
    frm_DespatchDetail.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub
Private Sub mnu_Dicountrateentry_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_Dicountrateentry")
    Frm_FibreDiscRate.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_exit_Click()

    intervalMinutes = -1
    If SCREENRES_CHANGE = "Y" Then
        Call ChangeRes(Old_PixelsWidth, Old_PixelsHeight)
    End If
    Call DelSysUser
    End
    intervalMinutes = -1
End Sub

Private Sub mnu_FibrecreditnoteReport_Click()
Repindex = 1
Dim frmts As New frm_ReportwithFilter
frmts.Show
'frm_ReportwithFilter.Show
End Sub

Private Sub mnu_fibrerateApproval_Click()

    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_fibrerateApproval")
    FrmFibreRateApproval.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_fibreRequirement_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_fibreRequirement")
    Fibre_Requirement.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_FibreTestNote_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_FibreTestNote")
    frm_FibreTestResult.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_FibreTestresultrpt_Click()
Repindex = 2
Dim frmts As New frm_ReportwithFilter
frmts.Show
End Sub

Private Sub mnu_formiv_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New repform
Screen.MousePointer = 11
Repindex = 17
repform.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_FreightBillGL_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_FreightBillGL")
    Frm_FreightMapping.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_freightbilllist_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 1
    Frm_Rpt_List.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_FreightBillStatusEntry_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_FreightBillStatusEntry")
'FrmTransaction.Show
Dim frmm As New Frm_FreightBillStatusUpdate  'frm_FreightBill
'frmm.FreightBillEntryType = "S"
frmm.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_godownwise_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 32
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_help_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim fso As New FileSystemObject

    If fso.FileExists(Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "User Manuals\RMI.pdf") = True Then
        Dim she As New Shell
            she.Open (Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "User Manuals\RMI.pdf")
    Else
        MsgBox "Invalid File " & Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "User Manuals\RMI.pdf", vbInformation, head
    End If
intervalMinutes = -1
End Sub

Private Sub mnu_HSchangePassword_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_HSchangePassword")

FrmChangePassword.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_insurancereport_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New repform
Screen.MousePointer = 11
Repindex = 1117
repform.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub


Private Sub mnu_issueRequistionApp_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_issueRequistionApp")
Repindex = 222
If UCase(CustID) = "SKS" Then
    FrmMixIssueAllocation.Show
Else
    FrmMixingChart.Show
End If
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_IssueReturn_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_IssueReturn")
    frm_issuereturn.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_jobOrderEntry_Click(Index As Integer)
intervalMinutes = -1
Call CheckNoofUsers
GSNO = SlNofn("mnu_jobOrderEntry" & "_" & Index)
    Select Case Index
        Case 1
            Screen.MousePointer = 11
            Frm_RMJobOrderEntry.Show
            Screen.MousePointer = 0
        Case 2
            intervalMinutes = -1

            Screen.MousePointer = 11
            GSNO = SlNofn("mnucomissue")
             Dim frmiss As New FrmissueKgs
            frmiss.RMISTXNINDEX = 2
            frmiss.Show
            Screen.MousePointer = 0
            intervalMinutes = -1
        Case 3
            Screen.MousePointer = 11
            Form1.Show
            Screen.MousePointer = 0
        Case 4
            Screen.MousePointer = 11
            Frm_WasteInvoice.Show
            Screen.MousePointer = 0
    End Select
    intervalMinutes = -1

End Sub

Private Sub mnu_joborderList_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 111
    Frm_Rpt_List.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_JobworkopEntry_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_JobworkopEntry")
    Frm_JobworkOP.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_jobworkReceipt_Click()
   intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_jobworkReceipt")
    Frm_JobworkReceipt.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_log_off_Click()
    intervalMinutes = -1
    Call DelSysUser
    If SCREENRES_CHANGE = "Y" Then
        Call ChangeRes(Old_PixelsWidth, Old_PixelsHeight)
    End If
    Unload Me
    passthru.Show
    intervalMinutes = -1
End Sub

Private Sub mnu_lotbalmaint_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_lotbalmaint")
    Frmlotbale.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_LotCertificate_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As New Frm_LotCertificate
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_LotCertificate")
    f.Show
    Screen.MousePointer = 0
    
    intervalMinutes = -1
End Sub

Private Sub mnu_lotstokposi_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As New repform1
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_lotstokposi")
    Repindex = 2
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_lotweight_diff_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
GSNO = SlNofn("mnu_lotweight_diff")
Repindex = 79
On Error Resume Next
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_lotwise_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 28
On Error Resume Next
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub



Private Sub mnu_mas_Fibrerate_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_mas_Fibrerate")
Frm_FibreRateMaster.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_mas_SupVarietymap_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_mas_SupVarietymap")
Frm_SupplierVarietyMap.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_material_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("Mnu_material")
frmMaterial.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_mis_cottonpayment_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_mis_cottonpayment")
frmCottonPayment.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_mixallocationissue_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_mixallocationissue")
'RMIissueMixwise.Show
Repindex = 1240000
If UCase(CustID) = "SKS" Then
    FrmMixIssueAllocation.Show
Else
    FrmMixingChart.Show
End If
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_mixgroup_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_mixgroup")
FrmMixgroup.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

'Private Sub mnu_mixingissue_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Dim f As New RMIMixingissues
'Screen.MousePointer = 11
'GSNO = SlNofn("mnu_mixingissue")
'f.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

Private Sub mnu_mixnowise_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As rmireports
Screen.MousePointer = 11
Repindex = 70
rmireports.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub


Private Sub mnu_orderconfirm_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Repindex = 327
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_MonthwiseissueList_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    frm_MonthwiseRMIssueList.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_opstocksustainable_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
GSNO = SlNofn("mnu_opstocksustainable")
frm_CatWiseOpeningStock.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_pendbrokerwise_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New pending_brokerwise
Repindex = 1236
Screen.MousePointer = 11
pending_brokerwise.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_pendcont_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New repform1
'Set f = New repform1
Screen.MousePointer = 11
'GSNO = SlNofn("mnu_pendcont")
Repindex = 3
f.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_pendinfdatewise_Click()
intervalMinutes = -1
Call CheckNoofUsers

Dim f As New Pendingordersdatewise
Screen.MousePointer = 11
Repindex = 1234
Pendingordersdatewise.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_pr_Click()
intervalMinutes = -1
Call CheckNoofUsers
Call openconnection
Screen.MousePointer = 11
Set Rs = New Recordset
Rs.Open "SELECT isnull(PRBased,'Y') PRBASED FROM rm_param ", DB, adOpenStatic, adLockOptimistic
If Not Rs.EOF Then
  If Rs("PRBASED") = "Y" Then
    Dim f As New RMI_PurchaseRequisition
    GSNO = SlNofn("mnu_pr")
    RMI_PurchaseRequisition.Show
  Else
    MsgBox "Please Contact Administrator!", vbCritical, head
  End If
End If
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_PrForeclosure_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_PrForeclosure")
    FrmPRForeClosure.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_purday_Click(Index As Integer)
intervalMinutes = -1
End Sub

Private Sub mnu_purchase_List_Click(Index As Integer)
    Select Case Index
    Case 0
        intervalMinutes = -1
        Call CheckNoofUsers
        Dim f As repform1
        Screen.MousePointer = 11
        Repindex = 77
        repform1.Show
        Screen.MousePointer = 0
        intervalMinutes = -1
    Case 1
        intervalMinutes = -1
        Call CheckNoofUsers
        Screen.MousePointer = 11
        frm_PurchaseAnalysisMonthwise.Show
        Screen.MousePointer = 0
        intervalMinutes = -1
    End Select
End Sub

Private Sub mnu_quality_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_quality")
    If UCase(CustID) = "LMW" Then
        'FrmQualparam_LMW.Show
        FrmQualparam_LMW_new.Show
    Else
        FrmQualparam.Show
    End If
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_qualityApp_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
'    Set rs5 = New Recordset
'    rs5.Open "select isnull(iqa,'Y') as iqa from rm_param ", DB, DB, adOpenStatic, adLockReadOnly
'    If Not rs5.EOF Then
'     If rs5!iqa = "Y" Then
            intervalMinutes = -1
           GSNO = SlNofn("mnu_qualityapp")
            FrmQualparamApp.Show
            intervalMinutes = -1
'      Else
'        MsgBox "Contact Administrator! Your Setting Has not Applicatioble this Form"
'     End If
'     End If
    Screen.MousePointer = 0
End Sub

Private Sub mnu_qualityparamtr_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3000
    frmReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_QueriesSub_Click(Index As Integer)
intervalMinutes = -1
Call CheckNoofUsers
GSNO = SlNofn("mnu_QueriesSub" & "_" & Index)
    Select Case Index
        Case 0
            Screen.MousePointer = 11
            FrmLotstock.Show
            Screen.MousePointer = 0
        Case 1
            Screen.MousePointer = 11
            FrmVarstock.Show
            Screen.MousePointer = 0
        Case 2
            Screen.MousePointer = 11
            QryVar.Show
            Screen.MousePointer = 0
'        Case 4
'            Screen.MousePointer = 11
'            Quality_Query.Show
'            Screen.MousePointer = 0
    End Select
    intervalMinutes = -1

End Sub

Private Sub mnu_Reasonfordel_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_Reasonfordel")
frmDeleteReason.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_receipt_chart_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_receipt_chart")
Rpt_Supplierwise_Chart.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub


Private Sub mnu_rejectedarr_Click(Index As Integer)
intervalMinutes = -1
Call CheckNoofUsers
If Index = 0 Then
    Dim f As repform1
    Screen.MousePointer = 11
    Repindex = 7777
    repform1.Show
    Screen.MousePointer = 0
ElseIf Index = 1 Then
    Screen.MousePointer = 11
    Repindex = 77777
    repform1.Show
    Screen.MousePointer = 0
ElseIf Index = 3 Then
    Screen.MousePointer = 11
    Repindex = 2228
    repform1.Show
    Screen.MousePointer = 0
ElseIf Index = 2 Then
    Screen.MousePointer = 11
    Repindex = 1005
    repform.Show
    Screen.MousePointer = 0
    ElseIf Index = 5 Then
    Screen.MousePointer = 11
    Repindex = 787878787
    repform1.Show
    Screen.MousePointer = 0
End If
intervalMinutes = -1
End Sub

'Private Sub mnu_report_db_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'GSNO = SlNofn("mnu_report_db")
'frm_DBSetUp.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

Private Sub mnu_stckstatement_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 0
    frm_Stockstmnt.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_rmidrcrnote_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
GSNO = SlNofn("mnu_rmidrcrnote")
Repindex = 27
repform45.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_rpt_detailedmixing_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 788
    GSNO = SlNofn("mnu_rpt_detailedmixing")
    Reptmixing.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_Rpt_issuereturnreg_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3654
    frmReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_rpt_mixingchart_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 789
    GSNO = SlNofn("mnu_rpt_qualitymixing")
    Reptmixing.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_rpt_orderamdmentlist_Click()
   Screen.MousePointer = 11
    Repindex = 1
    frm_PendingOrder.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnu_rpt_postatus_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As repform1
    Screen.MousePointer = 11
    Repindex = 7234
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
    
End Sub

Private Sub mnu_rpt_qualitymixing_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 787
    GSNO = SlNofn("mnu_rpt_qualitymixing")
    Reptmixing.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_Rpt_SustainableRpt_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
FrmPurchaseRegister.eReportName = RptSustainableRpt
FrmPurchaseRegister.Show
Screen.MousePointer = 0
intervalMinutes = -1

End Sub

Private Sub mnu_SaleDaybook_Click()
intervalMinutes = -1
    Screen.MousePointer = 11
    Repindex = 77777
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_SalesDelAdd_Click()
   intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_SalesDelAdd")
    DeladdSales.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_Setup_DiscType_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_Setup_DiscType")
    frm_DiscountType.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_setup_Payterms_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_setup_Payterms")
    PayTerm.Show    '  frmPlantDetails.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_setup_Plant_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_setup_Plant")
    frmPlantDetails.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_setup_vessel_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_setup_vessel")
    FrmVessel.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub MNU_SETUPHSN_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3002
    GSNO = SlNofn("MNU_SETUPHSN")
    frm_hsn.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_stktypewise_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
FrmPurchaseRegister.eReportName = RptStocktype
FrmPurchaseRegister.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_supass_record_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As rmireports2
Screen.MousePointer = 11
Repindex = 125
rmireports2.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_supplierwise_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New pending_supplierwise
Repindex = 1235
Screen.MousePointer = 11
pending_supplierwise.Show
Screen.MousePointer = 0
intervalMinutes = -1

End Sub

Private Sub mnu_SustainRptTypeSetup_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_SustainRptTypeSetup")
Frm_SustainRptType.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

'Private Sub mnu_tradepurchaseBill_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'GSNO = SlNofn("mnu_tradepurchaseBill")
'frmPurchaseTradeBill.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

Private Sub mnu_tranreceipt_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_tranreceipt")
frmtransrecp.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_TransitpolicyDetails_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_TransitpolicyDetails")
    Frm_Policydetail.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_TransportRate_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
  
    GSNO = SlNofn("mnu_TransportRate")
    Frm_TransPortRate.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_trnOrderAmendment_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    sCatType = "S"
    GSNO = SlNofn("mnu_trnOrderAmendment")
    RMIContractAmendment.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_variety_purcha_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform
Screen.MousePointer = 11
Repindex = 16
repform.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnu_varietyGroup_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_varietyGroup")
    Frm_VarietyGroup.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub
Private Sub mnu_varietySyn_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    sCatType = "S"
    GSNO = SlNofn("mnu_cottvariety")
    FrmVariety.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_varietywise_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As repform1
    Screen.MousePointer = 11
    Repindex = 30
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_varityw_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 61
    rmireports.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnu_VarietywiseissueList_Click()
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 61
    rmireports.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuadj_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuadj")
    FrmStockAdj.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

'Private Sub mnuAduitReport_Click()
'    intervalMinutes = -1
'    Call CheckNoofUsers
'    Screen.MousePointer = 11
'    Repindex = 3002
'    GSNO = SlNofn("mnuAduitReport")
'    frmRptAduit.Show
'    Screen.MousePointer = 0
'    intervalMinutes = -1
'End Sub


Private Sub mnuAgeing_Click(Index As Integer)
intervalMinutes = -1
Call CheckNoofUsers
Select Case Index
Case 0
    Repindex = 2
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
Case 1
    Repindex = 4
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
End Select
intervalMinutes = -1
End Sub

Private Sub MnuAllIssRegister_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As repform1
    Screen.MousePointer = 11
    Repindex = 191
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuAgentComm_Click()
    intervalMinutes = -1
    Screen.MousePointer = 11
    Repindex = 1191
    Dim f As New cottonbrokerwise
    f.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuapproval_Click()
intervalMinutes = -1
 FrmPurchaseBillFApproval.Show
 intervalMinutes = -1
End Sub

Private Sub mnuarrival_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuarrival")
Frm_IMRMIArrival.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuBalePressDetails_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    FrmBalePress.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuBank_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As New frmbank
    Screen.MousePointer = 11
    GSNO = SlNofn("Mnubank")
    f.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuBannariConRpt_Click(Index As Integer)
intervalMinutes = -1
    Call CheckNoofUsers
    GSNO = SlNofn("mnuBannariConRpt" & "_" & Index)
    Select Case Index
        Case 0
            Screen.MousePointer = 11
            Repindex = 5
            frmCtStkRMIWs.Show
            Screen.MousePointer = 0
        Case 1
            Screen.MousePointer = 11
            Repindex = 6
            frmCtStkRMIWs.Show
            Screen.MousePointer = 0
    End Select
    intervalMinutes = -1
End Sub

Private Sub mnuBannariCustReport_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuBannariCustReport")
    Repindex = 300000
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuBannariReport_Click(Index As Integer)
intervalMinutes = -1
    Call CheckNoofUsers
    Select Case Index
        Case 0
            Screen.MousePointer = 11
            Repindex = 3022
            frmReport.Show
            Screen.MousePointer = 0
        Case 1
            Screen.MousePointer = 11
            GSNO = SlNofn("mnuPurOrd_dtws")
            Repindex = 328
            repform1.Show
            Screen.MousePointer = 0
        Case 2
            Screen.MousePointer = 11
            GSNO = SlNofn("mnuPOAbs")
            Repindex = 428
            repform1.Show
            Screen.MousePointer = 0
        Case 3
            Screen.MousePointer = 11
            Repindex = 3066
            rmireports.Show
            Screen.MousePointer = 0
    End Select
    intervalMinutes = -1
End Sub

Private Sub mnuBInStockReport_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = vbHourglass
    GSNO = SlNofn("mnuBInStockReport")
    Repindex = 10066
    repform1.Show
    Screen.MousePointer = vbArrow
    intervalMinutes = -1
End Sub

Private Sub mnucar_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnucar")
    frmcar.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub
Private Sub mnuChangePassword_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = vbHourglass
    GSNO = SlNofn("mnuChangePassword")
    FrmChangePassword.Show
    Screen.MousePointer = vbArrow
    intervalMinutes = -1
End Sub

Private Sub mnucatvar_Click()
'Call CheckNoofUsers
'Screen.MousePointer = 11
'FrmPurchaseRegister.eReportName = RptStock_cust 'RptStocktype
'FrmPurchaseRegister.Show
'Screen.MousePointer = 0
'
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
FrmPurchaseRegister.eReportName = RptStock_cust1 'RptStocktype
FrmPurchaseRegister.Show
Screen.MousePointer = 0
intervalMinutes = -1

End Sub

Private Sub mnucatvar1_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
FrmPurchaseRegister.eReportName = RptStock_cust2 'RptStocktype
FrmPurchaseRegister.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnucomissue_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim DB As New Connection
DB.Open connectstring
Dim rsg As New Recordset
Set rsg = New Recordset
rsg.Open "select isnull(abbr,'') from pp_divmas where divcode='" & Divcode & "'", DB, adOpenStatic
Screen.MousePointer = 11
GSNO = SlNofn("mnucomissue")
'If UCase(rsg(0)) = "SVSP" Then
'    SvspFrmissueKgs.Show
'Else
    Dim frmiss As New FrmissueKgs
    frmiss.RMISTXNINDEX = 1
    frmiss.Show
    ''FrmissueBaleKGS.Show
'End If
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub



'Private Sub mnucompanyreport_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'GSNO = SlNofn("mnucompanyreport")
'frm_companyvarstock.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

'Private Sub mnuConsumptionForecastRpt_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'GSNO = SlNofn("mnuConsumptionForecastRpt")
'Screen.MousePointer = 11
'ConsumptionForecast.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

'Private Sub mnucontacc_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Dim f As New acceptance
'Screen.MousePointer = 11
'GSNO = SlNofn("mnucontacc")
'acceptance.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

Private Sub MNUCOTTONMISREPORT_Click(Index As Integer)
intervalMinutes = -1
    Call CheckNoofUsers
    Repindex = 1
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuConsolidatedStockOnDate_Click()
intervalMinutes = -1
frmbsheetcust_peri.Show
intervalMinutes = -1
End Sub

Private Sub mnuconsperday_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Repindex = 3
    Screen.MousePointer = 11
    frmConsumptionPerDay.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub MnuCottonSales_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("MnuCottonSales")
'If Record_Exists("IG_INVTYPE WHERE DIVCODE = '01' AND INV_TYPE =(SELECT cottoninv_type FROM RM_PARAM) " & _
                "GROUP BY SALE_AC_L,SALE_AC_IS,TAX_AC,LSC_AC,CST_AC,BED_AC_L,BED_AC_IS,AED_AC_L,AED_AC_IS,CHARITY_AC_L,CHARITY_AC_IS,CESS_AC_L,CESS_AC_IS,FREIGHT_AC,INS_AC,RNDOFF_AC " & _
                "HAVING isnull(SALE_AC_L,'')<>'' AND isnull(SALE_AC_IS,'')<>'' AND isnull(TAX_AC,'')<>'' AND isnull(LSC_AC,'')<>'' AND isnull(CST_AC,'')<>'' AND isnull(BED_AC_L,'')<>'' AND isnull(BED_AC_IS,'')<>'' " & _
                "AND isnull(AED_AC_L,'')<>'' AND isnull(AED_AC_IS,'')<>'' AND isnull(CHARITY_AC_L,'')<>'' AND isnull(CHARITY_AC_IS,'')<>'' AND isnull(CESS_AC_L,'')<>'' AND isnull(CESS_AC_IS,'')<>'' AND isnull(FREIGHT_AC,'')<>'' AND isnull(INS_AC,'')<>'' AND isnull(RNDOFF_AC,'')<>''", "GLCODE not defined in Commercial Invoice Type") = False Then Screen.MousePointer = 0: Exit Sub
                
                
                
CottonInvoiceNew.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub



Private Sub mnuCottonStk_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Repindex = 3
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub MnuCottonStockStmt_Click(Index As Integer)
intervalMinutes = -1
Call CheckNoofUsers
'If Index = 0 Then
If Index = 0 Then
    Screen.MousePointer = 11
    Repindex = 1190
    ReceiptRegister.Show
    Screen.MousePointer = 0
ElseIf Index = 1 Then
    'Dim f As repform1
    Screen.MousePointer = 11
    Repindex = 777777
    repform1.Show
    Screen.MousePointer = 0
ElseIf Index = 2 Then
    Screen.MousePointer = 11
    Repindex = 40
    repform1.Show
    Screen.MousePointer = 0
'ElseIf Index = 3 Then
'    Screen.MousePointer = 11
'    Repindex = 1
'    frmFormCReport.Show
'    Screen.MousePointer = 0
'ElseIf Index = 4 Then
'    Screen.MousePointer = 11
'    Repindex = 222
'    frmFormCReport.Show
'    Screen.MousePointer = 0
End If
intervalMinutes = -1
End Sub
Private Sub MnuCottonStockStmtDe_Click(Index As Integer)
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 777777
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1

End Sub

'Private Sub mnucrd_Click()
'    intervalMinutes = -1
'    Call CheckNoofUsers
'    Repindex = 201
'    JURNL.Label1.Caption = "Credit/Debit Note"
'    JURNL.Show
'    JURNL.Caption = "Credit/Debit Note"
'    intervalMinutes = -1
'
'End Sub

'Private Sub mnuDBReason_Click()
'    intervalMinutes = -1
'    Call CheckNoofUsers
'    Screen.MousePointer = 11
'    Dim f As New frmDBType
'    GSNO = SlNofn("mnuDBReason")
'    frmDBType.Show
'    Screen.MousePointer = 0
'    intervalMinutes = -1
'End Sub

Private Sub mnudeltype_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Dim f As New frmDelivery
    GSNO = SlNofn("mnudeltype")
    frmDelivery.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuexceptionalreport_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuexceptionalreport")
ExceptionReport.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuFibreNorms_Click()
intervalMinutes = -1
Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuFibreNorms")
    FrmFibreNorms.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuFrgtDet_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3330
    frmReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuform9_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuform9")
repform9.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnufrtentry_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnufrtentry")
'FrmTransaction.Show
Dim frmm As New frm_FreightBill
frmm.FreightBillEntryType = "E"
frmm.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnugatepass_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuGodown")
FrmGatepass.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuGenQry_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuGenQry")
generic_query.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnugodown_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuGodown")
Frmgodown.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuGodownCapacityReport_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = vbHourglass
    GSNO = SlNofn("mnuGodownCapacityReport")
    Repindex = 10067
    repform1.Show
    Screen.MousePointer = vbArrow
    intervalMinutes = -1
End Sub

'Private Sub mnuInspectionApproval_Click()
'    intervalMinutes = -1
'    Call CheckNoofUsers
'    Screen.MousePointer = 11
'    GSNO = SlNofn("mnuInspectionApproval")
'    FrmQualityApproval.Show
'    Screen.MousePointer = 0
'    intervalMinutes = -1
'End Sub

Private Sub mnuInsQtyParamater_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3001
    frmReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

'Private Sub mnuissueReturnRegister_Click()
'intervalMinutes = -1
'    Call CheckNoofUsers
'    Screen.MousePointer = 11
'    Repindex = 3099
'    GSNO = SlNofn("mnuissueReturnRegister")
'    frmRptAduit.Show
'    Screen.MousePointer = 0
'    intervalMinutes = -1
'End Sub

Private Sub mnuissuetype_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuissuetype")
frmissuetype.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuksltotallyrmi_Click()
    intervalMinutes = -1
    frmksltotally.Show
    intervalMinutes = -1
End Sub

Private Sub mnulotbaleweight_Click()
intervalMinutes = -1
'Frmlotbaledetail.Show
Dim RsPar As Recordset
Set RsPar = New Recordset
RsPar.Open "select isnull(WeightIPFlg,0) WeightIPFlg from rm_param", DB
If RsPar(0) = 0 Then
    frm_ArrivalCapture.Show
Else
    myform.Show
End If
intervalMinutes = -1
End Sub

Private Sub mnulothistory_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnulothistory")
FrmLotHist.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnulotissue_Click()
intervalMinutes = -1
Dim RsPar As Recordset
Set RsPar = New Recordset
RsPar.Open "select isnull(WeightIPFlg,0) WeightIPFlg from rm_param", DB
If RsPar(0) = 0 Then
frm_IssueRequestBarcode.Show
Else
myform1.Show
intervalMinutes = -1
End If
End Sub

Private Sub mnulotsetl_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnulotsetl")
If UCase(CustID) = "COTTON" And UCase(CustID1) <> "SCM" Then
    Dim f1 As New FRMLOSETLAUTOCALC
    f1.Show
Else
    Dim f As New FRMLOSETL
    f.Show
End If
Screen.MousePointer = 0
intervalMinutes = -1
End Sub


Private Sub MnuLotwiseIssRegister_Click()

    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 34351
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
    
End Sub

Private Sub mnulotwise_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 1200
    rmireports.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnumakrecpt_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 53
    rmireports.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuMISDashBoard_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As frmDashBoard
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuMISDashBoard")
    frmDashBoard.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mNUmIXgRPsTOCK_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As repform
    Screen.MousePointer = 11
    GSNO = SlNofn("mNUmIXgRPsTOCK")
    Repindex = 161
    repform.Show
    Screen.MousePointer = 0
    intervalMinutes = -1

End Sub

Private Sub mnuMatagestock_Click()
    intervalMinutes = -1
    Repindex = 2
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnumixallocate_Click()
    intervalMinutes = -1
    
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    rmireports.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnumixallocation_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 870
    GSNO = SlNofn("mnumixallocation")
    Reptmixing.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnumixingCost_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 111
    rmireports.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub MnuMixingExtimation_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("MnuMixingExtimation")
    MixEstimation.Show
    Screen.MousePointer = 0
    intervalMinutes = -1

End Sub
'Private Sub mnuNotBillRegister_Click()
'    intervalMinutes = -1
'    Call CheckNoofUsers
'    Screen.MousePointer = 11
'    Repindex = 3018
'    frmRptAduit.Show
'    Screen.MousePointer = 0
'    intervalMinutes = -1
'End Sub
'
Private Sub mnuoiltype_Click()
   intervalMinutes = -1
   Call CheckNoofUsers
   GSNO = SlNofn("mnuoiltype")
   FRMOIL.Show
   intervalMinutes = -1
End Sub

Private Sub mnuopen_Click()
intervalMinutes = -1
    Call CheckNoofUsers
   Screen.MousePointer = 11
   GSNO = SlNofn("mnuopen")
   OpenStockEntry.Show
   Screen.MousePointer = 0
   intervalMinutes = -1
End Sub

'Private Sub mnuopenkeyloandetaila_Click()
'intervalMinutes = -1
'Screen.MousePointer = 11
'    FrmOpenkey.Show
'    Screen.MousePointer = 0
'    intervalMinutes = -1
'End Sub

Private Sub mnuopenkeyloandetail_Click()
intervalMinutes = -1
FrmOpenkey.Show
intervalMinutes = -1
End Sub

Private Sub MnuOrderCancel_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("MnuOrderCancel")
ORDCANCEL.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuOrderCancellationReport_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
Repindex = 199
f.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuOrderRegister_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
Repindex = 228
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub
Private Sub mnuparam_Click()
intervalMinutes = -1
    Call CheckNoofUsers
   GSNO = SlNofn("mnuparam")
   RMIParam.Show
 intervalMinutes = -1
End Sub

Private Sub mnuParamFA_Click()
intervalMinutes = -1
    Call CheckNoofUsers
   Screen.MousePointer = 11
   GSNO = SlNofn("mnuparamfa")
   RMIParamFA.Show
   Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuPartywise_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
Repindex = 15
repform.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuPendingBillEntry_Click(Index As Integer)
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 2228
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuPLTBI_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3007
    frmReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnupmode_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
   Screen.MousePointer = 11
   GSNO = SlNofn("mnupmode")
   frmpmode.Show
   Screen.MousePointer = 0
   intervalMinutes = -1
End Sub

'Private Sub mnuPurBill_Click(Index As Integer)
'intervalMinutes = -1
'''    GSNO = SlNofn("mnuPurBill" & "_" & Index)
'''    If Index = 0 Then
'''        Screen.MousePointer = 11
'''        frmPurchaseBill.Show
'''        Screen.MousePointer = 0
'''    ElseIf Index = 1 Then
'''        Screen.MousePointer = 11
'''        frmPurchaseBillMultiple.Show
'''        Screen.MousePointer = 0
'''    End If
'End Sub

Private Sub mnuPurchasebill_Click(Index As Integer)
    intervalMinutes = -1
    Call CheckNoofUsers
    GSNO = SlNofn("mnuPurchasebill" & "_" & Index)
    
    If Index = 0 Then
        Screen.MousePointer = 11
       If UCase(CustID) = "SARANYA" Then
        frmPurchaseBillMultiple_Saranya.Show
      Else
        frmPurchaseBillMultiple.Show
       End If
       
        Screen.MousePointer = 0
'    ElseIf Index = 1 Then
'        Screen.MousePointer = 11
'        'FrmPurchaseBillFApproval.Show
'        Repindex = 5
'        FrmReceiptApprbef.Show
'        Screen.MousePointer = 0
'    ElseIf Index = 2 Then
'        Screen.MousePointer = 11
'        FrmIssue.Show
'        Screen.MousePointer = 0
    End If
    intervalMinutes = -1
End Sub

Private Sub mnuPurchaseDayBookAbstract_Click(Index As Integer)
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As repform1
    Screen.MousePointer = 11
    Repindex = 7777
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub MnuPurchaseOrder_Click()
intervalMinutes = -1
Call CheckNoofUsers
Call openconnection
Screen.MousePointer = 11
GSNO = SlNofn("MnuPurchaseOrder")
'If UCase(CustID) = UCase("Balkrishna") Then
'    Dim f As New RMIContractwithoutsample_withPR
'    f.Show
'Else
    Dim f1 As New RMIContractwithoutsample_withPR1
    f1.Show
'End If

intervalMinutes = -1
'f.Show
Screen.MousePointer = 0
End Sub

'Private Sub mnuPurchaseRegister_Click()
'    Call CheckNoofUsers
'    Screen.MousePointer = 11
'    Repindex = 3002
'    frmReport.Show
'    Screen.MousePointer = 0
'
'End Sub

'Private Sub mnupurtype_Click()
'    Call CheckNoofUsers
'   Screen.MousePointer = 11
'   GSNO = SlNofn("mnupurtype")
'   Frmptype.Show
'   Screen.MousePointer = 0
'End Sub

Private Sub mnuRawMaterial_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Repindex = 325
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuRawMaterialLetter_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Repindex = 326
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub MnuRankQual_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
'FrmQualityParamRank.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuPurchaseRequlisition_Click()
intervalMinutes = -1
'Screen.MousePointer = 11
'RMI_PurchaseRequisition_AP.Show
'Screen.MousePointer = 0
Call CheckNoofUsers
Call openconnection
Screen.MousePointer = 11
Set Rs = New Recordset
Rs.Open "SELECT isnull(PRBased,'Y') PRBASED FROM rm_param ", DB, adOpenStatic, adLockOptimistic
If Not Rs.EOF Then
  If Rs("PRBASED") = "Y" Then
    Dim f As New RMI_PurchaseRequisition_AP
    GSNO = SlNofn("mnuPurchaseRequlisition")
    RMI_PurchaseRequisition_AP.Show
  Else
    MsgBox "Please Contact Administrator!", vbCritical, head
  End If
End If
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnupurtype_Click()
intervalMinutes = -1
  Frmptype.Show
intervalMinutes = -1
End Sub

Private Sub mnuQualityPara_Click()
intervalMinutes = -1
Screen.MousePointer = 11
FrmQualitySetup.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnurectpty_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New COTTONRECEIPTSSUP
Screen.MousePointer = 11
COTTONRECEIPTSSUP.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnurepreuse_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform
Screen.MousePointer = 11
Repindex = 150
repform.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub


Private Sub mnuRLIssueTypewise_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3009
    frmReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1

End Sub

Private Sub mnuRMISalesVATReport_Click(Index As Integer)
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 1005
    repform.Show
    Screen.MousePointer = 0
    intervalMinutes = -1

End Sub

Private Sub mnuRptAdjustRegister_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 100055
    AdjustmentReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

'Private Sub mnusaleableissue_Click()
'intervalMinutes = -1
'    Call CheckNoofUsers
'    Screen.MousePointer = vbHourglass
'    GSNO = SlNofn("mnusaleableissue")
'    Wasteentry1.Show
'    Screen.MousePointer = vbArrow
'    intervalMinutes = -1
'End Sub

Private Sub mnusample_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnusample")
    FRMSAMPLE1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuSCMStockpostion_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 1
    frm_Stockstmnt.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuSeasonSetup_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuSeasonSetup")
    FrmSeason.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuSetupGinner_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuSetupGinner")
    frmGinner.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnusingbrok_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 774
    rmireports.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuSPOT_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    frmSPOTPasser.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuspreg_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    frmarrregsup.Show
    intervalMinutes = -1
End Sub

Private Sub mnuspregcarrier_Click()
Screen.MousePointer = 11
frmcarrierwise.Show
Screen.MousePointer = 0
End Sub

Private Sub mnustatewise_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 2000
    frm_Stockstmnt.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnustkleglot_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
Repindex = 522
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub


Private Sub mnuStkpostvar_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 1
    frm_Stockstmnt.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnustkqry_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    ExceptionReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnustkstation_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3006
    frmReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuststatus_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As repform
    Screen.MousePointer = 11
    Repindex = 101
    repform.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnusupass_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 74
    rmireports.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnustkstmtvariety_Click()
    Screen.MousePointer = 11
    Repindex = 5000
    frm_Stockstmnt.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnusupmas_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Dim f As New slmaster
    GSNO = SlNofn("mnusupmas")
    f.Show
    
    Screen.MousePointer = 0
End Sub

Private Sub mnuSupplierlotwise_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
GSNO = SlNofn("mnuSupplierlotwise")
Repindex = 3004
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub MnuSuppqualityRank_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    FrmPurchaseRegister.eReportName = RptSupRank
    FrmPurchaseRegister.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnutax_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = vbHourglass
GSNO = SlNofn("mnutax")
tax.Show
Screen.MousePointer = vbArrow
intervalMinutes = -1
End Sub

Private Sub mnuTransConsupUpdation_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 112
    frmConsumptionUpdate.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnutransfer_Click()
    intervalMinutes = -1
    'Transfer Receipt
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 112
    rmireports.Show
    Screen.MousePointer = 0
    
    intervalMinutes = -1
End Sub

Private Sub mnutransferissreg_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 1998
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnutrasStkUpdation_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 112
    frmStockUpdate.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub mnuUNTOUCHLOTS_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3008
    frmReport.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub


Private Sub MnuUser_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
'SPGusers.Show
GSNO = SlNofn("mnuuser")
RMIUsersLevel.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

'Private Sub mnuv_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'GSNO = SlNofn("mnuv")
'MixVariety.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

Private Sub mnuuserlevel_Click()
intervalMinutes = -1
 Call CheckNoofUsers
Screen.MousePointer = 11
'SPGusers.Show
GSNO = SlNofn("mnuuser")
RMIUsersLevel.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuvarchart_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuvarchart")
VarietywiseReceipt.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuvarietywise_Click(Index As Integer)
intervalMinutes = -1
Call CheckNoofUsers
If Index = 0 Then
    Screen.MousePointer = 11
    Repindex = 15
    repform.Show
    Repindex = 155
    Screen.MousePointer = 0
ElseIf Index = 1 Then
    Screen.MousePointer = 11
    Repindex = 19112
    repform.Show
    Screen.MousePointer = 0
End If
intervalMinutes = -1
End Sub


Private Sub mnuvarisschart_Click(Index As Integer)
intervalMinutes = -1
Call CheckNoofUsers
GSNO = SlNofn("mnuvarisschart" & "_" & Index)
If Index = 0 Then
    Screen.MousePointer = 11
    Repindex = 123
    IssurCharrep.Show
    Screen.MousePointer = 0
ElseIf Index = 1 Then
    Screen.MousePointer = 11
    Repindex = 124
    IssurCharrep.Show
    Screen.MousePointer = 0
End If
intervalMinutes = -1
End Sub

Private Sub mnuvarmixchart_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuvarmixchart")
MixingCostChart.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuvarstkchart_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuvarstkchart")
Repindex = 30
repform1.Show
Repindex = 303
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuvarstkpos_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
GSNO = SlNofn("mnuvarstkpos")
Repindex = 999
repform1.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub mnuverietywise_Click()
''sasi 23.11.24 as per SKS
'intervalMinutes = -1
'Call CheckNoofUsers
'Dim f As New repform1
'Screen.MousePointer = 11
'Repindex = 99
'repform1.Show
'Screen.MousePointer = 0
'intervalMinutes = -1

intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform
Screen.MousePointer = 11
Repindex = 16
repform.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

'Private Sub mnuwasteinvoiceprintRep_Click()
'intervalMinutes = -1
'  Call CheckNoofUsers
'  Dim frm As New WasteInvoiceRep1
'  Screen.MousePointer = 11
'  Repindex = 10
'  GSNO = SlNofn("WasteInvoiceRep1")
'  frm.Show
'  Screen.MousePointer = 0
'  intervalMinutes = -1
'End Sub

Private Sub mnuwastetype_Click()
intervalMinutes = -1
Call CheckNoofUsers
If Record_Exists("IG_tax", "Please Define the tax") = False Then Exit Sub
    If Record_Exists("ig_producttype", "Please Define the Producttype") = False Then Exit Sub
    
        If Record_Exists("ig_packtype", "Please Define the Packtype") = False Then Exit Sub

    Screen.MousePointer = 11
    GSNO = SlNofn("mnuwastetype")
    salewaste.Show
    Screen.MousePointer = 0
intervalMinutes = -1
End Sub
Private Sub mnuweightcontrol_Click()
intervalMinutes = -1
  Call CheckNoofUsers
  Dim frm As New Frmweighmentcontroller
  Screen.MousePointer = 11
  GSNO = SlNofn("mnuweightcontrol")
  frm.Show
  Screen.MousePointer = 0
  intervalMinutes = -1
End Sub



Private Sub mnuwissue_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuwissue")
    Wasteissue.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub


Private Sub mnuYearend_Click(Index As Integer)
intervalMinutes = -1
    Call CheckNoofUsers
    GSNO = SlNofn("mnuYearend" & "_" & Index)
    Select Case Index
        Case 0
            Screen.MousePointer = 11
            HouseAccYear.Show
            Screen.MousePointer = 0
        Case 1
            Screen.MousePointer = 11
            yearendprocessing.Show
            Screen.MousePointer = 0
    End Select
    intervalMinutes = -1
End Sub

'Private Sub mnuYearlyReport_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = vbHourglass
'Repindex = 3003
'frmRptAduit.Show
'Screen.MousePointer = vbArrow
'intervalMinutes = -1
'End Sub

Private Sub munIssueRequisitionSlip_Click()
intervalMinutes = -1
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("munIssueRequisitionSlip")
FrmIssueRequisition.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub


'Private Sub munwasteinvoice_Click()
'intervalMinutes = -1
'  Call CheckNoofUsers
'  Dim frm As New WasteInvoiceRep1
'  Screen.MousePointer = 11
'  Repindex = 15
'  GSNO = SlNofn("WasteInvoiceRep1")
'  frm.Show
'  Screen.MousePointer = 0
'  intervalMinutes = -1
'End Sub

'Private Sub munwastestock_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'GSNO = SlNofn("munwastestock")
'Openwastent.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub

Private Sub processdate_Click()
intervalMinutes = -1
Call CheckNoofUsers


'Screen.MousePointer = 11
'GSNO = SlNofn("processdate")
'pdate1.Show
'Screen.MousePointer = 0


On Error GoTo mnuchgpdate_Click_Error
            Dim frm As Form
            Dim str1 As String
            Set frm = Me.ActiveForm
            str1 = frm.Caption

            If str1 = "frmMain" Then
                Screen.MousePointer = 0
                pdate1.Show vbModal
                intervalMinutes = -1
                Exit Sub
            Else
                Screen.MousePointer = 0
                MsgBox "Please Close the all open window", vbInformation, head
                Exit Sub
            End If
intervalMinutes = -1
           Exit Sub

mnuchgpdate_Click_Error:

        Screen.MousePointer = 0
        pdate1.Show vbModal

End Sub
'Private Sub mnu_arr_brokerwise_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Frmbrkwisearrreg.Show
'intervalMinutes = -1
'End Sub

Private Sub mnu_arr_datewise_Click()
intervalMinutes = -1
Call CheckNoofUsers
Dim f As repform
Screen.MousePointer = 11
Repindex = 13
repform.Show
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

'Private Sub mnu_arr_varietywise_Click()
'intervalMinutes = -1
'Call CheckNoofUsers
'Screen.MousePointer = 11
'frmcarrierwise.Show
'Screen.MousePointer = 0
'intervalMinutes = -1
'End Sub


Public Function SlNofn(MenuName As String)
intervalMinutes = -1
    Call CheckNoofUsers
    Dim SerialNors As New Recordset
    Set SerialNors = New Recordset
    SerialNors.Open "select SNo from USERLEVEL where Menu_Name = '" & MenuName & "' and DIVCODE = '" & Divcode & "' AND MODULE =" & ModuleNo & " and  ULEVEL = " & ulevel & " ", DB, adOpenStatic
    If SerialNors.RecordCount > 0 Then
        SlNofn = SerialNors("SNo")
    Else
        SlNofn = 0
    End If
   ' Call CheckNoofUsers
    intervalMinutes = -1
End Function

Public Sub CustomisedReport()
    intervalMinutes = -1
    Call CheckNoofUsers
    Set Rs = New Recordset
    Rs.Open "Select Cust_ID From pp_Divmas where Divcode='" & Divcode & "'", DB, adOpenStatic
    
    intervalMinutes = -1
End Sub

Public Sub PPCUserLevel()
intervalMinutes = -1
Call CheckNoofUsers
Dim GrpNo As Integer
Dim SqlIns As String
Dim grpname As String
Dim TmpGrp As String
Dim FrmName As String
Dim MnuCtrl As Menu
Dim AdmFlg As String * 1
Dim ParaRs As Recordset


On Error GoTo PPCUserLevel_Error
    
    cnt = 0
    For I = 0 To Me.Controls.Count - 1
        If TypeOf Me.Controls(I) Is Menu Then
'            FrmName = Trim(Me.Controls(i).Caption)
            Set MnuCtrl = Me.Controls(I)
            

            
            FrmName = Mid(Trim(MnuCtrl.Caption), 2, Len(Trim(MnuCtrl.Caption)))
            
            AdmFlg = "Y"

     
            If FrmName = "Masters" Or FrmName = "Transactions" Or FrmName = "Reports" _
                Or FrmName = "Queries" Or FrmName = "Views" Or FrmName = "Setup" Or UCase(FrmName) = UCase("House Keeping") _
                Or FrmName = "Windows" Or FrmName = "Exit" Then
                
                grpname = "Groups"
                TmpGrp = FrmName
                
                AdmFlg = "N"
                GrpNo = I + 1
            Else
                grpname = TmpGrp
                
                If grpname = "Reports" Or grpname = "Queries" Or grpname = "Views" Or UCase(grpname) = UCase("House Keeping") _
                    Or grpname = "Windows" Or grpname = "Exit" Then
                        
                    AdmFlg = "N"
                        
                End If
                
            End If
            
                        
            If InStr(1, FrmName, " ", vbTextCompare) > 0 Then
                FrmName = Mid(FrmName, InStr(1, FrmName, " ", vbTextCompare))
            End If
            
            FrmName = Trim(FrmName)
            MnuName = Me.Controls(I).Name
            
            If IsIndex(Me.Controls(I)) Then
                MnuName = MnuName & "_" & Me.Controls(I).Index
            End If
            

           ' If FrmName <> "-" And FrmName <> "" And Me.Controls(i).Visible = True Then
            If FrmName <> "Exit" And grpname <> "Exit" And FrmName <> "" And Me.Controls(I).Visible = True Then
           
                If FrmName = "&Exit" Then
                    Exit For
                End If
                cnt = cnt + 1
            End If
        End If
    Next I
   intervalMinutes = -1
    
    Set rs1 = New Recordset
    rs1.Open "Select * from ModuleMenu Where Module = " & ModuleNo & " and group_no<>0 ", DB, adOpenStatic, adLockReadOnly
    intervalMinutes = -1
    If Not rs1.EOF Then
        
        If rs1.RecordCount <> cnt Then
            GoTo Insert
        Else
            Exit Sub
        End If
    Else
        GoTo Insert
    End If
    intervalMinutes = -1
Insert:
    SqlIns = ""
    
    SqlIns = "Delete from ModuleMenu Where Module = " & ModuleNo
    DB.Execute SqlIns
    GrpNo = 0
    SqlIns = ""
    intervalMinutes = -1
    For I = 0 To Me.Controls.Count - 1
        If TypeOf Me.Controls(I) Is Menu Then
        
            Set MnuCtrl = Me.Controls(I)
            
            FrmName = Mid(Trim(MnuCtrl.Caption), 2, Len(Trim(MnuCtrl.Caption)))
            
            AdmFlg = "Y"

     
            If FrmName = "Masters" Or FrmName = "Transactions" Or FrmName = "Reports" _
                Or FrmName = "Queries" Or FrmName = "Views" Or FrmName = "Setup" Or UCase(FrmName) = UCase("House Keeping") _
                Or FrmName = "Windows" Or FrmName = "Exit" Then
                
                grpname = "Groups"
                TmpGrp = FrmName
                
                AdmFlg = "N"
                GrpNo = I + 1
            Else
                grpname = TmpGrp
                
                If grpname = "Reports" Or grpname = "Queries" Or grpname = "Views" Or UCase(grpname) = UCase("House Keeping") _
                    Or grpname = "Windows" Or grpname = "Exit" Then
                        
                    AdmFlg = "N"
                        
                End If
                
            End If
            
                        
            If InStr(1, FrmName, " ", vbTextCompare) > 0 Then
                FrmName = Mid(FrmName, InStr(1, FrmName, " ", vbTextCompare))
            End If
            
            FrmName = Trim(FrmName)
            MnuName = Me.Controls(I).Name
            
        
            
                     
            If MnuName = "mnuPurchaseRequlisition" Or MnuName = "mnu_pr" Or MnuName = "MnuPurchaseOrder" Or MnuName = "mnuOrderCancel" Then
                grpname = "Purchase Order"
            End If
                        
            If MnuName = "mnu_arrival" Or MnuName = "mnu_tranreceipt" Or MnuName = "mnuBalePressDetails" Then
                grpname = "Arrival"
            End If
            
            If MnuName = "mnucomissue" Then
                grpname = "Issue Request"
            End If
            
            
            If MnuName = "mnu_pendcont" Or MnuName = "mnuStkPosition" Or MnuName = "mnuStkPosition" Then
                grpname = "Daily"
            End If
            If MnuName = "mnu_lotstokposi" Or MnuName = "mnuvarstkpos" Then
                grpname = "Stock Position"
            End If
            
            If MnuName = "mnu_qualityparamtr" Or MnuName = "mnucontractRegister" Or _
                MnuName = "mnu_pendingordersfr" Or MnuName = "mnu_arriv_reg" Or _
                MnuName = "mnu_receip_reg" Or MnuName = "mnuPLTBI" Or _
                MnuName = "mnutransfer" Or MnuName = "mnu_cottonwgt" Or _
                MnuName = "mnuInsQtyParamater" Or MnuName = "mnu_purchase_daybook" Or _
                MnuName = "mnu_issuereg" Or MnuName = "mni_mixing" Or _
                MnuName = "mnuPartywise" Or MnuName = "mnuRptAdjustRegister" Or _
                MnuName = "mnu_stock_stat" Or MnuName = "mnu_stockled" Or _
                MnuName = "mnu_cottonbincard" Or MnuName = "mnu_Cotton_Reconcilation" Or _
                MnuName = "mnumixingCost" Or MnuName = "mnu_rejectedarr" Or _
                MnuName = "mnuVATREPORT" Or MnuName = "mnu_formiv" Or _
                MnuName = "MnuCottonStockStmt" Or MnuName = "mnumakrecpt" Or _
                MnuName = "mnu_insurancereport" Or MnuName = "mnuNotBillRegister" Or _
                MnuName = "mnuPendingBillEntry" Or MnuName = "MnuCottonStockStmtDe" Then
                
                grpname = "Periodicals"
                
            End If
            
            If MnuName = "mnuOrderRegister" Or MnuName = "mnuOrderCancellationReport" Then
                grpname = "Purchase Order List"
            End If
            
            If MnuName = "mnu_pendinfdatewise" Or MnuName = "mnu_supplierwise" Or MnuName = "mnu_pendbrokerwise" Then
                grpname = "Pending Orders"
            End If
            
            If MnuName = "mnu_arr_datewise" Or MnuName = "mnu_arr_varietywise" Or MnuName = "mnuspreg" Then
                grpname = "Arrival List"
            End If
            
            If MnuName = "mnu_datewiserep" Or MnuName = "mnuverietywise" Or MnuName = "mnurectpty" Or MnuName = "mnu_brokerwiserep" Then
                grpname = "Receipt List"
            End If
            
            If MnuName = "mniDatewise" Or MnuName = "mnu_mixnowise" Then
                grpname = "Issue List."
            End If
            
            If MnuName = "mniMixRegNew" Or MnuName = "mnimixingstock" Or MnuName = "mni_wastemixstk" Then
                grpname = "Mixing Issue."
            End If
            
            If MnuName = "mnu_lotwise" Or MnuName = "mnu_varietywise" Or MnuName = "mnu_godownwise" Or MnuName = "mnustkstation" Then
                grpname = "Stock Statement"
            End If
            
            If MnuName = "mnustkleglot" Or MnuName = "mniitemledger" Then
                grpname = "Stock Ledger"
            End If
            
            If MnuName = "mnRMIpurchase" Or MnuName = "mnuRMISalesVATReport" Then
                grpname = "VAT Report"
            End If
                                    
            If MnuName = "mnu_variety_purcha" Or MnuName = "mnu_brokdate_purcha" Or _
                MnuName = "mnu_areaparty_purcha" Or MnuName = "mnu_supass_record" Or _
                MnuName = "mnuStkpostvar" Or MnuName = "mnuMatagestock" Then
                
                grpname = "M.I.S."
            End If
            
            If MnuName = "mnuYearend" Then
                grpname = "Year End Process"
            End If


            If IsIndex(Me.Controls(I)) Then
                MnuName = MnuName & "_" & Me.Controls(I).Index
            End If
                                    
            
            If FrmName <> "Exit" And grpname <> "Exit" And FrmName <> "" And Me.Controls(I).Visible = True Then   'And Me.Controls(i).Enabled = True
                SqlIns = "Insert Into ModuleMenu Values(" & ModuleNo & ", '" & grpname & "', '" & FrmName & "', '" & MnuName & "', " & I + 1 & " , '" & AdmFlg & "', " & GrpNo & " )"
                DB.Execute SqlIns
            End If
            
n:
        End If
    Next I
'        DB.Execute "insert into ModuleMenu values ('6','Transactions','Purchase Bill Entry Second level Approval','mnuSecondapproval',14,'Y','400')"
'
'        DB.Execute "insert into ModuleMenu values ('6','Purchase Order','Order ForeClosure','mnuOrderForeClosure',14,'Y','400')"
'

        DB.Execute ("UPDATE a SET  a.sno=b.sno FROM USERLEVEL a, MODULEMENU b where a.module=b.module and " & _
                " a.menu_name=b.menu_name and a.module=" & ModuleNo & " and a.Divcode='" & Divcode & "'")

DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no) values (6,'Purchase Order','Order ForeClosure','mnuOrderForeClosure', '" & I + 1 & "','Y',0)")
DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no)  values (6,'Transactions','RMI PO First Level Approval Web','mnuRMIPOApproval_First','" & I + 2 & "','Y',0)")
DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no)  values (6,'Transactions','RMI PO Second Level Approval Web','mnuRMIPOApproval_Second','" & I + 3 & "','Y',0)")
DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no) values (6,'Transactions','RMI PO Accounts Level Approval Web','mnu_RMPOAccounts','" & I + 4 & "','Y',0)")
DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no) values (6,'Transactions','RMI PO Final Level Approval Web','mnuRMIPOApproval_Final','" & I + 5 & "','Y',0)")
DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no) values (6,'Transactions','RMI PO Final Level Approval Web','mnuRMIPOApproval_Final','" & I + 6 & "','Y',0)")
DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no) values (6,'Transactions','PJV Second level Approval','mnuPJVSecondapproval','" & I + 7 & "','Y',0)")
DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no) values (6,'Transactions','PJV Third level Approval Web','mnuPJVThirdapproval','" & I + 8 & "','Y',0)")
DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no) values (6,'Transactions','Freight Bill Entry First level Approval Web','mnuRMFreightapproval_First','" & I + 9 & "','Y',0)")
DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no) values (6,'Transactions','Freight Bill Entry Second level Approval Web','mnuRMFreightapproval_Second','" & I + 10 & "','Y',0)")
DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no) values (6,'Masters','Supplier Bank First Level Approval','mnu_SupplierBankFirst','" & I + 11 & "','Y',0)")
DB.Execute ("insert into ModuleMenu (Module,Groups,Form_name,Menu_name,Sno,adm_flg,group_no) values (6,'Masters','Supplier Bank Final Level Approval','mnu_SupplierBankFinal','" & I + 12 & "','Y',0)")
'
    intervalMinutes = -1
    
Exit Sub
PPCUserLevel_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure PPCUserLevel of Form FrmMDI", vbInformation, head
End Sub

Public Sub NEWFORM3(tol As Object, NO As Integer)
intervalMinutes = -1
    Call CheckNoofUsers
    On Error Resume Next

    If NO <> 0 Then

        'DB.Open cnstr

        Dim Rs As New Recordset
        Rs.Open "SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & Divcode & "' AND MODULE = " & ModuleNo & " AND ULEVEL = " & ulevel & " AND SNO = " & NO, DB

        If Rs("ADD_FLG") = "Y" Then tol(0).Enabled = True Else tol(0).Enabled = False
        If Rs("MOD_FLG") = "Y" Then tol(1).Enabled = True Else tol(1).Enabled = False
        If Rs("DEL_FLG") = "Y" Then tol(2).Enabled = True Else tol(2).Enabled = False

        tol(3).Enabled = True 'LIST
        tol(5).Enabled = True  'FIRST
        tol(6).Enabled = True  'NEXT
        tol(7).Enabled = True  'PREVIOUS
        tol(8).Enabled = True  'LAST
        tol(9).Enabled = False 'SAVE
        tol(10).Enabled = False 'CANCEL
        tol(11).Enabled = True  'EXIT
        'tol(12).Enabled = False ' print
    Else
        tol(0).Enabled = True 'add
        tol(1).Enabled = True 'mod
        tol(2).Enabled = True 'del
        tol(3).Enabled = True  'LIST
        tol(5).Enabled = True  'FIRST
        tol(6).Enabled = True  'NEXT
        tol(7).Enabled = True  'PREVIOUS
        tol(8).Enabled = True  'LAST
        tol(9).Enabled = False 'SAVE
        tol(10).Enabled = False 'CANCEL
        tol(11).Enabled = True  'EXIT
        'tol(12).Enabled = False ' print
    End If
intervalMinutes = -1
End Sub


Private Sub rpt_cottoncost_Click()
intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As repform1
    Screen.MousePointer = 11
    Repindex = 7734
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub rpt_cottonReceiptList_Click()
    intervalMinutes = -1
    Call CheckNoofUsers
    Dim f As repform1
    Screen.MousePointer = 11
    Repindex = 7733
    repform1.Show
    Screen.MousePointer = 0
    intervalMinutes = -1
End Sub

Private Sub MDITimerChk_Timer()
    intervalMinutes = intervalMinutes + 1
    DB.Execute "update User_log set idletime='" & val(intervalMinutes) & "' where moduleno='" & ModuleNo & "' and UserID='" & usrid & "' and logouttime is null and divcode='" & Divcode & "' and ipaddress='" & LocalIPAdd & "' and hostname='" & LocalHost & "'"
    
    If intervalMinutes = IdealMinutes And Autologoff = "Y" Then
        DB.Execute "update User_log set autologoff='Y',idletime='" & val(intervalMinutes) & "',logouttime=getdate() where moduleno='" & ModuleNo & "' and UserID='" & usrid & "' and logouttime is null and divcode='" & Divcode & "' and ipaddress='" & LocalIPAdd & "' and hostname='" & LocalHost & "'"
         Call DelSysUser
        MsgBox "Application going to be closed because of application is idle more than " & CStr(IdealMinutes) & " minutes ", vbInformation, head
       
        Unload Me
        passthru.Show
    End If
End Sub
Private Sub dis()

  Dim Rs As Recordset
  Dim I As Integer
  Dim menu_name As String

On Error GoTo LabCont
    On Error Resume Next
    Set Rs = New Recordset
    Rs.Open "SELECT MENU_NAME FROM USERLEVEL WHERE MODULE = " & ModuleNo & " AND DIVCODE = '" & Divcode & "' AND ULEVEL = " & ulevel & " AND (GROUP_FLG = 'N' OR FORM_FLG = 'N')", DB, adOpenStatic, adLockReadOnly
    Do While Not Rs.EOF
        If InStr(1, Rs("menu_name"), "_") > 0 Then
            If IsNumeric(Mid(Rs("menu_name"), InStrRev(Rs("menu_name"), "_") + 1, 3)) Then
                Me.Controls(Mid(Rs("menu_name"), 1, InStrRev(Rs("menu_name"), "_") - 1))(val(Mid(Rs("menu_name"), InStrRev(Rs("menu_name"), "_") + 1, 3))).Enabled = False
            Else
                Me.Controls(Rs("menu_name")).Enabled = False
            End If
        Else
            Me.Controls(Rs("menu_name")).Enabled = False
        End If
LabCont:
        Rs.MoveNext
    Loop
  
End Sub
