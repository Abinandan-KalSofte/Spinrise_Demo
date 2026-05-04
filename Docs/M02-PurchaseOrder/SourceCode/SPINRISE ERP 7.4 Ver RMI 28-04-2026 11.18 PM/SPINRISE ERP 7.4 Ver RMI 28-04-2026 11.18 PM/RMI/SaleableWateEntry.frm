VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form SaleableWateEntry 
   Caption         =   "Saleable Wate Entry"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   840
      TabIndex        =   26
      Top             =   2370
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "SaleableWateEntry.frx":0000
         Height          =   615
         Left            =   2580
         Picture         =   "SaleableWateEntry.frx":03E6
         Style           =   1  'Graphical
         TabIndex        =   29
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         DownPicture     =   "SaleableWateEntry.frx":07AC
         Height          =   615
         Left            =   4020
         Picture         =   "SaleableWateEntry.frx":0B8E
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3450
         MaxLength       =   6
         TabIndex        =   27
         Top             =   930
         Width           =   1665
      End
      Begin VB.Label Label28 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Find "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   31
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Doc No."
         ForeColor       =   &H80000002&
         Height          =   195
         Left            =   2610
         TabIndex        =   30
         Top             =   1005
         Width           =   600
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -30
      TabIndex        =   0
      Top             =   -90
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   1620
         Picture         =   "SaleableWateEntry.frx":0F61
         Style           =   1  'Graphical
         TabIndex        =   38
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "SaleableWateEntry.frx":12F8
         Height          =   510
         Index           =   4
         Left            =   2145
         Picture         =   "SaleableWateEntry.frx":1602
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Find"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "SaleableWateEntry.frx":1997
         Height          =   510
         Index           =   6
         Left            =   3195
         Picture         =   "SaleableWateEntry.frx":1DE1
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "SaleableWateEntry.frx":212E
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "SaleableWateEntry.frx":2438
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "SaleableWateEntry.frx":27CB
         Height          =   510
         Index           =   5
         Left            =   2670
         Picture         =   "SaleableWateEntry.frx":2C15
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "SaleableWateEntry.frx":2F7A
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
         Picture         =   "SaleableWateEntry.frx":3284
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "SaleableWateEntry.frx":3620
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "SaleableWateEntry.frx":392A
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "SaleableWateEntry.frx":3CA4
         Height          =   510
         Index           =   7
         Left            =   3720
         Picture         =   "SaleableWateEntry.frx":40EE
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "SaleableWateEntry.frx":443E
         Height          =   510
         Index           =   11
         Left            =   5820
         Picture         =   "SaleableWateEntry.frx":4888
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "SaleableWateEntry.frx":4C1D
         Height          =   510
         Index           =   9
         Left            =   4770
         Picture         =   "SaleableWateEntry.frx":4F27
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "SaleableWateEntry.frx":52C9
         Height          =   510
         Index           =   10
         Left            =   5295
         Picture         =   "SaleableWateEntry.frx":55D3
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "SaleableWateEntry.frx":594F
         Height          =   510
         Index           =   8
         Left            =   4245
         Picture         =   "SaleableWateEntry.frx":5D99
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Last Record"
         Top             =   120
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
         Left            =   8085
         TabIndex        =   13
         Top             =   255
         Width           =   630
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
         Left            =   6555
         TabIndex        =   12
         Top             =   255
         Width           =   840
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   14
      Top             =   2895
      Width           =   4680
      _ExtentX        =   8255
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   9102
            MinWidth        =   9102
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "31/01/2003"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "2:41 PM"
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
      Height          =   4455
      Left            =   420
      TabIndex        =   15
      Top             =   1260
      Width           =   8445
      _ExtentX        =   14896
      _ExtentY        =   7858
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "      "
      TabPicture(0)   =   "SaleableWateEntry.frx":60FB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame2 
         Height          =   2865
         Left            =   150
         TabIndex        =   24
         Top             =   1440
         Width           =   8145
         Begin MSDataGridLib.DataGrid grddatagrid 
            Height          =   2535
            Left            =   120
            TabIndex        =   25
            Top             =   240
            Width           =   7935
            _ExtentX        =   13996
            _ExtentY        =   4471
            _Version        =   393216
            AllowUpdate     =   -1  'True
            HeadLines       =   2
            RowHeight       =   15
            TabAction       =   2
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
      End
      Begin VB.Frame Frame1 
         Height          =   1335
         Left            =   150
         TabIndex        =   16
         Top             =   90
         Width           =   8145
         Begin VB.TextBox txtfields 
            Height          =   315
            Index           =   0
            Left            =   1200
            TabIndex        =   18
            Top             =   270
            Width           =   1125
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            ItemData        =   "SaleableWateEntry.frx":6117
            Left            =   1200
            List            =   "SaleableWateEntry.frx":6127
            TabIndex        =   17
            Text            =   "Combo1"
            Top             =   720
            Width           =   795
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            Height          =   315
            Left            =   5670
            TabIndex        =   19
            Top             =   270
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   556
            _Version        =   393216
            MaxLength       =   10
            Format          =   "dd/mm/yyyy"
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   315
            Left            =   5670
            TabIndex        =   20
            Top             =   270
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            _Version        =   393216
            Format          =   62717953
            CurrentDate     =   37043
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Shift"
            Height          =   195
            Left            =   420
            TabIndex        =   23
            Top             =   780
            Width           =   315
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   4950
            TabIndex        =   22
            Top             =   330
            Width           =   345
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Doc No."
            Height          =   195
            Left            =   270
            TabIndex        =   21
            Top             =   330
            Width           =   600
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   240
      TabIndex        =   32
      Top             =   1080
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         DownPicture     =   "SaleableWateEntry.frx":613C
         Height          =   615
         Left            =   2760
         Picture         =   "SaleableWateEntry.frx":6522
         Style           =   1  'Graphical
         TabIndex        =   34
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         DownPicture     =   "SaleableWateEntry.frx":68E8
         Height          =   615
         Left            =   4500
         Picture         =   "SaleableWateEntry.frx":6CCA
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   35
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Caption"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   45
         TabIndex        =   36
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Saleable Waste Entry"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   360
      Left            =   720
      TabIndex        =   37
      Top             =   840
      Width           =   2865
   End
End
Attribute VB_Name = "SaleableWateEntry"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRs As Recordset
Attribute adoPrimaryRs.VB_VarHelpID = -1
Dim WithEvents ADOSECONDARYRS As Recordset
Attribute ADOSECONDARYRS.VB_VarHelpID = -1
Dim rate1 As Double
Dim Db As Connection
Dim Opt As String
Dim St, st1, st2 As String
Dim itary() As String
Dim cou As Integer
Dim cou1, c, pg As Integer
Dim co As Integer
Dim a As Integer
Dim cont As Integer
Dim rep As Report.ReportView
Dim flg As String
Dim Rs As Recordset
Dim rss As Recordset
Dim sr As String
Dim pr As String
Dim dr As String
Dim g As String
Dim t7 As Double
Dim t6 As Double
Dim t0 As Integer
Dim t1 As String
Dim t2 As String
Dim t3 As String
Dim t4 As Integer
Dim tmp As String
Dim t5 As Integer
Dim t8 As String
Dim date1 As String
Dim Date2 As String
Dim date3 As String
Dim dt As String
Dim errflg As String
Dim Last_docno As Integer
Dim New1DocNo As Integer
Dim str As String
Private Sub adoprimaryrs_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo err
If Opt <> "add" And Not adoPrimaryRs.EOF And Not adoPrimaryRs.BOF Then
'    StatusBar1.Panels(2).Text = "Record: " & CStr(adoprimaryrs("docno"))
    StatusBar1.Panels(2).Text = adoPrimaryRs("docno") '"Records " & CStr(adoprimaryrs.AbsolutePosition) & " of " & CStr(adoprimaryrs.RecordCount)
    MaskEdBox1.Text = adoPrimaryRs("docdt")
    txtfields(0).Text = adoPrimaryRs("docno")
    If adoPrimaryRs("shift") = "I" Then
        Combo1.Text = "I"
    ElseIf adoPrimaryRs("shift") = "II" Then
        Combo1.Text = "II"
    ElseIf adoPrimaryRs("shift") = "III" Then
        Combo1.Text = "III"
    Else: adoPrimaryRs("shift") = "A"
        Combo1.Text = "All"
    End If
End If
Exit Sub
err:
End Sub
Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
'addition
    If Record_Exists("rm_var") = False Then Exit Sub
    If Record_Exists("rm_wastetype", "Please Define Waste Type") = False Then Exit Sub
    Opt = "add"
    desc.Caption = "Addition"
    Db.BeginTrans
    Set adoPrimaryRs = New Recordset
    adoPrimaryRs.Open "select divcode,docno,docdt,shift from rm_waste where 1=2", Db, adOpenStatic, adLockBatchOptimistic
    Call ENABLCONTLS
    Call bindcontls
    adoPrimaryRs.AddNew
    Set Rs = New Recordset
    Rs.Open "SELECT isnull(max(docno),0)+1 FROM RM_WASTE", Db, adOpenStatic
    txtfields(0).Text = Rs(0)
    SSTab1.Enabled = True
    Frame1.Enabled = True
    Combo1.Text = " "
    MaskEdBox1.Text = "__/__/____"
    Set ADOSECONDARYRS = New Recordset
'    ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.variety ""Variety"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight"" from rm_waste a,rm_wastetype b where 1=2", db, adOpenStatic, adLockBatchOptimistic
    ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count "", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",borahno""Borah  No."",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"" ,rate,value from rm_waste a,rm_wastetype b where 1=2", Db, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = ADOSECONDARYRS
    grddatagrid.AllowUpdate = True
    Call GRIDALIGN
    grddatagrid.Columns(12).Visible = False
    grddatagrid.Columns(13).Visible = False
    ADOSECONDARYRS.AddNew
    StatusBar1.Panels(2).Text = "Enter the Document Date"
    txtfields(0).Locked = True
    MaskEdBox1.Text = pdate
    MaskEdBox1.Enabled = True
    MaskEdBox1.SetFocus
    Call adddelmod(BUTTON)
    BUTTON(4).Enabled = False
    DTPicker1.MinDate = pdate
    DTPicker1.MinDate = yfdate
    DTPicker1.MaxDate = pdate
    grddatagrid.Columns(12).Visible = False
    grddatagrid.Columns(13).Visible = False
    Combo1.ListIndex = 3
        
Case 1
        'Modification
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_waste where type='S' and divcode='" & Divcode & "'", Db
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "mod"
        desc.Caption = "Modification"
        SSTab1.Visible = False
        Label15.Caption = "Document Number List"
        KslList1.conn = connectstring
        KslList1.table = "rm_waste where type='S' and divcode='" & Divcode & "'"
        KslList1.listfield1 = "cast(docno as varchar)"
        KslList1.listfield2 = "convert(varchar,docdt,103)"
        SSTab1.Enabled = True
        Frame1.Enabled = False
        grddatagrid.AllowUpdate = True
        Frame3.Visible = True
        Frame3.ZOrder
        KslList1.SetFocus
        Db.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(9).ToolTipText = "Delete"
        BUTTON(10).Enabled = False
        BUTTON(4).Enabled = False
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If

Case 2
        'Deletion
    If Record_Exists("RM_WASTE WHERE DIVCODE='" & Divcode & "'") = False Then Exit Sub
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_waste where type='S' and divcode='" & Divcode & "'", Db
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        SSTab1.Visible = False
        Label15.Caption = "Document Number List"
        KslList1.conn = connectstring
        KslList1.table = "rm_waste where type='S' and divcode='" & Divcode & "'"
        KslList1.listfield1 = "cast(docno as varchar)"
        KslList1.listfield2 = "convert(varchar,docdt,103)"
        grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Frame3.ZOrder
        KslList1.SetFocus
        Db.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(9).ToolTipText = "Delete"
        BUTTON(10).Enabled = False
        BUTTON(4).Enabled = False
        Screen.MousePointer = 0
        Frame3.Visible = True
        KslList1.SetFocus
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
Case 12
        'Listing
        If Record_Exists("RM_WASTE WHERE DIVCODE='" & Divcode & "' and type='S'") = False Then Exit Sub
        Set repo = New Report.ReportView
        desc.Caption = "Listing"
        Set rs1 = New Recordset
        rs1.Open "select DISTINCT a.docno,a.docdt from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRs("docno") & " and a.docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic
        If rs1.RecordCount <= 0 Then
            MsgBox "No record found", vbInformation
            Exit Sub
        End If
        pg = 1
        Set rsP = New Recordset
        Close
        Open "c:\red.txt" For Output As #1
            Print #1,
            Print #1,
            Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 97, " "); "F"; Chr(27)
            Print #1,
            Print #1, Space(5); "Saleabe Waste Listing" & Space(1); "for "; Format(adoPrimaryRs("docdt"), "dd/mm/yyyy"); Space(51 - 13) & "Dt: "; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:" & Padl(pg, 3, " ")
            Print #1, Space(5) & String(97, "-")
            Print #1, Space(5) & "Doc.No.   Doc.Dt  "
            Print #1, Space(5) & "Godown  Waste  Description                   Borah No.   Gross Weight   Tare Weight   Nett Weight"
            Print #1, Space(5) & "  Code   Type   "
            Print #1, Space(5) & String(97, "-")
            co = 8
            tot = 0
        Do While Not rs1.EOF
            Print #1, Space(5) & Padr(rs1("docno"), 7, " ") & Space(1) & Padr(Format(rs1("docdt"), "dd/mm/yyyy"), 10, " ")
            co = co + 1
            Print #1,
            co = co + 1
            Set rs2 = New Recordset
            rs2.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.borahno""Borah.  No"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & rs1("docno") & " and a.docdt='" & Format(rs1("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic
            Do While Not rs2.EOF
                Print #1, Space(5) & Padr(rs2("Godown   Code"), 6, " ") & Space(2) & Padr(rs2("Waste"), 5, " "); Space(2); Padr(rs2("Description"), 35, " "); Padl(rs2("bORAH.  nO"), 5, " "); Padl(INF(rs2("       Gross      Weight"), 3), 14, " "); Padl(INF(rs2("         Tare      Weight"), 3), 14, " "); Padl(INF(rs2("         Nett      Weight"), 3), 14, " ")
                tot = tot + rs2("         Nett      Weight")
                co = co + 1
                rs2.MoveNext
                If co >= pagelen Then
                    Print #1, Space(5); String(50, "-")
                    Print #1, Chr(12)
                    co = 0
                    pg = pg + 1
                    Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 56, " "); "F"; Chr(27)
                    Print #1,
                    Print #1, Space(5); "Supplier Listing" & Space(2); Space(10) & "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg:" & pg
                    Print #1, Space(5) & String(50, "-")
                    Print #1, Space(5) & "Code" & Space(9) & "Name "
                    Print #1, Space(5) & String(50, "-")
                    co = co + 5
                End If
            Loop
            rs1.MoveNext
        Loop
            Print #1, Space(5) & String(97, "-")
            Print #1, Space(49) & "** Total ** "; Space(20); Padl(INF(tot, 3), 21, " ")
            Print #1, Space(5) & String(97, "-")
            Print #1, Chr(12)
         Close #1
         Open "c:\red.bat" For Output As #1
            Print #1, "cd\"
            Print #1, "c:"
            Print #1, "cd\"
            Print #1, "type red.txt>prn"
              repo.txtfile = "c:\red.txt"
              repo.Batfile = "c:\red.bat"
         Close #1
   

        
               
Case 4
    If Record_Exists("RM_WASTE WHERE DIVCODE='" & Divcode & "' and type='S'") = False Then Exit Sub
    Frame3.Visible = False
    SSTab1.Visible = False
    Frame6.Visible = True
    Opt = "fnd"
    txtqry.Text = ""
    txtqry.SetFocus
    Call adddelmod(BUTTON)
    BUTTON(4).Enabled = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
        
Case 5
        'first
    If Record_Exists("RM_WASTE WHERE DIVCODE='" & Divcode & "' and type='S'") = False Then Exit Sub
    desc.Caption = "Query"
    On Error GoTo GoFirstError
    adoPrimaryRs.MoveFirst
    Set ADOSECONDARYRS = New Recordset
'    ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.variety ""Variety"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode", db, adOpenStatic, adLockBatchOptimistic
    ADOSECONDARYRS.Open "select distinct a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.borahno""Borah.  No"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRs("docno") & " and a.docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = ADOSECONDARYRS
    Call GRIDALIGN
    StatusBar1.Panels(2).Text = "First Record"
    Call bindcontls
    'calling fir procedure from module
    Call navi1(BUTTON)
    Call FIR(BUTTON)
    Beep
    Exit Sub
GoFirstError:
    MsgBox err.description, vbInformation, head
Case 6
        'next
    If Record_Exists("RM_WASTE WHERE DIVCODE='" & Divcode & "' and type='S'") = False Then Exit Sub
    desc.Caption = "Query"
    On Error GoTo GoNextError
    If Not adoPrimaryRs.EOF Then
        If adoPrimaryRs.RecordCount > 1 Then
            pr = adoPrimaryRs("docno")
            dr = adoPrimaryRs("docdt")
            Do While pr = adoPrimaryRs("docno") And dr = adoPrimaryRs("docdt")
                pr = adoPrimaryRs("docno")
                dr = adoPrimaryRs("docdt")
                adoPrimaryRs.MoveNext
            Loop
        End If
        Set ADOSECONDARYRS = New Recordset
'        ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.variety ""Variety"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode", db, adOpenStatic, adLockBatchOptimistic
        ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.borahno""Borah.  No"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRs("docno") & " and a.docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = ADOSECONDARYRS
        Call GRIDALIGN
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        pr = adoPrimaryRs("docno")
        dr = adoPrimaryRs("docdt")
    End If
    If adoPrimaryRs.EOF And adoPrimaryRs.RecordCount > 0 Then
        Beep
        adoPrimaryRs.MoveLast
        Set ADOSECONDARYRS = New Recordset
'        ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.variety ""Variety"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode", db, adOpenStatic, adLockBatchOptimistic
        ADOSECONDARYRS.Open "select distinct a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/  Usable"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRs("docno") & " and a.docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic, adLockBatchOptimistic
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        Beep
    End If
    Call navi1(BUTTON)
    If adoPrimaryRs.AbsolutePosition = adoPrimaryRs.RecordCount Then
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(8).Enabled = False
        BUTTON(6).Enabled = False
        Beep
    Else
        BUTTON(8).Enabled = True
        BUTTON(6).Enabled = True
    End If
    Exit Sub
GoNextError:
      '  MsgBox err.description, vbInformation, head

Case 7
        'Previous
    If Record_Exists("RM_WASTE WHERE DIVCODE='" & Divcode & "' and type='S'") = False Then Exit Sub
    desc.Caption = "Query"
    On Error GoTo GoPrevError
    If Not adoPrimaryRs.BOF Then
        If adoPrimaryRs.RecordCount > 1 Then
            St = adoPrimaryRs("docno")
             sr = adoPrimaryRs("docdt")
             Do While St = adoPrimaryRs("docno") And sr = adoPrimaryRs("docdt")
                 St = adoPrimaryRs("docno")
                 sr = adoPrimaryRs("docdt")
                 adoPrimaryRs.MovePrevious
             Loop
        End If
        Set ADOSECONDARYRS = New Recordset
'        ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.variety ""Variety"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight""   from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode", db, adOpenStatic, adLockBatchOptimistic
        ADOSECONDARYRS.Open "select distinct a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.borahno""Borah.  No"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRs("docno") & " and a.docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = ADOSECONDARYRS
        Call GRIDALIGN
        
        If adoPrimaryRs.BOF Then
            StatusBar1.Panels(2).Text = "First Record"
        End If
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        St = adoPrimaryRs("docno")
        sr = adoPrimaryRs("docdt")
    End If
    If adoPrimaryRs.BOF And adoPrimaryRs.RecordCount > 0 Then
        Beep
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        adoPrimaryRs.MoveFirst
        Set ADOSECONDARYRS = New Recordset
'        ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.variety ""Variety"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode", db, adOpenStatic, adLockBatchOptimistic
        ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.borahno""Borah.  No"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRs("docno") & " and a.docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = ADOSECONDARYRS
        Call GRIDALIGN
    End If
    Call navi1(BUTTON)
    If adoPrimaryRs.AbsolutePosition = 1 Then
        StatusBar1.Panels(2).Text = "First Record"
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        End If
    Exit Sub
GoPrevError:
       ' MsgBox err.description, vbInformation, head

Case 8
        'last
        If Record_Exists("RM_WASTE WHERE DIVCODE='" & Divcode & "' and type='S'") = False Then Exit Sub
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRs.MoveLast
        Set ADOSECONDARYRS = New Recordset
'        ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.variety ""Variety"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode", db, adOpenStatic, adLockBatchOptimistic
        ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.borahno""Borah.  No"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRs("docno") & " and a.docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = ADOSECONDARYRS
        Call GRIDALIGN
        StatusBar1.Panels(2).Text = "Last Record"
        Call bindcontls
        'calling las procedure from module
        Call navi1(BUTTON)
        Call las(BUTTON)
        Beep
        Exit Sub
GoLastError:
        MsgBox err.description, vbInformation, head

Case 9

 If ADOSECONDARYRS.RecordCount <> 0 And (Opt = "add" Or Opt = "mod") Then
    tmp = Opt
    Opt = ""
    ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
    If Trim(grddatagrid.Columns(6).Text) = "" Or IsNull(grddatagrid.Columns(6).Text) = True Or Trim(grddatagrid.Columns(9).Text) = "" Or IsNull(grddatagrid.Columns(9).Text) = True Then
            ADOSECONDARYRS.Delete
        End If
        ADOSECONDARYRS.MoveNext
    Loop
    
        
    If MaskEdBox1.Text = "__/__/____" Then
        MsgBox "Document Date cannot be empty"
        MaskEdBox1.SetFocus
        Exit Sub
    End If
    If Combo1.Text = Empty Then
        MsgBox "Shift cannot be empty"
        Opt = "add"
        Combo1.SetFocus
        Exit Sub
    End If
    If tmp = "add" Then
    ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
            If Trim(grddatagrid.Columns(5).Text) = "" Then
                MsgBox "Godown Cannot be Empty", vbInformation, head
                Opt = "add"
                grddatagrid.Col = 5
                grddatagrid.SetFocus
                Exit Sub
            End If
            If grddatagrid.Columns(6).Text = "" Then
                MsgBox "Waste Cannot be Empty", vbInformation, head
                Opt = "add"
                grddatagrid.Col = 6
                grddatagrid.SetFocus
                Exit Sub
            End If
            If grddatagrid.Columns(10).Text = "" Then
                MsgBox "Tareweight Cannot be Empty", vbInformation, head
                Opt = "add"
                grddatagrid.Col = 10
                grddatagrid.SetFocus
                Exit Sub
            End If
    ADOSECONDARYRS.MoveNext
Loop
    If Combo1.Text = "I" Then
        str = "I"
    ElseIf Combo1.Text = "II" Then
        str = "II"
    ElseIf Combo1.Text = "III" Then
        str = "III"
    Else
        str = "A"
    End If
        
    ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
        If grddatagrid.Columns(8).Text = "S" Then
            If Month(MaskEdBox1.Text) = 4 Or Month(MaskEdBox1.Text) = 5 Or Month(MaskEdBox1.Text) = 6 Then
                    Set Rs = New Recordset
                    Rs.Open "select qrate1 from rm_wasterate where wcode='" & grddatagrid.Columns(5).Text & "'"
                    If Not Rs.EOF Then
                    rate1 = Rs(0)
                    End If
            End If
            If Month(MaskEdBox1.Text) = 7 Or Month(MaskEdBox1.Text) = 8 Or Month(MaskEdBox1.Text) = 9 Then
                    Set Rs = New Recordset
                    Rs.Open "select qrate2 from rm_wasterate where wcode='" & grddatagrid.Columns(5).Text & "'"
                    If Not Rs.EOF Then
                    rate1 = Rs(0)
                    End If
            End If
            If Month(MaskEdBox1.Text) = 10 Or Month(MaskEdBox1.Text) = 11 Or Month(MaskEdBox1.Text) = 12 Then
                    Set Rs = New Recordset
                    Rs.Open "select qrate3 from rm_wasterate where wcode='" & grddatagrid.Columns(6).Text & "'", Db
                    If Not Rs.EOF Then
                    rate1 = Rs(0)
                    End If
            End If
            If Month(MaskEdBox1.Text) = 1 Or Month(MaskEdBox1.Text) = 2 Or Month(MaskEdBox1.Text) = 3 Then
                    Set Rs = New Recordset
                    Rs.Open "select qrate4 from rm_wasterate where wcode='" & grddatagrid.Columns(5).Text & "'", Db, adOpenStatic
                    If Not Rs.EOF Then
                    rate1 = Rs(0)
                    End If
            End If
            Db.Execute " INSERT INTO rm_waste(divcode,docno,docdt,shift,type,wcode,netwt,cntcd,gcode,grosswt,tarewt,rate,value)  VALUES ('" & Divcode & "'," & txtfields(0).Text & ",'" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' ,'" & str & "','" & grddatagrid.Columns(8).Text & "','" & grddatagrid.Columns(6).Text & "','" & IIf(grddatagrid.Columns(11).Text = "", 0, grddatagrid.Columns(11).Text) & "','" & grddatagrid.Columns(4).Text & "','" & grddatagrid.Columns(5).Text & "'," & IIf(grddatagrid.Columns(9).Text = "", 0, grddatagrid.Columns(9).Text) & "," & IIf(grddatagrid.Columns(10).Text = "", 0, grddatagrid.Columns(10).Text) & "," & rate1 & "," & IIf(grddatagrid.Columns(11).Text = "", 0, grddatagrid.Columns(11).Text) & " * " & rate1 & " )"
         Else
            Db.Execute "INSERT INTO rm_waste(divcode,docno,docdt,shift,type,borahno,wcode,netwt,cntcd,gcode,grosswt,tarewt)  VALUES ('" & Divcode & "'," & txtfields(0).Text & ",'" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' ,'" & str & "','S','" & grddatagrid.Columns(8).Text & "','" & grddatagrid.Columns(6).Text & "','" & IIf(grddatagrid.Columns(11).Text = "", 0, grddatagrid.Columns(11).Text) & "','" & grddatagrid.Columns(4).Text & "','" & grddatagrid.Columns(5).Text & "'," & IIf(grddatagrid.Columns(9).Text = "", 0, grddatagrid.Columns(9).Text) & "," & IIf(grddatagrid.Columns(10).Text = "", 0, grddatagrid.Columns(10).Text) & ")"
        End If
        ADOSECONDARYRS.MoveNext
    Loop
    
    Db.CommitTrans
    Opt = tmp
    MsgBox "Record Saved Successfully", vbInformation, head
    Opt = " "
    Call Query_mode
    BUTTON(4).Enabled = True
    End If
End If
If Opt = "del" Then
    Db.Execute ("delete from rm_waste where DOCNO =" & Trim(KslList1.Code) & " AND DOCDT='" & Trim(Format(KslList1.description, "yyyy-mm-dd")) & "'")
    Db.CommitTrans
    MsgBox "Record Deleted Successfully", vbInformation, head
    Opt = " "
    Call Query_mode
    BUTTON(4).Enabled = True
    Exit Sub
End If
If tmp = "mod" Then
    If Combo1.Text = "I" Then
        str = "I"
    ElseIf Combo1.Text = "II" Then
        str = "II"
    ElseIf Combo1.Text = "III" Then
        str = "III"
    Else
        str = "A"
    End If
    On Error Resume Next
    Set Rs = New Recordset
    Rs.Open "select grosswt,tarewt,netwt from rm_waste where divcode='" & Divcode & "' and docno=" & adoPrimaryRs("docno") & " and docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "'", Db, adOpenDynamic, adLockOptimistic
    ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
        Rs("grosswt") = ADOSECONDARYRS(9) 'Gross Wt
        Rs("tarewt") = ADOSECONDARYRS(10) 'Tare Wt
        Rs("netwt") = ADOSECONDARYRS(11)  'Net Wt
        ADOSECONDARYRS.MoveNext
        Rs.MoveNext
    Loop
     Rs.UpdateBatch adAffectAllChapters
'    ADOSECONDARYRS.UpdateBatch adAffectAllChapters
    Db.CommitTrans
    MsgBox "Record modified Successfully", vbInformation, head
    Opt = " "
    Call Query_mode
    BUTTON(4).Enabled = True
End If

Case 10
    desc.Caption = "Query"
    StatusBar1.Panels(2).Text = "Cancel"
    Screen.MousePointer = 11

    Select Case Opt
    Case "mod"
        Db.RollbackTrans
    Case "add"
        Db.RollbackTrans
    Case "del"
        Db.RollbackTrans
    End Select
    If Opt <> "qry" Then
        Opt = "qry"
    Call Query_mode
    BUTTON(4).Enabled = True
    End If
    'calling cancl procedure from module
    Call cancl(BUTTON)
    BUTTON(0).SetFocus
    Screen.MousePointer = 0
Case 11
    'EXIT
    Reset
    Unload Me
    
End Select
End Sub
Private Sub Combo1_LostFocus()
If Opt = "add" Then
    If Combo1.Text = " " And MaskEdBox1.Text <> "__/__/____" Then
        MsgBox "Select any Type from the drop down list", vbInformation, head
        Combo1.SetFocus
        Exit Sub
    Else
        Set Rs = New Recordset
        Rs.Open "select isnull(max(docno),0) from rm_waste", Db, adOpenStatic, adLockBatchOptimistic
        If Rs(0) = 0 Then
            txtfields(0).Text = Rs(0).Value + 1
        Else
            txtfields(0).Text = Rs(0).Value + 1
        End If
        grddatagrid.Row = 0
        grddatagrid.Col = 4
        grddatagrid.SetFocus
        StatusBar1.Panels(2).Text = "Enter Count Code"
        'Ravi
        Set ADOSECONDARYRS = New Recordset
        ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count "", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",borahno""Borah  No."",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"" ,rate,value from rm_waste a,rm_wastetype b where 1=2", Db, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = ADOSECONDARYRS
        grddatagrid.AllowUpdate = True
        Call GRIDALIGN
        ADOSECONDARYRS.AddNew
        Set Rs = New Recordset
        Rs.Open "SELECT WCODE,WDES FROM RM_WASTETYPE WHERE TYPE='S'", Db, adOpenStatic
        If Rs.RecordCount > 0 Then
            Do While Not Rs.EOF
                grddatagrid.Columns(6).Text = Rs(0)
                grddatagrid.Columns(7).Text = Rs(1)
                Set rs1 = New Recordset
                rs1.Open "select isnull(max(isnull(borahno,0)),0)+1 from rm_waste where wcode='" & Rs(0) & "' and divcode='" & Divcode & "'", Db, adOpenStatic
                grddatagrid.Columns(8).Text = rs1(0)
                Set rs1 = New Recordset
                rs1.Open "select isnull(gcode,' ') from rm_waste where wcode='" & Rs(0) & "' and divcode='" & Divcode & "'", Db, adOpenStatic
                If Not rs1.EOF Then grddatagrid.Columns(5).Text = rs1(0)
                Rs.MoveNext
                ADOSECONDARYRS.AddNew
             Loop
             grddatagrid.Columns(12).Visible = False
             grddatagrid.Columns(13).Visible = False
             grddatagrid.Columns(0).Width = 1140.095
            grddatagrid.Columns(1).Width = 764.7874
            grddatagrid.Columns(2).Width = 3000.189
            grddatagrid.Columns(3).Width = 1379.906
            grddatagrid.Columns(4).Width = 975.1182
            grddatagrid.Columns(5).Width = 764.7874
            grddatagrid.Columns(6).Width = 585.0709
            grddatagrid.Columns(7).Width = 1319.811
            grddatagrid.Columns(8).Width = 689.9528
            grddatagrid.Columns(9).Width = 1005.165
            grddatagrid.Columns(10).Width = 1005.165
            grddatagrid.Columns(11).Width = 1005.165
            grddatagrid.Columns(12).Width = 1365.165
            grddatagrid.Columns(13).Width = 1590.236

            ADOSECONDARYRS.MoveFirst
            grddatagrid.Col = 4
            grddatagrid.SetFocus
        End If
        
    End If
End If
End Sub

Private Sub Command3_Click()
    Frame3.Visible = False
    SSTab1.Visible = True
    Frame6.Visible = False
    Buttonframe.Enabled = True
    Call BUTTON_Click(10)
    Call Query_mode
End Sub

Private Sub command4_Click()
    If txtqry <> "" Then
        BUTTON(9).Enabled = False
        Set adoPrimaryRs = New Recordset
        'adoprimaryrs.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.shift, a.variety ""Variety"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.netwt ""Net Weight"" from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode and docno=" & Trim(txtqry.Text) & "  order by a.docno", db, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRs.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight"" from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode and docno=" & Trim(txtqry.Text) & " order by a.docno", Db, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRs.RecordCount = 0 Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        Else
            adoPrimaryRs.MoveFirst
            Set ADOSECONDARYRS = New Recordset
            'ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.variety ""Variety"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", db, adOpenStatic, adLockBatchOptimistic
            ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.borahno""Borah  No."",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRs("docno") & " and a.docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = ADOSECONDARYRS
            For i = 0 To 11
                grddatagrid.Columns(i).Locked = True
            Next
            Call GRIDALIGN
            grddatagrid.Columns(0).Visible = False
            grddatagrid.Columns(1).Visible = False
            grddatagrid.Columns(2).Visible = False
            grddatagrid.Columns(3).Visible = False
            grddatagrid.Columns(4).Locked = True
            grddatagrid.Columns(5).Locked = True
            grddatagrid.Columns(6).Locked = True
            grddatagrid.Columns(7).Locked = True
            grddatagrid.Columns(8).Locked = False
            BUTTON(10).Enabled = True
            SSTab1.Visible = True
            Frame6.Visible = False
        End If
    Else
        MsgBox "Please enter the Doc No.", vbInformation, head
        txtqry.SetFocus
        Exit Sub
    End If
End Sub

Private Sub Form_Load()
    Set Db = New Connection
    Db.CursorLocation = adUseClient
    Db.Provider = "msdatashape"
    Db.Open connectstring
    desc.Caption = "query"
    DATLAB.Caption = Date
    Opt = "qry"
    StatusBar1.Panels(1).Text = head
    Call Query_mode
    DTPicker1.MinDate = yfdate
    DTPicker1.MaxDate = pdate
End Sub
Public Sub Query_mode()
If Opt = " " Or Opt = "qry" Then
    Set adoPrimaryRs = New Recordset
    adoPrimaryRs.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.type""      Salable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight"" from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.type='S' And a.wCode = b.wCode and a.type='S' order by a.docno", Db, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRs.RecordCount > 0 Then
        adoPrimaryRs.MoveFirst
        pr = adoPrimaryRs("docno")
        dr = adoPrimaryRs("docdt")
        Set ADOSECONDARYRS = New Recordset
        ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",borahno"" Borah.  No"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"",rate,value  from rm_waste a,rm_wastetype b where a.type='S'  and a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRs("docno") & " and a.docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "' and a.type='S' and a.wcode=b.wcode ", Db, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = ADOSECONDARYRS
        Call GRIDALIGN
        grddatagrid.Columns(12).Visible = False
        grddatagrid.Columns(13).Visible = False
        Call disablcontls
        Call bindcontls
        Frame1.Enabled = False
        Call GRdlock
        Call NEWFORM(BUTTON)
    Else
        Call Norecfound(BUTTON)
        MsgBox "No Records Found", vbInformation, head
        Set grddatagrid.DataSource = Nothing
        Combo1.Text = " "
        txtfields(0).Text = ""
        MaskEdBox1.Text = "__/__/____"
        End If
    End If
    If Opt = "del" Then
    Set adoPrimaryRs = New Recordset
    adoPrimaryRs.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.Borahno""Borah  No."",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight"" from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode and docno=" & Trim(KslList1.Code) & " and docDT='" & Trim(Format(KslList1.description, "YYYY-MM-DD")) & "' and a.type='S' order by a.docno", Db, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRs.MoveFirst
    Set ADOSECONDARYRS = New Recordset
    ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.Borahno""Borah  No."",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.type='S' and  a.docno=" & adoPrimaryRs("docno") & " and a.docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = ADOSECONDARYRS
    grddatagrid.Columns(4).Width = 1379.906
    grddatagrid.Columns(3).Width = 1379.906
    grddatagrid.Columns(2).Width = 3195.213
    grddatagrid.Columns(1).Width = 764.7874
    grddatagrid.Columns(0).Width = 1140.095
    For i = 0 To 11
        grddatagrid.Columns(i).Locked = True
    Next
    Call GRIDALIGN
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False
    grddatagrid.Columns(4).Locked = True
    grddatagrid.Columns(5).Locked = True
    grddatagrid.Columns(6).Locked = True
    grddatagrid.Columns(7).Locked = True
    grddatagrid.Columns(8).Locked = False
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    BUTTON(9).SetFocus
End If
If Opt = "mod" Then
    Set adoPrimaryRs = New Recordset
    adoPrimaryRs.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.borahno""Borah  No."",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight"" from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode and a.type='S' and docno=" & Trim(KslList1.Code) & " and docDT='" & Trim(Format(KslList1.description, "YYYY-MM-DD")) & "' order by a.docno", Db, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRs.MoveFirst
    Set ADOSECONDARYRS = New Recordset
    ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.borahno""Borah  No."",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.type='S' and a.docno=" & adoPrimaryRs("docno") & " and a.docdt='" & Format(adoPrimaryRs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = ADOSECONDARYRS
    Call GRIDALIGN
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False
    grddatagrid.Columns(4).Locked = True
    grddatagrid.Columns(5).Locked = True
    grddatagrid.Columns(6).Locked = True
    grddatagrid.Columns(7).Locked = True
    grddatagrid.Columns(8).Locked = False
    grddatagrid.AllowUpdate = True
    grddatagrid.CurrentCellModified = True
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    grddatagrid.Col = 9
    grddatagrid.SetFocus
   End If
End Sub
Public Sub bindcontls()
On Error Resume Next
  Dim oText As TextBox
  'Binding  the text boxes to the data source
   For Each oText In Me.txtfields
   Set oText.DataSource = adoPrimaryRs
  Next
End Sub

Public Sub ENABLCONTLS()
Dim X As TextBox
For Each X In Me.txtfields
    X.Locked = False
Next
Frame2.Enabled = True
End Sub
Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.txtfields
    tb.Locked = True
Next
'Frame2.Enabled = False
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
If Opt = "add" And grddatagrid.Col = 10 Then
    grddatagrid.Columns(11).Text = Val(grddatagrid.Columns(9).Text) - Val(grddatagrid.Columns(10).Text)
End If
If grddatagrid.Row >= 0 Then
    If grddatagrid.Col = 7 Then
    Dim cut As Integer
    Dim row1 As Integer
    Dim itemc As String
    Dim itemd As String
    row1 = grddatagrid.Row
    itemc = grddatagrid.Columns(4).Text
    itemd = grddatagrid.Columns(5).Text
    itemf = grddatagrid.Columns(7).Text
    If Opt = "add" Then
        ADOSECONDARYRS.MoveFirst
        Do While Not ADOSECONDARYRS.EOF
            If itemc = ADOSECONDARYRS(4) And itemd = ADOSECONDARYRS(5) And itemf = ADOSECONDARYRS(7) Then
                cut = cut + 1
            End If
            ADOSECONDARYRS.MoveNext
        Loop
    End If
    If Opt = "add" Then
        If cut > 1 Then
            MsgBox "Record Already Exists", vbInformation, head
            flg = "y"
            grddatagrid.Row = row1
            'grddatagrid.Columns(6).Text = " "
            'grddatagrid.Col = 6
            grddatagrid.Columns(7).Text = " "
            grddatagrid.Col = 7
            grddatagrid.SetFocus
            Exit Sub
        Else
            flg = ""
            grddatagrid.Row = row1
            grddatagrid.Col = 8
            grddatagrid.SetFocus
        End If
    End If
End If
End If
'Select Case grdDataGrid.Col
'Case 10
'    If Val(grdDataGrid.Columns(10).Text) > Val(grdDataGrid.Columns(9).Text) Then
'        StatusBar1.Panels(2).Text = "Tare Weight Less Than Gross Weight"
'        grdDataGrid.Columns(10).Text = Empty
'        grdDataGrid.Col = 9
'        grdDataGrid.SetFocus
'        Exit Sub
'    Else
'        grdDataGrid.Columns(11).Text = grdDataGrid.Columns(9).Text - grdDataGrid.Columns(10).Text
'
'        ADOSECONDARYRS.AddNew
'        grdDataGrid.Col = 0
'        grdDataGrid.SetFocus
''        grdDataGrid.Columns(11).Locked = True
'    End If
'End Select
End Sub

'Private Sub grddatagrid_Click()
'If Opt = "mod" Then
'grddatagrid.Col = 8
'grddatagrid.SetFocus
'End If
'End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub grdDataGrid_GotFocus()
If Opt = "add" Then
Select Case grddatagrid.Col
Case 10
grddatagrid.Columns(10).Text = IIf(grddatagrid.Columns(8).Text = "", 0, Val(grddatagrid.Columns(8).Text)) + IIf(grddatagrid.Columns(9).Text = "", 0, Val(grddatagrid.Columns(9).Text))
End Select
End If
End Sub

Private Sub grdDataGrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error Resume Next
Select Case grddatagrid.Col
    Case 11
        If Opt = "add" Then
            If KeyCode = 9 And Trim(grddatagrid.Columns(10).Text) <> "" And Opt = "add" And flg <> "y" Then
                ADOSECONDARYRS.AddNew
                grddatagrid.Row = grddatagrid.Row + 1
                grddatagrid.Col = 0
                grddatagrid.SetFocus
            End If
        End If
    End Select

End Sub

Private Sub grdDataGrid_KeyPress(KeyAscii As Integer)
If grddatagrid.Col = 9 And KeyAscii = 13 And Opt = "add" Then
    If Trim(grddatagrid.Text) <> "" Then
        If ADOSECONDARYRS.RecordCount > ADOSECONDARYRS.AbsolutePosition Then
            grddatagrid.Row = grddatagrid.Row + 1
            grddatagrid.Col = 9
            grddatagrid.EditActive = True
            grddatagrid.SetFocus
            Exit Sub
        Else
            ADOSECONDARYRS.MoveFirst
            grddatagrid.Col = 10
            grddatagrid.EditActive = True
            grddatagrid.SetFocus
            Exit Sub
            
        End If
    Else
        KeyAscii = 0
        Exit Sub
    End If
End If
If grddatagrid.Col = 10 And KeyAscii = 13 And Opt = "add" Then
    If Trim(grddatagrid.Text) <> "" Then
        If ADOSECONDARYRS.RecordCount > ADOSECONDARYRS.AbsolutePosition Then
            grddatagrid.Row = grddatagrid.Row + 1
            grddatagrid.Col = 10
            grddatagrid.EditActive = True
            grddatagrid.SetFocus
            Exit Sub
        Else
            ADOSECONDARYRS.MoveFirst
            grddatagrid.Col = 11
            grddatagrid.EditActive = True
            grddatagrid.SetFocus
            Exit Sub
            
        End If
    Else
        KeyAscii = 0
        Exit Sub
    End If
End If

If Opt = "add" Or Opt = "mod" Then
Select Case grddatagrid.Col
 Case 7
ToNumb grddatagrid, 1, KeyAscii
Call ToUpCase(grddatagrid, KeyAscii)
Case 9, 10
    tonum grddatagrid, 7, KeyAscii
 
 End Select
 End If
 
 If Opt = "MOD" Then
Select Case grddatagrid.Col
 
Case 8
tonum grddatagrid, 5, KeyAscii
 
 End Select
 End If
 Call ToUpCase(grddatagrid, KeyAscii)
End Sub

Private Sub grddatagrid_LostFocus()
If Opt <> "qry" And Opt <> " " Then
If grddatagrid.Row >= 0 Then
    If grddatagrid.Col = 8 And grddatagrid.Columns(8).Text <> "" Then
Dim cut As Integer
Dim row1 As Integer
Dim itemc As String
Dim itemd As String
row1 = grddatagrid.Row
itemc = grddatagrid.Columns(4).Text
itemd = grddatagrid.Columns(5).Text
itemf = grddatagrid.Columns(7).Text
If Opt = "add" Then
ADOSECONDARYRS.MoveFirst
Do While Not ADOSECONDARYRS.EOF
If itemc = ADOSECONDARYRS(4) And itemd = ADOSECONDARYRS(5) And itemf = ADOSECONDARYRS(7) Then
cut = cut + 1
End If
ADOSECONDARYRS.MoveNext
Loop
End If



If Opt = "add" Then
If cut > 1 Then
MsgBox "Record Already Exists", vbInformation, head
flg = "y"
grddatagrid.Row = row1
'grddatagrid.Columns(6).Text = " "
grddatagrid.Col = 6
grddatagrid.SetFocus
Else
flg = ""
grddatagrid.Col = 8
grddatagrid.SetFocus

End If
End If
End If
End If
If grddatagrid.Row >= 0 And Opt = "add" Then
If grddatagrid.Columns(4) <> "" And grddatagrid.Columns(5) <> "" Then
If grddatagrid.Columns(8).Text = "" Then
If Trim(grddatagrid.Columns(7).Text) <> "" Then
MsgBox "Gross weight Cannot be Empty", vbInformation, head
grddatagrid.Col = 8
grddatagrid.SetFocus
Exit Sub
Else
'MsgBox "Salable/Usable Cannot be empty", vbInformation, head
grddatagrid.Col = 7
'grddatagrid.SetFocus
Exit Sub
End If

End If
End If
End If
End If
End Sub

Private Sub grddatagrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
If Opt = "add" Or Opt = "mod" Then
On Error Resume Next
    Select Case grddatagrid.Col
    Case 5
        If Trim(grddatagrid.Columns(4).Text) <> "" Then
        If Record_Exists("rm_count") = False Then Exit Sub
            Set Rs = New Recordset
            Rs.Open "select count(*) from rm_count where cntcd='" & grddatagrid.Columns(4).Text & "'", Db, adOpenDynamic, adLockOptimistic
            If Rs(0) = 0 Then
                SSTab1.Visible = False
                Frame3.Visible = True
                Frame3.ZOrder
                Buttonframe.Enabled = False
                Label15.Caption = "Count Listing"
                KslList1.conn = connectstring
                KslList1.table = "rm_count"
                KslList1.listfield1 = "cntcd"
                KslList1.listfield2 = "cntname"
                KslList1.SetFocus
                StatusBar1.Panels(2).Text = "Select Count from the List"
            Else
                StatusBar1.Panels(2).Text = "Enter Godown Code"
                grddatagrid.Col = 5
                grddatagrid.SetFocus
            End If
            End If
    Case 6
        If Record_Exists("rm_god") = False Then Exit Sub
            Set Rs = New Recordset
            Rs.Open "select count(*) from rm_god where gcode='" & grddatagrid.Columns(5).Text & "'", Db, adOpenDynamic, adLockOptimistic
            If Rs(0) = 0 Then
                SSTab1.Visible = False
                Frame3.Visible = True
                Frame3.ZOrder
                Buttonframe.Enabled = False
                Label15.Caption = "Godown Listing"
                KslList1.conn = connectstring
                KslList1.table = "rm_god"
                KslList1.listfield1 = "gcode"
                KslList1.listfield2 = "gname"
                KslList1.SetFocus
                StatusBar1.Panels(2).Text = "Select Godown from the List"
            Else
                StatusBar1.Panels(2).Text = "Enter Waste code"
                grddatagrid.Col = 6
                grddatagrid.SetFocus
            End If
    
    Case 7
        If Record_Exists("rm_wastetype") = False Then Exit Sub
            Set Rs = New Recordset
            Rs.Open "select count(*) from rm_wastetype where wcode='" & grddatagrid.Columns(6).Text & "'", Db, adOpenDynamic, adLockOptimistic
            If Rs(0) = 0 Then
                SSTab1.Visible = False
                Frame3.Visible = True
                Frame3.ZOrder
                Buttonframe.Enabled = False
                Label15.Caption = "Waste Listing"
                KslList1.conn = connectstring
                KslList1.table = "rm_wastetype"
                KslList1.listfield1 = "wcode"
                KslList1.listfield2 = "wdes"
                KslList1.SetFocus
                StatusBar1.Panels(2).Text = "Select waste from the List"
            Else
                Set Rs = New Recordset
                Rs.Open "select wdes from rm_wastetype where wcode='" & grddatagrid.Columns(6).Text & "'", Db, adOpenDynamic, adLockOptimistic
                grddatagrid.Columns(7).Text = Rs(0)
                Set Rs = New Recordset
                Rs.Open "select type  from rm_wastetype where wcode='" & grddatagrid.Columns(6).Text & "' and wdes='" & grddatagrid.Columns(7).Text & "'", Db, adOpenStatic, adLockBatchOptimistic
                If Not Rs.EOF Then
                    grddatagrid.Columns(8).Text = Rs(0)
                    grddatagrid.Col = 8
                    grddatagrid.SetFocus
                End If
            End If
    Case 10
            If Opt = "add" And grddatagrid.Col = 10 Then
                grddatagrid.Columns(11).Text = Val(grddatagrid.Columns(9).Text) - Val(grddatagrid.Columns(10).Text)
            End If
    Case 11
        If Val(grddatagrid.Columns(10).Text) > Val(grddatagrid.Columns(9).Text) Then
            StatusBar1.Panels(2).Text = "Tare Weight Less Than Gross Weight"
            grddatagrid.Columns(10).Text = Empty
            grddatagrid.Col = 10
            grddatagrid.SetFocus
            Exit Sub
        Else
            grddatagrid.Columns(11).Text = Abs(Val(grddatagrid.Columns(9).Text) - IIf(IsEmpty(grddatagrid.Columns(10).Text), 0, Val(grddatagrid.Columns(10).Text)))
            grddatagrid.Columns(11).Locked = True
        End If
    End Select
End If

If Opt = "add" And grddatagrid.Col = 11 Then
            grddatagrid.Row = grddatagrid.Row + 1
            grddatagrid.Col = 4
            grddatagrid.EditActive = True
            grddatagrid.SetFocus
End If

End Sub


Private Sub Lovcancel_Click()
Frame3.Visible = False
SSTab1.Visible = True
Buttonframe.Enabled = True
If KslList1.listfield1 = "wcode" Then
    grddatagrid.Col = 6
    grddatagrid.SetFocus
    Exit Sub
End If
If KslList1.listfield1 = "gcode" Then
    grddatagrid.Col = 5
    grddatagrid.SetFocus
    Exit Sub
End If

If KslList1.listfield1 = "cntcd" Then
    grddatagrid.Columns(4).Text = ""
    grddatagrid.Col = 5
    grddatagrid.SetFocus
    Exit Sub
End If



Call BUTTON_Click(10)
Call Query_mode
End Sub

Private Sub MaskEdBox1_LostFocus()
If Opt = "add" And MaskEdBox1 <> "__/__/____" Then
If Not (IsDate(MaskEdBox1.Text)) Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox1.Text = pdate
        MaskEdBox1.SetFocus
    ElseIf CDate(MaskEdBox1.Text) > pdate Then
            MsgBox ("Document date should not be greater then processing date"), vbInformation, head
            MaskEdBox1.Text = "__/__/____"
            MaskEdBox1.SetFocus
            Exit Sub
    End If
End If
End Sub

Private Sub MaskEdBox1_Validate(Cancel As Boolean)
If Opt = "add" Then

If MaskEdBox1.Text = "__/__/____" Then
MsgBox "Document Date Cannot be empty", vbInformation, head
Cancel = True
MaskEdBox1.SetFocus

Else
Combo1.SetFocus
End If
End If
End Sub


Private Sub lovok_Click()
SSTab1.Visible = True
    Frame3.Visible = False
    Buttonframe.Enabled = True
Select Case KslList1.listfield1
Case "cntcd"
     
        grddatagrid.Columns(4).Text = KslList1.Code
        grddatagrid.Col = 5
        grddatagrid.SetFocus
        StatusBar1.Panels(2).Text = "Enter Godown Code"
Case "gcode"
        grddatagrid.Columns(5).Text = KslList1.Code
        grddatagrid.Col = 6
        grddatagrid.SetFocus
        StatusBar1.Panels(2).Text = "Enter Waste Code"
Case "wcode"
        grddatagrid.Columns(6).Text = KslList1.Code
        grddatagrid.Columns(7).Text = KslList1.description
        Set Rs = New Recordset
        Rs.Open "select isnull(max(isnull(borahno,0)),0)+1  from rm_waste where wcode='" & grddatagrid.Columns(6).Text & "' and divcode='" & Divcode & "'", Db, adOpenStatic, adLockBatchOptimistic
        If Not Rs.EOF Then grddatagrid.Columns(8).Text = Rs(0)
        grddatagrid.Col = 8
        grddatagrid.SetFocus
        StatusBar1.Panels(2).Text = "Enter 7 integers and 3 decimals"

Case "cast(docno as varchar)"
    Call Query_mode
End Select
    
    
End Sub

Private Sub DTPicker1_CloseUp()
'If Not (DTPicker1.Value >= yfdate And DTPicker1.Value <= pdate) Then
'MsgBox "Document date should fall within the processing date", vbInformation, head
'Exit Sub
'Else
MaskEdBox1.Text = DTPicker1.Value
'Combo1.SetFocus
'StatusBar1.Panels(2).Text = "Select the Shift"
'End If
End Sub
Public Sub navi1(tol As Object)
    tol(0).Enabled = True 'ADD
    tol(1).Enabled = True 'MOD
    tol(2).Enabled = True 'DEL
    On Error Resume Next
    tol(3).Enabled = True 'LIST
    'tol(4).Enabled = False 'QUERY
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT
End Sub

Public Sub GRIDALIGN()
On Error Resume Next
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(2).Visible = False
        grddatagrid.Columns(3).Visible = False
        grddatagrid.Columns(0).Width = 1140.095
        grddatagrid.Columns(1).Width = 764.7874
        grddatagrid.Columns(2).Width = 3000.189
        grddatagrid.Columns(3).Width = 1379.906
        grddatagrid.Columns(4).Width = 975.1182
        grddatagrid.Columns(5).Width = 824.882
        grddatagrid.Columns(6).Width = 705.2599
        grddatagrid.Columns(7).Width = 1124.787
        grddatagrid.Columns(8).Width = 720.0001
        grddatagrid.Columns(9).Width = 1005.165
        grddatagrid.Columns(10).Width = 1005.165
        grddatagrid.Columns(11).Width = 1005.165
        grddatagrid.Columns(12).Width = 1365.165
        grddatagrid.Columns(13).Width = 1590.236
        grddatagrid.Columns(9).NumberFormat = "######.000"
        grddatagrid.Columns(10).NumberFormat = "######.000"
        grddatagrid.Columns(11).NumberFormat = "######.000"
        grddatagrid.Columns(9).Alignment = dbgRight
        grddatagrid.Columns(10).Alignment = dbgRight
        grddatagrid.Columns(11).Alignment = dbgRight
        grddatagrid.Columns(8).Alignment = dbgRight
End Sub

Public Sub GRdlock()
For i = 0 To grddatagrid.Columns.Count - 1
grddatagrid.Columns(i).Locked = True
Next
End Sub


