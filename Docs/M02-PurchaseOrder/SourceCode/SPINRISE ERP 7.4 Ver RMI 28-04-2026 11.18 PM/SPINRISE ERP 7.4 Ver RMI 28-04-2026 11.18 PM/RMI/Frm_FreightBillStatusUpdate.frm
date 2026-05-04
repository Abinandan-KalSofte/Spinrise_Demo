VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Begin VB.Form Frm_FreightBillStatusUpdate 
   Caption         =   "Freight Bill Entry Status"
   ClientHeight    =   7830
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11400
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7830
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin FPSpreadADO.fpSpread spdVar 
      Height          =   6420
      Left            =   120
      TabIndex        =   9
      Top             =   2400
      Width           =   19650
      _Version        =   524288
      _ExtentX        =   34660
      _ExtentY        =   11324
      _StockProps     =   64
      ArrowsExitEditMode=   -1  'True
      BackColorStyle  =   1
      DisplayRowHeaders=   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MaxCols         =   6
      MaxRows         =   0
      ProcessTab      =   -1  'True
      RowHeaderDisplay=   0
      ScrollBarExtMode=   -1  'True
      SpreadDesigner  =   "Frm_FreightBillStatusUpdate.frx":0000
      AppearanceStyle =   0
   End
   Begin VB.Frame Frame1 
      Enabled         =   0   'False
      Height          =   1365
      Left            =   120
      TabIndex        =   29
      Top             =   960
      Width           =   9915
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   2280
         TabIndex        =   1
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   7
         Left            =   3720
         Locked          =   -1  'True
         MaxLength       =   50
         TabIndex        =   35
         TabStop         =   0   'False
         Top             =   600
         Width           =   3720
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Show"
         Height          =   390
         Left            =   7560
         TabIndex        =   30
         Top             =   510
         Width           =   2190
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "Billdt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   1
         Left            =   2295
         TabIndex        =   31
         Top             =   975
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
         ForeColor       =   0
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         DataField       =   "Billdt"
         Height          =   315
         Left            =   2280
         TabIndex        =   32
         TabStop         =   0   'False
         Top             =   960
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Format          =   155910145
         CurrentDate     =   36218
      End
      Begin MSComCtl2.DTPicker DTPicker3 
         DataField       =   "Billdt"
         Height          =   315
         Left            =   2280
         TabIndex        =   0
         TabStop         =   0   'False
         Top             =   240
         Width           =   1320
         _ExtentX        =   2328
         _ExtentY        =   556
         _Version        =   393216
         Format          =   155910145
         CurrentDate     =   36218
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Supplier "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Left            =   240
         TabIndex        =   36
         Top             =   600
         Width           =   765
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   1
         Left            =   240
         TabIndex        =   34
         Top             =   285
         Width           =   450
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Paid on Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   0
         Left            =   240
         TabIndex        =   33
         Top             =   1005
         Width           =   1230
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   10
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightBillStatusUpdate.frx":0499
         Height          =   510
         Index           =   8
         Left            =   3750
         Picture         =   "Frm_FreightBillStatusUpdate.frx":08E3
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Last Record (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightBillStatusUpdate.frx":0C45
         Height          =   510
         Index           =   10
         Left            =   1155
         Picture         =   "Frm_FreightBillStatusUpdate.frx":0F4F
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightBillStatusUpdate.frx":12CB
         Height          =   510
         Index           =   9
         Left            =   630
         Picture         =   "Frm_FreightBillStatusUpdate.frx":15D5
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightBillStatusUpdate.frx":1977
         Height          =   510
         Index           =   11
         Left            =   1665
         Picture         =   "Frm_FreightBillStatusUpdate.frx":1DC1
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightBillStatusUpdate.frx":2156
         Height          =   510
         Index           =   7
         Left            =   3225
         Picture         =   "Frm_FreightBillStatusUpdate.frx":25A0
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightBillStatusUpdate.frx":28F0
         Height          =   660
         Index           =   111
         Left            =   7080
         Picture         =   "Frm_FreightBillStatusUpdate.frx":2BFA
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   0
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightBillStatusUpdate.frx":2F74
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   10155
         Picture         =   "Frm_FreightBillStatusUpdate.frx":327E
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightBillStatusUpdate.frx":361A
         Height          =   510
         Index           =   5
         Left            =   2190
         Picture         =   "Frm_FreightBillStatusUpdate.frx":3A64
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightBillStatusUpdate.frx":3DC9
         Height          =   510
         Index           =   6
         Left            =   2700
         Picture         =   "Frm_FreightBillStatusUpdate.frx":4213
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightBillStatusUpdate.frx":4560
         Height          =   510
         Index           =   3
         Left            =   4290
         Picture         =   "Frm_FreightBillStatusUpdate.frx":486A
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Find (Ctrl R)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   10695
         Picture         =   "Frm_FreightBillStatusUpdate.frx":4BFF
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "List (Ctrl L)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5280
         Picture         =   "Frm_FreightBillStatusUpdate.frx":4F96
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Print (Ctrl P)"
         Top             =   90
         Visible         =   0   'False
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightBillStatusUpdate.frx":53D8
         Height          =   510
         Index           =   1
         Left            =   0
         Picture         =   "Frm_FreightBillStatusUpdate.frx":56E2
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   645
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   6045
         TabIndex        =   25
         Top             =   240
         Width           =   840
      End
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "d MMMM yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   8250
         TabIndex        =   24
         Top             =   255
         Width           =   630
      End
   End
   Begin VB.Frame FrameSelection 
      Enabled         =   0   'False
      Height          =   645
      Left            =   405
      TabIndex        =   3
      Top             =   2295
      Visible         =   0   'False
      Width           =   10965
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   1500
         TabIndex        =   8
         Top             =   195
         Width           =   1260
         _ExtentX        =   2223
         _ExtentY        =   609
         _Version        =   393216
         Format          =   157155329
         CurrentDate     =   39980
      End
      Begin VB.CheckBox ChkByPass 
         Caption         =   "ByPass All"
         Height          =   285
         Left            =   7065
         TabIndex        =   6
         Top             =   240
         Width           =   1125
      End
      Begin VB.CommandButton CmdCancel 
         Caption         =   "Cancel"
         Height          =   390
         Left            =   9540
         TabIndex        =   5
         Top             =   165
         Width           =   1125
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "Show"
         Height          =   390
         Left            =   8310
         TabIndex        =   4
         Top             =   165
         Width           =   1125
      End
      Begin VB.Label Label1 
         Caption         =   "Date"
         Height          =   255
         Left            =   510
         TabIndex        =   7
         Top             =   270
         Width           =   675
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   26
      Top             =   7530
      Width           =   11400
      _ExtentX        =   20108
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   14993
            MinWidth        =   14993
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   2117
            MinWidth        =   2117
            TextSave        =   "07/03/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "03:05 PM"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "User Name"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   7
      Left            =   8430
      TabIndex        =   28
      Top             =   780
      Width           =   915
   End
   Begin VB.Label LblUser 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "LblUser"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00009F00&
      Height          =   195
      Left            =   9870
      TabIndex        =   27
      Top             =   810
      Width           =   1860
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Freight Bill Entry Status"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   345
      Left            =   165
      TabIndex        =   2
      Top             =   540
      Width           =   3150
   End
End
Attribute VB_Name = "Frm_FreightBillStatusUpdate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rsQry As Recordset
Dim RSCHECK As Recordset
Dim sQry As String
Dim DB As New Connection
Dim frmOption As Integer

Dim Opt                 As String
Dim iID                 As Integer
Dim bolCheck            As Boolean
Dim iCnt                As Integer

Const iCheckBox       As Integer = 1
Const Idocno          As Integer = 2
Const IDocDate           As Integer = 3
Const ITransporter      As Integer = 4
Const ICarrier  As Integer = 5
Const ISlcode         As Integer = 6
Const iCname         As Integer = 7
Const IBillNo         As Integer = 8
Const IBilldate           As Integer = 9
Const IPJNO            As Integer = 10
Const IPJDate    As Integer = 11
Const IPlant          As Integer = 12

Const IBales       As Integer = 13
Const ITotKGS   As Integer = 14
'Const iitemcode      As Integer = 13
'Const iitemname      As Integer = 14
'Const iqty           As Integer = 15
'Const iRate          As Integer = 16
'Const iValue         As Integer = 17
Const IInvValue        As Integer = 15
Const IContainerNos        As Integer = 16

Const IFreightAmtBill     As Integer = 17
Const IFreightAmtMill             As Integer = 18
Const IFreightAmtApproved           As Integer = 19
Const ICGSTAMT        As Integer = 20
Const ISGSTAMT    As Integer = 21
Const IIGSTAMT As Integer = 22
Const ItotalAmt  As Integer = 23
Public Property Let frmOpt(frmOpt As Integer)
    frmOption = frmOpt
End Property


Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Select Case Index
Case 1
        
'         If Stock_close = False Then
'                MsgBox "Please close the stock before proceed.. ", vbInformation + vbOKOnly, head
'                Exit Sub
'         End If
 
    desc.Caption = "Modification"
    Opt = "mod"
    FrameSelection.Enabled = True
    
    Call adddelmod(BUTTON)
    DTPicker2.value = pdate
    MaskEdBox1(1).Text = "__/__/____"
    Text1.Text = ""
    txtfields(7).Text = ""
'     Set rst = New Recordset
'     rst.Open "select Code,Description from ig_machine where Code in (select machine from tempMachine" & TLocalIPAdd & " ) ", DB, adOpenStatic, adLockReadOnly
'     CmbDiv.clear
'      CmbDiv.AddItem "A---ALL"
'    If Not rst.EOF Then
'        While Not rst.EOF
'            CmbDiv.AddItem rst("Code") & "---" & rst("Description")
'            rst.MoveNext
'        Wend
'
'        CmbDiv.ListIndex = 0
'    End If

    Frame1.Enabled = True
    Text1.Enabled = True

Text1.SetFocus
Case 9
   Dim chk As Integer
   
   If Opt = "mod" Then
   
   If IsDate(MaskEdBox1(1).Text) = False Then
    MsgBox "Enter Paid Date ", vbInformation, head
    MaskEdBox1(1).SetFocus
    Exit Sub
   End If
   
     DB.BeginTrans
     With spdVar
        chk = 0
        For RW = 1 To .MaxRows
         .Row = RW
            
         chkval = val(GetText(spdVar, iCheckBox, RW))
            
        If chkval = 1 Then
                         
               
                DB.Execute ("UPDATE RM_FreightBillHD SET PaidDate='" & Format(MaskEdBox1(1).Text, "yyyy-MM-dd") & "'where  docno = " & val(GetText(spdVar, Idocno, RW)) & " and Divcode='" & Divcode & "' and docdt = '" & Format(Trim(GetText(spdVar, IDocDate, RW)), "yyyy-mm-dd") & "'")
                           ' " Porddt = '" & Format(Trim(GetText(spdVar, iPodt, RW)), "yyyy-mm-dd") & "' AND divcode ='" & divcode & "' AND pordsno=" & (GetText(spdVar, iposno, RW)) & " AND ItemCode='" & (GetText(spdVar, ipoCode, RW)) & "'")
             Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Freight Bill Status"
                            TrnLog("Trans_Mod") = "Add"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                
                            'TrnLog("slcode") = Trim(GetText(spdVar, ISlcode, RW))
                      
                          '  TrnLog("tc") = val(GetText(spdVar, iTC, RW))
                  
                            If IsDate(Trim(GetText(spdVar, IBilldate, RW))) = True Then
                                TrnLog("billdate") = Format(Trim(GetText(spdVar, IBilldate, RW)), "yyyy-mm-dd")
                            End If
                            TrnLog("billno") = Trim(GetText(spdVar, IBillNo, RW))
                         
                            TrnLog("AssAmount") = val(GetText(spdVar, ItotalAmt, RW))
                            TrnLog("netwt") = val(GetText(spdVar, ITotKGS, RW))
                            TrnLog("docno") = val(GetText(spdVar, Idocno, RW))
                            If IsDate(Trim(GetText(spdVar, IDocDate, RW))) = True Then
                                TrnLog("docdt") = Format(Trim(GetText(spdVar, IDocDate, RW)), "yyyy-mm-dd")
                            End If
                            TrnLog.UpdateBatch adAffectAllChapters
             chk = chk + 1
        End If

        Next

        If chk > 0 Then
            DB.CommitTrans
            MsgBox "Freight Bill Status updated Successfully", vbInformation, head
        Else
            MsgBox "Select atleast one item to complete the transaction", vbInformation, head
            DB.RollbackTrans
        End If
        
    End With
   End If
   
   If chk > 0 Then
    Call BUTTON_Click(10)
   End If
Case 10
   Call SetGridHead(0)
   Opt = "Qry"
   desc.Caption = "Query"
   Frame1.Enabled = False
   Call NEWFORM1(BUTTON, GSNO)
   FrameSelection.Enabled = True
Case 11
        Unload Me
End Select
Exit Sub
BUTTON_Click_Error:
If Opt = "mod" Then DB.RollbackTrans
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Frm"
End Sub
Private Sub SetGridHead(totrow As Integer)
On Error GoTo SetGridHead_Error

    SetSpreadCol spdVar, iCheckBox, " ", CellTypeCheckBox, 2, , , False
    
        spdVar.UserColAction = UserColActionSort
        SetSpreadCol spdVar, ITransporter, "Trnasporter", CellTypeStaticText, 20
        SetSpreadCol spdVar, ICarrier, "Carrier", CellTypeStaticText, 20
        SetSpreadCol spdVar, Idocno, "Doc.No.", CellTypeStaticText, 6
        SetSpreadCol spdVar, IDocDate, "Doc. Date", CellTypeStaticText, 8
        SetSpreadCol spdVar, ISlcode, "Code", CellTypeStaticText, 7, , True, True
        SetSpreadCol spdVar, iCname, "Supplier Name", CellTypeStaticText, 20
        SetSpreadCol spdVar, IBillNo, "Bill No.", CellTypeStaticText, 12
        SetSpreadCol spdVar, IPJNO, "PJV Nos.", CellTypeStaticText, 10
        SetSpreadCol spdVar, IBilldate, "Bill Date", CellTypeStaticText, 12
        SetSpreadCol spdVar, IPJDate, "PJV Date", CellTypeStaticText, 10
        SetSpreadCol spdVar, IPlant, "Plant", CellTypeStaticText, 12
        SetSpreadCol spdVar, IBales, "Bales", CellTypeStaticText, 5, 0
        SetSpreadCol spdVar, ITotKGS, "Total Kgs", CellTypeNumber, 10, 3, False, False
        SetSpreadCol spdVar, IContainerNos, "Container No.", CellTypeStaticText, 15
        SetSpreadCol spdVar, IInvValue, "Invoice Amount ", CellTypeNumber, 8, 2
        SetSpreadCol spdVar, IFreightAmtBill, "Freight Bill Amt.", CellTypeNumber, 8, 2
        SetSpreadCol spdVar, IFreightAmtMill, "Freight Mill Amt.", CellTypeNumber, 8, 2
        SetSpreadCol spdVar, IFreightAmtApproved, "Freight Approved Amt", CellTypeNumber, 8, 2
        SetSpreadCol spdVar, ICGSTAMT, "CGST Amt.", CellTypeNumber, 8, 2
        SetSpreadCol spdVar, ISGSTAMT, "SGST Amt.", CellTypeNumber, 8, 2
        SetSpreadCol spdVar, IIGSTAMT, "IGST Amt.", CellTypeNumber, 8, 2
        SetSpreadCol spdVar, ItotalAmt, "Total Amount", CellTypeNumber, 10, 2
         
         
         
         
        spdVar.MaxCols = 23
  
    
    spdVar.Col = 0
    spdVar.Lock = False
    
    With spdVar
        .MaxRows = totrow
        .ColsFrozen = 6
    End With
    

    Exit Sub
SetGridHead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetGridHead of Form Frm"
End Sub

Private Sub cmdCancel_Click()
Call BUTTON_Click(10)
End Sub

Private Sub Command1_Click()
  Call Billdisplay
End Sub

Private Sub DTPicker2_CloseUp()
MaskEdBox1(1).Text = Format(DTPicker2.value, "dd/MM/yyyy")
MaskEdBox1(1).SetFocus

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
If KeyCode = vbKeyA And Shift = 2 Then
   If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)    ''Modify
   End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)    ''Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbYes Then Call BUTTON_Click(11)          ''Exit
        Call BUTTON_Click(10)    ''Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        If MsgBox("Do you want to Exit?", vbYesNo, head) = vbYes Then Call BUTTON_Click(11)          ''Exit
    End If
ElseIf KeyCode = 27 Then
 If MsgBox("Do you want to Quit?", vbYesNo, head) = vbYes Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
 End If
End If
    
  
Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmIndentDirectorAppr"

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

'     stbar.Panels(1).Text = SbMsg
     stbar.Panels(1).Text = head
    If frmOption = 1 Then
        heading.Caption = "Purchase Order Fore Closure"
        Me.Caption = "Purchase Order Fore Closure"
    ElseIf frmOption = 2 Then
        heading.Caption = "Purchase Requisition Fore Closure"
         Me.Caption = "Purchase Requisition Fore Closure"
    End If
    
    Opt = "Qry"
    desc.Caption = "Query"
    DATLAB.Caption = Format(pdate, "dd/mm/yyyy")
    ChkByPass.value = 0
    DTPicker3.value = Format(pdate, "dd/mm/yyyy")
    
    Set DB = New ADODB.Connection
    DB.ConnectionTimeout = 1200
    DB.Open connectstring
    DB.CommandTimeout = 1200
    
    Call SetGridHead(0)
    desc.Caption = "Modification"
    Opt = "mod"
    FrameSelection.Enabled = True
    Call adddelmod(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
  
    'LblDivision.Caption = divnameunit
    LblUser.Caption = usrid
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Frm"
End Sub

Private Sub Billdisplay()
Dim iRow As Integer
On Error GoTo Lotdisplay_Error
        sQry = ""
        sQry = "exec KSP_FreightpaidPending '" & Divcode & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "','" & Text1.Text & "'"
        
        Set rsQry = New Recordset
        rsQry.Open sQry, DB, adOpenStatic, adLockReadOnly
        
        Call SetGridHead(rsQry.RecordCount)
        iRow = 1
        
        
        If rsQry.RecordCount > 0 Then rsQry.MoveFirst
        While rsQry.EOF = False
            spdVar.SetText ITransporter, iRow, rsQry("Transpoter")
            spdVar.SetText ICarrier, iRow, rsQry("carrier")
            spdVar.SetText Idocno, iRow, rsQry("docno")
            spdVar.SetText IDocDate, iRow, rsQry("docdt")
            spdVar.SetText ISlcode, iRow, rsQry("Supplier")
            spdVar.SetText iCname, iRow, rsQry("Supplier")
            spdVar.SetText IBillNo, iRow, rsQry("Billno")
            spdVar.SetText IBilldate, iRow, rsQry("billdt")
            spdVar.SetText IPJNO, iRow, rsQry("PJVNO")
            spdVar.SetText IPlant, iRow, rsQry("plname")
            spdVar.SetText IPJDate, iRow, rsQry("PJVDT")
            spdVar.SetText IBales, iRow, rsQry("Bales")
            spdVar.SetText ITotKGS, iRow, rsQry("TotalKgs")
            spdVar.SetText IContainerNos, iRow, rsQry("lrno")
            spdVar.SetText IInvValue, iRow, rsQry("inv_Amt")
            spdVar.SetText IFreightAmtBill, iRow, rsQry("Freightbill_Amt")
            spdVar.SetText IFreightAmtMill, iRow, rsQry("FreightMill_Amt")
            spdVar.SetText IFreightAmtApproved, iRow, rsQry("FreightApp_Amt")
            spdVar.SetText ICGSTAMT, iRow, rsQry("CGSTAmt")
            spdVar.SetText ISGSTAMT, iRow, rsQry("sGSTAmt")
            spdVar.SetText IIGSTAMT, iRow, rsQry("iGSTAmt")
            spdVar.SetText ItotalAmt, iRow, rsQry("Total_Amt")
            iRow = iRow + 1
            rsQry.MoveNext
        Wend
        
    
    
    
Exit Sub
Lotdisplay_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lotdisplay of Form Frmlotbale", vbInformation, head
End Sub



Private Function getMasterName(Fieldname As String, TableName As String, FieldCode As String, Searchcode As String) As String
   On Error GoTo getMasterName_Error

 Set RSCHECK = New Recordset
 sQry = " Select " & Trim(Fieldname) & " as Result From " & Trim(TableName) & " Where " & Trim(FieldCode) & " ='" & Trim(Searchcode) & "'"
 RSCHECK.Open sQry, DB, adOpenStatic, adLockReadOnly
 If RSCHECK.EOF = False Then
    getMasterName = RSCHECK("Result")
 Else
    getMasterName = ""
 End If
 RSCHECK.Close

   On Error GoTo 0
   Exit Function

getMasterName_Error:

 MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure getMasterName of Form Frmorderapproval"
 
End Function
Public Function GetText(Spd As fpSpread, ByVal iCOL As Integer, ByVal iRow As Integer) As String
On Error GoTo GetText_Error
   With Spd
        .Col = iCOL: .Row = iRow: GetText = .Text
   End With
Exit Function
GetText_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetText of Module Invy"
End Function

Public Sub SetSpreadCol(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal IsLock As Boolean = True)
On Error GoTo SetSpreadCol_Error
    With Spd
        .Col = Col
        .Row = -1: .celltype = celltype
        If iColWth <> 0 Then .ColWidth(Col) = iColWth
        If HideCol = True Then
          .ColHidden = True
        Else
          .ColHidden = False
        End If
        .Protect = True
        If IsLock = True Then .Lock = True Else .Lock = False
        If celltype = CellTypeNumber And DecWth > 0 Then .TypeNumberDecPlaces = DecWth
        .ColHeaderRows = 1
        .SetText Col, 0, head
        
    End With
Exit Sub
SetSpreadCol_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetSpreadCol of Module Invy"
End Sub

Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)

End Sub



Private Sub Text1_Validate(Cancel As Boolean)
                    stbar.Panels(2).Text = "Select  Delivery  from the List"
                    LookUp.Clear = True
                    
                   LookUp.query = " select 'ALL' Slcode ,' ALL' Customer union all select distinct a.Slcode,Slname 'Customer' from fa_slmas a inner join RM_FreightBillHD b on a.slcode=b.slcode where b.PaidDate is null order by a.slcode "
                    LookUp.DefCol = "Customer"
                    LookUp.Caption = "Customer Listing"
                    LookUp.ALIGN = "2000,5000"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        Text1.Text = LookUp.Fields(0)
                        txtfields(7).Text = LookUp.Fields(1)
                        
                        Call Billdisplay
                        LookUp.Clear = True
                       '
                    Else
                        Call BUTTON_Click(10)
                        Cancel = True
                    End If
End Sub
