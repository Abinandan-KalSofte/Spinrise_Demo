VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form DyingIss 
   Caption         =   "Sample"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10005
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   10005
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame3 
      Height          =   7665
      Left            =   360
      TabIndex        =   26
      Top             =   19440
      Visible         =   0   'False
      Width           =   9885
      Begin VB.Frame Frame2 
         Height          =   615
         Left            =   225
         TabIndex        =   40
         Top             =   4890
         Width           =   8880
         Begin VB.CommandButton Command6 
            Caption         =   "&OK"
            Default         =   -1  'True
            DownPicture     =   "DyingIssue.frx":0000
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   2040
            Picture         =   "DyingIssue.frx":03E6
            Style           =   1  'Graphical
            TabIndex        =   39
            Top             =   120
            Width           =   1185
         End
         Begin VB.CommandButton Command5 
            Cancel          =   -1  'True
            Caption         =   "&Cancel"
            DownPicture     =   "DyingIssue.frx":07AC
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   4080
            Picture         =   "DyingIssue.frx":0B8E
            Style           =   1  'Graphical
            TabIndex        =   41
            Top             =   120
            Width           =   1185
         End
      End
      Begin listacx.codelist ksllist1A 
         Height          =   2730
         Left            =   465
         TabIndex        =   27
         Top             =   645
         Width           =   2520
         _ExtentX        =   4445
         _ExtentY        =   4815
         caption         =   ""
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
         Left            =   480
         TabIndex        =   34
         Top             =   600
         Width           =   9780
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   -30
      TabIndex        =   21
      Top             =   -75
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DyingIssue.frx":0F61
         Height          =   550
         Index           =   8
         Left            =   3720
         Picture         =   "DyingIssue.frx":13AB
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Last Record (Ctrl E)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DyingIssue.frx":170D
         Height          =   550
         Index           =   10
         Left            =   4770
         Picture         =   "DyingIssue.frx":1A17
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Cancel (Ctrl Z)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DyingIssue.frx":1D93
         Height          =   550
         Index           =   9
         Left            =   4245
         Picture         =   "DyingIssue.frx":209D
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DyingIssue.frx":243F
         Height          =   550
         Index           =   11
         Left            =   5295
         Picture         =   "DyingIssue.frx":2889
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DyingIssue.frx":2C1E
         Height          =   550
         Index           =   7
         Left            =   3195
         Picture         =   "DyingIssue.frx":3068
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1620
         Picture         =   "DyingIssue.frx":33B8
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DyingIssue.frx":374F
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "DyingIssue.frx":3A59
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DyingIssue.frx":3DD3
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   2
         Left            =   1095
         Picture         =   "DyingIssue.frx":40DD
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DyingIssue.frx":4479
         Height          =   550
         Index           =   5
         Left            =   2145
         Picture         =   "DyingIssue.frx":48C3
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DyingIssue.frx":4C28
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "DyingIssue.frx":4F32
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DyingIssue.frx":52C5
         Height          =   550
         Index           =   6
         Left            =   2670
         Picture         =   "DyingIssue.frx":570F
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Next Record (Ctrl N)"
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
         TabIndex        =   24
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
         TabIndex        =   23
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   33
      Top             =   2895
      Width           =   10005
      _ExtentX        =   17648
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
            TextSave        =   "07/12/2008"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "2:50 PM"
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
      Height          =   4365
      Left            =   240
      TabIndex        =   28
      Top             =   1080
      Width           =   9960
      _ExtentX        =   17568
      _ExtentY        =   7699
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "DyingIssue.frx":5A5C
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   3705
         Left            =   165
         TabIndex        =   29
         Top             =   60
         Width           =   9570
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00FFFFC0&
            DataField       =   "colorname"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   6
            Left            =   2475
            TabIndex        =   20
            Top             =   1800
            Width           =   6705
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00FFFFC0&
            DataField       =   "colorcode"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   5
            Left            =   1305
            TabIndex        =   5
            Top             =   1800
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00FFFFC0&
            DataField       =   "slname"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   2
            Left            =   2475
            TabIndex        =   19
            Top             =   705
            Width           =   6750
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00FFFFC0&
            DataField       =   "slcode"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   1305
            TabIndex        =   3
            Top             =   705
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00FFFFC0&
            DataField       =   "MIXLOTNO"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   28
            Left            =   1290
            MaxLength       =   25
            TabIndex        =   6
            Top             =   3120
            Width           =   1935
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00FFFFC0&
            DataField       =   "KGS"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   23
            Left            =   7440
            MaxLength       =   25
            TabIndex        =   7
            Top             =   3120
            Width           =   1245
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ISSDT"
            Height          =   330
            Index           =   0
            Left            =   7800
            TabIndex        =   2
            Top             =   255
            Width           =   1170
            _ExtentX        =   2064
            _ExtentY        =   582
            _Version        =   393216
            BackColor       =   16777152
            ForeColor       =   16711680
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00FFFFC0&
            DataField       =   "varcode"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   4
            Left            =   1335
            TabIndex        =   4
            Top             =   1275
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00FFFFC0&
            DataField       =   "VARNAME"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   3
            Left            =   2505
            TabIndex        =   18
            Top             =   1275
            Width           =   6705
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00FFFFC0&
            DataField       =   "ISSNO"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   0
            Left            =   1335
            TabIndex        =   1
            Top             =   255
            Width           =   1935
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Left            =   7800
            TabIndex        =   22
            Top             =   255
            Width           =   1380
            _ExtentX        =   2434
            _ExtentY        =   582
            _Version        =   393216
            Format          =   57933825
            CurrentDate     =   38478
         End
         Begin VB.Label Label8 
            BackColor       =   &H00FFFFC0&
            Height          =   255
            Left            =   5040
            TabIndex        =   42
            Top             =   2400
            Width           =   975
         End
         Begin VB.Label Label7 
            Caption         =   "Weight       :"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   4080
            TabIndex        =   46
            Top             =   2400
            Width           =   975
         End
         Begin VB.Label Label5 
            BackColor       =   &H00FFFFC0&
            Height          =   255
            Left            =   2880
            TabIndex        =   45
            Top             =   2400
            Width           =   735
         End
         Begin VB.Label Label4 
            Caption         =   "Bags       :"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1920
            TabIndex        =   44
            Top             =   2400
            Width           =   855
         End
         Begin VB.Label Label2 
            Caption         =   "Avilable Quantity"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   240
            TabIndex        =   43
            Top             =   2400
            Width           =   1575
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Colour"
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
            Index           =   2
            Left            =   225
            TabIndex        =   38
            Top             =   1860
            Width           =   585
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Party"
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
            Index           =   1
            Left            =   225
            TabIndex        =   37
            Top             =   765
            Width           =   465
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "No of Bags"
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
            Index           =   1
            Left            =   120
            TabIndex        =   36
            Top             =   3120
            Width           =   1005
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Weight(Kgs)"
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
            Index           =   6
            Left            =   6120
            TabIndex        =   35
            Top             =   3120
            Width           =   1095
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
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
            Height          =   240
            Left            =   7320
            TabIndex        =   32
            Top             =   360
            Width           =   435
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "variety"
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
            Index           =   0
            Left            =   240
            TabIndex        =   31
            Top             =   1320
            Width           =   600
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Issue No."
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
            Index           =   0
            Left            =   225
            TabIndex        =   30
            Top             =   315
            Width           =   840
         End
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Dying Issue"
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
      Left            =   750
      TabIndex        =   25
      Top             =   630
      Width           =   1500
   End
End
Attribute VB_Name = "DyingIss"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim flg As String
Dim oldqty As Integer
Dim oldcontno As String
Dim oldcontdt As Date
Dim qty As Integer
Dim MaxNoRs As Recordset

Public Sub openconnection()
On Error GoTo openconnection_Error
Set DB = New Connection
DB.CursorLocation = adUseClient
DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure openconnection of Form DyingIss"
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Select Case Index
Case 0
    Opt = "add"
    desc.Caption = "Addition"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,c.COLORNAME,MIXCOUNT,CNTNAME,MIXLOTNO,KGS,nobags FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C,RM_COUNT D WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE AND 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    Call ENABLCONTLS
    Call bindcontls
    adoPrimaryRS.AddNew
    DB.BeginTrans
    Set MaxNoRs = New Recordset
    MaxNoRs.Open "SELECT isnull(MAX(ISSNO),0)+1 FROM RM_ISSDYING", DB, adOpenStatic, adLockBatchOptimistic
    If IsNull(MaxNoRs(0)) Then
        TXTFIELDS(0).Text = 1
    Else
        TXTFIELDS(0).Text = MaxNoRs(0)
    End If
    MaskEdBox1(0).Text = pdate
    Call adddelmod(BUTTON)
    BUTTON(9).ToolTipText = "Add Record"
    TXTFIELDS(0).Locked = True
    MaskEdBox1(0).Text = pdate
    TXTFIELDS(0).SetFocus
    TXTFIELDS(0).Locked = False
    TXTFIELDS(1).Locked = False
    DTPicker1.MinDate = yfdate
    Buttonframe.Enabled = True
    MaskEdBox1(0).Text = Format(pdate, "dd/mm/yyyy")
    TXTFIELDS(1).Text = ""
    TXTFIELDS(2).Text = ""
    TXTFIELDS(3).Text = ""
    flg = "Y"
    StatusBar1.Panels(2).Text = "Addition"
    MaskEdBox1(0).Enabled = True
    
Case 1
    'Modification
    Set Rs = New Recordset
    Rs.Open "select count(*) from RM_ISSDYING where divcode='" & Divcode & "' AND ISSDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "YYYY-mm-dd") & "' ", DB
    If Not Rs(0) = 0 Then
       'Label15.Caption = "Issue Details"
       Opt = "mod"
       desc.Caption = "Modification"
       StatusBar1.Panels(2).Text = "Select a Sample Number from the List for modification"
       LookUp.clear = True
       LookUp.Query = "select issno""No"",issdt""Date"" from RM_ISSDYING where divcode='" & Divcode & "' AND ISSDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
       LookUp.Caption = "Issue Listing"
       LookUp.DefCol = "No"
       LookUp.ALIGN = "1500,1500"
       LookUp.Show vbModal
       If LookUp.Cancel = False Then
           
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "SELECT DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,COLORNAME,KGS,nobags,slcode FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE AND ISSNO='" & LookUp.Fields(0) & "' AND ISSDT='" & Format(LookUp.Fields(1), "YYYY/MM/DD") & "' and DivCode ='" & Divcode & "' ORDER BY ISSNO", DB, adOpenStatic, adLockOptimistic
            If adoPrimaryRS.RecordCount <> 0 Then
                Call bindcontls
                desc.Caption = "Modification"
                DATLAB.Caption = pdate
                Call adddelmod(BUTTON)
                'Call disablcontls
                Call ENABLCONTLS
            Else
                MsgBox "No Records Found", vbInformation, head
                Call Norecfound(BUTTON)
            End If
       Else
       desc.Caption = "Query"
        Screen.MousePointer = 11

        Opt = ""
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,AVGCOUNT,YARNAPP FROM RM_SAMPLE WHERE  divcode='" & Divcode & "' order by sno", db, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "SELECT DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,COLORNAME,MIXCOUNT,CNTNAME,MIXLOTNO,KGS FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C,RM_COUNT D WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE AND A.MIXCOUNT=D.CNTCD and a.DivCode ='" & Divcode & "' ORDER BY ISSNO", DB, adOpenStatic, adLockOptimistic

        Call bindcontls
        Screen.MousePointer = 0
        Call disablcontls
        'procedure unique to this form  to set grid headings
        'calling cancl procedure from module
'        Call cancl(BUTTON)
        Call NEWFORM(BUTTON)
        Frame3.Visible = False
       ' Frame1.Visible = True
       ' Frame2.Visible = True
       End If
'''            ksllist1.conn = connectstring
'''            ksllist1.listfield1width = 2500
'''            ksllist1.listfield2width = 6500
'''            ksllist1.table = "RM_ISSDYING where divcode='" & Divcode & "' AND ISSDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
'''            ksllist1.listfield1 = "ISSNO"
'''            ksllist1.listfield2 = "ISSDT"
'''            ksllist1.Caption = "Issue Details"
'''            Frame3.Visible = True
'''            'Command6.SetFocus
'''            Frame3.ZOrder
       If Opt = "mod" Then
            DB.BeginTrans
            flg = "Y"
            Call adddelmod(BUTTON)
            Call disablcontls
            BUTTON(9).ToolTipText = "Modify"
            TXTFIELDS(0).Locked = True
           
    End If
    End If
Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from RM_ISSDYING where divcode='" & Divcode & "' AND ISSDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' ", DB
        If Not Rs(0) = 0 Then
            'Label15.Caption = "Issue Details"
            desc.Caption = "Deletion"
            Opt = "del"
            StatusBar1.Panels(2).Text = "Select a Sample Number from the List for modification"
            KslList1.conn = connectstring
            KslList1.listfield1width = 2500
            KslList1.listfield2width = 7500
            KslList1.Table = "RM_ISSDYING where divcode='" & Divcode & "' AND ISSDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
            KslList1.listfield1 = "ISSNO"
            KslList1.listfield2 = "ISSDT"
            KslList1.Caption = "Issue Details"
            Frame3.Visible = True
            Command6.SetFocus
            Frame3.ZOrder
            DB.BeginTrans
            'calling addmoddel procedure from module
            Call adddelmod(BUTTON)
            Call disablcontls
            BUTTON(9).ToolTipText = "Delete"
            TXTFIELDS(0).Locked = True
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
         rs1.Open " SELECT " & _
                 " DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,COLORNAME,MIXCOUNT,CNTNAME,MIXLOTNO,KGS " & _
                 " FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C,RM_COUNT D WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE AND A.MIXCOUNT=D.CNTCD AND " & _
                 " a.ISSDT = ' " & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and a.ISSNO='" & TXTFIELDS(0).Text & "' and a.divcode='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly

        If rs1.RecordCount <= 0 Then
        MsgBox "No record found", vbInformation
        Exit Sub
        End If
        Pg = 1
        Set rsP = New Recordset
        Close
        Open KALFOLDERDATA + "red.txt" For Output As #1
            Print #1,
            Print #1, Chr(18)
            Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 80, " "); Chr(27); "F"
             ' Call Module2.addresshead
            Print #1,
            Print #1, Space(14); " Sample Listing" & Space(38) & "Dt: "; Format(pdate, "dd/mm/yyyy")
            Print #1, Space(14) & String(69, "-")
            Print #1, Space(14); " Sample No            : "; Padr(rs1("sno"), 8, " ")
            Print #1,
            Print #1, Space(14); " Party Sample No      : "; Padr(rs1("prty_sampno"), 8, " ")
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
         Call KALBATPROCESS("RED")
'''         Open "C:\red.bat" For Output As #1
'''         On Error Resume Next
'''            Print #1, "cd\"
'''            Print #1, "C:"
'''            Print #1, "cd\"
'''            Print #1, "type red.txt>prn"
'''              repo.txtfile = "C:\red.txt"
'''              repo.Batfile = "C:\red.bat"
'''         Close #1
        Screen.MousePointer = 0
        
Case 4
        Set Rs = New Recordset
        Rs.Open "select count(*) from RM_ISSDYING where divcode='" & Divcode & "' AND ISSDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "YYYY-mm-dd") & "' ", DB
        If Not Rs(0) = 0 Then
            'Label15.Caption = "Sample Details"
            Opt = "fnd"
            desc.Caption = "Modification"
            StatusBar1.Panels(2).Text = "Select a Sample Number from the List for modification"
            KslList1.conn = connectstring
            KslList1.listfield1width = 2500
            KslList1.listfield2width = 6500
            KslList1.Table = "RM_ISSDYING where divcode='" & Divcode & "' AND ISSDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
            KslList1.listfield1 = "ISSNO"
            KslList1.listfield2 = "ISSDT"
            KslList1.Caption = "Sample Details"
            Frame3.Visible = True
            Command6.SetFocus
            Frame3.ZOrder
            'db.BeginTrans
            Call adddelmod(BUTTON)
            Call disablcontls
            BUTTON(9).ToolTipText = "Modify"
            TXTFIELDS(0).Locked = True
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
        'On Error GoTo GoNextError
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
        If Trim(TXTFIELDS(1).Text) = "" Then
            MsgBox "Supplier should not be empty", vbInformation, head
            TXTFIELDS(1).SetFocus
            Exit Sub
        End If
        If Trim(TXTFIELDS(4).Text) = "" Then
            MsgBox "Variety should not be empty", vbInformation, head
            TXTFIELDS(16).SetFocus
            Exit Sub
        End If
        If MaskEdBox1(0).Text = "__/__/____" Or IsDate(MaskEdBox1(0).Text) = False Then
            MsgBox "Enter the Date ", vbInformation, head
            MaskEdBox1(0).SetFocus
            Exit Sub
        End If
        If TXTFIELDS(28).Text > val(Label5.Caption) Then
            MsgBox "Number Of Bags Grater than Avilable Bags", vbInformation, head
            TXTFIELDS(28).SetFocus
            Exit Sub
        End If
        If TXTFIELDS(23).Text > val(Label8.Caption) Then
            MsgBox "Weight Grater than Avilable Weight", vbInformation, head
            TXTFIELDS(23).SetFocus
            Exit Sub
        End If
    End If
    If Opt = "add" Then
            If (IsNull(MaskEdBox1(0).Text) = False) And (MaskEdBox1(0).Text <> "__/__/____") Then
                adoPrimaryRS("ISSDT") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            Else
                adoPrimaryRS("ISSDT") = Null
            End If
            'db.Execute "INSERT INTO RM_ISSDYING (DIVCODE,ISSNO,ISSDT,VARCODE,COLORCODE,MIXCOUNT,MIXLOTNO,KGS,nobags) VALUES ('" & Divcode & "'," & txtFields(0).Text & ",'" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "','" & txtFields(4).Text & "','" & txtFields(1).Text & "','" & txtFields(5).Text & "','" & txtFields(28).Text & "'," & txtFields(23).Text & ")"
            DB.Execute "INSERT INTO RM_ISSDYING (DIVCODE,ISSNO,ISSDT,VARCODE,COLORCODE,MIXCOUNT,MIXLOTNO,KGS,nobags,slcode) VALUES ('" & Divcode & "'," & TXTFIELDS(0).Text & ",'" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "','" & TXTFIELDS(4).Text & "','" & TXTFIELDS(5).Text & "','0','0'," & TXTFIELDS(23).Text & ",'" & TXTFIELDS(28).Text & "','" & TXTFIELDS(1).Text & "')"
            'db.Execute "INSERT INTO RM_ISSDYING (DIVCODE,ISSNO,ISSDT,VARCODE,COLORCODE,KGS,nobags) VALUES ('" & Divcode & "'," & txtFields(0).Text & ",'" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "','" & txtFields(4).Text & "','" & txtFields(5).Text & "'," & txtFields(23).Text & ",'" & txtFields(28).Text & "')"
            DB.CommitTrans
            MsgBox "Record(s) Saved", vbInformation, head
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
        DB.Execute ("delete from RM_ISSDYING where ISSNO= " & val(TXTFIELDS(0).Text) & " and divcode='" & Divcode & "'")
        DB.CommitTrans
        MsgBox "Record(s) Deleted!", vbInformation, head
        BUTTON(9).ToolTipText = "Save"
        Opt = ""
    End If
    
        'Return to query mode
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "SELECT DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,COLORNAME,MIXCOUNT,CNTNAME,MIXLOTNO,KGS FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C,RM_COUNT D WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE AND A.MIXCOUNT=D.CNTCD ORDER BY ISSNO", db, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "SELECT DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,KGS FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE and a.DivCode ='" & Divcode & "' ORDER BY ISSNO", DB, adOpenStatic, adLockOptimistic
        
        Call bindcontls
        Call disablcontls
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM(BUTTON)
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
        'adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,AVGCOUNT,YARNAPP FROM RM_SAMPLE WHERE  divcode='" & Divcode & "' order by sno", db, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "SELECT DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,COLORNAME,MIXCOUNT,CNTNAME,MIXLOTNO,KGS FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C,RM_COUNT D WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE AND A.MIXCOUNT=D.CNTCD and a.DivCode ='" & Divcode & "' ORDER BY ISSNO", DB, adOpenStatic, adLockOptimistic

        Call bindcontls
        Screen.MousePointer = 0
        Call disablcontls
        'procedure unique to this form  to set grid headings
        'calling cancl procedure from module
'        Call cancl(BUTTON)
        Call NEWFORM(BUTTON)
        Frame3.Visible = False
       ' Frame1.Visible = True
       ' Frame2.Visible = True
Case 11
        'EXIT
        Unload Me
End Select
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure BUTTON_Click of Form DyingIss"
End Sub

Private Sub Command2_Click()
Frame6.Visible = False
End Sub

Private Sub Command5_Click()    'activex cancel
On Error GoTo Command5_Click_Error
Frame3.Visible = False
Screen.MousePointer = 0
Buttonframe.Enabled = True
BUTTON(11).Enabled = True
flg = "Y"
Exit Sub
Command5_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command5_Click of Form DyingIss"
End Sub

Private Sub Command6_Click()        'activex okay
On Error GoTo Command6_Click_Error
Buttonframe.Enabled = True
Select Case KslList1.listfield1
Case "cast(sno as varchar)"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,COLORNAME,MIXCOUNT,CNTNAME,MIXLOTNO,KGS FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C,RM_COUNT D WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE AND A.MIXCOUNT=D.CNTCD AND ISSNO='" & KslList1.Code & "' AND ISSDT='" & Format(KslList1.description, "YYYY/MM/DD") & "' and a.DivCode ='" & Divcode & "' ORDER BY ISSNO", DB, adOpenStatic, adLockOptimistic
    If adoPrimaryRS.RecordCount <> 0 Then
       Call bindcontls
       desc.Caption = "Query"
       DATLAB.Caption = pdate
       Call adddelmod(BUTTON)
       Call disablcontls
    Else
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
    End If
Case "ISSNO"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,COLORNAME,KGS,nobags,slcode FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE AND ISSNO='" & KslList1.Code & "' AND ISSDT='" & Format(KslList1.description, "YYYY/MM/DD") & "' and a.DivCode ='" & Divcode & "' ORDER BY ISSNO", DB, adOpenStatic, adLockOptimistic
    If adoPrimaryRS.RecordCount <> 0 Then
       Call bindcontls
       desc.Caption = "Modification"
       DATLAB.Caption = pdate
       Call adddelmod(BUTTON)
       'Call disablcontls
       Call ENABLCONTLS
    Else
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
    End If
        
Case "x.COLORCODE"
      TXTFIELDS(5).Text = KslList1.Code
      TXTFIELDS(6).Text = Trim(Left(KslList1.description, InStr(KslList1.description, " ")))
      Frame3.Visible = False
      
      Set issrs = New Recordset
      issrs.Open "select t.VARCODE,t.COLORCODE ,sum(QUANTITY),sum(MILLWT)  from  RM_RECDYINGDT t,RM_VAR i,RM_COLOR J where t.varcode=i.varcode AND T.COLORCODE=J.COLORCODE and t.varcode='" & TXTFIELDS(4).Text & "' and T.COLORCODE='" & TXTFIELDS(5).Text & "' and a.DivCode ='" & Divcode & "' group by t.VARCODE ,t.COLORCODE ", DB, adOpenStatic, adLockOptimistic
      Set Rs = New Recordset
      'rs.Open "select t.VARCODE,t.COLORCODE ,sum(i.nobags),sum(i.kgs)  from  RM_RECDYINGDT t,RM_ISSDYING i where t.varcode=i.varcode AND T.COLORCODE=i.COLORCODE and t.varcode='" & txtFields(4).Text & "' and T.COLORCODE='" & txtFields(5).Text & "' group by t.VARCODE ,t.COLORCODE ", db, adOpenStatic, adLockOptimistic
      Rs.Open "select sum(i.nobags),sum(i.kgs)  from  RM_ISSDYING i where i.varcode='" & TXTFIELDS(4).Text & "' and i.COLORCODE='" & TXTFIELDS(5).Text & "' and i.DivCode ='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
      If issrs(3) - IIf(IsNull(Rs(0)), "0", Rs(0)) > 0 Then
      If Rs.RecordCount > 0 Then
      Label5.Caption = issrs(2) - IIf(IsNull(Rs(0)), "0", Rs(0))
      Label8.Caption = issrs(3) - IIf(IsNull(Rs(1)), "0", Rs(1))
      Else
      Label5.Caption = issrs(2)
      Label8.Caption = issrs(3)
      End If
      Else
      MsgBox "No Records Found", vbInformation, head
      TXTFIELDS(5).Text = ""
      TXTFIELDS(6).Text = ""
      TXTFIELDS(5).SetFocus
      Exit Sub
      End If
      TXTFIELDS(28).SetFocus
      flg = "Y"
      Exit Sub
 Case "x.SLCODE"
      TXTFIELDS(1).Text = KslList1.Code
      TXTFIELDS(2).Text = KslList1.description
      Frame3.Visible = False
      TXTFIELDS(4).SetFocus
      flg = "Y"
      Exit Sub
      
Case "CNTCD"
      TXTFIELDS(5).Text = KslList1.Code
      TXTFIELDS(6).Text = KslList1.description
      Frame3.Visible = False
      TXTFIELDS(28).SetFocus
      flg = "Y"
      Exit Sub
      
Case "slcode 'broker_code'"
      TXTFIELDS(24).Text = KslList1.Code
      TXTFIELDS(25).Text = KslList1.description
      Frame3.Visible = False
      TXTFIELDS(4).SetFocus
      flg = "Y"
      Exit Sub
      
Case "AREACODE"
      TXTFIELDS(27).Text = KslList1.Code
      Frame3.Visible = False
      TXTFIELDS(13).SetFocus
      flg = "Y"
      Exit Sub
                 
Case "x.varcode"
      TXTFIELDS(4).Text = KslList1.Code
      TXTFIELDS(3).Text = KslList1.description
      TXTFIELDS(5).SetFocus
      flg = "Y"
End Select
Frame3.Visible = False
Exit Sub
Command6_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command6_Click of Form DyingIss"
End Sub

Private Sub DTPicker1_CloseUp()
MaskEdBox1(0).Text = DTPicker1.Value
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
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
        'Call Command6_Click
    End If
Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_KeyDown of Form DyingIss"
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
StatusBar1.Panels(1).Text = STBARmsg
Call openconnection
DATLAB.Caption = pdate
Set adoPrimaryRS = New Recordset
 ' adoprimaryrs.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP FROM RM_SAMPLE WHERE  DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by SNO", db, adOpenStatic, adLockOptimistic
'''  adoprimaryrs.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,csp ,tpi ,avrstrength,corr_strenth, spot_for, rate ,prno ,prty_sampno,brokercode , station_code FROM RM_SAMPLE WHERE  DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by SNO", db, adOpenStatic, adLockOptimistic
  'adoPrimaryRS.Open "SELECT DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,COLORNAME,MIXCOUNT,CNTNAME,MIXLOTNO,KGS FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C,RM_COUNT D WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE AND A.MIXCOUNT=D.CNTCD ORDER BY ISSNO", db, adOpenStatic, adLockOptimistic
  'adoPrimaryRS.Open "SELECT DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,COLORNAME,KGS FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C,RM_COUNT D WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE ORDER BY ISSNO", db, adOpenStatic, adLockOptimistic
adoPrimaryRS.Open "SELECT DIVCODE,ISSNO,ISSDT,A.VARCODE,VARNAME,A.COLORCODE,COLORNAME,KGS,nobags,slcode FROM RM_ISSDYING A,RM_VAR B,RM_COLOR C WHERE A.VARCODE=B.VARCODE AND A.COLORCODE=C.COLORCODE and a.DivCode ='" & Divcode & "' ORDER BY ISSNO", DB, adOpenStatic, adLockOptimistic
    If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then
        adoPrimaryRS.MoveLast
    End If
If adoPrimaryRS.RecordCount <> 0 Then
   'Bind the text boxes,check boxes and option buttons to the data source
   Call bindcontls
   desc.Caption = "Query"
   'This variable is declared as global to show the date
   DATLAB.Caption = pdate
   'Calling newform procedure from Module to disable buttons
   Call NEWFORM(BUTTON)
   Call disablcontls
   'Exit Sub
Else
   MsgBox "No Records Found", vbInformation, head
   Call Norecfound(BUTTON)
   'TabStrip1.Visible = True
End If
Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form DyingIss"
End Sub

Private Sub Form_Unload(Cancel As Integer)
Opt = ""
Screen.MousePointer = vbDefault
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error
StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) And Opt <> "add" Then
        
   Set Rs = New Recordset
   Rs.Open "select varname,varcode from rm_var where varcode= '" & adoPrimaryRS("varcode") & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
      TXTFIELDS(3).Text = Rs("varname")
      TXTFIELDS(4).Text = Rs("varcode")
   Else
      TXTFIELDS(3).Text = ""
   End If
   
   
   'rs.Open "select distinct th.DIVCODE,th.RECNO,th.RECDT,th.DCNO,th.DCDT,th.SLCODE,s.slname,TH.REMARKS  from  RM_RECDYINGHD th, FA_SLMAS s  where th.slcode=s.slcode and th.slcode='" & txtFields(1).Text & "'", db, adOpenStatic, adLockBatchOptimistic
   If adoPrimaryRS.RecordCount > 0 Then MaskEdBox1(0).Text = adoPrimaryRS("ISSDT")
End If
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure adoPrimaryRS_MoveComplete of Form DyingIss"
End Sub

'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error GoTo bindcontls_Error
For Each oText In Me.TXTFIELDS
    Set oText.DataSource = adoPrimaryRS
Next
Set prrs = New Recordset
   prrs.Open "select s.SLCODE,s.slname from  RM_ISSDYING th, FA_SLMAS s  where th.slcode=s.slcode and s.slcode='" & adoPrimaryRS("slcode") & "' and th.DivCode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
   If prrs.RecordCount <> 0 Then
      TXTFIELDS(1).Text = prrs("slcode")
      TXTFIELDS(2).Text = prrs("slname")
   Else
      TXTFIELDS(1).Text = ""
   End If
TXTFIELDS(5).Text = adoPrimaryRS("colorcode")
TXTFIELDS(6).Text = adoPrimaryRS("colorname")
TXTFIELDS(28).Text = adoPrimaryRS("nobags")
TXTFIELDS(23).Text = adoPrimaryRS("kgs")
MaskEdBox1(0).DataField = "arrdate"
DTPicker1.MaxDate = pdate
DTPicker1.MinDate = yfdate
Exit Sub
bindcontls_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure bindcontls of Form DyingIss"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : ENABLCONTLS
' DateTime  : 07/12/2008 14:37
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub ENABLCONTLS()
Dim tb As TextBox
On Error GoTo ENABLCONTLS_Error

For Each tb In Me.TXTFIELDS
    tb.Locked = False
Next

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure ENABLCONTLS of Form DyingIss", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : disablcontls
' DateTime  : 07/12/2008 14:37
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub disablcontls()
Dim tb As TextBox
On Error GoTo disablcontls_Error

For Each tb In Me.TXTFIELDS
   tb.Locked = True
Next

Exit Sub
disablcontls_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure disablcontls of Form DyingIss", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox1_KeyDown_Error
    If Opt = "add" Or Opt = "mod" Then
        If KeyCode = 13 Then
            SendKeys ("{tab}")
        End If
    End If
Exit Sub
MaskEdBox1_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MaskEdBox1_KeyDown of Form DyingIss"
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error
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
Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MaskEdBox1_LostFocus of Form DyingIss"
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo MaskEdBox1_Validate_Error
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
Exit Sub
MaskEdBox1_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MaskEdBox1_Validate of Form DyingIss"
End Sub
Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error
    If Opt = "add" Or Opt = "mod" Then
        If KeyCode = 13 Then
            SendKeys ("{tab}")
        End If
    End If
Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtfields_KeyDown of Form DyingIss"
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)

On Error GoTo txtFields_KeyPress_Error
Call ToUpCase(TXTFIELDS, KeyAscii)

If Index = 23 Then
    Call tonum(TXTFIELDS(23), 9, KeyAscii)
End If
Exit Sub
txtFields_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtFields_KeyPress of Form DyingIss"
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
'  If Frame3.Visible = True Then KslList1.SetFocus
End Sub



Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Txtfields_Validate_Error
If (Opt = "add" Or Opt = "mod") And flg = "Y" Then
   Select Case Index
   Case 0
     If Opt = "add" Then
        If Trim(TXTFIELDS(0).Text) = "" Then
           MsgBox "Pleas Define the Sample No", vbInformation, head
           Cancel = True
           Exit Sub
        End If
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM RM_ISSDYING WHERE ISSDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and ISSNO ='" & TXTFIELDS(0).Text & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
           MsgBox "This Number already defined", vbInformation, head
           Cancel = True
           TXTFIELDS(0).Text = ""
           Exit Sub
        End If
     End If


Case 1
     If Opt = "add" Or Opt = "mod" Then

'           Frame3.Visible = True
'           Frame3.ZOrder
           Buttonframe.Enabled = True
      LookUp.clear = True
      LookUp.Query = "Select a.slcode""Code"",b.slname""Name"",SUM(ISNULL(Received,0))- SUM(ISNULL(Issued,0)) as balance From " & _
                            "(Select slcode,0 as issqty,sum(quantity) as recqty, 0 as Issued, Varcode,sum(millwt) as Received " & _
                            "FROM Rm_Recdyingdt a,rm_recdyinghd b Where a.recno=b.recno and a.recdt=b.recdt and a.divcode=b.divcode " & _
                            "group by slcode,varcode " & _
                            "Union " & _
                            "Select slcode,sum(nobags) as issqty,0  as recqty,sum(kgs) as Issued, Varcode,0 as Received FROM rm_issdying " & _
                            "group by slcode,varcode)a,fa_slmas b where a.slcode=b.slcode Group by a.slcode,b.slname Having Sum(IsNull(Received, 0)) - Sum(IsNull(Issued, 0)) > 0"
      LookUp.Caption = "Supplier Listing"
      LookUp.DefCol = "Name"
      LookUp.ALIGN = "1500,4000"
      LookUp.Show vbModal
      If LookUp.Cancel = False Then
      TXTFIELDS(1).Text = LookUp.Fields(0)
      TXTFIELDS(2).Text = LookUp.Fields(1)
      LookUp.clear = True
      Frame3.Visible = False
      
      Exit Sub
      Else
      Exit Sub
      End If
      TXTFIELDS(4).SetFocus
      flg = "Y"
'''           KslList1.Visible = True
'''           KslList1.conn = connectstring
'''           KslList1.listfield1width = 2500
'''           KslList1.listfield2width = 6500
'''           'KslList1.table = "rm_recdyinghd a,FA_SLMAS b WHERE a.slcode=b.slcode"
'''           KslList1.table = "(Select a.slcode,b.slname,sum(recqty)-sum(issqty) as balqty, SUM(ISNULL(Issued,0)) as Iss, SUM(ISNULL(Received,0)) as Rcvd,SUM(ISNULL(Received,0))- SUM(ISNULL(Issued,0)) as balance From " & _
'''                            "(Select slcode,0 as issqty,sum(quantity) as recqty, 0 as Issued, Varcode,sum(millwt) as Received " & _
'''                            "FROM Rm_Recdyingdt a,rm_recdyinghd b Where a.recno=b.recno and a.recdt=b.recdt and a.divcode=b.divcode " & _
'''                            "group by slcode,varcode " & _
'''                            "Union " & _
'''                            "Select a.slcode,sum(nobags) as issqty,0  as recqty,sum(kgs) as Issued, Varcode,0 as Received " & _
'''                            "FROM rm_issdying a,rm_recdyinghd b Where a.slcode=b.slcode and a.divcode=b.divcode " & _
'''                            "group by a.slcode,varcode)a,fa_slmas b where a.slcode=b.slcode Group by a.slcode,b.slname Having Sum(IsNull(Received, 0)) - Sum(IsNull(Issued, 0)) > 0)x"
'''           KslList1.listfield1 = "x.SLCODE"
'''           KslList1.listfield2 = "x.SLNAME"
'''           FLG = "N"
'''           KslList1.Caption = "Party Details"
'''           'Label15.Caption = "Color Details"
'''           KslList1.SetFocus
'''           Exit Sub
        'End If
     End If


   Case 5
     If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM RM_COLOR WHERE COLORCODE = '" & TXTFIELDS(1).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
           TXTFIELDS(2).Text = Rs("COLORNAME")
        Else
           
      Buttonframe.Enabled = True
      LookUp.clear = True
      LookUp.Query = " Select a.COLORCODE ,c.COLORNAME,SUM(ISNULL(recqty,0))- SUM(ISNULL(issqty,0)) as balanceQty,SUM(ISNULL(Received,0))- SUM(ISNULL(Issued,0)) as balance From " & _
                            "(Select slcode,a.COLORCODE,0 as issqty,sum(quantity) as recqty, 0 as Issued, Varcode,sum(millwt) as Received " & _
                            "FROM Rm_Recdyingdt a,rm_recdyinghd b Where a.recno=b.recno and a.recdt=b.recdt and a.divcode=b.divcode " & _
                           "group by a.COLORCODE,varcode,slcode " & _
                            "Union " & _
                           "Select slcode,COLORCODE,sum(nobags) as issqty,0  as recqty,sum(kgs) as Issued, Varcode,0 as Received " & _
                           "FROM rm_issdying " & _
                            "group by COLORCODE,varcode,slcode)a,rm_var b,RM_COLOR c where a.varcode=b.varcode and c.COLORCODE=a.COLORCODE and a.slcode='" & TXTFIELDS(1).Text & "' and a.varcode='" & TXTFIELDS(4).Text & "' " & _
                           "Group by a.COLORCODE ,c.COLORNAME Having Sum(IsNull(Received, 0)) - Sum(IsNull(Issued, 0)) > 0"
     LookUp.Caption = "Colour Details"
     LookUp.DefCol = "colorname"
     LookUp.ALIGN = "1500,2000"
     LookUp.Show vbModal
     If LookUp.Cancel = False Then
      TXTFIELDS(5).Text = LookUp.Fields(0)
      TXTFIELDS(6).Text = LookUp.Fields(1)
      Frame3.Visible = False
      LookUp.clear = True
      Label5.Caption = LookUp.Fields(2)
      Label8.Caption = LookUp.Fields(3)


      TXTFIELDS(28).SetFocus
      flg = "Y"
      Exit Sub
      Else
      TXTFIELDS(5).SetFocus
      Exit Sub

      End If
           
'''           KSLLIST1.Visible = True
'''           KSLLIST1.conn = connectstring
'''           KSLLIST1.listfield1width = 2500
'''           KSLLIST1.listfield2width = 3000
'''           'KslList1.table = "RM_COLOR"
'''           KSLLIST1.table = "(Select a.COLORCODE ,c.COLORNAME,sum(recqty)-sum(issqty) as balqty, SUM(ISNULL(Issued,0)) as Iss, SUM(ISNULL(Received,0)) as Rcvd,SUM(ISNULL(Received,0))- SUM(ISNULL(Issued,0)) as balance From " & _
'''                            "(Select slcode,a.COLORCODE,0 as issqty,sum(quantity) as recqty, 0 as Issued, Varcode,sum(millwt) as Received " & _
'''                            "FROM Rm_Recdyingdt a,rm_recdyinghd b Where a.recno=b.recno and a.recdt=b.recdt and a.divcode=b.divcode " & _
'''                            "group by a.COLORCODE,varcode,slcode " & _
'''                            "Union " & _
'''                            "Select a.slcode,a.COLORCODE,sum(nobags) as issqty,0  as recqty,sum(kgs) as Issued, Varcode,0 as Received " & _
'''                            "FROM rm_issdying a,rm_recdyinghd b Where a.slcode=b.slcode and a.divcode=b.divcode " & _
'''                            "group by a.COLORCODE,varcode,a.slcode)a,rm_var b,RM_COLOR c where a.varcode=b.varcode and c.COLORCODE=a.COLORCODE and a.slcode='" & TXTFIELDS(1).Text & "' and a.varcode='" & TXTFIELDS(4).Text & "' " & _
'''                            "Group by a.COLORCODE ,c.COLORNAME Having Sum(IsNull(Received, 0)) - Sum(IsNull(Issued, 0)) > 0)x"
'''           'KslList1.table = "RM_RECDYINGDT t,RM_VAR i,RM_COLOR J where t.varcode=i.varcode AND T.COLORCODE=J.COLORCODE and t.varcode='" & txtFields(4).Text & "'"
'''           KSLLIST1.listfield1 = "x.COLORCODE"
'''           KSLLIST1.listfield2 = "x.COLORNAME,x.balance"
'''           FLG = "N"
'''           KSLLIST1.Caption = "Color Details"
'''           'Label15.Caption = "Color Details"
'''           KSLLIST1.SetFocus
'''           Exit Sub
        End If
     End If

   Case 4
     If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_var WHERE varcode= '" & TXTFIELDS(4).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
           TXTFIELDS(3).Text = Rs("varname")
        Else
           Buttonframe.Enabled = True
           
           Set Rs = New Recordset
           Rs.Open "select distinct th.DIVCODE,th.RECNO,th.RECDT,th.DCNO,th.DCDT,th.SLCODE,s.slname,TH.REMARKS  from  RM_RECDYINGHD th, FA_SLMAS s  where th.slcode=s.slcode and th.slcode='" & TXTFIELDS(1).Text & "' and th.DivCode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
           'KslList1.table = "RM_var where  varcode='" & rs("slcode") & "'"
         If Rs.RecordCount > 0 Then
         LookUp.clear = True
         LookUp.Query = " Select a.varcode,b.varname,SUM(ISNULL(Received,0))- SUM(ISNULL(Issued,0)) as balance From " & _
                            "(Select slcode,0 as issqty,sum(quantity) as recqty, 0 as Issued, Varcode,sum(millwt) as Received " & _
                            "FROM Rm_Recdyingdt a,rm_recdyinghd b Where a.recno=b.recno and a.recdt=b.recdt and a.divcode=b.divcode " & _
                            "group by slcode,varcode " & _
                            "Union " & _
                            "Select slcode,sum(nobags) as issqty,0  as recqty,sum(kgs) as Issued, Varcode,0 as Received " & _
                            "FROM rm_issdying " & _
                            "group by slcode,varcode)a,rm_var b where a.varcode=b.varcode and a.slcode='" & TXTFIELDS(1).Text & "' " & _
                            "Group by a.varcode,b.varname Having Sum(IsNull(Received, 0)) - Sum(IsNull(Issued, 0)) > 0"
      LookUp.Caption = "Variety Listing"
      LookUp.DefCol = "varname"
      LookUp.ALIGN = "1500,2000"
      LookUp.Show vbModal
      If LookUp.Cancel = False Then
      
      TXTFIELDS(4).Text = LookUp.Fields(0)
      TXTFIELDS(3).Text = LookUp.Fields(1)
      TXTFIELDS(5).SetFocus
      LookUp.clear = True
      flg = "Y"
      Else
      Exit Sub
      End If
            Else
           MsgBox "No Records Found", vbInformation, head
          Exit Sub
         End If
     End If
   End If
   Case 5
     If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM RM_COUNT WHERE CNTCD= '" & TXTFIELDS(5).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
           TXTFIELDS(6).Text = Rs("CNTNAME")
        Else
           Buttonframe.Enabled = True
           KslList1.Visible = True
           KslList1.conn = connectstring
           KslList1.listfield1width = 2500
           KslList1.listfield2width = 6500
           KslList1.Table = "RM_COUNT"
           KslList1.listfield1 = "CNTCD"
           KslList1.listfield2 = "CNTNAME"
           flg = "N"
           KslList1.Caption = "Variety Details"
           'Label15.Caption = "Variety Details"
           Frame3.Visible = True
           Frame3.ZOrder
           
           
           KslList1.SetFocus
           Exit Sub
        End If
     End If
Case 24
     If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM fa_slmas WHERE slcode = '" & TXTFIELDS(24).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
           TXTFIELDS(25).Text = Rs("slname")
        Else
           
           KslList1.Visible = True
           KslList1.conn = connectstring
           KslList1.listfield1width = 2500
           KslList1.listfield2width = 6500
           KslList1.Table = "fa_slmas where slcode like 'C4%'"
           KslList1.listfield1 = "slcode 'broker_code'"
           KslList1.listfield2 = "SLNAME"
           flg = "N"
           KslList1.Caption = "Broker Details"
           'Label15.Caption = "Broker Details"
           Frame3.Visible = True
           Frame3.ZOrder
           Buttonframe.Enabled = True
           
           
           KslList1.SetFocus
           Exit Sub
        End If
     End If

      
      Case 27
     If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT  areacode""Station_code"",areaname ""station Name""  from  rm_area  WHERE areacode  = '" & TXTFIELDS(27).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
           TXTFIELDS(27).Text = Rs(0)
        Else
           KslList1.Visible = True
           KslList1.conn = connectstring
           KslList1.listfield1width = 2500
           KslList1.listfield2width = 6500
           KslList1.Table = "rm_area"
           KslList1.listfield1 = "AREACODE"
           KslList1.listfield2 = "AREANAME"
           flg = "N"
           KslList1.Caption = "Station Details"
           'Label15.Caption = "Station Details"
           Frame3.Visible = True
           Frame3.ZOrder
           Buttonframe.Enabled = True
           KslList1.SetFocus
           
           
           Exit Sub
        End If
     End If

      Case 15
         BUTTON(9).SetFocus
         Exit Sub
   End Select
End If
Exit Sub
Txtfields_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtFields_Validate of Form DyingIss"
End Sub

Public Sub callhead(Co As Integer)
On Error GoTo callhead_Error
Print #1, Chr(18)
Print #1, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
'Call Module2.addresshead
Print #1,
Print #1, Chr(18)
Print #1, Space(5) & "Purchase Order Listing  For " & Rs("contdt"); Space(25); "Dt. : " & Format(Date, "dd/mm/yyyy")
Print #1, Space(5) & String(80, "-")
Exit Sub
callhead_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure callhead of Form DyingIss"
End Sub


