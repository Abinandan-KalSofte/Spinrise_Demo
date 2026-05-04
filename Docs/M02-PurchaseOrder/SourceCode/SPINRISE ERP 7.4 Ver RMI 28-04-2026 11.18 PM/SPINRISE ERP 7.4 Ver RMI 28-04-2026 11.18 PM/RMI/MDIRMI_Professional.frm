VERSION 5.00
Begin VB.MDIForm MDIRMI_Professional 
   BackColor       =   &H00808080&
   Caption         =   "Raw Material Inventory"
   ClientHeight    =   8265
   ClientLeft      =   165
   ClientTop       =   165
   ClientWidth     =   11175
   LinkTopic       =   "MDIForm1"
   MousePointer    =   1  'Arrow
   Picture         =   "MDIRMI_Professional.frx":0000
   StartUpPosition =   1  'CenterOwner
   WindowState     =   2  'Maximized
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
   End
   Begin VB.Menu mnuTran 
      Caption         =   "  &Transactions  "
      Begin VB.Menu mnusample 
         Caption         =   "&1. Sample"
      End
      Begin VB.Menu mnu_contract 
         Caption         =   "&2. Purchase Order"
         Begin VB.Menu MnuPurchaseOrder 
            Caption         =   "&a. New Order"
            Shortcut        =   {F2}
         End
         Begin VB.Menu mnuOrderCancel 
            Caption         =   "&b. Order Cancellation"
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
      End
      Begin VB.Menu mnu_lotbalmaint 
         Caption         =   "&4. Lot Bale Details"
         Shortcut        =   {F4}
      End
      Begin VB.Menu mnu_quality 
         Caption         =   "&5. Inspection && Quality Parameters"
         Shortcut        =   {F5}
      End
      Begin VB.Menu mnulotsetl 
         Caption         =   "&6. Lot Allowance"
      End
      Begin VB.Menu mnuSep 
         Caption         =   "-"
      End
      Begin VB.Menu mnucomissue 
         Caption         =   "&7. Issues"
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnuSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuadj 
         Caption         =   "&8. Adjustments"
      End
      Begin VB.Menu mnuPurchasebill 
         Caption         =   "&9. Purchase Bills Entry"
         Index           =   0
      End
      Begin VB.Menu mnucottonsales 
         Caption         =   "&a. Raw Material Sales Invoice"
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
      End
      Begin VB.Menu mnu_period 
         Caption         =   "&2. Periodicals"
         Begin VB.Menu mnu_qualityparamtr 
            Caption         =   "&a. Sample List"
         End
         Begin VB.Menu mnucontractRegister 
            Caption         =   "&b. Purchase Order List"
            Begin VB.Menu mnuOrderRegister 
               Caption         =   "&1. Order List"
            End
            Begin VB.Menu mnuOrderCancellationReport 
               Caption         =   "&2. Order Cancellation List"
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
            Caption         =   "&d. Arrival Register"
            Begin VB.Menu mnu_arr_datewise 
               Caption         =   "&1. Datewise"
            End
         End
         Begin VB.Menu mnu_receip_reg 
            Caption         =   "&e. Receipt Register"
            Begin VB.Menu mnu_datewiserep 
               Caption         =   "&1. Datewise"
            End
            Begin VB.Menu mnurectpty 
               Caption         =   "&2. Supplierwise"
            End
            Begin VB.Menu mnu_brokerwiserep 
               Caption         =   "&3. Agentwise"
               Index           =   0
            End
         End
         Begin VB.Menu mnuPLTBI 
            Caption         =   "&f. Pending Lots to be Inspected"
         End
         Begin VB.Menu mnu_cottonwgt 
            Caption         =   "&g. Raw Material Weight List"
         End
         Begin VB.Menu mnuInsQtyParamater 
            Caption         =   "&h. Quality Parameters"
         End
         Begin VB.Menu mnuSep12 
            Caption         =   "-"
            Index           =   0
         End
         Begin VB.Menu mnu_purchase_daybook 
            Caption         =   "&i.  Purchase Register"
         End
         Begin VB.Menu mnusep14 
            Caption         =   "-"
            Index           =   1
         End
         Begin VB.Menu mnu_issuereg 
            Caption         =   "&j. Issue  Register."
            Begin VB.Menu mniDatewise 
               Caption         =   "&1. Datewise"
            End
            Begin VB.Menu mnu_mixnowise 
               Caption         =   "&2. Mix No. wise"
            End
         End
         Begin VB.Menu mnusep15 
            Caption         =   "-"
            Index           =   0
         End
         Begin VB.Menu mnuRptAdjustRegister 
            Caption         =   "&k. Adjustment Register"
         End
         Begin VB.Menu mnu_stock_stat 
            Caption         =   "&l. Stock Statement"
            Begin VB.Menu mnu_lotwise 
               Caption         =   "&1. Lotwise"
            End
            Begin VB.Menu mnu_varietywise 
               Caption         =   "&2. Varietywise"
               Shortcut        =   {F8}
            End
         End
         Begin VB.Menu mnu_stockled 
            Caption         =   "&m. Stock Ledger"
            Begin VB.Menu mnustkleglot 
               Caption         =   "&1. Lotwise"
            End
         End
         Begin VB.Menu mnu_cottonbincard 
            Caption         =   "&n. Raw Material Bin Card"
            Shortcut        =   {F9}
         End
         Begin VB.Menu mnu_Cotton_Reconcilation 
            Caption         =   "&o. Lot wise Loss or Gain Report"
         End
         Begin VB.Menu mnumixingCost 
            Caption         =   "&p. Mixing Cost "
         End
         Begin VB.Menu mnusep17 
            Caption         =   "-"
         End
         Begin VB.Menu mnu_rejectedarr 
            Caption         =   "&q. Raw Material Sales Day Book"
            Index           =   1
         End
         Begin VB.Menu mmnusep15 
            Caption         =   "-"
            Index           =   1
         End
         Begin VB.Menu mnuVATREPORT 
            Caption         =   "&r. VAT Report"
            Begin VB.Menu mnRMIpurchase 
               Caption         =   "&1. Raw Material Purchase"
               Index           =   1
            End
            Begin VB.Menu mnuRMISalesVATReport 
               Caption         =   "&2. Raw Material Sales"
               Index           =   2
            End
         End
         Begin VB.Menu mnu_formiv 
            Caption         =   "&s.  Form IV"
         End
         Begin VB.Menu mnumakrecpt 
            Caption         =   "&t. Market Committee Report"
         End
         Begin VB.Menu mnuSep18 
            Caption         =   "-"
         End
         Begin VB.Menu mnuNotBillRegister 
            Caption         =   "&u. Pending Bill Receipt"
         End
      End
      Begin VB.Menu mnu_mis 
         Caption         =   "&3. M.I.S."
         Begin VB.Menu mnu_variety_purcha 
            Caption         =   "&a. Varietywise  Purchase"
         End
         Begin VB.Menu mnu_brokdate_purcha 
            Caption         =   "&b. Agentwise, Datewise Purchases"
         End
         Begin VB.Menu mnu_areaparty_purcha 
            Caption         =   "&c. Stationwise, Supplierwise Purchases"
         End
         Begin VB.Menu mnu_supass_record 
            Caption         =   "&d. Supplier Assessment Record"
         End
         Begin VB.Menu mnuStkpostvar 
            Caption         =   "&e. Stock Position Varietywise"
         End
         Begin VB.Menu mnuMatagestock 
            Caption         =   "&f. Raw Material Agewise Stock "
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
      End
      Begin VB.Menu mnulothistory 
         Caption         =   "&4. Lot History"
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
      Begin VB.Menu mnuvarstkchart 
         Caption         =   "&3. Varietywise Stock "
      End
   End
   Begin VB.Menu mnuSetup 
      Caption         =   "  &Setup  "
      Begin VB.Menu mnu_category 
         Caption         =   "&1. Category"
      End
      Begin VB.Menu mnu_variety 
         Caption         =   "&2. Variety"
      End
      Begin VB.Menu mnu_mixgroup 
         Caption         =   "&3. Mixing Group"
      End
      Begin VB.Menu mnu_count 
         Caption         =   "&4. Mixing Count"
      End
      Begin VB.Menu mnupurtype 
         Caption         =   "&5. Purchase Type"
      End
      Begin VB.Menu mnuweightcontrol 
         Caption         =   "&6. Weighment Controller"
      End
      Begin VB.Menu mnupmode 
         Caption         =   "&7. Mode of Payment"
      End
      Begin VB.Menu mnuGodown 
         Caption         =   "&8. Godown"
      End
      Begin VB.Menu mnu_area 
         Caption         =   "&9. Station"
      End
      Begin VB.Menu mnucar 
         Caption         =   "&a. Carrier"
      End
      Begin VB.Menu mnudeltype 
         Caption         =   "&b. Delivery Type"
      End
      Begin VB.Menu mniBillAdd 
         Caption         =   "&c. Billing Address"
      End
      Begin VB.Menu mniDeliveryAddress 
         Caption         =   "&d. Delivery Address"
      End
      Begin VB.Menu mnirateunit 
         Caption         =   "&e. Rate Unit"
      End
      Begin VB.Menu mnuoiltype 
         Caption         =   "&f. Oil Type"
      End
      Begin VB.Menu mnuissuetype 
         Caption         =   "&g. Issue type"
      End
      Begin VB.Menu mnutax 
         Caption         =   "&h. Tax"
      End
      Begin VB.Menu mnu_material 
         Caption         =   "&i. Material"
      End
      Begin VB.Menu mnuBank 
         Caption         =   "&j. Bank"
      End
      Begin VB.Menu mnuSeasonSetup 
         Caption         =   "&k. Season"
      End
      Begin VB.Menu mnuSetupGinner 
         Caption         =   "&l. Ginner"
      End
      Begin VB.Menu mnuFibreNorms 
         Caption         =   "&m. Fibre Norms"
      End
      Begin VB.Menu mnuSPOT 
         Caption         =   "&n. Spot Passing Person"
      End
   End
   Begin VB.Menu mnuHKEEP 
      Caption         =   "  &Housekeeping  "
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
      Begin VB.Menu mnuyearhk 
         Caption         =   "&4. Year End Process"
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
         Caption         =   "&5. Processing Date"
      End
      Begin VB.Menu b1 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_help 
         Caption         =   "&6. Help"
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
Attribute VB_Name = "MDIRMI_Professional"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Dim cnt, I, ss As Integer
Dim rs1 As New Recordset
Dim MnuName As String

Private Sub arrreg_Click()
    Call CheckNoofUsers
    Dim f As repform
    Screen.MousePointer = 11
    Repindex = 1001
    repform.Show
    Screen.MousePointer = 0

End Sub

Private Sub Godowntrans_Click()
    Call CheckNoofUsers
    Dim f As New godtrans
    Screen.MousePointer = 11
    GSNO = SlNofn("Godowntrans")
    f.Show
    Screen.MousePointer = 0

End Sub

Private Sub MDIForm_Load()

On Error GoTo MDIForm_Load_Error
Me.Caption = RTrim(Me.Caption) & " " & divabbr + Space(4) + Right(yfdate, 4) + "-" + Right(yldate, 4)
Me.Height = 7215
Me.Left = -45
Me.Width = 9705
Me.Top = 0
Me.WindowState = Normal
Set DB = New Connection
DB.Open connectstring
Call CustomisedReport

'Call RMIGlobalFunction.PPCUserLevel(RMImain, ModuleNo)

Call PPCUserLevel

Call assigntc
Dim RS As Recordset
  Dim I As Integer
  Dim menu_name As String
  
'  frmmdiname = Me
  Set RS = New Recordset
  RS.Open "SELECT MENU_NAME FROM USERLEVEL WHERE MODULE = " & ModuleNo & " AND DIVCODE = '" & Divcode & "' AND ULEVEL = " & ulevel & " AND (GROUP_FLG = 'N' OR FORM_FLG = 'N')", DB, adOpenStatic, adLockOptimistic
  If RS.RecordCount = 0 Then Exit Sub
    For I = 0 To Me.Controls.Count - 1
        If IsIndex(Me.Controls(I)) Then
            menu_name = Me.Controls(I).Name & "_" & Me.Controls(I).Index
        Else
            menu_name = Me.Controls(I).Name
        End If
    Set RS = New Recordset
    RS.Open "SELECT MENU_NAME FROM USERLEVEL WHERE menu_name = '" & menu_name & "' and MODULE = " & ModuleNo & " AND DIVCODE = '" & Divcode & "' AND ULEVEL = " & ulevel & " AND (GROUP_FLG = 'N' OR FORM_FLG = 'N')", DB, adOpenStatic, adLockOptimistic
    If RS.RecordCount > 0 Then
        Me.Controls(I).Enabled = False
    Else
        Me.Controls(I).Enabled = True
    End If
    Next
'sdfsdf
' MsgBox Me.Controls.Count

'Call RMIGlobalFunction.dis(RMImain, ModuleNo, Divcode, ulevel)
       
Exit Sub

MDIForm_Load_Error:
MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MDIForm_Load of Form RMImain"
End Sub

Private Sub mnBannariConRpt_Click(Index As Integer)

End Sub

Private Sub MDIForm_Unload(cancel As Integer)
Call DelSysUser
End Sub

Private Sub mni_wastemixstk_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
Repindex = 1011
RepMxiningStock.Show
Screen.MousePointer = 0
End Sub

Private Sub mniBillAdd_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnibilladd")
BillAddress.Show
Screen.MousePointer = 0
End Sub

Private Sub mnibroker_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnibroker")
BrokerMaster.Show
Screen.MousePointer = 0
End Sub

Private Sub mnicatwise_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
Repindex = 100
GSNO = SlNofn("mnicatwise")
Dim f As New datewisecottonreceiptregister
f.Show
Screen.MousePointer = 0
End Sub

Private Sub mniDatewise_Click()
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 19111
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mniDeliveryAddress_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mniDeliveryAddress")
Deladd.Show
Screen.MousePointer = 0
End Sub

Private Sub mniissreg_Click()
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
GSNO = SlNofn("mniissreg")
Repindex = 19
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mniitemledger_Click()
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 105
repform1.Show
Screen.MousePointer = 0

End Sub

Private Sub mnilotwiseissuereg_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
Repindex = 3435
GSNO = SlNofn("mnilotwiseissuereg")
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnimixingissue_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnimixingissue")
frmMixingIssue.Show
Screen.MousePointer = 0
End Sub

Private Sub mnimixingrep_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnimixingrep")
mixindex = 100
MixingRep.Show
Screen.MousePointer = 0
End Sub

Private Sub mnimixingstock_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
Repindex = 1010
RepMxiningStock.Show
Screen.MousePointer = 0
End Sub
Private Sub mniMixRegNew_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
mixindex = 999
MixingRep.Show
Screen.MousePointer = 0
End Sub

Private Sub mnirateunit_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnirateunit")
FrmRateunit.Show
Screen.MousePointer = 0
End Sub

Private Sub mnistkrcd_cnsmp_Click()
Call CheckNoofUsers
Dim f As repform1
GSNO = SlNofn("mnistkrcd_cnsmp")
Screen.MousePointer = 11
Repindex = 1432
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnRMIpurchase_Click(Index As Integer)
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 1190
    repform.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnu_area_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_area")
FrmArea.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_areaparty_purcha_Click()
Call CheckNoofUsers
Dim f As rmireports
Screen.MousePointer = 11
Repindex = 73
rmireports.Show
Screen.MousePointer = 0
End Sub


Private Sub mnu_arrival_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_arrival")
FrmArrival.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_blend_mix_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_blend_mix")
frmBlendMas.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_brokdate_purcha_Click()
Call CheckNoofUsers
Dim f As rmireports
Screen.MousePointer = 11
Repindex = 71
rmireports.Show
Screen.MousePointer = 0
End Sub


Private Sub mnu_brokerwiserep_Click(Index As Integer)
Call CheckNoofUsers
If Index = 0 Then
    Screen.MousePointer = 11
    Dim f As New cottonbrokerwise
    f.Show
    Screen.MousePointer = 0
ElseIf Index = 1 Then
    Screen.MousePointer = 11
    Repindex = 1190
    repform.Show
    Screen.MousePointer = 0
End If
End Sub

Private Sub mnu_category_Click()
    Call CheckNoofUsers
   Screen.MousePointer = 11
   GSNO = SlNofn("mnu_category")
   FrmCategory.Show
   Screen.MousePointer = 0
End Sub

Private Sub mnu_Cotton_Reconcilation_Click()
Call CheckNoofUsers
On Error GoTo mnu_Cotton_Reconcilation_Click_Error
Screen.MousePointer = 11
Call Cotton_Recon.Cotton_Reconcil
Screen.MousePointer = 0
Exit Sub
mnu_Cotton_Reconcilation_Click_Error:
MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure mnu_Cotton_Reconcilation_Click of Form RMImain"
Exit Sub
End Sub

Private Sub mnu_cottonbincard_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    frmRepCottonBinCard.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnu_cottonplan_Click()
    Call CheckNoofUsers
    GSNO = SlNofn("mnu_cottonplan")
    Screen.MousePointer = 11
    frm_cottonreqplan.Show
    Screen.MousePointer = 0
End Sub


Private Sub mnu_cottonreceivednote_Click(Index As Integer)
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
    

Exit Sub
mnu_cottonreceivednote_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure mnu_cottonreceivednote_Click of Form RMImain"
End Sub

Private Sub mnu_cottonwgt_Click()
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 66
repform1.DataCombo4.Visible = False
repform1.Label6.Visible = False
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_count_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_count")
FrmCount.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_countwi_Click()
Call CheckNoofUsers
Dim f As rmireports
Screen.MousePointer = 11
Repindex = 66
rmireports.Show
Screen.MousePointer = 0

End Sub

Private Sub mnu_datewiserep_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
    Repindex = 1190
    ReceiptRegister.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnu_exit_Click()
    Call DelSysUser
    End
End Sub

Private Sub mnu_formiv_Click()
Call CheckNoofUsers
Dim f As New repform
Screen.MousePointer = 11
Repindex = 17
repform.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_godownwise_Click()
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 32
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_help_Click()
Call CheckNoofUsers
Dim fso As New FileSystemObject

    If fso.FileExists(Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "User Manuals\RMI.pdf") = True Then
        Dim she As New Shell
            she.Open (Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "User Manuals\RMI.pdf")
    Else
        MsgBox "Invalid File " & Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "User Manuals\RMI.pdf", vbInformation, head
    End If

End Sub

Private Sub mnu_insurancereport_Click()
Call CheckNoofUsers
Dim f As New repform
Screen.MousePointer = 11
Repindex = 1117
repform.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_log_off_Click()
    Call DelSysUser
    Unload Me
    passthru.Show
End Sub

Private Sub mnu_lotbalmaint_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_lotbalmaint")
    Frmlotbale.Show
    Screen.MousePointer = 0
End Sub


Private Sub mnu_lotstokposi_Click()
    Call CheckNoofUsers
    Dim f As New repform1
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_lotstokposi")
    Repindex = 2
    repform1.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnu_lotweight_diff_Click()
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
GSNO = SlNofn("mnu_lotweight_diff")
Repindex = 79
On Error Resume Next
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_lotwise_Click()
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 28
On Error Resume Next
repform1.Show
Screen.MousePointer = 0
End Sub



Private Sub mnu_material_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("Mnu_material")
frmMaterial.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_mixgroup_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_mixgroup")
FrmMixgroup.Show
Screen.MousePointer = 0
End Sub
Private Sub mnu_mixnowise_Click()
Call CheckNoofUsers
Dim f As rmireports
Screen.MousePointer = 11
Repindex = 70
rmireports.Show
Screen.MousePointer = 0
End Sub


Private Sub mnu_orderconfirm_Click()
    Call CheckNoofUsers
    Repindex = 327
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnu_pendbrokerwise_Click()
Call CheckNoofUsers
Dim f As New pending_brokerwise
Repindex = 1236
Screen.MousePointer = 11
pending_brokerwise.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_pendcont_Click()
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
GSNO = SlNofn("mnu_pendcont")
Repindex = 3
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_pendinfdatewise_Click()
Call CheckNoofUsers

Dim f As New Pendingordersdatewise
Screen.MousePointer = 11
Repindex = 1234
Pendingordersdatewise.Show
Screen.MousePointer = 0
End Sub
Private Sub mnu_purchase_daybook_Click()
    Call CheckNoofUsers
    Dim f As repform1
    Screen.MousePointer = 11
    Repindex = 77
    repform1.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnu_quality_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnu_quality")
    FrmQualparam.Show
    Screen.MousePointer = 0
End Sub
Private Sub mnu_qualityparamtr_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3000
    frmReport.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnu_QueriesSub_Click(Index As Integer)
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
        Case 4
            Screen.MousePointer = 11
            Quality_Query.Show
            Screen.MousePointer = 0
    End Select

End Sub

Private Sub mnu_receipt_chart_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_receipt_chart")
Rpt_Supplierwise_Chart.Show
Screen.MousePointer = 0
End Sub


Private Sub mnu_rejectedarr_Click(Index As Integer)
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
End If
End Sub

Private Sub mnu_report_db_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_report_db")
frm_DBSetUp.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_stckstatement_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 0
    frm_Stockstmnt.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnu_supass_record_Click()
Call CheckNoofUsers
Dim f As rmireports2
Screen.MousePointer = 11
Repindex = 125
rmireports2.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_supplierwise_Click()
Call CheckNoofUsers
Dim f As New pending_supplierwise
Repindex = 1235
Screen.MousePointer = 11
pending_supplierwise.Show
Screen.MousePointer = 0

End Sub

Private Sub mnu_tranreceipt_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_tranreceipt")
frmtransrecp.Show
Screen.MousePointer = 0
End Sub


Private Sub mnu_variety_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnu_variety")
sCatType = "C"
FrmVariety.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_variety_purcha_Click()
Call CheckNoofUsers
Dim f As repform
Screen.MousePointer = 11
Repindex = 16
repform.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_varietywise_Click()
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 30
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_varityw_Click()
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 61
    rmireports.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuadj_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuadj")
    FrmStockAdj.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuAduitReport_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3002
    GSNO = SlNofn("mnuAduitReport")
    frmRptAduit.Show
    Screen.MousePointer = 0
End Sub


Private Sub mnuAgeing_Click(Index As Integer)
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
End Sub

Private Sub MnuAllIssRegister_Click()
    Call CheckNoofUsers
    Dim f As repform1
    Screen.MousePointer = 11
    Repindex = 191
    repform1.Show
    Screen.MousePointer = 0
    
End Sub

Private Sub mnuBalePressDetails_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    FrmBalePress.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuBank_Click()
    Call CheckNoofUsers
    Dim f As New frmbank
    Screen.MousePointer = 11
    GSNO = SlNofn("Mnubank")
    f.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuBannariConRpt_Click(Index As Integer)
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
End Sub

Private Sub mnuBannariCustReport_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuBannariCustReport")
    Repindex = 300000
    repform1.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuBannariReport_Click(Index As Integer)
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
End Sub

Private Sub mnuBInStockReport_Click()
    Call CheckNoofUsers
    Screen.MousePointer = vbHourglass
    GSNO = SlNofn("mnuBInStockReport")
    Repindex = 10066
    repform1.Show
    Screen.MousePointer = vbArrow
End Sub

Private Sub mnucar_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnucar")
    frmcar.Show
    Screen.MousePointer = 0
End Sub
Private Sub mnuChangePassword_Click()
    Call CheckNoofUsers
    Screen.MousePointer = vbHourglass
    GSNO = SlNofn("mnuChangePassword")
    FrmChangePassword.Show
    Screen.MousePointer = vbArrow
End Sub

Private Sub mnucomissue_Click()
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
    FrmissueKgs.Show
'End If
    Screen.MousePointer = 0
End Sub



Private Sub mnucompanyreport_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnucompanyreport")
frm_companyvarstock.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuConsumptionForecastRpt_Click()
Call CheckNoofUsers
GSNO = SlNofn("mnuConsumptionForecastRpt")
Screen.MousePointer = 11
ConsumptionForecast.Show
Screen.MousePointer = 0

End Sub

Private Sub mnucontacc_Click()
Call CheckNoofUsers
Dim f As New acceptance
Screen.MousePointer = 11
GSNO = SlNofn("mnucontacc")
acceptance.Show
Screen.MousePointer = 0
End Sub

Private Sub MNUCOTTONMISREPORT_Click(Index As Integer)
    Call CheckNoofUsers
    Repindex = 1
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
End Sub

Private Sub MnuCottonSales_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("MnuCottonSales")
'If Record_Exists("IG_INVTYPE WHERE DIVCODE = '01' AND INV_TYPE =(SELECT cottoninv_type FROM RM_PARAM) " & _
                "GROUP BY SALE_AC_L,SALE_AC_IS,TAX_AC,LSC_AC,CST_AC,BED_AC_L,BED_AC_IS,AED_AC_L,AED_AC_IS,CHARITY_AC_L,CHARITY_AC_IS,CESS_AC_L,CESS_AC_IS,FREIGHT_AC,INS_AC,RNDOFF_AC " & _
                "HAVING isnull(SALE_AC_L,'')<>'' AND isnull(SALE_AC_IS,'')<>'' AND isnull(TAX_AC,'')<>'' AND isnull(LSC_AC,'')<>'' AND isnull(CST_AC,'')<>'' AND isnull(BED_AC_L,'')<>'' AND isnull(BED_AC_IS,'')<>'' " & _
                "AND isnull(AED_AC_L,'')<>'' AND isnull(AED_AC_IS,'')<>'' AND isnull(CHARITY_AC_L,'')<>'' AND isnull(CHARITY_AC_IS,'')<>'' AND isnull(CESS_AC_L,'')<>'' AND isnull(CESS_AC_IS,'')<>'' AND isnull(FREIGHT_AC,'')<>'' AND isnull(INS_AC,'')<>'' AND isnull(RNDOFF_AC,'')<>''", "GLCODE not defined in Commercial Invoice Type") = False Then Screen.MousePointer = 0: Exit Sub
                
                
                
CottonInvoice.Show
Screen.MousePointer = 0
End Sub



Private Sub mnuCottonStk_Click()
    Call CheckNoofUsers
    Repindex = 3
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
End Sub

Private Sub MnuCottonStockStmt_Click(Index As Integer)
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
ElseIf Index = 3 Then
    Screen.MousePointer = 11
    Repindex = 1
    frmFormCReport.Show
    Screen.MousePointer = 0
ElseIf Index = 4 Then
    Screen.MousePointer = 11
    Repindex = 222
    frmFormCReport.Show
    Screen.MousePointer = 0
End If
End Sub
Private Sub MnuCottonStockStmtDe_Click(Index As Integer)
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 777777
    repform1.Show
    Screen.MousePointer = 0

End Sub

Private Sub mnucrd_Click()
    Call CheckNoofUsers
    Repindex = 201
    JURNL.Label1.Caption = "Credit/Debit Note"
    JURNL.Show
    JURNL.Caption = "Credit/Debit Note"

End Sub

Private Sub mnuDBReason_Click()
Call CheckNoofUsers
    Screen.MousePointer = 11
    Dim f As New frmDBType
    GSNO = SlNofn("mnuDBReason")
    frmDBType.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnudeltype_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Dim f As New frmDelivery
    GSNO = SlNofn("mnudeltype")
    frmDelivery.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuexceptionalreport_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuexceptionalreport")
ExceptionReport.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuFibreNorms_Click()
Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuFibreNorms")
    FrmFibreNorms.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuFrgtDet_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3330
    frmReport.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnugatepass_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuGodown")
FrmGatepass.Show
Screen.MousePointer = 0
End Sub

Private Sub mnugodown_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuGodown")
Frmgodown.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuGodownCapacityReport_Click()
    Call CheckNoofUsers
    Screen.MousePointer = vbHourglass
    GSNO = SlNofn("mnuGodownCapacityReport")
    Repindex = 10067
    repform1.Show
    Screen.MousePointer = vbArrow
End Sub

Private Sub mnuInspectionApproval_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuInspectionApproval")
    FrmQualityApproval.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuInsQtyParamater_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3001
    frmReport.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuissueReturnRegister_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3099
    GSNO = SlNofn("mnuissueReturnRegister")
    frmRptAduit.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuissuetype_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuissuetype")
frmissuetype.Show
Screen.MousePointer = 0
End Sub

Private Sub mnulothistory_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnulothistory")
FrmLotHist.Show
Screen.MousePointer = 0
End Sub

Private Sub mnulotsetl_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnulotsetl")
Dim f As New FRMLOSETL
f.Show
Screen.MousePointer = 0
End Sub


Private Sub MnuLotwiseIssRegister_Click()
Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 34351
    repform1.Show
    Screen.MousePointer = 0
End Sub
Private Sub mnumakrecpt_Click()
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 53
    rmireports.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuMISDashBoard_Click()
    Call CheckNoofUsers
    Dim f As frmDashBoard
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuMISDashBoard")
    frmDashBoard.Show
    Screen.MousePointer = 0
End Sub

Private Sub mNUmIXgRPsTOCK_Click()
    Call CheckNoofUsers
    Dim f As repform
    Screen.MousePointer = 11
    GSNO = SlNofn("mNUmIXgRPsTOCK")
    Repindex = 161
    repform.Show
    Screen.MousePointer = 0

End Sub

Private Sub mnuMatagestock_Click()
    Repindex = 2
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0

End Sub

Private Sub mnumixingCost_Click()
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 111
    rmireports.Show
    Screen.MousePointer = 0
End Sub

Private Sub MnuMixingExtimation_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("MnuMixingExtimation")
    MixEstimation.Show
    Screen.MousePointer = 0

End Sub
Private Sub mnuNotBillRegister_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3018
    frmRptAduit.Show
    Screen.MousePointer = 0
End Sub
'
Private Sub mnuoiltype_Click()
    Call CheckNoofUsers
    GSNO = SlNofn("mnuoiltype")
   FRMOIL.Show
End Sub

Private Sub mnuopen_Click()
    Call CheckNoofUsers
   Screen.MousePointer = 11
   GSNO = SlNofn("mnuopen")
   OpenStockEntry.Show
   Screen.MousePointer = 0
End Sub

Private Sub MnuOrderCancel_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("MnuOrderCancel")
ORDCANCEL.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuOrderCancellationReport_Click()
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
Repindex = 199
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuOrderRegister_Click()
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
Repindex = 228
repform1.Show
Screen.MousePointer = 0
End Sub
Private Sub mnuparam_Click()
    Call CheckNoofUsers
   GSNO = SlNofn("mnuparam")
   RMIParam.Show
   
End Sub

Private Sub mnuParamFA_Click()
    Call CheckNoofUsers
   Screen.MousePointer = 11
   GSNO = SlNofn("mnuparamfa")
   RMIParamFA.Show
   Screen.MousePointer = 0

End Sub

Private Sub mnuPartywise_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
Repindex = 15
repform.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuPendingBillEntry_Click(Index As Integer)
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 2228
    repform1.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuPLTBI_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3007
    frmReport.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnupmode_Click()
    Call CheckNoofUsers
   Screen.MousePointer = 11
   GSNO = SlNofn("mnupmode")
   frmpmode.Show
   Screen.MousePointer = 0
End Sub

Private Sub mnuPurBill_Click(Index As Integer)
''    GSNO = SlNofn("mnuPurBill" & "_" & Index)
''    If Index = 0 Then
''        Screen.MousePointer = 11
''        frmPurchaseBill.Show
''        Screen.MousePointer = 0
''    ElseIf Index = 1 Then
''        Screen.MousePointer = 11
''        frmPurchaseBillMultiple.Show
''        Screen.MousePointer = 0
''    End If
End Sub

Private Sub mnuPurchasebill_Click(Index As Integer)
    Call CheckNoofUsers
    GSNO = SlNofn("mnuPurchasebill" & "_" & Index)
    If Index = 0 Then
        Screen.MousePointer = 11
        frmPurchaseBillMultiple.Show
        Screen.MousePointer = 0
    ElseIf Index = 1 Then
        Screen.MousePointer = 11
        'FrmPurchaseBillFApproval.Show
        Repindex = 5
        FrmReceiptApprbef.Show
        Screen.MousePointer = 0
    ElseIf Index = 2 Then
        Screen.MousePointer = 11
        FrmIssue.Show
        Screen.MousePointer = 0
    End If
End Sub

Private Sub mnuPurchaseDayBookAbstract_Click(Index As Integer)
    Call CheckNoofUsers
    Dim f As repform1
    Screen.MousePointer = 11
    Repindex = 7777
    repform1.Show
    Screen.MousePointer = 0
End Sub

Private Sub MnuPurchaseOrder_Click()
Call CheckNoofUsers
Call OpenConnection
Screen.MousePointer = 11
Dim f As New FrmContractoutsam
GSNO = SlNofn("MnuPurchaseOrder")
'FrmContractoutsam.Show
RMIContractwithoutsample_withPR1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuPurchaseRegister_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3002
    frmReport.Show
    Screen.MousePointer = 0

End Sub

Private Sub mnupurtype_Click()
    Call CheckNoofUsers
   Screen.MousePointer = 11
   GSNO = SlNofn("mnupurtype")
   Frmptype.Show
   Screen.MousePointer = 0
End Sub

Private Sub mnuRawMaterial_Click()
    Call CheckNoofUsers
    Repindex = 325
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuRawMaterialLetter_Click()
    Call CheckNoofUsers
    Repindex = 326
    Screen.MousePointer = 11
    frmCtStkRMIWs.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnurectpty_Click()
Call CheckNoofUsers
Dim f As New COTTONRECEIPTSSUP
Screen.MousePointer = 11
COTTONRECEIPTSSUP.Show
Screen.MousePointer = 0
End Sub

Private Sub mnurepreuse_Click()
Call CheckNoofUsers
Dim f As repform
Screen.MousePointer = 11
Repindex = 150
repform.Show
Screen.MousePointer = 0
End Sub


Private Sub mnuRLIssueTypewise_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3009
    frmReport.Show
    Screen.MousePointer = 0

End Sub

Private Sub mnuRMISalesVATReport_Click(Index As Integer)

    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 1005
    repform.Show
    Screen.MousePointer = 0

End Sub

Private Sub mnuRptAdjustRegister_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    AdjustmentReport.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnusaleableissue_Click()
    Call CheckNoofUsers
    Screen.MousePointer = vbHourglass
    GSNO = SlNofn("mnusaleableissue")
    Wasteentry1.Show
    Screen.MousePointer = vbArrow
End Sub

Private Sub mnusample_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnusample")
    FRMSAMPLE1.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuSCMStockpostion_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 1
    frm_Stockstmnt.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuSeasonSetup_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuSeasonSetup")
    FrmSeason.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuSetupGinner_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    GSNO = SlNofn("mnuSetupGinner")
    frmGinner.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnusingbrok_Click()
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 774
    rmireports.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuSPOT_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    frmSPOTPasser.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuspreg_Click()
    Call CheckNoofUsers
    frmarrregsup.Show
End Sub
Private Sub mnustkleglot_Click()
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
Repindex = 522
repform1.Show
Screen.MousePointer = 0

End Sub


Private Sub mnuStkpostvar_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 1
    frm_Stockstmnt.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnustkqry_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    ExceptionReport.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnustkstation_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3006
    frmReport.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuststatus_Click()
    Call CheckNoofUsers
    Dim f As repform
    Screen.MousePointer = 11
    Repindex = 101
    repform.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnusupass_Click()
    Call CheckNoofUsers
    Dim f As rmireports
    Screen.MousePointer = 11
    Repindex = 74
    rmireports.Show
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
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
GSNO = SlNofn("mnuSupplierlotwise")
Repindex = 3004
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnutax_Click()
Call CheckNoofUsers
Screen.MousePointer = vbHourglass
GSNO = SlNofn("mnutax")
tax.Show
Screen.MousePointer = vbArrow
End Sub

Private Sub mnuTransConsupUpdation_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 112
    frmConsumptionUpdate.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnutransfer_Click()
    'Transfer Receipt
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 112
    rmireports.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnutransferissreg_Click()
Call CheckNoofUsers
Dim f As repform1
Screen.MousePointer = 11
Repindex = 1998
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnutrasStkUpdation_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 112
    frmStockUpdate.Show
    Screen.MousePointer = 0
End Sub

Private Sub mnuUNTOUCHLOTS_Click()
    Call CheckNoofUsers
    Screen.MousePointer = 11
    Repindex = 3008
    frmReport.Show
    Screen.MousePointer = 0
End Sub


Private Sub MnuUser_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
'SPGusers.Show
GSNO = SlNofn("mnuuser")
RMIUsersLevel.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuv_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuv")
MixVariety.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuvarchart_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuvarchart")
VarietywiseReceipt.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuvarietywise_Click(Index As Integer)
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
End Sub


Private Sub mnuvarisschart_Click(Index As Integer)
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
End Sub

Private Sub mnuvarmixchart_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuvarmixchart")
MixingCostChart.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuvarstkchart_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuvarstkchart")
Repindex = 30
repform1.Show
Repindex = 303
Screen.MousePointer = 0
End Sub

Private Sub mnuvarstkpos_Click()
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
GSNO = SlNofn("mnuvarstkpos")
Repindex = 999
repform1.Show
Screen.MousePointer = 0
End Sub

Private Sub mnuverietywise_Click()
Call CheckNoofUsers
Dim f As New repform1
Screen.MousePointer = 11
Repindex = 99
repform1.Show
Screen.MousePointer = 0

End Sub

Private Sub mnuwasteinvoiceprintRep_Click()
  Call CheckNoofUsers
  Dim frm As New WasteInvoiceRep1
  Screen.MousePointer = 11
  Repindex = 10
  GSNO = SlNofn("WasteInvoiceRep1")
  frm.Show
  Screen.MousePointer = 0
End Sub

Private Sub mnuwastetype_Click()
Call CheckNoofUsers
If Record_Exists("IG_tax", "Please Define the tax") = False Then Exit Sub
    If Record_Exists("ig_producttype", "Please Define the Producttype") = False Then Exit Sub
    
        If Record_Exists("ig_packtype", "Please Define the Packtype") = False Then Exit Sub

    Screen.MousePointer = 11
    GSNO = SlNofn("mnuwastetype")
    salewaste.Show
    Screen.MousePointer = 0

End Sub
Private Sub mnuweightcontrol_Click()
  Call CheckNoofUsers
  Dim frm As New Frmweighmentcontroller
  Screen.MousePointer = 11
  GSNO = SlNofn("mnuweightcontrol")
  frm.Show
  Screen.MousePointer = 0
End Sub

Private Sub mnuwissue_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("mnuwissue")
  Wasteissue.Show
  Screen.MousePointer = 0
End Sub


Private Sub mnuYearend_Click(Index As Integer)
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
End Sub

Private Sub mnuYearlyReport_Click()
Call CheckNoofUsers
Screen.MousePointer = vbHourglass
Repindex = 3003
frmRptAduit.Show
Screen.MousePointer = vbArrow
End Sub

Private Sub munIssueRequisitionSlip_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("munIssueRequisitionSlip")
FrmIssueRequisition.Show
Screen.MousePointer = 0
End Sub


Private Sub munwasteinvoice_Click()
  Call CheckNoofUsers
  Dim frm As New WasteInvoiceRep1
  Screen.MousePointer = 11
  Repindex = 15
  GSNO = SlNofn("WasteInvoiceRep1")
  frm.Show
  Screen.MousePointer = 0
End Sub

Private Sub munwastestock_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("munwastestock")
Openwastent.Show
Screen.MousePointer = 0
End Sub

Private Sub processdate_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
GSNO = SlNofn("processdate")
pdate1.Show
Screen.MousePointer = 0
End Sub
Private Sub mnu_arr_brokerwise_Click()
Call CheckNoofUsers
Frmbrkwisearrreg.Show
End Sub

Private Sub mnu_arr_datewise_Click()
Call CheckNoofUsers
Call CheckNoofUsers
Dim f As repform
Screen.MousePointer = 11
Repindex = 13
repform.Show
Screen.MousePointer = 0
End Sub

Private Sub mnu_arr_varietywise_Click()
Call CheckNoofUsers
Screen.MousePointer = 11
frmcarrierwise.Show
Screen.MousePointer = 0
End Sub


Public Function SlNofn(MenuName As String)
    Call CheckNoofUsers
    Dim SerialNors As New Recordset
    Set SerialNors = New Recordset
    SerialNors.Open "select SNo from USERLEVEL where Menu_Name = '" & MenuName & "' and DIVCODE = '" & Divcode & "' AND MODULE =" & ModuleNo & " and  ULEVEL = " & ulevel & " ", DB, adOpenStatic
    If SerialNors.RecordCount > 0 Then
        SlNofn = SerialNors("SNo")
    Else
        SlNofn = 0
    End If
    Call CheckNoofUsers
End Function

Public Sub CustomisedReport()
    Call CheckNoofUsers
    Set RS = New Recordset
    RS.Open "Select Cust_ID From pp_Divmas where Divcode='" & Divcode & "'", DB, adOpenStatic
End Sub

Public Sub PPCUserLevel()
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
            FrmName = Trim(Me.Controls(I).Caption)
            If FrmName <> "-" And FrmName <> "" And Me.Controls(I).Visible = True Then
                If FrmName = "&Exit" Then
                    Exit For
                End If
                cnt = cnt + 1
            End If
        End If
    Next I
    
    
    Set rs1 = New Recordset
    rs1.Open "Select * from ModuleMenu Where Module = " & ModuleNo & "", DB, adOpenStatic, adLockReadOnly
    
    If Not rs1.EOF Then
        
        If rs1.RecordCount <> cnt Then
            GoTo Insert
        Else
            Exit Sub
        End If
    Else
        GoTo Insert
    End If
    
Insert:
    SqlIns = ""
    
    SqlIns = "Delete from ModuleMenu Where Module = " & ModuleNo
    DB.Execute SqlIns
    
    SqlIns = ""
    
    For I = 0 To Me.Controls.Count - 1
        If TypeOf Me.Controls(I) Is Menu Then
        
            Set MnuCtrl = Me.Controls(I)
            
            FrmName = Mid(Trim(MnuCtrl.Caption), 2, Len(Trim(MnuCtrl.Caption)))
            
            AdmFlg = "Y"
            
            If FrmName = "Masters" Or FrmName = "Transactions" Or FrmName = "Reports" _
                Or FrmName = "Queries" Or FrmName = "Views" Or FrmName = "Setup" Or FrmName = "HouseKeeping" _
                Or FrmName = "Windows" Or FrmName = "Exit" Then
                
                grpname = "Groups"
                TmpGrp = FrmName
                
                AdmFlg = "N"
                GrpNo = GrpNo + 1
            Else
                grpname = TmpGrp
                
                If grpname = "Reports" Or grpname = "Queries" Or grpname = "Views" Or grpname = "HouseKeeping" _
                    Or grpname = "Windows" Or grpname = "Exit" Then
                        
                    AdmFlg = "N"
                        
                End If
                
            End If
            
                        
            If InStr(1, FrmName, " ", vbTextCompare) > 0 Then
                FrmName = Mid(FrmName, InStr(1, FrmName, " ", vbTextCompare))
            End If
            
            FrmName = Trim(FrmName)
            MnuName = Me.Controls(I).Name
            
            
            If MnuName = "MnuPurchaseOrder" Or MnuName = "mnuOrderCancel" Then
                grpname = "Purchase Order"
            End If
                        
            If MnuName = "mnu_arrival" Or MnuName = "mnu_tranreceipt" Or MnuName = "mnuBalePressDetails" Then
                grpname = "Arrival"
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
                grpname = "Arrival Register"
            End If
            
            If MnuName = "mnu_datewiserep" Or MnuName = "mnuverietywise" Or MnuName = "mnurectpty" Or MnuName = "mnu_brokerwiserep" Then
                grpname = "Receipt Register"
            End If
            
            If MnuName = "mniDatewise" Or MnuName = "mnu_mixnowise" Then
                grpname = "Issue  Register."
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
            
N:
        End If
    Next I
    
        DB.Execute ("UPDATE a SET  a.sno=b.sno FROM USERLEVEL a, MODULEMENU b where a.module=b.module and " & _
                " a.menu_name=b.menu_name and a.module=" & ModuleNo & " and a.Divcode='" & Divcode & "'")

    
    
Exit Sub
PPCUserLevel_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure PPCUserLevel of Form FrmMDI", vbInformation, head
End Sub

Public Sub NEWFORM3(tol As Object, no As Integer)
    Call CheckNoofUsers
    On Error Resume Next

    If no <> 0 Then

        'DB.Open cnstr

        Dim RS As New Recordset
        RS.Open "SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & Divcode & "' AND MODULE = " & ModuleNo & " AND ULEVEL = " & ulevel & " AND SNO = " & no, DB

        If RS("ADD_FLG") = "Y" Then tol(0).Enabled = True Else tol(0).Enabled = False
        If RS("MOD_FLG") = "Y" Then tol(1).Enabled = True Else tol(1).Enabled = False
        If RS("DEL_FLG") = "Y" Then tol(2).Enabled = True Else tol(2).Enabled = False

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

End Sub


