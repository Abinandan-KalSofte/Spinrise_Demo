VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmFibreRateApproval 
   Caption         =   "Fibre Rate Approval"
   ClientHeight    =   7830
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11880
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7830
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   10800
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.PictureBox FrameDiscType 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      DrawMode        =   1  'Blackness
      DrawWidth       =   2
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      ForeColor       =   &H80000008&
      Height          =   6555
      Left            =   4920
      ScaleHeight     =   6525
      ScaleWidth      =   8610
      TabIndex        =   30
      Top             =   1680
      Visible         =   0   'False
      Width           =   8640
      Begin VB.CommandButton Command2 
         BackColor       =   &H00FFC0FF&
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   4620
         MaskColor       =   &H00FFFF80&
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   6000
         UseMaskColor    =   -1  'True
         Visible         =   0   'False
         Width           =   1035
      End
      Begin VB.CommandButton Command3 
         BackColor       =   &H00FFC0FF&
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   3420
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   6000
         Width           =   1035
      End
      Begin VB.CheckBox Check2 
         BackColor       =   &H00C0C0C0&
         Caption         =   "All"
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
         Left            =   180
         TabIndex        =   31
         Top             =   600
         Visible         =   0   'False
         Width           =   525
      End
      Begin FPSpreadADO.fpSpread SPDDiscTypeDet 
         Height          =   5445
         Left            =   0
         TabIndex        =   34
         Top             =   480
         Visible         =   0   'False
         Width           =   8550
         _Version        =   524288
         _ExtentX        =   15081
         _ExtentY        =   9604
         _StockProps     =   64
         ArrowsExitEditMode=   -1  'True
         DisplayRowHeaders=   0   'False
         EditEnterAction =   5
         EditModePermanent=   -1  'True
         EditModeReplace =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxCols         =   10
         MaxRows         =   1
         ProcessTab      =   -1  'True
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "FrmFibreRateApproval.frx":0000
         Appearance      =   2
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Discount Details"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000004&
         Height          =   375
         Left            =   0
         TabIndex        =   35
         Top             =   45
         Width           =   8505
      End
      Begin VB.Line Line2 
         BorderWidth     =   2
         X1              =   -15
         X2              =   8520
         Y1              =   480
         Y2              =   480
      End
   End
   Begin FPSpreadADO.fpSpread spdVar 
      Height          =   6660
      Left            =   240
      TabIndex        =   1
      Top             =   2160
      Width           =   14490
      _Version        =   524288
      _ExtentX        =   25559
      _ExtentY        =   11747
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
      SpreadDesigner  =   "FrmFibreRateApproval.frx":047E
      AppearanceStyle =   0
   End
   Begin VB.Frame Frame1 
      Enabled         =   0   'False
      Height          =   885
      Left            =   240
      TabIndex        =   20
      Top             =   1200
      Width           =   14475
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "Cust_code"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   7
         Left            =   7710
         Locked          =   -1  'True
         TabIndex        =   28
         ToolTipText     =   "Select the Supplier From the List"
         Top             =   180
         Width           =   1245
      End
      Begin VB.TextBox Text2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   8970
         Locked          =   -1  'True
         TabIndex        =   27
         TabStop         =   0   'False
         Top             =   180
         Width           =   5130
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "ChequeNo"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   1
         Left            =   12060
         Locked          =   -1  'True
         MaxLength       =   20
         MultiLine       =   -1  'True
         TabIndex        =   25
         ToolTipText     =   "Enter the CHEQUE NO with Maximum of 15 Characters"
         Top             =   520
         Width           =   2070
      End
      Begin VB.CheckBox ChkSelectAll 
         Caption         =   "Select &All"
         Height          =   240
         Left            =   120
         TabIndex        =   24
         Top             =   600
         Width           =   1125
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   1560
         TabIndex        =   23
         Top             =   195
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         _Version        =   393216
         Format          =   157351937
         CurrentDate     =   43620
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Show"
         Height          =   390
         Left            =   3360
         TabIndex        =   21
         Top             =   240
         Visible         =   0   'False
         Width           =   1950
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Supplier Name"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   0
         Left            =   5880
         TabIndex        =   29
         Top             =   190
         Width           =   1425
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Variety Name Search "
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
         Left            =   9600
         TabIndex        =   26
         Top             =   600
         Width           =   2115
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Document Date"
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
         Left            =   120
         TabIndex        =   22
         Top             =   255
         Width           =   1335
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   2
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   13
         Left            =   4800
         Picture         =   "FrmFibreRateApproval.frx":0917
         Style           =   1  'Graphical
         TabIndex        =   36
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreRateApproval.frx":0D59
         Height          =   510
         Index           =   8
         Left            =   3750
         Picture         =   "FrmFibreRateApproval.frx":11A3
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Last Record (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreRateApproval.frx":1505
         Height          =   510
         Index           =   10
         Left            =   1155
         Picture         =   "FrmFibreRateApproval.frx":180F
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreRateApproval.frx":1B8B
         Height          =   510
         Index           =   9
         Left            =   630
         Picture         =   "FrmFibreRateApproval.frx":1E95
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreRateApproval.frx":2237
         Height          =   510
         Index           =   11
         Left            =   1665
         Picture         =   "FrmFibreRateApproval.frx":2681
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreRateApproval.frx":2A16
         Height          =   510
         Index           =   7
         Left            =   3225
         Picture         =   "FrmFibreRateApproval.frx":2E60
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreRateApproval.frx":31B0
         Height          =   660
         Index           =   111
         Left            =   7080
         Picture         =   "FrmFibreRateApproval.frx":34BA
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   0
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreRateApproval.frx":3834
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
         Picture         =   "FrmFibreRateApproval.frx":3B3E
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreRateApproval.frx":3EDA
         Height          =   510
         Index           =   5
         Left            =   2190
         Picture         =   "FrmFibreRateApproval.frx":4324
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreRateApproval.frx":4689
         Height          =   510
         Index           =   6
         Left            =   2700
         Picture         =   "FrmFibreRateApproval.frx":4AD3
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreRateApproval.frx":4E20
         Height          =   510
         Index           =   3
         Left            =   4290
         Picture         =   "FrmFibreRateApproval.frx":512A
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Find (Ctrl R)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   10695
         Picture         =   "FrmFibreRateApproval.frx":54BF
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "List (Ctrl L)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5280
         Picture         =   "FrmFibreRateApproval.frx":5856
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Print (Ctrl P)"
         Top             =   90
         Visible         =   0   'False
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreRateApproval.frx":5C98
         Height          =   510
         Index           =   1
         Left            =   0
         Picture         =   "FrmFibreRateApproval.frx":5FA2
         Style           =   1  'Graphical
         TabIndex        =   3
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
         TabIndex        =   17
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
         TabIndex        =   16
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   37
      Top             =   7530
      Width           =   11880
      _ExtentX        =   20955
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            AutoSize        =   1
            Object.Width           =   14861
            MinWidth        =   14729
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "07/03/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "10:54 AM"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
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
      TabIndex        =   19
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
      TabIndex        =   18
      Top             =   810
      Width           =   1860
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Fibre Rate Approval"
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
      TabIndex        =   0
      Top             =   780
      Width           =   2625
   End
End
Attribute VB_Name = "FrmFibreRateApproval"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rsQry As Recordset
Dim RSCHECK, adoSecondaryRS1 As Recordset
Dim sQry As String
Dim DB As New Connection
Dim frmOption As Integer
Dim Opt                 As String
Dim iID                 As Integer
Dim bolCheck            As Boolean
Dim iCnt                As Integer
Const iCheckBox       As Integer = 1
Const ISupName      As Integer = 2
Const ICatName  As Integer = 3
Const Idocno          As Integer = 4
Const IdocDt           As Integer = 5
Const IVarcode         As Integer = 6
Const IVarName         As Integer = 7
Const IPlantDesc        As Integer = 8
Const IRateUnit         As Integer = 9
Const IRateCY         As Integer = 10
Const IRateKG         As Integer = 11
Const iChqStatus As Integer = 12
Const IVarietySno As Integer = 13

Private Enum SpdDiscType
    SPDDTSNO = 1
    SPDDTVARSNO
    SPDDTVarcode
    SPDDTDISCCODE
    SPDDTDISCDESC
    SPDDTDRate
End Enum

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
  '  FrameSelection.Enabled = True
    DTPicker2.value = pdate
    DTPicker2.maxdate = pdate
    txtfields(1).Locked = False
    Frame1.Enabled = True
    Text2.Locked = True
    Call adddelmod(BUTTON)
    txtfields(7).Locked = False
    txtfields(7).Enabled = True
    txtfields(7).SetFocus
    ChkSelectAll.value = 0
     txtfields(7).Text = ""
     Text2.Text = ""
Case 9
   Dim chk As Integer
   
        With spdVar
        chk = 0
        For RW = 1 To .MaxRows
             .Row = RW
                
             chkval = val(GetText(spdVar, iCheckBox, RW))
                
            If chkval = 1 Then
'             If Left(Trim(GetText(spdVar, iChqStatus, RW)), 1) = "H" Then
'             MsgBox "Please Change the Status", vbInformation, head
'             Exit Sub
'             End If
       
       
       
            End If
    
            Next
        End With
   If Opt = "mod" Then
     DB.BeginTrans
     With spdVar
        chk = 0
        For RW = 1 To .MaxRows
         .Row = RW
            
         chkval = val(GetText(spdVar, iCheckBox, RW))
            
        If chkval = 1 Then
                         
                Set getd = New Recordset
                getd.Open "Select getdate() as GETDATE ", DB, adOpenStatic, adLockBatchOptimistic
                  ' Apflg = IIf(Left(Trim(GetText(spdVar, iChqStatus, RW)), 1) = "A", "Y", "H")
                 If Left(Trim(GetText(spdVar, iChqStatus, RW)), 1) = "A" Then
                     Apflg = "Y"
                 ElseIf Left(Trim(GetText(spdVar, iChqStatus, RW)), 1) = "H" Then
                     Apflg = "H"
                 Else
                     Apflg = "R"
                 End If
                   
                DB.Execute ("UPDATE RM_FibreRate SET Appflg='" & Apflg & "', Effdate='" & Format(getd("GETDATE"), "yyyy-mm-dd") & "',AppDate='" & Format(getd("GETDATE"), "yyyy-mm-dd hh:mm:ss.m") & "', AppuserId='" & UserName & "',Ipadd='" & LocalIP & "' where  Docno = " & val(GetText(spdVar, Idocno, RW)) & " and docdate = '" & Format(Trim(GetText(spdVar, IdocDt, RW)), "yyyy-mm-dd") & "' and docsno='" & val(GetText(spdVar, IVarietySno, RW)) & "' and varcode='" & Trim(GetText(spdVar, IVarcode, RW)) & "' ")
                         
           
             chk = chk + 1
        End If

        Next

        If chk > 0 Then
            DB.CommitTrans
            MsgBox "Fibre Rate Approved Successfully", vbInformation, head
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
  ' FrameSelection.Enabled = True
Case 11
        Unload Me
'        Case 13
'
'    Dim Cystalrptbunk As New clsCrystal
'    Set Cystalrptbunk.cryRept = Cry_FibreRate_Entry
'    Cystalrptbunk.CrystalPrint
'    CrystalReport1.Reset
'    CrystalReport1.Connect = connectstring
'    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
''    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
'    CrystalReport1.WindowShowPrintSetupBtn = True
'    CrystalReport1.WindowShowSearchBtn = True
'    CrystalReport1.WindowState = crptMaximized
'    SendKeys "{ENTER}"
'    CrystalReport1.Action = 1
'    CrystalReport1.PrinterCopies = 1
'    Screen.MousePointer = 0
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
        SetSpreadCol spdVar, ISupName, "Supplier Name", CellTypeStaticText, 25
        SetSpreadCol spdVar, ICatName, "Category Name", CellTypeStaticText, 20
        SetSpreadCol spdVar, Idocno, "Doc No.", CellTypeStaticText, 8, 0, True, True
        SetSpreadCol spdVar, IdocDt, "Doc Date", CellTypeStaticText, 8, 0, True, True
        SetSpreadCol spdVar, IVarcode, "Variety Code", CellTypeStaticText, 0, 0, True, True
        SetSpreadCol spdVar, IVarName, "Variety", CellTypeStaticText, 25
        SetSpreadCol spdVar, IPlantDesc, "Plant", CellTypeStaticText, 15, 2
        SetSpreadCol spdVar, iChqStatus, "Status ", CellTypeComboBox, 10, , , False
        spdVar.TypeComboBoxList = "Hold" & vbTab & "Approved" & vbTab & "Rejected"
        
        SetSpreadCol spdVar, IVarietySno, "Doc. Sno.", CellTypeStaticText, 0, 0, True, True
        SetSpreadCol spdVar, IRateUnit, "UOM", CellTypeStaticText, 10
        SetSpreadCol spdVar, IRateCY, "Rate/Kg", CellTypeNumber, 10, 3
        SetSpreadCol spdVar, IRateKG, "Rate/Kg", CellTypeNumber, 10, 3, True, True
       ' SetSpreadCol spdVar, IRateCY, "Rate", CellTypeNumber, 10


        
         
         
         
        spdVar.MaxCols = IVarietySno
  
    
    spdVar.Col = 0
    spdVar.Lock = False
    
    With spdVar
        .MaxRows = totrow
        .ColsFrozen = 4
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

Private Sub Command3_Click()
FrameDiscType.Visible = False
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

     'stbar.Panels(1).Text = SbMsg
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
    'ChkByPass.Value = 0
    
    Set DB = New ADODB.Connection
    DB.ConnectionTimeout = 1200
    DB.Open connectstring
    DB.CommandTimeout = 1200
    
    Call SetGridHead(0)
    desc.Caption = "Modification"
    Opt = "mod"
   ' FrameSelection.Enabled = True
    Call adddelmod(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
  
    'LblDivision.Caption = divnameunit
    LblUser.Caption = UserName
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Frm"
End Sub

Private Sub Billdisplay()
Dim iRow As Integer
On Error GoTo Lotdisplay_Error
        sQry = ""
  
        
         sQry = "select *from Vw_RM_FibreRate where docdate <='" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and (slcode='" & Trim(txtfields(7).Text) & "' or '" & Trim(txtfields(7).Text) & "'='A') and isnull(appflg,'N' )<>'Y'  and isnull(appflg,'N' )<>'R'  and slcode in(select slcode from fa_slmas where country ='INDIA')  order by docdate,slname,varname "
        
        
        Set rsQry = New Recordset
        rsQry.Open sQry, DB, adOpenStatic, adLockReadOnly
        
        Call SetGridHead(rsQry.RecordCount)
        iRow = 1
        
        If rsQry.RecordCount > 0 Then rsQry.MoveFirst
        While rsQry.EOF = False
            spdVar.SetText ISupName, iRow, rsQry("slname")
            spdVar.SetText ICatName, iRow, rsQry("catname")
            spdVar.SetText Idocno, iRow, rsQry("docno")
            spdVar.SetText IdocDt, iRow, rsQry("docdt")
            spdVar.SetText IVarcode, iRow, rsQry("varcode")
            spdVar.SetText IVarName, iRow, rsQry("varname")
            spdVar.SetText IPlantDesc, iRow, rsQry("plname")
            spdVar.SetText IRateUnit, iRow, rsQry("UNITNAME")
            
            spdVar.SetText IRateCY, iRow, rsQry("CandyRate")
            spdVar.SetText IRateKG, iRow, rsQry("RATEKG")
            spdVar.SetText IVarietySno, iRow, rsQry("docsno")
            
            spdVar.SetText iChqStatus, iRow, "Approved"
            
                    
             spdVar.Row = (iRow)
             spdVar.Col = iCheckBox
    
            spdVar.value = 1
         
            
    
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

Private Sub spdVar_Change(ByVal Col As Long, ByVal Row As Long)
On Error Resume Next
If Col = iCheckBox Then
         
        lcount = 0
                 
               chkval = val(GetText(spdVar, iCheckBox, spdVar.ActiveRow))
            
               spdVar.Col = iCheckBox
               If chkval = 1 Then
        
                    spdVar.SetText iChqStatus, spdVar.ActiveRow, "Approved"
                    spdVar.SetText IDepostDT, Row, Format(DTPicker2.value, "dd/mm/yyyy")
                Else
              
                    spdVar.SetText iChqStatus, spdVar.ActiveRow, "Hold"
                    spdVar.SetText IDepostDT, Row, ""
                    
               End If
        
End If
End Sub

Private Sub spdVar_Click(ByVal Col As Long, ByVal Row As Long)
On Error Resume Next
If Col = iCheckBox Then
         
        lcount = 0
        

         
               chkval = val(GetText(spdVar, iCheckBox, spdVar.ActiveRow))
            
               spdVar.Col = iCheckBox
               If chkval = 1 Then
        
                    spdVar.SetText iChqStatus, spdVar.ActiveRow, "Approved"
                    spdVar.SetText IDepostDT, Row, Format(DTPicker2.value, "dd/mm/yyyy")
                Else
              
                    spdVar.SetText iChqStatus, spdVar.ActiveRow, "Hold"
                    spdVar.SetText IDepostDT, Row, ""
                    
                    
               End If
        
End If
End Sub



Private Sub spdVar_KeyDown(KeyCode As Integer, Shift As Integer)
On Error Resume Next
    With spdVar
          If .ActiveCol = IRateCY And KeyCode = vbKeyF5 Then
             FrameDiscType.Visible = True
                FrameDiscType.ZOrder
                SPDDiscTypeDet.Visible = True
                Call SETDISCTYPEHead
                   Set adoSecondaryRS1 = New Recordset
                   adoSecondaryRS1.Open "select a.Divcode,a.Docno,a.Docdate,a.VSno,a.DocSno,a.Varcode,a.DType,b.Description ddesc,a.DRate from RM_FibreRateDisc a left join RM_DiscountType b on a.DType=b.code   where    Docno = " & val(GetText(spdVar, Idocno, .ActiveRow)) & " and docdate = '" & Format(Trim(GetText(spdVar, IdocDt, .ActiveRow)), "yyyy-mm-dd") & "'  and varcode='" & Trim(GetText(spdVar, IVarcode, .ActiveRow)) & "'  Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
                   Call SpdLoadvar
           End If
    End With
    
End Sub

Private Sub spdVar_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
On Error Resume Next
If Col = iCheckBox Then
         
        lcount = 0
        

         
               chkval = val(GetText(spdVar, iCheckBox, spdVar.ActiveRow))
            
               spdVar.Col = iCheckBox
               If chkval = 1 Then
        
                    spdVar.SetText iChqStatus, spdVar.ActiveRow, "Approved"
                    spdVar.SetText IDepostDT, Row, Format(DTPicker2.value, "dd/mm/yyyy")
                Else
              
                    spdVar.SetText iChqStatus, spdVar.ActiveRow, "Hold"
                    spdVar.SetText IDepostDT, Row, ""
                    
                    
               End If
        
End If
End Sub
Private Sub ChkSelectAll_Click()
On Error GoTo Errh
For nRow = 1 To spdVar.MaxRows
    spdVar.Row = nRow
    spdVar.Col = iCheckBox
    If ChkSelectAll.value = 1 Then
        spdVar.value = 1
        spdVar.SetText iChqStatus, nRow, "Approved"
         spdVar.SetText IDepostDT, nRow, Format(DTPicker2.value, "dd/mm/yyyy")
              
                   
    Else
      spdVar.SetText iChqStatus, nRow, "Hold"
      spdVar.SetText IDepostDT, nRow, ""
        spdVar.value = 0
    End If
Next

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : ChkSelectAll_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub txtFields_Change(Index As Integer)

    On Error Resume Next
If Index = 1 And Opt = "mod" Then
            If Trim(txtfields(1).Text) = "" Then Exit Sub
    
            Dim I As Long, j As Long
            
            j = IIf(UCase(Trim(GetText(spdVar, IVarName, spdVar.Row))) = UCase(Trim(txtfields(1))), spdVar.Row + 1, 1)
            For I = j To spdVar.MaxRows + 1
            position = InStr(1, UCase(GetText(spdVar, IVarName, I)), UCase(Trim(txtfields(1))))

              If position > 0 Then
                    spdVar.Row = I
                    spdVar.SetSelection 1, spdVar.Row, spdVar.MaxCols, spdVar.Row
 
                    spdVar.SetFocus
                     txtfields(1).SetFocus
                    Exit For
                End If
            Next I
             txtfields(1).SetFocus
End If


End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error Resume Next


    If Index = 7 Then  '' Supplier
        If txtfields(7).Text = "" Then

                                                   

            qry = "select distinct slcode 'Supplier Code',slname 'Supplier Name' from Vw_RM_FibreRate a where isnull(appflg,'N')<>'Y'  union all select 'A' 'Supplier Code','ALL' 'Supplier Name' "

                                                                              
            LookUp.Clear = True
            LookUp.query = qry
            LookUp.Caption = "Supplier Listing"
            LookUp.DefCol = "Supplier Namee"
            LookUp.ALIGN = "1800,5500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then  '8
                txtfields(7).Text = LookUp.Fields(0)
                Text2.Text = LookUp.Fields(1)
                LookUp.Clear = True
               Call Billdisplay
            Else
                Cancel = True
                Exit Sub
            End If
        
    End If
    End If

End Sub


Private Sub SpdLoadvar()
        Call SETDISCTYPEHead
        With SPDDiscTypeDet
            .MaxRows = 0
            .MaxCols = SpdDiscType.SPDDTDRate
            .CursorStyle = CursorStyleArrow
            RW = 1
        Do While Not adoSecondaryRS1.EOF
            .MaxRows = .MaxRows + 1
            .SetText SpdDiscType.SPDDTSNO, RW, adoSecondaryRS1("DOCSNO")
            .SetText SpdDiscType.SPDDTVARSNO, RW, adoSecondaryRS1("VSno")
            .SetText SpdDiscType.SPDDTVarcode, RW, adoSecondaryRS1("Varcode")
            .SetText SpdDiscType.SPDDTDISCCODE, RW, adoSecondaryRS1("DType")
            .SetText SpdDiscType.SPDDTDISCDESC, RW, adoSecondaryRS1("ddesc")
            .SetText SpdDiscType.SPDDTDRate, RW, adoSecondaryRS1("DRate")
            RW = RW + 1
            adoSecondaryRS1.MoveNext
        Loop
        End With
End Sub


Private Sub SETDISCTYPEHead()
With SPDDiscTypeDet
        .ClearSelection
        .MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDVPlant2DESC
        .MaxCols = SPDDTDRate
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTSNO, "S.No", CellTypeStaticText, 8, , False, True    'a
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVARSNO, "Variety Sno.", CellTypeStaticText, 10, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
'        .TypeHAlign = TypeHAlignLeft
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, "Varcode.", CellTypeStaticText, 8, , True, True  'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCCODE, "Discount Type Code", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCDESC, "Discount Type.", CellTypeStaticText, 40, , False, True 'i
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDRate, "Discount Rate/Kgs", CellTypeNumber, 18, 4, False, False  'i

    End With
End Sub

