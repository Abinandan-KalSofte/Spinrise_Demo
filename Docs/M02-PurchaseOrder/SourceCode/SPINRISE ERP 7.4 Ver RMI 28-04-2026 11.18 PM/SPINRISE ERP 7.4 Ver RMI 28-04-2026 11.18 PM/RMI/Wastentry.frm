VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form Wastentry 
   Caption         =   "Usable Waste Entry"
   ClientHeight    =   6960
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9930
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6960
   ScaleWidth      =   9930
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   15
      Top             =   -120
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         Height          =   495
         Index           =   3
         Left            =   1620
         Picture         =   "Wastentry.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   38
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastentry.frx":0397
         Height          =   510
         Index           =   8
         Left            =   4275
         Picture         =   "Wastentry.frx":07E1
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl E)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "Wastentry.frx":0B43
         Height          =   510
         Index           =   10
         Left            =   5325
         Picture         =   "Wastentry.frx":0E4D
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Z)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastentry.frx":11C9
         Height          =   510
         Index           =   9
         Left            =   4800
         Picture         =   "Wastentry.frx":14D3
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastentry.frx":1875
         Height          =   510
         Index           =   11
         Left            =   5865
         Picture         =   "Wastentry.frx":1CBF
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastentry.frx":2054
         Height          =   510
         Index           =   7
         Left            =   3750
         Picture         =   "Wastentry.frx":249E
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastentry.frx":27EE
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Wastentry.frx":2AF8
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastentry.frx":2E72
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   2
         Left            =   1095
         Picture         =   "Wastentry.frx":317C
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastentry.frx":3518
         Height          =   510
         Index           =   5
         Left            =   2700
         Picture         =   "Wastentry.frx":3962
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastentry.frx":3CC7
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Wastentry.frx":3FD1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastentry.frx":4364
         Height          =   510
         Index           =   6
         Left            =   3225
         Picture         =   "Wastentry.frx":47AE
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastentry.frx":4AFB
         Height          =   495
         Index           =   4
         Left            =   2145
         Picture         =   "Wastentry.frx":4E05
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find (Ctrl R)"
         Top             =   120
         Width           =   555
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
         TabIndex        =   17
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
         TabIndex        =   16
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   18
      Top             =   6660
      Width           =   9930
      _ExtentX        =   17515
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
            TextSave        =   "24/02/2009"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "05:32"
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
      Left            =   720
      TabIndex        =   19
      Top             =   1440
      Width           =   8445
      _ExtentX        =   14896
      _ExtentY        =   7858
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "      "
      TabPicture(0)   =   "Wastentry.frx":519A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "KslList2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      Begin VB.Frame Frame1 
         Height          =   1335
         Left            =   150
         TabIndex        =   21
         Top             =   240
         Width           =   8145
         Begin VB.ComboBox Combo2 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            ItemData        =   "Wastentry.frx":51B6
            Left            =   5640
            List            =   "Wastentry.frx":51C0
            TabIndex        =   40
            Top             =   720
            Width           =   1455
         End
         Begin VB.ComboBox Combo1 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            ItemData        =   "Wastentry.frx":51D9
            Left            =   1200
            List            =   "Wastentry.frx":51E9
            TabIndex        =   13
            Text            =   "Combo1"
            Top             =   720
            Width           =   1155
         End
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
            Left            =   1200
            TabIndex        =   11
            Top             =   270
            Width           =   1125
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            Height          =   315
            Left            =   5670
            TabIndex        =   12
            Top             =   240
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
            TabIndex        =   22
            Top             =   270
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            _Version        =   393216
            Format          =   64684033
            CurrentDate     =   37043
         End
         Begin VB.Label Label1 
            Caption         =   "Salestype"
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
            Left            =   4560
            TabIndex        =   41
            Top             =   720
            Width           =   1095
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Doc No."
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
            Left            =   270
            TabIndex        =   25
            Top             =   330
            Width           =   735
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
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
            Left            =   4950
            TabIndex        =   24
            Top             =   330
            Width           =   435
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Shift"
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
            Left            =   270
            TabIndex        =   23
            Top             =   780
            Width           =   375
         End
      End
      Begin VB.Frame Frame2 
         Height          =   2865
         Left            =   150
         TabIndex        =   20
         Top             =   1440
         Width           =   8145
         Begin MSDataGridLib.DataGrid grddatagrid 
            Height          =   2535
            Left            =   120
            TabIndex        =   14
            Top             =   240
            Width           =   7935
            _ExtentX        =   13996
            _ExtentY        =   4471
            _Version        =   393216
            AllowUpdate     =   -1  'True
            HeadLines       =   2
            RowHeight       =   19
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
      Begin KSLLISTOCX.KslList KslList2 
         Height          =   3855
         Left            =   0
         TabIndex        =   39
         Top             =   120
         Width           =   6975
         _ExtentX        =   12303
         _ExtentY        =   6800
         ForeColor       =   -2147483635
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   840
      TabIndex        =   32
      Top             =   2280
      Visible         =   0   'False
      Width           =   7620
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
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
         Left            =   3450
         MaxLength       =   6
         TabIndex        =   35
         Top             =   930
         Width           =   1665
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         DownPicture     =   "Wastentry.frx":51FE
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4020
         Picture         =   "Wastentry.frx":55E0
         Style           =   1  'Graphical
         TabIndex        =   34
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         DownPicture     =   "Wastentry.frx":59B3
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2580
         Picture         =   "Wastentry.frx":5D99
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Doc No."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   240
         Left            =   2610
         TabIndex        =   37
         Top             =   1005
         Width           =   735
      End
      Begin VB.Label Label28 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Find "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   36
         Top             =   120
         Width           =   7620
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   360
      TabIndex        =   26
      Top             =   960
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         DownPicture     =   "Wastentry.frx":615F
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4500
         Picture         =   "Wastentry.frx":6541
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "Wastentry.frx":6914
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2760
         Picture         =   "Wastentry.frx":6CFA
         Style           =   1  'Graphical
         TabIndex        =   27
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   29
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
         TabIndex        =   30
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Usable Waste Entry"
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
      Left            =   690
      TabIndex        =   31
      Top             =   690
      Width           =   2640
   End
End
Attribute VB_Name = "Wastentry"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents adoSecondaryRS As Recordset
Attribute adoSecondaryRS.VB_VarHelpID = -1
Dim rate1 As Double
Dim sPack As String
Dim DB As Connection
Dim Opt As String
Dim st, st1, st2 As String
Dim itary() As String
Dim cou As Integer
Dim cou1, C, Pg As Integer
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
Dim tmp As String
Dim t5 As Integer
Dim t8 As String
Dim Date1 As String
Dim Date2 As String
Dim date3 As String
Dim dt As String
Dim errflg As String
Dim Last_docno As Integer
Dim New1DocNo As Integer
Dim str As String
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo Err
If Opt <> "add" And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
'    StatusBar1.Panels(2).Text = "Record: " & CStr(adoprimaryrs("docno"))
    StatusBar1.Panels(2).Text = adoPrimaryRS("docno") '"Records " & CStr(adoprimaryrs.AbsolutePosition) & " of " & CStr(adoprimaryrs.RecordCount)
    MaskEdBox1.Text = adoPrimaryRS("docdt")
    txtFields(0).Text = adoPrimaryRS("docno")
    If adoPrimaryRS("shift") = "I" Then
        Combo1.Text = "I"
    ElseIf adoPrimaryRS("shift") = "II" Then
        Combo1.Text = "II"
    ElseIf adoPrimaryRS("shift") = "III" Then
        Combo1.Text = "III"
    Else: adoPrimaryRS("shift") = "A"
        Combo1.Text = "All"
    End If
End If
Exit Sub
Err:
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
'addition
    If Record_Exists("rm_var") = False Then Exit Sub
    If Record_Exists("rm_wastetype", "Please Define Waste Type") = False Then Exit Sub
    Opt = "add"
    desc.Caption = "Addition"
    DB.BeginTrans
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select divcode,docno,docdt,shift from rm_waste where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Call ENABLCONTLS
    Call bindcontls
    adoPrimaryRS.AddNew
    Set Rs = New Recordset
    Rs.Open "SELECT isnull(max(docno),0)+1 FROM RM_WASTE WHERE DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "'  AND '" & Format(yfdate, "YYYY-MM-DD") & "'", DB, adOpenStatic
    txtFields(0).Text = Rs(0)
    SSTab1.Enabled = True
    Frame1.Enabled = True
    Combo1.Text = " "
    MaskEdBox1.Text = "__/__/____"
    Set adoSecondaryRS = New Recordset
'    ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.variety ""Variety"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight"" from rm_waste a,rm_wastetype b where 1=2", db, adOpenStatic, adLockBatchOptimistic
    'adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"" ,rate,value from rm_waste a,rm_wastetype b where 1=2", db, adOpenStatic, adLockBatchOptimistic
    adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"",a.baleno, a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"" ,rate,value from rm_waste a,rm_wastetype b where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoSecondaryRS
    grddatagrid.AllowUpdate = True
    Call GRIDALIGN
    grddatagrid.Columns(5).Visible = True
    grddatagrid.Columns(6).Visible = False
    grddatagrid.Columns(4).Visible = False
    grddatagrid.Columns(9).Visible = True
    grddatagrid.Columns(10).Visible = True
    grddatagrid.Columns(11).Visible = True
    grddatagrid.Columns(12).Visible = False
    grddatagrid.Columns(13).Visible = False
    adoSecondaryRS.AddNew
    StatusBar1.Panels(2).Text = "Enter the Document Date"
    txtFields(0).Locked = True
    MaskEdBox1.Text = pdate
    MaskEdBox1.Enabled = True
    MaskEdBox1.SetFocus
    Call adddelmod(BUTTON)
    BUTTON(4).Enabled = False
    DTPicker1.MinDate = pdate
    DTPicker1.MinDate = yfdate
    DTPicker1.MaxDate = pdate
    Combo1.ListIndex = 3
  

Case 1
        'Modification
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_waste WHERE type='U' and divcode='" & Divcode & "'", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "mod"
        desc.Caption = "Modification"
        SSTab1.Visible = False
        Label15.Caption = "Document Number List"
        KslList1.conn = connectstring
        KslList1.Table = "rm_waste WHERE type='U' and divcode='" & Divcode & "'"
        KslList1.listfield1 = "cast(docno as varchar)"
        KslList1.listfield2 = "convert(varchar,docdt,103)"
        SSTab1.Enabled = True
        Frame1.Enabled = False
        grddatagrid.AllowUpdate = True
        Frame3.Visible = True
        Frame3.ZOrder
        KslList1.SetFocus
        DB.BeginTrans
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
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_waste WHERE type='U' and divcode='" & Divcode & "'", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        SSTab1.Visible = False
        Label15.Caption = "Document Number List"
        KslList1.conn = connectstring
        KslList1.Table = "rm_waste WHERE type='U' and divcode='" & Divcode & "'"
        'KslList1.listfield1 = "cast(docno as varchar) + ':' +adjst"
        KslList1.listfield1 = "cast(docno as varchar)"
        KslList1.listfield2 = "convert(varchar,docdt,103)"
        grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Frame3.ZOrder
        KslList1.SetFocus
        DB.BeginTrans
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
Case 3
        Set repo = New Report.ReportView
        desc.Caption = "Listing"
        Set rs1 = New Recordset
        rs1.Open "select DISTINCT a.docno,a.docdt from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode AND A.TYPE='U'", DB, adOpenStatic
        If rs1.RecordCount <= 0 Then
        MsgBox "No record found", vbInformation
        Exit Sub
        End If
        Pg = 1
        Set rsP = New Recordset
        Close
        Open "c:\red.txt" For Output As #1
            Print #1,
            Print #1,
            Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 88, " "); "F"; Chr(27)
            Print #1,
            Print #1, Space(5); "Useable Waste Listing" & Space(1); "for "; Format(adoPrimaryRS("docdt"), "dd/mm/yyyy"); Space(42 - 13) & "Dt: "; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:" & Padl(Pg, 3, " ")
            Print #1, Space(5) & String(88, "-")
            Print #1, Space(5) & "Doc.No.   Doc.Dt  "
            Print #1, Space(5) & "Godown  Waste  Description                      Gross Weight   Tare Weight   Nett Weight"
            Print #1, Space(5) & "  Code   Type   "
            Print #1, Space(5) & String(88, "-")
            Co = 8
            tot = 0
        Do While Not rs1.EOF
            Print #1, Space(5) & Padr(rs1("docno"), 7, " ") & Space(1) & Padr(Format(rs1("docdt"), "dd/mm/yyyy"), 10, " ")
            Co = Co + 1
            Print #1,
            Co = Co + 1
            Set RS2 = New Recordset
            RS2.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & rs1("docno") & " and a.docdt='" & Format(rs1("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode and a.type='U'", DB, adOpenStatic
            Do While Not RS2.EOF
                Print #1, Space(5) & Padr(RS2("Godown   Code"), 6, " ") & Space(2) & Padr(RS2("Waste"), 5, " "); Space(2); Padr(RS2("Description"), 31, " "); Padl(INF(RS2("       Gross      Weight"), 3), 14, " "); Padl(INF(RS2("         Tare      Weight"), 3), 14, " "); Padl(INF(RS2("         Nett      Weight"), 3), 14, " ")
                tot = tot + RS2("         Nett      Weight")
                Co = Co + 1
                RS2.MoveNext
                If Co >= PageLen Then
                    Print #1, Space(5); String(50, "-")
                    Print #1, Chr(12)
                    Co = 0
                    Pg = Pg + 1
                    Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 88, " "); "F"; Chr(27)
                    Print #1,
                    Print #1, Space(5); "Useable Waste Listing" & Space(2); Space(42) & "Dt: "; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:" & Padl(Pg, 3, " ")
                    Print #1, Space(5) & String(88, "-")
                    Print #1, Space(5) & "Doc.No.   Doc.Dt  "
                    Print #1, Space(5) & "Godown  Waste  Description                      Gross Weight   Tare Weight   Nett Weight"
                    Print #1, Space(5) & "  Code   Type   "
                    Print #1, Space(5) & String(88, "-")
                    Co = Co + 5
                End If
            Loop
            rs1.MoveNext
        Loop
            Print #1, Space(5) & String(88, "-")
            Print #1, Space(45); "** Total ** "; Space(10); Padl(INF(tot, 3), 26, " ")
            Print #1, Space(5) & String(88, "-")
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
    desc.Caption = "Query"
    On Error GoTo GoFirstError
    adoPrimaryRS.MoveFirst
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"",a.baleno, a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"" ,rate,value from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoSecondaryRS
    Call GRIDALIGN
    grddatagrid.Columns(6).Visible = False
    grddatagrid.Columns(13).Visible = False
    StatusBar1.Panels(2).Text = "First Record"
    Call bindcontls
    'calling fir procedure from module
    Call navi1(BUTTON)
    Call FIR(BUTTON)
    Beep
    Exit Sub
GoFirstError:
    MsgBox Err.description, vbInformation, head
Case 6
        'next
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
        adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"",a.baleno, a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"",rate,value  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
        grddatagrid.Columns(6).Visible = False
        grddatagrid.Columns(13).Visible = False
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
        adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"",a.baleno, a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"",rate,value  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
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
        adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"",a.baleno, a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"",rate,value  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.type='U' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
        grddatagrid.Columns(6).Visible = False
        grddatagrid.Columns(13).Visible = False
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
        adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"",rate,value  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode and a.type='U' ", DB, adOpenStatic, adLockBatchOptimistic
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
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"",a.baleno, a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"",rate,value  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode and a.type='U'", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
        grddatagrid.Columns(6).Visible = False
        grddatagrid.Columns(13).Visible = False
        StatusBar1.Panels(2).Text = "Last Record"
        Call bindcontls
        'calling las procedure from module
        Call navi1(BUTTON)
        Call las(BUTTON)
        Beep
        Exit Sub
GoLastError:
        MsgBox Err.description, vbInformation, head

Case 9

 If adoSecondaryRS.RecordCount <> 0 Then
    tmp = Opt
    Opt = ""
    adoSecondaryRS.MoveFirst
    Do While Not adoSecondaryRS.EOF
        If (Trim(grddatagrid.Columns(7).Text) = "" Or IsNull(grddatagrid.Columns(7).Text) = True Or Trim(grddatagrid.Columns(8).Text) = "" Or IsNull(grddatagrid.Columns(8).Text) = True) Then
                adoSecondaryRS.Delete
        End If
        adoSecondaryRS.MoveNext
    Loop
    If MaskEdBox1.Text = "__/__/____" Then
        MsgBox "Document Date cannot be empty"
        Opt = tmp
        MaskEdBox1.SetFocus
        Exit Sub
    End If
    If Combo1.Text = Empty Then
        MsgBox "Shift cannot be empty"
        Opt = tmp
        Combo1.SetFocus
        Exit Sub
    End If
    If tmp = "add" Then
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
'            If grdDataGrid.Columns(5).Text = "" Then
'                MsgBox "Godown Cannot be Empty", vbInformation, head
'                grdDataGrid.Col = 5
'                grdDataGrid.SetFocus
'                Exit Sub
'            End If
            If grddatagrid.Columns(7).Text = "" Then
                MsgBox "Waste Cannot be Empty", vbInformation, head
                grddatagrid.Col = 6
                grddatagrid.SetFocus
                Exit Sub
            End If
             If grddatagrid.Columns(9).Text = "" Then
                MsgBox "Gross Weight Cannot be Empty", vbInformation, head
                grddatagrid.Col = 8
                grddatagrid.SetFocus
                Exit Sub
            End If
            adoSecondaryRS.MoveNext
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
    adoSecondaryRS.MoveFirst
    Do While Not adoSecondaryRS.EOF
        If 1 = 1 Then
            If MONTH(MaskEdBox1.Text) = 4 Or MONTH(MaskEdBox1.Text) = 5 Or MONTH(MaskEdBox1.Text) = 6 Then
                    Set Rs = New Recordset
                    Rs.Open "select qrate1 from rm_wasterate where wcode='" & grddatagrid.Columns(5).Text & "'", DB, adOpenStatic
                    If Not Rs.EOF Then
                    rate1 = Rs(0)
                    End If
            End If
            If MONTH(MaskEdBox1.Text) = 7 Or MONTH(MaskEdBox1.Text) = 8 Or MONTH(MaskEdBox1.Text) = 9 Then
                    Set Rs = New Recordset
                    Rs.Open "select qrate2 from rm_wasterate where wcode='" & grddatagrid.Columns(5).Text & "'", DB, adOpenDynamic
                    If Not Rs.EOF Then
                    rate1 = Rs(0)
                    End If
            End If
            If MONTH(MaskEdBox1.Text) = 10 Or MONTH(MaskEdBox1.Text) = 11 Or MONTH(MaskEdBox1.Text) = 12 Then
                    Set Rs = New Recordset
                    Rs.Open "select qrate3 from rm_wasterate where wcode='" & grddatagrid.Columns(6).Text & "'", DB
                    If Not Rs.EOF Then
                    rate1 = Rs(0)
                    End If
            End If
            If MONTH(MaskEdBox1.Text) = 1 Or MONTH(MaskEdBox1.Text) = 2 Or MONTH(MaskEdBox1.Text) = 3 Then
                    Set Rs = New Recordset
                    Rs.Open "select qrate4 from rm_wasterate where wcode='" & grddatagrid.Columns(5).Text & "'", DB, adOpenStatic
                    If Not Rs.EOF Then
                    rate1 = Rs(0)
                    End If
            End If
            DB.Execute "INSERT INTO rm_waste(divcode,docno,docdt,shift,type,wcode,netwt,grosswt,tarewt,rate,baleno,value)  VALUES ('" & Divcode & "'," & txtFields(0).Text & ",'" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' ,'" & str & "','U','" & grddatagrid.Columns(7).Text & "','" & IIf(grddatagrid.Columns(11).Text = "", 0, grddatagrid.Columns(11).Text) & "'," & IIf(grddatagrid.Columns(9).Text = "", 0, grddatagrid.Columns(9).Text) & "," & IIf(grddatagrid.Columns(10).Text = "", 0, grddatagrid.Columns(10).Text) & "," & rate1 & "," & grddatagrid.Columns(5).Text & "," & IIf(grddatagrid.Columns(11).Text = "", 0, grddatagrid.Columns(11).Text) & " * " & rate1 & " )"
         Else
            DB.Execute " INSERT INTO rm_waste(divcode,docno,docdt,shift,type,wcode,netwt,cntcd,gcode,grosswt,tarewt)  VALUES ('" & Divcode & "'," & txtFields(0).Text & ",'" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' ,'" & str & "','" & grddatagrid.Columns(8).Text & "','" & grddatagrid.Columns(6).Text & "','" & IIf(grddatagrid.Columns(11).Text = "", 0, grddatagrid.Columns(11).Text) & "','" & grddatagrid.Columns(4).Text & "','" & grddatagrid.Columns(5).Text & "'," & IIf(grddatagrid.Columns(9).Text = "", 0, grddatagrid.Columns(9).Text) & "," & IIf(grddatagrid.Columns(10).Text = "", 0, grddatagrid.Columns(10).Text) & ")"
        End If
        adoSecondaryRS.MoveNext
    Loop

    DB.CommitTrans
    Opt = tmp
    MsgBox "Record(s) Saved", vbInformation, head
    Opt = " "
    Call QUERY_MODE
    BUTTON(4).Enabled = True
    End If
End If
If tmp = "del" Then
    DB.Execute ("delete from rm_waste where DOCNO =" & Trim(KslList1.Code) & " AND DOCDT='" & Trim(Format(KslList1.description, "yyyy-mm-dd")) & "'")
    DB.CommitTrans
    MsgBox "Record(s) Deleted", vbInformation, head
    Opt = " "
    Call QUERY_MODE
    BUTTON(4).Enabled = True
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
    Rs.Open "select grosswt,tarewt,netwt from rm_waste where divcode='" & Divcode & "' and docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "'", DB, adOpenDynamic, adLockOptimistic
    adoSecondaryRS.MoveFirst
    Do While Not adoSecondaryRS.EOF
        Rs("grosswt") = adoSecondaryRS(9) 'Gross Wt
        Rs("tarewt") = adoSecondaryRS(10) 'Tare Wt
        Rs("netwt") = adoSecondaryRS(11)  'Net Wt
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
Case 11
    'EXIT
    Reset
    Unload Me

End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure BUTTON_Click of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo1_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Combo1_KeyDown of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error

If Opt = "add" Then
    If Combo1.Text = " " And MaskEdBox1.Text <> "__/__/____" Then
        MsgBox "Select any Type from the drop down list", vbInformation, head
        Combo1.SetFocus
        Exit Sub
    Else
        Set Rs = New Recordset
        Rs.Open "select isnull(max(docno),0) from rm_waste", DB, adOpenStatic, adLockBatchOptimistic
        If Rs(0) = 0 Then
            txtFields(0).Text = Rs(0).value + 1
        Else
            txtFields(0).Text = Rs(0).value + 1
        End If
        'adoSecondaryRS.Requery
        'adoSecondaryRS.AddNew
        Call GRIDALIGN
'        Set rs = New Recordset
'        rs.Open "Select wcode,wdes,type from rm_wastetype where type='U' and divcode='" & Divcode & "'", db, adOpenStatic
'        If Not rs.EOF Then
'            Do While Not rs.EOF
'                adoSecondaryRS("waste") = rs(0)
'                adoSecondaryRS("Description") = rs(1)
'                adoSecondaryRS.AddNew
'            rs.MoveNext
'            Loop
'        End If
'        If Trim(adoSecondaryRS("waste")) = "" Then
'                adoSecondaryRS.Delete adAffectCurrent
'
'        End If
'        adoSecondaryRS.MoveFirst
'        adoSecondaryRS.AddNew
'        grdDataGrid.Bookmark = 1
        Set sp = New Recordset
        sp.Open "select isnull(max(isnull(baleno,0))+1,1) from rm_waste where docdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "'", DB, adOpenStatic
        grddatagrid.Columns(5).Text = sp(0)
        
        grddatagrid.Row = 0
        grddatagrid.Col = 6
        grddatagrid.SetFocus
        StatusBar1.Panels(2).Text = "Enter Count Code"
    End If
End If

Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Combo1_LostFocus of Form Wastentry", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command3_Click of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

    If txtqry <> "" Then
        BUTTON(9).Enabled = False
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"",a.baleno, a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight"" from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode and docno=" & Trim(txtqry.Text) & " and a.type='U' order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Record Found", vbInformation, head
            txtqry.Text = ""
            txtqry.SetFocus
            Exit Sub
        Else
            adoPrimaryRS.MoveFirst
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"",a.baleno, a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"",rate,value  from rm_waste a,rm_wastetype b where a.type='U' and a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
            Call GRIDALIGN
            grddatagrid.Columns(6).Visible = False
            grddatagrid.Columns(13).Visible = False
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

Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command4_Click of Form Wastentry", vbInformation, head
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
    StatusBar1.Panels(1).Text = head
    Call QUERY_MODE
    DTPicker1.MinDate = yfdate
    DTPicker1.MaxDate = pdate

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Load of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub QUERY_MODE()
On Error GoTo QUERY_MODE_Error

If Opt = " " Or Opt = "qry" Then
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/Usable"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight"" from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode and a.type='U' order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRS.RecordCount > 0 Then
        adoPrimaryRS.MoveFirst
        pr = adoPrimaryRS("docno")
        dr = adoPrimaryRS("docdt")
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"",a.baleno, a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"",rate,value  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.type='U' and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
        grddatagrid.Columns(6).Visible = False
        grddatagrid.Columns(13).Visible = False
        Call disablcontls
        Call bindcontls
        Frame1.Enabled = False
        Call GRdlock
        Call NEWFORM1(BUTTON, GSNO)
    Else
        Call Norecfound(BUTTON)
        MsgBox "No Records Found", vbInformation, head
        Set grddatagrid.DataSource = Nothing
        Combo1.Text = " "
        txtFields(0).Text = ""
        MaskEdBox1.Text = "__/__/____"
        End If
    End If
    If Opt = "del" Then
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight"" from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode and docno=" & Trim(KslList1.Code) & " and docDT='" & Trim(Format(KslList1.description, "YYYY-MM-DD")) & "' AND A.TYPE='U' order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.MoveFirst
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count  Code"",a.baleno, a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"",RATE,VALUE  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' AND A.TYPE='U' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoSecondaryRS
    Call GRIDALIGN
    For i = 0 To 10
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
    grddatagrid.Columns(6).Visible = False
    grddatagrid.Columns(13).Visible = False
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    BUTTON(9).SetFocus
End If
If Opt = "mod" Then
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""        Gross      Weight"",a.tarewt""Tare Weight"" ,a.netwt ""Nett Weight"" from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode and docno=" & Trim(KslList1.Code) & " and docDT='" & Trim(Format(KslList1.description, "YYYY-MM-DD")) & "' AND A.TYPE='U' order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.MoveFirst
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count  Code"",a.baleno, a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight"",RATE,VALUE  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' AND A.TYPE='U' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoSecondaryRS
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
    grddatagrid.Columns(4).Width = 1379.906
    grddatagrid.Columns(6).Visible = False
    grddatagrid.Columns(13).Visible = False
'
'    grddatagrid.Columns(8).Width = 1140.095
'    grddatagrid.Columns(7).Width = 1379.906
'    grddatagrid.Columns(6).Width = 3195.213
'    grddatagrid.Columns(5).Width = 764.7874
'    grddatagrid.Columns(4).Width = 1140.095
'    grddatagrid.Columns(8).Alignment = dbgRight
'    grddatagrid.Columns(8).NumberFormat = "###.000"

    grddatagrid.AllowUpdate = True

    grddatagrid.CurrentCellModified = True
'    grddatagrid.EditActive = True

    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    grddatagrid.Col = 9
    grddatagrid.SetFocus
   End If

Exit Sub
QUERY_MODE_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure QUERY_MODE of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub bindcontls()
On Error Resume Next
  Dim oText As TextBox
  'Binding  the text boxes to the data source
   For Each oText In Me.txtFields
   Set oText.DataSource = adoPrimaryRS
  Next
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure ENABLCONTLS of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.txtFields
    tb.Locked = True
Next
'Frame2.Enabled = False
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grdDataGrid_AfterColEdit_Error

If Opt = "add" Then
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
        adoSecondaryRS.MoveFirst
        Do While Not adoSecondaryRS.EOF
            If itemc = adoSecondaryRS(4) And itemd = adoSecondaryRS(5) And itemf = adoSecondaryRS(7) Then
                cut = cut + 1
            End If
            adoSecondaryRS.MoveNext
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

Exit Sub
grdDataGrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grdDataGrid_AfterColEdit of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
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
On Error GoTo grdDataGrid_GotFocus_Error

If Opt = "add" Then
Select Case grddatagrid.Col
Case 11
grddatagrid.Columns(10).Text = IIf(grddatagrid.Columns(8).Text = "", 0, val(grddatagrid.Columns(8).Text)) + IIf(grddatagrid.Columns(9).Text = "", 0, val(grddatagrid.Columns(9).Text))
End Select
End If

Exit Sub
grdDataGrid_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grdDataGrid_GotFocus of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)


On Error GoTo grddatagrid_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
      SendKeys ("{TAB}")
    Exit Sub
End If
If KeyCode = 13 And Opt = "mod" Then
      SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_KeyDown of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error

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

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_KeyPress of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_LostFocus()
On Error GoTo grddatagrid_LostFocus_Error

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
adoSecondaryRS.MoveFirst
Do While Not adoSecondaryRS.EOF
If itemc = adoSecondaryRS(4) And itemd = adoSecondaryRS(5) And itemf = adoSecondaryRS(7) Then
cut = cut + 1
End If
adoSecondaryRS.MoveNext
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
If grddatagrid.Row >= 0 Then
If grddatagrid.Columns(5) <> "" And grddatagrid.Columns(6) <> "" Then
If grddatagrid.Columns(8).Text = "" Then
If Trim(grddatagrid.Columns(8).Text) <> "" Then
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

Exit Sub
grddatagrid_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_LostFocus of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
' If opt = "add" Or opt = "mod" Then
' If grddatagrid.Row >= 0 Then
' Select Case grddatagrid.Col
'
'Case 8
'If Trim(grddatagrid.Columns(7).Text) = "" Then
'MsgBox "Salable/Usable Cannot be empty", vbInformation, head
'grddatagrid.Col = 7
'grddatagrid.SetFocus
'
'
'End If
'If (grddatagrid.Columns(7).Text = "U" Or grddatagrid.Columns(7).Text = "S") Then
''grddatagrid.Col = 8
''grddatagrid.SetFocus
'Else
'
''MsgBox "Enter S-Salable,U-Useable", vbInformation, head
'StatusBar1.Panels(2).Text = "Enter S-Salable,U-Useable"
'grddatagrid.Col = 7
'grddatagrid.SetFocus
'End If
'
'End Select
'End If
'End If
'If opt = "add" Or opt = "mod" Then
'Select Case grddatagrid.Col
'Case 10
'On Error Resume Next
'grddatagrid.Columns(10).Text = IIf(grddatagrid.Columns(8).Text = "", 0, Val(grddatagrid.Columns(8).Text)) - IIf(grddatagrid.Columns(9).Text = "", 0, Val(grddatagrid.Columns(9).Text))
'End Select
'End If

On Error GoTo GRDDATAGRID_RowColChange_Error

If Opt = "add" Or Opt = "mod" Then
On Error Resume Next
    Select Case grddatagrid.Col
    Case 5
        If Trim(grddatagrid.Columns(4).Text) <> "" Then
        If Record_Exists("rm_count") = False Then Exit Sub
            Set Rs = New Recordset
            Rs.Open "select count(*) from rm_count where cntcd='" & grddatagrid.Columns(4).Text & "'", DB, adOpenDynamic, adLockOptimistic
            If Rs(0) = 0 Then
                SSTab1.Visible = False
                Frame3.Visible = True
                Frame3.ZOrder
                Buttonframe.Enabled = False
                Label15.Caption = "Count Listing"
                KslList1.conn = connectstring
                KslList1.Table = "rm_count"
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
'        If Record_Exists("rm_god") = False Then Exit Sub
'            Set rs = New Recordset
'            rs.Open "select count(*) from rm_god where gcode='" & grdDataGrid.Columns(5).Text & "'", db, adOpenDynamic, adLockOptimistic
'            If rs(0) = 0 Then
'                SSTab1.Visible = False
'                Frame3.Visible = True
'                Frame3.ZOrder
'                Buttonframe.Enabled = False
'                Label15.Caption = "Godown Listing"
'                KslList1.conn = connectstring
'                KslList1.table = "rm_god"
'                KslList1.listfield1 = "gcode"
'                KslList1.listfield2 = "gname"
'                KslList1.SetFocus
'                StatusBar1.Panels(2).Text = "Select Godown from the List"
'            Else
'                StatusBar1.Panels(2).Text = "Enter Waste code"
'                grdDataGrid.Col = 6
'                grdDataGrid.SetFocus
'            End If

    Case 7
        If Record_Exists("rm_wastetype where type='U' and divcode='" & Divcode & "'") = False Then Exit Sub
            Set Rs = New Recordset
            Rs.Open "select count(*) from rm_wastetype where wcode='" & grddatagrid.Columns(6).Text & "' and divcode='" & Divcode & "' and type='U'", DB, adOpenDynamic, adLockOptimistic
            If Rs(0) = 0 Then
                SSTab1.Visible = False
                Frame3.Visible = True
                Frame3.ZOrder
                Buttonframe.Enabled = False
                Label15.Caption = "Waste Listing"
                KslList1.conn = connectstring
                KslList1.Table = "rm_wastetype where divcode='" & Divcode & "' and type='U'"
                KslList1.listfield1 = "wcode"
                KslList1.listfield2 = "wdes"
                KslList1.SetFocus
                StatusBar1.Panels(2).Text = "Select waste from the List"
            Else
                Set Rs = New Recordset
                Rs.Open "select wdes from rm_wastetype where wcode='" & grddatagrid.Columns(6).Text & "'", DB, adOpenDynamic, adLockOptimistic
                grddatagrid.Columns(7).Text = Rs(0)
                If Not Rs.EOF Then
                    grddatagrid.Col = 8
                    grddatagrid.SetFocus
                End If
            End If
    Case 11
       
       If val(grddatagrid.Columns(10).Text) > val(grddatagrid.Columns(9).Text) Then
            StatusBar1.Panels(2).Text = "Tare Weight Less Than Gross Weight"
            grddatagrid.Columns(10).Text = Empty
            grddatagrid.Col = 10
            grddatagrid.SetFocus
            Exit Sub
        Else
            If grddatagrid.Columns(10).Text = "" Then
            grddatagrid.Columns(10).Text = 2
            End If
            grddatagrid.Columns(11).Text = Abs(val(grddatagrid.Columns(9).Text) - IIf(IsEmpty(grddatagrid.Columns(10).Text), 0, val(grddatagrid.Columns(10).Text)))
            grddatagrid.Columns(10).Locked = True
            startno = val(grddatagrid.Columns(5).Text)
            If Opt = "add" Then
            grddatagrid.AllowAddNew = True
            grddatagrid.Row = grddatagrid.Row + 1
            grddatagrid.Columns(5).Text = val(startno + 1)
            grddatagrid.Col = 6
            grddatagrid.SetFocus
            End If
        End If
    End Select
End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_RowColChange of Form Wastentry", vbInformation, head
Screen.MousePointer = 0

End Sub


Private Sub Lovcancel_Click()
On Error GoTo Lovcancel_Click_Error

Frame3.Visible = False
SSTab1.Visible = True
Buttonframe.Enabled = True
If KslList1.listfield1 = "wcode" Then
    grddatagrid.Col = 6
    grddatagrid.SetFocus
    Exit Sub
End If
If KslList1.listfield1 = "cntcd" Then
    grddatagrid.Col = 5
    grddatagrid.SetFocus
    Exit Sub
End If



Call BUTTON_Click(10)
Call QUERY_MODE

Exit Sub
Lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Lovcancel_Click of Form Wastentry", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure MaskEdBox1_KeyDown of Form Wastentry", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure MaskEdBox1_LostFocus of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_Validate(Cancel As Boolean)
'If opt = "add" Then
'
'If MaskEdBox1.Text = "__/__/____" Then
'MsgBox "Document Date Cannot be empty", vbInformation, head
'Cancel = True
'MaskEdBox1.SetFocus
'
'Else
'Combo1.SetFocus
'End If
'End If
End Sub


Private Sub lovok_Click()
On Error GoTo lovok_Click_Error

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
        grddatagrid.Columns(7).Text = KslList1.Code
        grddatagrid.Columns(8).Text = KslList1.description
        grddatagrid.Col = 9
        grddatagrid.SetFocus
        StatusBar1.Panels(2).Text = "Enter 7 integers and 3 decimals"

Case "cast(docno as varchar)"
    Call QUERY_MODE
End Select


Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure lovok_Click of Form Wastentry", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

MaskEdBox1.Text = DTPicker1.value

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure DTPicker1_CloseUp of Form Wastentry", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure navi1 of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub GRIDALIGN()
On Error GoTo GRIDALIGN_Error

        grddatagrid.Columns(1).Width = 764.7874
        grddatagrid.Columns(2).Width = 3000.189
        grddatagrid.Columns(3).Width = 1379.906
        grddatagrid.Columns(4).Width = 1379.906
        grddatagrid.Columns(5).Width = 750.0473
        grddatagrid.Columns(6).Width = 705.2599
        grddatagrid.Columns(7).Width = 800.906
        grddatagrid.Columns(8).Alignment = dbgLeft
        grddatagrid.Columns(8).Width = 1500.8583
        grddatagrid.Columns(9).Width = 1005.165
        grddatagrid.Columns(10).Width = 1005.165
        grddatagrid.Columns(11).Width = 1000
        grddatagrid.Columns(12).Width = 0
        grddatagrid.Columns(9).Alignment = dbgRight
        grddatagrid.Columns(10).Alignment = dbgRight
        grddatagrid.Columns(11).Alignment = dbgRight
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(2).Visible = False
        grddatagrid.Columns(3).Visible = False
        grddatagrid.Columns(4).Visible = False
        grddatagrid.Columns(5).Visible = True
        grddatagrid.Columns(8).NumberFormat = "######.000"
        grddatagrid.Columns(9).NumberFormat = "######.000"
        grddatagrid.Columns(10).NumberFormat = "######.000"
        'grddatagrid.Columns(8).Alignment = dbgRight
        grddatagrid.Columns(9).Alignment = dbgRight
        grddatagrid.Columns(10).Alignment = dbgRight

Exit Sub
GRIDALIGN_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRIDALIGN of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub GRdlock()
On Error GoTo GRdlock_Error

For i = 0 To grddatagrid.Columns.Count - 1
grddatagrid.Columns(i).Locked = True
Next

Exit Sub
GRdlock_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRdlock of Form Wastentry", vbInformation, head
Screen.MousePointer = 0
End Sub

