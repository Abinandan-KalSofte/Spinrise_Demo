VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmSupplierVarietyMap 
   Caption         =   "Supplier and Variety Master"
   ClientHeight    =   4995
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7785
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   6840
      Top             =   5160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   20
      Top             =   -75
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5280
         Picture         =   "FrmSupplierVarietyMap.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   43
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   585
      End
      Begin VB.CommandButton BUTTON 
         Height          =   555
         Index           =   12
         Left            =   4725
         Picture         =   "FrmSupplierVarietyMap.frx":0442
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Print"
         Top             =   75
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmSupplierVarietyMap.frx":0884
         Height          =   510
         Index           =   3
         Left            =   1065
         Picture         =   "FrmSupplierVarietyMap.frx":0B8E
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmSupplierVarietyMap.frx":0F23
         Height          =   510
         Index           =   6
         Left            =   2115
         Picture         =   "FrmSupplierVarietyMap.frx":136D
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmSupplierVarietyMap.frx":16BA
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "FrmSupplierVarietyMap.frx":19C4
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmSupplierVarietyMap.frx":1D57
         Height          =   510
         Index           =   5
         Left            =   1605
         Picture         =   "FrmSupplierVarietyMap.frx":21A1
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmSupplierVarietyMap.frx":2506
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
         Left            =   540
         Picture         =   "FrmSupplierVarietyMap.frx":2810
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmSupplierVarietyMap.frx":2BAC
         Height          =   510
         Index           =   1
         Left            =   11265
         Picture         =   "FrmSupplierVarietyMap.frx":2EB6
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmSupplierVarietyMap.frx":3230
         Height          =   510
         Index           =   7
         Left            =   2640
         Picture         =   "FrmSupplierVarietyMap.frx":367A
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmSupplierVarietyMap.frx":39CA
         Height          =   510
         Index           =   11
         Left            =   5805
         Picture         =   "FrmSupplierVarietyMap.frx":3E14
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmSupplierVarietyMap.frx":41A9
         Height          =   510
         Index           =   9
         Left            =   3675
         Picture         =   "FrmSupplierVarietyMap.frx":44B3
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "FrmSupplierVarietyMap.frx":4855
         Height          =   510
         Index           =   10
         Left            =   4215
         Picture         =   "FrmSupplierVarietyMap.frx":4B5F
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel (Ctrl BackSpace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmSupplierVarietyMap.frx":4EDB
         Height          =   510
         Index           =   8
         Left            =   3165
         Picture         =   "FrmSupplierVarietyMap.frx":5325
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   7710
         Picture         =   "FrmSupplierVarietyMap.frx":5687
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
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
         Left            =   8340
         TabIndex        =   22
         Top             =   240
         Width           =   630
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Query"
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
         Left            =   6810
         TabIndex        =   21
         Top             =   240
         Width           =   615
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6390
      Left            =   165
      TabIndex        =   24
      Top             =   1125
      Width           =   11730
      _ExtentX        =   20690
      _ExtentY        =   11271
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "FrmSupplierVarietyMap.frx":5A1E
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame2 
         Height          =   4590
         Left            =   60
         TabIndex        =   35
         Top             =   1665
         Width           =   11505
         Begin FPSpreadADO.fpSpread FpSpdGp 
            Height          =   4320
            Left            =   75
            TabIndex        =   19
            Top             =   150
            Width           =   11355
            _Version        =   524288
            _ExtentX        =   20029
            _ExtentY        =   7620
            _StockProps     =   64
            DisplayRowHeaders=   0   'False
            EditEnterAction =   5
            EditModePermanent=   -1  'True
            EditModeReplace =   -1  'True
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   0
            MaxRows         =   0
            ScrollBarExtMode=   -1  'True
            ScrollBarShowMax=   0   'False
            SpreadDesigner  =   "FrmSupplierVarietyMap.frx":5A3A
            ScrollBarStyle  =   3
         End
      End
      Begin VB.Frame Frame1 
         Height          =   1590
         Left            =   45
         TabIndex        =   30
         Top             =   90
         Width           =   10905
         Begin VB.TextBox txtFields 
            DataField       =   "Code"
            Height          =   330
            Index           =   4
            Left            =   1500
            TabIndex        =   17
            Top             =   1095
            Width           =   1245
         End
         Begin VB.TextBox txtFields 
            DataField       =   "Issuetype"
            Height          =   330
            Index           =   2
            Left            =   1485
            TabIndex        =   15
            Top             =   630
            Width           =   1245
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Index           =   3
            Left            =   2775
            Locked          =   -1  'True
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   630
            Width           =   7530
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "name"
            Height          =   330
            Index           =   5
            Left            =   2775
            Locked          =   -1  'True
            TabIndex        =   18
            TabStop         =   0   'False
            Top             =   1095
            Width           =   7530
         End
         Begin VB.TextBox txtFields 
            DataField       =   "Docno"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   405
            Index           =   0
            Left            =   1485
            TabIndex        =   13
            Top             =   150
            Width           =   1245
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "DocDate"
            Height          =   375
            Index           =   0
            Left            =   6915
            TabIndex        =   14
            Top             =   180
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   661
            _Version        =   393216
            CalendarForeColor=   -2147483640
            Format          =   135331841
            CurrentDate     =   36218
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Document No."
            Height          =   195
            Index           =   2
            Left            =   180
            TabIndex        =   34
            Top             =   255
            Width           =   1035
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Document Date"
            Height          =   195
            Index           =   3
            Left            =   5595
            TabIndex        =   33
            Top             =   285
            Width           =   1125
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            ForeColor       =   &H80000002&
            Height          =   195
            Index           =   5
            Left            =   165
            TabIndex        =   32
            Top             =   705
            Width           =   570
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            Height          =   195
            Index           =   0
            Left            =   180
            TabIndex        =   31
            Top             =   1170
            Width           =   630
         End
      End
      Begin VB.Frame Frame4 
         Height          =   4710
         Left            =   360
         TabIndex        =   25
         Top             =   -5160
         Visible         =   0   'False
         Width           =   7995
         Begin VB.CommandButton lovok 
            Caption         =   "&OK"
            DownPicture     =   "FrmSupplierVarietyMap.frx":5E7D
            Height          =   615
            Left            =   2940
            Picture         =   "FrmSupplierVarietyMap.frx":6263
            Style           =   1  'Graphical
            TabIndex        =   28
            Top             =   3915
            Width           =   1185
         End
         Begin VB.CommandButton lovcancel 
            Caption         =   "&Cancel"
            DownPicture     =   "FrmSupplierVarietyMap.frx":6629
            Height          =   615
            Left            =   4680
            Picture         =   "FrmSupplierVarietyMap.frx":6A0B
            Style           =   1  'Graphical
            TabIndex        =   27
            Top             =   3915
            Width           =   1185
         End
         Begin VB.PictureBox KslList1 
            ForeColor       =   &H8000000D&
            Height          =   3255
            Left            =   420
            ScaleHeight     =   3195
            ScaleWidth      =   7125
            TabIndex        =   26
            Top             =   660
            Width           =   7185
         End
         Begin VB.Label listlb 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Caption"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000005&
            Height          =   315
            Left            =   30
            TabIndex        =   29
            Top             =   120
            Width           =   7935
         End
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   42
      Top             =   10755
      Width           =   20370
      _ExtentX        =   35930
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
            AutoSize        =   1
            Object.Width           =   29492
            MinWidth        =   14993
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   2117
            MinWidth        =   2117
            TextSave        =   "14/02/2020"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "10:25 AM"
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
   Begin VB.Frame FraIssue 
      Height          =   5115
      Left            =   840
      TabIndex        =   36
      Top             =   2130
      Visible         =   0   'False
      Width           =   10785
      Begin VB.CheckBox Check1 
         Caption         =   "ALL"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   135
         TabIndex        =   41
         Top             =   555
         Width           =   1140
      End
      Begin VB.CommandButton CmdIssCancel 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   5310
         TabIndex        =   40
         Top             =   4590
         Width           =   1410
      End
      Begin VB.CommandButton CmdIssOk 
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
         Height          =   360
         Left            =   3105
         TabIndex        =   39
         Top             =   4590
         Width           =   1410
      End
      Begin FPSpreadADO.fpSpread FpSpIss 
         Height          =   3240
         Left            =   60
         TabIndex        =   37
         Top             =   870
         Width           =   10530
         _Version        =   524288
         _ExtentX        =   18574
         _ExtentY        =   5715
         _StockProps     =   64
         DisplayRowHeaders=   0   'False
         EditEnterAction =   5
         EditModePermanent=   -1  'True
         EditModeReplace =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxCols         =   0
         MaxRows         =   0
         ScrollBarExtMode=   -1  'True
         ScrollBarShowMax=   0   'False
         SpreadDesigner  =   "FrmSupplierVarietyMap.frx":6DDE
         ScrollBarStyle  =   3
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00C00000&
         Caption         =   "Issue Details"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   345
         Left            =   15
         TabIndex        =   38
         Top             =   105
         Width           =   10740
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Supplier and Variety Master"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   150
      TabIndex        =   23
      Top             =   720
      Width           =   3645
   End
End
Attribute VB_Name = "FrmSupplierVarietyMap"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim DB As Connection
Dim Opt As String
Dim st, st1, st2 As String
Dim TmpRs As New ADODB.Recordset
Dim temprs As New ADODB.Recordset
Dim SqlString As String
Private Enum E_SpdIss
    SpChk = 1
    SpIssNo
    SpIssDt
    SpSlcode
    Spslname
    SpQty
    SpKgs
End Enum

Private Enum E_SpdGP
    SpdIssNo = 1
    SpdIssDt
    spdLotno
    spdLotDt
    spdVCode
    SpdVName
    SPDQty
    SpdKgs
End Enum


Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
intervalMinutes = -1
If Opt <> "add" Then
    If Not (adoprimaryrs.EOF Or adoprimaryrs.BOF) Then
        
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "SELECT A.Divcode, A.IssueNo, A.IssueDate, A.LotNo, A.Lotdate,a.Varcode , V.VarName, a.Quantity, a.NetWeight FROM RM_OutpassDt A,RM_VAR V WHERE a.varcode=v.VARCODE and Divcode ='" & Divcode & "' And  A.DocNo='" & adoprimaryrs("DocNo") & "' and A.DocDate='" & Format(adoprimaryrs("DocDate"), "yyyy-mm-dd") & "' And IssueType='" & adoprimaryrs("IssueType") & "'", DB, adOpenStatic, adLockReadOnly
        DTPicker2.value = adoprimaryrs("RemovalTime")
        DTPicker1(0).value = adoprimaryrs("DocDate")
        Call SetGridHead
        Call SpdLoad
        If Opt = "del" Or Opt = "fnd" Then
            Call DISABLECONTLS
        End If
    End If
End If

End Sub


Private Sub Check1_Click()
With FpSpIss
    If Check1.value = 1 Then
        For RW = 1 To .MaxRows
             .Row = RW
             .Col = E_SpdIss.SpChk
             .value = 1
         Next
    ElseIf Check1.value = 0 Then
        For RW = 1 To .MaxRows
             .Row = RW
             .Col = E_SpdIss.SpChk
             .value = 0
         Next
    End If
End With
End Sub

Private Sub CmdIssCancel_Click()
FraIssue.Visible = False
Opt = ""
Call BUTTON_Click(10)
End Sub

Private Sub CmdIssOk_Click()
FraIssue.Visible = False
TRW = 1
With FpSpIss
FpSpdGp.MaxRows = 0
For RW = 1 To .MaxRows
    .Row = RW
    .Col = SpChk
    If .value = True Then
        Set TmpRs = New Recordset
        TmpRs.Open "SELECT a.DOCNO,a.DOCDT,B.LotNo,B.LotDt,B.VarCode,V.VarName,COUNT(BaleNo)IssQty,SUM(ISNULL(ISSKGS,0))IssKgs FROM RM_ISSH a,RM_ISSB B,RM_VAR V    " & _
                   " where a.DOCNO=b.DOCNO and a.DIVCODE=b.DIVCODE AND a.DOCDT =b.DOCDT AND a.ISSTYPE=b.ISSTYPE AND b.VARCODE=v.VARCODE And " & _
                   " a.DIVCODE='" & Divcode & "' AND a.ISSTYPE='" & txtFields(2).Text & "' AND a.DOCDT = '" & Format(GetText(FpSpIss, E_SpdIss.SpIssDt, RW), "yyyy-mm-dd") & "' and Isnull(OUTPASSFLG,'N')='N'  And " & _
                   " A.DocNo = '" & GetText(FpSpIss, E_SpdIss.SpIssNo, RW) & "'     GROUP BY a.DOCNO,a.DOCDt,B.LotNo,B.LotDt,B.VarCode,V.VarName", DB, adOpenStatic, adLockReadOnly
        If Not TmpRs.EOF Then
            
            Do While Not TmpRs.EOF
                FpSpdGp.MaxRows = FpSpdGp.MaxRows + 1
                FpSpdGp.SetText E_SpdGP.SpdIssNo, TRW, TmpRs("DOCNO")
                FpSpdGp.SetText E_SpdGP.SpdIssDt, TRW, Format(TmpRs("DOCDT"), "dd/mm/yyyy")
                FpSpdGp.SetText E_SpdGP.spdLotno, TRW, TmpRs("LotNo")
                FpSpdGp.SetText E_SpdGP.spdLotDt, TRW, Format(TmpRs("LotDt"), "dd/mm/yyyy")
                FpSpdGp.SetText E_SpdGP.spdVCode, TRW, TmpRs("VarCode")
                FpSpdGp.SetText E_SpdGP.SpdVName, TRW, TmpRs("VarName")
                FpSpdGp.SetText E_SpdGP.SPDQty, TRW, TmpRs("IssQty")
                FpSpdGp.SetText E_SpdGP.SpdKgs, TRW, TmpRs("IssKgs")
                TmpRs.MoveNext
                TRW = TRW + 1
            Loop
        End If
    End If
Next
End With
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
intervalMinutes = -1
If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)    ''Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
   If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)    ''Modify
   End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)    ''Delete
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''Find
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)    ''List
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)    ''First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)    ''Next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)    ''Previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)    ''Last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)    ''Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)    ''Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)  ''Exit
    End If
ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then '27
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)    ''Cancel
    Else
        If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)
    End If
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form tmpPOINDENT", vbInformation, head
    
End Sub



Private Sub Form_Load()
intervalMinutes = -1
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
    Opt = "qry"
    Call SetGridHead
    Call Query_mode
    intervalMinutes = -1
    DATLAB.Caption = pdate   'This variable is declared as global to show the date
End Sub

Private Sub SetGridHead()
intervalMinutes = -1
    With FpSpIss
        .MaxRows = 0
        .MaxCols = E_SpdIss.SpKgs
        .Row = 0
        .FontBold = True
        .ColHeadersAutoText = DispBlank
        SetSpreadCol1 FpSpIss, E_SpdIss.SpChk, "", CellTypeCheckBox, 2, , , False
        SetSpreadCol1 FpSpIss, E_SpdIss.SpIssNo, "Issue No.", CellTypeNumber, 8, 0, False, True
        SetSpreadCol1 FpSpIss, E_SpdIss.SpIssDt, "Issue Date", CellTypeStaticText, 9, , False, True
        SetSpreadCol1 FpSpIss, E_SpdIss.SpSlcode, "Code", CellTypeStaticText, 10
        SetSpreadCol1 FpSpIss, E_SpdIss.Spslname, "Name", CellTypeStaticText, 20
        SetSpreadCol1 FpSpIss, E_SpdIss.SpQty, "Quantity", CellTypeNumber, 10, 0, False, True
        SetSpreadCol1 FpSpIss, E_SpdIss.SpKgs, "Net Weight", CellTypeNumber, 10, 3, False, True
    End With

    With FpSpdGp
        .MaxRows = 0
        .MaxCols = E_SpdGP.SpdKgs
        .Row = 0
        .FontBold = True
        .ColHeadersAutoText = DispBlank
        SetSpreadCol1 FpSpdGp, E_SpdGP.SpdIssNo, "Issue No.", CellTypeNumber, 8, 0, False, True
        SetSpreadCol1 FpSpdGp, E_SpdGP.SpdIssDt, "Issue Date", CellTypeStaticText, 9, , False, True
        SetSpreadCol1 FpSpdGp, E_SpdGP.spdLotno, "Lot No.", CellTypeStaticText, 9, 0, False, True
        SetSpreadCol1 FpSpdGp, E_SpdGP.spdLotDt, "Lot Date", CellTypeStaticText, 9, 0, False, True
        SetSpreadCol1 FpSpdGp, E_SpdGP.spdVCode, "Variety Code", CellTypeStaticText, 10
        SetSpreadCol1 FpSpdGp, E_SpdGP.SpdVName, "Variety Name", CellTypeStaticText, 20
        SetSpreadCol1 FpSpdGp, E_SpdGP.SPDQty, "Quantity", CellTypeNumber, 10, 0, False, True
        SetSpreadCol1 FpSpdGp, E_SpdGP.SpdKgs, "Net Weight", CellTypeNumber, 10, 3, False, True
        
        .Row = 0
        .Col = E_SpdGP.SPDQty
        .TypeHAlign = TypeHAlignRight
        .Col = E_SpdGP.SpdKgs
        .TypeHAlign = TypeHAlignRight
        
    End With
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
On Error Resume Next
intervalMinutes = -1
dbltot = 0
Select Case Index
Case 0
        If ToValidFinYear(Divcode) = False Then Exit Sub
        Set rsg = New Recordset
        rsg.Open "select max(DocDate) from Rm_Outpasshd where divcode='" & Divcode & "' and DocDate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
            If IsNull(rsg(0)) = False Then
                If pdate < rsg(0) Then
                    MsgBox "Date should be Equal to Current Date Or Max Gate Pass Date", vbInformation, head
                    Screen.MousePointer = vbNormal
                    Exit Sub
                End If
            End If
        End If
        Opt = "add"
        desc.Caption = "Addition"
        Screen.MousePointer = 11
        stbar.Panels(2).Text = "Addition"
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "SELECT Divcode,Docno, Docdate,Issuetype,Slcode, Refdivcode, Destination, VechicleNo, RemovalTime, AddUser,AddDate , Moduser, ModDate From RM_OutpassHd where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "SELECT Divcode, Docno, Docdate,DocSno,Issuetype,IssueNo, IssueDate, LotNo, Lotdate, varcode, Quantity, NetWeight FROM   RM_OutpassDt where  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
        Call bindcontls
        adoprimaryrs.AddNew
        adoSecondaryRS.AddNew
        ReDim ITARY(100, 0)
        DB.BeginTrans
        Call adddelmod(BUTTON)
        RW = 1000
        Screen.MousePointer = 0
        Call ENABLCONTLS
        Call SetGridHead
        txtFields(2).SetFocus
        DTPicker1(0).value = pdate
        txtFields(4).Text = ""
        txtFields(5).Text = ""
        DTPicker2.value = Format(Now, "HH:MM")
        
Case 1
    '        'Modification
        If ToValidFinYear(Divcode) = False Then Exit Sub
        Opt = "mod"
        desc.Caption = "Modification"
        If Record_Exists("RM_OutpassHd where divcode='" & Divcode & "'") = False Then Exit Sub

 Case 2, 3
        'Deletetion
        If ToValidFinYear(Divcode) = False Then Exit Sub
        If Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
            Call adddelmod(BUTTON)
        Else
            Opt = "fnd"
            desc.Caption = "Find"
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = False
        End If
        If Record_Exists("RM_OutpassHd where divcode='" & Divcode & "'") = False Then Exit Sub
        LookUp.clear = True
        LookUp.query = "SELECT H.Docno 'Document No.',h.DocDate 'Date',h.IssueType 'Issue Type',Issue_Desc 'Issue Description' from Rm_OutpassHd H, rm_issuetype I WHERE H.divcode='" & Divcode & "' and    h.IssueType=I.Issue_Code and H.Docdate between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "'"
        LookUp.Caption = "Gate Pass Listing"
        LookUp.DefCol = "Document No."
        LookUp.ALIGN = "700,1000,1500,4500"
        Screen.MousePointer = 0
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            B = LookUp.Fields(1)    'date
            a = LookUp.Fields(0)    'Indent No
            c = LookUp.Fields(2)   'Indent No
            Call delmodproc(CStr(a), CStr(B), CStr(c))
            LookUp.clear = True
        Else
            Call BUTTON_Click(10)
        End If
        stbar.Panels(2).Text = "Select the Records to Delete"
Case 5
       'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoprimaryrs.MoveFirst
        'calling fir procedure from module
        Call FIR(BUTTON)
        stbar.Panels(2).Text = "Records" & " " & adoprimaryrs.AbsolutePosition & " / " & " " & adoprimaryrs.RecordCount
        Exit Sub
GoFirstError:
    If Err = 3021 Then
        MsgBox " No records Found", vbInformation, head
        Exit Sub
    End If
       
Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
        If Not adoprimaryrs.EOF Then
            adoprimaryrs.MoveNext
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If adoprimaryrs.EOF And adoprimaryrs.RecordCount > 0 Then
            adoprimaryrs.MoveLast
             Call NEX(BUTTON)
        End If
        'show the current record
        stbar.Panels(2).Text = "Records" & " " & adoprimaryrs.AbsolutePosition & " / " & " " & adoprimaryrs.RecordCount
        Exit Sub
GoNextError:
    If Err = 3021 Then
        MsgBox " No records Found", vbInformation, head
        Exit Sub
    End If
  
Case 7
        'previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
        If Not adoprimaryrs.BOF Then
            adoprimaryrs.MovePrevious
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If adoprimaryrs.BOF And adoprimaryrs.RecordCount > 0 Then
            adoprimaryrs.MoveFirst
            Call prev(BUTTON)
         End If
        'show the current record
        stbar.Panels(2).Text = "Records" & " " & adoprimaryrs.AbsolutePosition & " / " & " " & adoprimaryrs.RecordCount
        Exit Sub
GoPrevError:
  If Err = 3021 Then
    MsgBox " No records Found", vbInformation, head
    Exit Sub
  End If
 
Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoprimaryrs.MoveLast
        stbar.Panels(2).Text = "Records" & " " & adoprimaryrs.AbsolutePosition & " / " & " " & adoprimaryrs.RecordCount
        'calling las procedure from module
        Call las(BUTTON)
        Exit Sub
GoLastError:
       If Err = 3021 Then
         MsgBox " No records Found", vbInformation, head
         Exit Sub
       End If

Case 9
        ''''Save
        If Opt = "add" Then
            If FpSpdGp.MaxRows = 0 Then
                MsgBox "Select atleast one item to complete the transaction", vbInformation, head
                Screen.MousePointer = 0
                Exit Sub
            End If
            If txtFields(2).Text = "" Then
                MsgBox "Issue Type Cannot be empty", vbInformation, head
                Screen.MousePointer = 0
                txtFields(2).SetFocus
                Exit Sub
            End If
            If txtFields(4).Text = "" Then
                MsgBox "Supplier/Division Cannot be empty", vbInformation, head
                Screen.MousePointer = 0
                txtFields(4).SetFocus
                Exit Sub
            End If
            If txtFields(6).Text = "" Then
                MsgBox "Destination Cannot be empty", vbInformation, head
                Screen.MousePointer = 0
                txtFields(6).SetFocus
                Exit Sub
            End If
            If txtFields(8).Text = "" Then
                MsgBox "Vechicle Number Cannot be empty", vbInformation, head
                Screen.MousePointer = 0
                txtFields(8).SetFocus
                Exit Sub
            End If
            docNo = newdocno()
            adoprimaryrs("Divcode") = Divcode
            adoprimaryrs("DocNo") = docNo
            adoprimaryrs("Docdate") = Format(DTPicker1(0).value, "dd-mmm-yyyy")
            adoprimaryrs("Issuetype") = txtFields(2).Text
            
            Set temprs = New Recordset
            temprs.Open "Select Isstype From rm_issuetype where issue_code='" & txtFields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
            If Not temprs.EOF Then
                If temprs("Isstype") = "T" Then
                    adoprimaryrs("Refdivcode") = txtFields(4)
                Else
                    adoprimaryrs("Slcode") = txtFields(4).Text
                End If
            End If
            adoprimaryrs("Destination") = Trim(txtFields(6).Text)
            adoprimaryrs("VechicleNo") = Trim(txtFields(8).Text)
            adoprimaryrs("RemovalTime") = Format(DTPicker2.value, "HH:MM")
            adoprimaryrs("AddUser") = UserName
            adoprimaryrs("AddDate") = Now
            If docNo = "" Then Exit Sub
            
            SNos = 1
            With FpSpdGp
            For RW = 1 To .MaxRows
                .Row = RW
                adoSecondaryRS.AddNew
                adoSecondaryRS("divcode").value = Divcode
                adoSecondaryRS("DocNo").value = docNo
                adoSecondaryRS("DocDate").value = Format(DTPicker1(0).value, "YYYY/MM/DD")
                adoSecondaryRS("DocSno").value = SNos
                adoSecondaryRS("IssueNo").value = GetText(FpSpdGp, SpdIssNo, RW)
                adoSecondaryRS("IssueDate") = Format(GetText(FpSpdGp, SpdIssDt, RW), "yyyy-mm-dd")
                adoSecondaryRS("Issuetype") = Trim(txtFields(2).Text)
                adoSecondaryRS("LotNo").value = GetText(FpSpdGp, spdLotno, RW)
                adoSecondaryRS("LotDate") = Format(GetText(FpSpdGp, spdLotDt, RW), "yyyy-mm-dd")
                adoSecondaryRS("VarCode").value = GetText(FpSpdGp, spdVCode, RW)
                adoSecondaryRS("Quantity").value = GetText(FpSpdGp, SPDQty, RW)
                adoSecondaryRS("NetWeight").value = GetText(FpSpdGp, SpdKgs, RW)
                SNos = SNos + 1
            Next
            End With
            adoprimaryrs.UpdateBatch adAffectAllChapters
            adoSecondaryRS.UpdateBatch adAffectAllChapters
            
            Set TmpRs = New Recordset
            TmpRs.Open "Select Distinct IssueNo,IssueDate,IssueType from rm_outpassdt where divcode ='" & Divcode & "' and Docno='" & docNo & "' and DocDate ='" & Format(DTPicker1(0).value, "YYYY/MM/DD") & "' And Issuetype='" & Trim(txtFields(2).Text) & "'", DB, adOpenStatic, adLockReadOnly
            Do While Not TmpRs.EOF
                DB.Execute "Update Rm_Issh set OutpassDocno='" & docNo & "',OutPassDocdt='" & Format(DTPicker1(0).value, "YYYY/MM/DD") & "',OutPassFlg='Y' Where Divcode ='" & Divcode & "' And DocNo ='" & TmpRs("IssueNo") & "' And " & _
                           " DocDt ='" & Format(TmpRs("IssueDate"), "yyyy-mm-dd") & "' And IssType='" & txtFields(2).Text & "'"
                TmpRs.MoveNext
                            
            Loop
            MsgBox "Gate Pass Number for this transaction is " & docNo, vbInformation, head
            BUTTON(12).Enabled = True
            DB.CommitTrans
            Screen.MousePointer = 0
            Opt = ""
            Call Query_mode
            Exit Sub
        End If
        If Opt = "del" Then
            Set TmpRs = New Recordset
            TmpRs.Open "Select Distinct IssueNo,IssueDate,IssueType from rm_outpassdt where divcode ='" & Divcode & "' and Docno='" & adoprimaryrs("docNo") & "' and DocDate ='" & Format(adoprimaryrs("docdate"), "YYYY/MM/DD") & "' And IssueType='" & adoprimaryrs("IssueType") & "'", DB, adOpenStatic, adLockReadOnly
            Do While Not TmpRs.EOF
                DB.Execute "Update Rm_Issh set OutpassDocno=Null,OutPassDocdt=NULL,OutPassFlg=NULL Where Divcode ='" & Divcode & "' And DocNo ='" & TmpRs("IssueNo") & "' And " & _
                           " DocDt ='" & Format(TmpRs("IssueDate"), "yyyy-mm-dd") & "' And IssType='" & TmpRs("IssueType") & "'"
                TmpRs.MoveNext
            Loop
            DB.Execute "Delete From  rm_outpassdt where divcode ='" & Divcode & "' and Docno='" & adoprimaryrs("docNo") & "' and DocDate ='" & Format(adoprimaryrs("docdate"), "YYYY/MM/DD") & "' And IssueType='" & adoprimaryrs("IssueTYpe") & "'"
            DB.Execute "Delete From  rm_outpassHd where divcode ='" & Divcode & "' and Docno='" & adoprimaryrs("docNo") & "' and DocDate ='" & Format(adoprimaryrs("docDate"), "YYYY/MM/DD") & "' And IssueType='" & adoprimaryrs("IssueTYpe") & "'"
            BUTTON(12).Enabled = True
            DB.CommitTrans
            MsgBox "Record deleted successfully", vbInformation, head
            Screen.MousePointer = 0
            Opt = ""
            Call Query_mode
            Exit Sub
        End If
        

Case 10
    'cancel
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    desc.Caption = "Query"
    Screen.MousePointer = 11
    DTPicker1(0).Enabled = False
    Select Case Opt
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
    Case "add"
        'To undo addition
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Opt = ""
    Call Query_mode
    Call cancl(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
Case 11
    'EXIT
    If MsgBox("Do you want to exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
   'Pordmain.Picture2.Visible = True
Case 12
    Set rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    totVal = 0
    co = 0
    cnt = 0
    Close
    Open KALFOLDERDATA & "\OutPass.TXT" For Output As #f
    pg = 1
    Print #f, Chr(27) & Chr(77)
    Print #f,
    Print #f, Chr(27) & Chr(205)
    Print #f, Space(55) & Chr(27) & "E" & "SL.No. : " & txtFields(0).Text & Chr(27) & "F"
    Print #f, Space(55) & Chr(27) & "E" & "Date   : " & Format(DTPicker1(0).value, "dd/mm/yyyy") & Chr(27) & "E"
    Set temprs = New Recordset
    temprs.Open "Select Isstype From rm_issuetype where issue_code='" & txtFields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
    If Not temprs.EOF Then
        If temprs("Isstype") = "T" Then
            Print #f, Space(55) & Chr(27) & "E" & "TRANSFER OUT PASS " & Chr(27) & "F"
        Else
            Print #f, Space(55) & Chr(27) & "E" & "PURCHASE RETURN OUT PASS" & Chr(27) & "F"
        End If
    End If
    Print #f,
    Print #f, Space(5) & "SL.NO.   VARIETY                                       UOM            QUANTITY"
    Print #f, Space(5) & String(78, "-")
    co = 9
    Set TmpRs = New Recordset
    TmpRs.Open "SELECT a.Docno,a.Docdate,b.BBLFLG,V.VarName,SUM(ISNULL(A.Quantity,0))Quantity,SUM(ISNULL(A.NetWeight,0)) NetWeight FROM RM_OutpassDt a ,RM_LOT B,Rm_Var V WHERE a.LotNo=b.LOTNO AND a.Divcode=b.DIVCODE aND a.Lotdate=b.LOTDT And A.VarCode=V.VarCode " & _
               " and A.Divcode ='" & Divcode & "' and b.lotyear='" & Year(Format(DTPicker1(0).value, "yyyy-mm-dd")) & "' And A.Docno ='" & txtFields(0).Text & "' And DocDate='" & Format(DTPicker1(0).value, "yyyy-mm-dd") & "' And A.IssueType='" & txtFields(2).Text & "' GROUP BY A.Docno,a.Docdate,b.BBLFLG,V.VarName", DB, adOpenStatic, adLockReadOnly
    SNO = 1
    Do While TmpRs.EOF = False
        If TmpRs("BBLFLG") = "B" Then
            Tunit = "BALES"
        Else
            Tunit = "BORAH"
        End If
        Print #f, Space(5) & Padl(SNO, 5, " ") & Space(4) & Padr(TmpRs("VarName"), 38, " ") & Space(8) & Padr(Tunit, 6, " ") & Space(5) & Padl(INF(TmpRs("Quantity"), 0), 12, " ")
        co = co + 1
        totqty = totqty + TmpRs("Quantity")
        If co >= 57 Then
            Print #f, Space(5) & String(80, "-")
            Print #f, Chr(12)
            co = 0
            pg = pg + 1
            Print #f,
            Print #f, Chr(27) & Chr(77)
            Print #f, Chr(27) & Chr(205)
            pg = pg + 1
            Print #f, Space(60) & Chr(27) & "E" & "SL.No. : " & txtFields(0).Text & Chr(27) & "F"
            Print #f, Space(60) & Chr(27) & "E" & "Date   : " & Format(DTPicker1(0).value, "dd/mm/yyyy") & Chr(27) & "E"
            Set temprs = New Recordset
            temprs.Open "Select Isstype From rm_issuetype where issue_code='" & txtFields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
            If Not temprs.EOF Then
                If temprs("Isstype") = "T" Then
                    Print #f, Space(60) & Chr(27) & "E" & "TRANSFER OUT PASS " & Chr(27) & "F"
                Else
                    Print #f, Space(60) & Chr(27) & "E" & "PURCHASE RETURN OUT PASS" & Chr(27) & "F"
                End If
            End If
            Print #f, Space(5) & "SL.NO.   VARIETY                                       UOM            QUANTITY"
            Print #f, Space(5) & String(78, "-")
            co = 8
        End If
        TmpRs.MoveNext
        SNO = SNO + 1
    Loop
    co = co + 1
    For i = co To 28
        Print #f,
        i = i + 1
    Next
    Print #f, Space(5) & "Total ....... " & Space(52) & Padl(INF(totqty, 0), 12, " ")
    
    Print #f, Space(5) & String(78, "-")
    Print #f, Space(5) & "Destination  Place: " & txtFields(7).Text
    Print #f, Space(5) & "Lorry No.         : " & txtFields(8).Text
    Print #f, Space(5) & "Removal Time      : " & DTPicker2.value
    Print #f, Chr(12)
    Close #f
    f = FreeFile
    Call KALBATPROCESS("OutPass")
    Screen.MousePointer = 0
 Case 13

           Dim crygate As New clsCrystal
            Set crygate.cryRept = Cry_Gatepass_southern_New
            crygate.CrystalPrint
            CrystalReport1.Reset
            
            
            CrystalReport1.Connect = connectstring
            CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
            
           CrystalReport1.ParameterFields(0) = "@Divcode;" & Divcode & ""
           CrystalReport1.ParameterFields(1) = "@docno;" & txtFields(0).Text & ""
           CrystalReport1.ParameterFields(2) = "@date;" & Format(DTPicker1(0).value, "yyyy-mm-dd") & ""
           CrystalReport1.ParameterFields(3) = "@Isstype;" & txtFields(2).Text & ""
           CrystalReport1.ParameterFields(4) = "@Lotyr;" & Year(yfdate) & ""
  
            CrystalReport1.WindowShowPrintSetupBtn = True
            CrystalReport1.WindowShowSearchBtn = True
            CrystalReport1.WindowState = crptMaximized
            SendKeys "{ENTER}"
            CrystalReport1.Action = 1
            CrystalReport1.PrinterCopies = 1
            Screen.MousePointer = 0
            
End Select

dbltot = 0


Exit Sub
er1:
If Err = -2147467259 Then
MsgBox Err.Description, vbInformation, head
    If Mid$(Err.Description, InStr(Err.Description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  TC. " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head
    End If
Else
    MsgBox Err.Description, vbInformation, head
End If


Exit Sub
BUTTON_Click_Error:
     MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmIssue", vbInformation, head
End Sub



Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.txtFields
        oText.Locked = False
    Next
    Frame1.Enabled = True
    Frame2.Enabled = True
    Frame3.Enabled = True
    DTPicker1(0).Enabled = False
    txtFields(0).Locked = True
    txtFields(3).Locked = True
    txtFields(5).Locked = True
End Sub

Public Sub DISABLECONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.txtFields
        oText.Locked = False
    Next
    Frame1.Enabled = False
    Frame2.Enabled = False
    Frame3.Enabled = False
    
    DTPicker1(0).Enabled = False
    txtFields(0).Locked = True
    txtFields(3).Locked = True
    txtFields(5).Locked = True
End Sub

Public Sub bindcontls()
On Error Resume Next
Dim oText As TextBox
  'Bind the text boxes to the recordset
    For Each oText In Me.txtFields
        Set oText.DataSource = adoprimaryrs
    Next
    DTPicker1(0).value = adoprimaryrs("DocDate")
    DTPicker2.value = adoprimaryrs("RemovalTime")
    If Opt = "add" Then
        DTPicker1(0).value = pdate
    End If

End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub txtfields_Change(Index As Integer)
intervalMinutes = -1
Select Case Index
    Case 2
        Set TmpRs = New Recordset
        TmpRs.Open "SELECT issue_code,issue_desc,Isstype FROM rm_issuetype  WHERE Isstype IN('T','R') and issue_code = '" & Trim(txtFields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
        If Not TmpRs.EOF Then
            txtFields(3).Text = Trim(TmpRs("issue_desc"))
        Else
            txtFields(3).Text = ""
        End If
    Case 6
        Set TmpRs = New Recordset
        TmpRs.Open "SELECT AreaCode,AreaName FROM rm_Area  WHERE AreaCode = '" & Trim(txtFields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
        If Not TmpRs.EOF Then
            txtFields(7).Text = Trim(TmpRs("AreaName"))
        Else
            txtFields(7).Text = ""
        End If
    
End Select
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
intervalMinutes = -1
Select Case Index
    Case 2
        Call ToAlphanumNoSp(txtFields(Index), 3, KeyAscii)
    Case 4
        Call ToAlphanumNoSp(txtFields(Index), 7, KeyAscii)
    Case 6
        Call ToAlphanumNoSp(txtFields(Index), 5, KeyAscii)
    Case 8
        Call ToUpCase(txtFields(Index), KeyAscii)
        Call ToAlphaNumber(txtFields(Index), 15, KeyAscii)
End Select
End Sub

Private Sub txtFields_Validate(Index As Integer, Cancel As Boolean)
If Opt = "add" Or Opt = "mod" Then
    SqlString = ""
    Select Case Index
        Case 2
            Set TmpRs = New Recordset
            TmpRs.Open "SELECT issue_code,issue_desc,Isstype FROM rm_issuetype  WHERE Isstype IN('T','R','S') and Isstype = '" & Trim(txtFields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
            If Not TmpRs.EOF Then
                txtFields(Index).Text = Trim(TmpRs("issue_code"))
                txtFields(3).Text = Trim(TmpRs("issue_desc"))
            Else
                Call IssueTypeLookup
                If txtFields(Index).Text = "" Then
                    Cancel = True
                End If
            End If
        Case 4
            Set temprs = New Recordset
            temprs.Open "Select Isstype From rm_issuetype where issue_code='" & txtFields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
            If Not temprs.EOF Then
                If temprs("Isstype") = "T" Then
                    Set TmpRs = New Recordset
                    TmpRs.Open "SELECT distinct A.RDIVCODE,D.DIVNAME  FROM RM_ISSH A,PP_DIVMAS D WHERE A.RDIVCODE=d.DIVCODE AND A.DIVCODE='" & Divcode & "' and A.RDivcode = '" & txtFields(Index).Text & "'", DB, adOpenStatic, adLockReadOnly
                    If Not TmpRs.EOF Then
                        txtFields(Index).Text = Trim(TmpRs("RDIVCODE"))
                        txtFields(5).Text = Trim(TmpRs("DIVNAME"))
                        SqlString = "And A.RDivcode ='" & txtFields(Index).Text & "'"
                        Call SpdTranLoad
                    Else
                        Call DivisionLookup
                        If txtFields(Index).Text = "" Then
                            Cancel = True
                        Else
                            SqlString = "And A.RDivcode ='" & txtFields(Index).Text & "'"
                            Call SpdTranLoad
                        End If
                    End If
                ElseIf temprs("Isstype") = "R" Or temprs("Isstype") = "S" Then
                    Set TmpRs = New Recordset
                    TmpRs.Open "SELECT distinct A.Slcode,S.SlName  FROM RM_ISSH A,Fa_Slmas S WHERE A.Slcode=S.Slcode AND A.DIVCODE='" & Divcode & "' and A.Slcode = '" & txtFields(Index).Text & "'", DB, adOpenStatic, adLockReadOnly
                    If Not TmpRs.EOF Then
                        txtFields(Index).Text = Trim(TmpRs("Slcode"))
                        txtFields(5).Text = Trim(TmpRs("SlName"))
                        SqlString = "And A.Slcode ='" & txtFields(Index).Text & "'"
                        Call SpdTranLoad
                    Else
                        Call SupplierLookup
                        If txtFields(Index).Text = "" Then
                            Cancel = True
                        Else
                            SqlString = "And A.Slcode ='" & txtFields(Index).Text & "'"
                            Call SpdTranLoad
                        End If
                    End If
                End If
            End If
        Case 6
            Set TmpRs = New Recordset
            TmpRs.Open "SELECT AREACODE, AREANAME FROM Rm_Area where AreaCode='" & txtFields(6).Text & "'", DB, adOpenStatic, adLockReadOnly
            If Not TmpRs.EOF Then
                txtFields(Index).Text = Trim(TmpRs("AREACODE"))
                txtFields(7).Text = Trim(TmpRs("AREANAME"))
            Else
                LookUp.clear = True
                LookUp.query = "select AREACODE 'Code',AREANAME 'AreaName',Station,State from Rm_Area"
                LookUp.Caption = "Area Listing"
                LookUp.DefCol = "AreaName"
                LookUp.ALIGN = "800,3000,2500,2500"
                Screen.MousePointer = 0
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtFields(6).Text = LookUp.Fields(0)
                    txtFields(7).Text = LookUp.Fields(1)
                    LookUp.clear = True
                    txtFields(8).SetFocus
                Else
                    LookUp.clear = True
                    txtFields(6).SetFocus
                    Exit Sub
                End If
            End If
    End Select
End If
End Sub

Sub IssueTypeLookup()
    LookUp.clear = True
    LookUp.query = "select issue_code 'Code',issue_desc 'Description',Isstype 'Issue Type' from Rm_issuetype Where  Isstype IN('T','R','S')"
    LookUp.Caption = "IssueType Listing"
    LookUp.DefCol = "Description"
    LookUp.ALIGN = "600,3000,1500"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtFields(2).Text = LookUp.Fields(0)
        txtFields(3).Text = LookUp.Fields(1)
        LookUp.clear = True
        txtFields(4).SetFocus
    Else
        LookUp.clear = True
        txtFields(2).SetFocus
        Exit Sub
    End If
End Sub
Sub DivisionLookup()
    LookUp.clear = True
    LookUp.query = "SELECT distinct A.RDIVCODE 'Code',D.DIVNAME 'Division'  FROM RM_ISSH A,PP_DIVMAS D WHERE A.RDIVCODE=d.DIVCODE AND A.DIVCODE='" & Divcode & "'"
    LookUp.Caption = "Division Listing"
    LookUp.DefCol = "Division"
    LookUp.ALIGN = "900,4500"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtFields(4).Text = LookUp.Fields(0)
        txtFields(5).Text = LookUp.Fields(1)
        LookUp.clear = True
    Else
        LookUp.clear = True
        txtFields(4).SetFocus
        Exit Sub
    End If
End Sub
Sub SupplierLookup()
    LookUp.clear = True
    LookUp.query = "SELECT distinct A.Slcode 'Code',S.Slname 'Supplier'  FROM RM_ISSH A,Fa_Slmas S WHERE A.Slcode=S.Slcode AND A.DIVCODE='" & Divcode & "'"
    LookUp.Caption = "Supplier Listing"
    LookUp.DefCol = "Division"
    LookUp.ALIGN = "1000,4000"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtFields(4).Text = LookUp.Fields(0)
        txtFields(5).Text = LookUp.Fields(1)
        LookUp.clear = True
    Else
        LookUp.clear = True
        txtFields(4).SetFocus
        Exit Sub
    End If
End Sub
Private Sub SpdTranLoad()
If TmpRs.State = 1 Then TmpRs.Close
FraIssue.Visible = True
FraIssue.ZOrder
Set TmpRs = New Recordset
'*=
'TmpRs.Open "SELECT a.DOCNO,a.DOCDT,CASE WHEN isnull(a.slcode,'')='' THEN a.RDIVCODE ELSE a.slcode END  AS code, " & _
'           " CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name,COUNT(BaleNo)IssQty,SUM(ISNULL(ISSKGS,0))IssKgs FROM RM_ISSH a,RM_ISSB B,RM_VAR V,PP_DIVMAS D,FA_SLMAS S    " & _
'           " where a.DOCNO=b.DOCNO and a.DIVCODE=b.DIVCODE AND a.DOCDT =b.DOCDT AND a.ISSTYPE=b.ISSTYPE AND b.VARCODE=v.VARCODE AND a.RDIVCODE*=d.DIVCODE " & _
'           " AND a.slcode*=S.slcode AND a.DIVCODE='" & Divcode & "' AND a.ISSTYPE='" & txtFields(2).Text & "' AND a.DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and Isnull(OUTPASSFLG,'N')='N' " & SqlString & " " & _
'           " GROUP BY a.DOCNO,a.DOCDt,a.RDIVCODE,a.slcode,d.DIVNAME,s.slname", db, adOpenStatic, adLockReadOnly

TmpRs.Open "SELECT a.DOCNO,a.DOCDT,CASE WHEN isnull(a.slcode,'')='' THEN a.RDIVCODE ELSE a.slcode END  AS code, " & _
           " CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name,COUNT(BaleNo)IssQty,SUM(ISNULL(ISSKGS,0))IssKgs FROM RM_ISSH a inner join RM_ISSB B on a.DOCNO=b.DOCNO and a.DIVCODE=b.DIVCODE AND a.DOCDT =b.DOCDT AND a.ISSTYPE=b.ISSTYPE inner join RM_VAR V on b.VARCODE=v.VARCODE inner join PP_DIVMAS D on a.DIVCODE = d.DIVCODE left join FA_SLMAS S on a.slcode = S.slcode  " & _
           " where " & _
           " a.DIVCODE='" & Divcode & "' AND a.ISSTYPE='" & txtFields(2).Text & "' AND a.DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and Isnull(OUTPASSFLG,'N')='N' " & SqlString & " " & _
           " GROUP BY a.DOCNO,a.DOCDt,a.RDIVCODE,a.slcode,d.DIVNAME,s.slname", DB, adOpenStatic, adLockReadOnly

If Not TmpRs.EOF Then
    Call SetGridHead
    FpSpIss.MaxRows = 0
    RW = 1
    Do While Not TmpRs.EOF
        FpSpIss.MaxRows = FpSpIss.MaxRows + 1
        FpSpIss.SetText E_SpdIss.SpIssNo, RW, TmpRs("DOCNO")
        FpSpIss.SetText E_SpdIss.SpIssDt, RW, Format(TmpRs("DOCDT"), "dd/mm/yyyy")
        FpSpIss.SetText E_SpdIss.SpSlcode, RW, TmpRs("Code")
        FpSpIss.SetText E_SpdIss.Spslname, RW, TmpRs("Name")
        FpSpIss.SetText E_SpdIss.SpQty, RW, TmpRs("IssQty")
        FpSpIss.SetText E_SpdIss.SpKgs, RW, TmpRs("IssKgs")
        TmpRs.MoveNext
        RW = RW + 1
    Loop
Else
    MsgBox "No Record(s) Found ", vbInformation, head
    Call SetGridHead
    Exit Sub
End If

End Sub
Public Function newdocno()
intervalMinutes = -1
Dim Rs As Recordset
    Set Rs = New Recordset
    Rs.Open "select isnull(max(DocNo),0)+1 from Rm_outpasshd where divcode = '" & Divcode & "' AND DocDate between '" & Format(yfdate, "yyyy-mm-dd") & "'  and  '" & Format(yldate, "yyyy-mm-dd") & "' AND IssueType='" & txtFields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
    If Not (IsNull(Rs(0))) And (Rs.BOF = False) Then 'check new entry for the year or not
        newdocno = Rs(0)
    End If
End Function

Public Sub Query_mode()
intervalMinutes = -1
On Error GoTo qry1_Error
    Set adoprimaryrs = New Recordset
'*=
'    adoPrimaryRS.Open "SELECT A.Divcode,A.Docno,A.Docdate,A.Issuetype,CASE WHEN isnull(a.slcode,'')='' THEN a.RefDIVCODE ELSE a.slcode END  AS code,CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name, " & _
'                    "A.Destination,A.VechicleNo,A.RemovalTime,A.AddUser,A.AddDate,A.Moduser,A.ModDate From RM_OutpassHd A ,FA_SLMAS S ,PP_DIVMAS D WHERE a.Refdivcode*=d.DIVCODE AND a.Slcode*=s.slcode and A.Divcode ='" & Divcode & "' and A.DocDate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by DocNo ", db, adOpenStatic, adLockBatchOptimistic
   
   adoprimaryrs.Open "SELECT A.Divcode,A.Docno,A.Docdate,A.Issuetype,CASE WHEN isnull(a.slcode,'')='' THEN a.RefDIVCODE ELSE a.slcode END  AS code,CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name, " & _
                    "A.Destination,A.VechicleNo,A.RemovalTime,A.AddUser,A.AddDate,A.Moduser,A.ModDate From RM_OutpassHd A left join FA_SLMAS S on a.Slcode = s.slcode  inner join PP_DIVMAS D on a.divcode = d.DIVCODE WHERE  A.Divcode ='" & Divcode & "' and A.DocDate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by DocNo ", DB, adOpenStatic, adLockBatchOptimistic
 
    
    Opt = "qry"
    If adoprimaryrs.RecordCount > 0 Then adoprimaryrs.MoveLast
    Call bindcontls
    Call DISABLECONTLS
    Call NEWFORM1(BUTTON, GSNO)
    If adoprimaryrs.EOF Then
        Call SetGridHead
        stbar.Panels(2).Text = "No Record found"
        Screen.MousePointer = 0
        Exit Sub
    End If
    If adoprimaryrs.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoprimaryrs.AbsolutePosition) & " / " & CStr(adoprimaryrs.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
    End If
    Screen.MousePointer = 0
    desc.Caption = "Query"
    intervalMinutes = -1
    Exit Sub
Exit Sub
qry1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qry1 of Form FrmGatePass", vbInformation, head
End Sub

Private Sub SpdLoad()
Call SetGridHead
TRW = 1
Do While Not adoSecondaryRS.EOF
    FpSpdGp.MaxRows = FpSpdGp.MaxRows + 1
    FpSpdGp.SetText E_SpdGP.SpdIssNo, TRW, adoSecondaryRS("IssueNo")
    FpSpdGp.SetText E_SpdGP.SpdIssDt, TRW, Format(adoSecondaryRS("IssueDate"), "dd/mm/yyyy")
    FpSpdGp.SetText E_SpdGP.spdLotno, TRW, adoSecondaryRS("LotNo")
    FpSpdGp.SetText E_SpdGP.spdLotDt, TRW, Format(adoSecondaryRS("LotDate"), "dd/mm/yyyy")
    FpSpdGp.SetText E_SpdGP.spdVCode, TRW, adoSecondaryRS("VarCode")
    FpSpdGp.SetText E_SpdGP.SpdVName, TRW, adoSecondaryRS("VarName")
    FpSpdGp.SetText E_SpdGP.SPDQty, TRW, adoSecondaryRS("Quantity")
    FpSpdGp.SetText E_SpdGP.SpdKgs, TRW, adoSecondaryRS("NetWeight")
    adoSecondaryRS.MoveNext
    TRW = TRW + 1
Loop
End Sub
Public Sub delmodproc(a As String, B As String, c As String)
On Error GoTo delmodproc_Error
    RW = 1000
    On Error GoTo ER
    Set adoprimaryrs = New Recordset
'*=
'    adoPrimaryRS.Open "SELECT A.Divcode,A.Docno,A.Docdate,A.Issuetype,CASE WHEN isnull(a.slcode,'')='' THEN a.RefDIVCODE ELSE a.slcode END  AS code,CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name, " & _
'                    "A.Destination,A.VechicleNo,A.RemovalTime,A.AddUser,A.AddDate,A.Moduser,A.ModDate From RM_OutpassHd A ,FA_SLMAS S ,PP_DIVMAS D WHERE a.Refdivcode*=d.DIVCODE AND a.Slcode*=s.slcode and A.Divcode ='" & Divcode & "' And A.Docno = " & a & " And A.DocDate = '" & Format(b, "yyyy-mm-dd") & "' AND A.IssueType='" & C & "' Order by DocNo ", db, adOpenStatic, adLockBatchOptimistic
  
  adoprimaryrs.Open "SELECT A.Divcode,A.Docno,A.Docdate,A.Issuetype,CASE WHEN isnull(a.slcode,'')='' THEN a.RefDIVCODE ELSE a.slcode END  AS code,CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name, " & _
                    "A.Destination,A.VechicleNo,A.RemovalTime,A.AddUser,A.AddDate,A.Moduser,A.ModDate From RM_OutpassHd A left join FA_SLMAS S on a.Slcode = s.slcode inner join PP_DIVMAS D on a.divcode = d.DIVCODE WHERE  A.Divcode ='" & Divcode & "' And A.Docno = " & a & " And A.DocDate = '" & Format(B, "yyyy-mm-dd") & "' AND A.IssueType='" & c & "' Order by DocNo ", DB, adOpenStatic, adLockBatchOptimistic
   
    
    Call bindcontls
    If Opt = "mod" Then
        If Not adoSecondaryRS.EOF Then adoSecondaryRS.MoveFirst
    End If
    DTPicker1(0).Enabled = False
    Screen.MousePointer = 0
Exit Sub
ER:
    MsgBox "Select a valid value from the list", vbOKOnly, head
    BUTTON(9).Enabled = False
Exit Sub
delmodproc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodproc of Form tmpPOINDENT", vbInformation, head
End Sub


