VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frm_CatWiseOpeningStock 
   Caption         =   "Category Wise Opening Stock"
   ClientHeight    =   5595
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5730
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   5595
   ScaleWidth      =   5730
   WindowState     =   2  'Maximized
   Begin VB.Frame LSTFRME 
      Height          =   5070
      Left            =   12015
      TabIndex        =   15
      Top             =   6480
      Visible         =   0   'False
      Width           =   8625
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         DownPicture     =   "frm_CatWiseOpeningStock.frx":0000
         Height          =   615
         Left            =   4530
         Picture         =   "frm_CatWiseOpeningStock.frx":03E2
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   4110
         Width           =   1185
      End
      Begin VB.CommandButton lovok 
         Caption         =   " &Ok"
         Default         =   -1  'True
         DownPicture     =   "frm_CatWiseOpeningStock.frx":07B5
         Height          =   615
         Left            =   2790
         Picture         =   "frm_CatWiseOpeningStock.frx":0B9B
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   4110
         Width           =   1185
      End
      Begin listacx.codelist Ksldesc1 
         Height          =   3375
         Left            =   2040
         TabIndex        =   18
         Top             =   600
         Width           =   7335
         _ExtentX        =   12938
         _ExtentY        =   5953
         caption         =   ""
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
         TabIndex        =   19
         Top             =   120
         Width           =   8805
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_CatWiseOpeningStock.frx":0F61
         Height          =   510
         Index           =   4
         Left            =   1110
         Picture         =   "frm_CatWiseOpeningStock.frx":126B
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Find"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_CatWiseOpeningStock.frx":1600
         Height          =   510
         Index           =   6
         Left            =   2160
         Picture         =   "frm_CatWiseOpeningStock.frx":1A4A
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_CatWiseOpeningStock.frx":1D97
         Height          =   510
         Index           =   8
         Left            =   3210
         Picture         =   "frm_CatWiseOpeningStock.frx":21E1
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "frm_CatWiseOpeningStock.frx":2543
         Height          =   510
         Index           =   10
         Left            =   4260
         Picture         =   "frm_CatWiseOpeningStock.frx":284D
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_CatWiseOpeningStock.frx":2BC9
         Height          =   510
         Index           =   9
         Left            =   3735
         Picture         =   "frm_CatWiseOpeningStock.frx":2ED3
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_CatWiseOpeningStock.frx":3275
         Height          =   510
         Index           =   11
         Left            =   4830
         Picture         =   "frm_CatWiseOpeningStock.frx":36BF
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_CatWiseOpeningStock.frx":3A54
         Height          =   510
         Index           =   7
         Left            =   2685
         Picture         =   "frm_CatWiseOpeningStock.frx":3E9E
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_CatWiseOpeningStock.frx":41EE
         Height          =   510
         Index           =   1
         Left            =   6705
         Picture         =   "frm_CatWiseOpeningStock.frx":44F8
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Modify"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_CatWiseOpeningStock.frx":4872
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
         Left            =   585
         Picture         =   "frm_CatWiseOpeningStock.frx":4B7C
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_CatWiseOpeningStock.frx":4F18
         Height          =   510
         Index           =   5
         Left            =   1635
         Picture         =   "frm_CatWiseOpeningStock.frx":5362
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_CatWiseOpeningStock.frx":56C7
         Height          =   510
         Index           =   0
         Left            =   60
         Picture         =   "frm_CatWiseOpeningStock.frx":59D1
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6870
         TabIndex        =   14
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   8355
         TabIndex        =   13
         Top             =   255
         Width           =   690
      End
   End
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   12
      Left            =   5295
      Picture         =   "frm_CatWiseOpeningStock.frx":5D64
      Style           =   1  'Graphical
      TabIndex        =   0
      ToolTipText     =   "Print"
      Top             =   120
      Width           =   510
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   13785
      Top             =   270
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   20
      Top             =   5295
      Width           =   5730
      _ExtentX        =   10107
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "KSL"
            TextSave        =   "KSL"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "13/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "7:21 PM"
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
   Begin TabDlg.SSTab SSTabD 
      Height          =   4095
      Left            =   240
      TabIndex        =   21
      Top             =   1440
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   7223
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frm_CatWiseOpeningStock.frx":61A6
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "FrameH"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "FrameD"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame FrameD 
         Height          =   3135
         Left            =   120
         TabIndex        =   24
         Top             =   840
         Width           =   6765
         Begin FPSpreadADO.fpSpread SpdPrd 
            Height          =   2970
            Left            =   0
            TabIndex        =   37
            Top             =   120
            Width           =   6660
            _Version        =   524288
            _ExtentX        =   11747
            _ExtentY        =   5239
            _StockProps     =   64
            ArrowsExitEditMode=   -1  'True
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
            MaxCols         =   0
            MaxRows         =   0
            ProcessTab      =   -1  'True
            RowHeaderDisplay=   0
            ScrollBarExtMode=   -1  'True
            SpreadDesigner  =   "frm_CatWiseOpeningStock.frx":61C2
            AppearanceStyle =   0
         End
      End
      Begin VB.Frame FrameH 
         Height          =   735
         Left            =   120
         TabIndex        =   22
         Top             =   120
         Width           =   6735
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            DataField       =   "docno"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   0
            Left            =   1560
            TabIndex        =   32
            Top             =   240
            Width           =   1380
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "docdt"
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
            Index           =   2
            Left            =   5055
            TabIndex        =   35
            TabStop         =   0   'False
            ToolTipText     =   "Transaction Doc. Date"
            Top             =   240
            Width           =   1245
            _ExtentX        =   2196
            _ExtentY        =   476
            _Version        =   393216
            Appearance      =   0
            ForeColor       =   0
            Enabled         =   0   'False
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
         Begin MSComCtl2.DTPicker DTPicker3 
            DataField       =   "docdt"
            Height          =   315
            Left            =   5040
            TabIndex        =   36
            TabStop         =   0   'False
            Top             =   240
            Width           =   1590
            _ExtentX        =   2805
            _ExtentY        =   556
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   152305665
            CurrentDate     =   36218
         End
         Begin VB.Label Label 
            AutoSize        =   -1  'True
            Caption         =   "Doc.Date"
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
            Index           =   1
            Left            =   3240
            TabIndex        =   34
            Top             =   240
            Width           =   765
         End
         Begin VB.Label Label 
            AutoSize        =   -1  'True
            Caption         =   "Doc.No."
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
            Index           =   0
            Left            =   240
            TabIndex        =   33
            Top             =   240
            Width           =   615
         End
         Begin VB.Label Label 
            AutoSize        =   -1  'True
            Caption         =   "Tolerenceper"
            Height          =   195
            Index           =   10
            Left            =   -120
            TabIndex        =   23
            Top             =   3150
            Width           =   45
         End
      End
   End
   Begin TabDlg.SSTab SSTab2 
      Height          =   1800
      Left            =   11040
      TabIndex        =   25
      Top             =   7440
      Visible         =   0   'False
      Width           =   5355
      _ExtentX        =   9446
      _ExtentY        =   3175
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "frm_CatWiseOpeningStock.frx":6616
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame4"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame4 
         Height          =   1395
         Left            =   375
         TabIndex        =   26
         Top             =   165
         Width           =   4590
         Begin VB.CommandButton Command1 
            Caption         =   "OK"
            Height          =   375
            Left            =   1995
            TabIndex        =   28
            Top             =   870
            Width           =   915
         End
         Begin VB.TextBox Text1 
            Height          =   345
            Left            =   1155
            MaxLength       =   35
            TabIndex        =   27
            Top             =   330
            Width           =   3330
         End
         Begin VB.Label Label3 
            Caption         =   "Remarks"
            Height          =   450
            Left            =   165
            TabIndex        =   29
            Top             =   390
            Width           =   675
         End
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Category Type Wise Opening Stock"
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
      Left            =   135
      TabIndex        =   31
      Top             =   720
      Width           =   4515
   End
   Begin VB.Label lblcurrentbalance 
      Alignment       =   1  'Right Justify
      Caption         =   "label"
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
      Height          =   375
      Left            =   9255
      TabIndex        =   30
      Top             =   600
      Visible         =   0   'False
      Width           =   3375
   End
End
Attribute VB_Name = "frm_CatWiseOpeningStock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim s As String
Dim WithEvents adoSecondaryRS As Recordset
Attribute adoSecondaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS1 As Recordset
Dim Rs, rs1, rs2, rec As Recordset
Dim rr1, rr2 As New Recordset
Dim DB As Connection
Dim Opt, Str, tmp As String
Dim I, i1, txtid, ccol, crow As Integer
Dim pm As Boolean
Dim FLG As String
Dim fg As String
Dim rep As Report.ReportView
Dim Proute, rtunits, rate, kgs, value As Long
Dim Last_Proute As Integer
Dim New1Proute As Integer
Dim tq, gr, sp, gp As Double
Private pcode As String
Dim r1 As Integer
Dim RW As Integer
Dim SUMOFQTY As Double
Dim TQOTY As Double
Dim ProuteGRP As Integer
Dim sBtnmode As String
Dim Decklesd As Double

Private Enum E_FPROCESS
    SpDsno = 1
    SPDCHACODE = 2
    SPDCHACODEDESC = 3
    SPDCHARate = 4

End Enum




Private Sub DTPicker3_CloseUp()
MaskEdBox1(2).Text = Format(DTPicker3.value, "dd/MM/yyyy")
End Sub

Private Sub Form_Resize()
    On Error Resume Next
    stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
    Response = 0
End Sub

Private Sub Form_Load()
intervalMinutes = -1
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Provider = "msdatashape"
    DB.Open connectstring
    desc.Caption = "Query"
    '
    'DTPicker1.MinDate = yfdate
    'DTPicker1.MaxDate = yldate
    
    
    Opt = "qry"
    DATLAB.Caption = Date
    stbar.Panels(1).Text = head
    Call query_mode
    LSTFRME.Visible = False
    intervalMinutes = -1
End Sub
Private Sub SetHead()


'With SpdPrd
'    .ClearSelection
'    .MaxRows = 1
'    .ColHeadersAutoText = DispBlank
'    .ClearSelection
'    .MaxCols = E_FPROCESS.SPDCHARate
'    .RowHeadersShow = True
'    .Row = 1
'    .FontBold = True
''    SetSpreadCol spdVar, Icandyrate, "Rate/Unit", CellTypeNumber, 4
'    'SetSpreadCol spdVar, ILotNo, "Lot No", CellTypeStaticText
'    SetSpreadCol SpdPrd, Spddivcode, "Divcode", CellTypeStaticText
'
'    SetSpreadCol SpdPrd, SPDCHACODE, "Category ", CellTypeEdit, 3
'    SetSpreadCol SpdPrd, SPDCHACODEDESC, "Description ", CellTypeStaticText, 5
'    SetSpreadCol SpdPrd, SPDCHARate, "Opening Stock ", CellTypeNumber, 5, 3, "99999999999.999"
'    SpdPrd.Col = Spddivcode
'    SpdPrd.ColHidden = True
'
'
'End With

On Error GoTo SetGridHead_Error
With SpdPrd
    .ClearSelection
    .MaxRows = 0
    If Opt = "add" Or Opt = "mod" Then
        .ColHeadersAutoText = DispBlank
        .ClearSelection
        .MaxCols = SPDCHARate
        .Row = 0
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol_RMI SpdPrd, E_FPROCESS.SpDsno, "S.No.", CellTypeNumber, 5, , True, True
         .Col = E_FPROCESS.SpDsno
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        'SetSpreadCol SpdPrd, E_FPROCESS.SprdItemcode, "Item Code", CellTypeEdit, 8, , False, False
        SetSpreadCol_RMI SpdPrd, E_FPROCESS.SPDCHACODE, "Code", CellTypeEdit, 8, , , False
        SetSpreadCol_RMI SpdPrd, E_FPROCESS.SPDCHACODEDESC, "Name", CellTypeStaticText, 30, , False, False
        .Col = SprdCurStk
        .FontBold = True
        .ForeColor = RGB(0, 130, 0)
        .TypeHAlign = TypeHAlignRight
        .TypeEditCharSet = TypeEditCharSetNumeric
        'SetSpreadCol SpdPrd, E_FPROCESS.SprdItemcode, "Item Code", CellTypeEdit, 8, , False, False
        SetSpreadCol_RMI SpdPrd, E_FPROCESS.SPDCHARate, "Opening Stock in Kgs", CellTypeNumber, 11, 3, False, False
        

        
    ElseIf Opt = "" Or Opt = " " Or Opt = "qry" Then
        .ColHeadersAutoText = DispBlank
        .MaxCols = SPDCHARate
        .Row = 0
        .TypeTextWordWrap = True
        .FontBold = True
         SetSpreadCol_RMI SpdPrd, E_FPROCESS.SpDsno, "S.No.", CellTypeNumber, 5, , True, True
        .Col = E_FPROCESS.SpDsno
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        'SetSpreadCol SpdPrd, E_FPROCESS.SprdItemcode, "Item Code", CellTypeEdit, 8, , False, False
        SetSpreadCol_RMI SpdPrd, E_FPROCESS.SPDCHACODE, " Code", CellTypeEdit, 8, , , False
        SetSpreadCol_RMI SpdPrd, E_FPROCESS.SPDCHACODEDESC, " Name", CellTypeStaticText, 30, , False, False
        .Col = SprdCurStk
        .FontBold = True
        .ForeColor = RGB(0, 130, 0)
        .TypeHAlign = TypeHAlignRight
        .TypeEditCharSet = TypeEditCharSetNumeric
        'SetSpreadCol SpdPrd, E_FPROCESS.SprdItemcode, "Item Code", CellTypeEdit, 8, , False, False
        SetSpreadCol_RMI SpdPrd, E_FPROCESS.SPDCHARate, "Opening Stock in Kgs", CellTypeNumber, 11, 3, False, True
        
    End If
End With


Exit Sub
SetGridHead_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetGridHead of Form FrmIndentDirectorAppr"
End Sub


Public Sub query_mode()
intervalMinutes = -1

If Opt = " " Or Opt = "qry" Then
    On Error GoTo qer
    Set adoPrimaryRS = New Recordset
    '''adoprimaryrs.Open "SELECT *  FROM RM_OPSustain a where 1=1 ", DB, adOpenStatic, adLockBatchOptimistic
    
    'adoprimaryrs.Open "SELECT *  FROM RM_OPSustain a where 1=1 ", DB, adOpenStatic, adLockBatchOptimistic
    
    adoPrimaryRS.Open "SELECT *FROM RM_OPSustain where divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
   
    Call bindcontls
    Set adoSecondaryRS = New Recordset
    Set adoSecondaryRS = adoPrimaryRS
 
    SetHead
    r1 = 0
    
    For I = 0 To adoSecondaryRS.RecordCount
    
    With SpdPrd
     If Not adoSecondaryRS.EOF Then
        r1 = r1 + 1
        .MaxRows = r1
        TXTFIELDS(0).Text = adoSecondaryRS("docno")
    
'        Combo1.Text = adoPrimaryRS("prtype")
        .SetText Spddivcode, r1, adoSecondaryRS.Fields("divcode")
        .SetText SPDCHACODE, r1, adoSecondaryRS.Fields("code")
        
        .SetText SPDCHACODEDESC, r1, adoSecondaryRS.Fields("DESCRIPTION")
        .SetText SPDCHARate, r1, adoSecondaryRS.Fields("Opkgs")
       
       adoSecondaryRS.MoveNext
       End If
      End With
     Next
  
    Call disablcontls
    desc.Caption = "Query"
    DATLAB.Caption = Date
    Screen.MousePointer = 0
    SSTabD.Enabled = True
    FrameD.Enabled = True
    
    ''txtfields(12).Visible = True
    Call NEWFORM1(BUTTON, 5)

    Call disablcontls
    desc.Caption = "Query"
    DATLAB.Caption = Date
    Screen.MousePointer = 0
 
    ''txtfields(12).Visible = True
    Call NEWFORM1(BUTTON, 5)
   
Err:
    Exit Sub
  End If
    
qer:
     If Err = -2147467259 Then
      MsgBox "Connection Could Not be  established " & vbCrLf & "Log out and  try  after some  time.", vbInformation, head
     End If
     If Err = 3021 Then
      MsgBox "No Records Found", vbInformation, head
     End If
End Sub

Private Sub BUTTON_Click(Index As Integer)

intervalMinutes = -1
Select Case Index
Case 12
'        If TXTFIELDS(1).Text <> "" Then
'            Call sales_order(CStr(TXTFIELDS(1).Text), CStr(TXTFIELDS(1).Text))
'        End If
'     Dim clsCryRpt As New clsCrystal
     Set clsCryRpt.cryRept = Saleorderprint
     clsCryRpt.CrystalPrint
                
'     CrystalReport1.Reset
'     CrystalReport1.Connect = connectstring
'     CrystalReport1.ReportFileName = KALFOLDERDATA & "RptSales.rpt"
'     CrystalReport1.ParameterFields(0) = "@divcode;" & divcode & ""
'     CrystalReport1.ParameterFields(1) = "@contno;" & TXTFIELDS(1).Text & ""
'     CrystalReport1.ParameterFields(2) = "@conttype;" & TXTFIELDS(0).Text & ""
'     CrystalReport1.WindowShowPrintSetupBtn = True
'     CrystalReport1.WindowShowSearchBtn = True
'     CrystalReport1.WindowState = crptMaximized
'     SendKeys "{ENTER}"
'     CrystalReport1.Action = 1
'     CrystalReport1.PrinterCopies = 1
'     Screen.MousePointer = 0

Case 0              'ADD

    sBtnmode = "add"
    '
    Opt = "add"
    txtRef = ""

   ' TXTFIELDS(1).Locked = False
'    TXTFIELDS(2).Text = ""
'    TXTFIELDS(1).Text = ""
    Screen.MousePointer = 11
    desc.Caption = "Addition"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select *from RM_OPSustain where 1=1", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.AddNew
    SetHead
    Call bindcontls
    Call adddelmod(BUTTON)
    DTPicker3.value = pdate
     MaskEdBox1(2).Text = pdate
    SpdPrd.MaxRows = SpdPrd.MaxRows + 1
   SpdPrd.SetText E_FPROCESS.SpDsno, SpdPrd.ActiveRow, SpdPrd.MaxRows
'    TXTFIELDS(1).Locked = False
'    TXTFIELDS(2).Locked = False
'    TXTFIELDS(2).Text = ""
'    TXTFIELDS(1).Text = ""
    pcode = "' '"

    'TXTFIELDS(1).SetFocus


Case 2
    
   ' If Record_Exists("RM_OPSustain where divcode = '" & divcode & "'  and PRDesc between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'", "No Records") = False Then Exit Sub
    
      Opt = "del"
      
      Dim S1 As String
      desc.Caption = "Deletion"
        LookUp.Clear = True
        LookUp.query = "Select Docno,Docdt from RM_OPSustain where divcode='" & Divcode & "'  "
        LookUp.Caption = "LinerRate Detail Listing"
        LookUp.ALIGN = "2000,3500"
        LookUp.DefCol = "Docno"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
                a = LookUp.Fields(0)    'date
                B = LookUp.Fields(1)
             
                Call delmodproc(CStr(a), CStr(B))
                LookUp.Clear = True
        Else
            LookUp.Clear = True
            Cancel = True
        End If
        
        stbar.Panels(2).Text = "Select  from the List"
     
 
        Call adddelmod(BUTTON)
        Call ENABLCONTLS
        Screen.MousePointer = 0
    
    
Case 4 'find

    
  '  If Record_Exists("RM_OPSustain where divcode = '" & divcode & "'  and PRDesc between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'", "No Records") = False Then Exit Sub
    
      Opt = "fnd"
      
     ' Dim s1 As String
      desc.Caption = "Deletion"
        LookUp.Clear = True
        LookUp.query = "Select Docno,Docdt from RM_OPSustain where divcode='" & Divcode & "'  "
        LookUp.Caption = "LinerRate Detail Listing"
        LookUp.ALIGN = "2000,3500"
        LookUp.DefCol = "Docno"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
                a = LookUp.Fields(0)    'date
                B = LookUp.Fields(1)
              
                Call delmodproc(CStr(a), CStr(B))
                LookUp.Clear = True
        Else
            LookUp.Clear = True
            Cancel = True
        End If
        
        stbar.Panels(2).Text = "Select  from the List"
        'DTPicker1.Enabled = False
      '  MaskEdBox1.Enabled = False
'        Call adddelmod(BUTTON)
'        Call ENABLCONTLS
        Screen.MousePointer = 0


     Case 5
'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        stbar.Panels(2).Text = "First record"
        Call FIR(BUTTON)
        Set rec = adoSecondaryRS

        Exit Sub
        

GoFirstError:

    MsgBox " No Records "
    TXTFIELDS(17).Text = 0
    TXTFIELDS(18).Text = 0
    TXTFIELDS(19).Text = 0
            
Case 6
'next
          desc.Caption = "Query"

        On Error GoTo GoNextError

        If Not adoPrimaryRS.EOF Then
            adoPrimaryRS.MoveNext
            stbar.Panels(2).Text = "Record No :" & adoPrimaryRS.AbsolutePosition
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            On Error Resume Next
            
        End If
 
        Exit Sub
      
GoNextError:
  Exit Sub


Case 7
 'previous
       desc.Caption = "Query"

        On Error GoTo GoPrevError

        If Not adoPrimaryRS.BOF Then

            adoPrimaryRS.MovePrevious
            stbar.Panels(2).Text = "Record No :" & adoPrimaryRS.AbsolutePosition
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            Set rec = adoSecondaryRS
            On Error Resume Next
        End If

        Exit Sub
GoPrevError:
      Exit Sub
            

Case 8
'last
         desc.Caption = "Query"
         On Error GoTo GoLastError
         adoPrimaryRS.MoveLast
         Call las(BUTTON)
         stbar.Panels(2).Text = "Last Record"
        Exit Sub
GoLastError:
    MsgBox " No Records Found", vbCritical, head

  
Case 9              'SAVE'
    
    
    On Error Resume Next
     'Opt = "add"
    If Opt = "add" Or Opt = "mod" Then
      
    '''24/06/16
            If Opt = "add" Then
            
                sBtnmode = "save"
                
                sBtnmode = "add"
                stbar.Panels(2).Text = " "
            End If

        If Opt = "add" Then

'         If Trim(TXTFIELDS(1).Text) = "" Then
'                MsgBox "Please Enter Route", vbInformation
'                 TXTFIELDS(1).SetFocus
'              Exit Sub
'          End If
'         If Trim(TXTFIELDS(2).Text) = "" Then
'                MsgBox "Please Enter Description", vbInformation
'                TXTFIELDS(2).SetFocus
'              Exit Sub
'          End If

          
        Set Rs = New Recordset
        Rs.Open "select   max(docno)  FROM RM_OPSustain a   where divcode ='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", DB
        If IsNull(Rs(0)) = True Then
        TXTFIELDS(0).Text = 1
        Else
        TXTFIELDS(0).Text = Rs(0) + 1
        End If
        
'          Set rs1 = New Recordset
'          rs1.Open "select distinct code from RM_OPSustain  where docno ='" & TXTFIELDS(1).Text & "' and divcode='" & divcode & "' and PRDesc='" & TXTFIELDS(2).Text & "'   ", db, adOpenStatic, adLockBatchOptimistic
'            If Not rs1.EOF Then
'              MsgBox "Data already entered", vbInformation
'              Exit Sub
'            End If
        End If

       
       
       
With SpdPrd
For RW = 1 To .MaxRows
    .Row = RW
        If Trim(GetText(SpdPrd, E_FPROCESS.SPDCHACODEDESC, RW)) = "" Then
            MsgBox "Please Enter Code .", vbInformation, head
            Exit Sub
        End If
Next RW
End With

        End If

'Opt = tmp

    
    Screen.MousePointer = 11
    If Opt = "add" Then
        
        
         
        '-----------------------For Multi Entry System
        
        DB.BeginTrans
        
        Set Rs = New Recordset
        Rs.Open "select   *  FROM RM_OPSustain a   where divcode ='" & Divcode & "' and 1=2", DB, adOpenDynamic, adLockBatchOptimistic
        
        SUMOFQTY = 0
        TQOTY = 0
          
          With SpdPrd
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SpdPrd, E_FPROCESS.SPDCHACODE, RW)) <> "" Then
                            Rs.AddNew
                          
                            Rs("docno") = val(TXTFIELDS(0).Text)
                            Rs("docdt") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
                            Rs("divcode") = Divcode
                            Rs("DOCSNO") = RW
                            Rs("Opkgs") = val(Trim(GetText(SpdPrd, E_FPROCESS.SPDCHARate, RW)))
                            Rs("DESCRIPTION") = Trim(GetText(SpdPrd, E_FPROCESS.SPDCHACODEDESC, RW))
                            Rs("CODE") = Trim(GetText(SpdPrd, E_FPROCESS.SPDCHACODE, RW))

                     
                            Rs.UpdateBatch adAffectAllChapters
                        End If
                    Next RW
           End With
                            

          
        DB.CommitTrans
        MsgBox "Record Saved Successfully" & vbCrLf, vbInformation, head
        Opt = "qry"
        Call query_mode
        Screen.MousePointer = 0
        desc.Caption = "Query"
        BUTTON(0).SetFocus
        Exit Sub
    End If
    
    
    If Opt = "del" Then
        
        DB.BeginTrans
        a = MsgBox("Do you want to Delete?", vbYesNo, head)
        
        If a = 6 Then
                DB.Execute "delete from RM_OPSustain where docno='" & val(TXTFIELDS(0).Text) & "'   and docdt='" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'"
                DB.CommitTrans
                MsgBox "Record deleted Successfully" & vbCrLf, vbInformation, head
                Screen.MousePointer = 0
                Opt = " "
                Call query_mode
                Exit Sub
        Else
            Screen.MousePointer = 0
            DB.RollbackTrans
            Opt = " "
            Call query_mode
            Screen.MousePointer = 0
        End If
    End If
    
  
 Case 10
    desc.Caption = "Query"
    stbar.Panels(2).Text = "Cancel"
    Screen.MousePointer = 11

    Select Case Opt
    Case "mod"

    Case "add"

    Case "del"
 
     Case "fnd"
        DB.RollbackTrans
      
    End Select
    Opt = " "
    
    If Opt <> "qry" Then
        Opt = "qry"
        Call query_mode
    End If

   ' Call cancl(BUTTON, 22)
 
    Screen.MousePointer = 0
    
    
Case 11
    Unload Me
    
End Select

delerr:
    If CStr(Mid$(Err.Description, InStr(Err.Description, "ORA") + 4, 5)) = "02292" Then
     MsgBox "This Record Is In Use", vbInformation, head
     Opt = "del"
     BUTTON_Click (10)
    End If
MODERR:
   If Err.Number = "-2147217900 " Then
     MsgBox "This Record Is In Use (Despatch Advice) Can't modify", vbInformation, head
     Opt = "mod"
     BUTTON_Click (10)
   End If

End Sub
Public Sub bindcontls()
On Error Resume Next
Dim TF As TextBox




    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.TXTFIELDS
        Set oText.DataSource = adoPrimaryRS
    Next
    

    Set MaskEdBox1(2).DataSource = adoPrimaryRS
    Set DTPicker3.DataSource = adoPrimaryRS
    

FrameD.Enabled = True

If Not Opt = "add" Then
    On Error Resume Next
   ' Set DTPicker1.DataSource = adoPrimaryRS
   ' Set MaskEdBox1.DataSource = adoPrimaryRS
End If

End Sub
Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.TXTFIELDS
   ' tb.Locked = True
Next
End Sub

Public Sub ENABLCONTLS()
Dim X As TextBox
For Each X In Me.TXTFIELDS
    X.Locked = False
Next
FrameD.Enabled = True
End Sub


Private Sub SpdPrd_KeyDown(KeyCode As Integer, Shift As Integer)

If Opt = "add" Or Opt = "mod" Then
    
  With SpdPrd
  
      If .ActiveCol = E_FPROCESS.SPDCHACODE Then
        If KeyCode = vbKeyTab Then
    
                LookUp.Clear = True
                LookUp.query = "select Code ""Code"",DESCRIPTION from RM_SustainRMType where code not in (" & pcode & ") "
                LookUp.Caption = "Destuff Listing"
                LookUp.DefCol = "DESCRIPTION"
                LookUp.ALIGN = "1500,3500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                        pcode = pcode & ",'" & LookUp.Fields(0) & "'"
                        .SetText E_FPROCESS.SPDCHACODE, .ActiveRow, Trim(LookUp.Fields(0))
                        .SetText E_FPROCESS.SPDCHACODEDESC, .ActiveRow, Trim(LookUp.Fields(1))
                   
                Else
                  .SetText E_FPROCESS.SPDCHACODE, .ActiveRow, ""
               
    
                End If
        End If
     End If
        If .ActiveCol = E_FPROCESS.SPDCHARate Then
        If KeyCode = vbKeyTab Then
                 If MsgBox("Do you want to add another Type ?", vbYesNo, head) = vbYes Then
                         SpdPrd.MaxRows = SpdPrd.MaxRows + 1
                          SpdPrd.SetText E_FPROCESS.SpDsno, SpdPrd.MaxRows, SpdPrd.MaxRows
                         SpdPrd.Col = E_FPROCESS.SPDCHACODE
                         SpdPrd.SetFocus
                         Else
                        ' SSTabH.Tab = 1
                        ' fpPrdstp.ActiveCol = E_FProdnSTP.SpdStopcode
                         'fpPrdstp.SetFocus
                         End If
        End If
         End If
  
      
'     If .ActiveCol = E_FPROCESS.SPDFPcd Then
'        If KeyCode = vbKeyTab Then
'             LookUp.clear = True
'                LookUp.Query = "Select product_code,description as Description,sproduct_code  from ig_product"
'                LookUp.Caption = "Product List"
'                LookUp.ALIGN = "2000,3500,2000"
'                LookUp.DefCol = "Description"
'                LookUp.Show vbModal
'
'                If LookUp.Cancel = False Then
'                    Set Rs = New Recordset
'                    Rs.Open "select b.product_code as 'Product Code',C.description AS 'Shade',d.description as 'Bf',e.description as 'Gsm' from ig_product b INNER JOIN IG_SHADE C ON B.SHEADCODE=C.CODE INNER JOIN IG_BF D ON B.BFCode=D.CODE inner join ig_gsm e on b.gsm=e.code    where b.product_code='" & LookUp.Fields(0) & "'  ", db, adOpenDynamic, adLockBatchOptimistic
'                    If Not Rs.EOF Then
'                        .SetText SPDFPcd, .ActiveRow, Rs.Fields("Product Code")
'                        .SetText SPDJMMD, .ActiveRow, Rs.Fields("Shade")
'                        .SetText SPDCHACODE, .ActiveRow, Rs.Fields("Bf")
'                        .SetText SPDJMCD, .ActiveRow, Rs.Fields("Gsm")
'
'
'                        .SetText SPDDATE, .ActiveRow, MaskEdBox1.Text
'
'                    End If
'                Else
'                    MsgBox "Please Define the Customer Rate in Rate Master", vbInformation, head
'                    Exit Sub
'                End If
'                LookUp.clear = True
'    Else
'        LookUp.clear = True
'        Cancel = True
'    End If
'   End If
'
'
       
End With

'    If SpdPrd.ActiveCol = E_FPROCESS.SPDCHACODE And KeyCode = vbKeyTab Then
'    If MsgBox("Do you want to add another RollNo?", vbYesNo, head) = vbYes Then
'     SpdPrd.MaxRows = SpdPrd.MaxRows + 1
''     SpdPrd.ActiveCol = E_FPROCESS.SPDFPCD
''     SpdPrd.SetFocus
'     Else
'    ' SSTabH.Tab = 1
'    ' fpPrdstp.ActiveCol = E_FProdnSTP.SpdStopcode
'     'fpPrdstp.SetFocus
'     End If
'    End If
End If
 

 
End Sub

Private Sub SpdPrd_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
'     Dim plyparam As Double
'     Set rs = New Recordset
'     rs.Open "select *from qc_parameter where divcode='" & divcode & "'", db
'     If Not rs.EOF Then
'        plyparam = rs("plybondjm")
'
'     End If
'     plyparam = 2.092
'    If SpdPrd.ActiveCol = E_FPROCESS.SPDCHACODE Then
'        SpdPrd.SetText E_FPROCESS.SPDJMCD, SpdPrd.ActiveRow, Val(Val(Trim(GetText(SpdPrd, E_FPROCESS.SPDFPCD, SpdPrd.ActiveRow))) * plyparam)
'        SpdPrd.SetText E_FPROCESS.SPDJMMD, SpdPrd.ActiveRow, Val(Val(Trim(GetText(SpdPrd, E_FPROCESS.SPDFPMD, SpdPrd.ActiveRow))) * plyparam)
'    End If

'        Dim V_Start As Double, V_EndTime As Double, V_TotTime As Double
'             If SpdPrd.ActiveCol = E_FPROCESS.SpdStpendtime Then
'              '
'
'                If Trim(GetText(SpdPrd, E_FProdn.SpdStopcode, SpdPrd.ActiveRow)) = "" Then
'                    V_TotTime = 0
'                    SpdPrd.SetText SPDTIME, SpdPrd.ActiveRow, Format(V_TotTime, "00.00")
'                    SpdPrd.SetText spdStptotaltime, SpdPrd.ActiveRow, Format(V_TotTime, "00.00")
'                    SpdPrd.SetText SpdStpendtime, SpdPrd.ActiveRow, Format(V_TotTime, "00.00")
'
'               Else
'                 With SpdPrd
'                    V_Start = GetText(SpdPrd, E_FPROCESS.SPDTIME, .ActiveRow)
'                    V_EndTime = GetText(SpdPrd, E_FPROCESS.SpdStpendtime, .ActiveRow)
'                    If V_EndTime - V_Start < 24 Then
'                        V_TotTime = V_EndTime - V_Start
'                    Else
'                        V_TotTime = 24 - V_EndTime - V_Start
'                    End If
'                    .Col = E_FPROCESS.spdStptotaltime
'                    .celltype = CellTypeStaticText
'                    .TypeTime24Hour = TypeTime24Hour24HourClock
'                    .TypeTimeSeparator = Asc(".")
'                    .TypeSpin = True
'                    .SetText spdStptotaltime, .ActiveRow, Format(V_TotTime, "00.00")
'                End With
'               End If
'            '
'            End If
'
''
'    Dim V_Start1 As Double, V_EndTime1 As Double, V_TotTime1 As Double
'
'             If SpdPrd.ActiveCol = E_FPROCESS.spdStptotaltime Then
'
'             '
'                 If Trim(GetText(SpdPrd, E_FProdn.SpdStopcode, SpdPrd.ActiveRow)) = "" Then
'                    'V_TotTime1 = 0
'                   ' SpdPrd.SetText spdStptotaltime, SpdPrd.ActiveRow, Format(V_TotTime, "00.00")
'                    'SpdPrd.SetText SpdStpendtime, SpdPrd.ActiveRow, Format(V_TotTime, "00.00")
'
'
'
'                With SpdPrd
'                    V_Start1 = GetText(SpdPrd, E_FPROCESS.Spdrunhr, .ActiveRow)
'                    V_EndTime1 = GetText(SpdPrd, E_FPROCESS.spdStptotaltime, .ActiveRow)
'                    If V_EndTime1 - V_Start1 < 24 Then
'                        V_TotTime1 = V_EndTime1 - V_Start1
'                    Else
'                        V_TotTime1 = 24 - V_EndTime1 - V_Start1
'                    End If
'                    .Col = E_FPROCESS.Spdwrkdhrs
'                    .celltype = CellTypeStaticText
'                    .TypeTime24Hour = TypeTime24Hour24HourClock
'                    .TypeTimeSeparator = Asc(".")
'                    .TypeSpin = True
'                    .SetText Spdwrkdhrs, .ActiveRow, Format(Abs(V_TotTime1), "00.00")
'                    '
'                    If Abs(V_TotTime1) > 0 Then
'                        '.SetText SPDCHACODE, .ActiveRow, Round((Val(GetText(SpdPrd, E_FPROCESS.SPDJMCD, .ActiveRow)) / Val(GetText(SpdPrd, E_FPROCESS.Spdrunhr, .ActiveRow)) * Val(GetText(SpdPrd, E_FPROCESS.Spdconsist, .ActiveRow)) * Abs(V_TotTime1)), 2)
'                        .SetText SPDCHACODE, .ActiveRow, Round((Val(GetText(SpdPrd, E_FPROCESS.SPDJMCD, .ActiveRow)) * Val(GetText(SpdPrd, E_FPROCESS.Spdconsist, .ActiveRow)) * Abs(V_TotTime1)) / 1000, 2)
'                        ''''Equipment Production :   Pump capacity m3/hour  x  consistancy % x working hours
'                    End If
'
'                End With
'            End If
'            '
'           End If
'

End Sub

Private Sub txtFields_Change(Index As Integer)
If Len(Trim(Opt)) = 0 Or Opt = " " Or Opt = "qry" Or Opt = "fnd" Or Opt = "del" Then
    
'    Select Case Index
'    Case 1
'        Set TmpRs = New Recordset
'        TmpRs.Open "Select Slcode,Slname From fa_Slmas where slcode ='" & TXTFIELDS(1).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
'        If Not TmpRs.EOF Then
'            TXTFIELDS(2).Text = TmpRs("Slname")
'        Else
'            TXTFIELDS(2).Text = ""
'        End If
'
'
'    End Select
End If

End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo Err
intervalMinutes = -1
    If Opt <> "add" Then
    stbar.Panels(2).Text = "Record: " & CStr(adoPrimaryRS.AbsolutePosition)
                 'MaskEdBox1.Text = adoprimaryrs("date")
    End If
    
    If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then

    Set adoSecondaryRS = New Recordset
    '''adoSecondaryRS.Open "select * from  RM_OPSustain a  where   A.shift ='" & adoprimaryrs.Fields("shift") & "' and a.PRDesc='" & Format(adoprimaryrs.Fields("PRDesc"), "yyyy-mm-dd") & "'  ", DB, adOpenStatic, adLockBatchOptimistic
    
'    adoSecondaryRS.Open "select eqpno,eqpname,pumpcap,runhr,consist,prodn,stdrej,a.Stopcode,b.reason,TimeStart,timeEnd,TotalMin,wrkdhr,remarks from  RM_OPSustain a,sstop b where  a.divcode='" & divcode & "' and a.divcode=b.divcode AND a.Stopcode=b.stopcode and   A.shift ='" & adoprimaryrs.Fields("shift") & "' and a.PRDesc='" & Format(adoprimaryrs.Fields("PRDesc"), "yyyy-mm-dd") & "'  ", DB, adOpenStatic, adLockBatchOptimistic
'a.divcode,PRDesc,Shift,incharge,

    adoSecondaryRS.Open "select * FROM RM_OPSustain where  divcode='" & Divcode & "' and DOCNO='" & adoPrimaryRS.Fields("DOCNO") & "' and DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockBatchOptimistic

    SetHead
      r1 = 0
    For I = 0 To adoSecondaryRS.RecordCount
    With SpdPrd
     If Not adoSecondaryRS.EOF Then
        r1 = r1 + 1
        .MaxRows = r1
            TXTFIELDS(0).Text = adoSecondaryRS("docno")
           
            If IsDate(adoSecondaryRS("docdt")) = True Then MaskEdBox1(2).Text = Format(adoSecondaryRS("docdt"), "dd/MM/yyyy") Else MaskEdBox1(2).Text = "__/__/____"
           
            .SetText Spddivcode, r1, adoSecondaryRS.Fields("divcode")
            .SetText SPDCHACODEDESC, r1, adoSecondaryRS.Fields("description")

            .SetText SPDCHACODE, r1, adoSecondaryRS.Fields("Code")
            .SetText SPDCHARate, r1, adoSecondaryRS.Fields("Opkgs")
         
       adoSecondaryRS.MoveNext
       End If
      End With
     Next
   
    Call disablcontls
    desc.Caption = "Query"
    DATLAB.Caption = Date
    Screen.MousePointer = 0
    SSTabD.Enabled = True
    FrameD.Enabled = True

    Call NEWFORM1(BUTTON, 5)

    Call disablcontls
    desc.Caption = "Query"
    DATLAB.Caption = Date
    Screen.MousePointer = 0

    Call NEWFORM1(BUTTON, 5)
      
End If

Err:
End Sub
Private Sub adosecondaryrs_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo Err
If Opt = "qry" Or Opt = " " And Not adoSecondaryRS.EOF And Not adoSecondaryRS.BOF Then
    stbar.Panels(2).Text = "Record: " & CStr(adoPrimaryRS.AbsolutePosition) & "  of  " & adoPrimaryRS.RecordCount
    
    End If
    Exit Sub
Err:
End Sub
    
Private Sub txtFields_GotFocus(Index As Integer)


If LSTFRME.Visible = True Then
    Ksldesc1.SetFocus
    Exit Sub
End If

If Opt = "add" Or Opt = "mod" Then
'
'Select Case Index
'Case 6, 9
'      stbar.Panels(2).Text = "Enter Maximum of 5 Integer with 3 Decimals"
'Case 14
'      stbar.Panels(2).Text = "Enter Maximum of 3 Integer"
'Case 10, 11
'Case 6, 9
'      stbar.Panels(2).Text = "Enter Maximum of 30 Characters"
'
'End Select
End If

End Sub


Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
Call ToUpCase(TXTFIELDS(Index), KeyAscii)
intervalMinutes = -1
Select Case Index

Case 0
    'Call ToUpCase(TXTFIELDS(0), KeyAscii)
Case 6
    'ToNum txtfields(6), 2, KeyAscii
Case 9
    tonum TXTFIELDS(9), 2, KeyAscii
Case 14
    'ToNumber TXTFIELDS(14), 3, KeyAscii
End Select
End Sub



Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)


If Opt = "add" Or Opt = "mod" Then
    
'If Index = 1 Then
'
'
'
'     Set Rs = New Recordset
'     Rs.Open "select * from fa_slmas where slcode='" & TXTFIELDS(1).Text & "'", DB, adOpenStatic
'
'
'    If Rs.RecordCount > 0 Then
'            TXTFIELDS(1).Text = Rs("SLCODE")
'            TXTFIELDS(2).Text = Rs("SLNAME")
'    End If
'
'
'    If Rs.RecordCount = 0 Then
'         Buttonframe.Enabled = False
'
'         LookUp.clear = True
'         LookUp.query = "select distinct Slname""SupplierName"",Slcode""Code"",Country  from fa_slmas  where slcode like 'C5%'"
'         LookUp.Caption = "Customer Listing"
'         LookUp.DefCol = "CustomerName"
'         LookUp.ALIGN = "4500,1500,1500"
'        LookUp.Show vbModal
'         If LookUp.Cancel = False Then
'            Buttonframe.Enabled = True
'             TXTFIELDS(1).Text = LookUp.Fields(1)
'            TXTFIELDS(1).Locked = True
'            TXTFIELDS(1).Text = LookUp.Fields(1)
'            TXTFIELDS(2).Text = LookUp.Fields(0)
'             TXTFIELDS(1).Text = LookUp.Fields(1)
'
'         Else
'                 LookUp.clear = True
'
'                 TXTFIELDS(1).SetFocus
'                 Cancel = True
'                 Exit Sub
'         End If
'       stbar.Panels(2).Text = "Select supplier Name from the List"
'    End If
'End If


    

    If Opt = "add" And Index = 29 Then
        grddatagrid.Col = 0
        grddatagrid.SetFocus
    End If
End If
End Sub

Public Sub delmodproc(a As String, B As String)
    
    RW = 1000
    BUTTON(9).Enabled = True
        Call ENABLCONTLS
        Set adoSecondaryRS = New Recordset
        'adoSecondaryRS.Open "select *  from RM_OPSustain  where  divcode='" & divcode & "' and shift ='" & adoprimaryrs.Fields("shift") & "' and PRDesc='" & Format(adoprimaryrs.Fields("PRDesc"), "yyyy-mm-dd") & "'  ", DB, adOpenStatic, adLockBatchOptimistic
        
        adoSecondaryRS.Open "select *  from RM_OPSustain  where  divcode='" & Divcode & "'  and docdt='" & Format(B, "yyyy-mm-dd") & "' and docno='" & Trim(a) & "' ", DB, adOpenStatic, adLockBatchOptimistic


    SetHead
    r1 = 0
    
    For I = 0 To adoSecondaryRS.RecordCount
    
     With SpdPrd
         If Not adoSecondaryRS.EOF Then
            r1 = r1 + 1
            .MaxRows = r1
            
            TXTFIELDS(0).Text = adoSecondaryRS("docno")
       
            If IsDate(adoSecondaryRS("docdt")) = True Then MaskEdBox1(2).Text = Format(adoSecondaryRS("docdt"), "dd/MM/yyyy") Else MaskEdBox1(2).Text = "__/__/____"
           
            .SetText Spddivcode, r1, adoSecondaryRS.Fields("divcode")
            .SetText SPDCHACODEDESC, r1, adoSecondaryRS.Fields("description")

            .SetText SPDCHACODE, r1, adoSecondaryRS.Fields("CODE")
            .SetText SPDCHARate, r1, adoSecondaryRS.Fields("Opkgs")

            
            adoSecondaryRS.MoveNext
       End If
      End With
     Next
     
    Call disablcontls
    desc.Caption = "Query"
    DATLAB.Caption = Date
    Screen.MousePointer = 0
    Call NEWFORM1(BUTTON, 5)
    Call disablcontls
    DATLAB.Caption = Date
    Screen.MousePointer = 0
    Call NEWFORM1(BUTTON, 5)
End Sub




