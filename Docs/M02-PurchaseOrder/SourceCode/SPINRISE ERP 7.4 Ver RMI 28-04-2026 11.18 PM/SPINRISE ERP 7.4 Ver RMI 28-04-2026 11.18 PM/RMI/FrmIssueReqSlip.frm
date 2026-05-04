VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmIssueRequstionSlip 
   Caption         =   "Issue Requisition"
   ClientHeight    =   8220
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9480
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   8220
   ScaleWidth      =   9480
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   405
      Top             =   6225
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      WindowControlBox=   -1  'True
      WindowMaxButton =   -1  'True
      WindowMinButton =   -1  'True
      WindowState     =   2
      PrintFileLinesPerPage=   60
      WindowShowCloseBtn=   -1  'True
      WindowShowSearchBtn=   -1  'True
      WindowShowPrintSetupBtn=   -1  'True
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4380
      Left            =   4470
      TabIndex        =   35
      Top             =   1200
      Visible         =   0   'False
      Width           =   4080
      _ExtentX        =   7197
      _ExtentY        =   7726
   End
   Begin VB.Frame Frame12 
      Height          =   540
      Left            =   3045
      TabIndex        =   36
      Top             =   585
      Visible         =   0   'False
      Width           =   5460
      Begin VB.OptionButton Option8 
         Caption         =   "No"
         Height          =   225
         Left            =   3000
         TabIndex        =   39
         Top             =   240
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option9 
         Caption         =   "Yes"
         Height          =   255
         Left            =   1755
         TabIndex        =   38
         Top             =   225
         Width           =   1260
      End
      Begin VB.CommandButton cmd_report 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   330
         Left            =   4140
         TabIndex        =   37
         Top             =   150
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.Label Label13 
         Caption         =   "Report Footer"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   150
         TabIndex        =   40
         Top             =   225
         Width           =   1425
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -45
      TabIndex        =   3
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
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
         Index           =   12
         Left            =   5865
         Picture         =   "FrmIssueReqSlip.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   34
         ToolTipText     =   "Issue Report Print (Ctrl P)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   6390
         Picture         =   "FrmIssueReqSlip.frx":0442
         Style           =   1  'Graphical
         TabIndex        =   33
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   1635
         Picture         =   "FrmIssueReqSlip.frx":0884
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   495
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssueReqSlip.frx":0C1B
         Height          =   510
         Index           =   8
         Left            =   4260
         Picture         =   "FrmIssueReqSlip.frx":1065
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "FrmIssueReqSlip.frx":13C7
         Height          =   510
         Index           =   10
         Left            =   5340
         Picture         =   "FrmIssueReqSlip.frx":16D1
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Cancel (Ctrl BackSpace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssueReqSlip.frx":1A4D
         Height          =   510
         Index           =   9
         Left            =   4800
         Picture         =   "FrmIssueReqSlip.frx":1D57
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssueReqSlip.frx":20F9
         Height          =   510
         Index           =   11
         Left            =   6915
         Picture         =   "FrmIssueReqSlip.frx":2543
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssueReqSlip.frx":28D8
         Height          =   510
         Index           =   7
         Left            =   3735
         Picture         =   "FrmIssueReqSlip.frx":2D22
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssueReqSlip.frx":3072
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "FrmIssueReqSlip.frx":337C
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssueReqSlip.frx":36F6
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
         Left            =   1095
         Picture         =   "FrmIssueReqSlip.frx":3A00
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssueReqSlip.frx":3D9C
         Height          =   510
         Index           =   5
         Left            =   2670
         Picture         =   "FrmIssueReqSlip.frx":41E6
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssueReqSlip.frx":454B
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "FrmIssueReqSlip.frx":4855
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssueReqSlip.frx":4BE8
         Height          =   510
         Index           =   6
         Left            =   3210
         Picture         =   "FrmIssueReqSlip.frx":5032
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssueReqSlip.frx":537F
         Height          =   510
         Index           =   3
         Left            =   2130
         Picture         =   "FrmIssueReqSlip.frx":5689
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (ctrl F)"
         Top             =   120
         Width           =   520
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   8430
         TabIndex        =   19
         Top             =   270
         Width           =   615
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   10365
         TabIndex        =   18
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   20
      Top             =   7920
      Width           =   9480
      _ExtentX        =   16722
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
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "31/03/2009"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "07:02"
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
   Begin TabDlg.SSTab SSTab1 
      Height          =   4035
      Left            =   585
      TabIndex        =   21
      Top             =   1185
      Width           =   6345
      _ExtentX        =   11192
      _ExtentY        =   7117
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "FrmIssueReqSlip.frx":5A1E
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Grddatagrid"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      Begin VB.Frame Frame1 
         Height          =   1035
         Left            =   150
         TabIndex        =   29
         Top             =   45
         Width           =   6045
         Begin VB.TextBox Text5 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   360
            Left            =   2385
            Locked          =   -1  'True
            TabIndex        =   12
            TabStop         =   0   'False
            Top             =   585
            Width           =   3435
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "mixcount"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   0
            Left            =   1335
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   11
            Top             =   570
            Width           =   1005
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "dOCNO"
            Enabled         =   0   'False
            Height          =   330
            Index           =   1
            Left            =   1320
            TabIndex        =   9
            TabStop         =   0   'False
            Top             =   180
            Width           =   1020
         End
         Begin MSComCtl2.DTPicker DTPDate 
            DataField       =   "DocDate"
            Height          =   330
            Index           =   0
            Left            =   4470
            TabIndex        =   10
            Top             =   195
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            CalendarForeColor=   -2147483640
            Format          =   64552961
            CurrentDate     =   36218
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   165
            TabIndex        =   32
            Top             =   645
            Width           =   915
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Document No."
            Height          =   195
            Index           =   2
            Left            =   180
            TabIndex        =   31
            Top             =   285
            Width           =   1035
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Document Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   3
            Left            =   3075
            TabIndex        =   30
            Top             =   255
            Width           =   1125
         End
      End
      Begin MSDataGridLib.DataGrid Grddatagrid 
         Height          =   2715
         Left            =   150
         TabIndex        =   14
         Top             =   1155
         Width           =   6015
         _ExtentX        =   10610
         _ExtentY        =   4789
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         WrapCellPointer =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
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
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
      Begin VB.Frame Frame4 
         Height          =   4710
         Left            =   360
         TabIndex        =   23
         Top             =   -5160
         Visible         =   0   'False
         Width           =   7995
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
         Begin VB.CommandButton lovcancel 
            Caption         =   "&Cancel"
            DownPicture     =   "FrmIssueReqSlip.frx":5A3A
            Height          =   615
            Left            =   4680
            Picture         =   "FrmIssueReqSlip.frx":5E1C
            Style           =   1  'Graphical
            TabIndex        =   25
            Top             =   3915
            Width           =   1185
         End
         Begin VB.CommandButton lovok 
            Caption         =   "&OK"
            DownPicture     =   "FrmIssueReqSlip.frx":61EF
            Height          =   615
            Left            =   2940
            Picture         =   "FrmIssueReqSlip.frx":65D5
            Style           =   1  'Graphical
            TabIndex        =   24
            Top             =   3915
            Width           =   1185
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
            TabIndex        =   27
            Top             =   120
            Width           =   7935
         End
      End
      Begin VB.Frame Frame2 
         Height          =   2820
         Left            =   150
         TabIndex        =   28
         Top             =   1065
         Width           =   6045
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Issue Requisition"
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
      Left            =   600
      TabIndex        =   22
      Top             =   840
      Width           =   2190
   End
End
Attribute VB_Name = "FrmIssueRequstionSlip"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim rstCode As Recordset
Dim DB As Connection
Dim Opt As String
Dim deltype As String
Dim iDocNo As Integer
Dim mvd As String
Dim irow  As Integer
Dim rs1 As Recordset
Dim sp As Recordset
Dim itary() As String
Dim modqty As Double
Dim Fnd As String
Dim GRP As String
Dim RW As Long
Dim rpt As String
Dim st2 As String, st1 As String
Dim chrs As Recordset
Dim flg As String
Dim itemc As String
Dim totamount As Double
Dim REPT As Report.ReportView
Dim a, C, pg1 As Integer
Dim PcodeRs As Recordset
Dim Supcode As String
Dim dbltot As Double

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
On Error Resume Next
dbltot = 0
Select Case Index
Case 0
        If ToValidFinYear = False Then Exit Sub
        Opt = "add"
        desc.Caption = "Addition"
        Screen.MousePointer = 11
        stbar.Panels(2).Text = "Addition"
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode and 1=2", DB, adOpenStatic, adLockBatchOptimistic
        Call bindcontls
'        adoPrimaryRS.AddNew
        Txtfields(1).Text = ""
        Txtfields(0).Locked = False
        Txtfields(0).Text = ""
        Text5.Text = ""
        Set grddatagrid.DataSource = adoprimaryrs
        ReDim itary(100, 0)
        DB.BeginTrans
        Call GRDALIGN
        Call ENABLCONTLS
'        grddatagrid.AllowUpdate = True
'        grddatagrid.AllowAddNew = True
        
'
        Txtfields(0).SetFocus
        stbar.Panels(2).Text = " Select the Variety from list"
         Call adddelmod(BUTTON)
         Screen.MousePointer = 0
         On Error Resume Next
         DTPDate(0).Enabled = True
         DTPDate(0).MaxDate = yldate
         DTPDate(0).MinDate = yfdate
         DTPDate(0).value = pdate
Case 1
'        'Modification
        Opt = "mod"
        desc.Caption = "Modification"
        If Record_Exists("RM_RequisitionSlip where divcode='" & Divcode & "'") = False Then Exit Sub
        Buttonframe.Enabled = False
        stbar.Panels(2).Text = "Select Code from the List"
        Call adddelmod(BUTTON)
        grddatagrid.AllowUpdate = True
        DB.BeginTrans
        stbar.Panels(2).Text = "Select the Record to be  Modification"
        LookUp.clear = True
        LookUp.Query = "select a.DocNo""Document No."",a.DocDate ""Document Date"" from RM_RequisitionSlip a where isnull(issued,'N')='N' and  a.divcode='" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' Group by a.DocNo,a.docdate"
        LookUp.Caption = "Document No Listing"
        LookUp.DefCol = "Document No."

        LookUp.ALIGN = "2500,2500"
       LookUp.Show vbModal
        If LookUp.Cancel = False Then
            SSTab1.Visible = True
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And Docno =" & val(LookUp.Fields(0)) & " And DocDate= '" & Format(LookUp.Fields(1), "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoprimaryrs
'            Set adoSecondaryRS = New Recordset
            Call GRDALIGN
            Call bindcontls
            
            
            If Opt = "mod" Then
              Call ENABLCONTLS
              DTPDate(0).Enabled = False
'              txtFields(2).Locked = True
                Txtfields(0).Locked = False
              grddatagrid.Columns(3).Locked = True
              grddatagrid.Columns(4).Locked = True
            ElseIf Opt = "del" Then
              Call disablcontls
            End If
           Buttonframe.Enabled = True
           SSTab1.Visible = True
           Call GRDALIGN
        Else
           Buttonframe.Enabled = True
           BUTTON_Click (10)
           SSTab1.Visible = True
        End If

 Case 2
         'Deletion
        Opt = "del"
        desc.Caption = "Deletion"
'        If Record_Exists("FA_FORM_ISSH where divcode='" & Divcode & "'") = False Then Exit Sub
        Buttonframe.Enabled = False
        stbar.Panels(2).Text = "Select Code from the List"
        Call adddelmod(BUTTON)
        grddatagrid.AllowUpdate = True
        DB.BeginTrans
        stbar.Panels(2).Text = "Select the Record to be  Deleted"
        LookUp.clear = True
        LookUp.Query = "select Distinct a.DocNo""Document No."",a.DocDate ""Document Date"" from RM_RequisitionSlip a where isnull(issued,'N')='N' and  a.divcode='" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "'"
        LookUp.Caption = "Document No Listing"
        LookUp.DefCol = "Document No."
        LookUp.ALIGN = "2500,2500"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
            SSTab1.Visible = True
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And Docno =" & val(LookUp.Fields(0)) & " And DocDate= '" & Format(LookUp.Fields(1), "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRS = New Recordset
            Call bindcontls
            Call GRDALIGN
            
            If Opt = "mod" Then
              Call ENABLCONTLS
              Txtfields(2).Locked = True
              grddatagrid.Columns(3).Locked = True
              grddatagrid.Columns(4).Locked = True
              grddatagrid.Columns(5).Locked = True
              grddatagrid.Columns(6).Locked = True
            ElseIf Opt = "del" Then
              Call disablcontls
            End If
           Buttonframe.Enabled = True
           SSTab1.Visible = True
           BUTTON(9).SetFocus
        Else
           Buttonframe.Enabled = True
           BUTTON_Click (10)
           SSTab1.Visible = True
        End If
Case 3
        'Modification
        Opt = "fnd"
        desc.Caption = "Find"
        'If Record_Exists("FA_FORM_ISSH where divcode='" & Divcode & "'") = False Then Exit Sub
       ' SSTab1.Visible = False
        stbar.Panels(2).Text = "Select Code from the List"
        Buttonframe.Enabled = False
        grddatagrid.AllowUpdate = True
        stbar.Panels(2).Text = "Select the Record to be  Find"
        LookUp.clear = True
        LookUp.Query = "select Distinct a.DocNo""Document No."",a.DocDate ""Document Date"" from RM_RequisitionSlip a where a.divcode='" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "'"
        LookUp.Caption = "Document No Listing"
        LookUp.DefCol = "Document No."
        LookUp.ALIGN = "2500,2500"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
            SSTab1.Visible = True
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And Docno =" & val(LookUp.Fields(0)) & " And DocDate= '" & Format(LookUp.Fields(1), "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRS = New Recordset
            Call bindcontls
            Call GRDALIGN
            Call disablcontls
            grddatagrid.AllowUpdate = False
            grddatagrid.AllowAddNew = False
           Buttonframe.Enabled = True
           SSTab1.Visible = True
        Else
           Buttonframe.Enabled = True
           BUTTON_Click (10)
           SSTab1.Visible = True
        End If
        Exit Sub
Case 4
        'LIST
        
        desc.Caption = "List"
        Set sp = New Recordset
        sp.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty,IssQty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If sp.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        Set REPT = New Report.ReportView
        a = FreeFile()
        Close
        Open "C:\amc_list.txt" For Output As #a
        pg1 = 1
        C = 0
        Call Amc_List_Header
        iDocNo = 0
        Do While Not sp.EOF
            If iDocNo <> sp("Docno") Then
                Print #a, Space(5) & Padr(sp("docNo"), 10, " ") & Space(2) & Padr(Format(sp("DocDate"), "DD/MM/YY"), 12, "") & Space(2) & Padr(sp("Varname"), 25, " ") & Space(2) & Padl(INF(sp("Qty"), 0), 8, " ") & Space(2) & Padl(INF(sp("IssQty"), 0), 9, " ")
                iDocNo = sp("Docno")
            Else
                Print #a, Space(31) & Padr(sp("Varname"), 25, " ") & Space(2) & Padl(INF(sp("Qty"), 0), 8, " ") & Space(2) & Padl(INF(sp("IssQty"), 0), 9, " ")
            End If
            
            C = C + 1
            If C >= PageLen Then
                Print #a, Space(5) & String(72, "-")
                Print #a, Chr(12)
                pg1 = pg1 + 1
                C = 0
                Call Amc_List_Header
            End If
         sp.MoveNext
       Loop
       Print #a, Space(5) & String(72, "-")
       Print #a, Chr(12)
       a = FreeFile()
       Close
       Open "C:\amc_list.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "c:"
        Print #a, "cd\"
        Print #a, "type amc_list.txt>prn"
        Close #a
        REPT.txtfile = "c:\amc_list.txt"
        REPT.Batfile = "c:\amc_list.bat"
        Exit Sub
Case 5
       'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        
''        Set Rs = New Recordset
''        Rs.Open "Select DISTINCT Divcode,Docno,DocDate from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
''        If Rs.EOF Then Exit Sub
        Rs.MoveFirst
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And Docno =" & Rs("Docno") & " And DocDate= '" & Format(Rs("DocDate"), "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        grddatagrid.AllowUpdate = False
        
        
        'calling fir procedure from module
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        Call FIR(BUTTON)
        stbar.Panels(2).Text = "Records" & " " & Rs.AbsolutePosition & " / " & " " & Rs.RecordCount
        Exit Sub
GoFirstError:
    If Err = 3021 Then
        MsgBox "No records Found", vbInformation, head
        Exit Sub
    End If
       
Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
'        Set Rs = New Recordset
''        Rs.Open "Select dISTINCT Divcode,Docno,DocDate from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.EOF Then Exit Sub
        Rs.MoveNext
        If Not Rs.EOF Then
           
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And Docno =" & Rs("Docno") & " And DocDate= '" & Format(Rs("DocDate"), "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
            grddatagrid.AllowUpdate = False
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If Rs.EOF And Rs.RecordCount > 0 Then
            Rs.MoveLast
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And Docno =" & Rs("Docno") & " And DocDate= '" & Format(Rs("DocDate"), "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
            grddatagrid.AllowUpdate = False
            Call NEX(BUTTON)
        End If
        
        'show the current record
        stbar.Panels(2).Text = "Records" & " " & Rs.AbsolutePosition & " / " & " " & Rs.RecordCount
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
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
        
'        Set Rs = New Recordset
'        Rs.Open "Select dISTINCT Divcode,Docno,DocDate from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
'        If Rs.EOF Then Exit Sub
        Rs.MovePrevious
        If Rs.BOF = False Then

            
            
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And Docno =" & Rs("Docno") & " And DocDate= '" & Format(Rs("DocDate"), "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
            grddatagrid.AllowUpdate = False

            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If Rs.BOF And Rs.RecordCount > 0 Then
            Rs.MoveFirst
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And Docno =" & Rs("Docno") & " And DocDate= '" & Format(Rs("DocDate"), "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
            grddatagrid.AllowUpdate = False
            Call prev(BUTTON)
            BUTTON(0).SetFocus
         End If
        'show the current record
        stbar.Panels(2).Text = "Records" & " " & Rs.AbsolutePosition & " / " & " " & Rs.RecordCount
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
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
'        Set Rs = New Recordset
'        Rs.Open "Select DISTINCT Divcode,Docno,DocDate from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
'        If Rs.EOF Then Exit Sub
        Rs.MoveLast
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And Docno =" & Rs("Docno") & " And DocDate= '" & Format(Rs("DocDate"), "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        grddatagrid.AllowUpdate = False
        stbar.Panels(2).Text = "Records" & " " & Rs.AbsolutePosition & " / " & " " & Rs.RecordCount
        'calling las procedure from module
        
        Call las(BUTTON)
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        Exit Sub
GoLastError:
       If Err = 3021 Then
         MsgBox " No records Found", vbInformation, head
         Exit Sub
       End If

Case 9
        'Save
        Screen.MousePointer = 11
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        DTPDate(0).Enabled = False
        On Error GoTo er1
                  
           If Trim(Txtfields(0).Text) = "" Then
                MsgBox "Please enter the Mix Count", vbInformation, head
                Txtfields(0).SetFocus
                Exit Sub
           End If
           
  
        If Opt = "add" Then
'           ' Opt = ""
'           If Trim(txtFields(0).Text) = "" Then
'                MsgBox "Please enter the Mix Count", vbInformation, head
'                txtFields(0).SetFocus
'                Exit Sub
'           End If
'
'
            adoprimaryrs.MoveFirst
            Do While Not adoprimaryrs.EOF
                If adoprimaryrs(3) = "" Or adoprimaryrs(3) = " " Or IsEmpty(adoprimaryrs(3)) = True Or IsNull(adoprimaryrs(3)) = True Then
                    adoprimaryrs.Delete
                ElseIf IsNull(adoprimaryrs(3)) Then
                    MsgBox "Please enter the Variety", vbInformation, head
                    grddatagrid.Col = 3
                    grddatagrid.SetFocus
                    Opt = "add"
                    Screen.MousePointer = 0
                    Exit Sub
                  ElseIf (adoprimaryrs(5) <= 0) Then
                    MsgBox "Please enter the Quantity", vbInformation, head
                    grddatagrid.Col = 5
                    grddatagrid.SetFocus
                    Opt = "add"
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                adoprimaryrs.MoveNext
            Loop
            
            If adoprimaryrs.RecordCount <= 0 Then
                MsgBox "Issue requires atleast one Variety detail", vbInformation, head
                Opt = "add"
                Screen.MousePointer = 0
                Exit Sub
            End If
            
            Set Rs = New Recordset
            Rs.Open "Select isnuLL(Max(docno),0)+1 as docno From RM_RequisitionSlip where Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic
            iDocNo = Rs(0)
            irow = 1
                adoprimaryrs.MoveFirst
                Do While Not adoprimaryrs.EOF
                    strSQL = "Insert into RM_RequisitionSlip (Divcode,DocNo,DocDate,Rowno,Varcode,Qty,issQty,Mixcount) Values " & _
                            "('" & Divcode & "'," & iDocNo & ",'" & Format(DTPDate(0).value, "YYYY-MM-DD") & "'," & irow & "," & _
                            "'" & Trim(grddatagrid.Columns(3).Text) & "'," & val(grddatagrid.Columns(5).Text) & ",0,'" & Trim(Txtfields(0).Text) & "')"
                    DB.Execute strSQL
                    irow = irow + 1
                    adoprimaryrs.MoveNext
                Loop
                DB.CommitTrans
                MsgBox "Record(s) Saved", vbInformation, head
                MsgBox "Document No. is " & iDocNo, vbInformation, head
                Screen.MousePointer = 0
                Opt = "add"
            End If
            
            If Opt = "mod" Then
            
'
                While Not adoprimaryrs.EOF
                    If adoprimaryrs(3) = "" Or adoprimaryrs(3) = " " Or IsEmpty(adoprimaryrs(3)) = True Or IsNull(adoprimaryrs(3)) = True Then
                        adoprimaryrs.Delete
                    ElseIf IsNull(adoprimaryrs(3)) Then
                        MsgBox "Please enter the Variety", vbInformation, head
                        grddatagrid.Col = 5
                        grddatagrid.SetFocus
                        Opt = "mod"
                        Screen.MousePointer = 0
                        Exit Sub
                      ElseIf (adoprimaryrs(5) <= 0) Then
                        MsgBox "Please enter the Quantity", vbInformation, head
                        grddatagrid.Col = 5
                        grddatagrid.SetFocus
                        Opt = "mod"
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                    adoprimaryrs.MoveNext
                Wend
                irow = 1
                
                adoprimaryrs.MoveFirst
                While Not adoprimaryrs.EOF
                    Dim sQry As String
                    
                    sQry = "update Rm_RequisitionSlip Set Qty = " & val(grddatagrid.Columns(5).Text) & ", Varcode ='" & Trim(grddatagrid.Columns(3).Text) & "', Mixcount='" & Trim(Txtfields(0).Text) & "' Where Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And DocDate ='" & Format(adoprimaryrs("docDate"), "YYYY-MM-DD") & "' And Docno =" & val(adoprimaryrs("docno")) & " AND RowNo = " & irow
                    
                
                    DB.Execute sQry
                    irow = irow + 1
                    adoprimaryrs.MoveNext
                Wend
                DB.CommitTrans
                MsgBox "Record(s) Modified ", vbInformation, head
                Screen.MousePointer = 0
                Opt = "mod"
            End If
            
            If Opt = "del" Then
                    Screen.MousePointer = 0
                    If MsgBox("Are you sure you want to delete this record?", vbYesNo, head) = vbYes Then
                        Screen.MousePointer = 11
                        DB.Execute ("DELETE FROM  RM_RequisitionSlip WHERE Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And DocDate ='" & Format(adoprimaryrs("docDate"), "YYYY-MM-DD") & "' And Docno =" & val(adoprimaryrs("docno")))
                        
                        DB.CommitTrans
                        MsgBox "Record(s) Deleted", vbInformation, head
                     Else
                        Screen.MousePointer = 11
                        DB.RollbackTrans
                     End If
                Opt = "del"
            End If
            Call Query_mode(0)
            Call NEWFORM1(BUTTON, GSNO)
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    desc.Caption = "Query"
    Screen.MousePointer = 11
    Frame3.Visible = False
    DTPDate(0).Enabled = False
    'CANCEL
    Select Case Opt
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
'        DataCombo1.Visible = False
    Case "add"
        'To undo addition
        DB.RollbackTrans
    Case "del"
        'To undo deletion
        'DataCombo1.Visible = False
        DB.RollbackTrans
End Select
    'To return default settings - i.e query mode
    Call Query_mode(0)
    Frame2.Visible = False
    Label4.Visible = False
    Label5.Visible = False

    Frame1.Visible = True
    grddatagrid.Visible = True
    'calling cancl procedure from module
    Call cancl(BUTTON)
    
Case 11
    'EXIT
    'If MsgBox("Do you want to exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
   'Pordmain.Picture2.Visible = True
Case 12
        Frame12.Visible = True
        Frame12.ZOrder 0
        Option8.value = True
        Option8.SetFocus
        SSTab1.Enabled = False
        UserFooter1.ClearFooter
        cmd_report.Visible = True
        Buttonframe.Enabled = False
Case 13
    
        Set sp = New Recordset
        sp.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty,IssQty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' AND DOCNO =" & val(Txtfields(1).Text), DB, adOpenStatic, adLockBatchOptimistic
        
        If sp.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        With CrystalReport1
            .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_IssueRequest.rpt"
            
            .StoredProcParam(0) = Format(yfdate, "YYYY-MM-DD")
            .StoredProcParam(1) = Format(yldate, "YYYY-MM-DD")
            .StoredProcParam(2) = Divcode
            .StoredProcParam(3) = val(Txtfields(1).Text)
            .StoredProcParam(4) = Format(DTPDate(0).value, "YYYY-MM-DD")
            
            .ParameterFields(0) = "description;" & "Issue Requisition Slip"
            .ParameterFields(1) = "divname;" & DIVNAME
            
            .WindowShowPrintBtn = True
            .WindowState = crptMaximized
            
            SendKeys "{enter}"
'            SendKeys "{enter}"
            
            .Action = True
        End With

End Select

dbltot = 0

Screen.MousePointer = 0
Exit Sub
er1:
If Err = -2147467259 Then
MsgBox Err.description, vbInformation, head
    If Mid$(Err.description, InStr(Err.description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  TC. " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head
    End If
Else
    MsgBox Err.description, vbInformation, head
End If


Exit Sub
BUTTON_Click_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure BUTTON_Click of Form FrmIssue", vbInformation, head
End Sub


Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
If (Opt = "mod" Or Opt = "del") And ksldesc1.listfield1 = "cast(Form_Doc_No as varchar)" Then
    Buttonframe.Enabled = True
    Frame3.Visible = False
    SSTab1.Visible = True
    Call Query_mode(0)
End If

Buttonframe.Enabled = True
Frame3.Visible = False
SSTab1.Visible = True
Exit Sub
Command1_Click_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command1_Click of Form FrmIssue", vbInformation, head

End Sub


Private Sub Command4_Click()    'find okay
On Error GoTo Command4_Click_Error
Buttonframe.Enabled = True
If Opt = "mod" Then
   If CDate(Text1.Text) Then
     Dim T_rs As Recordset
     Set T_rs = New Recordset
     Set T_rs = grddatagrid.DataSource
     T_rs.MoveFirst
     Do While Not T_rs.EOF
       If Trim(grddatagrid.Columns(7)) = "" Then
         grddatagrid.Columns(7) = Text1.Text
         T_rs.MoveNext
        Else
         T_rs.MoveNext
        End If
     Loop
     Frame5.Visible = False
     Text1.Text = ""
     Label3.Caption = "Find"
     Label7.Caption = "Find from Indent No."
     Exit Sub
   Else
     MsgBox "Please enter the Date Only", vbInformation, head
     Text1.Text = ""
     Text1.SetFocus
   End If
 End If
'-----------------
Opt = "fnd"
Screen.MousePointer = 11
Call Query_mode(val(Text1.Text))
Frame5.Visible = False
Exit Sub
Command4_Click_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command4_Click of Form FrmIssue", vbInformation, head
End Sub

Private Sub Command5_Click()    'find cancel
'---------------
On Error GoTo Command5_Click_Error
SSTab1.ZOrder
Buttonframe.Enabled = True
If Opt = "mod" Then
   Frame5.Visible = False
   Text1.Text = ""
   Label3.Caption = "Find"
   Label7.Caption = "Find from Indent No."
   Exit Sub
 End If
'---------------
Opt = "fnd"
Screen.MousePointer = 11
Call Query_mode(1)
Frame5.Visible = False
Exit Sub
Command5_Click_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command5_Click of Form FrmIssue", vbInformation, head
End Sub

Private Sub cmd_report_Click()
        Set sp = New Recordset
        sp.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty,IssQty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' AND DOCNO =" & val(Txtfields(1).Text), DB, adOpenStatic, adLockBatchOptimistic
        If sp.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        Set REPT = New Report.ReportView
        a = FreeFile()
        Close
        Open "C:\amc_list.txt" For Output As #a
        pg1 = 1
        C = 0
        Print #a, Chr(18)
        Print #a, Space(5) & CENTRE(Chr(27) + "E" & DIVNAME & Chr(27) + "F", 72, " ")
        Print #a,
        Print #a, Space(5) & CENTRE(Chr(27) + "E" & "Issue Requisition Slip" & Chr(27) + "F", 72, " ")
        Print #a, Space(5) '& String(72, "-")
        Print #a, Space(5) & Padr("Doc. No. :", 10, " ") & Space(2) & Trim(Txtfields(1).Text) & Space(38) & Padr("Doc. Date :", 11, "") & Space(2) & Format(DTPDate(0).value, "dd/mm/yy")
        Print #a, Space(5) & String(72, "-")
        Print #a, Space(5) & Padr("Variety Code", 15, " ") & Space(5) & Padr("Variety Name", 25, " ") & Space(2) & Padl("Req. Qty", 8, " ") & Space(4) & Padl("Issue Qty", 9, " ")
        Print #a, Space(5) & String(72, "-")

        C = 8

        iDocNo = 0
        Do While Not sp.EOF
'            If iDocNo <> sp("Docno") Then
'                Print #a, Space(5) & Padr(sp("docNo"), 10, " ") & Space(2) & Padr(Format(sp("DocDate"), "DD/MM/YY"), 12, "") & Space(2) & Padr(sp("Varname"), 25, " ") & Space(2) & Padl(INF(sp("Qty"), 0), 8, " ") & Space(2) & Padl(INF(sp("IssQty"), 0), 9, " ")
'                iDocNo = sp("Docno")
'            Else
                Print #a, Space(5) & Padr(sp("varcode"), 15, " ") & Space(5) & Padr(sp("Varname"), 25, " ") & Space(2) & Padl(INF(sp("Qty"), 0), 8, " ") & Space(4) & Padl(INF(sp("IssQty"), 0), 9, " ")
'            End If
            
            C = C + 1
            If C >= PageLen Then
                Print #a, Space(5) & String(72, "-")
                Print #a, Chr(12)
                pg1 = pg1 + 1
                C = 0
                Call Amc_List_Header
            End If
         sp.MoveNext
       Loop
       Print #a, Space(5) & String(72, "-")
       Print #a, Chr(12)
       a = FreeFile()
       Close
       Open "C:\amc_list.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "c:"
        Print #a, "cd\"
        Print #a, "type amc_list.txt>prn"
        Close #a
        REPT.txtfile = "c:\amc_list.txt"
        REPT.Batfile = "c:\amc_list.bat"
        Exit Sub

End Sub

Private Sub Form_Activate()
  If BUTTON(0).Enabled = True Then BUTTON(0).SetFocus
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
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
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
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
        Call BUTTON_Click(11)   ''Exit
    End If
ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
End If
    
    If KeyCode = vbKeyA And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
        Call BUTTON_Click(12)
    End If
    
    If KeyCode = vbKeyF1 Then
        Call showForm4FunctionKey("F1")
    ElseIf KeyCode = vbKeyF2 Then
        Call showForm4FunctionKey("F2")
    ElseIf KeyCode = vbKeyF3 Then
        Call showForm4FunctionKey("F3")
    ElseIf KeyCode = vbKeyF4 Then
        Call showForm4FunctionKey("F4")
    ElseIf KeyCode = vbKeyF5 Then
        Call showForm4FunctionKey("F5")
    ElseIf KeyCode = vbKeyF6 Then
        Call showForm4FunctionKey("F6")
    ElseIf KeyCode = vbKeyF7 Then
        Call showForm4FunctionKey("F7")
    ElseIf KeyCode = vbKeyF8 Then
        Call showForm4FunctionKey("F8")
    ElseIf KeyCode = vbKeyF9 Then
        Call showForm4FunctionKey("F9")
    ElseIf KeyCode = vbKeyF10 Then
        Call showForm4FunctionKey("F10")
    ElseIf KeyCode = vbKeyF11 Then
        Call showForm4FunctionKey("F11")
    ElseIf KeyCode = vbKeyF12 Then
        Call showForm4FunctionKey("F12")
    End If
    
    If KeyCode = vbKeyEscape Then
        If Frame12.Visible = True Then
            Frame12.Visible = False
            cmd_report.Visible = False
            UserFooter1.Visible = False
            SSTab1.Enabled = True
            Frame1.Enabled = True
            Frame4.Enabled = True
            Buttonframe.Enabled = True
        End If
    End If


    Exit Sub
Exit Sub
Form_KeyDown_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_KeyDown of Form FrmIssue", vbInformation, head

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
    stbar.Panels(1).Text = sbmsg
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" + connectstring
    Opt = ""
    DTPDate(0).MaxDate = yldate
    DTPDate(0).MinDate = yfdate
    DTPDate(0).value = pdate
    Call Query_mode(0)
    DATLAB.Caption = pdate   'This variable is declared as global to show the date
    grddatagrid.ScrollBars = dbgAutomatic
    grddatagrid.Caption = "Variety Details"
    DATLAB.Caption = pdate
    Call NEWFORM1(BUTTON, GSNO)
Exit Sub
Form_Load_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Load of Form FrmIssue", vbInformation, head
End Sub

Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
'  adoPrimaryRS.Close
  Set adoprimaryrs = Nothing
  Set adoSecondaryRS = Nothing
  Set Indent = Nothing
  Reset
  End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error

  If adoprimaryrs.AbsolutePosition > 0 Then
       stbar.Panels(2).Text = "Record No " & CStr(adoprimaryrs.AbsolutePosition) & " / " & CStr(adoprimaryrs.RecordCount)
       
       Set grddatagrid.DataSource = adoprimaryrs
       If Opt = "add" Or Opt = "mod" Then
            bindcontls
            Set rstCode = New Recordset
            rstCode.Open "SELECT MIXCOUNT FROM RM_REQUISITIONSLIP WHERE DIVCODE='" & Divcode & "' AND dOCNO = " & val(Txtfields(1).Text) & " AND dOCdATE ='" & Format(DTPDate(0).value, "YYYY-mm-dd") & "'", DB, adOpenStatic
                       
            If rstCode.EOF = False Then
                If Opt <> "mod" Then Txtfields(0).Text = rstCode(0)
                If Opt <> "mod" Then Txtfields(1).Text = adoprimaryrs("docno")
            End If
'        ElseIf Opt = "mod" Then
'             bindcontls
'            Set rstCode = New Recordset
'            rstCode.Open "SELECT MIXCOUNT FROM RM_REQUISITIONSLIP WHERE DIVCODE='" & Divcode & "' AND dOCNO = " & adoPrimaryRS("docno") & " AND dOCdATE ='" & Format(adoPrimaryRS("docdate"), "YYYY-mm-dd") & "'", DB, adOpenStatic
'
'            If rstCode.EOF = False Then
'                txtFields(0).Text = rstCode(0)
'                txtFields(1).Text = adoPrimaryRS("docno")
'            End If
'
       ElseIf Opt <> "add" Then
            bindcontls
            Set rstCode = New Recordset
            rstCode.Open "SELECT MIXCOUNT FROM RM_REQUISITIONSLIP WHERE DIVCODE='" & Divcode & "' AND dOCNO = " & adoprimaryrs("docno") & " AND dOCdATE ='" & Format(adoprimaryrs("docdate"), "YYYY-mm-dd") & "'", DB, adOpenStatic
                      
            If rstCode.EOF = False Then
                Txtfields(0).Text = rstCode(0)
                Txtfields(1).Text = adoprimaryrs("docno")
            End If
       End If
       Call GRDALIGN
  Else
       stbar.Panels(2).Text = "No Record found"
  End If
  
Exit Sub
adoPrimaryRS_MoveComplete_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmIssue", vbInformation, head
  End Sub


Public Sub bindcontls()
Dim oText As TextBox
On Error GoTo bindcontls_Error
  For Each oText In Me.Txtfields
     'Set oText.DataSource = adoPrimaryRS
  Next
  If adoprimaryrs.RecordCount > 0 Then
        If Opt <> "" Then
            If Opt <> "add" And Opt <> "mod" Then
                Txtfields(1).Text = adoprimaryrs("Docno")
                If Not IsNull(adoprimaryrs("DocDate")) Then DTPDate(0).value = adoprimaryrs("DocDate")
'                txtFields(0).Text = adoPrimaryRS("mixcount")
            End If
        End If
  End If
Exit Sub
bindcontls_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure bindcontls of Form FrmIssue", vbInformation, head
  End Sub

Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
On Error GoTo disablcontls_Error
    For Each oText In Me.Txtfields
        oText.Locked = True
    Next
    grddatagrid.AllowAddNew = False
    grddatagrid.AllowUpdate = False
Exit Sub
disablcontls_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure disablcontls of Form FrmIssue", vbInformation, head
End Sub

Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
On Error GoTo ENABLCONTLS_Error
    For Each oText In Me.Txtfields
        oText.Locked = False
    Next
    DTPDate(0).MaxDate = pdate
    grddatagrid.AllowUpdate = True
Exit Sub
ENABLCONTLS_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure ENABLCONTLS of Form FrmIssue", vbInformation, head
    End Sub


Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
        If grddatagrid.Col = 5 Then
            If val(grddatagrid.Columns(5).Text) <> 0 Then
                If Opt = "add" Then
                    grddatagrid.Col = 3
                    grddatagrid.SetFocus
                    adoprimaryrs.AddNew
                    grddatagrid.EditActive = True
                End If
            End If
        End If

End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error
If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Col = 3 Then
        stbar.Panels(2).Text = "Select the Variety from list"
    ElseIf grddatagrid.Col = 5 Then
        stbar.Panels(2).Text = "Enter the Quantity, Maximum 5 Interger"
        Call tonum(grddatagrid, 5, KeyAscii)
    End If
End If
Exit Sub
GRDDATAGRID_KeyPress_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_KeyPress of Form FrmIssue", vbInformation, head
End Sub


Private Sub grddatagrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
Dim iCount As Integer
irow = grddatagrid.Row
    On Error Resume Next
    If (Opt = "add" Or Opt = "mod") Then
        If LastCol = 3 And Frame3.Visible = False Then
            Dim ChkRs As Recordset
            Set ChkRs = New Recordset
            ChkRs.Open "select distinct varcode from rm_RequisitionSlip A where A.varcode='" & Trim(grddatagrid.Columns(3).Text) & "'", DB, adOpenStatic
            If ChkRs.RecordCount > 0 Then
                grddatagrid.Columns(3).Text = ChkRs.Fields(0)
                Exit Sub
            Else
                LookUp.clear = True
                LookUp.Query = "select varcode ""Variety Code"", varname ""Variety Name"" From Rm_Var"
                LookUp.Caption = "Variety Listing"
                LookUp.DefCol = "Variety Name"
                LookUp.ALIGN = "2000,3500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                     irow = adoprimaryrs.RecordCount - 1
                    current_No = LookUp.Fields(0)
                    grddatagrid.Columns(3).Text = LookUp.Fields(0)
                If adoprimaryrs.RecordCount > 1 Then
                adoprimaryrs.MoveFirst
                For i = 1 To adoprimaryrs.RecordCount
                    If adoprimaryrs.RecordCount <> adoprimaryrs.AbsolutePosition Then
                    If adoprimaryrs("varcode") = current_No Then
                        MsgBox "This Item already exists in the current Issued", vbInformation, head
                        grddatagrid.Row = irow
                        grddatagrid.Columns(3).Text = ""
                        grddatagrid.Columns(4).Text = ""
                        grddatagrid.Columns(5).Text = ""
                        grddatagrid.Col = 3
                        grddatagrid.SetFocus
                        Exit Sub
                    End If
                    adoprimaryrs.MoveNext
                    End If
                Next
                End If
                    grddatagrid.Columns(3).Text = LookUp.Fields(0)
                    grddatagrid.Columns(4).Text = LookUp.Fields(1)
                    grddatagrid.Col = 5
                    grddatagrid.SetFocus
                Else
                    Buttonframe.Enabled = True
                    grddatagrid.Col = 3
                    grddatagrid.SetFocus
                End If
            End If
        End If
'        If grddatagrid.Col = 5 Then
'            If val(grddatagrid.Columns(5).Text) <> 0 Then
'                If Opt = "add" Then
''                    adoPrimaryRS.AddNew
'                    grddatagrid.Col = 3
'                    grddatagrid.SetFocus
'                    grddatagrid.Row = irow
''                    adoPrimaryRS.AddNew
'                    grddatagrid.EditActive = True
'                End If
'            End If
'        End If
        
    End If
    
End Sub

Public Sub Query_mode(MDOC As Long)
On Error GoTo QUERY_MODE_Error
desc.Caption = "Query"
On Error GoTo er1
    
    Set Rs = New Recordset
    Rs.Open "Select Distinct Divcode,Docno,DocDate from RM_RequisitionSlip Where Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.EOF Then
        MsgBox "No Record(s) Found", vbInformation, head
        Exit Sub
    End If
    Rs.MoveLast
    Opt = ""
    Set adoprimaryrs = New Recordset
    adoprimaryrs.Open "Select Divcode,Docno,DocDate,a.varcode,b.varname,Qty from RM_RequisitionSlip A, RM_Var B Where A.varcode= b.varcode And Divcode= '" & Divcode & "' And  DocDate Between '" & Format(yfdate, "YYYY-MM-DD") & "' And '" & Format(yldate, "YYYY-MM-DD") & "' And Docno =" & Rs("Docno") & " And DocDate= '" & Format(Rs("DocDate"), "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
    grddatagrid.AllowUpdate = False
    
    stbar.Panels(2).Text = "Record No " & CStr(Rs.AbsolutePosition) & " / " & CStr(Rs.RecordCount)

    Exit Sub
er1:
    If Err = 3021 Then
        MsgBox "No records Found", vbInformation, head
        Screen.MousePointer = 0
        Set grddatagrid.DataSource = Nothing
        Call BUTTON_Click(10)
    End If
    If Err = -2147467259 Then
        MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
    End If
    Screen.MousePointer = 0
'Exit Sub
QUERY_MODE_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure query_mode of Form FrmIssue", vbInformation, head
End Sub
Private Sub GRDALIGN()
On Error GoTo GRDALIGN_Error
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        'If Opt <> "mod" Then
        grddatagrid.Columns(2).Visible = False
        grddatagrid.Columns(3).Caption = "Variety Code"
        grddatagrid.Columns(4).Caption = "Variety name"
        grddatagrid.Columns(5).Caption = "Quantity in Bale/Borah"
        grddatagrid.Columns(3).Width = 1200
        grddatagrid.Columns(4).Width = 2000
        grddatagrid.Columns(5).Width = 2000
        grddatagrid.Columns(5).NumberFormat = "########0"
        grddatagrid.Columns(5).Alignment = dbgRight
        grddatagrid.Columns(4).Locked = True
        'End If
'        If Opt <> "add" Then grddatagrid.Columns(6).Visible = False
Exit Sub
GRDALIGN_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grdalign of Form FrmIssue", vbInformation, head
End Sub
Public Sub Amc_List_Header()
On Error GoTo Amc_List_Header_Error
C = 0
Print #a, Chr(18)
Print #a, Space(5) & CENTRE(Chr(27) + "E" & DIVNAME & Chr(27) + "F", 72, " ")
Print #a,
Print #a, Space(5) & "Issue Requisition Slip" & Space(28) & Format(pdate, "dd/mm/yy") & Space(2) & "Pg. No. :" & Padl(pg1, 3, " ")
Print #a, Space(5) & String(72, "-")
Print #a, Space(5) & Padr("Doc. No.", 10, " ") & Space(2) & Padr("Doc. Date", 12, "") & Space(2) & Padr("Variety", 25, " ") & Space(2) & Padl("Req. Qty", 8, " ") & Space(2) & Padl("Issue Qty", 9, " ")
Print #a, Space(5) & String(72, "-")
C = 8
Exit Sub
Amc_List_Header_Error:
     MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Amc_List_Header of Form FrmIssue", vbInformation, head
End Sub

Private Sub Option8_Click()
On Error GoTo Option8_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    'cmd_report.Visible = False

Exit Sub
Option8_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Option8_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option8_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option8_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame12.Visible = True Then
        Frame12.Visible = False
        cmd_report.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Frame1.Enabled = True
'        Frame7.Enabled = True
        Frame4.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option8_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Option8_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option9_Click()
On Error GoTo Option9_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
'    UserFooter1.ZOrder = 0
    UserFooter1.Load
    cmd_report.Visible = True

Exit Sub
Option9_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Option9_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option9_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option9_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame12.Visible = True Then
        Frame12.Visible = False
        cmd_report.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Frame1.Enabled = True
'        Frame7.Enabled = True
        Frame4.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option9_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Option9_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Txtfields_Change(Index As Integer)
If Index = 0 Then Text5.Text = getMasterName("cntname", "rm_count", "cntcd", Trim(Txtfields(Index).Text))
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
    If Index = 0 Then stbar.Panels(2).Text = "Select Mix Count From the List"
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
    
On Error GoTo Txtfields_Validate_Error
If Opt = "mod" Or Opt = "add" Then
If Index = 0 Then
    LookUp.Query = "Select Distinct CntCD""Mix Count Code"", CntName""Mix Count Name"" FROM Rm_Count"
    LookUp.Caption = "Mix Count Listing"
    LookUp.DefCol = "Mixing Count Name"
    LookUp.ALIGN = "1600,2600"
    
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        adoprimaryrs.AddNew
        adoprimaryrs.MoveFirst
        Txtfields(0).Text = LookUp.Fields(0)
        Text5.Text = LookUp.Fields(1)
        grddatagrid.Col = 3
        grddatagrid.SetFocus
        LookUp.clear = True
    Else
        LookUp.clear = True
        'lookup.
        Txtfields(0).SetFocus
        Exit Sub
    End If

End If
    End If
    Exit Sub
Txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Txtfields_Validate of Form FrmIssueRequstionSlip", vbInformation, head
End Sub
