VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form FrmIssue 
   Caption         =   "Form Issue"
   ClientHeight    =   8220
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9480
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8220
   ScaleWidth      =   9480
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   12
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   7590
         Picture         =   "FrmIssue.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "List (Ctrl L)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssue.frx":0397
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "FrmIssue.frx":07E1
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "FrmIssue.frx":0B43
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "FrmIssue.frx":0E4D
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Cancel (Ctrl BackSpace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssue.frx":11C9
         Height          =   510
         Index           =   9
         Left            =   4230
         Picture         =   "FrmIssue.frx":14D3
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssue.frx":1875
         Height          =   510
         Index           =   11
         Left            =   5295
         Picture         =   "FrmIssue.frx":1CBF
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssue.frx":2054
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "FrmIssue.frx":249E
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssue.frx":27EE
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "FrmIssue.frx":2AF8
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssue.frx":2E72
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
         Picture         =   "FrmIssue.frx":317C
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssue.frx":3518
         Height          =   510
         Index           =   5
         Left            =   2160
         Picture         =   "FrmIssue.frx":3962
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssue.frx":3CC7
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "FrmIssue.frx":3FD1
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssue.frx":4364
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "FrmIssue.frx":47AE
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmIssue.frx":4AFB
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "FrmIssue.frx":4E05
         Style           =   1  'Graphical
         TabIndex        =   13
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   6810
         TabIndex        =   23
         Top             =   240
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   8340
         TabIndex        =   22
         Top             =   240
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   24
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
            TextSave        =   "02/11/2015"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "3:18 PM"
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
      Height          =   5445
      Left            =   300
      TabIndex        =   25
      Top             =   1035
      Width           =   8865
      _ExtentX        =   15637
      _ExtentY        =   9604
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "FrmIssue.frx":519A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "grddatagrid"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Frame6"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).ControlCount=   4
      Begin VB.Frame Frame6 
         Height          =   1125
         Left            =   150
         TabIndex        =   51
         Top             =   4185
         Width           =   8595
         Begin VB.TextBox txtTotalAmt 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   1
            EndProperty
            Height          =   360
            Left            =   6825
            Locked          =   -1  'True
            TabIndex        =   55
            Top             =   645
            Width           =   1485
         End
         Begin VB.TextBox txtFields 
            DataField       =   "Form_No"
            Height          =   330
            Index           =   1
            Left            =   1485
            MaxLength       =   50
            TabIndex        =   6
            Top             =   210
            Width           =   3435
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "Form_dt"
            Height          =   330
            Index           =   1
            Left            =   6825
            TabIndex        =   7
            Top             =   195
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   582
            _Version        =   393216
            CalendarForeColor=   -2147483640
            Format          =   63242241
            CurrentDate     =   36218
         End
         Begin VB.Label Label1 
            Caption         =   "Total Bill Amount"
            Height          =   315
            Left            =   5520
            TabIndex        =   54
            Top             =   720
            Width           =   1275
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Form No."
            Height          =   195
            Index           =   1
            Left            =   135
            TabIndex        =   53
            Top             =   285
            Width           =   645
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Form Date"
            Height          =   195
            Index           =   4
            Left            =   5550
            TabIndex        =   52
            Top             =   270
            Width           =   735
         End
      End
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   2415
         Left            =   150
         TabIndex        =   5
         Top             =   1770
         Width           =   8565
         _ExtentX        =   15108
         _ExtentY        =   4260
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
         TabIndex        =   39
         Top             =   -5160
         Visible         =   0   'False
         Width           =   7995
         Begin VB.PictureBox KslList1 
            ForeColor       =   &H8000000D&
            Height          =   3255
            Left            =   420
            ScaleHeight     =   3195
            ScaleWidth      =   7125
            TabIndex        =   42
            Top             =   660
            Width           =   7185
         End
         Begin VB.CommandButton lovcancel 
            Caption         =   "&Cancel"
            DownPicture     =   "FrmIssue.frx":51B6
            Height          =   615
            Left            =   4680
            Picture         =   "FrmIssue.frx":5598
            Style           =   1  'Graphical
            TabIndex        =   41
            Top             =   3915
            Width           =   1185
         End
         Begin VB.CommandButton lovok 
            Caption         =   "&OK"
            DownPicture     =   "FrmIssue.frx":596B
            Height          =   615
            Left            =   2940
            Picture         =   "FrmIssue.frx":5D51
            Style           =   1  'Graphical
            TabIndex        =   40
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
            TabIndex        =   43
            Top             =   120
            Width           =   7935
         End
      End
      Begin VB.Frame Frame1 
         Height          =   1590
         Left            =   150
         TabIndex        =   26
         Top             =   105
         Width           =   8595
         Begin VB.TextBox txtFields 
            DataField       =   "Form_Type"
            Height          =   330
            Index           =   0
            Left            =   1560
            TabIndex        =   4
            Top             =   1080
            Width           =   1245
         End
         Begin VB.TextBox Text3 
            Enabled         =   0   'False
            Height          =   330
            Left            =   2850
            Locked          =   -1  'True
            TabIndex        =   8
            TabStop         =   0   'False
            Top             =   1095
            Width           =   5490
         End
         Begin VB.TextBox Text2 
            Enabled         =   0   'False
            Height          =   330
            Left            =   2850
            Locked          =   -1  'True
            TabIndex        =   3
            TabStop         =   0   'False
            Top             =   660
            Width           =   5490
         End
         Begin VB.TextBox txtFields 
            DataField       =   "SlCode"
            Height          =   330
            Index           =   3
            Left            =   1560
            TabIndex        =   2
            Top             =   630
            Width           =   1245
         End
         Begin VB.TextBox txtFields 
            Alignment       =   1  'Right Justify
            DataField       =   "Form_Doc_No"
            Enabled         =   0   'False
            Height          =   330
            Index           =   2
            Left            =   1560
            TabIndex        =   0
            TabStop         =   0   'False
            Top             =   240
            Width           =   1245
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "Form_Doc_Dt"
            Height          =   330
            Index           =   0
            Left            =   6990
            TabIndex        =   1
            Top             =   225
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   582
            _Version        =   393216
            CalendarForeColor=   -2147483640
            Format          =   63242241
            CurrentDate     =   36218
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Form Type"
            Height          =   195
            Index           =   0
            Left            =   180
            TabIndex        =   50
            Top             =   1155
            Width           =   750
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Supplier Name"
            Height          =   195
            Index           =   5
            Left            =   165
            TabIndex        =   29
            Top             =   720
            Width           =   1035
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Document Date"
            Height          =   195
            Index           =   3
            Left            =   5595
            TabIndex        =   28
            Top             =   285
            Width           =   1125
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Document No."
            Height          =   195
            Index           =   2
            Left            =   180
            TabIndex        =   27
            Top             =   315
            Width           =   1035
         End
      End
      Begin VB.Frame Frame2 
         Height          =   2550
         Left            =   150
         TabIndex        =   48
         Top             =   1665
         Width           =   8595
      End
   End
   Begin VB.Frame Frame5 
      Height          =   2430
      Left            =   1005
      TabIndex        =   30
      Top             =   2280
      Visible         =   0   'False
      Width           =   7620
      Begin VB.TextBox Text1 
         Height          =   330
         Left            =   3390
         MaxLength       =   6
         TabIndex        =   33
         Top             =   900
         Width           =   2055
      End
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         DownPicture     =   "FrmIssue.frx":6117
         Height          =   615
         Left            =   2500
         Picture         =   "FrmIssue.frx":64FD
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "FrmIssue.frx":68C3
         Height          =   615
         Left            =   4020
         Picture         =   "FrmIssue.frx":6CA5
         Style           =   1  'Graphical
         TabIndex        =   31
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Find  from Document  No. "
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   480
         TabIndex        =   35
         Top             =   975
         Width           =   1860
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Find"
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
         TabIndex        =   34
         Top             =   120
         Width           =   7620
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5175
      Left            =   360
      TabIndex        =   44
      Top             =   930
      Visible         =   0   'False
      Width           =   8955
      Begin listacx.codelist KslDesc1 
         Height          =   3390
         Left            =   660
         TabIndex        =   49
         Top             =   705
         Width           =   7245
         _ExtentX        =   12779
         _ExtentY        =   5980
         caption         =   ""
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&Cancel"
         DownPicture     =   "FrmIssue.frx":7078
         Height          =   615
         Left            =   4755
         Picture         =   "FrmIssue.frx":745A
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   4350
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "FrmIssue.frx":782D
         Height          =   615
         Left            =   3000
         Picture         =   "FrmIssue.frx":7C13
         Style           =   1  'Graphical
         TabIndex        =   45
         Top             =   4380
         Width           =   1185
      End
      Begin VB.Label Listcap 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
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
         TabIndex        =   47
         Top             =   120
         Width           =   8790
      End
   End
   Begin VB.Label Label4 
      Caption         =   "GIN No."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   975
      TabIndex        =   38
      Top             =   1320
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.Label Label5 
      Caption         =   "TC"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2415
      TabIndex        =   37
      Top             =   1320
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Form Issue"
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
      Left            =   300
      TabIndex        =   36
      Top             =   660
      Width           =   1425
   End
End
Attribute VB_Name = "FrmIssue"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim rstCode As Recordset
Dim DB As Connection
Dim Opt As String
Dim deltype As String
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
 If ToValidFinYear(Divcode) = False Then Exit Sub
        DTPicker1(1).Enabled = True
        Opt = "add"
        desc.Caption = "Addition"
        Screen.MousePointer = 11
        stbar.Panels(2).Text = "Addition"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select Form_Doc_No,Form_Doc_Dt,SlCode,Form_Type,Form_NO,Form_Dt,Divcode from  FA_FORM_ISSH where 1= 1", DB, adOpenStatic, adLockBatchOptimistic
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select Form_Doc_No,Form_Doc_Dt,Form_DocSNo,PjVOCNo,PjVOCDt,BillNo,BillDt,BillAmt,VCat,t.Divcode,Form_Divcode,Div.Abbr as Division from FA_FORM_ISST t ,PP_divmas Div WHERE Div.Divcode=t.divcode And  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
        Call bindcontls
        text2.Text = ""
        adoPrimaryRS.AddNew
        adoSecondaryRS.AddNew
        Set grddatagrid.DataSource = adoSecondaryRS
        ReDim itary(100, 0)
        DB.BeginTrans
        Call GRDALIGN
        Call ENABLCONTLS
        st1 = "B"
        st2 = "B"
        Txtfields(2).Locked = True
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowAddNew = True
         Call adddelmod(BUTTON)
         Fnd = "n"
         mvd = "N"
         RW = 1000
         Screen.MousePointer = 0
         On Error Resume Next
         DTPicker1(0).MaxDate = yldate
         DTPicker1(0).MinDate = yfdate
         DTPicker1(1).MaxDate = yldate
         DTPicker1(1).MinDate = yfdate
         DTPicker1(0).value = pdate
         DTPicker1(1).value = pdate
         Txtfields(3).SetFocus
Case 1
'        'Modification
 If ToValidFinYear(Divcode) = False Then Exit Sub
        Opt = "mod"
        desc.Caption = "Modification"
        If Record_Exists("FA_FORM_ISSH where divcode='" & Divcode & "'") = False Then Exit Sub
       ' SSTab1.Visible = False
'        Frame3.Visible = True
'        Frame3.ZOrder
        Buttonframe.Enabled = False
'        Listcap.Caption = "select code from list"
'        KslDesc1.conn = connectstring
'        KslDesc1.table = "FA_FORM_ISSH"
'        KslDesc1.listfield1 = "Form_Doc_No"
'        KslDesc1.listfield2 = "Form_Doc_Dt"
'        KslDesc1.SetFocus
        stbar.Panels(2).Text = "Select Code from the List"
'        Buttonframe.Enabled = False
        Call adddelmod(BUTTON)
        grddatagrid.AllowUpdate = True
        DB.BeginTrans
        stbar.Panels(2).Text = "Select the Record to be  Deleted"
        LookUp.clear = True
        LookUp.query = "select a.Form_Doc_No""Form Doc. No."",a.Form_Doc_Dt""Form Doc. Date"",a.slCode""Supplier Code"",b.slName""Supplier Name"" from FA_FORM_ISSH a,fa_slmas b where a.divcode='" & Divcode & "' and a.slcode=b.SlCode"
        LookUp.Caption = "Document No Listing"
        LookUp.DefCol = "PartyName"
        LookUp.ALIGN = "1500,1500,1500,4000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            SSTab1.Visible = True
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select Form_Doc_No,Form_Doc_Dt,SlCode,Form_Type,Form_NO,Form_Dt from  FA_FORM_ISSH where divcode='" & Divcode & "' and Form_Doc_No='" & LookUp.Fields(0) & "' and Form_Doc_Dt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select Form_Doc_No,Form_Doc_Dt,Form_DocSNo,PjVOCNo,PjVOCDt,BillNo,BillDt,BillAmt,VCat from FA_FORM_ISST A WHERE  divcode ='" & Divcode & "' and Form_Doc_No='" & LookUp.Fields(0) & "' and Form_Doc_Dt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
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
        Else
           Buttonframe.Enabled = True
           BUTTON_Click (10)
           SSTab1.Visible = True
        End If

 Case 2
         'Modification
          If ToValidFinYear(Divcode) = False Then Exit Sub
        Opt = "del"
        desc.Caption = "Deletion"
        If Record_Exists("FA_FORM_ISSH where divcode='" & Divcode & "'") = False Then Exit Sub
       ' SSTab1.Visible = False
'        Frame3.Visible = True
'        Frame3.ZOrder
        Buttonframe.Enabled = False
'        Listcap.Caption = "select code from list"
'        KslDesc1.conn = connectstring
'        KslDesc1.table = "FA_FORM_ISSH"
'        KslDesc1.listfield1 = "Form_Doc_No"
'        KslDesc1.listfield2 = "Form_Doc_Dt"
'        KslDesc1.SetFocus
        stbar.Panels(2).Text = "Select Code from the List"
'        Buttonframe.Enabled = False
        Call adddelmod(BUTTON)
        grddatagrid.AllowUpdate = True
        DB.BeginTrans
        stbar.Panels(2).Text = "Select the Record to be  Deleted"
        LookUp.clear = True
        LookUp.query = "select a.Form_Doc_No as 'Form Doc. No',a.Form_Doc_Dt as 'Form Doc. Date',a.slCode 'Supplier Code',b.slName 'Supplier Name' from FA_FORM_ISSH a,fa_slmas b where a.divcode='" & Divcode & "' and a.slcode=b.SlCode"
        LookUp.Caption = "Document No Listing"
        LookUp.DefCol = "Supplier Name"
        LookUp.ALIGN = "1500,1500,1500,4200"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            SSTab1.Visible = True
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select Form_Doc_No,Form_Doc_Dt,SlCode,Form_Type,Form_NO,Form_Dt from  FA_FORM_ISSH where divcode='" & Divcode & "' and Form_Doc_No='" & LookUp.Fields(0) & "' and Form_Doc_Dt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select Form_Doc_No,Form_Doc_Dt,Form_DocSNo,PjVOCNo,PjVOCDt,BillNo,BillDt,BillAmt,VCat,divcode from FA_FORM_ISST WHERE  divcode ='" & Divcode & "' and Form_Doc_No='" & LookUp.Fields(0) & "' and Form_Doc_Dt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
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
        Else
           Buttonframe.Enabled = True
           BUTTON_Click (10)
           SSTab1.Visible = True
        End If
Case 3
        'Modification
        Opt = "fnd"
        desc.Caption = "Find"
        If Record_Exists("FA_FORM_ISSH where divcode='" & Divcode & "'") = False Then Exit Sub
       ' SSTab1.Visible = False
        stbar.Panels(2).Text = "Select Code from the List"
        Buttonframe.Enabled = False
        grddatagrid.AllowUpdate = True
        stbar.Panels(2).Text = "Select the Record to be  Find"
        LookUp.clear = True
        LookUp.query = "select a.Form_Doc_No 'Form Doc. No',a.Form_Doc_Dt 'Form Doc. Date',a.slCode 'Supplier Code',b.slName 'Supplier Name' from FA_FORM_ISSH a,fa_slmas b where a.divcode='" & Divcode & "' and a.slcode=b.SlCode"
        LookUp.Caption = "Document No Listing"
        LookUp.DefCol = "Supplier Name"
        LookUp.ALIGN = "2000,1800,1600,3000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            SSTab1.Visible = True
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select Form_Doc_No,Form_Doc_Dt,SlCode,Form_Type,Form_NO,Form_Dt from  FA_FORM_ISSH where divcode='" & Divcode & "' and  Form_Doc_No='" & LookUp.Fields(0) & "' and Form_Doc_Dt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select Form_Doc_No,Form_Doc_Dt,Form_DocSNo,PjVOCNo,PjVOCDt,BillNo,BillDt,BillAmt,VCat ,Div.abbr as  Division  from  FA_FORM_ISST t Inner Join PP_Divmas Div On Div.Divcode=t.Divcode  WHERE t.divcode='" & Divcode & "' and t.Form_Doc_No='" & LookUp.Fields(0) & "' and t.Form_Doc_Dt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
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
        'Query
        'Call query(BUTTON)
        'LIST
        If Record_Exists("FA_FORM_ISSH where divcode='" & Divcode & "' and Form_Doc_Dt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ") = False Then Exit Sub
        desc.Caption = "List"
        Set sp = New Recordset
        sp.Open "SHAPE {select distinct Form_Doc_No,Form_Doc_Dt,SlCode,Form_Type,Form_NO,Form_Dt from  FA_FORM_ISSH  where divcode='" & Divcode & "' and Form_Doc_Dt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  " & _
        " Order by Form_Doc_No} AS ParentCMD APPEND ({select distinct Form_Doc_No,Form_Doc_Dt,Form_DocSNo,PjVOCNo,PjVOCDt,BillNo,BillDt,BillAmt,VCat  from  FA_FORM_ISST where 1=1 Order by Form_Doc_No } AS ChildCMD RELATE Form_Doc_No TO Form_Doc_No,Form_Doc_Dt TO Form_Doc_Dt) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
        If sp.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        Set REPT = New Report.ReportView
        a = FreeFile()
        Close
        'Open "C:\amc_list.txt" For Output As #a
         Open KALFOLDERDATA & "\amc_list.TXT" For Output As #a
        pg1 = 1
        C = 0
        Call Amc_List_Header
       Do While Not sp.EOF
            Dim TmpSlRs As Recordset
            Set TmpSlRs = New Recordset
            TmpSlRs.Open "Select SlName From Fa_SlMas where SlCode='" & sp("SlCode") & "'", DB
            If Not TmpSlRs.EOF Then tmpslname = TmpSlRs!Slname
            Set TmpSlRs = New Recordset
            TmpSlRs.Open "Select Description From PO_FormType where typeCode='" & sp("Form_Type") & "'", DB
            If Not TmpSlRs.EOF Then TmpFormType = TmpSlRs!Description
            Print #a, Space(5) & Padr(tmpslname, 42, " ") & Space(1) & Padr(sp("Form_Type") & " - " & TmpFormType, 16, " ") & Space(1) & Padr(sp("Form_No"), 27, " ") & Space(2) & Padl(Format(sp("Form_Dt"), "DD/MM/YY"), 10, " ")
            C = C + 1
            If C >= PageLen Then
                Print #a, Space(5) & String(100, "-")
                Print #a, Chr(12)
                pg1 = pg1 + 1
                C = 0
                Call Amc_List_Header
            End If
         sp.MoveNext
       Loop
       Print #a, Space(5) & String(100, "-")
       Print #a, Chr(12)
       a = FreeFile()
       Close
       Close #a
'       Open "C:\amc_list.bat" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type amc_list.txt>prn"
'        Close #a
'        REPT.txtfile = "c:\amc_list.txt"
'        REPT.Batfile = "c:\amc_list.bat"
         a = FreeFile
         Call KALBATPROCESS("amc_list")
        Exit Sub
Case 5
       'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        'calling fir procedure from module
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        Call FIR(BUTTON)
        stbar.Panels(2).Text = "Records" & " " & adoPrimaryRS.AbsolutePosition & " / " & " " & adoPrimaryRS.RecordCount
        Exit Sub
GoFirstError:
    If err = 3021 Then
        MsgBox " No records Found", vbInformation, head
        Exit Sub
    End If
       
Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
        If Not adoPrimaryRS.EOF Then
            adoPrimaryRS.MoveNext
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
            adoPrimaryRS.MoveLast
             Call NEX(BUTTON)

        End If
        'show the current record
        stbar.Panels(2).Text = "Records" & " " & adoPrimaryRS.AbsolutePosition & " / " & " " & adoPrimaryRS.RecordCount
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        Exit Sub
GoNextError:
    If err = 3021 Then
        MsgBox " No records Found", vbInformation, head
        Exit Sub
    End If
  
Case 7
        'previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
        If Not adoPrimaryRS.BOF Then
            adoPrimaryRS.MovePrevious
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
            adoPrimaryRS.MoveFirst
            Call prev(BUTTON)
         End If
        'show the current record
        stbar.Panels(2).Text = "Records" & " " & adoPrimaryRS.AbsolutePosition & " / " & " " & adoPrimaryRS.RecordCount
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        Exit Sub
GoPrevError:
  If err = 3021 Then
    MsgBox " No records Found", vbInformation, head
    Exit Sub
  End If
 
Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Records" & " " & adoPrimaryRS.AbsolutePosition & " / " & " " & adoPrimaryRS.RecordCount
        'calling las procedure from module
        
        Call las(BUTTON)
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        Exit Sub
GoLastError:
       If err = 3021 Then
         MsgBox " No records Found", vbInformation, head
         Exit Sub
       End If

Case 9
        'Save
        Screen.MousePointer = 11
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        DTPicker1(0).Enabled = False
        On Error GoTo ER1
        If Opt = "add" Then
            If Trim(Txtfields(3).Text) = "" Then
                MsgBox "Please enter the Party Code", vbInformation, head
                Screen.MousePointer = 0
                Txtfields(3).SetFocus
                Exit Sub
            End If
            Opt = ""
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
                If adoSecondaryRS(3) = "" Or adoSecondaryRS(3) = " " Or IsEmpty(adoSecondaryRS(3)) = True Or IsNull(adoSecondaryRS(3)) = True Then
                    adoSecondaryRS.Delete
                ElseIf IsNull(adoSecondaryRS(7)) Then
                    MsgBox "Please enter the amount", vbInformation, head
                    grddatagrid.Col = 7
                    grddatagrid.SetFocus
                    Opt = "add"
                    Screen.MousePointer = 0
                    Exit Sub
                  ElseIf (adoSecondaryRS(7) <= 0) Then
                    MsgBox "Amount must be greater than zero", vbInformation, head
                    grddatagrid.Col = 7
                    grddatagrid.SetFocus
                    Opt = "add"
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                adoSecondaryRS.MoveNext
            Loop
            
            If adoSecondaryRS.RecordCount <= 0 Then
                MsgBox "Form Issue requires at least one Bill detail", vbInformation, head
                Opt = "add"
                Screen.MousePointer = 0
                Exit Sub
            End If
            Form_Doc_No = newForm_Doc_No()
            
            If Form_Doc_No = "" Then Exit Sub
                adoPrimaryRS("Form_Doc_No") = Form_Doc_No
                adoPrimaryRS("Form_Doc_Dt").value = DTPicker1(0).value
                adoPrimaryRS("Form_Dt").value = DTPicker1(1).value
                adoPrimaryRS("Divcode") = Divcode
                Opt = ""
                adoSecondaryRS.MoveFirst
                
                totamount = 0
                Set vrs = New Recordset
                vrs.Open "select Form_Doc_No , Form_Doc_Dt, Form_DocSNo, PjVOCNo, PjVOCDt, BillNo, BillDt, billamt, VCat ,Divcode,Form_Divcode from FA_FORM_ISST  WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                SlCnt = 1
                Do While Not adoSecondaryRS.EOF
                    vrs.AddNew
                    vrs("Form_Doc_No") = adoPrimaryRS("Form_Doc_No").value
                    vrs("Form_Doc_Dt") = adoPrimaryRS("Form_Doc_Dt").value
                    vrs("Form_DocSNo") = SlCnt
                    SlCnt = SlCnt + 1
                    vrs("PjVocNo") = adoSecondaryRS("PjVocNo").value
                    vrs("PjVocDt") = adoSecondaryRS("PjVocDt").value
                    vrs("BillNo") = adoSecondaryRS("BillNo").value
                    vrs("BillDt") = adoSecondaryRS("BillDt").value
                    vrs("BillAmt") = adoSecondaryRS("BillAmt").value
                    vrs("Divcode") = Divcode
                    vrs("Form_Divcode") = adoSecondaryRS("Form_Divcode").value
                    DB.Execute " Update rm_lot Set FIssue_Flg ='Y' Where PjNo='" & adoSecondaryRS("PjVocNo").value & "' And  PjDt='" & Format(adoSecondaryRS("PjVocDt").value, "yyyy-mm-dd") & "' And Divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'"
                    adoSecondaryRS.MoveNext
                Loop
                adoPrimaryRS.UpdateBatch adAffectAll
                vrs.UpdateBatch adAffectAllChapters
                vrs.MoveFirst
                DB.CommitTrans
                MsgBox "Document No. for your Form Issue Entry is " & Form_Doc_No, vbInformation, head
                Screen.MousePointer = 0
                Opt = ""
            End If
            
            If Opt = "mod" Then
            
                If Trim(Txtfields(3).Text) = "" Then
                    MsgBox "Please enter the Party Code", vbInformation, head
                    Screen.MousePointer = 0
                    Txtfields(3).SetFocus
                    Exit Sub
                End If
                'Form_Doc_No , Form_Doc_Dt, Form_DocSNo, PjVOCNo, PjVOCDt, BillNo, BillDt, billamt, VCat
                
                DB.Execute "Update FA_FORM_ISSH Set SLCODE='" & Txtfields(3).Text & "',FORM_TYPE='" & Txtfields(0).Text & "',FORM_NO='" & Txtfields(1).Text & "',Form_Dt='" & Format(DTPicker1(1).value, "yyyy-MM-dd") & "' where divcode='" & Divcode & "' and Form_Doc_No='" & Txtfields(2).Text & "' and Form_Doc_Dt='" & Format(DTPicker1(1).value, "yyyy-MM-dd") & "'"
                DB.Execute "Delete from FA_FORM_ISST where divcode='" & Divcode & "' and Form_Doc_No='" & Txtfields(2).Text & "' and Form_Doc_Dt='" & Format(DTPicker1(0).value, "yyyy-MM-dd") & "'"
                
                While Not adoSecondaryRS.EOF
                    If adoSecondaryRS(3) = "" Or adoSecondaryRS(3) = " " Or IsEmpty(adoSecondaryRS(3)) = True Or IsNull(adoSecondaryRS(3)) = True Then
                        adoSecondaryRS.Delete
                    ElseIf IsNull(adoSecondaryRS(7)) Then
                        MsgBox "Please enter the amount", vbInformation, head
                        grddatagrid.Col = 7
                        grddatagrid.SetFocus
                        Opt = "add"
                        Screen.MousePointer = 0
                        Exit Sub
                      ElseIf (adoSecondaryRS(7) <= 0) Then
                        MsgBox "Amount must be greater than zero", vbInformation, head
                        grddatagrid.Col = 7
                        grddatagrid.SetFocus
                        Opt = "add"
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                    adoSecondaryRS.MoveNext
                Wend
                
                
                adoSecondaryRS.MoveFirst
                SlCnt = 1
                While Not adoSecondaryRS.EOF
                    Dim sQry As String
                    
                    sQry = "Insert into FA_FORM_ISST(Divcode,Form_Doc_No , Form_Doc_Dt, Form_DocSNo, PjVOCNo, PjVOCDt, BillNo, BillDt, billamt, VCat,Form_divcode ) values('" & Divcode & "','" & adoPrimaryRS("Form_Doc_No") & "','" & Format(adoPrimaryRS("Form_Doc_Dt"), "yyyy-MM-dd") & "','" & SlCnt & "','" & adoSecondaryRS("PjVocNo") & "','" & Format(adoSecondaryRS("PjVocDt"), "yyyy-MM-dd") & "','" & adoSecondaryRS("BillNo") & "','" & Format(adoSecondaryRS("BillDt"), "yyyy-MM-dd") & "','" & adoSecondaryRS("BillAmt") & "','" & adoSecondaryRS("VCat") & "','" & Divcode & "')"

                
                    DB.Execute sQry
                    SlCnt = SlCnt + 1
                    adoSecondaryRS.MoveNext
                Wend
                DB.CommitTrans
                MsgBox "Document No. " & Txtfields(2).Text & "Record(s) Modified", vbInformation, head
                Screen.MousePointer = 0
                Opt = ""
            End If
            
            If Opt = "del" Then
                    Screen.MousePointer = 0
                    If MsgBox("Are you sure you want to delete this record?", vbYesNo, head) = vbYes Then
                        Screen.MousePointer = 11
                        Set rs1 = New Recordset
                        rs1.Open " select Distinct PJvocno,pjvocDt From FA_FORM_ISST WHERE divcode='" & Divcode & "' and Form_Doc_No = " & val(adoPrimaryRS("Form_Doc_No")) & " AND Form_Doc_Dt = '" & Format(adoPrimaryRS("Form_Doc_Dt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockReadOnly
                        If rs1.EOF = False Then
                            rs1.MoveFirst
                            While Not rs1.EOF
                                DB.Execute ("Update rm_lot set FIssue_Flg =NULL Where divcode='" & Divcode & "' and PJno ='" & rs1("PJvocno") & "' AND pjDt = '" & Format(rs1("pjvocDt"), "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'")
                                rs1.MoveNext
                            Wend
                        End If
                        
                        DB.Execute ("DELETE FROM  FA_FORM_ISSH WHERE divcode='" & Divcode & "' and Form_Doc_No = " & val(adoPrimaryRS("Form_Doc_No")) & " AND Form_Doc_Dt = '" & Format(adoPrimaryRS("Form_Doc_Dt"), "yyyy-mm-dd") & "'")
                        DB.Execute ("DELETE FROM  FA_FORM_ISST WHERE divcode='" & Divcode & "' and Form_Doc_No = " & val(adoPrimaryRS("Form_Doc_No")) & " AND Form_Doc_Dt = '" & Format(adoPrimaryRS("Form_Doc_Dt"), "yyyy-mm-dd") & "'")
                        
                        'db.Execute ("Update in_pjh set FIssue_Flg =NULL Where")
                        DB.CommitTrans
                        MsgBox "Record(s) deleted", vbInformation, head
                     Else
                        Screen.MousePointer = 11
                        DB.RollbackTrans
                     End If
                Opt = "del"
            End If
            Call QUERY_MODE(0)
            Call NEWFORM1(BUTTON, GSNO)
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    desc.Caption = "Query"
    Screen.MousePointer = 11
    Frame3.Visible = False
    DTPicker1(0).Enabled = False
    'CANCEL
    Select Case Opt
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
        DataCombo1.Visible = False
    Case "add"
        'To undo addition
        DB.RollbackTrans
    Case "del"
        'To undo deletion
        DataCombo1.Visible = False
        DB.RollbackTrans
End Select
    'To return default settings - i.e query mode
    Call QUERY_MODE(0)
    Frame2.Visible = False
    Label4.Visible = False
    Label5.Visible = False

    Frame1.Visible = True
    grddatagrid.Visible = True
    'calling cancl procedure from module
    Call cancl(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
Case 11
    'EXIT
    'If MsgBox("Do you want to exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
   'Pordmain.Picture2.Visible = True
End Select

dbltot = 0


Exit Sub
ER1:
If err = -2147467259 Then
MsgBox err.Description, vbInformation, head
    If Mid$(err.Description, InStr(err.Description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  TC. " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head
    End If
Else
    MsgBox err.Description, vbInformation, head
End If


Exit Sub
BUTTON_Click_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BUTTON_Click of Form FrmIssue", vbInformation, head
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error
Buttonframe.Enabled = True
Dim Rs As Recordset
'If Trim(Ksldesc1.code) = Trim(Ksldesc1.description) Then
' MsgBox "Code & Description Cannot Be Same ", vbInformation, head
' Exit Sub
'End If
 
Select Case ksldesc1.listfield1
Case "slcode"
    Txtfields(5).Text = ksldesc1.Code
    text2.Text = ksldesc1.Description
    Frame3.Visible = False
    Exit Sub
Case "d.depcode AS Dep_Code"
    grddatagrid.Columns(3).Text = ksldesc1.Code
    grddatagrid.Columns(4).Text = ksldesc1.Description
    If Record_Exists("mm_macmas where depcode='" & Trim(grddatagrid.Columns(3).Text) & "'", "No Machine exists for this Department") = False Then Exit Sub
    
    Frame3.Visible = True
    Frame3.ZOrder
    Buttonframe.Enabled = False
    ksldesc1.conn = connectstring
    ksldesc1.Table = "mm_macmas where depcode='" & Trim(grddatagrid.Columns(3).Text) & "' and mac_no not in (" & itemc & ")"
    ksldesc1.listfield1 = "mac_no"
    ksldesc1.listfield2 = "description"
    Exit Sub
    
Case "mac_no"
    'Call chkrepeat
    itemc = itemc & ",'" & ksldesc1.Code & "'"
    If rpt = "Y" Then
            rpt = "N"
            Exit Sub
    End If
    grddatagrid.Columns(5).Text = ksldesc1.Code
    grddatagrid.Columns(6).Text = ksldesc1.Description
    grddatagrid.Col = 7
    grddatagrid.SetFocus
    Frame3.Visible = False
    
Case "Form_Doc_No"
  
      Frame3.Visible = False
      SSTab1.Visible = True
      Set adoPrimaryRS = New Recordset
      adoPrimaryRS.Open "select Form_Doc_No,Form_Doc_Dt,SlCode,Form_Type,Form_NO,Form_Dt,Divcode from  FA_FORM_ISSH where divcode='" & Divcode & "' and Form_Doc_No='" & ksldesc1.Code & "' and Form_Doc_Dt='" & Format(ksldesc1.Description, "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
      Set adoSecondaryRS = New Recordset
      adoSecondaryRS.Open "select Form_Doc_No,Form_Doc_Dt,Form_DocSNo,PjVOCNo,PjVOCDt,BillNo,BillDt,BillAmt,VCat,Divcode from FA_FORM_ISST  WHERE divcode='" & Divcode & "' and Form_Doc_No='" & ksldesc1.Code & "' and Form_Doc_Dt='" & Format(ksldesc1.Description, "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
      
      Set grddatagrid.DataSource = adoSecondaryRS
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
      
    
End Select
Exit Sub
Command3_Click_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command3_Click of Form FrmIssue", vbInformation, head

End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
If (Opt = "mod" Or Opt = "del") And ksldesc1.listfield1 = "cast(Form_Doc_No as varchar)" Then
    Buttonframe.Enabled = True
    Frame3.Visible = False
    SSTab1.Visible = True
    Call QUERY_MODE(0)
End If

Buttonframe.Enabled = True
Frame3.Visible = False
SSTab1.Visible = True
Exit Sub
Command1_Click_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command1_Click of Form FrmIssue", vbInformation, head

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
Call QUERY_MODE(val(Text1.Text))
Frame5.Visible = False
Exit Sub
Command4_Click_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command4_Click of Form FrmIssue", vbInformation, head
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
Call QUERY_MODE(1)
Frame5.Visible = False
Exit Sub
Command5_Click_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command5_Click of Form FrmIssue", vbInformation, head
End Sub


Private Sub DTPicker1_LostFocus(Index As Integer)
On Error GoTo DTPicker1_LostFocus_Error

    If Index = 1 Then
'        grddatagrid.Col = 3
        BUTTON(9).SetFocus
    End If

Exit Sub
DTPicker1_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker1_LostFocus of Form FrmIssue", vbInformation, head
Screen.MousePointer = 0
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
    
    Exit Sub
Exit Sub
Form_KeyDown_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_KeyDown of Form FrmIssue", vbInformation, head

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
  stbar.Panels(1).Text = sbmsg
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  
  Set rs1 = New Recordset
  rs1.Open "Select PTypecotton from MasterLen ", DB, adOpenStatic
  If rs1.EOF = False Then
    Supcode = rs1("PTypecotton")
  End If
  
  Opt = " "
  DTPicker1(0).MaxDate = yldate
  DTPicker1(0).MinDate = yfdate
  If yfdate <> "12:00:00 AM" Then DTPicker1(0).value = pdate
  DTPicker1(1).MaxDate = yldate
  DTPicker1(1).MinDate = yfdate
  Call NEWFORM1(BUTTON, GSNO)
  Call QUERY_MODE(0)
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
  grddatagrid.ScrollBars = dbgAutomatic
  grddatagrid.Caption = "Purchase Details"
  DATLAB.Caption = pdate
  Call NEWFORM1(BUTTON, GSNO)
Exit Sub
Form_Load_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form FrmIssue", vbInformation, head
End Sub

Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  adoPrimaryRS.Close
  Set adoPrimaryRS = Nothing
  Set adoSecondaryRS = Nothing
  Set Indent = Nothing
  Reset
  End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error
  If adoPrimaryRS.AbsolutePosition > 0 Then
       stbar.Panels(2).Text = "Record No " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
       Dim SlRs As Recordset
       Set SlRs = New Recordset
       SlRs.Open "Select SlName from Fa_SlMas where SlCode ='" & adoPrimaryRS("SlCode") & "'", DB, adOpenStatic
       If Not SlRs.EOF Then
            text2.Text = SlRs!Slname
       Else
            text2.Text = ""
       End If
       SlRs.Close
       Set SlRs = Nothing
       If adoPrimaryRS("form_doc_dt") <> "" Then
            DTPicker1(0).value = adoPrimaryRS("form_doc_dt")
            DTPicker1(1).value = adoPrimaryRS("form_dt")
       End If
       Dim TypRs As Recordset
       Set TypRs = New Recordset
       TypRs.Open "Select Description from PO_FormType where Typecode ='" & adoPrimaryRS("Form_TYpe") & "'", DB, adOpenStatic
       If Not TypRs.EOF Then
            Text3.Text = TypRs!Description
       Else
            Text3.Text = ""
       End If
       TypRs.Close
       Set TypRs = Nothing
       
       Dim rstTotal As Recordset
       Set rstTotal = New Recordset
       rstTotal.Open "Select sum(BillAmt) From Fa_form_isst Where Form_doc_no = '" & adoPrimaryRS!Form_Doc_No & "' AND Form_doc_dt = '" & Format(adoPrimaryRS!Form_doc_dt, "yyyy-MM-dd") & "'", DB, adOpenStatic
       If rstTotal.EOF = False Then txtTotalAmt.Text = Format(rstTotal(0), "0.00") Else txtTotalAmt.Text = ""
       
       
  Else
       stbar.Panels(2).Text = "No Record found"
  End If
Exit Sub
adoPrimaryRS_MoveComplete_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmIssue", vbInformation, head
  End Sub


Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grdDataGrid_AfterColEdit_Error
    Select Case ColIndex
         Case 7
             If grddatagrid.Columns(7).Text <= 0 Then
                MsgBox "Amount must be greater than zero", vbInformation, head
                grddatagrid.Col = 7
                grddatagrid.SetFocus
                flg = "Y"
                    Exit Sub
              Else
                flg = ""
             End If
    End Select
    
                     
Exit Sub
grdDataGrid_AfterColEdit_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_AfterColEdit of Form FrmIssue", vbInformation, head
End Sub


Private Sub grddatagrid_DblClick()
On Error GoTo grddatagrid_DblClick_Error
 If Opt = "del" Then
    MsgBox "Line Deletion Is Not Possible. Only Complete Deletion is possible", vbInformation
 End If
Exit Sub
grddatagrid_DblClick_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_DblClick of Form FrmIssue", vbInformation, head
End Sub

'Private Sub grdDataGrid_AfterColUpdate(ByVal ColIndex As Integer)


Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error
If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Col = 7 Then
        MsgBox "Amount must be greater than zero", vbInformation, head
        'st2 = "A"
     End If
End If
Response = 0
Exit Sub
grdDataGrid_Error_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grdDataGrid_Error of Form FrmIssue", vbInformation, head
End Sub

Public Sub bindcontls()
Dim oText As TextBox
On Error GoTo bindcontls_Error
  For Each oText In Me.Txtfields
    Set oText.DataSource = adoPrimaryRS
  Next
  If adoPrimaryRS.RecordCount > 0 Then
    DTPicker1(0).value = adoPrimaryRS("form_doc_dt")
  End If
Exit Sub
bindcontls_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure bindcontls of Form FrmIssue", vbInformation, head
  End Sub

Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
On Error GoTo disablcontls_Error
    For Each oText In Me.Txtfields
        oText.Locked = True
    Next
    text2.Locked = True
    DTPicker1(1).Enabled = False
    grddatagrid.AllowAddNew = False
    grddatagrid.AllowUpdate = False
Exit Sub
disablcontls_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure disablcontls of Form FrmIssue", vbInformation, head
End Sub

Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
On Error GoTo ENABLCONTLS_Error
    For Each oText In Me.Txtfields
        oText.Locked = False
    Next
    DTPicker1(1).Enabled = True
    DTPicker1(0).MaxDate = pdate
    grddatagrid.AllowUpdate = True
Exit Sub
ENABLCONTLS_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ENABLCONTLS of Form FrmIssue", vbInformation, head
    End Sub
Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error Resume Next


'If Opt = "mod" And grddatagrid.Col = 3 And KeyCode = vbKeyTab And adoSecondaryRS.AbsolutePosition = adoSecondaryRS.RecordCount Then
'    If Not flg = "Y" Then
'      adoSecondaryRS.AddNew
'      grddatagrid.Col = 3
'      grddatagrid.SetFocus
'      grddatagrid.EditActive = True
'    End If
'End If

End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error
'If Opt = "add" Or Opt = "mod" Then
'  If grddatagrid.Col = 7 Then Call tonum(grddatagrid, 10, KeyAscii)
'End If
Exit Sub
GRDDATAGRID_KeyPress_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_KeyPress of Form FrmIssue", vbInformation, head
End Sub


Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
Dim iCount As Integer
irow = grddatagrid.Row
'    dblAmount = 0
    On Error Resume Next
    If (Opt = "add" Or Opt = "mod") Then
        If Record_Exists("rm_lot", "No Records Found") = False Then Exit Sub
        If LastCol = 3 And Frame3.Visible = False Then
            Dim ChkRs As Recordset
            Set ChkRs = New Recordset
            ChkRs.Open "select distinct A.PjNo ""Pur. Vou. No."",A.PjDt ""Pur. Vou. Date"",A.fBillNo ""Bill No."",A.fBillDt ""Bill Date"",A.fBillvalue ""Bill Amount"",b.abbr ""Division"" from rm_lot A,pp_divmas b where a.divcode=b.divcode and A.PjNo='" & val(grddatagrid.Columns(3).Text) & "' and A.fBillNo='" & val(grddatagrid.Columns(5).Text) & "' ", DB, adOpenStatic
            If ChkRs.RecordCount > 0 Then
                grddatagrid.Columns(3).Text = ChkRs.Fields(0)
                grddatagrid.Columns(4).Text = ChkRs.Fields(1)
                grddatagrid.Columns(5).Text = ChkRs.Fields(2)
                grddatagrid.Columns(6).Text = ChkRs.Fields(3)
                grddatagrid.Columns(7).Text = ChkRs.Fields(4)
                grddatagrid.Columns(8).Text = ChkRs.Fields(5)
                Exit Sub
            Else
                LookUp.clear = True
                Set rstCode = New Recordset
                rstCode.Open "Select PtypeCotton From masterlen", DB, adOpenStatic
                'To Filter the Po For Selected Party
                If rstCode.EOF = False Then
                Set PcodeRs = New Recordset
                PcodeRs.Open "Select Slcode from Fa_slmas where Slname='" & Trim(text2.Text) & "' and slcode like '" & rstCode!ptypecotton & "%' ", DB
                If PcodeRs.EOF = False Then
                    LookUp.query = " Select distinct c.PjvNo ""Pur. Vou. No."",c.PjvDt ""Pur. Vou. Date"",c.BillNo ""Bill No."", " & _
                                   " c.BillDt ""Bill Date"",isnull(C.BILLAMT,0)- isnull(a.dbamt,0) ""Amount"",a.vcatcd ""VAT category"",b.divcode,b.abbr ""Division"" from rm_lot A,pp_divmas b , FA_PURHD C where a.divcode=C.divcode and A.supcd = C.SLCODE AND A.PJNO=C.PJVNO AND A.PJDT=C.PJVDT AND a.divcode=b.divcode and A.supcd='" & PcodeRs("Slcode") & "'" & _
                                   " And A.Form_Type is not Null and form_Type='" & Txtfields(0).Text & "' And A.Form_Type not in (Select TypeCode From PO_FormType Where " & _
                                   " Description ='NONE') And A.Form_Type <> '' And isnull(A.FIssue_Flg,'') <> 'Y'"
                Else
                    LookUp.query = "select distinct A.PjNo ""Pur. Vou. No."",A.PjDt ""Pur. Vou. Date"",A.fBillNo ""Bill No."",A.fBillDt ""Bill Date"",isnull(a.fBillvalue,0)- isnull(a.dbamt,0) ""Amount"",a.vcatcd ""VAT category"",b.divcode,b.abbr ""Division"" from rm_lot A,pp_divmas b where a.divcode=b.divcode and form_Type='" & Txtfields(0).Text & "'"
                End If
                End If
               ' LookUp.query = "select distinct A.PjVocNo AS 'Pur.Vou.No.',A.PjVocDt as 'Pur.Vou.Date',A.BillNo as 'Bill No.',A.BillDt as 'Bill Date',A.BillAmt as 'Bill Amount',B.VCat from IN_PJH A INNER JOIN IN_TRNTail B ON A.PjVocNo=B.PjNo and A.PjVocdt=B.Pjdt  "
                LookUp.Caption = "Department Listing"
                LookUp.DefCol = "Pur. Vou. No."
                LookUp.ALIGN = "1400,1400,1400,1400,1400,0,0,1400"
                
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    Buttonframe.Enabled = True
                    grddatagrid.Columns(3).Locked = False
                    dbltot = dbltot + LookUp.Fields(4)
                    
                    
'                 Cur_row = grddatagrid.Row
                     irow = adoSecondaryRS.RecordCount - 1
               current_No = LookUp.Fields(0)
               grddatagrid.Columns(3).Text = LookUp.Fields(0)
                If adoSecondaryRS.RecordCount > 1 Then
                adoSecondaryRS.MoveFirst
                For i = 1 To adoSecondaryRS.RecordCount
                    If adoSecondaryRS.RecordCount <> adoSecondaryRS.AbsolutePosition Then
                    If adoSecondaryRS("PjVOCNo") = current_No Then
                        MsgBox "This Item already exists in the current Issued", vbInformation, head
                        grddatagrid.Row = irow
                        grddatagrid.Columns(3).Text = ""
                        grddatagrid.Columns(4).Text = ""
                        grddatagrid.Columns(5).Text = ""
                        grddatagrid.Columns(6).Text = ""
                        grddatagrid.Columns(7).Text = ""
                        grddatagrid.Columns(8).Text = ""
                        grddatagrid.Columns(9).Text = ""
                        grddatagrid.Columns(10).Text = ""
                        grddatagrid.Columns(11).Text = ""
                        grddatagrid.Col = 3
                        grddatagrid.SetFocus
                        Exit Sub
                    End If
                    adoSecondaryRS.MoveNext
                    End If
                    
                Next
                End If

                
'               grddatagrid.Row = irow
                    
                    
                    grddatagrid.Columns(4).Text = LookUp.Fields(1)
                    grddatagrid.Columns(5).Text = LookUp.Fields(2)
                    grddatagrid.Columns(6).Text = LookUp.Fields(3)
                    grddatagrid.Columns(7).Text = LookUp.Fields(4)
                    grddatagrid.Columns(8).Text = LookUp.Fields(5)
                    'grddatagrid.Columns(9).Text = LookUp.Fields(6)
                    grddatagrid.Columns(10).Text = LookUp.Fields(6)
                    grddatagrid.Columns(11).Text = LookUp.Fields(7)
                    
                    

'                    irow = irow + 1
                    
                    Txtfields(0).Locked = True

                    adoSecondaryRS.AddNew
                    
                    grddatagrid.Col = 3
                    grddatagrid.SetFocus
                    grddatagrid.EditActive = True
                Else
                    Buttonframe.Enabled = True
                    grddatagrid.Col = 3
                    grddatagrid.SetFocus
                End If
            End If
        End If
        
'
'        For iCount = 0 To irow
'        dblAmount = dblAmount + val(grddatagrid.Columns(7).Text)
'        Next
        
        txtTotalAmt = Format(dbltot, "0.00")
    End If
    
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error
Select Case Index
Case 1
    stbar.Panels(2).Text = "Enter Date (dd/mm/yyyy)"
Case 2
    stbar.Panels(2).Text = "Enter Date (dd/mm/yyyy)"
End Select
Exit Sub
MaskEdBox1_GotFocus_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_GotFocus of Form FrmIssue", vbInformation, head

End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error
If Opt = "add" Or Opt = "mod" Then

'If MaskEdBox1(Index) = "__/__/____" Then
'        MsgBox ("Date can't be Empty"), vbInformation, head
'        MaskEdBox1(Index).SetFocus
'        cancel = True
'        Exit Sub
'    End If


If Index = 2 And Opt = "add" Then
 
    grddatagrid.Col = 2
    grddatagrid.SetFocus
    stbar.Panels(2).Text = "Select Department From List"
End If
End If
Exit Sub
MaskEdBox1_LostFocus_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_LostFocus of Form FrmIssue", vbInformation, head
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
    On Error Resume Next
   If Opt = "add" Or Opt = "mod" Then

'    If MaskEdBox1(Index) = "__/__/____" Then
'        MsgBox ("Date can't be Empty"), vbInformation, head
'        MaskEdBox1(Index).SetFocus
'        cancel = True
'        Exit Sub
'    End If
'End If
'
'    If MaskEdBox1(2) <> "__/__/____" And IsDate(MaskEdBox1(2).Text) = True Then
'        If CDate(MaskEdBox1(2).Text) < CDate(MaskEdBox1(1).Text) Then
'            MsgBox ("End Date has to be greater than Start Date"), vbInformation, head
'            MaskEdBox1(Index).Text = "__/__/____"
'            MaskEdBox1(Index).SetFocus
'            cancel = True
'            Exit Sub
'    End If
   End If
End Sub

Private Sub Text1_Change()
On Error GoTo Text1_Change_Error
If Trim(Text1.Text) = "" Then
   Command5.Default = True
Else
   Command4.Default = True
End If
Exit Sub
Text1_Change_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Text1_Change of Form FrmIssue", vbInformation, head
End Sub

Private Sub Text1_GotFocus()
On Error GoTo Text1_GotFocus_Error
Command5.Default = True
Exit Sub
Text1_GotFocus_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Text1_GotFocus of Form FrmIssue", vbInformation, head
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Dim num As String
On Error GoTo Text1_KeyPress_Error
 num = CStr(Text1.Text) & CStr(num)
 If Not (KeyAscii = 8 Or KeyAscii = vbKey0 Or KeyAscii = vbKey1 Or KeyAscii = vbKey2 Or KeyAscii = vbKey3 Or KeyAscii = vbKey4 Or KeyAscii = vbKey5 Or KeyAscii = vbKey6 Or KeyAscii = vbKey7 Or KeyAscii = vbKey8 Or KeyAscii = vbKey9) Then
   KeyAscii = 0
   Text1.Text = num
 End If
Exit Sub
Text1_KeyPress_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Text1_KeyPress of Form FrmIssue", vbInformation, head
End Sub




'Private Sub txtFields_LostFocus(Index As Integer)
''If Not (txtFields(Index).Text = "") Then
''    txtFields(Index).Text = UCase(txtFields(Index).Text)
''End If
'
'End Sub

Public Sub QUERY_MODE(MDOC As Long)
On Error GoTo QUERY_MODE_Error
    desc.Caption = "Query"
    SSTab1.Visible = True
    SSTab1.ZOrder
    If Not Opt = "" Then
        On Error GoTo ER1
        If Opt = "add" Or Opt = "mod" Then
            Call disablcontls
        End If
        Set adoPrimaryRS = New Recordset
        If MDOC = 0 Then
            Call qry1
            Opt = ""
            
        Else
            Call fnd1(MDOC)
            If adoPrimaryRS.RecordCount = 0 Then
                msg = "Record not found for Document Number " & MDOC
                MsgBox msg, vbInformation, head
                Call QUERY_MODE(0)
                Opt = ""
            End If
        End If
        Call bindcontls
        If adoPrimaryRS.AbsolutePosition > 0 Then
            stbar.Panels(2).Text = "Record No " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
        Else
            stbar.Panels(2).Text = "No Record found"
        End If
        Screen.MousePointer = 0
        Set text2.DataSource = adoPrimaryRS
        If adoPrimaryRS.RecordCount > 0 Then
            Set grddatagrid.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
        Else
            Set grddatagrid.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
        End If
        Call GRDALIGN
        grddatagrid.AllowUpdate = False
        desc.Caption = "Query"
        DTPicker1(1).value = Format(adoPrimaryRS!form_dt, "dd/mm/YYyy")
        
    End If
    Screen.MousePointer = 0
   'Calling newform procedure from Module to disable buttons
    Call NEWFORM1(BUTTON, GSNO)
    Call disablcontls
    
    Exit Sub
ER1:
    If err = 3021 Then
        MsgBox "No records Found", vbInformation, head
        Screen.MousePointer = 0
        Set grddatagrid.DataSource = Nothing
        Call BUTTON_Click(10)
        Call NEWFORM1(BUTTON, GSNO)
    End If
    If err = -2147467259 Then
        MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
    End If
    Screen.MousePointer = 0
Exit Sub
QUERY_MODE_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure query_mode of Form FrmIssue", vbInformation, head
End Sub



Public Function newForm_Doc_No()
Dim v_stdate As String, v_endate As String
Dim Rs As Recordset
Dim tcrs As Recordset
On Error GoTo newForm_Doc_No_Error
    v_stdate = Format(yfdate, "yyyy-mm-dd")
    v_endate = Format(yldate, "yyyy-mm-dd")
    Set Rs = New Recordset
    Rs.Open "select max(CONVERT(NUMERIC,Form_Doc_NO)) from  FA_FORM_ISSH where divcode='" & Divcode & "' and Form_Doc_Dt between '" & v_stdate & "'  and  '" & v_endate & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Not (IsNull(Rs(0))) And (Rs.BOF = False) Then 'check new entry for the year or not
        newForm_Doc_No = Rs(0) + 1
    Else
        newForm_Doc_No = 1
    End If
Exit Function
newForm_Doc_No_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure newForm_Doc_No of Form FrmIssue", vbInformation, head
End Function
Public Sub qry1()
On Error GoTo qry1_Error
adoPrimaryRS.Open "SHAPE {select Form_Doc_No,Form_Doc_Dt,SlCode,Form_Type,Form_NO,Form_Dt,divcode from  FA_FORM_ISSH where divcode='" & Divcode & "' and Form_Doc_Dt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  " & _
" Order by FORM_DOC_DT,Form_Doc_No} AS ParentCMD APPEND ({select Form_Doc_No,Form_Doc_Dt,Form_DocSNo,PjVOCNo,PjVOCDt,BillNo,BillDt,BillAmt,VCat,Div.abbr as  Division  from  FA_FORM_ISST t Inner Join PP_Divmas Div On Div.Divcode=t.Divcode where 1=1 Order by Form_Doc_No  } AS ChildCMD RELATE Form_Doc_No TO Form_Doc_No,Form_Doc_Dt TO Form_Doc_Dt) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
Exit Sub
qry1_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure qry1 of Form FrmIssue", vbInformation, head
End Sub

Public Sub fnd1(MDOC)
On Error GoTo fnd1_Error
adoPrimaryRS.Open "SHAPE {select Form_Doc_No,Form_Doc_Dt,SlCode,Form_Type,Form_NO,Form_Dt,divcode from  FA_FORM_ISSH where divcode='" & Divcode & "' and Form_Doc_Dt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and Form_Doc_No = " & MDOC & " " & _
" Order by Form_Doc_No} AS ParentCMD APPEND ({select Form_Doc_No,Form_Doc_Dt,Form_DocSNo,PjVOCNo,PjVOCDt,BillNo,BillDt,BillAmt,VCat,Divcode from  FA_FORM_ISST  where 1=1 Order by Form_Doc_No } AS ChildCMD RELATE Form_Doc_No TO Form_Doc_No,Form_Doc_Dt TO Form_Doc_Dt) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
Exit Sub
fnd1_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure fnd1 of Form FrmIssue", vbInformation, head

End Sub
Public Sub chkrepeat()
On Error GoTo chkrepeat_Error
    Fnd = "n"
    If grddatagrid.FirstRow = 1 Then
        t = grddatagrid.Row
    Else
        t = grddatagrid.FirstRow + grddatagrid.Row
    End If
    If Opt <> "mod" Then
    If t + 1 > UBound(itary) Then
        ReDim Preserve itary(t + 100, 0)
    End If
    
    itary(t + 1, 0) = grddatagrid.Columns(5)
    For i = 0 To t + 1
        If itary(t + 1, 0) = itary(i, 0) Then
            Fnd = "y"
            Exit For
        End If
    Next
   ' End If
    End If
    If Fnd = "y" Then
        MsgBox "Machine code should not repeat", vbInformation, head
        
        grddatagrid.Columns(5) = " "
        grddatagrid.Columns(6) = " "
        rpt = "Y"
        Frame3.Visible = True
        Frame2.ZOrder
        Buttonframe.Enabled = False
        listlb.Caption = "Machine Listing"
        ksldesc1.Table = "mm_macmas where depcode='" & Trim(grddatagrid.Columns(3).Text) & "'"
        ksldesc1.conn = connectstring
        ksldesc1.listfield1 = "mac_no"
        ksldesc1.listfield2 = "description"
    End If
Exit Sub
chkrepeat_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure chkrepeat of Form FrmIssue", vbInformation, head
End Sub


Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer, Optional maxlen As Integer)
On Error GoTo ToUpCase_Error
    If maxlen = 0 Then maxlen = 50
    If Len(Trim(Ofld)) < maxlen Then
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
    ElseIf Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then
    KeyAscii = 0
    End If
Exit Sub
ToUpCase_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ToUpCase of Form FrmIssue", vbInformation, head

End Sub


Private Sub Txtfields_Change(Index As Integer)
Dim RstFind As Recordset
On Error GoTo Txtfields_Change_Error
If Index = 3 And Len(Txtfields(3).Text) > 0 Then
    Set RstFind = New Recordset
    RstFind.Open "select slcode as 'SlCode',slname as 'PartyName' from fa_slmas where slcode='" & Txtfields(3).Text & "' and left(slcode,2) ='" & Supcode & "' ", DB
    If RstFind.RecordCount > 0 Then
        text2.Text = RstFind("PartyName")
    End If
End If
'If Opt = "add" Or Opt = "mod" Then
'    If Index = 0 Then
'        grddatagrid.ClearFields
'    End If
'End If
Exit Sub
Txtfields_Change_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_Change of Form FrmIssue", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error
If Opt = "add" Then
Select Case Index
Case 5
    stbar.Panels(2).Text = "Select Party From The List"
End Select
End If
Exit Sub
txtFields_GotFocus_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_GotFocus of Form FrmIssue", vbInformation, head
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Txtfields_Validate_Error
   
   If Opt = "add" Then
        If Index = 3 Then
            Set sp = New Recordset
            sp.Open "select S.slcode,S.slname from fa_slmas s Inner Join rm_lot I On I.Supcd=S.Slcode where I.supcd = '" & Trim(Txtfields(3).Text) & "' and Left(s.SLcode,2) ='" & Supcode & "' ", DB
            If sp.RecordCount > 0 Then
                Txtfields(3).Text = sp("slcode")
                text2.Text = sp("slname")
                Exit Sub
            Else
                LookUp.clear = True
                LookUp.query = "select Distinct I.supcd as 'Supplier Code',S.slname as 'Supplier Name',s.City from fa_slmas  s Inner Join rm_lot I On I.supcd=S.Slcode Where Form_type <> 'NONE' And Form_type is not Null aND ISNULL(FIssue_Flg,'') <> 'Y' and left(s.SLCode,2) ='" & Supcode & "' AND dIVCODE = '" & Divcode & "' AND I.Form_Type not in (Select TypeCode From PO_FormType Where  Description ='NONE')"
                LookUp.Caption = "Supplier Listing"
                LookUp.DefCol = "Supplier Name"
                LookUp.ALIGN = "1500,4200,2000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    Txtfields(3).Text = LookUp.Fields(0)
                    text2.Text = LookUp.Fields(1)
                    LookUp.clear = True
                    Txtfields(3).SetFocus
                    Txtfields(3).Enabled = True
                    Buttonframe.Enabled = True
                    Txtfields(0).SetFocus
                    Exit Sub
                Else
                    Buttonframe.Enabled = True
                    Txtfields(0).SetFocus
                    Call BUTTON_Click(10)
                End If
                Txtfields(3).SetFocus
                Txtfields(3).Enabled = True
            End If
        End If
        
        
        If Index = 0 Then
            Set sp = New Recordset
            sp.Open "select TypeCode,Description from PO_FormType where TypeCode = '" & Trim(Txtfields(0).Text) & "'", DB
            If sp.RecordCount > 0 Then
                Txtfields(0).Text = sp("TypeCode")
                Text3.Text = sp("Description")
                Exit Sub
            Else
                LookUp.clear = True
                LookUp.query = "select TypeCode as 'Form Type Code',Description as 'Form Type Description' from PO_FormType "
                LookUp.Caption = "Form Type Listing"
                LookUp.DefCol = "Form Type Description"
                LookUp.ALIGN = "1500,4000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    Txtfields(0).Text = LookUp.Fields(0)
                    Text3.Text = LookUp.Fields(1)
                    LookUp.clear = True
                    Txtfields(0).SetFocus
                    Txtfields(0).Enabled = True
                    Buttonframe.Enabled = True
                    Exit Sub
                Else
                    Buttonframe.Enabled = True
                End If
                Txtfields(0).SetFocus
                Txtfields(0).Enabled = True
            End If
        End If
        
    End If
Exit Sub
Txtfields_Validate_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_Validate of Form FrmIssue", vbInformation, head
End Sub

Private Sub GRDALIGN()
On Error GoTo GRDALIGN_Error
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        grddatagrid.Columns(3).Caption = "Pur. Vou. No."
        grddatagrid.Columns(4).Caption = "Pur. Vou. Date"
        grddatagrid.Columns(5).Caption = "Bill No."
        grddatagrid.Columns(6).Caption = "Bill Date"
        grddatagrid.Columns(7).Caption = "Bill Amount"
        grddatagrid.Columns(8).Caption = "Category"
        
        grddatagrid.Columns(3).Width = 1300
        grddatagrid.Columns(4).Width = 1325
        grddatagrid.Columns(5).Width = 1300
        grddatagrid.Columns(6).Width = 1300
        grddatagrid.Columns(7).Width = 1155
        grddatagrid.Columns(8).Width = 0
        
        grddatagrid.Columns(7).NumberFormat = "########0.00"
        grddatagrid.Columns(7).Alignment = dbgRight
        
        grddatagrid.Columns(4).Locked = True
        grddatagrid.Columns(5).Locked = True
        grddatagrid.Columns(6).Locked = True
        grddatagrid.Columns(7).Locked = True
        grddatagrid.Columns(8).Locked = True
        
         If Opt = "add" Then
            grddatagrid.Columns(9).Visible = False 'DivisionCode
            grddatagrid.Columns(10).Visible = False 'Form_Divcode
            grddatagrid.Columns(0).Visible = False ' Form Document No
            grddatagrid.Columns(0).Width = 0
        End If
        If Opt = "mod" Then
'            grdDataGrid.Columns(9).Width = 1000 'DivisionCode
'            grdDataGrid.Columns(10).Visible = False 'Form_Divcode
'            grdDataGrid.Columns(0).Visible = False ' Form Document No
'            grdDataGrid.Columns(0).Width = 0
        End If
        
Exit Sub
GRDALIGN_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grdalign of Form FrmIssue", vbInformation, head
End Sub
Public Sub Amc_List_Header()
On Error GoTo Amc_List_Header_Error
C = 0
Print #a, Chr(18)
Print #a, Space(5) & CENTRE(Chr(27) + "E" & DIVNAME & Chr(27) + "F", 100, " ")
Print #a,
Print #a, Space(5) & "Form Issue Listing" & Space(51) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.:" & Padl(pg1, 3, " ")
Print #a, Space(5) & String(100, "-")
Print #a, Space(5) & "Supplier Name" & Space(30) & "Form Type      " & Space(2) & "Form NO        " & Space(10) & "      Date"
Print #a, Space(5) & String(100, "-")
C = 8
Exit Sub
Amc_List_Header_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Amc_List_Header of Form FrmIssue", vbInformation, head
End Sub
