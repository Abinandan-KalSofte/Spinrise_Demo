VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmPurchaseRegister 
   Caption         =   "s"
   ClientHeight    =   9135
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   17130
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   9135
   ScaleWidth      =   17130
   WindowState     =   2  'Maximized
   Begin VB.CheckBox Check6 
      Caption         =   "Customized"
      Height          =   375
      Left            =   720
      TabIndex        =   35
      Top             =   5640
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.CheckBox Check5 
      Caption         =   "All"
      Height          =   195
      Left            =   13320
      TabIndex        =   33
      Top             =   1920
      Visible         =   0   'False
      Width           =   525
   End
   Begin VB.Frame Frame1 
      Caption         =   "Option"
      Height          =   1575
      Left            =   600
      TabIndex        =   28
      Top             =   3720
      Visible         =   0   'False
      Width           =   1815
      Begin VB.CheckBox Check4 
         Caption         =   "Value"
         Height          =   255
         Left            =   360
         TabIndex        =   31
         Top             =   960
         Value           =   1  'Checked
         Width           =   975
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Bales"
         Height          =   255
         Left            =   360
         TabIndex        =   30
         Top             =   240
         Value           =   1  'Checked
         Width           =   975
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Kgs"
         Height          =   255
         Left            =   360
         TabIndex        =   29
         Top             =   600
         Value           =   1  'Checked
         Width           =   975
      End
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Varietywise"
      Height          =   255
      Left            =   5565
      TabIndex        =   20
      Top             =   5070
      Visible         =   0   'False
      Width           =   1770
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Categorywise"
      Height          =   225
      Left            =   3990
      TabIndex        =   19
      Top             =   5070
      Value           =   -1  'True
      Visible         =   0   'False
      Width           =   1305
   End
   Begin VB.PictureBox FraVarStocktype 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   3285
      Left            =   2550
      ScaleHeight     =   3255
      ScaleWidth      =   6615
      TabIndex        =   9
      Top             =   2265
      Visible         =   0   'False
      Width           =   6645
      Begin VB.OptionButton Option4 
         Caption         =   "Varietywise"
         Height          =   225
         Left            =   1440
         TabIndex        =   27
         Top             =   2400
         Value           =   -1  'True
         Visible         =   0   'False
         Width           =   1545
      End
      Begin VB.OptionButton Option3 
         Caption         =   "Datewise"
         Height          =   255
         Left            =   3015
         TabIndex        =   26
         Top             =   2400
         Visible         =   0   'False
         Width           =   1770
      End
      Begin VB.CheckBox Check1 
         Caption         =   "All"
         Height          =   270
         Left            =   5160
         TabIndex        =   21
         Top             =   2640
         Visible         =   0   'False
         Width           =   1140
      End
      Begin MSComCtl2.DTPicker Dt_From 
         Height          =   375
         Left            =   2205
         TabIndex        =   10
         Top             =   720
         Width           =   1425
         _ExtentX        =   2514
         _ExtentY        =   661
         _Version        =   393216
         Format          =   156696577
         CurrentDate     =   39256
      End
      Begin MSComCtl2.DTPicker Dt_To 
         Height          =   375
         Left            =   2205
         TabIndex        =   11
         Top             =   1215
         Width           =   1425
         _ExtentX        =   2514
         _ExtentY        =   661
         _Version        =   393216
         Format          =   156696577
         CurrentDate     =   39256
      End
      Begin MSDataListLib.DataCombo cmb_FromVariety 
         Height          =   315
         Left            =   2205
         TabIndex        =   12
         Top             =   1710
         Width           =   4260
         _ExtentX        =   7514
         _ExtentY        =   556
         _Version        =   393216
         Appearance      =   0
         Style           =   2
         Text            =   ""
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
      Begin MSDataListLib.DataCombo cmb_Tovariety 
         Height          =   315
         Left            =   2205
         TabIndex        =   13
         Top             =   2175
         Width           =   4200
         _ExtentX        =   7408
         _ExtentY        =   556
         _Version        =   393216
         Appearance      =   0
         Style           =   2
         Text            =   ""
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
      Begin MSComctlLib.ListView Lv_PType 
         Height          =   1935
         Left            =   2205
         TabIndex        =   22
         Top             =   2160
         Visible         =   0   'False
         Width           =   4365
         _ExtentX        =   7699
         _ExtentY        =   3413
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Count Name"
            Object.Width           =   5292
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   1235
         EndProperty
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Variety Form Type:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   540
         TabIndex        =   23
         Top             =   2520
         Visible         =   0   'False
         Width           =   1605
      End
      Begin VB.Label L_ToVar 
         AutoSize        =   -1  'True
         Caption         =   "To Category"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   630
         TabIndex        =   18
         Top             =   2220
         Width           =   1050
      End
      Begin VB.Label L_FromVar 
         AutoSize        =   -1  'True
         Caption         =   "From Category"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   645
         TabIndex        =   17
         Top             =   1770
         Width           =   1230
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "To Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   3
         Left            =   645
         TabIndex        =   16
         Top             =   1305
         Width           =   705
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   0
         Left            =   645
         TabIndex        =   15
         Top             =   810
         Width           =   885
      End
      Begin VB.Label L_FraHead 
         Alignment       =   2  'Center
         BackColor       =   &H00C00000&
         Caption         =   "Stock Statement"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   450
         Left            =   0
         TabIndex        =   14
         Top             =   -15
         Width           =   6615
      End
   End
   Begin VB.PictureBox FraPrint 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   1470
      ScaleHeight     =   465
      ScaleWidth      =   8445
      TabIndex        =   0
      Top             =   6930
      Width           =   8475
      Begin VB.CommandButton Command2 
         Caption         =   "Datewise - Excel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   6000
         TabIndex        =   25
         ToolTipText     =   "(Alt R)"
         Top             =   45
         Visible         =   0   'False
         Width           =   1665
      End
      Begin VB.CommandButton Command1 
         Caption         =   " Excel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1200
         TabIndex        =   24
         Top             =   45
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.CommandButton CmdExit 
         Caption         =   "E&xit"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4200
         TabIndex        =   8
         ToolTipText     =   "(Alt x)"
         Top             =   45
         Width           =   1245
      End
      Begin VB.CommandButton CmdCrystal 
         Caption         =   "&Report"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   7
         ToolTipText     =   "(Alt R)"
         Top             =   45
         Width           =   1245
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   600
      Top             =   1815
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   420
      Top             =   7830
      Visible         =   0   'False
      Width           =   2460
      _ExtentX        =   4339
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   375
      Left            =   660
      Top             =   7845
      Visible         =   0   'False
      Width           =   2460
      _ExtentX        =   4339
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc3 
      Height          =   375
      Left            =   0
      Top             =   7935
      Visible         =   0   'False
      Width           =   2460
      _ExtentX        =   4339
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.PictureBox FraSuppRank 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   2190
      Left            =   2670
      ScaleHeight     =   2160
      ScaleWidth      =   6330
      TabIndex        =   1
      Top             =   2550
      Visible         =   0   'False
      Width           =   6360
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   3060
         TabIndex        =   3
         Top             =   720
         Width           =   1425
         _ExtentX        =   2514
         _ExtentY        =   661
         _Version        =   393216
         Format          =   171048961
         CurrentDate     =   39256
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   3060
         TabIndex        =   4
         Top             =   1305
         Width           =   1425
         _ExtentX        =   2514
         _ExtentY        =   661
         _Version        =   393216
         Format          =   171048961
         CurrentDate     =   39256
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "To Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   2
         Left            =   1575
         TabIndex        =   6
         Top             =   1395
         Width           =   705
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   1
         Left            =   1575
         TabIndex        =   5
         Top             =   810
         Width           =   885
      End
      Begin VB.Label LBLSUPPLIERRANKHEAD 
         Alignment       =   2  'Center
         BackColor       =   &H00C00000&
         Caption         =   "Supplier Ranking"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   450
         Left            =   0
         TabIndex        =   2
         Top             =   -15
         Width           =   6330
      End
   End
   Begin MSComctlLib.ListView List_Varcode 
      Height          =   4485
      Left            =   9600
      TabIndex        =   32
      Top             =   2280
      Visible         =   0   'False
      Width           =   4275
      _ExtentX        =   7541
      _ExtentY        =   7911
      View            =   3
      LabelEdit       =   1
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      Checkboxes      =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Variety Name"
         Object.Width           =   7938
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Code"
         Object.Width           =   2
      EndProperty
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Variety"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Left            =   9600
      TabIndex        =   34
      Top             =   1920
      Visible         =   0   'False
      Width           =   720
   End
End
Attribute VB_Name = "FrmPurchaseRegister"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As New Connection
Dim TmpRs As New Recordset
Dim SubRs As New Recordset
Dim temprs, RsCn As New Recordset
Dim Rs As New Recordset
Dim Rptname As eRepName

Public Enum eRepName
    RptSupRank = 1
    RptStocktype = 2
    RptStock_cust = 3
    RptStock_cust1 = 4
    RptStock_cust2 = 5
    RptSustainableRpt = 6
End Enum
Dim Myxl As Excel.Application
Public Property Let eReportName(eRep As eRepName)
    Rptname = eRep
End Property
Private Sub Check5_Click()
If Check5.value = 1 Then
        For I = 1 To List_Varcode.ListItems.Count
          List_Varcode.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To List_Varcode.ListItems.Count '- 1
             List_Varcode.ListItems.Item(I).Checked = False
        Next I
End If
End Sub


Private Sub CmdCrystal_Click()
intervalMinutes = -1
Dim fdt As String, Tdt As String, Fdep As String, tdep As String
Dim fsup As String, tsup As String, Ftype As String, TTYPE As String
Set Rs = New Recordset
Rs.Open "select * from pp_divmas where divcode=" & Divcode & " ", DB, adOpenStatic
If Not Rs.EOF Then
    DivprintName = Rs("DIV_PRINTNAME")
    DivUnitName = Rs("DIV_UNITNAME")
End If

Select Case Rptname
    Case eRepName.RptSupRank
        Dim ClsSuppRank As New clsCrystal
        Set ClsSuppRank.cryRept = Cry_QualityparamRank
        ClsSuppRank.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.Formulas(0) = "DivName='" & DivprintName & "'"
        CrystalReport1.Formulas(1) = "UnitName='" & DivUnitName & "'"
        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@FDate;" & Format(DTPicker1.value, "yyyy-mm-dd")
        CrystalReport1.ParameterFields(2) = "@TDate;" & Format(DTPicker2.value, "yyyy-mm-dd")
        CrystalReport1.ParameterFields(3) = "@YFDATE;" & Format(yfdate, "yyyy-mm-dd")
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 2
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        intervalMinutes = -1
    Case eRepName.RptStocktype
        FCat = Trim(Mid(cmb_FromVariety.Text, InStr(3, cmb_FromVariety.Text, "---") + 3, Len(cmb_FromVariety.Text)))
        TCat = Trim(Mid(cmb_Tovariety.Text, InStr(3, cmb_Tovariety.Text, "---") + 3, Len(cmb_Tovariety.Text)))
        
        Dim ClsStockCat As New clsCrystal
        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
            If Option4.value = True Then
                Set ClsStockCat.cryRept = Cry_RMI_StockStmt_VT 'Cry_RMIStockstatmentPallava
            ElseIf Option3.value = True Then
                Set ClsStockCat.cryRept = Cry_RMI_StockStmt_VTDatewise_Old
'                Set ClsStockCat.cryRept = Cry_RMI_StockStmt_VTDatewise
            End If
        Else
        Set ClsStockCat.cryRept = Cry_StockStamentTrantypewise
        End If
        ClsStockCat.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.Formulas(0) = "DivName='" & DivprintName & "'"
        CrystalReport1.Formulas(1) = "UnitName='" & DivUnitName & "'"
        CrystalReport1.Formulas(2) = "Custid='" & CustID & "'"
        CrystalReport1.ReportTitle = "Stock Stament From " & Format(Dt_From.value, "dd-MM-yyyy") & " To " & Format(Dt_To.value, "dd-MM-yyyy")
        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@FROMDATE;" & Format(Dt_From.value, "yyyy-mm-dd")
        CrystalReport1.ParameterFields(2) = "@TODATE;" & Format(Dt_To.value, "yyyy-mm-dd")
        CrystalReport1.ParameterFields(3) = "@YFDATE;" & Format(yfdate, "yyyy-mm-dd")
        CrystalReport1.ParameterFields(4) = "@YLDATE;" & Format(yldate, "yyyy-mm-dd")
        CrystalReport1.ParameterFields(5) = "@TYEAR;" & Format(yfdate, "yyyy")
        CrystalReport1.ParameterFields(6) = "@FROMCAT;" & FCat
        CrystalReport1.ParameterFields(7) = "@TOCAT;" & TCat
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 2
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
    intervalMinutes = -1
    Case eRepName.RptStock_cust
            U = Format(Dt_From.value, "yyyy-mm-dd")
            v = Format(Dt_To.value, "yyyy-mm-dd")
            
                If CDate(U) > CDate(v) Then
                    MsgBox "From Date should not be greater than To Date", vbInformation
                    DTPicker2.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If


                If CDate(v) < CDate(U) Then
                    MsgBox "To Date should not be less than From Date", vbInformation
                    DTPicker2.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                
                catcd = "ALL"
                mtype = "ALL"
                Call mdlform3_ALL(CStr(U), CStr(v), CStr(catcd), CStr(mtype))
                Screen.MousePointer = 0
                Exit Sub
                
    Case eRepName.RptStock_cust1, eRepName.RptSustainableRpt
    
    intervalMinutes = -1
            U = Format(Dt_From.value, "yyyy-mm-dd")
            v = Format(Dt_To.value, "yyyy-mm-dd")
            
                If CDate(U) > CDate(v) Then
                    MsgBox "From Date should not be greater than To Date", vbInformation
                    DTPicker2.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If


                If CDate(v) < CDate(U) Then
                    MsgBox "To Date should not be less than From Date", vbInformation
                    DTPicker2.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                
                FCat = Trim(Mid(cmb_FromVariety.Text, InStr(3, cmb_FromVariety.Text, "---") + 3, Len(cmb_FromVariety.Text)))
                TCat = Trim(Mid(cmb_Tovariety.Text, InStr(3, cmb_Tovariety.Text, "---") + 3, Len(cmb_Tovariety.Text)))
                '
                'catcd = "ALL"
                
                catcd = FCat
                '
                mtype = "ALL"
                If Rptname = RptStock_cust1 Then
                    Call mdlform3_CAT(CStr(U), CStr(v), CStr(catcd), CStr(mtype))
                Else
                 PUTDATADATE2
                End If
                Screen.MousePointer = 0
                
                
                intervalMinutes = -1
                
                Exit Sub




    Case eRepName.RptStock_cust2
            U = Format(Dt_From.value, "yyyy-mm-dd")
            v = Format(Dt_To.value, "yyyy-mm-dd")
            
                If CDate(U) > CDate(v) Then
                    MsgBox "From Date should not be greater than To Date", vbInformation
                    DTPicker2.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If

intervalMinutes = -1
                If CDate(v) < CDate(U) Then
                    MsgBox "To Date should not be less than From Date", vbInformation
                    DTPicker2.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                
                
                
                FCat = Trim(Mid(cmb_FromVariety.Text, InStr(3, cmb_FromVariety.Text, "---") + 3, Len(cmb_FromVariety.Text)))
                TCat = Trim(Mid(cmb_Tovariety.Text, InStr(3, cmb_Tovariety.Text, "---") + 3, Len(cmb_Tovariety.Text)))
 
                mtype = FCat
                catcd = "ALL"
                Call mdlform3_VAR(CStr(U), CStr(v), CStr(catcd), CStr(mtype))
                Screen.MousePointer = 0
                intervalMinutes = -1
                Exit Sub





End Select
End Sub

Public Sub mdlform3_ALL(month_value1 As String, month_value2 As String, Category As String, XType As String)
        intervalMinutes = -1
        Dim Adjustment  As Double
        Dim bolLotType As Boolean
        Dim sCondition As String
        pagein = 0
        Adjustment = 0
        cont = 0
        f = FreeFile
        cnt = 0
        too = 0
        adjtot = 0
        Adjustment1 = 0
        Adjustm = 0
        monthmm = 0
        
        If XType = "ALL" Then bolTYPEAll = True Else bolTYPEAll = False
        If XType = "A" Then bolLotType = True Else bolLotType = False
        If bolLotType = True Then sCondition = "Lottype ='" & XType & "'" Else sCondition = "transferType ='" & XType & "'"
        
        Set rsa = New Recordset
        rsa.Open "select catname from rm_cat where catcd='" & Category & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            cat = rsa(0)
        Else
            cat = "ALL"
        End If
        
        date1 = Format(month_value1, "yyyy-mm-dd")
        date2 = Format(month_value2, "yyyy-mm-dd")
        On Error Resume Next
        DB.Execute "drop table formiv_CUST"
        DB.Execute "Create table Formiv_CUST(Code varchar(10),description VARCHAR(35),date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstran numeric(16),isstrantot numeric(15,3),isstotkg numeric(15,3),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3),rejbale numeric(12),REJKG NUMERIC(15,3),ADJBALE NUMERIC(15),adjkg numeric(15,3),adjtype char(1), salbale numeric(10),salborah numeric(10), saltot numeric(12), saltotkg numeric(15,3), isskgs numeric(20,3))"
        
        For dtCurrDate = CDate(month_value1) To CDate(month_value2)
         
                SqlStr = ""
                
               If Option1.value = True Then
                SqlStr = " SELECT d.CATCD,d.catname,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
               Else
                'varitywise
                SqlStr = " SELECT a.varcode,c.VARNAME,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
               End If
               
                SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
                SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBAL,0)) + SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBOR,0)) + SUM(ISNULL(A.JWBOR,0)) AS ISSBORAS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODKGS,0)) + SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.TRANSBAL,0)) as TranBal, SUM(ISNULL(A.TRANSBOR,0)) as TrabBoras, SUM(ISNULL(A.TRANSKGS,0)) as TransKgs, "
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.SALESBAL,0)) as SalBal, SUM(ISNULL(A.SALESBOR,0)) as SalBoras, SUM(ISNULL(A.SALESKGS,0)) as SalKgs, "
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) as REJKGS,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END as CLOBALES,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END as CLOBORAS,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END as CLOKGS "
                SqlStr = SqlStr + Chr(13) + " FROM ("
                SqlStr = SqlStr + Chr(13) + gStockStatement(CDate(dtCurrDate), CDate(dtCurrDate))
                SqlStr = SqlStr + Chr(13) + "  ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "'"

                If Trim(Category) <> "ALL" Then
                    If XType <> "ALL" Then
                        If XType = "A" Then
                            If Option1.value = True Then
                                SqlStr = SqlStr & Chr(13) + "  and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "' GROUP BY d.catcd,d.CATNAME"
                            Else
                                SqlStr = SqlStr & Chr(13) + "  and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "' GROUP BY a.varcode,c.VARNAME"
                            End If
                            
                        Else
                                If Option1.value = True Then
                                    SqlStr = SqlStr & Chr(13) + "  and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "' GROUP BY d.catcd,d.CATNAME"
                                Else
                                    SqlStr = SqlStr & Chr(13) + "  and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "' GROUP BY a.varcode,c.VARNAME"
                                End If
                                
                        End If
                    Else
                            If Option1.value = True Then
                                SqlStr = SqlStr & Chr(13) + "  and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(Category) & "' GROUP BY d.catcd,d.CATNAME"
                            Else
                                SqlStr = SqlStr & Chr(13) + "  and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(Category) & "' GROUP BY a.varcode,c.VARNAME"
                            End If
                            
                    End If
                Else
                    If XType <> "ALL" Then
                        If XType = "A" Then
                            If Option1.value = True Then
                                SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' GROUP BY d.catcd,d.CATNAME"
                            Else
                                SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' GROUP BY a.varcode,c.VARNAME"
                            End If
                        Else
                            If Option1.value = True Then
                                SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "' GROUP BY d.catcd,d.CATNAME"
                            Else
                                SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "' GROUP BY a.varcode,c.VARNAME"
                            End If
                        End If
                    Else
                    'ALL
                            If Option1.value = True Then
                                SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' GROUP BY d.catcd,d.CATNAME"
                            Else
                                SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' GROUP BY a.varcode,c.VARNAME"
                            End If
                            
                    End If
                End If

                'ALL
                'SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
                intervalMinutes = -1
                Set Rs = New Recordset
                DB.CommandTimeout = 1000
                Rs.Open SqlStr, DB, adOpenStatic
        
                Set AdjRs = New Recordset
                AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt='" & Format(dtCurrDate, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' " & IIf(bolTYPEAll, " ", " and a." & sCondition) & " group by a.adjust) A group by adjust", DB, adOpenStatic
        
                If AdjRs.RecordCount > 0 Then
                    Do While Not AdjRs.EOF
                        If AdjRs("adjust") = "+" Then
                            Adjustment1 = Adjustment1 + AdjRs("ADJBALE")
                            Adjustment = Adjustment + AdjRs("ADJTOTKGS")
                        ElseIf AdjRs("adjust") = "-" Then
                            Adjustment1 = Adjustment1 - AdjRs("ADJBALE")
                            Adjustment = Adjustment - AdjRs("ADJTOTKGS")
                        End If
                        AdjRs.MoveNext
                    Loop
                Else
                   Adjustment = 0
                End If
                 
                TotalAdjust = TotalAdjust + Adjustment
                intervalMinutes = -1
                If Rs.EOF = False Then
                    sQry = ""
                  
                 ' Rs.MoveFirst
                  Do While Not Rs.EOF
                    'varietywise
                    sQry = ""
                    '
                    sQry = sQry & Chr(13) & " INSERT INTO Formiv_cust(code,description,date1,Opbales, opborah, optot,optotkg,recbale,recborah,rectot,"
                    sQry = sQry & Chr(13) & " rectotkg,oprecbale,oprecborah,oprectot,oprectotkg,issbale, issboarh,isstot,isstran,"
                    sQry = sQry & Chr(13) & " isstrantot,isstotkg,rejbale,REJKG, salbale,salborah,saltot,saltotkg,ADJBALE,adjkg,"
                    sQry = sQry & Chr(13) & " adjtype,totbale,totborah,total,totkg,isskgs) Values "
                    If Option1.value = True Then
                        sQry = sQry & Chr(13) & " ('" & Trim(Rs("catcd")) & "','" & Trim(Rs("catname")) & "','" & Format(dtCurrDate, "YYYY/MM/DD") & "',"
                    Else
                        sQry = sQry & Chr(13) & " ('" & Trim(Rs("varcode")) & "','" & Trim(Rs("varname")) & "','" & Format(dtCurrDate, "YYYY/MM/DD") & "',"
                    End If
                    
                    
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbORAS")), 0, Rs("opbORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("opbORAS")), 0, Rs("opbORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPKGS")), 0, Rs("OPKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RecKGS")), 0, Rs("RecKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPBORAS")), 0, Rs("OPBORAS")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("opboras")), 0, Rs("opboras")) + IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPKGS")), 0, Rs("OPKGS")) + IIf(IsNull(Rs("recKGS")), 0, Rs("recKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBALES")), 0, Rs("ISSBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBORAS")), 0, Rs("ISSBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBALES")), 0, Rs("ISSBALES")) + IIf(IsNull(Rs("ISSBORAS")), 0, Rs("ISSBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("TranBal")), 0, Rs("TranBal")) + IIf(IsNull(Rs("TrabBoras")), 0, Rs("TrabBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("TranBal")), 0, Rs("TranBal")) + IIf(IsNull(Rs("TrabBoras")), 0, Rs("TrabBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("transkgs")), 0, Rs("transkgs")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("REJBALES")), 0, Rs("REJBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("REJKGS")), 0, Rs("REJKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBal")), 0, Rs("salBal")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBoras")), 0, Rs("salBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBal")), 0, Rs("salBal")) & IIf(IsNull(Rs("salBoras")), 0, Rs("salBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("Salkgs")), 0, Rs("Salkgs")) & ",0," & Adjustment & ",'-',"
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBALES")), 0, Rs("CLOBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBoras")), 0, Rs("CLOBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBALES")), 0, Rs("CLOBALES")) + IIf(IsNull(Rs("CLOBoras")), 0, Rs("CLOBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOKGS")), 0, Rs("CLOKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("isskgs")), 0, Rs("isskgs")) & ")"
                    
                    DB.Execute sQry
                 intervalMinutes = -1
                    Rs.MoveNext
                  Loop
    
                    MsgBox dtCurrDate
                    
                End If
        Next
         
'        Dim temp6 As String
'        MON = MonthName(MONTH(month_value1))
'        temp6 = Format(month_value1, "YY")
'
'        Dim strType As String
'        Set RS2 = New Recordset
'        RS2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,issbale as issbale,issboarh as issborah,isstot as isstotal,isskgs as isskgs,isstran,isstrantot,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing,REJBALE AS REJBALES,rejkg as rejectedkgs,ADJBALE AS ADJBALES,adjkg as adjustedkgs,adjtype,salbale as salbale,salborah as salborah,saltot as saltotal,saltotkg as salkgs from formiv  order by date1 ", db, adOpenStatic
'        RS2.MoveFirst
'
'        For i = 1 To RS2.RecordCount
'            cnt = cnt + 1
'          stot1 = stot1 + RS2("openbale")
'          stot2 = stot2 + RS2("recpbale")
'          stot3 = stot3 + RS2("oprebale")
'          stot4 = stot4 + RS2("issbale")
'          stot5 = stot5 + RS2("closbale")
'          stot6 = stot6 + RS2("rectotal")
'          stot7 = stot7 + RS2("isstran")
'          stot8 = stot8 + RS2("REJBALES")
'          stot9 = stot9 + RS2("ADJBALES")
'          stot10 = stot10 + RS2("OPENBOARH")
'          stot11 = stot11 + RS2("recpborah")
'          stot12 = stot12 + RS2("issborah")
'          stot13 = stot13 + RS2!salbale
'          stot14 = stot14 + RS2!salborah
'          stot15 = stot15 + RS2!salkgs
'          RS2.MoveNext
'        Next
'
'        SqlStr = ""
'        SqlStr = " SELECT CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
'        SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
'        SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
'        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS,"
'        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBAL,0)) + SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
'        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBOR,0)) + SUM(ISNULL(A.JWBOR,0)) AS ISSBORAS,"
'        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODKGS,0)) + SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
'        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.TRANSBAL,0)) as TranBal, SUM(ISNULL(A.TRANSBOR,0)) as TrabBoras, SUM(ISNULL(A.TRANSKGS,0)) as TransKgs, "
'        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.SALESBAL,0)) as SalBal, SUM(ISNULL(A.SALESBOR,0)) as SalBoras, SUM(ISNULL(A.SALESKGS,0)) as SalKgs, "
'        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) as REJKGS,"
'        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
'        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END as CLOBALES,"
'        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
'        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END as CLOBORAS,"
'        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
'        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END as CLOKGS "
'        SqlStr = SqlStr + Chr(13) + " FROM ("
'        SqlStr = SqlStr + Chr(13) + gStockStatement(CDate(month_value1), CDate(month_value2))
'        SqlStr = SqlStr + Chr(13) + "  ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND b.DIVCODE='" & Divcode & "'"
'
'
'        If Trim(Category) <> "ALL" Then
'            If XType <> "ALL" Then
'                If XType = "A" Then
'                    SqlStr = SqlStr & Chr(13) + "  and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
'                Else
'                    SqlStr = SqlStr & Chr(13) + "  and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
'                End If
'            Else
'                    SqlStr = SqlStr & Chr(13) + "  and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(Category) & "'"
'            End If
'        Else
'            If XType <> "ALL" Then
'                If XType = "A" Then
'                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "'"
'                Else
'                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "'"
'                End If
'            Else
'                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
'            End If
'        End If
'
'        Set RecRs = New Recordset
'        db.CommandTimeout = 1200
'        RecRs.Open SqlStr, db, adOpenDynamic, adLockReadOnly
'
'        If RecRs.EOF = False Then
'            stot1 = RecRs("opbales")
'            stot2 = RecRs("RECBALES")
'            stot3 = RecRs("RECBALES") + RecRs("opbales")
'            stot4 = RecRs("ISSBALES")
'            stot5 = RecRs("clobaleS")
''            stot6 = RecRs("rectotal")
'            stot7 = RecRs("TRANBAL")
'            stot8 = RecRs("REJBALES")
'            stot9 = 0
'            stot10 = RecRs("OPBORAS")
'            stot11 = RecRs("RECBORAS")
'            stot12 = RecRs("ISSBORAS")
'            stot13 = RecRs!salbal
'            stot14 = RecRs!salboraS
'            stot15 = RecRs!salkgs
'        End If
'
'
'        Set rs3 = New Recordset
'        TOkg = OPENKGS + Receiptkg
'        TOTBALES = stot3
'        totborahs = stot10 + stot11
'
'
'        stot10 = TOkg - (Consumption + Transfer + rejection + stot15) + (Adjustment)
'        stot11 = TOTBALES - (stot4) - (stot13 + stot7 + stot8) + (stot9)
'        stot12 = totborahs - stot12 - stot14
        
        Exit Sub

        Dim ClsFormiv As New clsCrystal
        Set ClsFormiv.cryRept = CryFormIV
        ClsFormiv.CrystalPrint
        crr.Reset
        crr.DiscardSavedData = True
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        Dim Str As String
        
'        crr.Formulas(0) = "divname ='" & Trim(DIVNAME) & "'"
'        crr.Formulas(1) = "catname ='" & cat & "'"
'        crr.Formulas(2) = "opbale ='" & Padl(INF(stot1, 0), 16, " ") & "'"
'        crr.Formulas(3) = "opkgs ='" & Padl(INF(RecRs("OPKGS"), 3), 16, " ") & "'"
'        crr.Formulas(4) = "Recbale ='" & Padl(INF(stot2, 0), 16, " ") & "'"
'        crr.Formulas(5) = "RecKgs ='" & Padl(INF(RecRs("RECKGS"), 3), 16, " ") & "'"
'        crr.Formulas(6) = "Consbale ='" & Padl(INF(stot4, 0), 16, " ") & "'"
'        crr.Formulas(7) = "ConsKgs ='" & Padl(INF(RecRs("ISSKGS"), 3), 16, " ") & "'"
'        crr.Formulas(8) = "TOTBALE ='" & Padl(INF(TOTBALES, 0), 16, " ") & "'"
'        crr.Formulas(9) = "TOTKGS ='" & Padl(INF(RecRs("OPKGS") + RecRs("RECKGS"), 3), 16, " ") & "'"
'        crr.Formulas(10) = "TRFBALE ='" & Padl(INF(stot7, 0), 16, " ") & "'"
'        crr.Formulas(11) = "TRFKGS ='" & Padl(INF(RecRs("TRANSKGS"), 3), 16, " ") & "'"
'        crr.Formulas(12) = "OTHBALE ='" & Padl(INF(stot13, 0), 16, " ") & "'"
'        crr.Formulas(13) = "OTHKGS ='" & Padl(INF(RecRs("SALKGS"), 3), 16, " ") & "'"
'        crr.Formulas(14) = "REJBALE ='" & Padl(INF(stot8, 0), 16, " ") & "'"
'        crr.Formulas(15) = "REJKGS ='" & Padl(INF(RecRs("REJKGS"), 3), 16, " ") & "'"
'        crr.Formulas(16) = "ADJBALE ='" & Padl(INF(stot9, 0), 16, " ") & "'"
'        crr.Formulas(17) = "ADJKGS ='" & Padl(INF(TotalAdjust, 3), 16, " ") & "'"
'        crr.Formulas(18) = "CLBALE ='" & Padl(INF(stot11, 0), 16, " ") & "'"
'        crr.Formulas(19) = "CLKGS ='" & Padl(INF(RecRs("clokgs"), 3), 16, " ") & "'"
'        crr.ParameterFields(0) = "@date1;" & Format(DTPicker3.value, "yyyy-MM-dd")
'        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
        Screen.MousePointer = 0

intervalMinutes = -1
Exit Sub
mdlform3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mdlform3 of Form repform", vbInformation, head

Screen.MousePointer = 0


End Sub

Private Sub cmdExit_Click()
intervalMinutes = -1
Unload Me
End Sub

Private Sub Command1_Click()
     
    If Option4.value = True Then
     intervalMinutes = -1
        tmpFile = "Varietywise stock statement"
        tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
        
        'Create the Excel Application Object.
        '11.05.15
        Set Myxl = New Excel.Application
       ' Set Myxl = New ET.Application
        
        'Create new Excel Workbook
        Set XLBook = Myxl.Workbooks.ADD
        Set XLSheet = XLBook.Worksheets(1)
        Myxl.Worksheets(1).Name = "Varietywise"
        intervalMinutes = -1
        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" And Check6.value = 1 Then
'            ExcelConvertvariety_Pallava
            exceldatewsievariety
        Else
            ExcelConvertvariety
        End If
        intervalMinutes = -1
     ElseIf Option3.value = True Then
         intervalMinutes = -1
        tmpFile = "Datewise Variety stock statement"
        tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
        
        'Create the Excel Application Object.
        '11.05.15
        Set Myxl = New Excel.Application
       ' Set Myxl = New ET.Application
        
        'Create new Excel Workbook
        Set XLBook = Myxl.Workbooks.ADD
        Set XLSheet = XLBook.Worksheets(1)
        Myxl.Worksheets(1).Name = "DateiwseVariety"
        intervalMinutes = -1
        exceldatewsievariety
        intervalMinutes = -1
     Else
        MsgBox " Please Select Any one option..", vbInformation, head
     End If

End Sub

Private Sub Form_Activate()
      Set temprs = New Recordset
      temprs.Open "select DISTINCT a.varcode,b.varname  from rm_lot a inner join rm_var b on a.varcode=b.varcode where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' order by b.varname ", DB, adOpenForwardOnly, adLockReadOnly
      
    
      List_Varcode.ListItems.Clear
      If temprs.RecordCount > 0 Then
          Do While Not temprs.EOF
              Set l1 = List_Varcode.ListItems.ADD(, , temprs!VarName)
              List_Varcode.ListItems(List_Varcode.ListItems.Count).ListSubItems.ADD , , temprs!Varcode
              temprs.MoveNext
          Loop
      End If
      temprs.Close
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
intervalMinutes = -1
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" + connectstring

    Select Case Rptname
    
        Case RptSupRank

           Option1.Visible = False
           Option2.Visible = False
           
            LBLSUPPLIERRANKHEAD.Caption = "Quality Param Supplier Rank"
            Me.Caption = LBLSUPPLIERRANKHEAD.Caption
            DTPicker1.value = yfdate
            DTPicker2.value = pdate
            FraSuppRank.Visible = True
            loadBottomframe FraSuppRank
            
        Case RptStocktype
        
           Option1.Visible = False
           Option2.Visible = False
            Option3.Visible = False
           Option4.Visible = False
            Option3.Top = 2700
            Option4.Top = 2700
            
            If UCase(Trim(CustID)) = "PALLAVA" Then
                Check6.Visible = True
                Check6.Left = Check6.Left + 4700
            End If
            
           L_FraHead.Caption = "Stock Statement"
           Me.Caption = L_FraHead.Caption
           Dt_From.value = mfdate
           Dt_To.value = pdate
           FraVarStocktype.Visible = True
           loadBottomframe FraVarStocktype
           Call CmbLoadData("RM_CAT", "CATCD", "CATNAME", "From Category", "To Category", L_FromVar, L_ToVar, Adodc1, cmb_FromVariety, cmb_Tovariety)
           CmdCrystal.Left = 1230
           CmdCrystal.Caption = "Crystal"
           Command1.Visible = True
           Command1.Left = CmdCrystal.Left - 1100
'            Frame1.Visible = True
'            Frame1.Left = Frame1.Left + 4500
        Case RptStock_cust
           L_FraHead.Caption = "Stock Statement"
           Me.Caption = L_FraHead.Caption
           Dt_From.value = mfdate
           Dt_To.value = pdate
           FraVarStocktype.Visible = True
           loadBottomframe FraVarStocktype
           Option1.Visible = True
           Option2.Visible = True

           L_FromVar.Visible = False
           L_ToVar.Visible = False
           cmb_FromVariety.Visible = False
           cmb_Tovariety.Visible = False

        Case RptStock_cust1, RptSustainableRpt

           Option1.Visible = False
           Option2.Visible = False
            Check1.Visible = True
           If Rptname = RptStock_cust1 Then
            L_FraHead.Caption = "Stock Statement"
           Else
            L_FraHead.Caption = "SUSTAINABLE COTTON REPORT"
            Check1.Visible = False
           End If
           Me.Caption = L_FraHead.Caption
           Dt_From.value = mfdate
           Dt_To.value = pdate
           FraVarStocktype.Visible = True
           loadBottomframe FraVarStocktype

           If Rptname = RptStock_cust1 Then
                Call CmbLoadData("RM_CAT", "CATCD", "CATNAME", "From Category", "To Category", L_FromVar, L_ToVar, Adodc1, cmb_FromVariety, cmb_Tovariety)
           Else
                Call CmbLoadData("RM_SustainRMType", "code", "Description", "From Category", "To Category", L_FromVar, L_ToVar, Adodc1, cmb_FromVariety, cmb_Tovariety)
                Dt_From.value = yfdate
                Dt_To.value = pdate
           End If
            L_FromVar.Caption = "Category"

            L_ToVar.Visible = False
            cmb_Tovariety.Visible = False
'
'           Set rsa1 = New Recordset
'           rsa1.Open "select  issue_code + '-'+ issue_desc as type from rm_issuetype union select DISTINCT 'A -ALL' AS TYPE FROM RM_ISSUETYPE", DB, adOpenStatic, adLockBatchOptimistic
' '               Do While Not rsa1.EOF
''                    cmb_Tovariety.Text = rsa1(0)
''                    rsa1.MoveNext
'                    Set cmb_Tovariety.RowSource = rsa1
'    Set cmb_Tovariety.RowSource = rsa1
'    cmb_Tovariety.ListField = "type"


'                If Not rsa1.BOF Then
'
'                    rsa1.MoveFirst
'                    cmb_Tovariety.Text = rsa1(0)
'
'                End If


 '               Loop

        Case RptStock_cust2

           Option1.Visible = False
           Option2.Visible = False

           L_FraHead.Caption = "Stock Statement"
           Me.Caption = L_FraHead.Caption
           Dt_From.value = mfdate
           Dt_To.value = pdate
           FraVarStocktype.Visible = True
           loadBottomframe FraVarStocktype
           'Call CmbLoadData("RM_VAR", "VARCODE", "VARNAME", "From Variety", "To Variety", L_FromVar, L_ToVar, Adodc1, cmb_FromVariety, cmb_Tovariety)
              ' dt.ConnectionString = connectstring
               Set Rs = New Recordset
            '  "select distinct a.varcode from rm_var a inner join rm_lot b on a.varcode=b.varcode  where  b.LOTYEAR ='" & Format(yfdate, "yyyy") & "' and b.divcode='" & Divcode & "'  order by a.varcode", DB, adOpenStatic

            Rs.Open "select Distinct VARNAME+' --- '+ a.varcode  FLD,a.varcode from rm_var a inner join rm_lot b on a.varcode=b.varcode  where  b.LOTYEAR ='" & Format(yfdate, "yyyy") & "' and b.divcode='" & Divcode & "'  order by 2 ", DB, adOpenStatic
            'dt.Refresh
            L_FromVar.Caption = "From Variety"
            L_ToVar.Caption = "To Variety"
            WindowState = 2
            Set cmb_FromVariety.RowSource = Rs
            Set cmb_Tovariety.RowSource = Rs
            cmb_FromVariety.ListField = "FLD"
            cmb_Tovariety.ListField = "FLD"
            If Not Rs.BOF Then
                Rs.MoveFirst
                cmb_FromVariety.Text = Rs(0)
                Rs.MoveLast
                cmb_Tovariety.Text = Rs(0)
            End If



           L_FromVar.Caption = "Variety"
           Check1.Visible = True
           L_ToVar.Visible = False
           cmb_Tovariety.Visible = False
            If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Then
                List_Varcode.Visible = True
                Check5.Visible = True
                Label5.Visible = True
                L_FromVar.Visible = False
                cmb_FromVariety.Visible = False
                L_ToVar.Visible = False
                cmb_Tovariety.Visible = False
                Check1.Visible = False
                Command1.Visible = True
                Command1.Left = Command1.Left - 500
            End If

    
    End Select
    intervalMinutes = -1
End Sub

Private Sub loadBottomframe(obj As Object)
    FraPrint.Move obj.Left, obj.Top + obj.Height + 100, obj.Width, FraPrint.Height
    CmdCrystal.Move (FraPrint.Width - CmdCrystal.Width - CmdExit.Width - 100) / 2, CmdCrystal.Top, CmdCrystal.Width, CmdCrystal.Height
    CmdExit.Move CmdCrystal.Width + CmdCrystal.Left + 100, CmdExit.Top, CmdExit.Width, CmdExit.Height

intervalMinutes = -1
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub
'
'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

Private Sub Form_Resize()
Select Case Rptname
Case RptSuppRank
    FraSuppRank.Move (FrmPurchaseRegister.Width - FraSuppRank.Width - 500) / 2, (FrmPurchaseRegister.Height - FraSuppRank.Height - FraPrint.Height) / 2 - 1000, FraSuppRank.Width, FraSuppRank.Height
    loadBottomframe FraSuppRank
Case RptStocktype
    FraVarStocktype.Move (FrmPurchaseRegister.Width - FraSuppRank.Width - 500) / 2, (FrmPurchaseRegister.Height - FraSuppRank.Height - FraPrint.Height) / 2 - 1000, FraVarStocktype.Width, FraVarStocktype.Height
    loadBottomframe FraVarStocktype
     CmdCrystal.Left = 2500
     CmdExit.Left = 4000
     Command1.Left = 1000
End Select
End Sub

Public Sub mdlform3_CAT(month_value1 As String, month_value2 As String, Category As String, XType As String)
        intervalMinutes = -1
        Dim Adjustment  As Double
        Dim bolLotType As Boolean
        Dim sCondition As String
        pagein = 0
        Adjustment = 0
        cont = 0
        f = FreeFile
        cnt = 0
        too = 0
        adjtot = 0
        Adjustment1 = 0
        Adjustm = 0
        monthmm = 0
        
        If XType = "ALL" Then bolTYPEAll = True Else bolTYPEAll = False
        If XType = "A" Then bolLotType = True Else bolLotType = False
        If bolLotType = True Then sCondition = "Lottype ='" & XType & "'" Else sCondition = "transferType ='" & XType & "'"
        
        Set rsa = New Recordset
        rsa.Open "select catname from rm_cat where catcd='" & Category & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            cat = rsa(0)
        Else
            cat = "ALL"
        End If
        
        date1 = Format(month_value1, "yyyy-mm-dd")
        date2 = Format(month_value2, "yyyy-mm-dd")
        On Error Resume Next

        DB.Execute "drop table formiv_CUST"
        DB.Execute "Create table Formiv_CUST(date1 datetime,Code varchar(10),description VARCHAR(35),opbales numeric(8),opbORAS numeric(8), oPKGS numeric(15,3), OPVALUE numeric(18,2),RECBALES numeric(8), RECBORAS numeric(8), RECKGS numeric(15,3), RECVALUE numeric(18,2), JOBRECBALES numeric(8), JOBRECBOR numeric(8), JOBRECKGS numeric(15,3), JOBRECVALUE numeric(18,2), TRRECBALES numeric(8), TRRECBORAS numeric(8), TRRECKGS numeric(15,3), TRRECVALUE numeric(18,2), ISSRETBAL numeric(8), ISSRETBOR numeric(8), ISSRETKGS numeric(15,3), ISSRETVAL numeric(18,2), ISSBALES numeric(8), ISSBORAS numeric(8), issKgs numeric(15,3), ISSVALUE numeric(18,2), SALESBAL numeric(8), SALESBOR numeric(8), SALESKGS numeric(15,3), SALESVALUE numeric(18,2), JWISSBAL numeric(8), JWISSBOR numeric(8), JWISSKGS numeric(15,3), JWISSVAL numeric(18,2), TRANSBAL numeric(8), TRANSBOR numeric(8), TRANSKGS numeric(15,3), TRANSVALUE numeric(18,2), REJBALES numeric(8), rejkgs numeric(15,3), " & _
                   " REJVALUE numeric(18,2),clobales numeric(8), CLOBORAS numeric(8), clokgs numeric(15,3), CLOSEVALUE numeric(18,2))"


        If Check1.value = 1 Then
                 Set rsCat = New Recordset
                 rsCat.Open "select distinct catcd from rm_cat order by catcd", DB, adOpenStatic
                 If Not rsCat.EOF Then
                    rsCat.MoveFirst
                    
                     Do While Not rsCat.EOF
                        For dtCurrDate = CDate(month_value1) To CDate(month_value2)
                            DB.Execute "CRY_STKSTMNTTYPEWISE_LEDG1 '" & Divcode & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & Trim(rsCat("catcd")) & "','" & Trim(rsCat("catcd")) & "','C'"
                        Next
                        rsCat.MoveNext
                    Loop
                 End If
        
        Else
                    For dtCurrDate = CDate(month_value1) To CDate(month_value2)
                        DB.Execute "CRY_STKSTMNTTYPEWISE_LEDG1 '" & Divcode & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & Trim(Category) & "','" & Trim(Category) & "','C'"
                    Next
        End If
        
        
        intervalMinutes = -1
        Dim ClsStockCat2 As New clsCrystal
        Set ClsStockCat2.cryRept = CryFormIV_CATNEW 'Cry_StockStamentTrantypewise
        ClsStockCat2.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.Formulas(0) = "DivName='" & divname & "'"
        CrystalReport1.Formulas(1) = "UnitName='" & PrUnitName & "'"
        CrystalReport1.ReportTitle = "Stock Statement From " & Format(Dt_From.value, "dd/MM/yyyy") & " To " & Format(Dt_To.value, "dd/MM/yyyy")
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        CrystalReport1.Action = 2
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0

intervalMinutes = -1

Exit Sub
mdlform3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mdlform3 of Form repform", vbInformation, head

Screen.MousePointer = 0


End Sub

Public Sub mdlform3_VAR(month_value1 As String, month_value2 As String, Category As String, XType As String)
        intervalMinutes = -1
        Dim Adjustment  As Double
        Dim bolLotType As Boolean
        Dim sCondition As String
        pagein = 0
        Adjustment = 0
        cont = 0
        f = FreeFile
        cnt = 0
        too = 0
        adjtot = 0
        Adjustment1 = 0
        Adjustm = 0
        monthmm = 0
        
        If XType = "ALL" Then bolTYPEAll = True Else bolTYPEAll = False
        If XType = "A" Then bolLotType = True Else bolLotType = False
        If bolLotType = True Then sCondition = "Lottype ='" & XType & "'" Else sCondition = "transferType ='" & XType & "'"
        
        L_Var = ""
            For I = 1 To List_Varcode.ListItems.Count
        
                If List_Varcode.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(List_Varcode.ListItems(I).SubItems(1))
                    If L_Var <> "" Then
                        L_Var = L_Var + "," + Trim(sRecCount)
                    Else
                        L_Var = Trim(sRecCount)
                    End If
                End If
            Next
            
        
        Set rsa = New Recordset
        rsa.Open "select catname from rm_cat where catcd='" & Category & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            cat = rsa(0)
        Else
            cat = "ALL"
        End If
        
        date1 = Format(month_value1, "yyyy-mm-dd")
        date2 = Format(month_value2, "yyyy-mm-dd")
        On Error Resume Next
''        db.Execute "drop table formiv_CUST"
        ''db.Execute "Create table Formiv_CUST(Code varchar(10),description VARCHAR(35),date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstran numeric(16),isstrantot numeric(15,3),isstotkg numeric(15,3),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3),rejbale numeric(12),REJKG NUMERIC(15,3),ADJBALE NUMERIC(15),adjkg numeric(15,3),adjtype char(1), salbale numeric(10),salborah numeric(10), saltot numeric(12), saltotkg numeric(15,3), isskgs numeric(20,3))"

        DB.Execute "drop table formiv_CUST"
        DB.Execute "Create table Formiv_CUST(date1 datetime,Code varchar(10),description VARCHAR(35),opbales numeric(8),opbORAS numeric(8), oPKGS numeric(15,3), OPVALUE numeric(18,2),RECBALES numeric(8), RECBORAS numeric(8), RECKGS numeric(15,3), RECVALUE numeric(18,2), JOBRECBALES numeric(8), JOBRECBOR numeric(8), JOBRECKGS numeric(15,3), JOBRECVALUE numeric(18,2), TRRECBALES numeric(8), TRRECBORAS numeric(8), TRRECKGS numeric(15,3), TRRECVALUE numeric(18,2), ISSRETBAL numeric(8), ISSRETBOR numeric(8), ISSRETKGS numeric(15,3), ISSRETVAL numeric(18,2), ISSBALES numeric(8), ISSBORAS numeric(8), issKgs numeric(15,3), ISSVALUE numeric(18,2), SALESBAL numeric(8), SALESBOR numeric(8), SALESKGS numeric(15,3), SALESVALUE numeric(18,2), JWISSBAL numeric(8), JWISSBOR numeric(8), JWISSKGS numeric(15,3), JWISSVAL numeric(18,2), TRANSBAL numeric(8), TRANSBOR numeric(8), TRANSKGS numeric(15,3), TRANSVALUE numeric(18,2), REJBALES numeric(8), rejkgs numeric(15,3), " & _
                   " REJVALUE numeric(18,2),clobales numeric(8), CLOBORAS numeric(8), clokgs numeric(15,3), CLOSEVALUE numeric(18,2))"


            If Check1.value = 1 Then
                 Set rsCat = New Recordset
                 rsCat.Open "select distinct  min(a.varcode) minvar ,max(a.varcode) maxvar  from rm_var a inner join rm_lot b on a.varcode=b.varcode  where  b.LOTYEAR ='" & Format(yfdate, "yyyy") & "' and b.divcode='" & Divcode & "'  ", DB, adOpenStatic
                 
                 If Not rsCat.EOF Then
                    rsCat.MoveFirst
                     Do While Not rsCat.EOF
                        For dtCurrDate = CDate(month_value1) To CDate(month_value2)
                            DB.Execute "CRY_STKSTMNTTYPEWISE_LEDG1 '" & Divcode & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & Trim(rsCat("minvar")) & "','" & Trim(rsCat("maxvar")) & "','V'"
                        Next
                        rsCat.MoveNext
                    Loop
                 End If
            Else
            '
                For dtCurrDate = CDate(month_value1) To CDate(month_value2)
                    If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Then
                        DB.Execute "CRY_STKSTMNTTYPEWISE_LEDG1 '" & Divcode & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & Trim(L_Var) & "','" & Trim(XType) & "','V'"
                    Else
                        DB.Execute "CRY_STKSTMNTTYPEWISE_LEDG1 '" & Divcode & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & Trim(XType) & "','" & Trim(XType) & "','V'"
                    End If
                Next
            End If
            


        Dim ClsStockCat2 As New clsCrystal
        Set ClsStockCat2.cryRept = CryFormIV_VARNEW 'Cry_StockStamentTrantypewise
        ClsStockCat2.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'
        CrystalReport1.Formulas(0) = "DivName='" & divname & "'"
        CrystalReport1.Formulas(2) = "UnitName='" & PrUnitName & "'"
        CrystalReport1.ReportTitle = "Stock Statement From " & Format(Dt_From.value, "dd/MM/yyyy") & " To " & Format(Dt_To.value, "dd/MM/yyyy")
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        CrystalReport1.Action = 2
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0

        
        intervalMinutes = -1


Exit Sub
mdlform3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mdlform3 of Form repform", vbInformation, head

Screen.MousePointer = 0

End Sub





Private Sub PUTDATADATE2()
intervalMinutes = -1
On Error GoTo BUTTON_Click_Error
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""
'If Val(Myxl.Application.Version) >= 8 Then
     '   Set osheet = Myxl.ActiveSheet
    'Else
      '  Set osheet = Myxl
    'End If
     'Set osheet = Myxl.ActiveSheet
 tmpFile = "SUSTABABLE REPORT DETAILS"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
If Check1.value Then
Set oExcel = CreateObject("ket.Application")
Else '
Set oExcel = CreateObject("Excel.Application")

End If
Set oBook = oExcel.Workbooks.ADD
Set oSheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set oSheet = oBook.Worksheets(1)
   oExcel.Visible = True
    
        Dim fd As String
        Dim td As String

        fd = Format(Dt_From.value, "yyyy-mm-dd")
        td = Format(Dt_To.value, "yyyy-mm-dd")
        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select divname ,unit_name from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        oSheet.Cells(1, 5).value = Rs(0) + " " + "PERIOD " + stryear
        oSheet.Range("A1", "U1").MergeCells = True
         oSheet.Range("A1", "U1").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        oSheet.Cells(2, 5).value = UCase(Rs(1))
        oSheet.Range("A2", "U2").MergeCells = True
        oSheet.Range("A2", "U2").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A2").Font
        .Bold = True
        .Size = 10
        .Color = vbBlue
        End With
           FCat = Trim(Mid(cmb_FromVariety.Text, InStr(3, cmb_FromVariety.Text, "---") + 3, Len(cmb_FromVariety.Text)))
         Dim cottontype As String
         cottontype = ""
        Set Rs = New Recordset
        Rs.Open "select  description From RM_SustainRMType where code='" & FCat & "'", DB
        If Not Rs.EOF Then
        cottontype = Rs(0)
        End If
        oSheet.Name = cottontype
      
        oSheet.Cells(3, 5).value = "COTTON TYPE : " + cottontype + "    SUSTAINABLE COTTON REPORT (COTTON REGISTER, YARN REGISTER AND RAW COTTON , COTTON WASTE REGISTER)   "
        oSheet.Range("A3", "U3").HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A3", "U3").MergeCells = True
        With oSheet.Range("A3", "U3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        intervalMinutes = -1
              
        oSheet.Cells(5, 5).value = "COTTON REGISTER   "
        oSheet.Range("A5", "I5").HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A5", "I5").MergeCells = True
        With oSheet.Range("A5", "I5").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        oSheet.Cells(5, 10).value = " YARN REGISTER "
        oSheet.Range("J5", "Q4").HorizontalAlignment = Excel.xlCenter
        oSheet.Range("J5", "Q5").MergeCells = True
        With oSheet.Range("J5", "Q5").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        oSheet.Cells(5, 18).value = " RAW COTTON & COTTON WASTER REGISTER "
        oSheet.Range("R5", "U5").HorizontalAlignment = Excel.xlCenter
        oSheet.Range("R5", "U5").MergeCells = True
        With oSheet.Range("R5", "U5").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
    
   ' DB.Execute "Exec KSP_LoomPlan '" & Trim(divcode) & "','" & Format(fd, "YYYY-MM-DD") & "','" & Format(td, "YYYY-MM-DD") & "'"
  
  Dim exorder, domestic As String
  xorder = ""
'        Set rst = New Recordset
'        If (UCase(GSTRDBNAME) = "BANNARI") And (Divcode = "02" Or Divcode = "03") Then
'            rst.Open "select distinct cust_code from VW_ChequeDetails where  divcode in('02','03') and docdt between '" & Format(FD, "yyyy-mm-dd") & "' and  '" & Format(TD, "yyyy-mm-dd") & "' and cust_code in (select slcode From  slcodeTemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIP & "')  and (ChequeNo in (select ChequeNo From   Chequetemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIP & "')  ) order by cust_code", DB, adOpenStatic 'and chequeDate in (select ChequeDt From   Chequetemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIP & "')
'        Else
'            rst.Open "select distinct cust_code from VW_ChequeDetails where  divcode='" & Trim(Divcode) & "' and docdt between '" & Format(FD, "yyyy-mm-dd") & "' and  '" & Format(TD, "yyyy-mm-dd") & "' and cust_code in (select slcode From  slcodeTemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIP & "')  and (ChequeNo in (select ChequeNo From   Chequetemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIP & "') ) order by cust_code ", DB, adOpenStatic  ' and chequeDate in (select ChequeDt From   Chequetemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIP & "')
'        End If

intervalMinutes = -1
           
                    oSheet.Cells(8, 1).value = "S.No"
                    oSheet.Cells(8, 2).value = "Cotton Opening Stock (Kgs) - A"
                    oSheet.Cells(8, 3).value = "P.O Details "
                    oSheet.Cells(8, 4).value = "Mill Lot No"
                    oSheet.Cells(8, 5).value = "Supplier Invoice Details"
                    oSheet.Cells(8, 6).value = "Supplier Name"
                    oSheet.Cells(8, 7).value = "Cotton Arrival Quantity (Kgs) - B"
                    oSheet.Cells(8, 8).value = " Cotton Amount (Rs)"
                    oSheet.Cells(8, 9).value = "Total Cotton in Kgs"
                    
                    ''Yarn
                    oSheet.Cells(8, 10).value = "P.O Details"
                    oSheet.Cells(8, 11).value = "Yarn Invoice No."
                    oSheet.Cells(8, 12).value = "Yarn Invoice Date"
                    oSheet.Cells(8, 13).value = "Customer Name"
                    oSheet.Cells(8, 14).value = "Mill Lot No"
                    oSheet.Cells(8, 15).value = "Product Description"
                    oSheet.Cells(8, 16).value = "Quantity (Kgs)"
                    oSheet.Cells(8, 17).value = "Amount (Rs)(EX MILL)"
                    
                    ''Rmi Cotton & waste Register
                    oSheet.Cells(8, 18).value = "Realis %"
                    oSheet.Cells(8, 19).value = "Waste Produced In Kgs"
                    oSheet.Cells(8, 20).value = "Raw Cotton Closing Stock in Kgs"
                    oSheet.Cells(8, 21).value = "Clean Cotton Stock In Kgs"
                

                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "U" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                oSheet.Range(lr, HR).Columns.AutoFit
                oSheet.Range(lr, HR).Rows.AutoFit
                
                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                Dim GinvVal, GDuamt As Double
                GinvVal = 0: GDuamt = 0
                Dim sssno As Integer
                Dim OpStock, InvQty As Double
                OpStock = 0
                InvQty = 0
                FCat = Trim(Mid(cmb_FromVariety.Text, InStr(3, cmb_FromVariety.Text, "---") + 3, Len(cmb_FromVariety.Text)))
                
                Set Rs = New Recordset
                
                Rs.Open "select isnull(opkgs,0) opkgs from vw_OPSustainRpt where  divcode ='" & Divcode & "' and code='" & FCat & "' and docdt = (select  max(docdt) from vw_OPSustainRpt where  divcode ='" & Divcode & "' and code='" & FCat & "' and docdt <='" & Format(Dt_To.value, "yyyy/mm/dd") & "')    order by docdt", DB, adOpenStatic  '' and chequeDate in (select ChequeDt From   Chequetemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIP & "')
                 
                OpStock = 0
                If Not Rs.EOF Then
                    OpStock = Rs("opkgs")
                    oSheet.Cells(Max, 1) = sssno + 1
                    oSheet.Cells(Max, 2) = CStr(Trim(OpStock))
                End If
          '  For J = 0 To rst.RecordCount - 1
             sssno = 0
             Dim inc, singleLine As Integer
             inc = 0
             singleLine = 2
             m_ROW = oSheet.UsedRange.Rows.Count
            Dim pcode As String
            pcode = "' '"
            For j = Dt_From.value To Dt_To.value
            intervalMinutes = -1
                 pcode = "' '"
                 inc = 0
                       Set Rs = New Recordset
                
                       Rs.Open "select *from vw_SustainArrival where  divcode ='" & Divcode & "' and SusCatType='" & FCat & "' and LOTDT =  '" & Format(j, "yyyy/mm/dd") & "'   order by arrno,lotdt", DB, adOpenStatic
                
                       Dim invVal, RecPWt As Double
                        invVal = 0: Duamt = 0
                        RecPWt = 0
                       If Rs.RecordCount > 1 Then
                            singleLine = 1
                            For I = 0 To Rs.RecordCount - 1
                               ' If sssno = 0 Then
                                     oSheet.Cells(Max, 1) = sssno + 1
                                     oSheet.Cells(Max, 2) = CStr(Trim(OpStock))
'                              '  Else
'                                     osheet.Cells(Max, 1) = sssno + 1
'                                     osheet.Cells(Max, 2) = CStr(Trim(OpStock))
'                                End If
                                oSheet.Cells(Max, 3) = Trim(Rs.Fields("po"))
                                oSheet.Cells(Max, 4) = Trim(Rs.Fields("ArrNo"))
                                oSheet.Cells(Max, 5) = Trim(Rs.Fields("SupplierBill"))
                                oSheet.Cells(Max, 6) = Trim(Rs.Fields("Supplier"))
                                oSheet.Cells(Max, 7) = CStr(Trim(Rs.Fields("Netwt")))
                                oSheet.Cells(Max, 8) = CStr(Trim(Rs.Fields("pjamt")))
                                oSheet.Cells(Max, 9) = CStr(OpStock + Rs.Fields("Netwt"))
                                RecPWt = RecPWt + Rs.Fields("Netwt")
                                OpStock = OpStock + Rs.Fields("Netwt")
                                Set rs1 = New Recordset
                                rs1.Open "select *from vw_Sustaininvoice where  divcode ='" & Divcode & "' and SusCatType='" & FCat & "' and date =  '" & Format(j, "yyyy-mm-dd") & "'  and  inv not in (" & pcode & ") order by INV_NO,date", DB, adOpenStatic
                                    
                                        
                                If Not rs1.EOF Then
                                     
                                    pcode = pcode & ",'" & Trim(rs1.Fields("Inv")) & "'"
                                    oSheet.Cells(Max, 10) = Trim(rs1.Fields("PONo"))
                                    oSheet.Cells(Max, 11) = Trim(rs1.Fields("InvDetail"))
                                    oSheet.Cells(Max, 12) = Trim(rs1.Fields("invdate"))
                                    oSheet.Cells(Max, 13) = Trim(rs1.Fields("customer"))
                                    oSheet.Cells(Max, 14) = Trim(rs1.Fields("LOTCODE"))
                                    oSheet.Cells(Max, 15) = CStr(Trim(rs1.Fields("product")))
                                    oSheet.Cells(Max, 16) = CStr(Trim(rs1.Fields("qty")))
                                    oSheet.Cells(Max, 17) = CStr(rs1.Fields("Total_Amt"))
                                    oSheet.Cells(Max, 18) = CStr(Trim(rs1.Fields("RealisationPer")))
                                    oSheet.Cells(Max, 19) = CStr(Trim(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))
                                    oSheet.Cells(Max, 20) = CStr(OpStock - rs1.Fields("qty") - val(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))
                                    oSheet.Cells(Max, 21) = Round(val((OpStock - rs1.Fields("qty") - val(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))) * ((rs1.Fields("RealisationPer") / 100)), 2)
         
                                    OpStock = val(OpStock - rs1.Fields("qty") - val(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))
                                               
                                               
                                    inc = 0
                                    InvQty = InvQty + rs1.Fields("qty")
                                    rs1.MoveNext
                                       
                            Else
                                    oSheet.Cells(Max, 18) = "74"
                                    oSheet.Cells(Max, 19) = ""
                                    oSheet.Cells(Max, 20) = CStr(OpStock)
                                    oSheet.Cells(Max, 21) = Round(val((OpStock)) * ((74 / 100)), 2)
         
                            
                            End If
                                
                                
                                
                                
                                
                                Rs.MoveNext
                                sssno = sssno + 1
                                Max = Max + 1
                                inc = 1
                                
                            Next I
                    Else
                    intervalMinutes = -1
                                singleLine = 2
                                For I = 0 To Rs.RecordCount - 1
                                    If sssno = 0 Then
                                         oSheet.Cells(Max, 1) = sssno + 1
                                         oSheet.Cells(Max, 2) = CStr(Trim(OpStock))
'                                    Else
'                                         osheet.Cells(Max, 1) = sssno + 1
'                                         osheet.Cells(Max, 2) = CStr(Trim(OpStock))
                                    End If
                                    oSheet.Cells(Max, 3) = Trim(Rs.Fields("po"))
                                    oSheet.Cells(Max, 4) = Trim(Rs.Fields("ArrNo"))
                                    oSheet.Cells(Max, 5) = Trim(Rs.Fields("SupplierBill"))
                                    oSheet.Cells(Max, 6) = Trim(Rs.Fields("Supplier"))
                                    oSheet.Cells(Max, 7) = CStr(Trim(Rs.Fields("Netwt")))
                                    oSheet.Cells(Max, 8) = CStr(Trim(Rs.Fields("pjamt")))
                                    oSheet.Cells(Max, 9) = CStr(OpStock + Rs.Fields("Netwt"))
                                    RecPWt = RecPWt + Rs.Fields("Netwt")
                                    OpStock = OpStock + Rs.Fields("Netwt")
                             
                                    
                                Set rs1 = New Recordset
                                rs1.Open "select *from vw_Sustaininvoice where  divcode ='" & Divcode & "' and SusCatType='" & FCat & "' and date =  '" & Format(j, "yyyy-mm-dd") & "'  and  inv not in (" & pcode & ") order by INV_NO,date", DB, adOpenStatic
                                    
                                        
                                If rs1.EOF Then
                                    oSheet.Cells(Max, 18) = "74"
                                    oSheet.Cells(Max, 19) = ""
                                    oSheet.Cells(Max, 20) = CStr(OpStock)
                                    oSheet.Cells(Max, 21) = Round(val((OpStock)) * ((74 / 100)), 2)
                                    
                            
                                 End If
                                    
                                    
                                    Rs.MoveNext
                                    sssno = sssno + 1
                                    Max = Max + 1
                                    inc = 1
                                Next I
                   End If
                       intervalMinutes = -1
                     If singleLine = 2 Then
                     intervalMinutes = -1
'                               If Max <> 9 Then
'                              Max = Max - 1
'                              End If
                              Set rs1 = New Recordset
                              rs1.Open "select *from vw_Sustaininvoice where  divcode ='" & Divcode & "' and SusCatType='" & FCat & "' and date =  '" & Format(j, "yyyy/mm/dd") & "'  and  inv not in (" & pcode & ") order by INV_NO,date", DB, adOpenStatic

                              If Not rs1.EOF Then
                               For I = 0 To rs1.RecordCount - 1
                                   m_ROW = oSheet.UsedRange.Rows.Count
                                 '  cust = Trim(rs1.Fields("Customer"))
                                   oSheet.Cells(Max, 1) = sssno + 1
                                   If inc <> 1 Then
                                    oSheet.Cells(Max, 2) = CStr(Trim(OpStock))
                                    
                                    oSheet.Cells(Max, 9) = CStr(Trim(OpStock))
                                   End If
                                   oSheet.Cells(Max, 10) = Trim(rs1.Fields("PONo"))
                                   oSheet.Cells(Max, 11) = Trim(rs1.Fields("InvDetail"))
                                   oSheet.Cells(Max, 12) = Trim(rs1.Fields("invdate"))
                                   oSheet.Cells(Max, 13) = Trim(rs1.Fields("customer"))
                                   oSheet.Cells(Max, 14) = Trim(rs1.Fields("LOTCODE"))
                                   oSheet.Cells(Max, 15) = CStr(Trim(rs1.Fields("product")))
                                   oSheet.Cells(Max, 16) = CStr(Trim(rs1.Fields("qty")))
                                   oSheet.Cells(Max, 17) = CStr(rs1.Fields("Total_Amt"))
                                   oSheet.Cells(Max, 18) = CStr(Trim(rs1.Fields("RealisationPer")))
                                   oSheet.Cells(Max, 19) = CStr(Trim(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))
                                   oSheet.Cells(Max, 20) = CStr(OpStock - rs1.Fields("qty") - val(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))
                                   oSheet.Cells(Max, 21) = Round(val((OpStock - rs1.Fields("qty") - val(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))) * ((rs1.Fields("RealisationPer") / 100)), 2)
                                   
                                   OpStock = val(OpStock - rs1.Fields("qty") - val(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))
                                   
                                   
                                   inc = 0
                                   InvQty = InvQty + rs1.Fields("qty")
                                   rs1.MoveNext
                                   sssno = sssno + 1
                                   Max = Max + 1
                               Next I
                               
                               End If
                     intervalMinutes = -1
                     
                     Else
                     
                     
                     intervalMinutes = -1
                               Set rs1 = New Recordset
                        
                               rs1.Open "select *from vw_Sustaininvoice where  divcode ='" & Divcode & "' and SusCatType='" & FCat & "' and date =  '" & Format(j, "yyyy/mm/dd") & "'  and  inv not in (" & pcode & ") order by INV_NO,date", DB, adOpenStatic
                        
                             '  Dim invVal, RecPWt As Double
                              If Not rs1.EOF Then
                               For I = 0 To rs1.RecordCount - 1
                                   m_ROW = oSheet.UsedRange.Rows.Count
                                 '  cust = Trim(rs1.Fields("Customer"))
                                   oSheet.Cells(Max, 1) = sssno + 1
                                   If inc <> 1 Then
                                    oSheet.Cells(Max, 2) = CStr(Trim(OpStock))
                                    oSheet.Cells(Max, 9) = CStr(Trim(OpStock))
                                   End If
                                   oSheet.Cells(Max, 10) = Trim(rs1.Fields("PONo"))
                                   oSheet.Cells(Max, 11) = Trim(rs1.Fields("InvDetail"))
                                    oSheet.Cells(Max, 12) = Trim(rs1.Fields("invdate"))
                                   oSheet.Cells(Max, 13) = Trim(rs1.Fields("customer"))
                                   oSheet.Cells(Max, 14) = Trim(rs1.Fields("LOTCODE"))
                                   oSheet.Cells(Max, 15) = CStr(Trim(rs1.Fields("product")))
                                   oSheet.Cells(Max, 16) = CStr(Trim(rs1.Fields("qty")))
                                   oSheet.Cells(Max, 17) = CStr(rs1.Fields("Total_Amt"))
                                   oSheet.Cells(Max, 18) = CStr(Trim(rs1.Fields("RealisationPer")))
                                   oSheet.Cells(Max, 19) = CStr(Trim(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))
                                   oSheet.Cells(Max, 20) = CStr(OpStock - rs1.Fields("qty") - val(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))
                                   oSheet.Cells(Max, 21) = Round(val((OpStock - rs1.Fields("qty") - val(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))) * ((rs1.Fields("RealisationPer") / 100)), 2)
                                   
                                   OpStock = val(OpStock - rs1.Fields("qty") - val(Format((rs1.Fields("qty") / (rs1.Fields("RealisationPer") / 100)) - rs1.Fields("qty"), "0.00")))
                                   
                                   
                                   inc = 0
                                   InvQty = InvQty + rs1.Fields("qty")
                                   rs1.MoveNext
                                   sssno = sssno + 1
                                   Max = Max + 1
                                   intervalMinutes = -1
                               Next I
                               
                               End If
                       End If
                       intervalMinutes = -1
                 '   osheet.Range(2, 10).MergeCells = True
                
                            
'                          osheet.Cells(Max, 3) = "Customer Total"
'                           osheet.Cells(Max, 8) = CStr((invVal))
'
'                           osheet.Cells(Max, 11) = CStr(Duamt)
'                            Max = Max + 1
'                                 M_ROW = osheet.UsedRange.Rows.Count
'                            lr = "A" & M_ROW
'                            HR = "U" & M_ROW
'                            With osheet.Range(lr, HR).Font
'                            .Bold = True
'                            .Size = 9
'                            .Color = vbBlue
'                        End With
                        ' rst.MoveNext
                       
                    intervalMinutes = -1
             Next j
                intervalMinutes = -1
                oSheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = oSheet.UsedRange.Rows.Count
                MR = "O" & m_ROW
'                osheet.Cells(M_ROW + 1, 3) = "Grand Total"
'                'osheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G4 :G" & m_ROW & ")"
'                osheet.Cells(M_ROW + 1, 8) = CStr(GinvVal)
'                osheet.Cells(M_ROW + 1, 11) = CStr(GDuamt)
                
                            m_ROW = oSheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW
                            HR = "U" & m_ROW
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
                
               ' osheet.Cells(m_ROW + 1, 6).Formula = "=SUM(F4:F" & m_ROW & ")"
'                osheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                osheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                osheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                osheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
                'osheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
                
                m_ROW = oSheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & m
                HR = "U" & m_ROW
                
                With oSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
               ' Myxl.Application.Visible = True
                intervalMinutes = -1
                Set oSheet = Nothing
                Set Myxl = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
'                Else
'                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
'                'CmbVtype.SetFocus
'                Exit Sub
          '  End If
  
    Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
  
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

'intervalMinutes = -1
'        tmpfile = "Agewise Consolidated stock statement"
'        tmppath1 = "d:\kalsofte\data\" & tmpfile & ".xls"
'
'        'Create the Excel Application Object.
'        '11.05.15
'        Set Myxl = New Excel.Application
'       ' Set Myxl = New ET.Application
'
'        'Create new Excel Workbook
'        Set XLBook = Myxl.Workbooks.ADD
'        Set XLSheet = XLBook.Worksheets(1)
'        Myxl.Worksheets(1).Name = "ArrivalDatewise"
'        intervalMinutes = -1
'        ExcelConvertStock
'        intervalMinutes = -1





Private Sub ExcelConvertvariety()

 Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
co = 0
CustCode = "": custname = "": ContNo = "": sortname = ""
intervalMinutes = -1
        Set XLSheet = Myxl.ActiveSheet
             FCat = Trim(Mid(cmb_FromVariety.Text, InStr(3, cmb_FromVariety.Text, "---") + 3, Len(cmb_FromVariety.Text)))
        TCat = Trim(Mid(cmb_Tovariety.Text, InStr(3, cmb_Tovariety.Text, "---") + 3, Len(cmb_Tovariety.Text)))

        Set rs1 = New Recordset
        rs1.Open "exec  CRY_varietywise_excel  '" & Divcode & "' ,'" & Format(Dt_From, "yyyy-MM-dd") & "','" & Format(Dt_To, "yyyy-MM-dd") & "','" & Format(yfdate, "yyyy-MM-dd") & "','" & Format(yldate, "yyyy-MM-dd") & "','" & Year(yfdate) & "','" & FCat & "','" & TCat & "'", DB, adOpenKeyset, adLockReadOnly

        Dim FSort As String
        Dim TSort As String

        fd = Format(Dt_From.value, "yyyy-mm-dd")
        td = Format(Dt_To, "yyyy-mm-dd")
         
        Set rsnew = New Recordset
        rsnew.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB
        
       
        XLSheet.Cells(1, 5).value = rsnew(0)
        XLSheet.Range("A1", "M1").MergeCells = True
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        XLSheet.Cells(2, 5).value = rsnew(1)
        XLSheet.Range("A2", "M2").MergeCells = True
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
     
        End With
        


        XLSheet.Cells(5, 5).value = " STOCK STATEMENT AS ON - " & Format(Dt_To.value, "DD/MM/YYYY")

        XLSheet.Range("A5", "M5").MergeCells = True
        With XLSheet.Range("A5", "M5").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
              
'DB.Execute "delete from CONSRMIDENIER_Excel"
Set rs1 = New Recordset
yfdate = fnyfdate(pdate)
yldate = fnyldate(pdate)
intervalMinutes = -1

ster = ""

    On Error Resume Next

            
                gtot1 = 0
                gtot2 = 0
                gtot3 = 0
                gtot4 = 0
                gtot5 = 0
                gtot6 = 0
                
                gtot7 = 0
                gtot8 = 0
                gtot9 = 0
                gtot10 = 0
                gtot11 = 0
                gtot12 = 0
                
                gtot13 = 0
                gtot14 = 0
                gtot15 = 0
                gtot16 = 0
                gtot17 = 0
                gtot18 = 0
                
                intervalMinutes = -1

 intervalMinutes = -1

        Set Rs = New Recordset
        Rs.Open "exec  CRY_varietywise_excel  '" & Divcode & "' ,'" & Format(Dt_From, "yyyy-MM-dd") & "','" & Format(Dt_To, "yyyy-MM-dd") & "','" & Format(yfdate, "yyyy-MM-dd") & "','" & Format(yldate, "yyyy-MM-dd") & "','" & Year(yfdate) & "','" & FCat & "','" & TCat & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.RecordCount > 0 Then
            co = 7
             XLSheet.Cells(7, 3).value = " OPENING "
               XLSheet.Range("B7", "C7").MergeCells = True
               
        XLSheet.Cells(7, 5).value = " PURCHASED QTY "
               XLSheet.Range("D7", "E7").MergeCells = True
               
            XLSheet.Cells(7, 7).value = " OTHER RECD QTY "
               XLSheet.Range("F7", "G7").MergeCells = True
               
                XLSheet.Cells(7, 9).value = " ISSUES QTY "
               XLSheet.Range("H7", "I7").MergeCells = True
               
                XLSheet.Cells(7, 10).value = "OTHER DESPATCHES QTY "
               XLSheet.Range("J7", "K7").MergeCells = True
               
                 XLSheet.Cells(7, 14).value = " CLOSING STOCK QTY"
               XLSheet.Range("l7", "N7").MergeCells = True
               
                 With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                   m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m_ROW
                HR = "S" & m_ROW
              '  Myxl.Application.Visible = True
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
            co = 8
                XLSheet.Cells(8, 1).value = " Variety "

                 XLSheet.Cells(8, 2).value = " Bales. "
                XLSheet.Cells(8, 3).value = " Kgs."
                XLSheet.Cells(8, 4).value = " Bales. "
                XLSheet.Cells(8, 5).value = " Kgs. "

                XLSheet.Cells(8, 6).value = " Bales. "
                XLSheet.Cells(8, 7).value = " Kgs. "
                
                 XLSheet.Cells(8, 8).value = " Bales. "
                XLSheet.Cells(8, 9).value = " Kgs. "
                
                XLSheet.Cells(8, 10).value = " Bales. "
                XLSheet.Cells(8, 11).value = " Kgs. "
                
                XLSheet.Cells(8, 12).value = " Bales. "
                XLSheet.Cells(8, 13).value = " Kgs. "
                XLSheet.Cells(8, 14).value = " Value. "
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m_ROW
                HR = "S" & m_ROW
         '       Myxl.Application.Visible = True
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit


                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                For I = 0 To Rs.RecordCount - 1
                intervalMinutes = -1
                m_ROW = XLSheet.UsedRange.Rows.Count

                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1

        XLSheet.Cells(Max, 1) = Trim(Rs.Fields("VARNAME"))
        XLSheet.Cells(Max, 2) = Trim(Rs.Fields("opbales"))
        XLSheet.Cells(Max, 3) = Trim(Rs.Fields("OPKGS"))
        XLSheet.Cells(Max, 4) = Trim(Rs.Fields("RECBALES"))
        XLSheet.Cells(Max, 5) = Trim(Rs.Fields("RECKGS"))
        XLSheet.Cells(Max, 6) = Trim(Rs.Fields("OTHERRECBALES"))
        XLSheet.Cells(Max, 7) = Trim(Rs.Fields("OTHERRECKGS"))
        XLSheet.Cells(Max, 8) = Trim(Rs.Fields("ISSBALES"))
        XLSheet.Cells(Max, 9) = val(Rs.Fields("ISSKGS"))
        XLSheet.Cells(Max, 10) = Trim(Rs.Fields("OTHERISSUEBALES"))
        XLSheet.Cells(Max, 11) = Trim(Rs.Fields("OTHERISSUEKGS"))
        XLSheet.Cells(Max, 12) = Trim(Rs.Fields("CLOBALES"))
        XLSheet.Cells(Max, 13) = Trim(Rs.Fields("CLOKGS"))
         XLSheet.Cells(Max, 14) = Trim(Rs.Fields("CLOSEVALUE"))
    '    XLSheet.Cells(Max, 12) = Trim(rs.Fields("k4"))
           m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
      
            
                tot1 = tot1 + val(Rs.Fields("opbales"))
                tot2 = tot2 + val(Rs.Fields("OPKGS"))
                
                 tot3 = tot3 + val(Rs.Fields("RECBALES"))
                tot4 = tot4 + val(Rs.Fields("RECKGS"))
                
                tot5 = tot5 + val(Rs.Fields("OTHERRECBALES"))
                tot6 = tot6 + val(Rs.Fields("OTHERRECKGS"))
                tot7 = tot7 + val(Rs.Fields("ISSBALES"))
                tot8 = tot8 + val(Rs.Fields("ISSKGS"))
                
                tot9 = tot9 + val(Rs.Fields("OTHERISSUEBALES"))
                tot10 = tot10 + val(Rs.Fields("OTHERISSUEKGS"))
                tot11 = tot11 + val(Rs.Fields("CLOBALES"))
                tot12 = tot12 + val(Rs.Fields("CLOKGS"))
                tot13 = tot13 + val(Rs.Fields("CLOSEVALUE"))
              
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW
            
                    
            
                
                Rs.MoveNext
                
                       With XLSheet.Range(lr, HR).Font
                .Bold = False
                .Size = 9
                .Color = vbBlack
                End With
                
'             If catname <> Trim(Rs.Fields("CATNAME")) Then

                 
                
                gtot1 = gtot1 + tot1
                gtot2 = gtot2 + tot2
                gtot3 = gtot3 + tot3
                gtot4 = gtot4 + tot4
                gtot5 = gtot5 + tot5
                gtot6 = gtot6 + tot6
                
                gtot7 = gtot7 + tot7
                gtot8 = gtot8 + tot8
                gtot9 = gtot9 + tot9
                gtot10 = gtot10 + tot10
                gtot11 = gtot11 + tot11
                gtot12 = gtot12 + tot12
                
                gtot13 = gtot13 + tot13
                gtot14 = gtot14 + tot14
                gtot15 = gtot15 + tot15
                gtot16 = gtot16 + tot16
                gtot17 = gtot17 + tot17
                gtot18 = gtot18 + tot18
                
                tot1 = 0
                tot2 = 0
                tot3 = 0
                tot4 = 0
                tot5 = 0
                tot6 = 0
                tot7 = 0
                tot8 = 0
                tot9 = 0
                tot10 = 0
                tot11 = 0
                tot12 = 0
                tot13 = 0
                tot14 = 0
                tot15 = 0
                tot16 = 0
                tot17 = 0
                tot18 = 0
                m_ROW = XLSheet.UsedRange.Rows.Count
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                lr = "A" & m_ROW
                HR = "S" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = False
                .Size = 9
                .Color = vbBlack
                End With
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
  '      End If
        
                Max = Max + 1
                
                Next I

                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
'
'                'Dim M_ROW As Integer
'
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 2
                XLSheet.Cells(m_ROW + 2, 1) = "Grand Total"
                XLSheet.Cells(m_ROW + 2, 2) = Round(gtot1, 2)
                XLSheet.Cells(m_ROW + 2, 3) = Round(gtot2, 2)
                XLSheet.Cells(m_ROW + 2, 4) = Round(gtot3, 2)
                XLSheet.Cells(m_ROW + 2, 5) = Round(gtot4, 2)
                XLSheet.Cells(m_ROW + 2, 6) = Round(gtot5, 2)
                XLSheet.Cells(m_ROW + 2, 7) = Round(gtot6, 2)
                XLSheet.Cells(m_ROW + 2, 8) = Round(gtot7, 2)
                XLSheet.Cells(m_ROW + 2, 9) = Round(gtot8, 2)
                XLSheet.Cells(m_ROW + 2, 10) = Round(gtot9, 2)
                XLSheet.Cells(m_ROW + 2, 11) = Round(gtot10, 2)
                XLSheet.Cells(m_ROW + 2, 12) = Round(gtot11, 2)
                XLSheet.Cells(m_ROW + 2, 13) = Round(gtot12, 2)
                XLSheet.Cells(m_ROW + 2, 14) = Round(gtot13, 2)
        
                 lr = "A" & m_ROW + 1
                HR = "S" & m_ROW + 1
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
'                  With XLSheet.Range("A8", ).Font
'                .Bold = True
'                .Size = 9
'                .Color = vbBlue
'                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit
                 m = XLSheet.UsedRange.Rows.Count
                 lr = "A" & m_ROW + 2
                HR = "S" & m_ROW + 2
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                 m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "S" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
 
                With XLSheet.Range("A8", "S8").Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                ''

                lr = "A" & 1
                HR = "S" & m_ROW

                With XLSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                .Font.Size = 9
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With

                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With

                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With

                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With '
                Myxl.Application.Visible = True
'
                Set XLSheet = Nothing
                Set Myxl = Nothing
                MsgBox "Stock Statement Successfully Exported", vbInformation, head
                
    Else
               MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                 Exit Sub
    End If
               
End Sub

Private Sub exceldatewsievariety()

'' Dt_From As String, Dt_To As String, Category As String, XType As String
''     intervalMinutes = -1
        Dim Adjustment  As Double
        Dim bolLotType As Boolean
        Dim sCondition As String
        pagein = 0
        Adjustment = 0
        
        cont = 0
        f = FreeFile
        cnt = 0
        too = 0
        adjtot = 0
        Adjustment1 = 0
        Adjustm = 0
        monthmm = 0

        If XType = "ALL" Then bolTYPEAll = True Else bolTYPEAll = False
        If XType = "A" Then bolLotType = True Else bolLotType = False
        If bolLotType = True Then sCondition = "Lottype ='" & XType & "'" Else sCondition = "transferType ='" & XType & "'"

        Set rsa = New Recordset
        rsa.Open "select catname from rm_cat where catcd='" & Category & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            cat = rsa(0)
        Else
            cat = "ALL"
        End If

        date1 = Format(Dt_From, "yyyy-mm-dd")
        date2 = Format(Dt_To, "yyyy-mm-dd")
        On Error Resume Next
         'If Table_Exists("Tab_DatewiseVariety") = True Then
         DB.Execute "delete from Tab_DatewiseVariety"

'              DB.Execute "drop table datevar_CUST"
'        DB.Execute "Create table datevar_CUST(lotdt datetime,Code varchar(10),varname VARCHAR(35),opbales numeric(8),opbORAS numeric(8), oPKGS numeric(15,3), OPVALUE numeric(18,2),RECBALES numeric(8), RECBORAS numeric(8), RECKGS numeric(15,3), RECVALUE numeric(18,2), JOBRECBALES numeric(8), JOBRECBOR numeric(8), JOBRECKGS numeric(15,3), JOBRECVALUE numeric(18,2), TRRECBALES numeric(8), TRRECBORAS numeric(8), TRRECKGS numeric(15,3), TRRECVALUE numeric(18,2), ISSRETBAL numeric(8), ISSRETBOR numeric(8), ISSRETKGS numeric(15,3), ISSRETVAL numeric(18,2), ISSBALES numeric(8), ISSBORAS numeric(8), issKgs numeric(15,3), ISSVALUE numeric(18,2), SALESBAL numeric(8), SALESBOR numeric(8), SALESKGS numeric(15,3), SALESVALUE numeric(18,2), JWISSBAL numeric(8), JWISSBOR numeric(8), JWISSKGS numeric(15,3), JWISSVAL numeric(18,2), TRANSBAL numeric(8), TRANSBOR numeric(8), TRANSKGS numeric(15,3), TRANSVALUE numeric(18,2), REJBALES numeric(8), rejkgs numeric(15,3), " & _
'                   " REJVALUE numeric(18,2),clobales numeric(8), CLOBORAS numeric(8), clokgs numeric(15,3), CLOSEVALUE numeric(18,2),CTRECBAL NUMERIC(15,3),CTRECKGS NUMERIC(15,3))"


       '     If Check1.value = 1 Then
                 Set rsCat = New Recordset
                 rsCat.Open "select distinct  min(a.varcode) minvar ,max(a.varcode) maxvar  from rm_var a inner join rm_lot b on a.varcode=b.varcode  where  b.LOTYEAR ='" & Format(yfdate, "yyyy") & "' and b.divcode='" & Divcode & "'  ", DB, adOpenStatic

                 If Not rsCat.EOF Then
                    rsCat.MoveFirst
                     Do While Not rsCat.EOF
                        For dtCurrDate = CDate(Dt_From) To CDate(Dt_To)
                            DB.Execute "CRY_Datewisevariety_excel '" & Divcode & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & Trim(rsCat("minvar")) & "','" & Trim(rsCat("maxvar")) & "','V'"
                        Next
                        rsCat.MoveNext
                    Loop
                 End If
'            Else
'            '
'                For dtCurrDate = CDate(Dt_From) To CDate(Dt_To)
'                    DB.Execute "CRY_datevarietywise_excel_new '" & Divcode & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & Trim(XType) & "','" & Trim(XType) & "','V'"
'                Next
'            End If


 Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
co = 0
CustCode = "": custname = "": ContNo = "": sortname = ""
intervalMinutes = -1
        Set XLSheet = Myxl.ActiveSheet
               FCat = Trim(Mid(cmb_FromVariety.Text, InStr(3, cmb_FromVariety.Text, "---") + 3, Len(cmb_FromVariety.Text)))
        TCat = Trim(Mid(cmb_Tovariety.Text, InStr(3, cmb_Tovariety.Text, "---") + 3, Len(cmb_Tovariety.Text)))
               
'               DB.Execute "delete from Tabdatevarexcel"
'
'               Set rsCat = New Recordset
'                 rsCat.Open "select distinct  min(a.varcode) minvar ,max(a.varcode) maxvar  from rm_var a inner join rm_lot b on a.varcode=b.varcode  where  b.LOTYEAR ='" & Format(yfdate, "yyyy") & "' and b.divcode='" & Divcode & "'  ", DB, adOpenStatic
'
'                 If Not rsCat.EOF Then
'                    rsCat.MoveFirst
'                     Do While Not rsCat.EOF
'                        For dtCurrDate = CDate(Dt_From) To CDate(Dt_To)
'                            DB.Execute "CRY_datevarietywise_excel_new '" & Divcode & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & Trim(rsCat("minvar")) & "','" & Trim(rsCat("maxvar")) & "','V'"
'                          '  DB.Execute "exec  CRY_datevarietywise_excel  '" & Divcode & "' ,'" & Format(dtCurrDate, "yyyy-MM-dd") & "','" & Format(dtCurrDate, "yyyy-MM-dd") & "','" & Format(yfdate, "yyyy-MM-dd") & "','" & Format(yldate, "yyyy-MM-dd") & "','" & Year(yfdate) & "','" & Trim(rsCat("minvar")) & "','" & Trim(rsCat("maxvar")) & "'"
'
'                        Next
'                        rsCat.MoveNext
'                    Loop
'                 End If

       ' Set rs1 = New Recordset
       ' rs1.Open "exec  CRY_datevarietywise_excel  '" & Divcode & "' ,'" & Format(Dt_From, "yyyy-MM-dd") & "','" & Format(Dt_To, "yyyy-MM-dd") & "','" & Format(yfdate, "yyyy-MM-dd") & "','" & Format(yldate, "yyyy-MM-dd") & "','" & Year(yfdate) & "','" & FCat & "','" & TCat & "'", DB, adOpenKeyset, adLockReadOnly

        Dim FSort As String
        Dim TSort As String

        fd = Format(Dt_From.value, "yyyy-mm-dd")
        td = Format(Dt_To, "yyyy-mm-dd")

        Set rsnew = New Recordset
        rsnew.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB


        XLSheet.Cells(1, 5).value = rsnew(0)
        XLSheet.Range("A1", "M1").MergeCells = True
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With

        XLSheet.Cells(2, 5).value = rsnew(1)
        XLSheet.Range("A2", "M2").MergeCells = True
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue

        End With



        XLSheet.Cells(5, 5).value = " STOCK STATEMENT AS ON - " & Format(Dt_From.value, "DD/MM/YYYY") & "  TO  " & Format(Dt_To.value, "DD/MM/YYYY") & ""

        XLSheet.Range("A5", "M5").MergeCells = True
        With XLSheet.Range("A5", "M5").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
              
'DB.Execute "delete from CONSRMIDENIER_Excel"

Set rs1 = New Recordset

yfdate = fnyfdate(pdate)
yldate = fnyldate(pdate)

intervalMinutes = -1

ster = ""

    On Error Resume Next

            
                gtot1 = 0
                gtot2 = 0
                gtot3 = 0
                gtot4 = 0
                gtot5 = 0
                gtot6 = 0
                
                gtot7 = 0
                gtot8 = 0
                gtot9 = 0
                gtot10 = 0
                gtot11 = 0
                gtot12 = 0
                
                gtot13 = 0
                gtot14 = 0
                gtot15 = 0
                gtot16 = 0
                gtot17 = 0
                gtot18 = 0
                
                gtot19 = 0
                gtot20 = 0
                gtot21 = 0
                gtot22 = 0
                gtot23 = 0
                gtot24 = 0
                gtot25 = 0
                gtot26 = 0
                gtot27 = 0
                gtot28 = 0
                gtot29 = 0
                intervalMinutes = -1

 intervalMinutes = -1

        Set Rs = New Recordset
       ' Rs.Open "exec  CRY_datevarietywise_excel  '" & Divcode & "' ,'" & Format(Dt_From, "yyyy-MM-dd") & "','" & Format(Dt_To, "yyyy-MM-dd") & "','" & Format(yfdate, "yyyy-MM-dd") & "','" & Format(yldate, "yyyy-MM-dd") & "','" & Year(yfdate) & "','" & FCat & "','" & TCat & "'", DB, adOpenStatic, adLockBatchOptimistic
    
        If Option4.value = True Then
            Rs.Open " select * from Tab_DatewiseVariety  ORDER BY DESCRIPTION ", DB, adOpenStatic, adLockBatchOptimistic
        Else
            Rs.Open " select * from Tab_DatewiseVariety  ORDER BY DATE1 ", DB, adOpenStatic, adLockBatchOptimistic
        End If
   
            If Rs.RecordCount > 0 Then
            co = 7
             XLSheet.Cells(7, 4).value = " OPENING "
               XLSheet.Range("C7", "D7").MergeCells = True
               
        XLSheet.Cells(7, 6).value = " PURCHASED QTY "
               XLSheet.Range("E7", "F7").MergeCells = True
               
            XLSheet.Cells(7, 8).value = " BRANCH RECD QTY "
               XLSheet.Range("G7", "H7").MergeCells = True
               
                XLSheet.Cells(7, 10).value = "CAPITIVE RECD QTY"
               XLSheet.Range("I7", "J7").MergeCells = True
               
                XLSheet.Cells(7, 12).value = "CONVERSION RECD QTY"
               XLSheet.Range("K7", "L7").MergeCells = True
               
                 XLSheet.Cells(7, 14).value = "RM ISSUE RETURN QTY"
               XLSheet.Range("M7", "N7").MergeCells = True
               
                XLSheet.Cells(7, 16).value = "KNITTING ISSUE RETURN QTY"
               XLSheet.Range("O7", "P7").MergeCells = True
               
                XLSheet.Cells(7, 18).value = "RM ISSUE QTY"
               XLSheet.Range("Q7", "R7").MergeCells = True
               
                XLSheet.Cells(7, 20).value = "KT ISSUE QTY"
               XLSheet.Range("S7", "T7").MergeCells = True
               
                XLSheet.Cells(7, 22).value = "SALES QTY"
               XLSheet.Range("U7", "V7").MergeCells = True
               
                 XLSheet.Cells(7, 24).value = "BRANCH TRANSFER QTY"
               XLSheet.Range("W7", "X7").MergeCells = True
               
            XLSheet.Cells(7, 26).value = "JOB WORK ISSUED QTY"
               XLSheet.Range("Y7", "Z7").MergeCells = True
               
                XLSheet.Cells(7, 28).value = "Rejection"
               XLSheet.Range("AA7", "AB7").MergeCells = True
               
            XLSheet.Cells(7, 30).value = "CLOSING STOCK QTY"
               XLSheet.Range("AC7", "AE7").MergeCells = True
               
                 With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                   m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m_ROW
                HR = "AE" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
            co = 8
                XLSheet.Cells(8, 1).value = " Date "
                 XLSheet.Cells(8, 2).value = " Variety "
                 
                 XLSheet.Cells(8, 3).value = " Bales. "
                XLSheet.Cells(8, 4).value = " Kgs."
                
                XLSheet.Cells(8, 5).value = " Bales. "
                XLSheet.Cells(8, 6).value = " Kgs. "

                XLSheet.Cells(8, 7).value = " Bales. "
                XLSheet.Cells(8, 8).value = " Kgs. "
                
                 XLSheet.Cells(8, 9).value = " Bales. "
                XLSheet.Cells(8, 10).value = " Kgs. "
                
                XLSheet.Cells(8, 11).value = " Bales. "
                XLSheet.Cells(8, 12).value = " Kgs. "
                
                 XLSheet.Cells(8, 13).value = " Bales. "
                XLSheet.Cells(8, 14).value = " Kgs. "

                XLSheet.Cells(8, 15).value = " Bales. "
                XLSheet.Cells(8, 16).value = " Kgs. "
                
                 XLSheet.Cells(8, 17).value = " Bales. "
                XLSheet.Cells(8, 18).value = " Kgs. "
                
                XLSheet.Cells(8, 19).value = " Bales. "
                XLSheet.Cells(8, 20).value = " Kgs. "
                
                 XLSheet.Cells(8, 21).value = " Bales. "
                XLSheet.Cells(8, 22).value = " Kgs. "
                
                 XLSheet.Cells(8, 23).value = " Bales. "
                XLSheet.Cells(8, 24).value = " Kgs. "
                
                XLSheet.Cells(8, 25).value = " Bales. "
                XLSheet.Cells(8, 26).value = " Kgs. "
                
                   XLSheet.Cells(8, 27).value = " Bales. "
                XLSheet.Cells(8, 28).value = " Kgs. "
                
                XLSheet.Cells(8, 29).value = " Bales. "
                XLSheet.Cells(8, 30).value = " Kgs. "
                XLSheet.Cells(8, 31).value = " Value. "
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m_ROW
                HR = "AE" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit


                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                For I = 0 To Rs.RecordCount - 1
                intervalMinutes = -1
                m_ROW = XLSheet.UsedRange.Rows.Count

                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
        XLSheet.Cells(Max, 1).NumberFormat = "@"
        XLSheet.Cells(Max, 1) = Format(Rs.Fields("date1"), "DD/MM/YYYY")
        XLSheet.Cells(Max, 1).NumberFormat = "DD/MM/YYYY"
        XLSheet.Cells(Max, 2) = Trim(Rs.Fields("DESCRIPTION"))
        XLSheet.Cells(Max, 3) = Trim(Rs.Fields("opbales"))
        XLSheet.Cells(Max, 4) = Trim(Rs.Fields("OPKGS"))
         XLSheet.Cells(Max, 5) = Trim(Rs.Fields("RECBALES"))
        XLSheet.Cells(Max, 6) = Trim(Rs.Fields("RECKGS"))
        
        XLSheet.Cells(Max, 7) = Trim(Rs.Fields("TRRECBALES"))
        XLSheet.Cells(Max, 8) = Trim(Rs.Fields("TRRECKGS"))
        
        XLSheet.Cells(Max, 9) = Trim(Rs.Fields("CTRECBAL"))
        XLSheet.Cells(Max, 10) = val(Rs.Fields("CTRECKGS"))
        
        XLSheet.Cells(Max, 11) = Trim(Rs.Fields("JOBRECBALES"))
        XLSheet.Cells(Max, 12) = Trim(Rs.Fields("JOBRECKGS"))
        
        XLSheet.Cells(Max, 13) = Trim(Rs.Fields("ISSRETBAL"))
        XLSheet.Cells(Max, 14) = Trim(Rs.Fields("ISSRETKGS"))
        
         XLSheet.Cells(Max, 15) = Trim(Rs.Fields("ISSRETKNITBAL"))
         XLSheet.Cells(Max, 16) = Trim(Rs.Fields("ISSRETKNITKGS"))
         
           XLSheet.Cells(Max, 17) = Trim(Rs.Fields("ISSBALES"))
         XLSheet.Cells(Max, 18) = Trim(Rs.Fields("ISSKGS"))
         
        XLSheet.Cells(Max, 19) = Trim(Rs.Fields("ISSKNITBAL"))
        XLSheet.Cells(Max, 20) = Trim(Rs.Fields("ISSKNITKGS"))
        
        XLSheet.Cells(Max, 21) = Trim(Rs.Fields("SALESBAL"))
        XLSheet.Cells(Max, 22) = Trim(Rs.Fields("SALESKGS"))
        
        XLSheet.Cells(Max, 23) = val(Rs.Fields("TRANSBAL"))
        XLSheet.Cells(Max, 24) = Trim(Rs.Fields("TRANSKGS"))
        
        XLSheet.Cells(Max, 25) = Trim(Rs.Fields("JWISSBAL"))
        XLSheet.Cells(Max, 26) = Trim(Rs.Fields("JWISSKGS"))

         XLSheet.Cells(Max, 27) = Trim(Rs.Fields("REJBALES"))
         XLSheet.Cells(Max, 28) = Trim(Rs.Fields("REJKGS"))

          XLSheet.Cells(Max, 29) = Trim(Rs.Fields("CLOBALES"))
         XLSheet.Cells(Max, 30) = Trim(Rs.Fields("CLOKGS"))
         XLSheet.Cells(Max, 31) = Trim(Rs.Fields("CLOSEVALUE"))
         
    '    XLSheet.Cells(Max, 12) = Trim(rs.Fields("k4"))
           m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
      
            
                tot1 = tot1 + val(Rs.Fields("opbales"))
                tot2 = tot2 + val(Rs.Fields("OPKGS"))
                
                 tot3 = tot3 + val(Rs.Fields("RECBALES"))
                tot4 = tot4 + val(Rs.Fields("RECKGS"))
                
                tot5 = tot5 + val(Rs.Fields("TRRECBALES"))
                tot6 = tot6 + val(Rs.Fields("TRRECKGS"))
                tot7 = tot7 + val(Rs.Fields("CTRECBAL"))
                tot8 = tot8 + val(Rs.Fields("CTRECKGS"))
                
                tot9 = tot9 + val(Rs.Fields("JOBRECBALES"))
                tot10 = tot10 + val(Rs.Fields("JOBRECKGS"))
                tot11 = tot11 + val(Rs.Fields("ISSRETBAL"))
                tot12 = tot12 + val(Rs.Fields("ISSRETKGS"))
                
                tot13 = tot13 + val(Rs.Fields("ISSRETKNITBAL"))
                tot14 = tot14 + val(Rs.Fields("ISSRETKNITKGS"))
                tot15 = tot15 + val(Rs.Fields("ISSBALES"))
                tot16 = tot16 + val(Rs.Fields("ISSKGS"))
                tot17 = tot17 + val(Rs.Fields("ISSKNITBAL"))
                tot18 = tot18 + val(Rs.Fields("ISSKNITKGS"))
                
                tot19 = tot19 + val(Rs.Fields("SALESBAL"))
                tot20 = tot20 + val(Rs.Fields("SALESKGS"))
                tot21 = tot21 + val(Rs.Fields("TRANSBAL"))
                tot22 = tot22 + val(Rs.Fields("TRANSKGS"))
                
                tot23 = tot23 + val(Rs.Fields("JWISSBAL"))
                tot24 = tot24 + val(Rs.Fields("JWISSKGS"))
                 
                 tot25 = tot25 + val(Rs.Fields("REJBALES"))
                tot26 = tot26 + val(Rs.Fields("REJKGS"))
                
                tot27 = tot27 + val(Rs.Fields("CLOBALES"))
                tot28 = tot28 + val(Rs.Fields("CLOKGS"))
                tot29 = tot29 + val(Rs.Fields("CLOSEVALUE"))
        
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW
            
                    
            
                
                Rs.MoveNext
                
                       With XLSheet.Range(lr, HR).Font
                .Bold = False
                .Size = 9
                .Color = vbBlack
                End With
                
'             If catname <> Trim(Rs.Fields("CATNAME")) Then

                 
                
                 gtot1 = gtot1 + tot1
                gtot2 = gtot2 + tot2
                gtot3 = gtot3 + tot3
                gtot4 = gtot4 + tot4
                gtot5 = gtot5 + tot5
                gtot6 = gtot6 + tot6
                
                gtot7 = gtot7 + tot7
                gtot8 = gtot8 + tot8
                gtot9 = gtot9 + tot9
                gtot10 = gtot10 + tot10
                gtot11 = gtot11 + tot11
                gtot12 = gtot12 + tot12
                
                gtot13 = gtot13 + tot13
                gtot14 = gtot14 + tot14
                gtot15 = gtot15 + tot15
                gtot16 = gtot16 + tot16
                gtot17 = gtot17 + tot17
                gtot18 = gtot18 + tot18
                
                gtot19 = gtot19 + tot19
                gtot20 = gtot20 + tot20
                gtot21 = gtot21 + tot21
                gtot22 = gtot22 + tot22
                gtot23 = gtot23 + tot23
                gtot24 = gtot24 + tot24
                gtot25 = gtot25 + tot25
                gtot26 = gtot26 + tot26
                gtot27 = gtot27 + tot27
                gtot28 = gtot28 + tot28
                gtot29 = gtot29 + tot29
                
                tot1 = 0
                tot2 = 0
                tot3 = 0
                tot4 = 0
                tot5 = 0
                tot6 = 0
                tot7 = 0
                tot8 = 0
                tot9 = 0
                tot10 = 0
                tot11 = 0
                tot12 = 0
                tot13 = 0
                tot14 = 0
                tot15 = 0
                tot16 = 0
                tot17 = 0
                tot18 = 0
                tot19 = 0
                tot20 = 0
                tot21 = 0
                tot22 = 0
                tot23 = 0
                tot24 = 0
                tot25 = 0
                tot26 = 0
                tot27 = 0
                tot28 = 0
                tot29 = 0
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                lr = "A" & m_ROW
                HR = "AE" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = False
                .Size = 9
                .Color = vbBlack
                End With
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
  '      End If
        
                Max = Max + 1
                
                Next I

   

                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
'
'                'Dim M_ROW As Integer
'
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 2
                XLSheet.Cells(m_ROW + 2, 1) = "Grand Total"
                XLSheet.Cells(m_ROW + 2, 3) = Round(gtot1, 2)
                XLSheet.Cells(m_ROW + 2, 4) = Round(gtot2, 2)
                XLSheet.Cells(m_ROW + 2, 5) = Round(gtot3, 2)
                XLSheet.Cells(m_ROW + 2, 6) = Round(gtot4, 2)
                XLSheet.Cells(m_ROW + 2, 7) = Round(gtot5, 2)
                XLSheet.Cells(m_ROW + 2, 8) = Round(gtot6, 2)
                XLSheet.Cells(m_ROW + 2, 9) = Round(gtot7, 2)
                XLSheet.Cells(m_ROW + 2, 10) = Round(gtot8, 2)
                XLSheet.Cells(m_ROW + 2, 11) = Round(gtot9, 2)
                XLSheet.Cells(m_ROW + 2, 12) = Round(gtot10, 2)
                XLSheet.Cells(m_ROW + 2, 13) = Round(gtot11, 2)
                XLSheet.Cells(m_ROW + 2, 14) = Round(gtot12, 2)
                XLSheet.Cells(m_ROW + 2, 15) = Round(gtot13, 2)
                XLSheet.Cells(m_ROW + 2, 16) = Round(gtot14, 2)
                XLSheet.Cells(m_ROW + 2, 17) = Round(gtot15, 2)
                XLSheet.Cells(m_ROW + 2, 18) = Round(gtot16, 2)
                XLSheet.Cells(m_ROW + 2, 19) = Round(gtot17, 2)
                 XLSheet.Cells(m_ROW + 2, 20) = Round(gtot18, 2)
                XLSheet.Cells(m_ROW + 2, 21) = Round(gtot19, 2)
                XLSheet.Cells(m_ROW + 2, 22) = Round(gtot20, 2)
                XLSheet.Cells(m_ROW + 2, 23) = Round(gtot21, 2)
                XLSheet.Cells(m_ROW + 2, 24) = Round(gtot22, 2)
                XLSheet.Cells(m_ROW + 2, 25) = Round(gtot23, 2)
                XLSheet.Cells(m_ROW + 2, 26) = Round(gtot24, 2)
                XLSheet.Cells(m_ROW + 2, 27) = Round(gtot25, 2)
                XLSheet.Cells(m_ROW + 2, 28) = Round(gtot26, 2)
                XLSheet.Cells(m_ROW + 2, 29) = Round(gtot27, 2)
                XLSheet.Cells(m_ROW + 2, 30) = Round(gtot28, 2)
                XLSheet.Cells(m_ROW + 2, 31) = Round(gtot29, 2)
                lr = "A" & m_ROW + 1
                HR = "AE" & m_ROW + 1
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
'                  With XLSheet.Range("A8", ).Font
'                .Bold = True
'                .Size = 9
'                .Color = vbBlue
'                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit
                 m = XLSheet.UsedRange.Rows.Count
                 lr = "A" & m_ROW + 2
                HR = "AE" & m_ROW + 2
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                 m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "AE" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
 
                With XLSheet.Range("A8", "AE8").Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                ''

                lr = "A" & 1
                HR = "AE" & m_ROW

                With XLSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                .Font.Size = 9
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With

                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With

                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With

                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
'
                Myxl.Application.Visible = True
'
                Set XLSheet = Nothing
                Set Myxl = Nothing
'                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
               MsgBox "Stock Statement Successfully Exported", vbInformation, head
    Else
               MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                 Exit Sub
    End If
End Sub

Private Sub ExcelConvertvariety_Pallava()

 Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant


        Dim Adjustment  As Double
        Dim bolLotType As Boolean
        Dim sCondition As String

Myxl.Application.Visible = True


        intervalMinutes = -1

        pagein = 0
        Adjustment = 0
        cont = 0
        f = FreeFile
        cnt = 0
        too = 0
        adjtot = 0
        Adjustment1 = 0
        Adjustm = 0
        monthmm = 0
        
        If XType = "ALL" Then bolTYPEAll = True Else bolTYPEAll = False
        If XType = "A" Then bolLotType = True Else bolLotType = False
        If bolLotType = True Then sCondition = "Lottype ='" & XType & "'" Else sCondition = "transferType ='" & XType & "'"
        
        L_Var = ""
            For I = 1 To List_Varcode.ListItems.Count
        
                If List_Varcode.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(List_Varcode.ListItems(I).SubItems(1))
                    If L_Var <> "" Then
                        L_Var = L_Var + "," + Trim(sRecCount)
                    Else
                        L_Var = Trim(sRecCount)
                    End If
                End If
            Next
            
        
        Set rsa = New Recordset
        rsa.Open "select catname from rm_cat where catcd='" & Category & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            cat = rsa(0)
        Else
            cat = "ALL"
        End If
        
        date1 = Format(month_value1, "yyyy-mm-dd")
        date2 = Format(month_value2, "yyyy-mm-dd")
        On Error Resume Next
''        db.Execute "drop table formiv_CUST"
        ''db.Execute "Create table Formiv_CUST(Code varchar(10),description VARCHAR(35),date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstran numeric(16),isstrantot numeric(15,3),isstotkg numeric(15,3),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3),rejbale numeric(12),REJKG NUMERIC(15,3),ADJBALE NUMERIC(15),adjkg numeric(15,3),adjtype char(1), salbale numeric(10),salborah numeric(10), saltot numeric(12), saltotkg numeric(15,3), isskgs numeric(20,3))"

        DB.Execute "drop table formiv_CUST"
        DB.Execute "Create table Formiv_CUST(date1 datetime,Code varchar(10),description VARCHAR(35),opbales numeric(8),opbORAS numeric(8), oPKGS numeric(15,3), OPVALUE numeric(18,2),RECBALES numeric(8), RECBORAS numeric(8), RECKGS numeric(15,3), RECVALUE numeric(18,2), JOBRECBALES numeric(8), JOBRECBOR numeric(8), JOBRECKGS numeric(15,3), JOBRECVALUE numeric(18,2), TRRECBALES numeric(8), TRRECBORAS numeric(8), TRRECKGS numeric(15,3), TRRECVALUE numeric(18,2), ISSRETBAL numeric(8), ISSRETBOR numeric(8), ISSRETKGS numeric(15,3), ISSRETVAL numeric(18,2), ISSBALES numeric(8), ISSBORAS numeric(8), issKgs numeric(15,3), ISSVALUE numeric(18,2), SALESBAL numeric(8), SALESBOR numeric(8), SALESKGS numeric(15,3), SALESVALUE numeric(18,2), JWISSBAL numeric(8), JWISSBOR numeric(8), JWISSKGS numeric(15,3), JWISSVAL numeric(18,2), TRANSBAL numeric(8), TRANSBOR numeric(8), TRANSKGS numeric(15,3), TRANSVALUE numeric(18,2), REJBALES numeric(8), rejkgs numeric(15,3), " & _
                   " REJVALUE numeric(18,2),clobales numeric(8), CLOBORAS numeric(8), clokgs numeric(15,3), CLOSEVALUE numeric(18,2))"


            If Check1.value = 1 Then
                 Set rsCat = New Recordset
                 rsCat.Open "select distinct  min(a.varcode) minvar ,max(a.varcode) maxvar  from rm_var a inner join rm_lot b on a.varcode=b.varcode  where  b.LOTYEAR ='" & Format(yfdate, "yyyy") & "' and b.divcode='" & Divcode & "'  ", DB, adOpenStatic
                 
                 If Not rsCat.EOF Then
                    rsCat.MoveFirst
                     Do While Not rsCat.EOF
                        For dtCurrDate = CDate(month_value1) To CDate(month_value2)
                            DB.Execute "CRY_STKSTMNTTYPEWISE_LEDG1 '" & Divcode & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & Trim(rsCat("minvar")) & "','" & Trim(rsCat("maxvar")) & "','V'"
                        Next
                        rsCat.MoveNext
                    Loop
                 End If
            Else
            
            U = Format(Dt_From.value, "yyyy-mm-dd")
            v = Format(Dt_To.value, "yyyy-mm-dd")
                For dtCurrDate = CDate(U) To CDate(v)
                    If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Then
                        DB.Execute "CRY_STKSTMNTTYPEWISE_LEDG1 '" & Divcode & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & Trim(L_Var) & "','" & Trim(XType) & "','V'"
                    Else
                        DB.Execute "CRY_STKSTMNTTYPEWISE_LEDG1 '" & Divcode & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(dtCurrDate, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & Trim(XType) & "','" & Trim(XType) & "','V'"
                    End If
                Next
            End If

















co = 0
CustCode = "": custname = "": ContNo = "": sortname = ""
intervalMinutes = -1
        Set XLSheet = Myxl.ActiveSheet
        FCat = Trim(Mid(cmb_FromVariety.Text, InStr(3, cmb_FromVariety.Text, "---") + 3, Len(cmb_FromVariety.Text)))
        TCat = Trim(Mid(cmb_Tovariety.Text, InStr(3, cmb_Tovariety.Text, "---") + 3, Len(cmb_Tovariety.Text)))

        Set rs1 = New Recordset
        rs1.Open "exec  CRY_varietywise_excel  '" & Divcode & "' ,'" & Format(Dt_From, "yyyy-MM-dd") & "','" & Format(Dt_To, "yyyy-MM-dd") & "','" & Format(yfdate, "yyyy-MM-dd") & "','" & Format(yldate, "yyyy-MM-dd") & "','" & Year(yfdate) & "','" & FCat & "','" & TCat & "'", DB, adOpenKeyset, adLockReadOnly

        Dim FSort As String
        Dim TSort As String

        fd = Format(Dt_From.value, "yyyy-mm-dd")
        td = Format(Dt_To, "yyyy-mm-dd")
         
        Set rsnew = New Recordset
        rsnew.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB
        
       
        XLSheet.Cells(1, 5).value = rsnew(0)
        XLSheet.Range("A1", "S1").MergeCells = True
        oSheet.Range("A1", "S1").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        XLSheet.Cells(2, 5).value = rsnew(1)
        XLSheet.Range("A2", "S2").MergeCells = True
        oSheet.Range("A2", "S2").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
     
        End With
        


        XLSheet.Cells(5, 5).value = " STOCK STATEMENT AS ON - " & Format(Dt_To.value, "DD/MM/YYYY")

        XLSheet.Range("A5", "S5").MergeCells = True
        
        With XLSheet.Range("A5", "S5").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
              
'DB.Execute "delete from CONSRMIDENIER_Excel"
Set rs1 = New Recordset
yfdate = fnyfdate(pdate)
yldate = fnyldate(pdate)
intervalMinutes = -1

ster = ""

    On Error Resume Next

            
                gtot1 = 0
                gtot2 = 0
                gtot3 = 0
                gtot4 = 0
                gtot5 = 0
                gtot6 = 0
                
                gtot7 = 0
                gtot8 = 0
                gtot9 = 0
                gtot10 = 0
                gtot11 = 0
                gtot12 = 0
                
                gtot13 = 0
                gtot14 = 0
                gtot15 = 0
                gtot16 = 0
                gtot17 = 0
                gtot18 = 0
                
                intervalMinutes = -1

 intervalMinutes = -1

        Set Rs = New Recordset
'        Rs.Open "exec  CRY_varietywise_excel  '" & Divcode & "' ,'" & Format(Dt_From, "yyyy-MM-dd") & "','" & Format(Dt_To, "yyyy-MM-dd") & "','" & Format(yfdate, "yyyy-MM-dd") & "','" & Format(yldate, "yyyy-MM-dd") & "','" & Year(yfdate) & "','" & FCat & "','" & TCat & "'", DB, adOpenStatic, adLockBatchOptimistic
         Rs.Open "select description,opbales,opkgs,recbales,reckgs,JOBRECBALES,JOBRECKGS,trrecbales,trreckgs,issbales,isskgs,JWISSBAL,JWISSKGS,TRANSBAL,TRANSKGS,SALESBAL,SALESKGS,clobales,clokgs  from Formiv_CUST order by description", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.RecordCount > 0 Then
            co = 7
             XLSheet.Cells(7, 3).value = "OPENING STOCK"
               XLSheet.Range("B7", "C7").MergeCells = True
               
        XLSheet.Cells(7, 5).value = "PURCHASE"
               XLSheet.Range("D7", "E7").MergeCells = True
               
               XLSheet.Cells(7, 7).value = "JOB WORK RECEIPT"
               XLSheet.Range("F7", "G7").MergeCells = Truehr
               
               XLSheet.Cells(7, 9).value = "TRANSFER RECEIPT"
               XLSheet.Range("H7", "I7").MergeCells = True
               
               XLSheet.Cells(7, 11).value = "ISSUES"
               XLSheet.Range("J7", "K7").MergeCells = True
               
               XLSheet.Cells(7, 13).value = "JOB WORK ISSUES"
               XLSheet.Range("l7", "M7").MergeCells = True
               
               XLSheet.Cells(7, 15).value = "TRANSFER ISSUES"
               XLSheet.Range("N7", "O7").MergeCells = True
               
               XLSheet.Cells(7, 17).value = "SALES"
               XLSheet.Range("P7", "Q7").MergeCells = True
               
               XLSheet.Cells(7, 19).value = "CLOSING STOCK"
               XLSheet.Range("R7", "S7").MergeCells = True
               
                 With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                   m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m_ROW
                HR = "S" & m_ROW
              '  Myxl.Application.Visible = True
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
            co = 8
                XLSheet.Cells(8, 1).value = " Variety "

                 XLSheet.Cells(8, 2).value = "No. of Bales"
                XLSheet.Cells(8, 3).value = " Kgs."
                
                XLSheet.Cells(8, 4).value = "No. of Bales"
                XLSheet.Cells(8, 5).value = " Kgs. "

                XLSheet.Cells(8, 6).value = "No. of Bales"
                XLSheet.Cells(8, 7).value = " Kgs. "
                
                 XLSheet.Cells(8, 8).value = "No. of Bales"
                XLSheet.Cells(8, 9).value = " Kgs. "
                
                XLSheet.Cells(8, 10).value = "No. of Bales"
                XLSheet.Cells(8, 11).value = " Kgs. "
                
                XLSheet.Cells(8, 12).value = "No. of Bales"
                XLSheet.Cells(8, 13).value = " Kgs. "
                
                XLSheet.Cells(8, 14).value = "No. of Bales"
                XLSheet.Cells(8, 15).value = " Kgs. "
                
                XLSheet.Cells(8, 16).value = "No. of Bales"
                XLSheet.Cells(8, 17).value = " Kgs. "
                
                XLSheet.Cells(8, 18).value = "No. of Bales"
                XLSheet.Cells(8, 19).value = " Kgs. "
                
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m_ROW
                HR = "S" & m_ROW
         '       Myxl.Application.Visible = True
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit


                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                For I = 0 To Rs.RecordCount - 1
                intervalMinutes = -1
                m_ROW = XLSheet.UsedRange.Rows.Count

                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                
                
                
                
                
           
                
                
                
                

        XLSheet.Cells(Max, 1) = Trim(Rs.Fields("description"))
        XLSheet.Cells(Max, 2) = Trim(Rs.Fields("opbales"))
        XLSheet.Cells(Max, 3) = Trim(Rs.Fields("OPKGS"))
         XLSheet.Cells(Max, 4) = Trim(Rs.Fields("RECBALES"))
        XLSheet.Cells(Max, 5) = Trim(Rs.Fields("RECKGS"))
        XLSheet.Cells(Max, 6) = Trim(Rs.Fields("JOBRECBALES"))
        XLSheet.Cells(Max, 7) = Trim(Rs.Fields("JOBRECKGS"))
        XLSheet.Cells(Max, 8) = Trim(Rs.Fields("trrecbales"))
        XLSheet.Cells(Max, 9) = val(Rs.Fields("trreckgs"))
        XLSheet.Cells(Max, 10) = Trim(Rs.Fields("issbales"))
        XLSheet.Cells(Max, 11) = Trim(Rs.Fields("isskgs"))
        XLSheet.Cells(Max, 12) = Trim(Rs.Fields("JWISSBAL"))
        XLSheet.Cells(Max, 13) = Trim(Rs.Fields("JWISSKGS"))
         XLSheet.Cells(Max, 14) = Trim(Rs.Fields("TRANSBAL"))
         XLSheet.Cells(Max, 15) = Trim(Rs.Fields("TRANSKGS"))
        XLSheet.Cells(Max, 16) = Trim(Rs.Fields("SALESBAL"))
        XLSheet.Cells(Max, 17) = Trim(Rs.Fields("SALESKGS"))
        XLSheet.Cells(Max, 18) = Trim(Rs.Fields("clobales"))
         XLSheet.Cells(Max, 19) = Trim(Rs.Fields("clokgs"))
    '    XLSheet.Cells(Max, 12) = Trim(rs.Fields("k4"))
           m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
      
            
                tot1 = tot1 + val(Rs.Fields("opbales"))
                tot2 = tot2 + val(Rs.Fields("OPKGS"))
                
                 tot3 = tot3 + val(Rs.Fields("RECBALES"))
                tot4 = tot4 + val(Rs.Fields("RECKGS"))
                
                tot5 = tot5 + val(Rs.Fields("OTHERRECBALES"))
                tot6 = tot6 + val(Rs.Fields("OTHERRECKGS"))
                tot7 = tot7 + val(Rs.Fields("ISSBALES"))
                tot8 = tot8 + val(Rs.Fields("ISSKGS"))
                
                tot9 = tot9 + val(Rs.Fields("OTHERISSUEBALES"))
                tot10 = tot10 + val(Rs.Fields("OTHERISSUEKGS"))
                tot11 = tot11 + val(Rs.Fields("CLOBALES"))
                tot12 = tot12 + val(Rs.Fields("CLOKGS"))
                tot13 = tot13 + val(Rs.Fields("CLOSEVALUE"))
              
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW
            
                    
            
                
                Rs.MoveNext
                
                       With XLSheet.Range(lr, HR).Font
                .Bold = False
                .Size = 9
                .Color = vbBlack
                End With
                
'             If catname <> Trim(Rs.Fields("CATNAME")) Then

                 
                
                 gtot1 = gtot1 + tot1
                gtot2 = gtot2 + tot2
                gtot3 = gtot3 + tot3
                gtot4 = gtot4 + tot4
                gtot5 = gtot5 + tot5
                gtot6 = gtot6 + tot6
                
                gtot7 = gtot7 + tot7
                gtot8 = gtot8 + tot8
                gtot9 = gtot9 + tot9
                gtot10 = gtot10 + tot10
                gtot11 = gtot11 + tot11
                gtot12 = gtot12 + tot12
                
                gtot13 = gtot13 + tot13
                gtot14 = gtot14 + tot14
                gtot15 = gtot15 + tot15
                gtot16 = gtot16 + tot16
                gtot17 = gtot17 + tot17
                gtot18 = gtot18 + tot18
                
                tot1 = 0
                tot2 = 0
                tot3 = 0
                tot4 = 0
                tot5 = 0
                tot6 = 0
                tot7 = 0
                tot8 = 0
                tot9 = 0
                tot10 = 0
                tot11 = 0
                tot12 = 0
                tot13 = 0
                tot14 = 0
                tot15 = 0
                tot16 = 0
                tot17 = 0
                tot18 = 0
                m_ROW = XLSheet.UsedRange.Rows.Count
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                lr = "A" & m_ROW
                HR = "S" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = False
                .Size = 9
                .Color = vbBlack
                End With
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
  '      End If
        
                Max = Max + 1
                
                Next I

                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
'
'                'Dim M_ROW As Integer
'
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 2
'                XLSheet.Cells(m_ROW + 2, 1) = "Grand Total"
'                XLSheet.Cells(m_ROW + 2, 2) = Round(gtot1, 2)
'                XLSheet.Cells(m_ROW + 2, 3) = Round(gtot2, 2)
'                XLSheet.Cells(m_ROW + 2, 4) = Round(gtot3, 2)
'                XLSheet.Cells(m_ROW + 2, 5) = Round(gtot4, 2)
'                XLSheet.Cells(m_ROW + 2, 6) = Round(gtot5, 2)
'                 XLSheet.Cells(m_ROW + 2, 7) = Round(gtot6, 2)
'                XLSheet.Cells(m_ROW + 2, 8) = Round(gtot7, 2)
'                XLSheet.Cells(m_ROW + 2, 9) = Round(gtot8, 2)
'                XLSheet.Cells(m_ROW + 2, 10) = Round(gtot9, 2)
'                XLSheet.Cells(m_ROW + 2, 11) = Round(gtot10, 2)
'                XLSheet.Cells(m_ROW + 2, 12) = Round(gtot11, 2)
'                XLSheet.Cells(m_ROW + 2, 13) = Round(gtot12, 2)
'                XLSheet.Cells(m_ROW + 2, 14) = Round(gtot13, 2)
        
                 lr = "A" & m_ROW + 1
                HR = "S" & m_ROW + 1
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
'                  With XLSheet.Range("A8", ).Font
'                .Bold = True
'                .Size = 9
'                .Color = vbBlue
'                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit
                 m = XLSheet.UsedRange.Rows.Count
                 lr = "A" & m_ROW + 2
                HR = "S" & m_ROW + 2
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                 m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "S" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
 
                With XLSheet.Range("A8", "S8").Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                ''

                lr = "A" & 1
                HR = "S" & m_ROW

                With XLSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                .Font.Size = 9
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With

                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With

                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With

                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With '
                Myxl.Application.Visible = True
'
                Set XLSheet = Nothing
                Set Myxl = Nothing
                MsgBox "Stock Statement Successfully Exported", vbInformation, head
                
    Else
               MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                 Exit Sub
    End If
               
End Sub

