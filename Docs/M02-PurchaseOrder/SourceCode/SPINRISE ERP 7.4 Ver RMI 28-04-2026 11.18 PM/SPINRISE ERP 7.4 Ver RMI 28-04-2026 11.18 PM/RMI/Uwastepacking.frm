VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form Uwastepacking 
   Caption         =   "Waste Packing"
   ClientHeight    =   7740
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11805
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7740
   ScaleWidth      =   11805
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   14
      Top             =   0
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Uwastepacking.frx":0000
         Height          =   510
         Index           =   4
         Left            =   2145
         Picture         =   "Uwastepacking.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   26
         ToolTipText     =   "Find (Ctrl R)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Uwastepacking.frx":069F
         Height          =   510
         Index           =   6
         Left            =   3195
         Picture         =   "Uwastepacking.frx":0AE9
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Uwastepacking.frx":0E36
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Uwastepacking.frx":1140
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Uwastepacking.frx":14D3
         Height          =   510
         Index           =   5
         Left            =   2670
         Picture         =   "Uwastepacking.frx":191D
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Uwastepacking.frx":1C82
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
         Picture         =   "Uwastepacking.frx":1F8C
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Uwastepacking.frx":2328
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Uwastepacking.frx":2632
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Uwastepacking.frx":29AC
         Height          =   510
         Index           =   7
         Left            =   3720
         Picture         =   "Uwastepacking.frx":2DF6
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Uwastepacking.frx":3146
         Height          =   510
         Index           =   11
         Left            =   5820
         Picture         =   "Uwastepacking.frx":3590
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Uwastepacking.frx":3925
         Height          =   510
         Index           =   9
         Left            =   4770
         Picture         =   "Uwastepacking.frx":3C2F
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "Uwastepacking.frx":3FD1
         Height          =   510
         Index           =   10
         Left            =   5295
         Picture         =   "Uwastepacking.frx":42DB
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Cancel (Ctrl Z)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Uwastepacking.frx":4657
         Height          =   510
         Index           =   8
         Left            =   4245
         Picture         =   "Uwastepacking.frx":4AA1
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Last Record (Ctrl E)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   495
         Index           =   3
         Left            =   1620
         Picture         =   "Uwastepacking.frx":4E03
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "List (Ctrl L)"
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
         TabIndex        =   28
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
         TabIndex        =   27
         Top             =   255
         Width           =   840
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5655
      Left            =   360
      TabIndex        =   0
      Top             =   1320
      Width           =   10125
      _ExtentX        =   17859
      _ExtentY        =   9975
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "      "
      TabPicture(0)   =   "Uwastepacking.frx":519A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame2 
         Height          =   2745
         Left            =   150
         TabIndex        =   12
         Top             =   2640
         Width           =   9705
         Begin MSDataGridLib.DataGrid grddatagrid 
            Height          =   2415
            Left            =   120
            TabIndex        =   13
            Top             =   240
            Width           =   9375
            _ExtentX        =   16536
            _ExtentY        =   4260
            _Version        =   393216
            AllowUpdate     =   -1  'True
            HeadLines       =   2
            RowHeight       =   19
            TabAction       =   2
            AllowDelete     =   -1  'True
            BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   9.75
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
         Height          =   2535
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Width           =   9705
         Begin VB.TextBox txtfields 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   0
            Left            =   1800
            TabIndex        =   1
            Top             =   270
            Width           =   1245
         End
         Begin VB.TextBox txtfields 
            DataField       =   "DESCRIPTION"
            Height          =   330
            Index           =   3
            Left            =   3000
            MaxLength       =   50
            TabIndex        =   4
            TabStop         =   0   'False
            Top             =   840
            Width           =   5085
         End
         Begin VB.TextBox txtfields 
            DataField       =   "PRODUCT_CODE"
            Height          =   330
            Index           =   2
            Left            =   1800
            MaxLength       =   6
            TabIndex        =   3
            Top             =   840
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   10
            Left            =   1800
            MaxLength       =   25
            TabIndex        =   6
            Top             =   1440
            Width           =   1140
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            Height          =   315
            Left            =   5670
            TabIndex        =   2
            Top             =   270
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   556
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Format          =   "dd/mm/yyyy"
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   315
            Left            =   5670
            TabIndex        =   7
            Top             =   270
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            _Version        =   393216
            Format          =   58130433
            CurrentDate     =   37043
         End
         Begin VB.Label Label3 
            Caption         =   "Date"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   4950
            TabIndex        =   11
            Top             =   330
            Width           =   1215
         End
         Begin VB.Label Label2 
            Caption         =   "DocumentNo"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Index           =   0
            Left            =   240
            TabIndex        =   10
            Top             =   330
            Width           =   1365
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Waste"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   3
            Left            =   240
            TabIndex        =   9
            Top             =   840
            Width           =   1185
         End
         Begin VB.Label Label1 
            Caption         =   "Total Netweight"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            TabIndex        =   8
            Top             =   1320
            Width           =   1215
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   840
      TabIndex        =   29
      Top             =   1560
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         DownPicture     =   "Uwastepacking.frx":51B6
         Height          =   615
         Left            =   3480
         Picture         =   "Uwastepacking.frx":559C
         Style           =   1  'Graphical
         TabIndex        =   31
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         DownPicture     =   "Uwastepacking.frx":5962
         Height          =   615
         Left            =   5220
         Picture         =   "Uwastepacking.frx":5D44
         Style           =   1  'Graphical
         TabIndex        =   30
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   32
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
         TabIndex        =   33
         Top             =   120
         Width           =   8730
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   34
      Top             =   7440
      Width           =   11805
      _ExtentX        =   20823
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
            TextSave        =   "12/12/2008"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "11:14 AM"
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
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Waste packing"
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
      Left            =   390
      TabIndex        =   35
      Top             =   870
      Width           =   1965
   End
End
Attribute VB_Name = "Uwastepacking"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents adoSecondaryRS As Recordset
Attribute adoSecondaryRS.VB_VarHelpID = -1
Dim DB As Connection
Dim save_count As String
Dim Opt As String
Dim st, st1, st2 As String
Dim itary() As String
Dim cou As Integer
Dim cou1, c, Pg As Integer
Dim Co As Integer
Dim a As Integer
Dim cont As Integer
Dim Rep As Report.ReportView
Dim flg As String
Dim Rs As Recordset
Dim Rss As Recordset
Dim SR As String
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
Dim t5 As Integer
Dim t8 As String
Dim Date1 As String
Dim Date2 As String
Dim date3 As String
Dim dt As String
Dim errflg As String
Dim Last_docno As Integer
Dim New1DocNo As Double
Dim tweight As Integer
Dim weight As Integer
Dim str As String
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo err
If Opt <> ADD And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
'    StatusBar1.Panels(2).Text = "Record: " & CStr(adoprimaryrs("docno"))
    'StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRs.AbsolutePosition) & " of " & CStr(adoPrimaryRs.RecordCount)
    MaskEdBox1.Text = adoPrimaryRS("docdt")
    txtFields(0).Text = adoPrimaryRS("docno")
    'Combo1.Text = adoPrimaryRS("ISSTYPE")
'    If adoPrimaryRS("ISSTYPE") = "PR" Then
'        Combo1.Text = "PR-PRODUCTION"
'    ElseIf adoPrimaryRS("ISSTYPE") = "SA" Then
'        Combo1.Text = "SA-SALES"
'    ElseIf adoPrimaryRS("ISSTYPE") = "T2" Then
'        Combo1.Text = "T2-TRANSFER TO UNIT2"
'    ElseIf adoPrimaryRS("ISSTYPE") = "T3" Then
'        Combo1.Text = "T3-TRANSFER TO UNIT3"
'    End If
End If
Exit Sub
err:
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Select Case Index
Case 0
'addition
    If Record_Exists("rm_WASTE", "No Record Found in Waste Entry") = False Then Exit Sub
    If Record_Exists("rm_var") = False Then Exit Sub
    If Record_Exists("rm_wastetype", "Please Define Waste Type") = False Then Exit Sub
    Opt = "add"
    desc.Caption = "Addition"
    DB.BeginTrans
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "select divcode,docno,docdt,ISSTYPE from rm_wISSUE where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.Open "select DIVCODE,PACKYEAR,DOCNO,DOCDT,PACKDT,PACKTYPE,VARCODE,WASTECODE  from Rm_wastepacking where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Call ENABLCONTLS
    Call bindcontls
    adoPrimaryRS.AddNew
    Set rs1 = New Recordset
         rs1.Open "select isnull(max(docno),0) from rm_wastepacking where divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
         New1DocNo = rs1(0) + 1
         txtFields(0).Text = CStr(New1DocNo)
'    Set rs = New Recordset
'    rs.Open "SELECT isnull(max(isnull(docno,0)),0)+1 FROM RM_WISSUE", DB, adOpenDynamic, adLockOptimistic
'    txtfields(0).Text = rs(0)
    SSTab1.Enabled = True
    Frame1.Enabled = True
    flg = ""
    MaskEdBox1.Text = "__/__/____"
    Set adoSecondaryRS = New Recordset
    'adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett        Weight""  from rm_wissue a,rm_wastetype b where 1 = 2 ", DB, adOpenStatic, adLockBatchOptimistic
    adoSecondaryRS.Open "select PACKNO"" Baleno"",grosswt""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_wastepacking a,rm_wastetype b where 1 = 2 ", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoSecondaryRS
    grddatagrid.AllowUpdate = True
    adoSecondaryRS.AddNew
    Call GRIDALIGN
    StatusBar1.Panels(2).Text = "Addition"
     txtFields(2).Text = ""
     txtFields(3).Text = ""
    txtFields(10).Text = ""
    txtFields(0).Locked = True
    MaskEdBox1.Enabled = True
    MaskEdBox1.Text = pdate
    MaskEdBox1.SetFocus
    Call adddelmod(BUTTON)
    BUTTON(4).Enabled = False
    DTPicker1.MinDate = pdate
    weight = 0
   ' Combo1.ListIndex = 0
'    save_count = "' '"
        
Case 1
        'Modification
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_wastepacking where 1=1 and DivCode ='" & Divcode & "'", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "mod"
        desc.Caption = "Modification"
        SSTab1.Visible = False
        Label15.Caption = "Issue Number List"
        KslList1.conn = connectstring
        KslList1.Table = "rm_wastepacking WHERE DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and DivCode ='" & Divcode & "'"
        KslList1.listfield1 = "cast(docno as varchar)"
        KslList1.listfield2 = "convert(varchar,docdt,103) "
        SSTab1.Enabled = True
        Frame1.Enabled = False
        grddatagrid.AllowUpdate = True
        Frame3.Visible = True
        Frame3.ZOrder
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(9).ToolTipText = "Delete"
        BUTTON(10).Enabled = False
        BUTTON(4).Enabled = False
        KslList1.SetFocus
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If

Case 2
        'Deletion
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_wastepacking where 1=1 and DivCode ='" & Divcode & "'", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        SSTab1.Visible = False
        Label15.Caption = "Issue Number List"
        KslList1.conn = connectstring
        KslList1.Table = "rm_wastepacking WHERE DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and DivCode ='" & Divcode & "'"
        'KslList1.listfield1 = "cast(docno as varchar) + ':' +adjst"
        KslList1.listfield1 = "cast(docno as varchar)"
        KslList1.listfield2 = "convert(varchar,docdt,103)"
        grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Frame3.ZOrder
        DB.BeginTrans
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
Case 3
        If Record_Exists("rm_wastepacking where divcode='" & Divcode & "'") = False Then Exit Sub
        Set repo = New Report.ReportView
        desc.Caption = "Listing"
        Set rs1 = New Recordset
        rs1.Open "select DISTINCT docno,docdt from rm_wissue  where divcode='" & Divcode & "' and docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' ", DB, adOpenStatic
        If rs1.RecordCount <= 0 Then
        MsgBox "No record found", vbInformation
        Exit Sub
        End If
        Pg = 1
        Set rsP = New Recordset
        Close
        Open KALFOLDERDATA & "\red.txt" For Output As #1
            Print #1,
            Print #1,
            Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 79, " "); "F"; Chr(27)
            Print #1,
            Print #1, Space(5); "Waste Issue Listing" & Space(1); "for "; Format(adoPrimaryRS("docdt"), "dd/mm/yyyy"); Space(51 - 16 - 13) & "Dt: "; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:" & Padl(Pg, 3, " ")
            Print #1, Space(5) & String(79, "-")
            Print #1, Space(5) & "Issue No. Doc.Dt  "
            Print #1, Space(5) & "Godown  Waste  Description                        Shift Count      Gross Weight"
            Print #1, Space(5) & String(79, "-")
            Co = 8
            tot = 0
        Do While Not rs1.EOF
            Print #1, Space(5) & Padr(rs1("docno"), 7, " ") & Space(1) & Padr(Format(rs1("docdt"), "dd/mm/yyyy"), 10, " ")
            Co = Co + 1
            Print #1,
            Co = Co + 1
            Set RS2 = New Recordset
            RS2.Open "select a.CNTCD,a.gcode,a.wcode,b.wdes,type=case when type='R' then 'Reuse' else 'Sales' end,a.netwt  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & rs1("docno") & " and a.docdt='" & Format(rs1("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic
            Do While Not RS2.EOF
                Print #1, Space(5) & Padr(RS2("Gcode"), 6, " ") & Space(2) & Padr(RS2("Wcode"), 5, " "); Space(2); Padr(RS2("wDes"), 35, " "); Padr(RS2("type"), 6, " "); Padr(RS2("cntcd"), 10, " "); Space(1); Padl(INF(RS2("netwt"), 3), 12, " ")
                tot = tot + RS2("netwt")
                Co = Co + 1
                RS2.MoveNext
                If Co >= PageLen Then
                    Print #1, Space(5); String(50, "-")
                    Print #1, Chr(12)
                    Co = 0
                    Pg = Pg + 1
                    Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 56, " "); "F"; Chr(27)
                    Print #1,
                    Print #1, Space(5); "Supplier Listing" & Space(2); Space(10) & "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg:" & Pg
                    Print #1, Space(5) & String(50, "-")
                    Print #1, Space(5) & "Code" & Space(9) & "Name "
                    Print #1, Space(5) & String(50, "-")
                    Co = Co + 5
                End If
            Loop
            rs1.MoveNext
        Loop
            Print #1, Space(5) & String(79, "-")
            Print #1, Space(5) & Space(35); " ** Total ** "; Space(10); Padl(INF(tot, 3), 21, " ")
            Print #1, Space(5) & String(79, "-")
            Print #1, Chr(12)
            Close #1
            Call KALBATPROCESS("Red")
'         Close #1
'         Open "C:\red.bat" For Output As #1
'            Print #1, "cd\"
'            Print #1, "C:"
'            Print #1, "cd\"
'            Print #1, "type red.txt>prn"
'              repo.txtfile = "C:\red.txt"
'              repo.Batfile = "C:\red.bat"
'         Close #1
               
Case 4
    If Record_Exists("rm_wastepacking where divcode='" & Divcode & "'") = False Then Exit Sub
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
    If Record_Exists("rm_wastepacking where divcode='" & Divcode & "'") = False Then Exit Sub
    desc.Caption = "Query"
    On Error GoTo GoFirstError
    adoPrimaryRS.MoveFirst
    Set adoSecondaryRS = New Recordset
'    ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/  Usable"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", db, adOpenStatic, adLockBatchOptimistic
    adoSecondaryRS.Open "select a.packno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""         Nett      Weight""  from rm_wastepacking a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wastecode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoSecondaryRS
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
    If Record_Exists("rm_wastepacking where divcode='" & Divcode & "'") = False Then Exit Sub
    desc.Caption = "Query"
    On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        If adoPrimaryRS.RecordCount > 1 Then
            pr = adoPrimaryRS("docno")
            dr = adoPrimaryRS("docdt")
            Do While pr = adoPrimaryRS("docno") And dr = adoPrimaryRS("docdt")
                pr = adoPrimaryRS("docno")
                dr = adoPrimaryRS("docdt")
                adoPrimaryRS.MoveNext
            Loop
        End If
        Set adoSecondaryRS = New Recordset
'        ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/  Usable"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", db, adOpenStatic, adLockBatchOptimistic
        adoSecondaryRS.Open "select a.packno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""         Nett      Weight""  from rm_wastepacking a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wastecode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        pr = adoPrimaryRS("docno")
        dr = adoPrimaryRS("docdt")
    End If
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        adoPrimaryRS.MoveLast
        Set adoSecondaryRS = New Recordset
        'ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/  Usable"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", db, adOpenStatic, adLockBatchOptimistic
        adoSecondaryRS.Open "select a.wcode ""Waste"",b.wdes""Description"",a.netwt ""         Nett      Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        Beep
    End If
    Call navi1(BUTTON)
    If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
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
    If Record_Exists("rm_wastepacking where divcode='" & Divcode & "'") = False Then Exit Sub
    desc.Caption = "Query"
    On Error GoTo GoPrevError
    If Not adoPrimaryRS.BOF Then
        If adoPrimaryRS.RecordCount > 1 Then
             st = adoPrimaryRS("docno")
             SR = adoPrimaryRS("docdt")
             Do While st = adoPrimaryRS("docno") And SR = adoPrimaryRS("docdt")
                 st = adoPrimaryRS("docno")
                 SR = adoPrimaryRS("docdt")
                 adoPrimaryRS.MovePrevious
             Loop
        End If
        Set adoSecondaryRS = New Recordset
        'ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/  Usable"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", db, adOpenStatic, adLockBatchOptimistic
        adoSecondaryRS.Open "select a.packno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"" ,a.netwt ""         Nett      Weight""  from rm_wastepacking a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wastecode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
        If adoPrimaryRS.BOF Then
            StatusBar1.Panels(2).Text = "First Record"
        End If
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        st = adoPrimaryRS("docno")
        SR = adoPrimaryRS("docdt")
    End If
    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        adoPrimaryRS.MoveFirst
        Set adoSecondaryRS = New Recordset
        'ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/  Usable"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", db, adOpenStatic, adLockBatchOptimistic
        adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.netwt ""         Nett      Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
    End If
    Call navi1(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
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
        If Record_Exists("rm_wastepacking where divcode='" & Divcode & "'") = False Then Exit Sub
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        Set adoSecondaryRS = New Recordset
        'ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/  Usable"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", db, adOpenStatic, adLockBatchOptimistic
        adoSecondaryRS.Open "select a.packno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""         Nett      Weight""  from rm_wastepacking a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wastecode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoSecondaryRS
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

If Opt = "add" Then
    tmp = Opt
    Opt = " "
    If adoSecondaryRS.RecordCount > 0 Then
            adoSecondaryRS.MoveFirst
                    Do While Not adoSecondaryRS.EOF
                        If Trim(grddatagrid.Columns(2).Text) = "" And Trim(grddatagrid.Columns(3).Text) = "" Then
                            adoSecondaryRS.Delete
                            adoSecondaryRS.MoveNext
                        Else
'                            If Trim(grddatagrid.Columns(4).Text) = "" Then
'                                MsgBox "Godown Code cannot be Empty", vbInformation, head
'                                Opt = "add"
'                                grddatagrid.COL = 4
'                                grddatagrid.SetFocus
'                                Exit Sub
'                            End If
                            If Trim(grddatagrid.Columns(1).Text) = "" Then
                                MsgBox "Gross weight Cannot be Empty", vbInformation, head
                                Opt = "add"
                                grddatagrid.Col = 5
                                grddatagrid.SetFocus
                                Exit Sub
                            End If
                            If Trim(grddatagrid.Columns(2).Text) = "" Or grddatagrid.Columns(3).Text = 0 Then
                                MsgBox "Netweight Greater then Zero", vbInformation, head
                                Opt = "add"
                                grddatagrid.Col = 7
                                grddatagrid.SetFocus
                                Exit Sub
                            End If
                            adoSecondaryRS.MoveNext
                        End If
                    Loop
    End If
    Opt = tmp
    If Opt = "add" Then
    
    If adoSecondaryRS.RecordCount <> 0 Then
    adoSecondaryRS.MoveFirst
    Do While Not adoSecondaryRS.EOF
        'DB.Execute "INSERT INTO rm_wissue(divcode,docno,docdt,isstype,wcode,netwt,cntcd,gcode) VALUES ('" & Divcode & "'," & txtFields(0).Text & ",'" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' ,'" & STR & "','" & grddatagrid.Columns(5).Text & "'," & Val(grddatagrid.Columns(7).Text) & ",'" & grddatagrid.Columns(3).Text & "','" & grddatagrid.Columns(4).Text & "')"
        DB.Execute "INSERT INTO rm_wastepacking(DIVCODE,PACKYEAR,DOCNO,DOCDT,PACKNO,PACKDT,PACKTYPE,WASTECODE,Grosswt,TAREWT,NETWT) VALUES ('" & Divcode & "','" & Year(Format(MaskEdBox1.Text, "yyyy-mm-dd")) & "'," & txtFields(0).Text & ",'" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'," & val(grddatagrid.Columns(0).Text) & ",'" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "','BA','" & txtFields(2).Text & "'," & val(grddatagrid.Columns(1).Text) & "," & val(grddatagrid.Columns(2).Text) & "," & val(grddatagrid.Columns(3).Text) & ")"
'                                         divcode docno docdt isstype  wcode  netwt  CNTCD  Gcode           divcode             docno                          docdt                                   isstype              wcode                                  netwt                                   CNTCD                                     Gcode
        adoSecondaryRS.MoveNext
    Loop
    DB.CommitTrans
    Opt = tmp
    MsgBox "Record(s) Saved", vbInformation, head
    Else
    DB.RollbackTrans
    End If
    Opt = " "
    Call QUERY_MODE
    BUTTON(4).Enabled = True
End If
End If

If Opt = "del" Then
    DB.Execute ("delete from rm_wastepacking where DOCNO =" & Trim(KslList1.Code) & " AND DOCDT='" & Trim(Format(KslList1.description, "yyyy-mm-dd")) & "'")
    DB.CommitTrans
    MsgBox "Record(s) Deleted ", vbInformation, head
    Opt = " "
    Call QUERY_MODE
    BUTTON(4).Enabled = True
End If
If Opt = "mod" Then
    Opt = ""
    On Error Resume Next
    Set Rs = New Recordset
    Rs.Open "select grosswt,tarewt,netwt from rm_wastepacking where divcode='" & Divcode & "' and docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    adoSecondaryRS.MoveFirst
    Do While Not adoSecondaryRS.EOF
        
        Rs("grosswt") = adoSecondaryRS(1)
        Rs("tarewt") = adoSecondaryRS(2)
        Rs("netwt") = adoSecondaryRS(3)  'Net Wt
        adoSecondaryRS.MoveNext
        Rs.MoveNext
    Loop
    Rs.UpdateBatch adAffectAllChapters
    DB.CommitTrans
    MsgBox "Record(s) Modified", vbInformation, head
    Opt = " "
    Call QUERY_MODE
    BUTTON(4).Enabled = True
End If

Case 10
    desc.Caption = "Query"
    StatusBar1.Panels(2).Text = "Cancel"
    Screen.MousePointer = 11
    On Error Resume Next
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    If Opt <> "qry" Then
        Opt = "qry"
    Call QUERY_MODE
    BUTTON(4).Enabled = True
    End If
    'calling cancl procedure from module
    Call cancl(BUTTON)
    BUTTON(0).SetFocus
    Screen.MousePointer = 0
    Frame3.Visible = False
    SSTab1.Visible = True
    SSTab1.ZOrder
Case 11
    'EXIT
    Reset
    Unload Me
    
End Select
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure BUTTON_Click", vbInformation, head

End Sub

Private Sub Combo1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo1_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo1_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Combo1_KeyDown of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub

Private Sub Combo1_Validate(Cancel As Boolean)
On Error GoTo Combo1_Validate_Error

If Opt = "add" Then
    If Combo1.Text = " " And MaskEdBox1.Text <> "__/__/____" Then
        MsgBox "Select any Type from the drop down list", vbInformation, head
        Cancel = True
        Exit Sub
    Else
'        Set rs = New Recordset
'        rs.Open "select isnull(max(docno),0) from rm_waste", db, adOpenStatic, adLockBatchOptimistic
'        If rs(0) = 0 Then
'            Txtfields(0).Text = rs(0).Value + 1
'        Else
'            Txtfields(0).Text = rs(0).Value + 1
            grddatagrid.Col = 5
            grddatagrid.SetFocus
            StatusBar1.Panels(2).Text = "Enter Count Code"
'        End If
    End If
End If

Exit Sub
Combo1_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Combo1_Validate of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

    Frame3.Visible = False
    SSTab1.Visible = True
    Frame6.Visible = False
    Buttonframe.Enabled = True
    Call BUTTON_Click(10)
    Call QUERY_MODE

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command3_Click of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

    If txtqry <> "" Then
        BUTTON(9).Enabled = False
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.netwt ""Nett Weight"",a.isstype from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode and docno=" & val(Trim(txtqry.Text)) & "  order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Record Found", vbInformation, head
            txtqry.Text = ""
            txtqry.SetFocus
            Exit Sub
        Else
            adoPrimaryRS.MoveFirst
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.netwt ""         Nett      Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
            grddatagrid.Columns(4).Width = 1140.095
            grddatagrid.Columns(3).Width = 1379.906
            grddatagrid.Columns(2).Width = 3195.213
            grddatagrid.Columns(1).Width = 764.7874
            grddatagrid.Columns(0).Width = 1140.095
            grddatagrid.Columns(4).Alignment = dbgRight
            grddatagrid.Columns(4).NumberFormat = "###.000"
            grddatagrid.Columns(5).NumberFormat = "###.000"
            grddatagrid.Columns(6).NumberFormat = "###.000"
            BUTTON(10).Enabled = True
            SSTab1.Visible = True
            Frame6.Visible = False
            Call GRIDALIGN
            For i = 0 To 7
                grddatagrid.Columns(i).Locked = True
            Next
            BUTTON(9).Enabled = False
            BUTTON(10).Enabled = True
        End If
    Else
        MsgBox "Please enter the Doc No.", vbInformation, head
        txtqry.SetFocus
        Exit Sub
    End If

Exit Sub
Command4_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command4_Click of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Provider = "msdatashape"
    DB.Open connectstring
    desc.Caption = "query"
    DATLAB.Caption = pdate
    Opt = "qry"
    'StatusBar1.Panels(1).Text = head
    Call QUERY_MODE
    DTPicker1.MinDate = yfdate
    DTPicker1.MaxDate = pdate

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo BUTTON_KeyDown_Error

    If KeyCode = vbKeyAdd And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyR And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyN And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyO And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyE And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyZ And Shift = 2 Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        Call BUTTON_Click(12)
    'ElseIf KeyCode = vbKeyW And Shift = 2 Then
     '   Call Command6_Click
    End If

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure BUTTON_KeyDown of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub QUERY_MODE()
On Error GoTo QUERY_MODE_Error

    If Opt = " " Or Opt = "qry" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.wastecode ""Waste"",b.wdes""Description"" from rm_wastepacking a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wastecode = b.wCode order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount > 0 Then
            adoPrimaryRS.MoveFirst
            pr = adoPrimaryRS("docno")
            dr = adoPrimaryRS("docdt")
            txtFields(2).Text = adoPrimaryRS("waste")
            txtFields(3).Text = adoPrimaryRS("Description")
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select distinct a.packno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wastepacking a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wastecode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
            Call GRIDALIGN
            Call disablcontls
            Call bindcontls
            Frame1.Enabled = False
            Call GRdlock
            Call NEWFORM1(BUTTON, GSNO)
        Else
            Call Norecfound(BUTTON)
            MsgBox "No Records Found", vbInformation, head
            Set grddatagrid.DataSource = Nothing
            
            txtFields(0).Text = ""
            MaskEdBox1.Text = "__/__/____"
        End If
    End If
    If Opt = "del" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.wastecode ""Waste"",b.wdes""Description"" from rm_wastepacking a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wastecode = b.wCode and a.docno=" & KslList1.Code & "", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.MoveFirst
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct a.packno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wastepacking a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wastecode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
        For i = 0 To 3
            grddatagrid.Columns(i).Locked = True
        Next
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        BUTTON(9).SetFocus
    End If
    If Opt = "mod" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.wastecode ""Waste"",b.wdes""Description"",a.netwt ""Nett Weight"" from rm_wastepacking a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wastecode = b.wCode and a.docno=" & KslList1.Code & "", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.MoveFirst
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct a.packno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wastepacking a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wastecode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
        grddatagrid.Columns(0).Locked = True
        grddatagrid.AllowUpdate = True
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        grddatagrid.Col = 1
        grddatagrid.SetFocus
        Exit Sub
    End If

Exit Sub
QUERY_MODE_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure QUERY_MODE of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub bindcontls()
On Error GoTo bindcontls_Error

On Error Resume Next
  Dim oText As TextBox
  'Binding  the text boxes to the data source
   For Each oText In Me.txtFields
   Set oText.DataSource = adoPrimaryRS
  Next
  Combo1.Text = adoPrimaryRS("isstype")

Exit Sub
bindcontls_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure bindcontls of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub ENABLCONTLS()
Dim X As TextBox
On Error GoTo ENABLCONTLS_Error

For Each X In Me.txtFields
    X.Locked = False
Next
Frame2.Enabled = True

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure ENABLCONTLS of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub disablcontls()
Dim tb As TextBox
On Error GoTo disablcontls_Error

For Each tb In Me.txtFields
    tb.Locked = True
Next

Exit Sub
disablcontls_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure disablcontls of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
'If grddatagrid.Row >= 0 Then
'    If grddatagrid.Col = 7 Then
'    Dim cut As Integer
'    Dim row1 As Integer
'    Dim itemc As String
'    Dim itemd As String
'    row1 = grddatagrid.Row
'    itemc = grddatagrid.Columns(4).Text
'    itemd = grddatagrid.Columns(5).Text
'    If Opt = "add" Then
'        ADOSECONDARYRS.MoveFirst
'        Do While Not ADOSECONDARYRS.EOF
'            If itemc = ADOSECONDARYRS(4) And itemd = ADOSECONDARYRS(5) And itemf = ADOSECONDARYRS(7) Then
'                cut = cut + 1
'            End If
'            ADOSECONDARYRS.MoveNext
'        Loop
'    End If
'    If Opt = "add" Then
'        If cut > 1 Then
'            MsgBox "Record Already Exists", vbInformation, head
'            flg = "y"
'            grddatagrid.Row = row1
'            'grddatagrid.Columns(6).Text = " "
'            'grddatagrid.Col = 6
'            grddatagrid.Columns(7).Text = " "
'            grddatagrid.Col = 7
'            grddatagrid.SetFocus
'            Exit Sub
'        Else
'            flg = ""
'            grddatagrid.Row = row1
'            grddatagrid.Col = 7
'            grddatagrid.SetFocus
'        End If
'    End If
'End If
'End If
On Error GoTo grdDataGrid_AfterColEdit_Error

    

Exit Sub
grdDataGrid_AfterColEdit_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grdDataGrid_AfterColEdit of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grdDataGrid_Error of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_GotFocus()
On Error GoTo grdDataGrid_GotFocus_Error

If Opt = "add" Then
Select Case grddatagrid.Col
Case 10
grddatagrid.Columns(10).Text = IIf(grddatagrid.Columns(8).Text = "", 0, val(grddatagrid.Columns(8).Text)) + IIf(grddatagrid.Columns(9).Text = "", 0, val(grddatagrid.Columns(9).Text))
End Select
End If

Exit Sub
grdDataGrid_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grdDataGrid_GotFocus of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error

Select Case grddatagrid.Col
    Case 3
        If Opt = "add" Or Opt = "mod" Then
            If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") And flg <> "y" And (adoSecondaryRS.RecordCount = adoSecondaryRS.AbsolutePosition) And grddatagrid.Columns(3).Text <> "" Then
                
                'If Val(weight) <= Val(tweight) Then
                adoSecondaryRS.AddNew
                flg = "y"
                adoSecondaryRS.MovePrevious
                startno = val(grddatagrid.Columns(0).Text)
                txtFields(10).Text = txtFields(10).Text - grddatagrid.Columns(3).Text
                startno = startno + 1
                adoSecondaryRS.MoveNext
                flg = ""
                grddatagrid.Columns(0).Text = startno
                grddatagrid.Col = 0
                grddatagrid.SetFocus
                'Else
                'weight = weight + grddatagrid.Columns(3).Text
                'grddatagrid.Columns(3).Text = ""
                'grddatagrid.Columns(2).Text = ""
                'grddatagrid.Columns(1).Text = ""
                'MsgBox "Excess Weight", vbInformation, head
            'End If
                
            End If
        End If
    End Select
If KeyCode = 13 And (Opt = "add" Or Opt = "mod") Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grddatagrid_KeyDown of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error

        If Opt = "add" Or Opt = "mod" Then
Select Case grddatagrid.Col
Case 7
    ToNumb grddatagrid, 6, KeyAscii
    Call ToUpCase(grddatagrid, KeyAscii)
End Select
End If
If Opt = "MOD" Then
Select Case grddatagrid.Col
 
Case 8
tonum grddatagrid, 5, KeyAscii
 
 End Select
 End If
 Call ToUpCase(grddatagrid, KeyAscii)

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure GRDDATAGRID_KeyPress of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)

On Error GoTo GRDDATAGRID_RowColChange_Error

If Opt = "add" Or Opt = "mod" Then
    Select Case grddatagrid.Col
    
    Case 4
        save_row = grddatagrid.Row
        grddatagrid.Row = 0
'        For i = 0 To ADOSECONDARYRS.RecordCount
'            save_count = save_count + grdDataGrid.Columns(3).Text
'        Next
        grddatagrid.Row = save_row
        If Trim(grddatagrid.Columns(3).Text) <> "" Then
        If Record_Exists("rm_WASTE") = False Then Exit Sub
            Set Rs = New Recordset
'            Rs.Open "select count(*) from rm_WASTE a,rm_waste b  where a.cntcd=b.cntcd and cntcd='" & grddatagrid.Columns(3).Text & "' ", Db, adOpenStatic
            Rs.Open "select count(*) from rm_waste where cntcd='" & grddatagrid.Columns(3).Text & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic
            If Rs(0) = 0 Then
                Set Rs = New Recordset
                Rs.Open "select a.cntcd,b.cntname from rm_waste a,rm_count b where a.cntcd=b.cntcd and a.DivCode ='" & Divcode & "'", DB, adOpenStatic
                If Rs.RecordCount > 0 Then
                    SSTab1.Visible = False
                    Frame3.Visible = True
                    Frame3.ZOrder
                    Buttonframe.Enabled = False
                    Label15.Caption = "Count Listing"
                    KslList1.conn = connectstring
                    KslList1.Table = "rm_waste a,rm_count b where a.cntcd=b.cntcd"
                    KslList1.listfield1 = "a.cntcd"
                    KslList1.listfield2 = "b.cntname"
                    KslList1.SetFocus
                    StatusBar1.Panels(2).Text = "Select Count from the List"
                 Else
                    grddatagrid.Columns(3).Text = Empty
                    GoTo 10
                End If
            Else
10                StatusBar1.Panels(2).Text = "Enter Godown Code"
                grddatagrid.Col = 4
                grddatagrid.SetFocus
            End If
            End If
Case 2
        If Opt = "add" Or Opt = "mod" Then
        If grddatagrid.Col = 2 Then
                If val(grddatagrid.Columns(1).Text) - 2 > txtFields(10).Text Then
                 grddatagrid.Col = 1
                 grddatagrid.Columns(1).Text = ""
                 MsgBox "Excess Weight", vbInformation, head
                 
                 grddatagrid.SetFocus
                End If
        End If
    End If
Case 3
        On Error Resume Next
    If Opt = "add" Or Opt = "mod" Then
        If grddatagrid.Col = 3 And flg <> "y" Then
                grddatagrid.Columns(3).Text = val(grddatagrid.Columns(1).Text) - val(grddatagrid.Columns(2).Text)
                
                weight = weight + val(grddatagrid.Columns(3).Text)
        End If
    End If

    Case 5
'        If Record_Exists("rm_waste") = False Then Exit Sub
'            Set rs = New Recordset
'            rs.Open "select count(*) from rm_waste where gcode='" & grddatagrid.Columns(4).Text & "'", DB, adOpenStatic
'            If rs(0) = 0 Then
'                SSTab1.Visible = False
'                Frame3.Visible = True
'                Frame3.ZOrder
'                Buttonframe.Enabled = False
'                LABEL15.Caption = "Godown Listing"
'                ksllist1.conn = connectstring
'                ksllist1.table = "rm_waste a,rm_god b where a.gcode=b.gcode"
'                ksllist1.listfield1 = "a.gcode"
'                ksllist1.listfield2 = "b.gname"
'                ksllist1.SetFocus
'                StatusBar1.Panels(2).Text = "Select Godown from the List"
'            Else
'                grddatagrid.COL = 5
'                grddatagrid.SetFocus
'                StatusBar1.Panels(2).Text = "Select Waste Code"
'            End If
    Case 6
'        If Record_Exists("rm_WASTE") = False Then Exit Sub
'            Set rs = New Recordset
'            'rs.Open "select count(*) from rm_waste where wcode='" & grddatagrid.Columns(5).Text & "' and gcode='" & grddatagrid.Columns(4).Text & "'", DB, adOpenStatic
'            rs.Open "select count(*) from rm_waste where wcode='" & grddatagrid.Columns(5).Text & "'", DB, adOpenStatic
'            If rs(0) = 0 Then
'                SSTab1.Visible = False
'                Frame3.Visible = True
'                Frame3.ZOrder
'                Buttonframe.Enabled = False
'                LABEL15.Caption = "Waste Listing"
'                ksllist1.conn = connectstring
'                'ksllist1.table = "rm_waste a,rm_wastetype b where a.wcode=b.wcode and a.gcode='" & grddatagrid.Columns(4).Text & "'"
'                ksllist1.table = "rm_waste a,rm_wastetype b where a.wcode=b.wcode "
'                ksllist1.listfield1 = "a.wcode"
'                ksllist1.listfield2 = "b.wdes"
'                ksllist1.SetFocus
'            Else
'                Set rs = New Recordset
'                rs.Open "SELECT WDES FROM rm_wastetype WHERE WCODE='" & grddatagrid.Columns(5).Text & "'", DB, adOpenStatic
'                If Not rs.EOF Then
'                grddatagrid.Columns(6).Text = rs(0)
'                Set rs = New Recordset
'                rs.Open "select sum(a.netwt) -(select sum(b.netwt) from rm_wissue b where  b.wcode='" & grddatagrid.Columns(5).Text & "' and b.gcode ='" & grddatagrid.Columns(4).Text & "') from rm_waste a where  a.wcode='" & grddatagrid.Columns(5).Text & "' and a.gcode ='" & grddatagrid.Columns(4).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
'                If Not rs.EOF Then grddatagrid.Columns(7).Text = rs(0)
'                End If
'                grddatagrid.COL = 7
'                grddatagrid.SetFocus
'                StatusBar1.Panels(2).Text = "Enter 7 integers and 3 decimals"
'            End If
    
'    Case 7
'        If Record_Exists("rm_wastetype") = False Then Exit Sub
'            Set rs = New Recordset
'            rs.Open "select count(*) from rm_wastetype where wcode='" & grdDataGrid.Columns(6).Text & "'", db, adOpenDynamic, adLockOptimistic
'            If rs(0) = 0 Then
'                SSTab1.Visible = False
'                Frame3.Visible = True
'                Frame3.ZOrder
'                Buttonframe.Enabled = False
'                Label15.Caption = "Waste Listing"
'                KslList1.conn = connectstring
'                KslList1.table = "rm_wastetype"
'                KslList1.listfield1 = "wcode"
'                KslList1.listfield2 = "wdes"
'                KslList1.SetFocus
'                StatusBar1.Panels(2).Text = "Select waste from the List"
'            Else
'                grdDataGrid.Col = 7
'                grdDataGrid.SetFocus
'            End If
'    Case 11
'        If Val(grdDataGrid.Columns(10).Text) > Val(grdDataGrid.Columns(9).Text) Then
'            StatusBar1.Panels(2).Text = "Tare Weight Less Than Gross Weight"
'            grdDataGrid.Columns(10).Text = Empty
'            grdDataGrid.Col = 10
'            grdDataGrid.SetFocus
'            Exit Sub
'        Else
'            grdDataGrid.Columns(11).Text = grdDataGrid.Columns(9).Text - grdDataGrid.Columns(10).Text
'            grdDataGrid.Columns(11).Locked = True
'        End If

Case 7
    On Error Resume Next
    Set Rs = New Recordset
    'Rs.Open "SELECT isnull(SUM(ISNULL(netwt,0)),0) FROM RM_wASTE WHERE GCODE='" & grddatagrid.Columns(4).Text & "' AND WCODE ='" & grddatagrid.Columns(5).Text & "' AND DIVCODE='" & Divcode & "' ", Db, adOpenStatic
    Rs.Open "select sum(a.netwt) -(select sum(b.netwt) from rm_wissue b where  b.wcode='" & grddatagrid.Columns(5).Text & "' and b.gcode ='" & grddatagrid.Columns(4).Text & "') from rm_waste a where  a.wcode='" & grddatagrid.Columns(5).Text & "' and a.gcode ='" & grddatagrid.Columns(4).Text & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Not Rs.EOF Then
        If val(grddatagrid.Columns(7).Text) > val(Rs(0)) Then
'            MsgBox "Issue weight cannot be greater than " & rs(0), vbInformation, head
'            grddatagrid.Columns(7).Text = ""
'            grddatagrid.Col = 7
'            grddatagrid.SetFocus
'            Exit Sub
        End If
    End If
    End Select
End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure GRDDATAGRID_RowColChange of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0

End Sub


Private Sub Lovcancel_Click()
On Error GoTo Lovcancel_Click_Error

If KslList1.listfield1 = "a.gcode" Then
Frame3.Visible = False
SSTab1.Visible = True
Buttonframe.Enabled = True
grddatagrid.Col = 4
grddatagrid.SetFocus
Exit Sub
End If
If KslList1.listfield1 = "a.wcode" Then
Frame3.Visible = False
SSTab1.Visible = True
Buttonframe.Enabled = True
grddatagrid.Col = 5
grddatagrid.SetFocus
Exit Sub
End If
If KslList1.listfield1 = "a.cntcd" Then
Frame3.Visible = False
SSTab1.Visible = True
Buttonframe.Enabled = True
grddatagrid.Columns(3).Text = ""
grddatagrid.Col = 5
grddatagrid.SetFocus
Exit Sub
End If
Call BUTTON_Click(10)
Call QUERY_MODE

Exit Sub
Lovcancel_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Lovcancel_Click of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox1_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
MaskEdBox1_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MaskEdBox1_KeyDown of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus()
On Error GoTo MaskEdBox1_LostFocus_Error

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

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MaskEdBox1_LostFocus of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub lovok_Click()
On Error GoTo lovok_Click_Error

SSTab1.Visible = True
    Frame3.Visible = False
    Buttonframe.Enabled = True
Select Case KslList1.listfield1
Case "a.cntcd"
     
        grddatagrid.Columns(3).Text = KslList1.Code
        grddatagrid.Col = 4
        grddatagrid.SetFocus
        save_count = save_count & "," & "'" & KslList1.Code & "'"
        StatusBar1.Panels(2).Text = "Enter Godown Code"
        
Case "a.gcode"
        grddatagrid.Columns(4).Text = KslList1.Code
        grddatagrid.Col = 5
        grddatagrid.SetFocus
        StatusBar1.Panels(2).Text = "Select Waste Code"
Case "a.wcode"
        txtFields(2).Text = KslList1.Code
        txtFields(3).Text = KslList1.description
        Set Rs = New Recordset
        'rs.Open "select sum(a.netwt) -isnull((select sum(b.netwt) from rm_wissue b where  b.wcode='" & grddatagrid.Columns(5).Text & "' and b.gcode ='" & grddatagrid.Columns(4).Text & "'),0) from rm_waste a where  a.wcode='" & grddatagrid.Columns(5).Text & "' and a.gcode ='" & grddatagrid.Columns(4).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
        Rs.Open "select sum(a.netwt) -isnull((select sum(b.netwt) from rm_wastepacking b where  b.wastecode='" & txtFields(2).Text & "'),0) from rm_waste a where  a.wcode='" & txtFields(2).Text & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.EOF Then txtFields(10).Text = Rs(0)
        tweight = Rs(0)
        Set balenors = New Recordset
        balenors.Open "select isnull(max(isnull(b.packno,0))+1,1) from rm_wastepacking b where  b.wastecode='" & txtFields(2).Text & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        grddatagrid.Columns(0).Text = balenors(0)
        
        grddatagrid.Col = 1
        grddatagrid.SetFocus

Case "cast(docno as varchar)"
    Call QUERY_MODE
End Select
    

Exit Sub
lovok_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure lovok_Click of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

If Not (DTPicker1.Value >= yfdate And DTPicker1.Value <= pdate) Then
MsgBox "Document date should fall within the processing date", vbInformation, head
Exit Sub
Else
MaskEdBox1.Text = DTPicker1.Value
Combo1.SetFocus
End If

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DTPicker1_CloseUp of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub



Public Sub navi1(tol As Object)
On Error GoTo navi1_Error

    tol(0).Enabled = True 'ADD
    tol(1).Enabled = True 'MOD
    tol(2).Enabled = True 'DEL
    On Error Resume Next
    tol(3).Enabled = True 'LIST
    'tol(4).Enabled = False 'QUERY
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT

Exit Sub
navi1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure navi1 of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub GRIDALIGN()
On Error GoTo GRIDALIGN_Error

        grddatagrid.Columns(0).Locked = True
        grddatagrid.Columns(0).Width = 1000.095
        grddatagrid.Columns(1).Width = 1500.7874
        grddatagrid.Columns(2).Width = 1500.189
        grddatagrid.Columns(3).Width = 1050.74
        grddatagrid.Columns(1).Alignment = dbgRight
        grddatagrid.Columns(1).NumberFormat = "#0.000"
        grddatagrid.Columns(2).Alignment = dbgRight
        grddatagrid.Columns(2).NumberFormat = "#0.000"
        grddatagrid.Columns(3).Alignment = dbgRight
        grddatagrid.Columns(3).NumberFormat = "#0.000"
        grddatagrid.Columns(3).Locked = True

Exit Sub
GRIDALIGN_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure GRIDALIGN of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
        
End Sub

Public Sub GRdlock()
On Error GoTo GRdlock_Error

For i = 0 To grddatagrid.Columns.Count - 1
grddatagrid.Columns(i).Locked = True
Next

Exit Sub
GRdlock_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure GRdlock of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub




Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtfields_KeyDown of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Txtfields_Validate_Error

If Opt = "add" Then
 Select Case Index
    Case 2
            If Record_Exists("rm_WASTE") = False Then Exit Sub
            Set Rs = New Recordset
            'rs.Open "select count(*) from rm_waste where wcode='" & grddatagrid.Columns(5).Text & "' and gcode='" & grddatagrid.Columns(4).Text & "'", DB, adOpenStatic
            Rs.Open "select count(*) from rm_waste where wcode='" & txtFields(3).Text & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic
            If Rs(0) = 0 Then
                
                Frame3.Visible = True
                Frame3.ZOrder
                Buttonframe.Enabled = False
                Label15.Caption = "Waste Listing"
                KslList1.conn = connectstring
                'ksllist1.table = "rm_waste a,rm_wastetype b where a.wcode=b.wcode and a.gcode='" & grddatagrid.Columns(4).Text & "'"
                KslList1.Table = "rm_waste a,rm_wastetype b where a.wcode=b.wcode and a.DivCode ='" & Divcode & "'"
                KslList1.listfield1 = "a.wcode"
                KslList1.listfield2 = "b.wdes"
                KslList1.SetFocus
            Else
                Set Rs = New Recordset
                Rs.Open "SELECT WDES FROM rm_wastetype WHERE WCODE='" & grddatagrid.Columns(5).Text & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic
                If Not Rs.EOF Then
                grddatagrid.Columns(6).Text = Rs(0)
                Set Rs = New Recordset
                Rs.Open "select sum(a.netwt) -(select sum(b.netwt) from rm_wissue b where  b.wcode='" & grddatagrid.Columns(5).Text & "' and b.gcode ='" & grddatagrid.Columns(4).Text & "' and b.DivCode ='" & Divcode & "') from rm_waste a where  a.wcode='" & grddatagrid.Columns(5).Text & "' and a.gcode ='" & grddatagrid.Columns(4).Text & "' a.and DivCode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                If Not Rs.EOF Then grddatagrid.Columns(7).Text = Rs(0)
                End If
                grddatagrid.Col = 7
                grddatagrid.SetFocus
                StatusBar1.Panels(2).Text = "Enter 7 integers and 3 decimals"
            End If
            End Select
End If

Exit Sub
Txtfields_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Txtfields_Validate of Form Uwastepacking", vbInformation, head
Screen.MousePointer = 0
End Sub

