VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmbank 
   Caption         =   "Bank"
   ClientHeight    =   6375
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9195
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   6375
   ScaleWidth      =   9195
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport2 
      Left            =   8760
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   12
      Left            =   5280
      Picture         =   "frmbank.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   44
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   0
      Width           =   615
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   240
      Top             =   6285
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   21
      Top             =   -105
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmbank.frx":0442
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "frmbank.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Last Record (Ctrl E)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "frmbank.frx":0BEE
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "frmbank.frx":0EF8
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Cancel (Ctrl Z) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmbank.frx":1274
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "frmbank.frx":157E
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmbank.frx":1920
         Height          =   510
         Index           =   11
         Left            =   5895
         Picture         =   "frmbank.frx":1D6A
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmbank.frx":20FF
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "frmbank.frx":2549
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "frmbank.frx":2899
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmbank.frx":2C30
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "frmbank.frx":2F3A
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmbank.frx":32B4
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
         Picture         =   "frmbank.frx":35BE
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmbank.frx":395A
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "frmbank.frx":3DA4
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmbank.frx":4109
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "frmbank.frx":4413
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmbank.frx":47A6
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "frmbank.frx":4BF0
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Next Record (Ctrl N)"
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6870
         TabIndex        =   23
         Top             =   255
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   8385
         TabIndex        =   22
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   24
      Top             =   6075
      Width           =   9195
      _ExtentX        =   16219
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
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "10/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "02:55 PM"
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
      Height          =   3780
      Left            =   900
      TabIndex        =   26
      TabStop         =   0   'False
      Top             =   1305
      Width           =   6120
      _ExtentX        =   10795
      _ExtentY        =   6668
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   " "
      TabPicture(0)   =   "frmbank.frx":4F3D
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   3630
         Left            =   120
         TabIndex        =   27
         Top             =   30
         Width           =   5880
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "FAX"
            Height          =   330
            Index           =   10
            Left            =   1230
            MaxLength       =   15
            TabIndex        =   9
            Top             =   3150
            Width           =   2940
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "BANK_CODE"
            Height          =   330
            Index           =   0
            Left            =   1230
            MaxLength       =   4
            TabIndex        =   0
            Top             =   210
            Width           =   825
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "NAME"
            Height          =   330
            Index           =   1
            Left            =   2130
            MaxLength       =   50
            TabIndex        =   1
            Top             =   210
            Width           =   3630
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "BRANCH"
            Height          =   330
            Index           =   2
            Left            =   1230
            MaxLength       =   50
            TabIndex        =   2
            Top             =   570
            Width           =   4530
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD1"
            Height          =   330
            Index           =   3
            Left            =   1230
            MaxLength       =   30
            TabIndex        =   3
            Top             =   945
            Width           =   4530
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD2"
            Height          =   330
            Index           =   4
            Left            =   1230
            MaxLength       =   30
            TabIndex        =   4
            Top             =   1320
            Width           =   4530
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD3"
            Height          =   330
            Index           =   5
            Left            =   1230
            MaxLength       =   30
            TabIndex        =   5
            Top             =   1695
            Width           =   4530
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "AREA_CODE"
            Height          =   330
            Index           =   6
            Left            =   1230
            MaxLength       =   4
            TabIndex        =   6
            Top             =   2055
            Width           =   855
         End
         Begin VB.TextBox TXTFIELDS 
            Height          =   330
            Index           =   7
            Left            =   2130
            TabIndex        =   40
            TabStop         =   0   'False
            Top             =   2055
            Width           =   3630
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ZIP"
            Height          =   330
            Index           =   8
            Left            =   1230
            MaxLength       =   7
            TabIndex        =   7
            Top             =   2415
            Width           =   1560
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PHONE"
            Height          =   330
            Index           =   9
            Left            =   1230
            MaxLength       =   25
            TabIndex        =   8
            Top             =   2775
            Width           =   2940
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Line 2"
            Height          =   195
            Index           =   10
            Left            =   720
            TabIndex        =   43
            Top             =   1410
            Width           =   435
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   " Line 3"
            Height          =   195
            Index           =   9
            Left            =   660
            TabIndex        =   42
            Top             =   1800
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Pincode"
            Height          =   195
            Index           =   7
            Left            =   105
            TabIndex        =   39
            Top             =   2490
            Width           =   585
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Branch"
            Height          =   195
            Index           =   6
            Left            =   105
            TabIndex        =   33
            Top             =   645
            Width           =   510
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Address Line 1"
            Height          =   195
            Index           =   5
            Left            =   105
            TabIndex        =   32
            Top             =   1020
            Width           =   1050
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Area"
            Height          =   195
            Index           =   4
            Left            =   105
            TabIndex        =   31
            Top             =   2130
            Width           =   330
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Phone"
            Height          =   195
            Index           =   3
            Left            =   105
            TabIndex        =   30
            Top             =   2850
            Width           =   465
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Fax"
            Height          =   195
            Index           =   2
            Left            =   105
            TabIndex        =   29
            Top             =   3225
            Width           =   255
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Bank "
            Height          =   195
            Index           =   0
            Left            =   105
            TabIndex        =   28
            Top             =   285
            Width           =   420
         End
      End
   End
   Begin VB.Frame LSTFRME 
      Height          =   5100
      Left            =   1440
      TabIndex        =   34
      Top             =   1320
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton lovok 
         Caption         =   " &Ok"
         Default         =   -1  'True
         DownPicture     =   "frmbank.frx":4F59
         Height          =   615
         Left            =   3000
         Picture         =   "frmbank.frx":533F
         Style           =   1  'Graphical
         TabIndex        =   36
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "frmbank.frx":5705
         Height          =   615
         Left            =   4740
         Picture         =   "frmbank.frx":5AE7
         Style           =   1  'Graphical
         TabIndex        =   35
         Top             =   4080
         Width           =   1185
      End
      Begin KSLDESCOCX.Ksldesc Ksldesc1 
         Height          =   3255
         Left            =   840
         TabIndex        =   37
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
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
         TabIndex        =   38
         Top             =   120
         Width           =   8805
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Address Line 1"
      Height          =   195
      Index           =   8
      Left            =   0
      TabIndex        =   41
      Top             =   0
      Width           =   1050
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Bank"
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
      Left            =   900
      TabIndex        =   25
      Top             =   870
      Width           =   675
   End
End
Attribute VB_Name = "frmbank"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs, rs1, rs2 As Recordset
Dim DB As Connection
Dim Opt, Str As String
Dim I As Integer
'Private Sub BUTTON_LostFocus(Index As Integer)
'    If Opt = " " Or Opt = "qry" Then
'        If Not BUTTON(0).Enabled = False Then
'            BUTTON(0).SetFocus
'        End If
'    End If
'End Sub

Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo BUTTON_KeyDown_Error
intervalMinutes = -1
    If KeyCode = vbKeyAdd And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyR And Shift = 2 Then
        Call BUTTON_Click(4)
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
    End If

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form frmbank", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
    BUTTON(0).ToolTipText = "Add (Ctrl A)"
    BUTTON(1).ToolTipText = "Modify (Ctrl M)"
    BUTTON(2).ToolTipText = "Delete (Ctrl D)"
    BUTTON(3).ToolTipText = "List (Ctrl L)"
    'BUTTON(4).ToolTipText = "Find (Ctrl F)"
    BUTTON(5).ToolTipText = "First Record (Ctrl Left)"
    BUTTON(6).ToolTipText = "Next Record (Ctrl Down)"
    BUTTON(7).ToolTipText = "Previous Record (Ctrl Up)"
    BUTTON(8).ToolTipText = "Last Record (Ctrl Right)"
    BUTTON(9).ToolTipText = "Save (Ctrl S)"
    BUTTON(10).ToolTipText = "Cancel (Ctrl BackSpace)"
    BUTTON(11).ToolTipText = "Exit (Ctrl Q)"

intervalMinutes = -1

    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
'    Set rs = New Recordset
'    rs.Open "select * from ig_area", DB, adOpenDynamic, adLockBatchOptimistic
'        If rs.RecordCount = 0 Then
'            MsgBox "Please Define The Area In The Setup Form !", vbInformation, head
'            Unload Me
'        End If
stbar.Panels(1).Text = head
    desc.Caption = "Query"
    DATLAB.Caption = pdate
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
    If adoPrimaryRS.RecordCount = 0 Then
        stbar.Panels(2).Text = "No Records Found"
    End If
    LSTFRME.Visible = False
    'frmbank.BUTTON(0).SetFocus

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmbank", vbInformation, head
End Sub
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
On Error GoTo Form_KeyDown_Error

    If KeyCode = vbKeyAdd And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyR And Shift = 2 Then
        Call BUTTON_Click(4)
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
    End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form frmbank", vbInformation, head
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0              'ADD
    Opt = "add"
    Screen.MousePointer = 11
    desc.Caption = "Addition"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT BANK_CODE,NAME,BRANCH,ADD1,ADD2,ADD3,AREA_CODE,ZIP,PHONE,FAX,USER_ID,ENTDATE FROM IG_BANK where 1=2", DB, adOpenDynamic, adLockBatchOptimistic
    DB.BeginTrans
    Call ENABLCONTLS
    Call bindcontls
    Call adddelmod(BUTTON)
    adoPrimaryRS.AddNew
    TXTFIELDS(0).SetFocus
    Screen.MousePointer = 0
    TXTFIELDS(7).DataField = ""
    
    
Case 1              'MOD
    If Record_Exists("IG_BANK") = False Then Exit Sub
    Opt = "mod"
    Screen.MousePointer = 0
    desc.Caption = "Modification"
'    Ksldesc1.conn = DB
'    Ksldesc1.Table = "ig_bank"
'    Ksldesc1.listfield1 = "bank_code"
'    Ksldesc1.listfield2 = "convert(varchar(35), Name)"
'    listlb.Caption = "Bank Code Listing"
'    LSTFRME.Visible = True
'    SSTab1.Visible = False
'    lovok.SetFocus
'    Buttonframe.Enabled = False
      LookUp.Clear = True
            'LookUp.Query = "select a.MixGrp ""Code"",b.MixGrpname""Name"",a.varcode""Code"",b.varname""Name"" from rm_mixingEstimate a, rm_var b where a.varcode=b.varcode and a.MixGrp='" & mixgrpcode & "'"
            LookUp.query = "select BANK_CODE,NAME from IG_BANK"
            LookUp.DefCol = "Name"
            LookUp.ALIGN = "2000,3000"
            LookUp.Caption = "Mixing Group Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                
            
                Set adoPrimaryRS = New Recordset
                'adoPrimaryRS.Open "select a.MixGRp ""Mix Group"" ,b.MixGrpname ""Group Name"",a.varcode ""Variety"",c.varname""Variety Name"", A.NoOfDays ""Days"" from rm_mixingestimate  a,rm_Mixgrp b,rm_var c where a.Mixgrp=b.MixGrpCD and a.varcode=c.varcode and  a.MixGrp='" & mixgrpcode & "' and  a.varcode='" & LookUp.Fields(2) & "'", DB, adOpenStatic, adLockBatchOptimistic
                 adoPrimaryRS.Open "select A.*,B.NAME from ig_bank A,IG_AREA B WHERE A.AREA_CODE=B.AREA_CODE AND A.BANK_CODE='" & LookUp.Fields(0) & "'", DB, adOpenDynamic, adLockBatchOptimistic
                Call bindcontls

       
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
            End If

    DB.BeginTrans
    Call ENABLCONTLS
    Call adddelmod(BUTTON)
    TXTFIELDS(0).Locked = True 'BANK CODE CANNOT BE MODIFIED IN MODIFICATION !!!
    TXTFIELDS(7).DataField = ""

Case 2              'DEL
    If Record_Exists("IG_BANK") = False Then Exit Sub
    Opt = "del"
    desc.Caption = "Deletion"
    
      LookUp.Clear = True
            'LookUp.Query = "select a.MixGrp ""Code"",b.MixGrpname""Name"",a.varcode""Code"",b.varname""Name"" from rm_mixingEstimate a, rm_var b where a.varcode=b.varcode and a.MixGrp='" & mixgrpcode & "'"
            LookUp.query = "select BANK_CODE,NAME from IG_BANK"
            LookUp.DefCol = "Name"
            LookUp.ALIGN = "2000,3000"
            LookUp.Caption = "Mixing Group Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                
            
                Set adoPrimaryRS = New Recordset
                'adoPrimaryRS.Open "select a.MixGRp ""Mix Group"" ,b.MixGrpname ""Group Name"",a.varcode ""Variety"",c.varname""Variety Name"", A.NoOfDays ""Days"" from rm_mixingestimate  a,rm_Mixgrp b,rm_var c where a.Mixgrp=b.MixGrpCD and a.varcode=c.varcode and  a.MixGrp='" & mixgrpcode & "' and  a.varcode='" & LookUp.Fields(2) & "'", DB, adOpenStatic, adLockBatchOptimistic
                 adoPrimaryRS.Open "select A.*,B.NAME from ig_bank A,IG_AREA B WHERE A.AREA_CODE=B.AREA_CODE AND A.BANK_CODE='" & LookUp.Fields(0) & "'", DB, adOpenDynamic, adLockBatchOptimistic
                Call bindcontls

       
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
            End If

        DB.BeginTrans
    Call ENABLCONTLS
    Call adddelmod(BUTTON)
    TXTFIELDS(0).Locked = True 'BANK CODE CANNOT BE MODIFIED IN MODIFICATION !!!
    TXTFIELDS(7).DataField = ""
'    Ksldesc1.conn = DB
'    Ksldesc1.Table = "ig_bank"
'    Ksldesc1.listfield1 = "bank_code"
'    Ksldesc1.listfield2 = "convert(varchar(35), Name)"
'    listlb.Caption = "Bank Code Listing"
'    SSTab1.Visible = False
'    LSTFRME.Visible = True
'    lovok.SetFocus
'    Buttonframe.Enabled = False
'    DB.BeginTrans
'    Call adddelmod(BUTTON)
    
Case 3              'LIST
'    If Record_Exists("IG_BANK") = False Then Exit Sub
'    Set Rs = New Recordset
'    Rs.Open "select DISTINCT a.bank_code,a.Name,a.branch,b.name from ig_bank a,Ig_area b WHERE a.area_code = b.area_code order by bank_code", DB, adOpenDynamic, adLockBatchOptimistic
'    If Rs.RecordCount = 0 Then
'        MsgBox "No Records Found", vbInformation, head
'        Exit Sub
'    End If
'    Dim pg1 As String
'    Set Rep = New Report.ReportView
'    a = FreeFile
'   ' Open "c:\BANKTXT.TXT" For Output As #a
'    Open KALFOLDERDATA & "\BANKTXT.TXT" For Output As #a
'
'    pg1 = 1
'    str = CStr(pdate) + Space(2)
'    Print #a, Chr(15)
'    Print #a, Space(5) & Chr(27) & "E" & CENTRE(DIVNAME, 145, " ") & Chr(27) & "F"
'    Print #a, Space(5) + "Bank Listing" + Space(110) + "Dt: " & str + "Pg.:" + Padl(CStr(pg1), 3, " ")
'    Print #a, Space(5) + String(145, "-")
'    Print #a, Space(5) + "Bank Code" + Space(1) + "Name" + Space(51 - Len("name")) + "Branch" + Space(51 - Len("branch")) + "Area Name" + Space(2)
'    Print #a, Space(5) + String(145, "-")
'    i = 0
'    Do While Not Rs.EOF = True
'         Print #a, Space(5) + Rs(0) + Space(10 - Len(Rs(0))) + Rs(1) + Space(51 - Len(Rs(1))) + Rs(2) + Space(51 - Len(Rs(2))) + Rs(3) + Space(11 - Len(Rs(0)))
'         Rs.MoveNext
'         i = i + 1
'         If i = 57 Then
'            Print #a,
'            Print #a, Chr(12)
'            Print #a,
'            Print #a, Space(5) + Space(Round((145 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(Round((145 - 2 * Len(DIVNAME)) / 2))
'            Print #a, Space(145)
'            Print #a, Space(10) + "Bank Setup Listing" + Space(77) + str + "Pg.No :" + Space(1) + "1"
'            Print #a, Space(5) + String(145, "-")
'            Print #a, Space(5) + "Bank Code" + Space(1) + "Name" + Space(51 - Len("name")) + "Branch" + Space(51 - Len("branch")) + "Area Name" + Space(2)
'            Print #a, Space(5) + String(145, "-")
'            i = 0
'         End If
'    Loop
'    'Print #a,
'    Print #a, Space(5) + String(145, "-")
'    Print #a,
'    Print #a, Chr(12)
'    Close #a
'    a = FreeFile
''    Open "c:\banktxt.bat" For Output As #a
''    Print #a, "cd\"
''    Print #a, "c:"
''    Print #a, "cd\"
''    Print #a, "type banktxt.txt>prn"
''    Close #a
''    Rep.txtfile = "c:\banktxt.txt"
''    Rep.Batfile = "c:\banktxt.bat"
'     Call KALBATPROCESS("banktxt")
Dim clsCryRptbank As New clsCrystal
  Set clsCryRptbank.cryRept = Cry_SetupBank
  clsCryRptbank.CrystalPrint
                
  CrystalReport1.Reset
  CrystalReport1.Connect = connectstring
  CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

  
  CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
  
  CrystalReport1.WindowShowPrintSetupBtn = True
  CrystalReport1.WindowShowSearchBtn = True
  CrystalReport1.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CrystalReport1.Action = 1
  CrystalReport1.PrinterCopies = 1
  Screen.MousePointer = 0
    

Case 5              'FIRST

    If Record_Exists("IG_BANK", "No Records Found") = False Then Exit Sub
    desc.Caption = "Query"
    adoPrimaryRS.MoveFirst
    Call FIR(BUTTON)
    stbar.Panels(2).Text = "First Record"
    
Case 6              'NEXT

    If Record_Exists("IG_BANK", "No Records Found") = False Then Exit Sub
    desc.Caption = "Query"
    If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        BUTTON(5).Enabled = True 'F
        BUTTON(6).Enabled = True 'N
        BUTTON(7).Enabled = True 'P
        BUTTON(8).Enabled = True 'L
    End If
    If adoPrimaryRS.EOF = True And adoPrimaryRS.RecordCount > 0 Then
        BUTTON(5).Enabled = True 'F
        BUTTON(6).Enabled = False 'N
        BUTTON(7).Enabled = True 'P
        BUTTON(8).Enabled = False 'L
        adoPrimaryRS.MoveLast
    End If
    
Case 7              'PREV

    If Record_Exists("IG_BANK", "No Records Found") = False Then Exit Sub
    desc.Caption = "Query"
    If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        BUTTON(5).Enabled = True 'F
        BUTTON(6).Enabled = True 'N
        BUTTON(7).Enabled = True 'P
        BUTTON(8).Enabled = True 'L
    End If
    If adoPrimaryRS.BOF = True And adoPrimaryRS.RecordCount > 0 Then
        BUTTON(5).Enabled = False  'F
        BUTTON(6).Enabled = True 'N
        BUTTON(7).Enabled = False 'P
        BUTTON(8).Enabled = True 'L
        adoPrimaryRS.MoveFirst
    End If

Case 8              'LAST

    If Record_Exists("IG_BANK", "No Records Found") = False Then Exit Sub
    desc.Caption = "Query"
    adoPrimaryRS.MoveLast
    Call las(BUTTON)
    stbar.Panels(2).Text = "Last Record"
   
Case 9              'SAVE
    Screen.MousePointer = 11
    If Opt = "add" Or Opt = "mod" Then
       If Len(Trim(TXTFIELDS(0).Text)) = 0 Then
        MsgBox "Bank Code Cannot Be Empty", vbInformation, head
        TXTFIELDS(0).SetFocus
        Screen.MousePointer = 0
        Exit Sub
       ElseIf Len(Trim(TXTFIELDS(1).Text)) = 0 Then
        MsgBox "Bank Name Cannot Be Empty", vbInformation, head
        TXTFIELDS(1).SetFocus
        Screen.MousePointer = 0
        Exit Sub
       ElseIf Len(Trim(TXTFIELDS(2).Text)) = 0 Then
        MsgBox "Branch Name Cannot Be Empty", vbInformation, head
        TXTFIELDS(2).SetFocus
        Screen.MousePointer = 0
        Exit Sub
       ElseIf Len(Trim(TXTFIELDS(3).Text)) = 0 Then
        MsgBox "Atleast Type One Line Of Address", vbInformation, head
        TXTFIELDS(3).SetFocus
        Screen.MousePointer = 0
        Exit Sub
       ElseIf Len(Trim(TXTFIELDS(6).Text)) = 0 Then
        MsgBox "Area Code Cannot Be Empty", vbInformation, head
        TXTFIELDS(6).SetFocus
        Screen.MousePointer = 0
        Exit Sub
       End If
    End If
    
    If Opt = "add" Then ' to eliminate duplication of primary key
        Set Rs = New Recordset
        Rs.Open "select * from ig_bank where bank_code='" & TXTFIELDS(0).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If Rs.RecordCount > 0 Then
            MsgBox "Bank Code Already Defined", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
    End If
    
    If Opt = "add" Then
        adoPrimaryRS("user_id") = usrid
        adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
        adoPrimaryRS("BANK_CODE") = TXTFIELDS(0).Text 'bank_code
        adoPrimaryRS("NAME") = TXTFIELDS(1).Text
        adoPrimaryRS("BRANCH") = TXTFIELDS(2).Text
        adoPrimaryRS("ADD1") = TXTFIELDS(3).Text
        adoPrimaryRS("ADD2") = TXTFIELDS(4).Text
        adoPrimaryRS("ADD3") = TXTFIELDS(5).Text
        adoPrimaryRS("AREA_CODE") = TXTFIELDS(6).Text
        adoPrimaryRS("ZIP") = TXTFIELDS(8).Text
        adoPrimaryRS("PHONE") = TXTFIELDS(9).Text
        adoPrimaryRS("FAX") = TXTFIELDS(10).Text
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Bank"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = TXTFIELDS(0).Text
            TrnLog("description") = TXTFIELDS(1).Text
            
'            TrnLog("code") = grddatagrid.Columns(0).Text
'            TrnLog("description") = grddatagrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
        
        
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
        Opt = "qry"
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).Enabled = True
        BUTTON(0).SetFocus
        Screen.MousePointer = 0
        desc.Caption = "Query"
        Exit Sub
    End If
    If Opt = "mod" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT BANK_CODE,NAME,BRANCH,ADD1,ADD2,ADD3,AREA_CODE,ZIP,PHONE,FAX,ENTDATE,USER_ID FROM IG_BANK where BANK_CODE='" & TXTFIELDS(0).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
        adoPrimaryRS("user_id") = usrid
        adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
        adoPrimaryRS("BANK_CODE") = TXTFIELDS(0).Text 'bank_code
        adoPrimaryRS("NAME") = TXTFIELDS(1).Text
        adoPrimaryRS("BRANCH") = TXTFIELDS(2).Text
        adoPrimaryRS("ADD1") = TXTFIELDS(3).Text
        adoPrimaryRS("ADD2") = TXTFIELDS(4).Text
        adoPrimaryRS("ADD3") = TXTFIELDS(5).Text
        adoPrimaryRS("AREA_CODE") = TXTFIELDS(6).Text
        adoPrimaryRS("ZIP") = TXTFIELDS(8).Text
        adoPrimaryRS("PHONE") = TXTFIELDS(9).Text
        adoPrimaryRS("FAX") = TXTFIELDS(10).Text
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Bank"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = TXTFIELDS(0).Text
            TrnLog("description") = TXTFIELDS(1).Text
            
'            TrnLog("code") = grddatagrid.Columns(0).Text
'            TrnLog("description") = grddatagrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
        
        DB.CommitTrans
        MsgBox "Record(s) Modified", vbInformation, head
        Opt = "qry"
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).Enabled = True
        BUTTON(0).SetFocus
        Screen.MousePointer = 0
        desc.Caption = "Query"
        Exit Sub
    End If
    If Opt = "del" Then
       If MsgBox("Do you want to delete?", vbYesNo, head) = vbYes Then
                On Error GoTo delerr
                DB.Execute "delete from ig_bank where bank_code='" & TXTFIELDS(0).Text & "'"
                
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Bank"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = TXTFIELDS(0).Text
            TrnLog("description") = TXTFIELDS(1).Text
            
'            TrnLog("code") = grddatagrid.Columns(0).Text
'            TrnLog("description") = grddatagrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
                
                
                DB.CommitTrans
                MsgBox "Record(s) Deleted Successfully", vbInformation, head
                Call query_mode
                Call NEWFORM1(BUTTON, GSNO)
                BUTTON(0).Enabled = True
                BUTTON(0).SetFocus
                Screen.MousePointer = 0
                desc.Caption = "Query"
                Exit Sub
        Else
            Screen.MousePointer = 0
            MsgBox "Deletion cancelled", vbInformation, head
            DB.CommitTrans
            Opt = " "
            Call query_mode
            Call NEWFORM1(BUTTON, GSNO)
            BUTTON(0).Enabled = True
            BUTTON(0).SetFocus
            Screen.MousePointer = 0
            Exit Sub
                                
        End If
    End If
    

Case 10             'CANCEL
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    Screen.MousePointer = 11
    desc.Caption = "Query"
    LSTFRME.Visible = False
    SSTab1.Visible = True
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
     DB.RollbackTrans
    End If
    Opt = " "
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(0).Enabled = True
    BUTTON(0).SetFocus
'    Call cancl(BUTTON, 65)
    Screen.MousePointer = 0
Case 11
    Unload Me
    Case 12
    
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Bank
    Cystalrptbunk.CrystalPrint
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0
    
End Select

delerr:
    If CStr(Mid$(Err.Description, InStr(Err.Description, "ORA") + 4, 5)) = "02292" Then
     MsgBox "This Record Is In Use", vbInformation, head
     Opt = "del"
     BUTTON_Click (10)
    End If

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form frmbank", vbInformation, head

End Sub

Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
On Error GoTo qer
Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "SELECT a.*,b.name FROM IG_BANK a,ig_area b WHERE A.AREA_CODE=B.AREA_CODE order by a.bank_code", DB, adOpenDynamic, adLockBatchOptimistic
TXTFIELDS(7).DataField = "Name"
Call bindcontls
Call disablcontls
If adoPrimaryRS.RecordCount = 0 Then
 BUTTON(5).Enabled = False
 BUTTON(6).Enabled = False
 BUTTON(7).Enabled = False
 BUTTON(8).Enabled = False
Else
 Call FIR(BUTTON)
End If
desc.Caption = "Query"
DATLAB.Caption = Date
Screen.MousePointer = 0
Opt = " "
Buttonframe.Enabled = True
'If adoPrimaryRS.RecordCount > 0 Then
'    Call NEWFORM1(BUTTON, GSNO)
'Else
'''Call norecfound(BUTTON, 65)
'End If
Call NEWFORM1(BUTTON, GSNO)
BUTTON(0).SetFocus

qer:
 If Err = -2147467259 Then
  MsgBox "Connection Could Not be  established " & vbCrLf & "Log out and  try  after some  time.", vbInformation, head
 End If
 If Err = 3021 Then
  MsgBox "No Records Found", vbInformation, head
 End If

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure query_mode of Form frmbank", vbInformation, head
End Sub
Public Sub bindcontls()
Dim TF As TextBox
For Each TF In Me.TXTFIELDS
 Set TF.DataSource = adoPrimaryRS
Next

Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form frmbank", vbInformation, head
End Sub
Public Sub disablcontls()
Dim DTF As TextBox
On Error GoTo disablcontls_Error

For Each DTF In Me.TXTFIELDS
 DTF.Locked = True
Next

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form frmbank", vbInformation, head
End Sub

Public Sub ENABLCONTLS()
Dim ETF As TextBox
On Error GoTo ENABLCONTLS_Error

For Each ETF In Me.TXTFIELDS
 ETF.Locked = False
Next
TXTFIELDS(6).Locked = True 'area code field is always selection
TXTFIELDS(7).Locked = True 'area name field is always display
intervalMinutes = -1
Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form frmbank", vbInformation, head
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub lovcancel_Click()
On Error GoTo lovcancel_Click_Error

    If Ksldesc1.Table = "ig_area" Then
        LSTFRME.Visible = False
        SSTab1.Visible = True
        TXTFIELDS(5).SetFocus
        SendKeys "{Home}+{End}"
        Buttonframe.Enabled = True
    ElseIf Ksldesc1.Table = "ig_bank" Then ' for mod & del
        LSTFRME.Visible = False
        SSTab1.Visible = True
        Buttonframe.Enabled = True
        Call BUTTON_Click(10)
    End If

Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovcancel_Click of Form frmbank", vbInformation, head
End Sub

Private Sub lovok_Click()
On Error GoTo lovok_Click_Error

If Ksldesc1.Table = "ig_area" Then
    TXTFIELDS(6).Text = Ksldesc1.Code
    TXTFIELDS(7).Text = Ksldesc1.Description
    LSTFRME.Visible = False
    SSTab1.Visible = True
    TXTFIELDS(8).SetFocus
    Buttonframe.Enabled = True
ElseIf Ksldesc1.Table = "ig_bank" Then
    If Opt = "mod" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select A.*,B.NAME from ig_bank A,IG_AREA B WHERE A.AREA_CODE=B.AREA_CODE AND A.BANK_CODE='" & Ksldesc1.Code & "'", DB, adOpenDynamic, adLockBatchOptimistic
        Call bindcontls
        LSTFRME.Visible = False
        SSTab1.Visible = True
        TXTFIELDS(1).SetFocus 'bank_code cannot be modified during mod, hence setfocus to bank name -> txtfields(1)
        Buttonframe.Enabled = True
    ElseIf Opt = "del" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select A.*,B.NAME from ig_bank A,IG_AREA B WHERE A.AREA_CODE=B.AREA_CODE AND A.BANK_CODE='" & Ksldesc1.Code & "'", DB, adOpenDynamic, adLockBatchOptimistic
        Call bindcontls
        LSTFRME.Visible = False
        SSTab1.Visible = True
        Buttonframe.Enabled = True
        BUTTON(9).SetFocus
    End If
End If

Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form frmbank", vbInformation, head
End Sub


Private Sub txtFields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error
intervalMinutes = -1

If Index = 7 Then
    If Len(Trim(TXTFIELDS(6).Text)) > 0 Then
        Set Rs = New Recordset
        Rs.Open "SELECT NAME FROM IG_AREA WHERE AREA_CODE ='" & Trim(TXTFIELDS(6).Text) & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If Not Rs.RecordCount <= 0 Then
            TXTFIELDS(7).Text = Rs(0)
        End If
    End If
End If

Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_Change of Form frmbank", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    If Index = 0 Then
        stbar.Panels(2).Text = "Enter Bank Code of 4 Characters"
    End If
    If Index = 1 Then
        stbar.Panels(2).Text = "Enter Bank Name of 50 Characters"
    End If
    If Index = 2 Then
     stbar.Panels(2).Text = "Enter Branch Name of 50 Characters"
    End If
    If Index = 3 Then
     stbar.Panels(2).Text = "Enter Address1 of 30 Characters"
    End If
    If Index = 4 Then
     stbar.Panels(2).Text = "Enter Address2 of 30 Characters"
    End If
    If Index = 5 Then
     stbar.Panels(2).Text = "Enter Address3 of 30 Characters"
    End If
    If Index = 6 Then
     stbar.Panels(2).Text = "Select Area Code From The list"
    End If
    If Index = 8 Then
     stbar.Panels(2).Text = "Enter Zip Code of 10 Characters"
    End If
    If Index = 9 Then
     stbar.Panels(2).Text = "Enter Phone No. of 25 Characters"
    End If
    If Index = 10 Then
     stbar.Panels(2).Text = "Enter Fax of 15 Characters"
    End If
 
 If Record_Exists("IG_AREA") = False Then
    Call BUTTON_Click(10)
    Exit Sub
 End If
' If Index = 6 Then 'area_code from ig_area
'  SSTab1.Visible = False
'  LSTFRME.Visible = True
'  Ksldesc1.conn = db
'  Ksldesc1.Table = "ig_area"
'  Ksldesc1.listfield1 = "area_code"
'  Ksldesc1.listfield2 = "name"
'  listlb.Caption = "Area Code Listing"
'  lovok.SetFocus
'  Buttonframe.Enabled = False
' End If
End If

If Len(Trim(Opt)) = 0 Or Opt = " " Or Opt = "qry" Then
    If Not BUTTON(0).Enabled = False Then
        BUTTON(0).SetFocus
    End If
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form frmbank", vbInformation, head

End Sub

Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

    If KeyCode = vbKeyAdd And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyR And Shift = 2 Then
        Call BUTTON_Click(4)
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
    End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form frmbank", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)

'If Opt = "add" Or Opt = "mod" Then
'    For i = 0 To 10
'        If i <> 6 And i <> 7 Then
'            Call ToUpCase(TXTFIELDS(i), KeyAscii)
'        End If
'    Next
'End If
On Error GoTo txtfields_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
Call ToUpCase(TXTFIELDS(Index), KeyAscii)
 If Index = 0 Then
    Call ToUpCase(TXTFIELDS(0), KeyAscii)
    If Trim(TXTFIELDS(0).Text) = "" Then
        If KeyAscii = 32 Then
            MsgBox "Bank Code Cannot be empty", vbInformation, head
            TXTFIELDS(0).SetFocus
            SendKeys "{home}"
            SendKeys "{delete}"
          End If
    End If
 End If
 If Index = 1 Then
    If Trim(TXTFIELDS(1).Text) = "" Then
        Call ToAlpha(TXTFIELDS(1), KeyAscii)
        If KeyAscii = 32 Then
            MsgBox "Bank Name Cannot be empty", vbInformation, head
            TXTFIELDS(1).SetFocus
            SendKeys "{home}"
            SendKeys "{delete}"
        End If
    Else
        Call ToAlphaNumberName(TXTFIELDS(1), 50, KeyAscii)
    End If
 End If
 If Index = 8 Then
    Call ToNumber(TXTFIELDS(Index), KeyAscii)
    If Len(TXTFIELDS(8).Text) = 3 Then
        If KeyAscii <> 8 Then KeyAscii = 32
    End If
 End If
End If

If Opt = "add" Or Opt = "mod" Then
 If Index = 0 Then
    Call ToAlphaNumber(TXTFIELDS(0), 4, KeyAscii)
 End If
 If Index = 1 Then
    Call ToAlphaNumberName(TXTFIELDS(1), 50, KeyAscii)
 End If
 If Index = 2 Then
    Call ToAlphaNumber(TXTFIELDS(2), 50, KeyAscii)
    If Trim(TXTFIELDS(2).Text) = "" Then
        If KeyAscii = 32 Then
              MsgBox "Branch Name Cannot be empty", vbInformation, head
              TXTFIELDS(2).SetFocus
              SendKeys "{home}"
              SendKeys "{delete}"
        End If
    End If
 End If
 If Index = 3 Then
    Call ToAlphaNumber(TXTFIELDS(2), 50, KeyAscii)
    If Trim(TXTFIELDS(3).Text) = "" Then
        If KeyAscii = 32 Then
            MsgBox "Address Cannot be empty", vbInformation, head
            TXTFIELDS(3).SetFocus
            SendKeys "{home}"
            SendKeys "{delete}"
        End If
    End If
 End If


If Index = 9 Or Index = 10 Then Call ToNumPhone(TXTFIELDS(Index), KeyAscii)




End If

Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyPress of Form frmbank", vbInformation, head
  
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
  If adoPrimaryRS.RecordCount = 0 Then
        stbar.Panels(2).Text = "No Records Found"
  End If
  If Opt <> "add" Then
    stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
  End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form frmbank", vbInformation, head
End Sub
    
Private Sub txtfields_LostFocus(Index As Integer)
If Index = 6 And Opt = "add" Then
     Call LOOKUPAREA
End If
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
   If Index = 0 Then
      If Len(Trim(TXTFIELDS(0).Text)) = 0 Then
          MsgBox "Bank Code Cannot Be Empty", vbInformation, head
          Cancel = True
          Exit Sub
      End If
      If Opt <> "mod" And Opt <> "del" Then
            Set Rs = New Recordset
            Rs.Open "select * from ig_bank where bank_code='" & Trim(TXTFIELDS(0).Text) & "'", DB, adOpenDynamic, adLockBatchOptimistic
            If Rs.RecordCount > 0 Then
                MsgBox "Bank Code Already Defined", vbInformation, head
                TXTFIELDS(0).Text = ""
                Cancel = True
                Exit Sub
            End If
      End If
      End If

   If Index = 1 Then
       If Len(Trim(TXTFIELDS(1).Text)) = 0 Then
            MsgBox "Bank Name Cannot Be Empty", vbInformation, head
            Cancel = True
            Exit Sub
       End If
   End If

   If Index = 2 Then
      If Len(Trim(TXTFIELDS(2).Text)) = 0 Then
          MsgBox "Branch Name Cannot Be Empty", vbInformation, head
          Cancel = True
          Exit Sub
      End If
   End If

   If Index = 3 Then
      If Len(Trim(TXTFIELDS(3).Text)) = 0 Then
          MsgBox "Atleast Type One Line Of Address", vbInformation, head
          Cancel = True
          Exit Sub
      End If
   End If

'   If Index = 6 Then
'      If Len(Trim(txtfields(6).Text)) = 0 Then
'          MsgBox "Area Code Cannot Be Empty", vbInformation, head
'          Cancel = True
'          Exit Sub
'      End If
'   End If

End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_Validate of Form frmbank", vbInformation, head

End Sub

Sub LOOKUPAREA()
   
On Error GoTo LOOKUPAREA_Error

    LookUp.Clear = True
    LookUp.query = "SELECT AREA_CODE""Area Code"",Name ""Area Name"" FROM IG_AREA "
    LookUp.DefCol = "Area NAME"
    LookUp.ALIGN = "1500,3500"
    LookUp.Caption = "Area Code Listing"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
            TXTFIELDS(6).Text = LookUp.Fields(0)
            TXTFIELDS(7).Text = LookUp.Fields(1)
            LSTFRME.Visible = False
            SSTab1.Visible = True
            TXTFIELDS(8).SetFocus
            Buttonframe.Enabled = True
           
    Else
            LSTFRME.Visible = False
            SSTab1.Visible = True
            TXTFIELDS(5).SetFocus
            SendKeys "{Home}+{End}"
            Buttonframe.Enabled = True
    End If

Exit Sub
LOOKUPAREA_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LOOKUPAREA of Form frmbank", vbInformation, head
Screen.MousePointer = 0
End Sub

