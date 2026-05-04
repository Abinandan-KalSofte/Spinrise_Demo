VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.OCX"
Begin VB.Form FrmGledmas 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "General Ledger"
   ClientHeight    =   5085
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9075
   ForeColor       =   &H00C0C0C0&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5085
   ScaleWidth      =   9075
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   35
      Top             =   -120
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIGlmas.frx":0000
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "RMIGlmas.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   26
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIGlmas.frx":07AC
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "RMIGlmas.frx":0AB6
         Style           =   1  'Graphical
         TabIndex        =   28
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIGlmas.frx":0E32
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "RMIGlmas.frx":113C
         Style           =   1  'Graphical
         TabIndex        =   27
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIGlmas.frx":14DE
         Height          =   510
         Index           =   11
         Left            =   5295
         Picture         =   "RMIGlmas.frx":1928
         Style           =   1  'Graphical
         TabIndex        =   29
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIGlmas.frx":1CBD
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "RMIGlmas.frx":2107
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1605
         Picture         =   "RMIGlmas.frx":2457
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIGlmas.frx":27EE
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMIGlmas.frx":2AF8
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIGlmas.frx":2E72
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
         Picture         =   "RMIGlmas.frx":317C
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIGlmas.frx":3518
         Height          =   510
         Index           =   5
         Left            =   2130
         Picture         =   "RMIGlmas.frx":3962
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIGlmas.frx":3CC7
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMIGlmas.frx":3FD1
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIGlmas.frx":4364
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "RMIGlmas.frx":47AE
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Next Record"
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6555
         TabIndex        =   37
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   8085
         TabIndex        =   36
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Height          =   300
      Left            =   30
      TabIndex        =   47
      Top             =   6585
      Width           =   9555
      _ExtentX        =   16854
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
            TextSave        =   "03/04/2002"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "12:31 PM"
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
   Begin VB.Frame Frame9 
      Height          =   4455
      Left            =   1815
      TabIndex        =   31
      Top             =   1125
      Width           =   5940
      Begin VB.Frame Frame6 
         Height          =   4215
         Left            =   105
         TabIndex        =   32
         Top             =   100
         Visible         =   0   'False
         Width           =   5715
         Begin VB.CommandButton Command4 
            Caption         =   "&Cancel"
            Height          =   390
            Left            =   3240
            TabIndex        =   8
            Top             =   3400
            Width           =   975
         End
         Begin VB.CommandButton Command3 
            Caption         =   "&OK"
            Height          =   390
            Left            =   1545
            TabIndex        =   7
            Top             =   3400
            Width           =   975
         End
         Begin VB.OptionButton choi 
            Caption         =   "Expenditure"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   3
            Left            =   2040
            TabIndex        =   4
            Top             =   2130
            Width           =   1500
         End
         Begin VB.OptionButton choi 
            Caption         =   "Income"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   2
            Left            =   2040
            TabIndex        =   3
            Top             =   1665
            Width           =   1500
         End
         Begin VB.OptionButton choi 
            Caption         =   "Assets"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   1
            Left            =   2025
            TabIndex        =   2
            Top             =   1215
            Width           =   1500
         End
         Begin VB.OptionButton choi 
            Caption         =   "Liablities"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   0
            Left            =   2040
            TabIndex        =   1
            Top             =   780
            Value           =   -1  'True
            Width           =   1500
         End
         Begin VB.OptionButton choi 
            Caption         =   "Sales"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   4
            Left            =   2040
            TabIndex        =   5
            Top             =   2550
            Width           =   1500
         End
         Begin VB.OptionButton choi 
            Caption         =   "Purchase"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   5
            Left            =   2025
            TabIndex        =   6
            Top             =   2985
            Width           =   1500
         End
         Begin VB.Label Label12 
            Alignment       =   2  'Center
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Schedules"
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
            Left            =   30
            TabIndex        =   33
            Top             =   120
            Width           =   5600
         End
         Begin VB.Shape Shape1 
            BorderColor     =   &H80000002&
            BorderWidth     =   2
            Height          =   3945
            Left            =   0
            Top             =   120
            Width           =   5655
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   270
      TabIndex        =   0
      Top             =   810
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command5 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMIGlmas.frx":4AFB
         Height          =   615
         Left            =   4740
         Picture         =   "RMIGlmas.frx":4EDD
         Style           =   1  'Graphical
         TabIndex        =   49
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMIGlmas.frx":52B0
         Height          =   615
         Left            =   3000
         Picture         =   "RMIGlmas.frx":5696
         Style           =   1  'Graphical
         TabIndex        =   48
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   46
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "General Ledger Listing"
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
         TabIndex        =   45
         Top             =   120
         Width           =   8775
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3630
      Left            =   600
      TabIndex        =   34
      Top             =   1560
      Width           =   8325
      _ExtentX        =   14684
      _ExtentY        =   6403
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "General Ledger"
      TabPicture(0)   =   "RMIGlmas.frx":5A5C
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2970
         Left            =   180
         TabIndex        =   38
         Top             =   330
         Width           =   7950
         Begin VB.TextBox cfcrhead 
            DataField       =   "CRCFC"
            Height          =   330
            Left            =   3825
            TabIndex        =   18
            Text            =   " "
            Top             =   2520
            Width           =   3945
         End
         Begin VB.TextBox cfdbhead 
            DataField       =   "CRCFC"
            Height          =   330
            Left            =   3825
            TabIndex        =   16
            Text            =   " "
            Top             =   2085
            Width           =   3945
         End
         Begin VB.TextBox sccrhead 
            DataField       =   "CRCFC"
            Height          =   330
            Left            =   3825
            TabIndex        =   14
            Text            =   " "
            Top             =   1650
            Width           =   3945
         End
         Begin VB.TextBox scdbhead 
            DataField       =   "CRCFC"
            Height          =   330
            Left            =   3825
            TabIndex        =   12
            Text            =   " "
            Top             =   1215
            Width           =   3945
         End
         Begin VB.TextBox txtfields 
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0#"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            Height          =   330
            Index           =   5
            Left            =   2460
            TabIndex        =   17
            Text            =   " "
            Top             =   2520
            Width           =   1335
         End
         Begin VB.TextBox txtfields 
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0#"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            Height          =   330
            Index           =   4
            Left            =   2460
            TabIndex        =   15
            Text            =   " "
            Top             =   2085
            Width           =   1335
         End
         Begin VB.TextBox txtfields 
            DataField       =   "CRSCH"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "000#"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            Height          =   330
            Index           =   3
            Left            =   2475
            TabIndex        =   13
            Text            =   " "
            Top             =   1650
            Width           =   1320
         End
         Begin VB.TextBox txtfields 
            DataField       =   "DRSCH"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "000#"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            Height          =   330
            Index           =   2
            Left            =   2475
            TabIndex        =   11
            Text            =   " "
            Top             =   1215
            Width           =   1320
         End
         Begin VB.TextBox txtfields 
            DataField       =   "GLHEAD"
            Height          =   330
            Index           =   1
            Left            =   2475
            TabIndex        =   10
            Text            =   " "
            Top             =   810
            Width           =   5295
         End
         Begin VB.TextBox txtfields 
            DataField       =   "GLCODE"
            Height          =   330
            Index           =   0
            Left            =   2475
            MaxLength       =   6
            TabIndex        =   9
            Top             =   360
            Width           =   1275
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Credit Cash Flow Code"
            Height          =   195
            Index           =   0
            Left            =   405
            TabIndex        =   44
            Top             =   2588
            Width           =   1605
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Credit Schedule Code"
            Height          =   195
            Left            =   405
            TabIndex        =   43
            Top             =   1718
            Width           =   1545
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Debit Cash Flow Code"
            Height          =   195
            Left            =   405
            TabIndex        =   42
            Top             =   2153
            Width           =   1575
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Debit Schedule Code"
            Height          =   195
            Left            =   405
            TabIndex        =   41
            Top             =   1283
            Width           =   1515
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "A/c Head Description"
            Height          =   195
            Left            =   405
            TabIndex        =   40
            Top             =   878
            Width           =   1545
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Code"
            Height          =   195
            Index           =   0
            Left            =   405
            TabIndex        =   39
            Top             =   428
            Width           =   375
         End
      End
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "General Ledger"
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
      Left            =   675
      TabIndex        =   30
      Top             =   675
      Width           =   2010
   End
End
Attribute VB_Name = "FrmGledmas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim rs As Recordset
Dim db As Connection
Dim opt As String
'Dim sl, l, i As Integer
Dim i As Integer
'Dim found1, found2, found3 As Boolean
'Dim flg As Integer
Dim choi_index As Integer
Dim firstsch As Integer
Dim lastsch As Integer
Dim mschcode As String


Public Sub NEWFORM1(tol As Object)
'This is used for cancel  and form loadbutton.
    tol(0).Enabled = False
    tol(1).Enabled = False
    tol(2).Enabled = False
    On Error Resume Next
    tol(3).Enabled = True 'LIST
    'TOL(4).Enabled = True  'QUERY
    tol(5).Enabled = True  'FIRST
    tol(6).Enabled = True  'NEXT
    tol(7).Enabled = True  'PREVIOUS
    tol(8).Enabled = True  'LAST
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = True 'CANCEL
    tol(11).Enabled = True  'EXIT
    On Error Resume Next
End Sub
Public Sub CANCL1(tol As Object)
    tol(0).Enabled = False
    tol(1).Enabled = False 'MOD
    tol(2).Enabled = False 'DEL
    On Error Resume Next
    tol(3).Enabled = True 'LIST
    tol(8).Enabled = True  'LAST
    tol(5).Enabled = True  'FIRST
    tol(6).Enabled = True  'NEXT
    tol(7).Enabled = True  'PREVIOUS
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = True 'CANCEL
    tol(11).Enabled = True  'EXIT
End Sub

Public Sub NAVI1(tol As Object)
    tol(0).Enabled = False 'ADD
    tol(1).Enabled = False 'MOD
    tol(2).Enabled = False 'DEL
    On Error Resume Next
    tol(3).Enabled = True 'LIST
    tol(4).Enabled = False 'QUERY
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = True 'CANCEL
    tol(11).Enabled = True  'EXIT
End Sub




Public Sub displayflds()
Dim tb As TextBox
If opt = "add" Or opt = "mod" Or opt = "del" Then
End If
Frame1.Visible = True
'Frame2.Visible = True
Frame3.Visible = False
'Frame4.Visible = True
'Frame5.Visible = True
Frame9.Visible = False
Frame6.Visible = False
'For Each tb In Me.txtcr
'    tb.Text = ""
'Next
'For Each tb In Me.txtdb
'    tb.Text = ""
'Next
'    scdbhead.Text = ""
'    sccrhead.Text = ""
'    cfdbhead.Text = ""
'    cfcrhead.Text = ""
'    opdbbal.Text = ""
'    opcrbal.Text = ""
'    cudbbal.Text = ""
'    cucrbal.Text = ""
'    opbal.Text = ""
'    cubal.Text = ""
'    disc1.Caption = ""
'    disc2.Caption = ""
'    txtfields(2).Text = Format(txtfields(2).Text, "0000")
'    txtfields(3).Text = Format(txtfields(3).Text, "0000")
'    txtfields(4).Text = Format(txtfields(4).Text, "0000")
'    txtfields(5).Text = Format(txtfields(5).Text, "0000")
'to retrieve the heads
    Set rs = New Recordset
    If adoprimaryrs("drsch") = 0 Then
        scdbhead.Text = ""
    Else
        rs.Open "select schead from fa_scmas where sccode=" & adoprimaryrs("drsch") & " ", db
        scdbhead.Text = rs(0)
        rs.Close
    End If
    
    If adoprimaryrs("crsch") = 0 Then
        sccrhead.Text = ""
    Else
        rs.Open "select schead from fa_scmas where sccode=" & adoprimaryrs("crsch") & " ", db
        sccrhead.Text = rs(0)
        rs.Close
    End If
    
    If IsNull(adoprimaryrs("drcfc")) Then
        Txtfields(4).Text = ""
        cfdbhead.Text = ""
    Else
        rs.Open "select cfhead,cfcode from fa_cfmas where cfcode=" & adoprimaryrs("drcfc") & " ", db
        cfdbhead.Text = rs(0)
        Txtfields(4).Text = Format(rs(1), "00")
        rs.Close
    End If

    If IsNull(adoprimaryrs("crcfc")) Then
        Txtfields(5).Text = ""
        cfcrhead.Text = ""
    Else
        rs.Open "select cfhead,cfcode from fa_cfmas where cfcode=" & adoprimaryrs("crcfc") & " ", db
        cfcrhead.Text = rs(0)
        Txtfields(5).Text = Format(rs(1), "00")
        rs.Close
    End If
 End Sub
Private Sub BUTTON_Click(Index As Integer)
If Index = 0 Or Index = 1 Or Index = 2 Then
    'opt = "add" Or opt = "mod"
    SSTab1.Tab = 0
    'SSTab1.TabEnabled(1) = False
    Label8(2).Visible = False
    cudbbal.Visible = False
    cucrbal.Visible = False
    Label6.Visible = False
    'SSTab1.Height = 59900
    'Frame5.Height = 1005
    Txtfields(0).Enabled = False
End If

Select Case Index
Case 0
    opt = "add"
    db.BeginTrans
    desc.Caption = "Addition"
    SSTab1.Visible = False
    Frame1.Visible = False
    Frame2.Visible = False
    choi(1).Value = True
    Frame3.Visible = False
    Frame4.Visible = False
    Frame5.Visible = False
    Frame9.Visible = True
    Frame6.Visible = True
    Command3.Default = True
    Frame6.ZOrder
    
    'Calling adddelmod procedure
    Call adddelmod(BUTTON)
    BUTTON(12).Enabled = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    Call ENABLCONTLS
    Set adoprimaryrs = New Recordset
    
    'commented as tc and cacc is removed
    'adoPrimaryRS.Open "select Glcode,Glhead,Tc,isnull(Drsch,0) Drsch,isnull(Crsch,0) Crsch,Drcfc,Crcfc,Cacc from FA_GLMAS where 1=2", db, adOpenStatic, adLockBatchOptimistic
    adoprimaryrs.Open "select Glcode,Glhead,Drsch,Crsch,Drcfc,Crcfc from FA_GLMAS where 1=2", db, adOpenStatic, adLockBatchOptimistic
    
    'Bind the text boxes,check boxes and option buttons  to the data source
    adoprimaryrs.AddNew
    Call bindcontls
    Txtfields(4).Text = ""
    Txtfields(5).Text = ""
    scdbhead.Text = ""
    sccrhead.Text = ""
    cfdbhead.Text = ""
    cfcrhead.Text = ""
    opdbbal.Text = ""
    opcrbal.Text = ""
    Call disablcontls
    Txtfields(1).Locked = False
    opdbbal.Locked = False
    opcrbal.Locked = False
   
Case 1
    opt = "mod"
    choi(0).Value = True
    Screen.MousePointer = 11
    desc.Caption = "Modification"
    'SSTab1.Visible = False
'    Frame1.Visible = False
'    Frame2.Visible = False
'    Frame3.Visible = False
'    Frame4.Visible = False
'    Frame5.Visible = False
'    Frame9.Visible = True
'    Frame6.Visible = True
'    Command3.Default = True
    db.BeginTrans
    Frame6.ZOrder
    Frame3.Visible = True
    KslList1.conn = connectstring
    KslList1.table = "FA_GLMAS"
    KslList1.listfield1 = "Glcode"
    KslList1.listfield2 = "Glhead"
    Call disablcontls
    Txtfields(1).Locked = False
    Label6.Visible = False
    opdbbal.Locked = False
    opcrbal.Locked = False
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    BUTTON(12).Enabled = False
    Screen.MousePointer = 0
    
Case 2
    'Deletion
    opt = "del"
    choi(0).Value = True
    Screen.MousePointer = 11
    db.BeginTrans
    SSTab1.Visible = False
'    Frame1.Visible = False
'    Frame2.Visible = False
'    Frame3.Visible = False
'    Frame4.Visible = False
'    Frame5.Visible = False
'    Frame9.Visible = True
'    Frame6.Visible = True
'    Command3.Default = True
'    Frame6.ZOrder
'    SSTab1.Tab = 0
'    SSTab1.TabEnabled(1) = False
    desc.Caption = "Deletion"
    Frame3.Visible = True
    KslList1.conn = connectstring
    KslList1.table = "FA_GLMAS"
    KslList1.listfield1 = "Glcode"
    KslList1.listfield2 = "Glhead"
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    BUTTON(12).Enabled = False
    Call disablcontls
    Screen.MousePointer = 0

Case 3
    'list
    desc.Caption = "Listing"
    Dim f As New list
    REPINDEX = 7
    f.Show
Case 5
     'first
     desc.Caption = "Query"
     On Error GoTo gofirsterror
     adoprimaryrs.MoveFirst
     StatusBar1.Panels(2).Text = "First Record"
     'calling fir procedure from module
     Call NAVI1(BUTTON)
     Call FIR(BUTTON)
     Exit Sub
gofirsterror:
   If Err = 3021 Then
       MsgBox " No Records Found", vbInformation, head & " Message"
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
          Beep
          BUTTON(6).Enabled = False
          BUTTON(8).Enabled = False
          BUTTON(5).Enabled = True
          BUTTON(7).Enabled = True
         'Call NEX(BUTTON)
         'moved off the end so go back
          adoprimaryrs.MoveLast
          StatusBar1.Panels(2).Text = "Last Record"
      End If
      'show the current record
      Call NAVI1(BUTTON)
      Exit Sub
GoNextError:
  If Err = 3021 Then
      MsgBox " No Records Found", vbInformation, head & " Message"
  End If

Case 7
    'Previous
     desc.Caption = "Query"
     On Error GoTo Gopreverror
     If Not adoprimaryrs.BOF Then
        adoprimaryrs.MovePrevious
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoprimaryrs.BOF And adoprimaryrs.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        'Call PREV(BUTTON)
        adoprimaryrs.MoveFirst
        StatusBar1.Panels(2).Text = "First Record"
    End If
    'show the current record
    Call NAVI1(BUTTON)
    Exit Sub

Gopreverror:
  If Err = 3021 Then
      MsgBox " No Records Found", vbInformation, head & " Message"
  End If

       
Case 8
     'last
     desc.Caption = "Query"
     On Error GoTo GoLastError
     adoprimaryrs.MoveLast
     StatusBar1.Panels(2).Text = "Last Record"
     'calling las procedure from module
     Call NAVI1(BUTTON)
     Call las(BUTTON)
     Exit Sub

GoLastError:
  If Err = 3021 Then
      MsgBox " No Records Found", vbInformation, head & " Message"
  End If

  
'Case 9
'     'Save
'     If opt = "add" Or opt = "mod" Then
'        If Trim(txtfields(1)) = "" Then
'            txtfields(1).Text = ""
'            statusbar1.Panels (2).Text = "GL Head cannot be null"
'            txtfields(1).SetFocus
'            Screen.MousePointer = 0
'            Exit Sub
'        End If
'        If Trim(txtfields(2)) = "" Then
'            txtfields(2).Text = ""
'            statusbar1.Panels (2).Text = "Debit Schedule Code cannot be null"
'            Screen.MousePointer = 0
'            txtfields(2).SetFocus
'            Exit Sub
'        End If
'        If Trim(txtfields(3)) = "" Then
'            txtfields(3).Text = ""
'            statusbar1.Panels (2).Text = "Credit Schedule Code cannot be null"
'            Screen.MousePointer = 0
'            txtfields(3).SetFocus
'            Exit Sub
'        End If
'        If Trim(opdbbal.Text) = "" Then
'            opdbbal.Text = "0.00"
'        End If
'        If Trim(opcrbal.Text) = "" Then
'            opcrbal.Text = "0.00"
'        End If
'     End If
'     desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
'     Screen.MousePointer = 11
'     If opt = "add" Then
'         mschcode = Mid(txtfields(2).Text, 1, 2)
'        'On Error GoTo gosaverror
'         Set rs = New Recordset
'         rs.Open "select glcode from FA_GLMAS where substring(glcode,1,1)= '" & choi_index & "' and substring(glcode,2,2)= '" & mschcode & "'", db, adOpenStatic, adLockBatchOptimistic
'         If rs.RecordCount = 0 Then
'            sno = "001"
'         Else
'            rs.MoveLast
'            sno = CInt(Mid(rs(0), 4, 3)) + 1
'         End If
'         glcode = CStr(choi_index) & CStr(Format(mschcode, "00")) & CStr(Format(sno, "000"))
'         txtfields(0).Text = glcode
'         If Trim(txtfields(4).Text) = "" Then
'         adoPrimaryRS("drcfc") = Null
'         Else
'         adoPrimaryRS("drcfc") = CInt(txtfields(4).Text)
'         End If
'         If Trim(txtfields(5).Text) = "" Then
'         adoPrimaryRS("crcfc") = Null
'         Else
'         adoPrimaryRS("crcfc") = CInt(txtfields(5).Text)
'         End If
'         adoPrimaryRS.UpdateBatch adAffectAllChapters
'         If Val(opdbbal.Text) = 0 Then
'            If Val(opcrbal.Text) = 0 Then
'               db.Execute ("insert into FA_GLBAL values ('" & divcode & "','" & txtfields(0).Text & "','" & Format(yfdate, "yyyy") & "00" & "','','','')")
'            Else
'               db.Execute ("insert into FA_GLBAL values ('" & divcode & "','" & txtfields(0).Text & "','" & Format(yfdate, "yyyy") & "00" & "',''," & opcrbal.Text & ",'')")
'            End If
'         Else
'            If Val(opcrbal.Text) = 0 Then
'               db.Execute ("insert into FA_GLBAL values ('" & divcode & "','" & txtfields(0).Text & "','" & Format(yfdate, "yyyy") & "00" & "'," & opdbbal.Text & ",'','')")
'            Else
'               db.Execute ("insert into FA_GLBAL values ('" & divcode & "','" & txtfields(0).Text & "','" & Format(yfdate, "yyyy") & "00" & "'," & opdbbal.Text & "," & opcrbal.Text & ",'')")
'            End If
'         End If
'         db.CommitTrans
'         MsgBox "Record saved", vbInformation, head & " Message"
'     End If
'     If opt = "mod" Then
'         If Trim(txtfields(4).Text) = "" Then
'         adoPrimaryRS("drcfc") = Null
'         Else
'         adoPrimaryRS("drcfc") = CInt(txtfields(4).Text)
'         End If
'         If Trim(txtfields(5).Text) = "" Then
'         adoPrimaryRS("crcfc") = Null
'         Else
'         adoPrimaryRS("crcfc") = CInt(txtfields(5).Text)
'         End If
'        adoPrimaryRS.UpdateBatch adAffectAll
'        Dim rss As Recordset
'        Set rss = New Recordset
'        rss.Open ("select count(*) from fa_glbal where glcode='" & txtfields(0).Text & "' and yearmonth='" & Format(yfdate, "yyyy") & "00" & "' and divcode='" & divcode & "'"), db, adOpenStatic, adLockBatchOptimistic
'        If rss(0) <> 0 Then
'             db.Execute ("update FA_GLBAL  set debit=" & opdbbal.Text & ",credit=" & opcrbal.Text & " where glcode='" & txtfields(0).Text & "' and yearmonth='" & Format(yfdate, "yyyy") & "00" & "' and divcode='" & divcode & "'")
'        Else
'             db.Execute ("insert into FA_GLBAL  values ('" & divcode & "','" & txtfields(0).Text & "','" & Format(yfdate, "yyyy") & "00" & "'," & opdbbal.Text & "," & opcrbal.Text & ",'')")
'        End If
'        db.CommitTrans
'        MsgBox "Record saved", vbInformation, head & " Message"
'     End If
'     If opt = "del" Then
'        On Error GoTo deler
'        okflg = MsgBox("Are you sure?", vbYesNo, head + "Deletion Message")
'        If okflg = vbYes Then
'            db.Execute ("delete from FA_GLBAL where Glcode='" & txtfields(0).Text & "' and yearmonth='" & Format(yfdate, "yyyy") & "00" & "' and divcode='" & divcode & "'")
'            db.Execute ("delete from FA_GLMAS where Glcode='" & txtfields(0).Text & "'")
'
'            db.CommitTrans
'            MsgBox "Sucessfully deleted", vbOKOnly, head + "Deletion Message"
'        Else
'            Call BUTTON_Click(10)
'        End If
'     End If
'    'OPT = ""
'    'Return to query mode
'    Call query_mode
'    'calling NEWFORM1_cancel procedure from module (also for save)
'    Call NEWFORM1(BUTTON)
'    BUTTON(12).Enabled = True
''gosaverror:
''    If Err.Number = -2147217900 Then
''        Dim i As Integer
''        MsgBox ("This Code Already Exists Please Enter A New GL Code")
''        For i = 0 To 5
''            txtfields(i).Text = ""
''        Next i
''        txtfields(0).SetFocus
''        Screen.MousePointer = 0
''        Exit Sub
''    End If

Case 9
     'Save
     opcrbal.Text = Format(opcrbal, "###########0.00")
     opdbbal.Text = Format(opdbbal, "###########0.00")
     If opt = "add" Or opt = "mod" Then
        If Trim(Txtfields(1)) = "" Then
            Txtfields(1).Text = ""
            StatusBar1.Panels(2).Text = "GL Head cannot be null"
            Txtfields(1).SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        If Trim(Txtfields(2)) = "" Then
            Txtfields(2).Text = ""
            StatusBar1.Panels(2).Text = "Debit Schedule Code cannot be null"
            Screen.MousePointer = 0
            Txtfields(2).SetFocus
            Exit Sub
        End If
        If Trim(Txtfields(3)) = "" Then
            Txtfields(3).Text = ""
            StatusBar1.Panels(2).Text = "Credit Schedule Code cannot be null"
            Screen.MousePointer = 0
            Txtfields(3).SetFocus
            Exit Sub
        End If
        If Trim(opdbbal.Text) = "" Then
            opdbbal.Text = "0.00"
        End If
        If Trim(opcrbal.Text) = "" Then
            opcrbal.Text = "0.00"
        End If
     End If
     desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
     Screen.MousePointer = 11
     If opt = "add" Then
         mschcode = Mid(Txtfields(2).Text, 1, 2)
        'On Error GoTo gosaverror
         Set rs = New Recordset
         rs.Open "select glcode from FA_GLMAS where substring(glcode,1,1)= '" & choi_index & "' and substring(glcode,2,2)= '" & mschcode & "'", db, adOpenStatic, adLockBatchOptimistic
         If rs.RecordCount = 0 Then
            sno = "001"
         Else
            rs.MoveLast
            sno = CInt(Mid(rs(0), 4, 3)) + 1
         End If
         glcode = CStr(choi_index) & CStr(Format(mschcode, "00")) & CStr(Format(sno, "000"))
         Txtfields(0).Text = glcode
         If Trim(Txtfields(4).Text) = "" Then
         adoprimaryrs("drcfc") = Null
         Else
         adoprimaryrs("drcfc") = CInt(Txtfields(4).Text)
         End If
         If Trim(Txtfields(5).Text) = "" Then
         adoprimaryrs("crcfc") = Null
         Else
         adoprimaryrs("crcfc") = CInt(Txtfields(5).Text)
         End If
         adoprimaryrs.UpdateBatch adAffectAllChapters
         If Val(opdbbal.Text) = 0 Then
            If Val(opcrbal.Text) = 0 Then
               db.Execute ("insert into FA_GLBAL values ('" & Divcode & "','" & Txtfields(0).Text & "','" & Format(yfdate, "yyyy") & "00" & "',null,null,null)")
            Else
               db.Execute ("insert into FA_GLBAL values ('" & Divcode & "','" & Txtfields(0).Text & "','" & Format(yfdate, "yyyy") & "00" & "',''," & opcrbal.Text & ",'')")
            End If
         Else
            If Val(opcrbal.Text) = 0 Then
               db.Execute ("insert into FA_GLBAL values ('" & Divcode & "','" & Txtfields(0).Text & "','" & Format(yfdate, "yyyy") & "00" & "'," & opdbbal.Text & ",null,null)")
            Else
               db.Execute ("insert into FA_GLBAL values ('" & Divcode & "','" & Txtfields(0).Text & "','" & Format(yfdate, "yyyy") & "00" & "'," & opdbbal.Text & "," & opcrbal.Text & ",'')")
            End If
         End If
         db.CommitTrans
         MsgBox "Record saved", vbInformation, head
     End If
     If opt = "mod" Then
         If Trim(Txtfields(4).Text) = "" Then
         adoprimaryrs("drcfc") = Null
         Else
         adoprimaryrs("drcfc") = CInt(Txtfields(4).Text)
         End If
         If Trim(Txtfields(5).Text) = "" Then
         adoprimaryrs("crcfc") = Null
         Else
         adoprimaryrs("crcfc") = CInt(Txtfields(5).Text)
         End If
        adoprimaryrs.UpdateBatch adAffectAll
        Dim rss As Recordset
        Set rss = New Recordset
        rss.Open ("select count(*) from fa_glbal where glcode='" & Txtfields(0).Text & "' and yearmonth='" & Format(yfdate, "yyyy") & "00" & "' and divcode='" & Divcode & "'"), db, adOpenStatic, adLockBatchOptimistic
        If rss(0) <> 0 Then
             db.Execute ("update FA_GLBAL  set debit=" & opdbbal.Text & ",credit=" & opcrbal.Text & " where glcode='" & Txtfields(0).Text & "' and yearmonth='" & Format(yfdate, "yyyy") & "00" & "' and divcode='" & Divcode & "'")
        Else
             db.Execute ("insert into FA_GLBAL  values ('" & Divcode & "','" & Txtfields(0).Text & "','" & Format(yfdate, "yyyy") & "00" & "'," & opdbbal.Text & "," & opcrbal.Text & ",'')")
        End If
        db.CommitTrans
        MsgBox "Record saved", vbInformation, head
     End If
     If opt = "del" Then
        On Error GoTo deler
        okflg = MsgBox("Are you sure?", vbYesNo, head + "Deletion Message")
        If okflg = vbYes Then
            db.Execute ("delete from FA_GLMAS where Glcode='" & Txtfields(0).Text & "'")
            db.Execute ("delete from FA_GLBAL where Glcode='" & Txtfields(0).Text & "' and yearmonth='" & Format(yfdate, "yyyy") & "00" & "' and divcode='" & Divcode & "'")
            db.CommitTrans
            MsgBox "Sucessfully deleted", vbOKOnly, head + "Deletion Message"
        Else
            Call BUTTON_Click(10)
        End If
     End If
    'OPT = ""
    'Return to query mode
    Call query_mode
    'calling NEWFORM1_cancel procedure from module (also for save)
    Call NEWFORM1(BUTTON)
deler:
 If Err = -2147217900 Or Err = -2147467259 Then
        StatusBar1.Panels(2).Text = "This Item code cannot be deleted as dependencies exist"
        MsgBox "This Item code cannot be deleted as dependencies exist", vbCritical, head & " Deletion Message"
        Screen.MousePointer = 0
        Call query_mode
        Exit Sub
End If

Case 10
    desc.Caption = "Query"
    Screen.MousePointer = 0
    'CANCEL
    Select Case opt
    Case "mod"
        db.RollbackTrans
    Case "add"
        db.RollbackTrans
    Case "del"
        db.RollbackTrans
    Case "find"
    If adoprimaryrs.State = 1 Then
'            adoPrimaryRS.Close
    End If
    End Select
    'OPT = ""
    Call query_mode
    'calling CANCL1 procedure from module
    Call CANCL1(BUTTON)

Case 11
    'EXIT
    Unload Me
Case 12
    opt = "find"
    Frame1.Visible = True
'    Frame2.Visible = True
    Frame3.Visible = False
'    Frame4.Visible = True
'    Frame5.Visible = True
    Frame9.Visible = False
    Frame6.Visible = False
    Call adddelmod(BUTTON)
    BUTTON(12).Enabled = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = True
    'Call ENABLCONTLS
''    Set adoPrimaryRS = New Recordset
''    adoPrimaryRS.Open "select Glcode,Glhead,Tc,isnull(Drsch,0) Drsch,isnull(Crsch,0) Crsch,Drcfc,Crcfc,Cacc from FA_GLMAS where 1=2", db, adOpenStatic, adLockBatchOptimistic
'    Call bindcontls
    Txtfields(4).Text = ""
    Txtfields(5).Text = ""
    scdbhead.Text = ""
    sccrhead.Text = ""
    cfdbhead.Text = ""
    cfcrhead.Text = ""
'    opdbbal.Text = ""
'    opcrbal.Text = ""
'    cudbbal.Text = ""
'    cucrbal.Text = ""
    Call disablcontls
Dim tb As TextBox
For Each tb In Me.Txtfields
    tb.Text = ""
Next
    Txtfields(0).Locked = False
    Txtfields(1).Locked = False
    'Call disablcontls
    Txtfields(0).SetFocus
    
    
End Select

End Sub







Private Sub cfcrhead_Click()
StatusBar1.Panels(2).Text = "Credit Cash Flow code Description"
End Sub


Private Sub cfdbhead_Click()
StatusBar1.Panels(2).Text = "Debit Cash Flow Code Description"
End Sub

Private Sub codelist1_DblClick()
Call Command1_Click
End Sub

Private Sub Command1_Click()
Frame3.Visible = False
   SSTab1.Visible = True
   Label6.Visible = True
    Select Case KslList1.listfield1
    Case "cast(sccode as varchar)"
        If opt = "mod" Or opt = "add" Then
            Txtfields(i).Text = Format(KslList1.Code, "0000")
            If i = 2 Then
                scdbhead.Text = KslList1.description
                StatusBar1.Panels(2).Text = "Press Tab key to Select a Credit Schedule code "
                scdbhead.SetFocus
            ElseIf i = 3 Then
                sccrhead.Text = KslList1.description
                StatusBar1.Panels(2).Text = "Press Tab key to Select a Debit Cash Flow code"
                sccrhead.SetFocus
            End If
        End If
            
        Case "cast(cfcode as varchar)"
            If opt = "add" Or opt = "mod" Then
                Txtfields(i).Text = Format(KslList1.Code, "00")
                If i = 4 Then
                    cfdbhead.Text = KslList1.description
                    StatusBar1.Panels(2).Text = "Press Tab key to Select a Credit Cash Flow code"
                    cfdbhead.SetFocus
                ElseIf i = 5 Then
                    cfcrhead.Text = KslList1.description
                    StatusBar1.Panels(2).Text = "Press Tab key to Enter the Year Opening Balance"
                    opdbbal.SetFocus
                End If
            End If
        
        Case "Glcode"
             If opt = "mod" Or opt = "del" Or opt = "find" Then
                    'db.BeginTrans
                    BUTTON(9).Enabled = True
                    BUTTON(10).Enabled = True
                    Set adoprimaryrs = New Recordset
                    
                    'commented as tc & cacc is removed
                    'adoPrimaryRS.Open "select Glcode,Glhead,Tc,isnull(Drsch,0) Drsch,isnull(Crsch,0) Crsch,Drcfc,Crcfc,Cacc from FA_GLMAS WHERE Glcode = '" & ksllist1.code & "'", db, adOpenStatic, adLockBatchOptimistic
                    adoprimaryrs.Open "select Glcode,Glhead,Drsch,Crsch,Drcfc,Crcfc from FA_GLMAS WHERE Glcode = '" & KslList1.Code & "'", db, adOpenStatic, adLockBatchOptimistic
                    
                    
                    Call bindcontls
                    If opt = "mod" Then StatusBar1.Panels(2).Text = "Please Press Save button to Update the changes else press Cancel Button"
                    If opt = "del" Then StatusBar1.Panels(2).Text = "Please Press Save button to Delete the Record else press Cancel Button"
                    If opt = "find" Then
                        StatusBar1.Panels(2).Text = "The Details of GLcode " & "'" & KslList1.Code & "'"
                        BUTTON(9).Enabled = False
                    End If
             End If
            
    End Select
'End If
 
'If opt = "mod" Then
'    Set adoPrimaryRS = New Recordset
'    adoPrimaryRS.Open "select Glcode,Glhead,Tc,Drsch,Crsch,Drcfc,Crcfc,Cacc from FA_GLMAS WHERE Glcode = '" & ksllist1.code & "'", db, adOpenStatic, adLockBatchOptimistic
'    Call bindcontls
'    Call ENABLCONTLS
'    txtfields(0).Locked = True
'    txtfields(2).Locked = True
'    txtfields(3).Locked = True
'    txtfields(4).Locked = True
'    txtfields(5).Locked = True
'End If
End Sub

Private Sub command2_Click()
If (opt = "add") Or (opt = "mod" And SSTab1.Visible = True) Then
If StatusBar1.Panels(2).Text = "Please Select a Schedule Code" And Txtfields(2).Text <> Empty And (opt = "add" Or opt = "mod") Then
StatusBar1.Panels(2).Text = "Press Tab key to Select a Credit Schedule code"
ElseIf StatusBar1.Panels(2).Text = "Please Select a Schedule code" And Txtfields(3).Text <> Empty And (opt = "add" Or opt = "mod") Then
StatusBar1.Panels(2).Text = "Press Tab key to Select a Debit cash flow code"
ElseIf StatusBar1.Panels(2).Text = "Press Cancel for the schedule '00'" And (opt = "add" Or opt = "mod") Then
StatusBar1.Panels(2).Text = "Press Save Button For Save the Record else Press Cancel button"
End If
End If 'for add mode

If opt = "mod" Or opt = "del" Then
Frame3.Visible = False
SSTab1.Visible = True
Label6.Visible = True
db.RollbackTrans
    Call query_mode
    'calling NEWFORM1_cancel procedure from module (also for save)
    Call NEWFORM1(BUTTON)
    BUTTON(12).Enabled = True
 
End If
Frame3.Visible = False
End Sub

Private Sub Command3_Click()
    'display required tc limit
If opt = "add" Then
    Label6.Visible = True
    'db.BeginTrans
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    If choi(0).Value = True Then
       choi_index = 1
       firstsch = 0
       lastsch = llisch
    ElseIf choi(1).Value = True Then
       choi_index = 2
       firstsch = llisch + 1
       lastsch = lassch
    ElseIf choi(2).Value = True Then
       choi_index = 3
       firstsch = lassch + 1
       lastsch = linsch
    ElseIf choi(3).Value = True Then
       choi_index = 4
       firstsch = linsch + 1
       lastsch = lexsch
    ElseIf choi(4).Value = True Then
       choi_index = 5
       firstsch = lexsch + 1
       lastsch = lsasch
    ElseIf choi(5).Value = True Then
       choi_index = 6
       firstsch = lsasch + 1
       lastsch = lpusch
    End If
    'MsgBox ("Enter Debit Schedule code between " & firstsch & " and " & lastsch)
    'statusbar1.Panels (2).Text = "Please Enter Debit Schedule code between " & firstsch & " and " & lastsch
    SSTab1.Visible = True
    Frame1.Visible = True
    Frame2.Visible = True
    Frame3.Visible = False
    Frame4.Visible = True
    Frame5.Visible = True
    Frame9.Visible = False
    Frame6.Visible = False
    Txtfields(1).SetFocus
 End If 'for add mode
 
 If opt = "mod" Or opt = "del" Then
    Frame9.Visible = False
    Frame6.Visible = False
    Frame3.Visible = True
    Command1.Default = True
    KslList1.conn = connectstring
    If choi(0).Value = True Then
        KslList1.table = "FA_GLMAS where substring(Glcode,1,1)=1"
    ElseIf choi(1).Value = True Then
        KslList1.table = "FA_GLMAS where substring(Glcode,1,1)=2"
    ElseIf choi(2).Value = True Then
        KslList1.table = "FA_GLMAS where substring(Glcode,1,1)=3"
    ElseIf choi(3).Value = True Then
        KslList1.table = "FA_GLMAS where substring(Glcode,1,1)=4"
    ElseIf choi(4).Value = True Then
        KslList1.table = "FA_GLMAS where substring(Glcode,1,1)=5"
    ElseIf choi(5).Value = True Then
        KslList1.table = "FA_GLMAS where substring(Glcode,1,1)=6"
    End If
        KslList1.listfield1 = "Glcode"
        KslList1.listfield2 = "Glhead"
 End If 'for mod mode
End Sub

Private Sub command4_Click()
  SSTab1.Visible = True
  Label6.Visible = True
  db.RollbackTrans
  Frame9.Visible = False
  Frame6.Visible = False
  Call query_mode
End Sub

Private Sub Command5_Click()
    If (opt = "add") Or (opt = "mod" And SSTab1.Visible = True) Then
    If StatusBar1.Panels(2).Text = "Please Select a Schedule Code" And Txtfields(2).Text <> Empty And (opt = "add" Or opt = "mod") Then
    StatusBar1.Panels(2).Text = "Press Tab key to Select a Credit Schedule code"
    ElseIf StatusBar1.Panels(2).Text = "Please Select a Schedule code" And Txtfields(3).Text <> Empty And (opt = "add" Or opt = "mod") Then
    StatusBar1.Panels(2).Text = "Press Tab key to Select a Debit cash flow code"
    ElseIf StatusBar1.Panels(2).Text = "Press Cancel for the schedule '00'" And (opt = "add" Or opt = "mod") Then
    StatusBar1.Panels(2).Text = "Press Save Button For Save the Record else Press Cancel button"
    End If
    End If 'for add mode
    
    If opt = "mod" Or opt = "del" Then
    Frame3.Visible = False
    SSTab1.Visible = True
    Label6.Visible = True
    db.RollbackTrans
        Call query_mode
        'calling NEWFORM1_cancel procedure from module (also for save)
        Call NEWFORM1(BUTTON)
        BUTTON(12).Enabled = True
     
    End If
    Frame3.Visible = False
End Sub

Private Sub Command6_Click()
Frame3.Visible = False
   SSTab1.Visible = True
   Label6.Visible = True
    Select Case KslList1.listfield1
    Case "cast(sccode as varchar)"
        If opt = "mod" Or opt = "add" Then
            Txtfields(i).Text = Format(KslList1.Code, "0000")
            If i = 2 Then
                scdbhead.Text = KslList1.description
                StatusBar1.Panels(2).Text = "Press Tab key to Select a Credit Schedule code "
                scdbhead.SetFocus
            ElseIf i = 3 Then
                sccrhead.Text = KslList1.description
                StatusBar1.Panels(2).Text = "Press Tab key to Select a Debit Cash Flow code"
                sccrhead.SetFocus
            End If
        End If
            
        Case "cast(cfcode as varchar)"
            If opt = "add" Or opt = "mod" Then
                Txtfields(i).Text = Format(KslList1.Code, "00")
                If i = 4 Then
                    cfdbhead.Text = KslList1.description
                    StatusBar1.Panels(2).Text = "Press Tab key to Select a Credit Cash Flow code"
                    cfdbhead.SetFocus
                ElseIf i = 5 Then
                    cfcrhead.Text = KslList1.description
                    StatusBar1.Panels(2).Text = "Press Tab key to Enter the Year Opening Balance"
                    opdbbal.SetFocus
                End If
            End If
        
        Case "Glcode"
             If opt = "mod" Or opt = "del" Or opt = "find" Then
                    'db.BeginTrans
                    BUTTON(9).Enabled = True
                    BUTTON(10).Enabled = True
                    Set adoprimaryrs = New Recordset
                    
                    'commented as tc & cacc is removed
                    'adoPrimaryRS.Open "select Glcode,Glhead,Tc,isnull(Drsch,0) Drsch,isnull(Crsch,0) Crsch,Drcfc,Crcfc,Cacc from FA_GLMAS WHERE Glcode = '" & ksllist1.code & "'", db, adOpenStatic, adLockBatchOptimistic
                    adoprimaryrs.Open "select Glcode,Glhead,Drsch,Crsch,Drcfc,Crcfc from FA_GLMAS WHERE Glcode = '" & KslList1.Code & "'", db, adOpenStatic, adLockBatchOptimistic
                    
                    
                    Call bindcontls
                    If opt = "mod" Then StatusBar1.Panels(2).Text = "Please Press Save button to Update the changes else press Cancel Button"
                    If opt = "del" Then StatusBar1.Panels(2).Text = "Please Press Save button to Delete the Record else press Cancel Button"
                    If opt = "find" Then
                        StatusBar1.Panels(2).Text = "The Details of GLcode " & "'" & KslList1.Code & "'"
                        BUTTON(9).Enabled = False
                    End If
             End If
            
    End Select
'End If
 
'If opt = "mod" Then
'    Set adoPrimaryRS = New Recordset
'    adoPrimaryRS.Open "select Glcode,Glhead,Tc,Drsch,Crsch,Drcfc,Crcfc,Cacc from FA_GLMAS WHERE Glcode = '" & ksllist1.code & "'", db, adOpenStatic, adLockBatchOptimistic
'    Call bindcontls
'    Call ENABLCONTLS
'    txtfields(0).Locked = True
'    txtfields(2).Locked = True
'    txtfields(3).Locked = True
'    txtfields(4).Locked = True
'    txtfields(5).Locked = True
'End If
End Sub

Private Sub Form_Load()
StatusBar1.Panels(1).Text = STBARmsg
  Set db = New Connection
  db.CursorLocation = adUseClient
  db.Open connectstring
  opt = "qry"
  Call query_mode
  End Sub

Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
End Sub

Private Sub adoprimaryrs_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  If opt <> "add" Then
    StatusBar1.Panels(2).Text = "Record: " & CStr(adoprimaryrs.AbsolutePosition)
    If Not (adoprimaryrs.EOF Or adoprimaryrs.BOF) Then
          Call displayflds
    End If
  End If
End Sub

Public Sub bindcontls()
  Dim oText As TextBox
  'Binding  the text boxes to the data source
  'For Each oText In Me.txtfields
        Set Txtfields(0).DataSource = adoprimaryrs
        Set Txtfields(1).DataSource = adoprimaryrs
        Set Txtfields(2).DataSource = adoprimaryrs
        Set Txtfields(3).DataSource = adoprimaryrs
  'Next
  'For Each otext In Me.txtbalflds
  'Set otext.DataSource = adoPrimaryRS
  'Next
End Sub

Public Sub ENABLCONTLS()
Dim tb As TextBox
For Each tb In Me.Txtfields
    tb.Locked = False
Next
'For Each tb In Me.txtbalflds
'    tb.Locked = False
'Next
'For Each tb In Me.txtcr
'    tb.Locked = False
'Next
'For Each tb In Me.txtdb
'    tb.Locked = False
'Next
If opt = "add" Then
        For Each oOption In Me.choi
            oOption.Value = False
        Next
        choi(0).Value = True
End If
scdbhead.Locked = False
sccrhead.Locked = False
cfdbhead.Locked = False
cfcrhead.Locked = False
opdbbal.Locked = False
opcrbal.Locked = False
cudbbal.Locked = False
cucrbal.Locked = False
opbal.Locked = False
cubal.Locked = False
End Sub
Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.Txtfields
    tb.Locked = True
Next
'For Each tb In Me.txtbalflds
'    tb.Locked = True
'Next
'For Each tb In Me.txtcr
'    tb.Locked = True
'Next
'For Each tb In Me.txtdb
'    tb.Locked = True
'Next
scdbhead.Locked = True
sccrhead.Locked = True
cfdbhead.Locked = True
cfcrhead.Locked = True
'opdbbal.Locked = True
'opcrbal.Locked = True
'cudbbal.Locked = True
'cucrbal.Locked = True
'opbal.Locked = True
'cubal.Locked = True

End Sub

Private Sub opcrbal_Click()
'opdbbal.Text = "0.00"
End Sub

Private Sub opcrbal_GotFocus()
If opt = "mod" Or opt = "add" Then
    If Trim(Txtfields(2)) = "" Then
        StatusBar1.Panels(2).Text = "Debit Schedule cannot be empty"
        MsgBox "Debit Schedule cannot be empty", vbInformation, head + "Insertion Error Message"
        Txtfields(2).Text = ""
        Txtfields(2).SetFocus
    ElseIf Trim(Txtfields(3)) = "" Then
        Txtfields(3).Text = ""
        StatusBar1.Panels(2).Text = "Credit Schedule cannot be empty"
        MsgBox "Credit Schedule cannot be empty", vbInformation, head + "Insertion Error Message"
        Txtfields(3).SetFocus
    Else
        StatusBar1.Panels(2).Text = "Please Enter the Year Opening Credit Balance"
    End If
End If
If opdbbal.Text = "" Or Val(opdbbal.Text) = 0 Then
   opdbbal.Text = "0.00"
Else
   BUTTON(9).SetFocus
End If
'opcrbal.Text = ""
'If Not (opdbbal.Text = "") Or Not (opdbbal.Text = "0.00") Then
'Else: opdbbal.Text = "0.00"
'End If
End Sub

'Private Sub opcrbal_KeyPress(KeyAscii As Integer)
'maxlen = 10
'ToNumber opcrbal, maxlen, KeyAscii
'End Sub

Private Sub opcrbal_LostFocus()
If opt <> " " Then
      If opcrbal.Text = "" Then
         opcrbal.Text = "0.00"
      End If
      BUTTON(9).SetFocus
End If
'If Trim(opcrbal.Text) = "" Then
'   opcrbal.Text = "0.00"
''Else
''    opdbbal.Text = "0.00"
'End If
'BUTTON(9).SetFocus
End Sub

Private Sub opdbbal_Click()
'opcrbal.Text = "0.00"
End Sub

Private Sub opdbbal_GotFocus()
If opt = "add" Or opt = "mod" Then
    If Trim(Txtfields(2)) = "" Then
        StatusBar1.Panels(2).Text = "Debit Schedule code cannot be empty"
        MsgBox "Debit Schedule code cannot be empty", vbInformation, head + "Insertion Error Message"
        Txtfields(2).Text = ""
        Txtfields(2).SetFocus
    ElseIf Trim(Txtfields(3)) = "" Then
        Txtfields(3).Text = ""
        StatusBar1.Panels(2).Text = "Credit Schedule code cannot be empty"
        MsgBox "Credit Schedule code cannot be empty", vbInformation, head + "Insertion Error Message"
        Txtfields(3).SetFocus
    Else
        StatusBar1.Panels(2).Text = "Please Enter the Year Opening Debit Balance"
    End If
End If
End Sub

Private Sub picStatBox_Click()

End Sub

'Private Sub opdbbal_KeyPress(KeyAscii As Integer)
'maxlen = 10
'ToNumber opdbbal, maxlen, KeyAscii
'End Sub

Private Sub sccrhead_Click()
StatusBar1.Panels(2).Text = "Credit Schedule code Description"
End Sub

Private Sub scdbhead_Click()
StatusBar1.Panels(2).Text = "Debit Schedule Code Description"
End Sub




Private Sub txtfields_Click(Index As Integer)
Call txtfields_GotFocus(Index)
End Sub

Private Sub txtfields_GotFocus(Index As Integer)
Select Case Index
Case 1
        StatusBar1.Panels(2).Text = "TC Description"
Case 2
    If opt = "add" Or opt = "mod" Then
    If Trim(Txtfields(1)) = "" Then
        StatusBar1.Panels(2).Text = "GLhead cannot be empty"
        Txtfields(1).Text = ""
        Txtfields(1).SetFocus
        Exit Sub
    Else
        Txtfields(1).Text = UCase(Txtfields(1).Text)
    End If
    End If
    If opt = "add" Or opt = "mod" Then
        i = Index
        Frame3.Visible = True
        Command1.Default = True
        Label3.Caption = "Schedule Code Listing"
        KslList1.conn = connectstring
        KslList1.table = "FA_SCMAS"
        KslList1.listfield1 = "cast(sccode as varchar)"
        KslList1.listfield2 = "schead"
        Frame3.ZOrder
        StatusBar1.Panels(2).Text = "Please Select a Schedule Code"
    End If
    

Case 3
    If opt = "add" Or opt = "mod" Then
        If Trim(Txtfields(2)) = "" Then
        StatusBar1.Panels(2).Text = "Debit Schedule code cannot be empty  "
        MsgBox "Debit Schedule code cannot be empty  ", vbInformation, head + "Insertion Error Message"
        Txtfields(2).SetFocus
        Exit Sub
        End If
        i = Index
        Frame3.Visible = True
        Command1.Default = True
        Label3.Caption = "Schedule Code Listing"
        KslList1.conn = connectstring
        KslList1.table = "FA_SCMAS"
        KslList1.listfield1 = "cast(sccode as varchar)"
        KslList1.listfield2 = "schead"
        StatusBar1.Panels(2).Text = "Please Select a Schedule code"
    End If

Case 4
    If opt = "add" Or opt = "mod" Then
        If Trim(Txtfields(2)) = "" Then
        StatusBar1.Panels(2).Text = "Debit Schedule code cannot be empty"
        MsgBox "Debit Schedule code cannot be empty  ", vbInformation, head + "Insertion Error Message"
        Txtfields(2).SetFocus
        Exit Sub
        End If
        i = Index
        Frame3.Visible = True
        Command1.Default = True
        StatusBar1.Panels(2).Text = "Press Cancel for the schedule '00'"
        KslList1.conn = connectstring
        KslList1.table = "FA_CFMAS"
        KslList1.listfield1 = "cast(cfcode as varchar)"
        KslList1.listfield2 = "cfhead"
        Label3.Caption = "Cash/Fund Flow Code Listing"
    End If

Case 5
    If opt = "add" Or opt = "mod" Then
        If Trim(Txtfields(2)) = "" Then
        StatusBar1.Panels(2).Text = "Debit Schedule code cannot be empty"
        MsgBox "Debit Schedule code cannot be empty  ", vbInformation, head + "Insertion Error Message"
        Txtfields(2).SetFocus
        Exit Sub
        End If
        i = Index
        Frame3.Visible = True
        Command1.Default = True
        StatusBar1.Panels(2).Text = "Press Cancel for the schedule '00'"
        KslList1.conn = connectstring
        KslList1.table = "FA_CFMAS"
        KslList1.listfield1 = "cast(cfcode as varchar)"
        KslList1.listfield2 = "cfhead"
        Label3.Caption = "Cash/Fund Flow Code Listing"
    End If
End Select
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
If Index = 1 Then
        ToAlphaNumber Txtfields(1), 35, KeyAscii
        If Len(Txtfields(1).Text) = 35 And KeyAscii <> 8 Then KeyAscii = 0
        End If
End Sub

'Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
'If opt = "add" Then
'    Select Case Index
'    Case 2
'        txtfields(2).Text = ""
'        Call txtFields_GotFocus(2)
'    Case 3
'        txtfields(3).Text = ""
'        Call txtFields_GotFocus(3)
'    Case 4
'        txtfields(4).Text = ""
'        Call txtFields_GotFocus(4)
'    Case 5
'        txtfields(5).Text = ""
'        Call txtFields_GotFocus(5)
'    End Select
'End If
'End Sub

'Private Sub txtfields_KeyPress(Index As Integer, KeyAscii As Integer)
'Select Case Index
'Case 0
'    If l = 0 Or txtfields(0) = "" Then
'        If KeyAscii > 48 And KeyAscii < 53 Then
'            l = 1
'        Else
'            If KeyAscii <> 8 Or KeyAscii <> 46 Then
'                KeyAscii = 0
'                MsgBox ("The First Character Should Be In The Range 1..4")
'                l = 0
'            End If
'        End If
'    End If
'End Select
'If opt = "add" Then
'    Select Case Index
'    Case 2
'        KeyAscii = 0
'        txtfields(2).Text = ""
'    Case 3
'        KeyAscii = 0
'        txtfields(3).Text = ""
'    Case 4
'        KeyAscii = 0
'        txtfields(4).Text = ""
'    Case 5
'        KeyAscii = 0
'        txtfields(5).Text = ""
''        Call txtFields_GotFocus(2)
'    End Select
'End If
'End Sub

Private Sub txtFields_LostFocus(Index As Integer)
If opt = "add" Or opt = "mod" Then
Select Case Index
Case 2, 3, 4, 5
'    If Trim(txtfields(2)) = "" Then
'        MsgBox "Debit Schedule code cannot be empty  ", vbCritical, head + "Insertion Error Message"
'        txtfields(2).SetFocus
'    End If
  
End Select
End If
If opt = "find" Then

                    'BUTTON(9).Enabled = True
                    'BUTTON(10).Enabled = True
                    If Trim(Txtfields(0).Text) <> "" Then
                    Set adoprimaryrs = New Recordset
                    
                    'commented as tc and cacc is removed
                    'adoPrimaryRS.Open "select Glcode,Glhead,Tc,isnull(Drsch,0) Drsch,isnull(Crsch,0) Crsch,Drcfc,Crcfc,Cacc from FA_GLMAS WHERE Glcode = '" & txtfields(0).Text & "'", db, adOpenStatic, adLockBatchOptimistic
                    adoprimaryrs.Open "select Glcode,Glhead,isnull(Drsch,0) Drsch,isnull(Crsch,0) Crsch,Drcfc,Crcfc from FA_GLMAS WHERE Glcode = '" & Txtfields(0).Text & "'", db, adOpenStatic, adLockBatchOptimistic
                    
                    If adoprimaryrs.RecordCount <> 0 Then
                        Call bindcontls
                        StatusBar1.Panels(2).Text = "The Details of GLcode " & "'" & Txtfields(0).Text & "'"
                    Else
                        Frame3.Visible = True
                        KslList1.conn = connectstring
                        KslList1.table = "FA_GLMAS"
                        KslList1.listfield1 = "Glcode"
                        KslList1.listfield2 = "Glhead"
                    End If
                    Else
                        Frame3.Visible = True
                        KslList1.conn = connectstring
                        KslList1.table = "FA_GLMAS"
                        KslList1.listfield1 = "Glcode"
                        KslList1.listfield2 = "Glhead"
                    End If
End If
End Sub
Public Sub query_mode()

    SSTab1.Tab = 0
    'SSTab1.TabEnabled(1) = True
    'Label8(2).Visible = True
    'cudbbal.Visible = True
    'cucrbal.Visible = True
    'SSTab1.Height = 44663.91
    'SSTab1.Height = 62000
    'Frame5.Height = 1365
    Txtfields(0).Enabled = True

If Not opt = " " Then
    opt = " "
    Call NEWFORM1(BUTTON)
    'BUTTON(12).Enabled = True
    desc.Caption = "Query"
    DATLAB.Caption = Date 'This variable is declared as global to show the date
    On Error GoTo ER1
    Set adoprimaryrs = New Recordset
    
    'commented tc and cacc is removed
    'adoPrimaryRS.Open "select Glcode,Glhead,isnull(Drsch,0) Drsch,isnull(Crsch,0) Crsch,Drcfc,Crcfc,Cacc from FA_GLMAS order by glcode", db, adOpenStatic, adLockOptimistic
     adoprimaryrs.Open "select Glcode,Glhead,Drsch,Crsch,Drcfc,Crcfc from FA_GLMAS order by glcode", db, adOpenStatic, adLockOptimistic
    
    'Bind the text boxes,check boxes and option buttons to the data source
    Call bindcontls
    Call displayflds
    
End If
    opt = " "
    Call NEWFORM1(BUTTON)
    'BUTTON(12).Enabled = True
    'Calling NEWFORM1 procedure from Module to disable buttons
    StatusBar1.Panels(2).Text = "Record: " & CStr(adoprimaryrs.AbsolutePosition)
    Call disablcontls
    Screen.MousePointer = 0
    Exit Sub
ER1:
If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head + "Message"
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head + "Connection Message"
End If
End Sub

