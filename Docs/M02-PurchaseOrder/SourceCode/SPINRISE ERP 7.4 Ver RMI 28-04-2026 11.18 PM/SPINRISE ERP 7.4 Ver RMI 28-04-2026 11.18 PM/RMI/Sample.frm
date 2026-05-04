VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.OCX"
Begin VB.Form Sample 
   Caption         =   "Sample"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -30
      TabIndex        =   26
      Top             =   -120
      Width           =   9465
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Sample.frx":0000
         Height          =   510
         Index           =   4
         Left            =   2145
         Picture         =   "Sample.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Sample.frx":069F
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Sample.frx":09A9
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Sample.frx":0D3C
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Sample.frx":1046
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Sample.frx":13C0
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
         Picture         =   "Sample.frx":16CA
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "Sample.frx":1A66
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Sample.frx":1DFD
         Height          =   510
         Index           =   5
         Left            =   2670
         Picture         =   "Sample.frx":2247
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Sample.frx":25AC
         Height          =   510
         Index           =   6
         Left            =   3195
         Picture         =   "Sample.frx":29F6
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Sample.frx":2D43
         Height          =   510
         Index           =   7
         Left            =   3720
         Picture         =   "Sample.frx":318D
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Sample.frx":34DD
         Height          =   510
         Index           =   8
         Left            =   4245
         Picture         =   "Sample.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Sample.frx":3C89
         Height          =   510
         Index           =   9
         Left            =   4770
         Picture         =   "Sample.frx":3F93
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "Sample.frx":4335
         Height          =   510
         Index           =   10
         Left            =   5295
         Picture         =   "Sample.frx":463F
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Sample.frx":49BB
         Height          =   510
         Index           =   11
         Left            =   5820
         Picture         =   "Sample.frx":4E05
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit"
         Top             =   120
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   6555
         TabIndex        =   28
         Top             =   255
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
         Left            =   8085
         TabIndex        =   27
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   29
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
            TextSave        =   "02/05/2005"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "12:58 PM"
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
      Height          =   4650
      Left            =   840
      TabIndex        =   30
      Top             =   1290
      Width           =   7410
      _ExtentX        =   13070
      _ExtentY        =   8202
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "         "
      TabPicture(0)   =   "Sample.frx":519A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   4335
         Left            =   150
         TabIndex        =   37
         Top             =   60
         Width           =   7065
         Begin VB.TextBox TxtFields 
            DataField       =   "moiture"
            Height          =   330
            Index           =   14
            Left            =   4860
            MaxLength       =   25
            TabIndex        =   25
            Top             =   3930
            Width           =   1965
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "hvitest"
            Height          =   330
            Index           =   13
            Left            =   1170
            TabIndex        =   17
            Top             =   2040
            Width           =   2355
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "STAPHANDTEST"
            Height          =   330
            Index           =   12
            Left            =   1170
            TabIndex        =   16
            Top             =   1620
            Width           =   2355
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "STRENGTH"
            Height          =   330
            Index           =   11
            Left            =   1170
            MaxLength       =   25
            TabIndex        =   24
            Top             =   3930
            Width           =   1995
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "UNIRATIO"
            Height          =   330
            Index           =   10
            Left            =   4860
            MaxLength       =   25
            TabIndex        =   23
            Top             =   3540
            Width           =   1965
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "MCOEFF"
            Height          =   330
            Index           =   9
            Left            =   1170
            MaxLength       =   25
            TabIndex        =   22
            Top             =   3510
            Width           =   1995
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "TRASH_PER"
            Height          =   330
            Index           =   8
            Left            =   4890
            MaxLength       =   25
            TabIndex        =   21
            Top             =   3090
            Width           =   1965
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "MICRONAIRE"
            Height          =   330
            Index           =   7
            Left            =   1170
            MaxLength       =   25
            TabIndex        =   20
            Top             =   3120
            Width           =   1995
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "STAPLEN50"
            Height          =   330
            Index           =   6
            Left            =   4860
            MaxLength       =   25
            TabIndex        =   19
            Top             =   2670
            Width           =   1935
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "STAPLEN25"
            Height          =   330
            Index           =   5
            Left            =   1170
            MaxLength       =   25
            TabIndex        =   18
            Top             =   2640
            Width           =   1995
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "varcode"
            Height          =   330
            Index           =   4
            Left            =   1170
            TabIndex        =   15
            Top             =   1200
            Width           =   1005
         End
         Begin VB.TextBox TxtFields 
            Height          =   330
            Index           =   3
            Left            =   2220
            TabIndex        =   43
            TabStop         =   0   'False
            Top             =   1200
            Width           =   4515
         End
         Begin VB.TextBox TxtFields 
            Height          =   330
            Index           =   2
            Left            =   2220
            TabIndex        =   42
            TabStop         =   0   'False
            Top             =   810
            Width           =   4515
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "supcode"
            Height          =   330
            Index           =   1
            Left            =   1170
            TabIndex        =   14
            Top             =   810
            Width           =   1005
         End
         Begin VB.TextBox TxtFields 
            DataField       =   "SNO"
            Height          =   330
            Index           =   0
            Left            =   1170
            MaxLength       =   10
            TabIndex        =   12
            Top             =   390
            Width           =   2145
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DATE"
            Height          =   255
            Index           =   0
            Left            =   5340
            TabIndex        =   13
            Top             =   405
            Width           =   1035
            _ExtentX        =   1826
            _ExtentY        =   450
            _Version        =   393216
            BorderStyle     =   0
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Left            =   5280
            TabIndex        =   38
            Top             =   360
            Width           =   1440
            _ExtentX        =   2540
            _ExtentY        =   582
            _Version        =   393216
            Format          =   24444929
            CurrentDate     =   36831
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Moisture"
            Height          =   195
            Index           =   11
            Left            =   3930
            TabIndex        =   54
            Top             =   4035
            Width           =   600
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "HVI Test (mm)"
            Height          =   195
            Index           =   8
            Left            =   90
            TabIndex        =   53
            Top             =   2100
            Width           =   1005
         End
         Begin VB.Label Label1 
            Caption         =   "Staple Hand     Test (mm)"
            Height          =   465
            Index           =   9
            Left            =   90
            TabIndex        =   52
            Top             =   1590
            Width           =   1275
         End
         Begin VB.Label Label12 
            Caption         =   "Uniformity  Ratio"
            ForeColor       =   &H80000006&
            Height          =   405
            Index           =   6
            Left            =   3900
            TabIndex        =   51
            Top             =   3570
            Width           =   765
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Maturity Co."
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   4
            Left            =   120
            TabIndex        =   50
            Top             =   3570
            Width           =   840
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Strength"
            Height          =   195
            Index           =   10
            Left            =   120
            TabIndex        =   49
            Top             =   4005
            Width           =   600
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Trash %"
            Height          =   195
            Index           =   7
            Left            =   3900
            TabIndex        =   48
            Top             =   3195
            Width           =   570
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "MIC"
            Height          =   195
            Index           =   6
            Left            =   120
            TabIndex        =   47
            Top             =   3210
            Width           =   285
         End
         Begin VB.Label Label1 
            Caption         =   "50 % Span Length (MM)"
            Height          =   525
            Index           =   5
            Left            =   3900
            TabIndex        =   46
            Top             =   2610
            Width           =   975
         End
         Begin VB.Label Label1 
            Caption         =   "2.5 % Span Length (MM)"
            Height          =   465
            Index           =   4
            Left            =   120
            TabIndex        =   45
            Top             =   2625
            Width           =   1275
         End
         Begin VB.Line Line1 
            BorderColor     =   &H80000003&
            BorderWidth     =   2
            DrawMode        =   8  'Xor Pen
            X1              =   30
            X2              =   7050
            Y1              =   2490
            Y2              =   2490
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            Height          =   195
            Index           =   3
            Left            =   120
            TabIndex        =   44
            Top             =   1290
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   41
            Top             =   900
            Width           =   570
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Index           =   1
            Left            =   4800
            TabIndex        =   40
            Top             =   435
            Width           =   345
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Sample No."
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   39
            Top             =   428
            Width           =   825
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4680
      Left            =   630
      TabIndex        =   31
      Top             =   1260
      Visible         =   0   'False
      Width           =   7935
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "Sample.frx":51B6
         Height          =   615
         Left            =   4170
         Picture         =   "Sample.frx":5598
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   3840
         Width           =   1185
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "Sample.frx":596B
         Height          =   615
         Left            =   2430
         Picture         =   "Sample.frx":5D51
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   3855
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3135
         Left            =   480
         TabIndex        =   34
         Top             =   540
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5530
         ForeColor       =   -2147483635
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
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
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   35
         Top             =   120
         Width           =   8775
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Sample"
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
      Left            =   900
      TabIndex        =   36
      Top             =   810
      Width           =   945
   End
End
Attribute VB_Name = "Sample"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim rs As Recordset
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim FLG As String
Dim oldqty As Integer
Dim oldcontno As String
Dim oldcontdt As Date
Dim qty As Integer
Public Sub openconnection()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
End Sub
Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
    Opt = "add"
    desc.Caption = "Addition"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,MOITURE FROM RM_SAMPLE WHERE  1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    Call ENABLCONTLS
    Call bindcontls
    adoPrimaryRS.addNEW
    'Set rs = New Recordset
    'rs.Open "SELECT ISNULL(MAX(ISNULL(SNO,0)),0)+1 FROM rm_SAMPLE WHERE  DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", db, adOpenStatic
    'TxtFields(0).Text = rs(0)
    DB.BeginTrans
    Call adddelmod(BUTTON)
    BUTTON(9).ToolTipText = "Add Record"
    TxtFields(0).Locked = True
    MaskEdBox1(0).Text = pdate
    TxtFields(0).SetFocus
    TxtFields(0).Locked = False
    TxtFields(1).Locked = False
    DTPicker1.MinDate = yfdate
    Buttonframe.Enabled = True
    MaskEdBox1(0).Text = Format(pdate, "dd/mm/yyyy")
    TxtFields(2).Text = ""
    TxtFields(3).Text = ""
    FLG = "Y"
    StatusBar1.Panels(2).Text = "Addition"
    MaskEdBox1(0).Enabled = True
    
Case 1
        'Modification
        Set rs = New Recordset
        rs.Open "select count(*) from rm_SAMPLE where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "YYYY-mm-dd") & "' ", DB
        If Not rs(0) = 0 Then
            Label15.Caption = "Sample Details"
            Opt = "mod"
            desc.Caption = "Modification"
            StatusBar1.Panels(2).Text = "Select a Sample Number from the List for modification"
            KslList1.conn = connectstring
            KslList1.table = "rm_sample where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
            KslList1.listfield1 = "cast(sno as varchar)"
            KslList1.listfield2 = "convert(varchar,date,103)"
            Frame3.Visible = True
            Command6.SetFocus
            Frame3.ZOrder
            DB.BeginTrans
            Call adddelmod(BUTTON)
            Call disablcontls
            BUTTON(9).ToolTipText = "Modify"
            TxtFields(0).Locked = True
            KslList1.SetFocus
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 2
        'Deletion
        Set rs = New Recordset
        rs.Open "select count(*) from rm_SAMPLE where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' ", DB
        If Not rs(0) = 0 Then
            Label15.Caption = "Sample Details"
            desc.Caption = "Deletion"
            Opt = "del"
            StatusBar1.Panels(2).Text = "Select a Sample Number from the List for modification"
            KslList1.conn = connectstring
            KslList1.table = "rm_sample where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
            KslList1.listfield1 = "cast(sno as varchar)"
            KslList1.listfield2 = "convert(varchar,date,103)"
            Frame3.Visible = True
            Command6.SetFocus
            Frame3.ZOrder
            DB.BeginTrans
            'calling addmoddel procedure from module
            Call adddelmod(BUTTON)
            Call disablcontls
            BUTTON(9).ToolTipText = "Delete"
            TxtFields(0).Locked = True
            KslList1.SetFocus
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 3
        'Query
        Screen.MousePointer = 11
        Set repo = New Report.ReportView
        desc.Caption = "Listing"
        Set rs1 = New Recordset
        rs1.Open " SELECT a.DIVCODE,a.SNO,a.DATE,a.SUPCODE,b.slname,a.VARCODE,c.varname,a.STAPLEN25,a.STAPLEN50,a.TRASH_PER," & _
                 " a.MICRONAIRE,a.STRENGTH,a.MCOEFF,a.UNIRATIO,a.STAPHANDTEST,a.HVITEST,a.moiture " & _
                 " FROM RM_SAMPLE a,fa_slmas b,rm_var c WHERE  a.supcode=b.slcode and a.varcode=c.varcode and " & _
                 " a.date = ' " & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and a.sno='" & TxtFields(0).Text & "' and a.divcode='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
        If rs1.RecordCount <= 0 Then
        MsgBox "No record found", vbInformation
        Exit Sub
        End If
        pg = 1
        Set rsP = New Recordset
        Close
        Open "c:\red.txt" For Output As #1
            Print #1,
            Print #1, Chr(18)
            Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 80, " "); Chr(27); "F"
            Call Module2.addresshead
            Print #1,
            Print #1, Space(14); " Sample Listing" & Space(38) & "Dt: "; Format(pdate, "dd/mm/yyyy")
            Print #1, Space(14) & String(69, "-")
            Print #1, Space(14); " Sample No            : "; Padr(rs1("sno"), 8, " ")
            Print #1,
            Print #1, Space(14); " Date                 : "; Padr(Format(rs1("date"), "dd/mm/yyyy"), 10, " ")
            Print #1,
            Print #1, Space(14); " Supplier             : "; Padr(rs1("slname"), 50, " ")
            Print #1,
            Print #1, Space(14); " Variety              : "; Padr(rs1("varname"), 50, " ")
            Print #1,
            Print #1, Space(14); " Stable Hand Test(mm) : "; Padr(rs1("STAPHANDTEST"), 24, " ")
            Print #1,
            Print #1, Space(14); " HVI test(mm)         : "; Padr(rs1("HVITEST"), 24, " ")
            Print #1,
            Print #1, Space(14); " 25% Span Length(mm)  : "; Padr(rs1("STAPLEN25"), 24, " ")
            Print #1,
            Print #1, Space(14); " 50% Span Length(mm)  : "; Padr(rs1("STAPLEN50"), 24, " ")
            Print #1,
            Print #1, Space(14); " MIC                  : "; Padr(rs1("MICRONAIRE"), 24, " ")
            Print #1,
            Print #1, Space(14); " Maturity Co          : "; Padr(rs1("MCOEFF"), 24, " ")
            Print #1,
            Print #1, Space(14); " Strength             : "; Padr(rs1("STRENGTH"), 24, " ")
            Print #1,
            Print #1, Space(14); " Uniformity Rario     : "; Padr(rs1("UNIRATIO"), 24, " ")
            Print #1,
            Print #1, Space(14); " Trash %              : "; Padr(rs1("TRASH_PER"), 24, " ")
            Print #1,
            Print #1,
            Print #1, Space(14) & String(69, "-")
            Print #1, Chr(12)
         Close #1
         Open "c:\red.bat" For Output As #1
         On Error Resume Next
            Print #1, "cd\"
            Print #1, "c:"
            Print #1, "cd\"
            Print #1, "type red.txt>prn"
              repo.txtfile = "c:\red.txt"
              repo.Batfile = "c:\red.bat"
         Close #1
        Screen.MousePointer = 0
        
Case 4
        Set rs = New Recordset
        rs.Open "select count(*) from rm_SAMPLE where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "YYYY-mm-dd") & "' ", DB
        If Not rs(0) = 0 Then
            Label15.Caption = "Sample Details"
            Opt = "fnd"
            desc.Caption = "Modification"
            StatusBar1.Panels(2).Text = "Select a Sample Number from the List for modification"
            KslList1.conn = connectstring
            KslList1.table = "rm_sample where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
            KslList1.listfield1 = "cast(sno as varchar)"
            KslList1.listfield2 = "convert(varchar,date,103)"
            Frame3.Visible = True
            Command6.SetFocus
            Frame3.ZOrder
            'db.BeginTrans
            Call adddelmod(BUTTON)
            Call disablcontls
            BUTTON(9).ToolTipText = "Modify"
            TxtFields(0).Locked = True
            KslList1.SetFocus
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
       
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        StatusBar1.Panels(2).Text = "First Record"
        Call bindcontls
        'calling fir procedure from module
'        Call navi(BUTTON)
        Call FIR(BUTTON)


        Beep
        Exit Sub
GoFirstError:
        MsgBox err.description, vbInformation, head
Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        'Call NEX(BUTTON)
        'moved off the end so go back
        'adoPrimaryRS.MoveLast
        'Call bindcontls
        Beep
    End If
        ' show the current record
'        Call navi(BUTTON)
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
        MsgBox err.description, vbInformation, head

Case 7
        'Previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
    If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        
        If adoPrimaryRS.BOF Then
            StatusBar1.Panels(2).Text = "First Record"
        End If
            Call bindcontls
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
    End If

    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        'Call PREV(BUTTON)
        adoPrimaryRS.MoveFirst
    End If
        'show the current record
'        Call navi(BUTTON)
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
        MsgBox err.description, vbInformation, head

Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
        Call bindcontls
        'calling las procedure from module
'        Call navi(BUTTON)
        Call las(BUTTON)
        Beep
        Exit Sub

GoLastError:
        MsgBox err.description, vbInformation, head

Case 9
        'Save
    If Opt = "add" Or Opt = "mod" Then
        If Trim(TxtFields(1).Text) = "" Then
            MsgBox "Supplier should not be empty", vbInformation, head
            TxtFields(1).SetFocus
            Exit Sub
        End If
        If Trim(TxtFields(4).Text) = "" Then
            MsgBox "Variety should not be empty", vbInformation, head
            TxtFields(16).SetFocus
            Exit Sub
        End If
        If MaskEdBox1(0).Text = "__/__/____" Or IsDate(MaskEdBox1(0).Text) = False Then
            MsgBox "Enter the Date ", vbInformation, head
            MaskEdBox1(0).SetFocus
            Exit Sub
        End If
    End If
    If Opt = "add" Then
            If (IsNull(MaskEdBox1(0).Text) = False) And (MaskEdBox1(0).Text <> "__/__/____") Then
                adoPrimaryRS("date") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            Else
                adoPrimaryRS("date") = Null
            End If
            adoPrimaryRS("divcode") = Divcode
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Record Saved Successfully", vbInformation, head
            Screen.MousePointer = 0
            Opt = ""
     End If
    
    If Opt = "mod" Then
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Record  Modified Successfully", vbInformation, head
            Screen.MousePointer = 0
            Opt = ""
    End If
    If Opt = "del" Then
        On Error GoTo del
        DB.Execute ("delete from rm_sample where sno= " & Val(TxtFields(0).Text) & " and divcode='" & Divcode & "'")
        DB.CommitTrans
        MsgBox "Record Deleted!", vbInformation, head
        BUTTON(9).ToolTipText = "Save"
        Opt = ""
    End If
    
        'Return to query mode
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO FROM RM_SAMPLE WHERE divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Call disablcontls
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM(BUTTON, 11)
        Exit Sub
GOPRIMERROR:
    If err = -2147217900 Then
        MsgBox "Division Code Already Exists ", vbInformation, head
        GoTo gocancel
    End If
del:
    If err.Number = -2147217900 Then
        MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
        BUTTON(9).ToolTipText = "Save"
        GoTo gocancel
        Exit Sub
    End If

Case 10
gocancel:
        desc.Caption = "Query"
        Screen.MousePointer = 11
Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
        Opt = ""
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO FROM RM_SAMPLE WHERE  divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Screen.MousePointer = 0
        Call disablcontls
        'procedure unique to this form  to set grid headings
        'calling cancl procedure from module
'        Call cancl(BUTTON)
        Call NEWFORM(BUTTON, 11)
        Frame3.Visible = False
       ' Frame1.Visible = True
       ' Frame2.Visible = True
Case 11
        'EXIT
        Unload Me
    End Select
End Sub
Private Sub Command2_Click()
Frame6.Visible = False
End Sub

Private Sub Command5_Click()    'activex cancel
Frame3.Visible = False
Screen.MousePointer = 0
Buttonframe.Enabled = True
BUTTON(11).Enabled = True
FLG = "Y"
End Sub

Private Sub Command6_Click()        'activex okay
    Buttonframe.Enabled = True
        Select Case KslList1.listfield1
    Case "cast(sno as varchar)"
        BUTTON(9).Enabled = True
        If Opt <> "fnd" Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture FROM RM_SAMPLE WHERE  sno='" & KslList1.Code & "' AND date='" & Format(KslList1.description, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
        Else
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture FROM RM_SAMPLE WHERE  sno >='" & KslList1.Code & "' AND date >='" & Format(KslList1.description, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
        End If
        Call bindcontls
        Call ENABLCONTLS
        If Opt = "del" Then
          Call disablcontls
        End If
        If Opt = "fnd" Then
          Call disablcontls
          BUTTON(9).Enabled = False
           Call NEWFORM(BUTTON, 11)
           BUTTON(0).Enabled = False
           BUTTON(1).Enabled = False
           BUTTON(2).Enabled = False
           BUTTON(10).Enabled = True
        End If
        TxtFields(0).Locked = True
        TxtFields(5).SetFocus
        Frame3.Visible = False
        '
            
        
Case "slcode"
        TxtFields(1).Text = KslList1.Code
        TxtFields(2).Text = KslList1.description
        Frame3.Visible = False
        TxtFields(4).SetFocus
        FLG = "Y"
        Exit Sub
Case "varcode"
        TxtFields(4).Text = KslList1.Code
        TxtFields(3).Text = KslList1.description
        TxtFields(12).SetFocus
        FLG = "Y"
End Select
Frame3.Visible = False
End Sub

Private Sub DTPicker1_CloseUp()
MaskEdBox1(0).Text = DTPicker1.Value
End Sub

Private Sub Form_Load()
StatusBar1.Panels(1).Text = STBARmsg
  Call openconnection
  
  DATLAB.Caption = pdate
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture FROM RM_SAMPLE WHERE  DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by SNO", DB, adOpenStatic, adLockOptimistic
  If adoPrimaryRS.RecordCount <> 0 Then
     'Bind the text boxes,check boxes and option buttons to the data source
     Call bindcontls
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
     Call NEWFORM(BUTTON, 11)
     Call disablcontls
     'Exit Sub
  Else
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
       'TabStrip1.Visible = True
  End If

End Sub

Private Sub Form_Unload(Cancel As Integer)
  Opt = ""
  Screen.MousePointer = vbDefault
End Sub

Private Sub adoprimaryrs_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) And Opt <> "add" Then
        Set rs = New Recordset
        rs.Open "select slname from fa_slmas where slcode = '" & adoPrimaryRS("supcode") & "'", DB, adOpenStatic
        If rs.RecordCount <> 0 Then
              TxtFields(2).Text = rs("slname")
        Else
                TxtFields(2).Text = ""
        End If
        
        Set rs = New Recordset
        rs.Open "select varname from rm_var where varcode= '" & adoPrimaryRS("varcode") & "'", DB, adOpenStatic
        If rs.RecordCount <> 0 Then
              TxtFields(3).Text = rs("varname")
        Else
              TxtFields(3).Text = ""
        End If
        MaskEdBox1(0).Text = adoPrimaryRS("date")
End If
End Sub

'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.TxtFields
    Set oText.DataSource = adoPrimaryRS
Next
MaskEdBox1(0).DataField = "arrdate"
DTPicker1.MaxDate = pdate
DTPicker1.MinDate = yfdate
End Sub

Public Sub ENABLCONTLS()
Dim tb As TextBox
For Each tb In Me.TxtFields
    tb.Locked = False
Next
End Sub

Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.TxtFields
    tb.Locked = True
Next
End Sub




Private Sub MaskEdBox1_LostFocus(Index As Integer)
Select Case Index
  
Case 2
    If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(2).Text)) Then
        'MsgBox "Enter the date", vbInformation, head
        'MaskEdBox1(2).Text = pdate
        'MaskEdBox1(2).SetFocus
        MaskEdBox1(2).Text = "__/__/____"
    ElseIf CDate(MaskEdBox1(2).Text) > CDate(MaskEdBox1(0).Text) Then
        MsgBox "ATL Date should be before Arrival Date", vbInformation, head
        MaskEdBox1(2).Text = MaskEdBox1(0).Text
        MaskEdBox1(2).SetFocus
    End If
End If
End Select
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox1(0).Text = pdate
        MaskEdBox1(0).SetFocus
        Cancel = True
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
        MsgBox ("Project date should not be greater then processing date"), vbInformation, head
        MaskEdBox1(0).SetFocus
        Cancel = True
    End If
End If
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
Call ToUpCase(TxtFields, KeyAscii)
End Sub

Private Sub TXTFIELDS_LostFocus(Index As Integer)
If Frame3.Visible = True Then KslList1.SetFocus
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
If (Opt = "add" Or Opt = "mod") And FLG = "Y" Then
Select Case Index
Case 0
            If Opt = "add" Then
                If Trim(TxtFields(0).Text) = "" Then
                    MsgBox "Pleas Define the Sample No", vbInformation, head
                    Cancel = True
                    Exit Sub
                End If
                Set rs = New Recordset
                rs.Open "SELECT * FROM rm_SAMPLE WHERE  DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and sno ='" & TxtFields(0).Text & "'", DB, adOpenStatic
                If rs.RecordCount > 0 Then
                    MsgBox "This Number already defined", vbInformation, head
                    Cancel = True
                    Exit Sub
                End If
            End If


Case 1

        
       If Opt = "add" Then
            Set rs = New Recordset
            rs.Open "SELECT * FROM fa_slmas WHERE slcode = '" & TxtFields(1).Text & "' ", DB, adOpenStatic
            If rs.RecordCount > 0 Then
                TxtFields(1).Text = rs("slname")
            Else
                    Frame3.Visible = True
                    Frame3.ZOrder
                    Buttonframe.Enabled = True
                    KslList1.Visible = True
                    KslList1.conn = connectstring
                    KslList1.table = "fa_slmas where slcode like 'C2%'"
                    KslList1.listfield1 = "slcode"
                    KslList1.listfield2 = "SLNAME"
                    FLG = "N"
                    Label15.Caption = "Supplier Details"
                    KslList1.SetFocus
                    Exit Sub
            End If
      End If

Case 4
       If Opt = "add" Then
            Set rs = New Recordset
            rs.Open "SELECT * FROM rm_var WHERE varcode= '" & TxtFields(4).Text & "' ", DB, adOpenStatic
            If rs.RecordCount > 0 Then
                TxtFields(3).Text = rs("varname")
            Else
                Label15.Caption = "Variety Details"
                Frame3.Visible = True
                Frame3.ZOrder
                Buttonframe.Enabled = True
                KslList1.Visible = True
                KslList1.conn = connectstring
                KslList1.table = "rm_Var"
                KslList1.listfield1 = "varcode"
                KslList1.listfield2 = "varname"
                FLG = "N"
                KslList1.SetFocus
                Exit Sub
            End If
      End If
      
End Select
End If
End Sub

    Public Sub callhead(co As Integer)
    Print #1, Chr(18)
    Print #1, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
    Call Module2.addresshead
        Print #1,
    Print #1, Chr(18)
    Print #1, Space(5) & "Purchase Order Listing  For " & rs("contdt"); Space(25); "Dt. : " & Format(Date, "dd/mm/yyyy")
    Print #1, Space(5) & String(80, "-")
    End Sub
