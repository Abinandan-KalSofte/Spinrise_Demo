VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmGatepass 
   Caption         =   "GatePass"
   ClientHeight    =   4995
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7785
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   4995
   ScaleWidth      =   7785
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   6840
      Top             =   5160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   24
      Top             =   -75
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5280
         Picture         =   "FrmGatepass.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   51
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   585
      End
      Begin VB.CommandButton BUTTON 
         Height          =   555
         Index           =   12
         Left            =   4725
         Picture         =   "FrmGatepass.frx":0442
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Print"
         Top             =   75
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmGatepass.frx":0884
         Height          =   510
         Index           =   3
         Left            =   1065
         Picture         =   "FrmGatepass.frx":0B8E
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmGatepass.frx":0F23
         Height          =   510
         Index           =   6
         Left            =   2115
         Picture         =   "FrmGatepass.frx":136D
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmGatepass.frx":16BA
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "FrmGatepass.frx":19C4
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmGatepass.frx":1D57
         Height          =   510
         Index           =   5
         Left            =   1605
         Picture         =   "FrmGatepass.frx":21A1
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmGatepass.frx":2506
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
         Left            =   540
         Picture         =   "FrmGatepass.frx":2810
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmGatepass.frx":2BAC
         Height          =   510
         Index           =   1
         Left            =   11265
         Picture         =   "FrmGatepass.frx":2EB6
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmGatepass.frx":3230
         Height          =   510
         Index           =   7
         Left            =   2640
         Picture         =   "FrmGatepass.frx":367A
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmGatepass.frx":39CA
         Height          =   510
         Index           =   11
         Left            =   5805
         Picture         =   "FrmGatepass.frx":3E14
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmGatepass.frx":41A9
         Height          =   510
         Index           =   9
         Left            =   3675
         Picture         =   "FrmGatepass.frx":44B3
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "FrmGatepass.frx":4855
         Height          =   510
         Index           =   10
         Left            =   4215
         Picture         =   "FrmGatepass.frx":4B5F
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel (Ctrl BackSpace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmGatepass.frx":4EDB
         Height          =   510
         Index           =   8
         Left            =   3165
         Picture         =   "FrmGatepass.frx":5325
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   7710
         Picture         =   "FrmGatepass.frx":5687
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   90
         Visible         =   0   'False
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
         Left            =   8340
         TabIndex        =   26
         Top             =   240
         Width           =   630
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
         TabIndex        =   25
         Top             =   240
         Width           =   615
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6870
      Left            =   285
      TabIndex        =   28
      Top             =   1125
      Width           =   11730
      _ExtentX        =   20690
      _ExtentY        =   12118
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "FrmGatepass.frx":5A1E
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame3"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      Begin VB.Frame Frame3 
         Height          =   1965
         Left            =   60
         TabIndex        =   40
         Top             =   4800
         Width           =   11490
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Driver_Name"
            Height          =   330
            Index           =   1
            Left            =   1470
            Locked          =   -1  'True
            TabIndex        =   61
            TabStop         =   0   'False
            Top             =   180
            Width           =   3810
         End
         Begin VB.TextBox txtFields 
            DataField       =   "WBWtDiff"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   16393
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   12
            Left            =   9600
            Locked          =   -1  'True
            TabIndex        =   57
            Top             =   1440
            Width           =   1335
         End
         Begin VB.TextBox txtFields 
            DataField       =   "WbNetWt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   16393
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   11
            Left            =   9600
            Locked          =   -1  'True
            TabIndex        =   54
            Top             =   960
            Width           =   1335
         End
         Begin VB.TextBox txtFields 
            DataField       =   "ISSKGS"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   16393
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   10
            Left            =   9600
            Locked          =   -1  'True
            TabIndex        =   53
            Top             =   180
            Width           =   1335
         End
         Begin VB.TextBox txtFields 
            DataField       =   "total_Grskgs"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   16393
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   9
            Left            =   6600
            Locked          =   -1  'True
            TabIndex        =   52
            Top             =   180
            Width           =   1335
         End
         Begin VB.TextBox txtFields 
            DataField       =   "VechicleNo"
            Height          =   330
            Index           =   8
            Left            =   1470
            Locked          =   -1  'True
            TabIndex        =   22
            Top             =   1095
            Width           =   1335
         End
         Begin VB.TextBox txtFields 
            DataField       =   "Destination"
            Height          =   330
            Index           =   6
            Left            =   1470
            TabIndex        =   20
            Top             =   660
            Width           =   1335
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Index           =   7
            Left            =   2865
            Locked          =   -1  'True
            TabIndex        =   21
            TabStop         =   0   'False
            Top             =   660
            Width           =   5490
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            DataField       =   "RemovalTime"
            Height          =   345
            Left            =   1455
            TabIndex        =   23
            Top             =   1530
            Width           =   1410
            _ExtentX        =   2487
            _ExtentY        =   609
            _Version        =   393216
            Format          =   183304194
            UpDown          =   -1  'True
            CurrentDate     =   38752
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Driver Name   "
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   11
            Left            =   165
            TabIndex        =   60
            Top             =   210
            Width           =   1020
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Total Difference  "
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   10
            Left            =   7560
            TabIndex        =   59
            Top             =   1560
            Width           =   1230
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Weigh Balance Nett Wt. "
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   9
            Left            =   7560
            TabIndex        =   58
            Top             =   1080
            Width           =   1785
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Total Gross Kgs "
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   8
            Left            =   5280
            TabIndex        =   56
            Top             =   240
            Width           =   1170
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Total Nett Kgs"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   7
            Left            =   8280
            TabIndex        =   55
            Top             =   240
            Width           =   1020
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Removal Time"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   6
            Left            =   165
            TabIndex        =   43
            Top             =   1605
            Width           =   1020
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Vehicle No."
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   4
            Left            =   165
            TabIndex        =   42
            Top             =   1170
            Width           =   825
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Destination"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   1
            Left            =   165
            TabIndex        =   41
            Top             =   735
            Width           =   795
         End
      End
      Begin VB.Frame Frame2 
         Height          =   3150
         Left            =   60
         TabIndex        =   39
         Top             =   1665
         Width           =   11505
         Begin FPSpreadADO.fpSpread FpSpdGp 
            Height          =   2880
            Left            =   75
            TabIndex        =   19
            Top             =   150
            Width           =   11355
            _Version        =   524288
            _ExtentX        =   20029
            _ExtentY        =   5080
            _StockProps     =   64
            DisplayRowHeaders=   0   'False
            EditEnterAction =   5
            EditModePermanent=   -1  'True
            EditModeReplace =   -1  'True
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   0
            MaxRows         =   0
            ScrollBarExtMode=   -1  'True
            ScrollBarShowMax=   0   'False
            SpreadDesigner  =   "FrmGatepass.frx":5A3A
            ScrollBarStyle  =   3
         End
      End
      Begin VB.Frame Frame1 
         Height          =   1590
         Left            =   45
         TabIndex        =   34
         Top             =   90
         Width           =   11505
         Begin VB.TextBox txtFields 
            DataField       =   "Code"
            Height          =   330
            Index           =   4
            Left            =   1500
            TabIndex        =   17
            Top             =   1095
            Width           =   1245
         End
         Begin VB.TextBox txtFields 
            DataField       =   "Issuetype"
            Height          =   330
            Index           =   2
            Left            =   1485
            TabIndex        =   15
            Top             =   630
            Width           =   1245
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Index           =   3
            Left            =   2775
            Locked          =   -1  'True
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   630
            Width           =   5490
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "name"
            Height          =   330
            Index           =   5
            Left            =   2775
            Locked          =   -1  'True
            TabIndex        =   18
            TabStop         =   0   'False
            Top             =   1095
            Width           =   5490
         End
         Begin VB.TextBox txtFields 
            DataField       =   "Docno"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   405
            Index           =   0
            Left            =   1485
            TabIndex        =   13
            Top             =   150
            Width           =   1245
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "DocDate"
            Height          =   375
            Index           =   0
            Left            =   6915
            TabIndex        =   14
            Top             =   180
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   661
            _Version        =   393216
            CalendarForeColor=   -2147483640
            Format          =   189267969
            CurrentDate     =   36218
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Document No."
            Height          =   195
            Index           =   2
            Left            =   180
            TabIndex        =   38
            Top             =   255
            Width           =   1035
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Document Date"
            Height          =   195
            Index           =   3
            Left            =   5595
            TabIndex        =   37
            Top             =   285
            Width           =   1125
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Issue Type"
            ForeColor       =   &H80000002&
            Height          =   195
            Index           =   5
            Left            =   165
            TabIndex        =   36
            Top             =   698
            Width           =   780
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Supplier/Division"
            Height          =   195
            Index           =   0
            Left            =   180
            TabIndex        =   35
            Top             =   1170
            Width           =   1200
         End
      End
      Begin VB.Frame Frame4 
         Height          =   4710
         Left            =   360
         TabIndex        =   29
         Top             =   -5160
         Visible         =   0   'False
         Width           =   7995
         Begin VB.CommandButton lovok 
            Caption         =   "&OK"
            DownPicture     =   "FrmGatepass.frx":5E7D
            Height          =   615
            Left            =   2940
            Picture         =   "FrmGatepass.frx":6263
            Style           =   1  'Graphical
            TabIndex        =   32
            Top             =   3915
            Width           =   1185
         End
         Begin VB.CommandButton lovcancel 
            Caption         =   "&Cancel"
            DownPicture     =   "FrmGatepass.frx":6629
            Height          =   615
            Left            =   4680
            Picture         =   "FrmGatepass.frx":6A0B
            Style           =   1  'Graphical
            TabIndex        =   31
            Top             =   3915
            Width           =   1185
         End
         Begin VB.PictureBox KslList1 
            ForeColor       =   &H8000000D&
            Height          =   3255
            Left            =   420
            ScaleHeight     =   3195
            ScaleWidth      =   7125
            TabIndex        =   30
            Top             =   660
            Width           =   7185
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
            TabIndex        =   33
            Top             =   120
            Width           =   7935
         End
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   50
      Top             =   4695
      Width           =   7785
      _ExtentX        =   13732
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
            Alignment       =   1
            AutoSize        =   1
            Object.Width           =   14993
            MinWidth        =   14993
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   2117
            MinWidth        =   2117
            TextSave        =   "04/08/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "01:57 PM"
         EndProperty
      EndProperty
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
   Begin VB.Frame FraIssue 
      Height          =   5115
      Left            =   840
      TabIndex        =   44
      Top             =   2130
      Visible         =   0   'False
      Width           =   10785
      Begin VB.CheckBox Check1 
         Caption         =   "ALL"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   135
         TabIndex        =   49
         Top             =   555
         Width           =   1140
      End
      Begin VB.CommandButton CmdIssCancel 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   5310
         TabIndex        =   48
         Top             =   4590
         Width           =   1410
      End
      Begin VB.CommandButton CmdIssOk 
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   3105
         TabIndex        =   47
         Top             =   4590
         Width           =   1410
      End
      Begin FPSpreadADO.fpSpread FpSpIss 
         Height          =   3240
         Left            =   60
         TabIndex        =   45
         Top             =   870
         Width           =   10530
         _Version        =   524288
         _ExtentX        =   18574
         _ExtentY        =   5715
         _StockProps     =   64
         DisplayRowHeaders=   0   'False
         EditEnterAction =   5
         EditModePermanent=   -1  'True
         EditModeReplace =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxCols         =   0
         MaxRows         =   0
         ScrollBarExtMode=   -1  'True
         ScrollBarShowMax=   0   'False
         SpreadDesigner  =   "FrmGatepass.frx":6DDE
         ScrollBarStyle  =   3
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00C00000&
         Caption         =   "Issue Details"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   345
         Left            =   15
         TabIndex        =   46
         Top             =   105
         Width           =   10740
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Gate Pass"
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
      Left            =   150
      TabIndex        =   27
      Top             =   720
      Width           =   1290
   End
End
Attribute VB_Name = "FrmGatepass"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim ADOSECONDARYRS As Recordset
Dim DB As Connection
Dim Opt As String
Dim st, st1, ST2 As String
Dim TmpRs As New ADODB.Recordset
Dim temprs As New ADODB.Recordset
Dim SqlString As String
Dim Str As String
Dim OutpassFromInvoice As Integer
Private Enum E_SpdIss
    SpChk = 1
    SpIssNo
    SpIssDt
    SpSlcode
    Spslname
    SpQty
    SpKgs
End Enum

Private Enum E_SpdGP
    SpdIssNo = 1
    SpdIssDt
    spdLotno
    spdLotDt
    spdVCode
    SpdVName
    SPDQty
    SpdKgs
End Enum


Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
intervalMinutes = -1
If Opt <> "add" Then
    If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
        
        Set ADOSECONDARYRS = New Recordset
        ADOSECONDARYRS.Open "SELECT A.Divcode, A.IssueNo, A.IssueDate, A.LotNo, A.Lotdate,a.Varcode , V.VarName, a.Quantity, a.NetWeight FROM RM_OutpassDt A,RM_VAR V WHERE a.varcode=v.VARCODE and Divcode ='" & Divcode & "' And  A.DocNo='" & adoPrimaryRS("DocNo") & "' and A.DocDate='" & Format(adoPrimaryRS("DocDate"), "yyyy-mm-dd") & "' And IssueType='" & adoPrimaryRS("IssueType") & "'", DB, adOpenStatic, adLockReadOnly
        DTPicker2.value = adoPrimaryRS("RemovalTime")
        DTPicker1(0).value = adoPrimaryRS("DocDate")
        Call SetGridHead
        Call SpdLoad
        If Opt = "del" Or Opt = "fnd" Then
            Call DISABLECONTLS
        End If
    End If
End If

End Sub


Private Sub Check1_Click()
With FpSpIss
    If Check1.value = 1 Then
        For RW = 1 To .MaxRows
             .Row = RW
             .Col = E_SpdIss.SpChk
             .value = 1
         Next
    ElseIf Check1.value = 0 Then
        For RW = 1 To .MaxRows
             .Row = RW
             .Col = E_SpdIss.SpChk
             .value = 0
         Next
    End If
End With
End Sub

Private Sub CmdIssCancel_Click()
FraIssue.Visible = False
Opt = ""
Call BUTTON_Click(10)
End Sub

Private Sub CmdIssOk_Click()

Dim NtKgs, GsKgs As Double

NtKgs = 0: GsKgs = 0
   BaleISSTYPE = ""
            Set temprs1 = New Recordset
            temprs1.Open "Select Isstype From rm_issuetype where issue_code='" & txtfields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
            If Not temprs1.EOF Then
            BaleISSTYPE = temprs1("Isstype")
            End If
FraIssue.Visible = False
TRW = 1
With FpSpIss
FpSpdGp.MaxRows = 0
For RW = 1 To .MaxRows
    .Row = RW
    .Col = SpChk
    If .value = True Then
        Set TmpRs = New Recordset
'        If UCase(CustID) = "KUMARAGIRI" Then
'            Set TmpRs = New Recordset
'            TmpRs.Open " SELECT  a.DOCNO,a.DOCDT,LOT.LotNo,LOT.LotDt,LOT.VarCode,V.VarName,COUNT(PACKS)IssQty,SUM(ISNULL(Inv_kgs,0))IssKgs,SUM(ISNULL(DT.GROSS_KGS,0)) GROSS_KGS " & _
'                       " FROM RM_ISSH a " & _
'                       " INNER JOIN  RM_CINVHD HD ON HD.dIVCODE=A.dIVCODE AND HD.BO_NO=A.dOCNO AND HD.bo_dt=A.dOCDT " & _
'                       " INNER JOIN  RM_CINVDT DT ON DT.DIVCODE=HD.dIVCODE AND HD.INV_NO=DT.INV_NO AND HD.INV_TYPE=DT.INV_TYPE " & _
'                       " INNER JOIN RM_LOT LOT ON LOT.dIVCODE=HD.dIVCODE AND LOT.LOTNO=DT.PRODUCT_CODE AND LOT.LOTDT=DT.LotDt and lot.VARCODE =dt.varcode AND LOT.LOTYEAR='" & Format(yfdate, "yyyy") & "' " & _
'                       " INNER JOIN  RM_VAR V ON  LOT.VARCODE=v.VARCODE " & _
'                       " where  a.DIVCODE='" & Divcode & "'  AND a.ISSTYPE='" & Txtfields(2).Text & "' AND a.DOCDT = '" & Format(GetText(FpSpIss, E_SpdIss.SpIssDt, RW), "yyyy-mm-dd") & "' and Isnull(OUTPASSFLG,'N')='N' " & _
'                       " And  A.DocNo = '" & GetText(FpSpIss, E_SpdIss.SpIssNo, RW) & "' GROUP BY a.DOCNO,a.DOCDt,LOT.LotNo,LOT.LotDt,LOT.VarCode,V.VarName ", DB, adOpenStatic, adLockReadOnly
'
'        Else
'            Set TmpRs = New Recordset
'            TmpRs.Open "SELECT a.DOCNO,a.DOCDT,B.LotNo,B.LotDt,B.VarCode,V.VarName,COUNT(b.BaleNo)IssQty,SUM(ISNULL(ISSKGS,0))IssKgs,SUM(ISNULL(bl.GRWT,0)) GROSS_KGS FROM RM_ISSH a,RM_ISSB B,RM_VAR V ,rm_bale bl   " & _
'                       " where bl.baleno=b.baleno and bl.varcode=b.varcode and bl.lotno=b.lotno and bl.lotdt=b.lotdt and bl.Divcode=b.divcode and b.lottype=bl.lottype and a.DOCNO=b.DOCNO and a.DIVCODE=b.DIVCODE AND a.DOCDT =b.DOCDT AND a.ISSTYPE=b.ISSTYPE AND b.VARCODE=v.VARCODE And " & _
'                       " a.DIVCODE='" & Divcode & "' AND a.ISSTYPE='" & Txtfields(2).Text & "' AND a.DOCDT = '" & Format(GetText(FpSpIss, E_SpdIss.SpIssDt, RW), "yyyy-mm-dd") & "' and Isnull(OUTPASSFLG,'N')='N'  And " & _
'                       " A.DocNo = '" & GetText(FpSpIss, E_SpdIss.SpIssNo, RW) & "' GROUP BY a.DOCNO,a.DOCDt,B.LotNo,B.LotDt,B.VarCode,V.VarName", DB, adOpenStatic, adLockReadOnly
'         End If
         Set TmpRs = New Recordset
         
         TmpRs.Open " exec KSP_TXNPendingOutPassLoad '" & Divcode & "','" & Trim(txtfields(2).Text) & "','" & Trim(BaleISSTYPE) & "','" & Trim(txtfields(4).Text) & "','" & Format(yfdate, "yyyy-mm-dd") & "' , '" & Format(yldate, "yyyy-mm-dd") & "','" & OutpassFromInvoice & "','" & GetText(FpSpIss, E_SpdIss.SpIssNo, RW) & "','" & Format(GetText(FpSpIss, E_SpdIss.SpIssDt, RW), "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockReadOnly

            If Not TmpRs.EOF Then
                
                Do While Not TmpRs.EOF
                    FpSpdGp.MaxRows = FpSpdGp.MaxRows + 1
                    FpSpdGp.SetText E_SpdGP.SpdIssNo, TRW, TmpRs("DOCNO")
                    FpSpdGp.SetText E_SpdGP.SpdIssDt, TRW, Format(TmpRs("DOCDT"), "dd/mm/yyyy")
                    FpSpdGp.SetText E_SpdGP.spdLotno, TRW, TmpRs("LotNo")
                    FpSpdGp.SetText E_SpdGP.spdLotDt, TRW, Format(TmpRs("LotDt"), "dd/mm/yyyy")
                    FpSpdGp.SetText E_SpdGP.spdVCode, TRW, TmpRs("VarCode")
                    FpSpdGp.SetText E_SpdGP.SpdVName, TRW, TmpRs("VarName")
                    FpSpdGp.SetText E_SpdGP.SPDQty, TRW, TmpRs("IssQty")
                    FpSpdGp.SetText E_SpdGP.SpdKgs, TRW, TmpRs("IssKgs")
                    
                    NtKgs = NtKgs + TmpRs("IssKgs")
                   '  If UCase(CustID) = "KUMARAGIRI" Then
                    GsKgs = GsKgs + TmpRs("GROSS_KGS")
                   ' End If
                    
                    TmpRs.MoveNext
                    TRW = TRW + 1
                Loop
            End If
    End If
Next
End With

    txtfields(9).Text = GsKgs
    txtfields(10).Text = NtKgs
    
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
intervalMinutes = -1
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
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''Find
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)    ''List
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
        If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)  ''Exit
    End If
ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then '27
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)    ''Cancel
    Else
        If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)
    End If
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form tmpPOINDENT", vbInformation, head
    
End Sub



Private Sub Form_Load()
intervalMinutes = -1
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
    Opt = "qry"
    Set Rs = New Recordset
    Rs.Open "select isnull(OutpassFromInvoice,0) OutpassFromInvoice  from rm_param ", DB
    If Not Rs.EOF Then
        OutpassFromInvoice = Rs("OutpassFromInvoice")
    End If
    
    Call SetGridHead
    Call query_mode
    intervalMinutes = -1
    DATLAB.Caption = pdate   'This variable is declared as global to show the date
End Sub

Private Sub SetGridHead()
intervalMinutes = -1
    With FpSpIss
        .MaxRows = 0
        .MaxCols = E_SpdIss.SpKgs
        .Row = 0
        .FontBold = True
        .ColHeadersAutoText = DispBlank
        SetSpreadCol1 FpSpIss, E_SpdIss.SpChk, "", CellTypeCheckBox, 2, , , False
        SetSpreadCol1 FpSpIss, E_SpdIss.SpIssNo, "Issue No.", CellTypeNumber, 8, 0, False, True
        SetSpreadCol1 FpSpIss, E_SpdIss.SpIssDt, "Issue Date", CellTypeStaticText, 9, , False, True
        SetSpreadCol1 FpSpIss, E_SpdIss.SpSlcode, "Code", CellTypeStaticText, 10
        SetSpreadCol1 FpSpIss, E_SpdIss.Spslname, "Name", CellTypeStaticText, 20
        SetSpreadCol1 FpSpIss, E_SpdIss.SpQty, "Quantity", CellTypeNumber, 10, 0, False, True
        SetSpreadCol1 FpSpIss, E_SpdIss.SpKgs, "Net Weight", CellTypeNumber, 13, 3, False, True
    End With

    With FpSpdGp
        .MaxRows = 0
        .MaxCols = E_SpdGP.SpdKgs
        .Row = 0
        .FontBold = True
        .ColHeadersAutoText = DispBlank
        SetSpreadCol1 FpSpdGp, E_SpdGP.SpdIssNo, "Issue No.", CellTypeNumber, 8, 0, False, True
        SetSpreadCol1 FpSpdGp, E_SpdGP.SpdIssDt, "Issue Date", CellTypeStaticText, 9, , False, True
        SetSpreadCol1 FpSpdGp, E_SpdGP.spdLotno, "Lot No.", CellTypeStaticText, 9, 0, False, True
        SetSpreadCol1 FpSpdGp, E_SpdGP.spdLotDt, "Lot Date", CellTypeStaticText, 9, 0, False, True
        SetSpreadCol1 FpSpdGp, E_SpdGP.spdVCode, "Variety Code", CellTypeStaticText, 10
        SetSpreadCol1 FpSpdGp, E_SpdGP.SpdVName, "Variety Name", CellTypeStaticText, 20
        SetSpreadCol1 FpSpdGp, E_SpdGP.SPDQty, "Quantity", CellTypeNumber, 10, 0, False, True
        SetSpreadCol1 FpSpdGp, E_SpdGP.SpdKgs, "Net Weight", CellTypeNumber, 13, 3, False, True
        
        .Row = 0
        .Col = E_SpdGP.SPDQty
        .TypeHAlign = TypeHAlignRight
        .Col = E_SpdGP.SpdKgs
        .TypeHAlign = TypeHAlignRight
        
    End With
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
On Error Resume Next
intervalMinutes = -1
dbltot = 0
Select Case Index
Case 0
        If ToValidFinYear(Divcode) = False Then Exit Sub
        Set rsg = New Recordset
        rsg.Open "select max(DocDate) from Rm_Outpasshd where divcode='" & Divcode & "' and DocDate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
            If IsNull(rsg(0)) = False Then
                If pdate < rsg(0) Then
                    MsgBox "Date should be Equal to Current Date Or Max Gate Pass Date", vbInformation, head
                    Screen.MousePointer = vbNormal
                    Exit Sub
                End If
            End If
        End If
        Opt = "add"
        desc.Caption = "Addition"
        Screen.MousePointer = 11
        stbar.Panels(2).Text = "Addition"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT Divcode,Docno, Docdate,Issuetype,Slcode, Refdivcode, Destination, VechicleNo, RemovalTime, AddUser,AddDate , Moduser, ModDate,Driver_Name,WBTicketNo,WbNetWt,WBWtDiff,total_Grskgs From RM_OutpassHd where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        Set ADOSECONDARYRS = New Recordset
        ADOSECONDARYRS.Open "SELECT Divcode, Docno, Docdate,DocSno,Issuetype,IssueNo, IssueDate, LotNo, Lotdate, varcode, Quantity, NetWeight FROM   RM_OutpassDt where  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
        Call bindcontls
        adoPrimaryRS.AddNew
        ADOSECONDARYRS.AddNew
        ReDim ITARY(100, 0)
        DB.BeginTrans
        Call adddelmod(BUTTON)
        RW = 1000
        Screen.MousePointer = 0
        Call ENABLCONTLS
        Call SetGridHead
        txtfields(2).SetFocus
        DTPicker1(0).value = pdate
        txtfields(4).Text = ""
        txtfields(5).Text = ""
        DTPicker2.value = Format(Now, "HH:MM")
        
Case 1
    '        'Modification
        If ToValidFinYear(Divcode) = False Then Exit Sub
        Opt = "mod"
        desc.Caption = "Modification"
        If Record_Exists("RM_OutpassHd where divcode='" & Divcode & "'") = False Then Exit Sub

 Case 2, 3
        'Deletetion
        If ToValidFinYear(Divcode) = False Then Exit Sub
        If Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
            Call adddelmod(BUTTON)
        Else
            Opt = "fnd"
            desc.Caption = "Find"
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = False
        End If
        If Record_Exists("RM_OutpassHd where divcode='" & Divcode & "'") = False Then Exit Sub
        LookUp.Clear = True
        LookUp.query = "SELECT H.Docno 'Document No.',h.DocDate 'Date',h.IssueType 'Issue Type',Issue_Desc 'Issue Description' from Rm_OutpassHd H, rm_issuetype I WHERE H.divcode='" & Divcode & "' and    h.IssueType=I.Issue_Code and H.Docdate between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "'"
        LookUp.Caption = "Gate Pass Listing"
        LookUp.DefCol = "Document No."
        LookUp.ALIGN = "700,1000,1500,4500"
        Screen.MousePointer = 0
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            B = LookUp.Fields(1)    'date
            a = LookUp.Fields(0)    'Indent No
            c = LookUp.Fields(2)   'Indent No
            Call delmodproc(CStr(a), CStr(B), CStr(c))
            LookUp.Clear = True
        Else
            Call BUTTON_Click(10)
        End If
        stbar.Panels(2).Text = "Select the Records to Delete"
Case 5
       'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        'calling fir procedure from module
        Call FIR(BUTTON)
        stbar.Panels(2).Text = "Records" & " " & adoPrimaryRS.AbsolutePosition & " / " & " " & adoPrimaryRS.RecordCount
        Exit Sub
GoFirstError:
    If Err = 3021 Then
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
        adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Records" & " " & adoPrimaryRS.AbsolutePosition & " / " & " " & adoPrimaryRS.RecordCount
        'calling las procedure from module
        Call las(BUTTON)
        Exit Sub
GoLastError:
       If Err = 3021 Then
         MsgBox " No records Found", vbInformation, head
         Exit Sub
       End If

Case 9
        ''''Save
        If Opt = "add" Then
            If FpSpdGp.MaxRows = 0 Then
                MsgBox "Select atleast one item to complete the transaction", vbInformation, head
                Screen.MousePointer = 0
                Exit Sub
            End If
            If txtfields(2).Text = "" Then
                MsgBox "Issue Type Cannot be empty", vbInformation, head
                Screen.MousePointer = 0
                txtfields(2).SetFocus
                Exit Sub
            End If
            If txtfields(4).Text = "" Then
                MsgBox "Supplier/Division Cannot be empty", vbInformation, head
                Screen.MousePointer = 0
                txtfields(4).SetFocus
                Exit Sub
            End If
            If txtfields(6).Text = "" Then
                MsgBox "Destination Cannot be empty", vbInformation, head
                Screen.MousePointer = 0
                txtfields(6).SetFocus
                Exit Sub
            End If
            If txtfields(8).Text = "" Then
                MsgBox "Vechicle Number Cannot be empty", vbInformation, head
                Screen.MousePointer = 0
                txtfields(8).SetFocus
                Exit Sub
            End If
            docno = newDocNo()
            adoPrimaryRS("Divcode") = Divcode
            adoPrimaryRS("DocNo") = docno
            adoPrimaryRS("Docdate") = Format(DTPicker1(0).value, "dd-mmm-yyyy")
            adoPrimaryRS("Issuetype") = txtfields(2).Text
            
            Set temprs = New Recordset
            temprs.Open "Select Isstype From rm_issuetype where issue_code='" & txtfields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
            If Not temprs.EOF Then
                If temprs("Isstype") = "T" Then
                    adoPrimaryRS("Refdivcode") = txtfields(4)
                Else
                    adoPrimaryRS("Slcode") = txtfields(4).Text
                End If
            End If
            adoPrimaryRS("Destination") = Trim(txtfields(6).Text)
            adoPrimaryRS("VechicleNo") = Trim(txtfields(8).Text)
            adoPrimaryRS("RemovalTime") = Format(DTPicker2.value, "HH:MM")
            adoPrimaryRS("AddUser") = UserName
            adoPrimaryRS("AddDate") = Now
            
            ''15-04-2021 added by Annamalai S
            adoPrimaryRS("Driver_Name") = Trim(txtfields(1).Text)
            adoPrimaryRS("WbNetWt") = val(txtfields(11).Text)
            adoPrimaryRS("WBWtDiff") = val(txtfields(12).Text)
            adoPrimaryRS("total_Grskgs") = val(txtfields(9).Text)
            
            If docno = "" Then Exit Sub
            
            SNos = 1
            With FpSpdGp
            For RW = 1 To .MaxRows
                .Row = RW
                ADOSECONDARYRS.AddNew
                ADOSECONDARYRS("divcode").value = Divcode
                ADOSECONDARYRS("DocNo").value = docno
                ADOSECONDARYRS("DocDate").value = Format(DTPicker1(0).value, "YYYY/MM/DD")
                ADOSECONDARYRS("DocSno").value = SNos
                ADOSECONDARYRS("IssueNo").value = GetText(FpSpdGp, SpdIssNo, RW)
                ADOSECONDARYRS("IssueDate") = Format(GetText(FpSpdGp, SpdIssDt, RW), "yyyy-mm-dd")
                ADOSECONDARYRS("Issuetype") = Trim(txtfields(2).Text)
                ADOSECONDARYRS("LotNo").value = GetText(FpSpdGp, spdLotno, RW)
                ADOSECONDARYRS("LotDate") = Format(GetText(FpSpdGp, spdLotDt, RW), "yyyy-mm-dd")
                ADOSECONDARYRS("VarCode").value = GetText(FpSpdGp, spdVCode, RW)
                ADOSECONDARYRS("Quantity").value = GetText(FpSpdGp, SPDQty, RW)
                ADOSECONDARYRS("NetWeight").value = GetText(FpSpdGp, SpdKgs, RW)
                SNos = SNos + 1
            Next
            End With
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            ADOSECONDARYRS.UpdateBatch adAffectAllChapters
            
            Set TmpRs = New Recordset
            TmpRs.Open "Select Distinct IssueNo,IssueDate,IssueType from rm_outpassdt where divcode ='" & Divcode & "' and Docno='" & docno & "' and DocDate ='" & Format(DTPicker1(0).value, "YYYY/MM/DD") & "' And Issuetype='" & Trim(txtfields(2).Text) & "'", DB, adOpenStatic, adLockReadOnly
            Do While Not TmpRs.EOF
                DB.Execute "Update Rm_Issh set OutpassDocno='" & docno & "',OutPassDocdt='" & Format(DTPicker1(0).value, "YYYY/MM/DD") & "',OutPassFlg='Y' Where Divcode ='" & Divcode & "' And DocNo ='" & TmpRs("IssueNo") & "' And " & _
                           " DocDt ='" & Format(TmpRs("IssueDate"), "yyyy-mm-dd") & "' And IssType='" & txtfields(2).Text & "'"
                TmpRs.MoveNext
                            
            Loop
            MsgBox "Gate Pass Number for this transaction is " & docno, vbInformation, head
            BUTTON(12).Enabled = True
            DB.CommitTrans
            Screen.MousePointer = 0
            Opt = ""
            Call query_mode
            Exit Sub
        End If
        If Opt = "del" Then
            Set TmpRs = New Recordset
            TmpRs.Open "Select Distinct IssueNo,IssueDate,IssueType from rm_outpassdt where divcode ='" & Divcode & "' and Docno='" & adoPrimaryRS("docNo") & "' and DocDate ='" & Format(adoPrimaryRS("docdate"), "YYYY/MM/DD") & "' And IssueType='" & adoPrimaryRS("IssueType") & "'", DB, adOpenStatic, adLockReadOnly
            Do While Not TmpRs.EOF
                DB.Execute "Update Rm_Issh set OutpassDocno=Null,OutPassDocdt=NULL,OutPassFlg=NULL Where Divcode ='" & Divcode & "' And DocNo ='" & TmpRs("IssueNo") & "' And " & _
                           " DocDt ='" & Format(TmpRs("IssueDate"), "yyyy-mm-dd") & "' And IssType='" & TmpRs("IssueType") & "'"
                TmpRs.MoveNext
            Loop
            DB.Execute "Delete From  rm_outpassdt where divcode ='" & Divcode & "' and Docno='" & adoPrimaryRS("docNo") & "' and DocDate ='" & Format(adoPrimaryRS("docdate"), "YYYY/MM/DD") & "' And IssueType='" & adoPrimaryRS("IssueTYpe") & "'"
            DB.Execute "Delete From  rm_outpassHd where divcode ='" & Divcode & "' and Docno='" & adoPrimaryRS("docNo") & "' and DocDate ='" & Format(adoPrimaryRS("docDate"), "YYYY/MM/DD") & "' And IssueType='" & adoPrimaryRS("IssueTYpe") & "'"
            BUTTON(12).Enabled = True
            DB.CommitTrans
            MsgBox "Record deleted successfully", vbInformation, head
            Screen.MousePointer = 0
            Opt = ""
            Call query_mode
            Exit Sub
        End If
        

Case 10
    'cancel
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    desc.Caption = "Query"
    Screen.MousePointer = 11
    DTPicker1(0).Enabled = False
    Select Case Opt
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
    Case "add"
        'To undo addition
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Opt = ""
    Call query_mode
    Call cancl(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
Case 11
    'EXIT
    If MsgBox("Do you want to exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
   'Pordmain.Picture2.Visible = True
Case 12

    If UCase(CustID) = "KUMARAGIRI" Then
    
        Set RsOtp = New Recordset
        RsOtp.Open " exec ksp_Rmi_outpass '" & Divcode & "','" & txtfields(0).Text & "','" & Format(DTPicker1(0).value, "YYYY-MM-dd") & "' ", DB, adOpenStatic, adLockReadOnly
        
        If RsOtp.RecordCount > 0 Then
         Set rptv = New Report.ReportView
                a = FreeFile
                Close
                'Open KALFOLDERDATA & "\material_inward.TXT" For Output As #a
'                Open "c:\Vehicle_Outwardsales.txt" For Output As #a
                Open KALFOLDERDATA & "\Vehicle_OutwardRmisales.TXT" For Output As #a
                
                Print #a, Chr(15)
                pg1 = 1
                Str = CStr(Format(pdate, "dd/mm/yy")) + Space(4)
                    Print #a, Space(10) + "       WEIGH BIRDGE CHECKING PASS " + Space(10) + " PH : "; Padr(RsOtp("phoneNo"), 10, " ")
                    Print #a, Space(15) + Padr(Trim(RsOtp("DivName")), 70, " ")
                    Print #a, Space(1) + RsOtp("Adds") 'Padr(Trim(RsOtp("Adds")), 100, " ")
                    Print #a,
                    Print #a,
                    Print #a, Space(1) + " DOC NO : " & Space(3) & Padr(RsOtp("doc_no"), 10, " ") & Space(25) + "Date : " + Padr(Format(RsOtp("doc_date"), "DD/MM/YYYY"), 10, " ")
                    Print #a,
                    Print #a, Space(1) + " Weigh Balance T/K No. : " & Space(3) & Padr(Trim(RsOtp("WBTicketNo")), 70, " ")
                    Print #a,
                    Print #a, Space(1) + " Material :" & Space(3) & Padr(Trim(RsOtp("Material")), 70, " ")
                    Print #a,
                    Print #a, Space(1) + " Vehicle No. : " & Space(3) & Padr(RsOtp("Vehicle_no"), 22, " ") & Space(3) & "No.of Bags " & Space(3) & RsOtp("totbags")
                    Print #a,
                    Print #a, Space(1) + " Driver Name : " & Space(3) & Padr(Trim(RsOtp("Driver_Name")), 70, " ")
                    Print #a,
                    Print #a, Space(1) + " Weigh Balance Nett Wt. : " & Space(3) & Format(RsOtp("WbNetWt"), "#.000") & Space(6) & "Inv.Tot.Wt : " & Space(3) & Format(RsOtp("InvTotKgs"), "#.000")
                    Print #a,
                    Print #a, Space(1) + " Total Difference : " & Space(3) & Format(RsOtp("WBWtDiff"), "#.000")
                    Print #a,
                    Print #a, Space(1) + " Out Time : " & Space(3) & Padr(Format(RsOtp("OutTime"), "hh:mm AM/PM"), 8, " ") & Space(20) & " Passed : "
                    Print #a,
                    Print #a,
                    Print #a,
                    Print #a,
                    Print #a, Space(1); RsOtp("Sign1") + Space(25) + RsOtp("Sign2") + Space(25) + RsOtp("Sign3")
                    Print #a,
                    Print #a,
                    Print #a,
                    Print #a,
                    Print #a, Chr(18) + Chr(12) + Chr(27) + "F"
                   Close #a
                  a = FreeFile
                  Call KALBATPROCESS("Vehicle_OutwardRmisales")
            Else
                 MsgBox "No Records Found"
                 Exit Sub
            End If
    Else
            Set REP = New Report.ReportView
            pagein = 0
            cont = 0
            f = FreeFile
            TOTVAL = 0
            co = 0
            cnt = 0
            Close
            Open KALFOLDERDATA & "\OutPass.TXT" For Output As #f
            pg = 1
            Print #f, Chr(27) & Chr(77)
            Print #f,
            Print #f, Chr(27) & Chr(205)
            Print #f, Space(55) & Chr(27) & "E" & "SL.No. : " & txtfields(0).Text & Chr(27) & "F"
            Print #f, Space(55) & Chr(27) & "E" & "Date   : " & Format(DTPicker1(0).value, "dd/mm/yyyy") & Chr(27) & "E"
            Set temprs = New Recordset
            temprs.Open "Select Isstype From rm_issuetype where issue_code='" & txtfields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
            If Not temprs.EOF Then
                If temprs("Isstype") = "T" Then
                    Print #f, Space(55) & Chr(27) & "E" & "TRANSFER OUT PASS " & Chr(27) & "F"
                Else
                    Print #f, Space(55) & Chr(27) & "E" & "PURCHASE RETURN OUT PASS" & Chr(27) & "F"
                End If
            End If
            Print #f,
            Print #f, Space(5) & "SL.NO.   VARIETY                                       UOM            QUANTITY"
            Print #f, Space(5) & String(78, "-")
            co = 9
            Set TmpRs = New Recordset
            TmpRs.Open "SELECT a.Docno,a.Docdate,b.BBLFLG,V.VarName,SUM(ISNULL(A.Quantity,0))Quantity,SUM(ISNULL(A.NetWeight,0)) NetWeight FROM RM_OutpassDt a ,RM_LOT B,Rm_Var V WHERE a.LotNo=b.LOTNO AND a.Divcode=b.DIVCODE aND a.Lotdate=b.LOTDT And A.VarCode=V.VarCode " & _
                       " and A.Divcode ='" & Divcode & "' and b.lotyear='" & Year(Format(DTPicker1(0).value, "yyyy-mm-dd")) & "' And A.Docno ='" & txtfields(0).Text & "' And DocDate='" & Format(DTPicker1(0).value, "yyyy-mm-dd") & "' And A.IssueType='" & txtfields(2).Text & "' GROUP BY A.Docno,a.Docdate,b.BBLFLG,V.VarName", DB, adOpenStatic, adLockReadOnly
            SNO = 1
            Do While TmpRs.EOF = False
                If TmpRs("BBLFLG") = "B" Then
                    Tunit = "BALES"
                Else
                    Tunit = "BORAH"
                End If
                Print #f, Space(5) & Padl(SNO, 5, " ") & Space(4) & Padr(TmpRs("VarName"), 38, " ") & Space(8) & Padr(Tunit, 6, " ") & Space(5) & Padl(INF(TmpRs("Quantity"), 0), 12, " ")
                co = co + 1
                TOTQty = TOTQty + TmpRs("Quantity")
                If co >= 57 Then
                    Print #f, Space(5) & String(80, "-")
                    Print #f, Chr(12)
                    co = 0
                    pg = pg + 1
                    Print #f,
                    Print #f, Chr(27) & Chr(77)
                    Print #f, Chr(27) & Chr(205)
                    pg = pg + 1
                    Print #f, Space(60) & Chr(27) & "E" & "SL.No. : " & txtfields(0).Text & Chr(27) & "F"
                    Print #f, Space(60) & Chr(27) & "E" & "Date   : " & Format(DTPicker1(0).value, "dd/mm/yyyy") & Chr(27) & "E"
                    Set temprs = New Recordset
                    temprs.Open "Select Isstype From rm_issuetype where issue_code='" & txtfields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
                    If Not temprs.EOF Then
                        If temprs("Isstype") = "T" Then
                            Print #f, Space(60) & Chr(27) & "E" & "TRANSFER OUT PASS " & Chr(27) & "F"
                        Else
                            Print #f, Space(60) & Chr(27) & "E" & "PURCHASE RETURN OUT PASS" & Chr(27) & "F"
                        End If
                    End If
                    Print #f, Space(5) & "SL.NO.   VARIETY                                       UOM            QUANTITY"
                    Print #f, Space(5) & String(78, "-")
                    co = 8
                End If
                TmpRs.MoveNext
                SNO = SNO + 1
            Loop
            co = co + 1
            For I = co To 28
                Print #f,
                I = I + 1
            Next
            Print #f, Space(5) & "Total ....... " & Space(52) & Padl(INF(TOTQty, 0), 12, " ")
            
            Print #f, Space(5) & String(78, "-")
            Print #f, Space(5) & "Destination  Place: " & txtfields(7).Text
            Print #f, Space(5) & "Lorry No.         : " & txtfields(8).Text
            Print #f, Space(5) & "Removal Time      : " & DTPicker2.value
            Print #f, Chr(12)
            Close #f
            f = FreeFile
            Call KALBATPROCESS("OutPass")
            Screen.MousePointer = 0
    End If
 Case 13

            Dim crygate As New clsCrystal
            If UCase(CustID) = "KUMARAGIRI" Then
            Set crygate.cryRept = Cry_RMI_Outpass_KSPL
            ElseIf UCase(CustID) = "SARANYA" Then
            Set crygate.cryRept = Cry_Gatepass_Ashok
            Else
            Set crygate.cryRept = Cry_Gatepass_southern_New
            End If
            crygate.CrystalPrint
            CrystalReport1.Reset
            
            
            CrystalReport1.Connect = connectstring
            CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
            
           CrystalReport1.ParameterFields(0) = "@Divcode;" & Divcode & ""
           CrystalReport1.ParameterFields(1) = "@docno;" & txtfields(0).Text & ""
           CrystalReport1.ParameterFields(2) = "@date;" & Format(DTPicker1(0).value, "yyyy-mm-dd") & ""
           CrystalReport1.ParameterFields(3) = "@Isstype;" & txtfields(2).Text & ""
           CrystalReport1.ParameterFields(4) = "@Lotyr;" & Year(yfdate) & ""
  
            CrystalReport1.WindowShowPrintSetupBtn = True
            CrystalReport1.WindowShowSearchBtn = True
            CrystalReport1.WindowState = crptMaximized
            SendKeys "{ENTER}"
            CrystalReport1.Action = 1
            CrystalReport1.PrinterCopies = 1
            Screen.MousePointer = 0
            
End Select

dbltot = 0


Exit Sub
er1:
If Err = -2147467259 Then
MsgBox Err.Description, vbInformation, head
    If Mid$(Err.Description, InStr(Err.Description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  TC. " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head
    End If
Else
    MsgBox Err.Description, vbInformation, head
End If


Exit Sub
BUTTON_Click_Error:
     MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmIssue", vbInformation, head
End Sub



Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.txtfields
        oText.Locked = False
    Next
    Frame1.Enabled = True
    Frame2.Enabled = True
    Frame3.Enabled = True
    DTPicker1(0).Enabled = False
    txtfields(0).Locked = True
    txtfields(3).Locked = True
    txtfields(5).Locked = True
End Sub

Public Sub DISABLECONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.txtfields
        oText.Locked = False
    Next
    Frame1.Enabled = False
    Frame2.Enabled = False
    Frame3.Enabled = False
    
    DTPicker1(0).Enabled = False
    txtfields(0).Locked = True
    txtfields(3).Locked = True
    txtfields(5).Locked = True
End Sub

Public Sub bindcontls()
On Error Resume Next
Dim oText As TextBox
  'Bind the text boxes to the recordset
    For Each oText In Me.txtfields
        Set oText.DataSource = adoPrimaryRS
    Next
    DTPicker1(0).value = adoPrimaryRS("DocDate")
    DTPicker2.value = adoPrimaryRS("RemovalTime")
    If Opt = "add" Then
        DTPicker1(0).value = pdate
    End If

End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub Txtfields_Change(Index As Integer)
intervalMinutes = -1
Select Case Index
    Case 2
        Set TmpRs = New Recordset
        TmpRs.Open "SELECT issue_code,issue_desc,Isstype FROM rm_issuetype  WHERE Isstype IN('T','R') and issue_code = '" & Trim(txtfields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
        If Not TmpRs.EOF Then
            txtfields(3).Text = Trim(TmpRs("issue_desc"))
        Else
            txtfields(3).Text = ""
        End If
    Case 6
        Set TmpRs = New Recordset
        TmpRs.Open "SELECT AreaCode,AreaName FROM rm_Area  WHERE AreaCode = '" & Trim(txtfields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
        If Not TmpRs.EOF Then
            txtfields(7).Text = Trim(TmpRs("AreaName"))
        Else
            txtfields(7).Text = ""
        End If

End Select
    If Opt = "add" Or Opt = "mod" Then
        txtfields(12).Text = Format(val(txtfields(9).Text) - val(txtfields(11).Text), "0.000")
    End If
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
intervalMinutes = -1
Select Case Index
    Case 2
        Call ToAlphanumNoSp(txtfields(Index), 3, KeyAscii)
    Case 4
        Call ToAlphanumNoSp(txtfields(Index), 7, KeyAscii)
    Case 6
        Call ToAlphanumNoSp(txtfields(Index), 5, KeyAscii)
    Case 8
        Call ToUpCase(txtfields(Index), KeyAscii)
        Call ToAlphaNumber(txtfields(Index), 15, KeyAscii)
End Select
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
If Opt = "add" Or Opt = "mod" Then
    SqlString = ""
    Select Case Index
        Case 2
            Set TmpRs = New Recordset
            TmpRs.Open "SELECT issue_code,issue_desc,Isstype FROM rm_issuetype  WHERE Isstype IN('T','R','S') and Isstype = '" & Trim(txtfields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
            If Not TmpRs.EOF Then
                txtfields(Index).Text = Trim(TmpRs("issue_code"))
                txtfields(3).Text = Trim(TmpRs("issue_desc"))
            Else
                Call IssueTypeLookup
                If txtfields(Index).Text = "" Then
                    Cancel = True
                End If
            End If
        Case 4
            Set temprs = New Recordset
            temprs.Open "Select Isstype From rm_issuetype where issue_code='" & txtfields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
            If Not temprs.EOF Then
                If temprs("Isstype") = "T" Then
                    Set TmpRs = New Recordset
                    TmpRs.Open "SELECT distinct A.RDIVCODE,D.DIVNAME  FROM RM_ISSH A,PP_DIVMAS D WHERE A.RDIVCODE=d.DIVCODE AND A.DIVCODE='" & Divcode & "' and A.RDivcode = '" & txtfields(Index).Text & "'", DB, adOpenStatic, adLockReadOnly
                    If Not TmpRs.EOF Then
                        txtfields(Index).Text = Trim(TmpRs("RDIVCODE"))
                        txtfields(5).Text = Trim(TmpRs("DIVNAME"))
                        SqlString = "And A.RDivcode ='" & txtfields(Index).Text & "'"
                        Call SpdTranLoad
                    Else
                        Call DivisionLookup
                        If txtfields(Index).Text = "" Then
                            Cancel = True
                        Else
                            SqlString = "And A.RDivcode ='" & txtfields(Index).Text & "'"
                            Call SpdTranLoad
                        End If
                    End If
                ElseIf temprs("Isstype") = "R" Or temprs("Isstype") = "S" Then
                    Set TmpRs = New Recordset
                    TmpRs.Open "SELECT distinct A.Slcode,S.SlName  FROM RM_ISSH A,Fa_Slmas S WHERE A.Slcode=S.Slcode AND A.DIVCODE='" & Divcode & "' and A.Slcode = '" & txtfields(Index).Text & "'", DB, adOpenStatic, adLockReadOnly
                    If Not TmpRs.EOF Then
                        txtfields(Index).Text = Trim(TmpRs("Slcode"))
                        txtfields(5).Text = Trim(TmpRs("SlName"))
                        SqlString = "And A.Slcode ='" & txtfields(Index).Text & "'"
                        Call SpdTranLoad
                    Else
                        Call SupplierLookup
                        If txtfields(Index).Text = "" Then
                            Cancel = True
                        Else
                            SqlString = "And A.Slcode ='" & txtfields(Index).Text & "'"
                            Call SpdTranLoad
                        End If
                    End If
                End If
            End If
        Case 6
            Set TmpRs = New Recordset
            TmpRs.Open "SELECT AREACODE, AREANAME FROM Rm_Area where AreaCode='" & txtfields(6).Text & "'", DB, adOpenStatic, adLockReadOnly
            If Not TmpRs.EOF Then
                txtfields(Index).Text = Trim(TmpRs("AREACODE"))
                txtfields(7).Text = Trim(TmpRs("AREANAME"))
            Else
                LookUp.Clear = True
                LookUp.query = "select AREACODE 'Code',AREANAME 'AreaName',Station,State from Rm_Area"
                LookUp.Caption = "Area Listing"
                LookUp.DefCol = "AreaName"
                LookUp.ALIGN = "800,3000,2500,2500"
                Screen.MousePointer = 0
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(6).Text = LookUp.Fields(0)
                    txtfields(7).Text = LookUp.Fields(1)
                    LookUp.Clear = True
                    txtfields(8).SetFocus
                Else
                    LookUp.Clear = True
                    txtfields(6).SetFocus
                    Exit Sub
                End If
            End If
    End Select
End If
End Sub

Sub IssueTypeLookup()
    LookUp.Clear = True
    LookUp.query = "select issue_code 'Code',issue_desc 'Description',Isstype 'Issue Type' from Rm_issuetype Where  Isstype IN('T','R','S')"
    LookUp.Caption = "IssueType Listing"
    LookUp.DefCol = "Description"
    LookUp.ALIGN = "600,3000,1500"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtfields(2).Text = LookUp.Fields(0)
        txtfields(3).Text = LookUp.Fields(1)
        LookUp.Clear = True
        txtfields(4).SetFocus
    Else
        LookUp.Clear = True
        txtfields(2).SetFocus
        Exit Sub
    End If
End Sub
Sub DivisionLookup()
    LookUp.Clear = True
    LookUp.query = "SELECT distinct A.RDIVCODE 'Code',D.DIVNAME 'Division'  FROM RM_ISSH A,PP_DIVMAS D WHERE A.RDIVCODE=d.DIVCODE AND A.DIVCODE='" & Divcode & "'"
    LookUp.Caption = "Division Listing"
    LookUp.DefCol = "Division"
    LookUp.ALIGN = "900,4500"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtfields(4).Text = LookUp.Fields(0)
        txtfields(5).Text = LookUp.Fields(1)
        LookUp.Clear = True
    Else
        LookUp.Clear = True
        txtfields(4).SetFocus
        Exit Sub
    End If
End Sub
Sub SupplierLookup()
    LookUp.Clear = True
    If Trim(txtfields(2).Text) = "SS" Then
        LookUp.query = "SELECT distinct A.Slcode 'Code',S.Slname 'Supplier'  FROM RM_ISSH A,Fa_Slmas S WHERE A.Slcode=S.Slcode AND A.DIVCODE='" & Divcode & "' and s.slcode like 'D%'"
    Else
        LookUp.query = "SELECT distinct A.Slcode 'Code',S.Slname 'Supplier'  FROM RM_ISSH A,Fa_Slmas S WHERE A.Slcode=S.Slcode AND A.DIVCODE='" & Divcode & "'"
    End If
    LookUp.Caption = "Supplier Listing"
    LookUp.DefCol = "Supplier"
    LookUp.ALIGN = "1000,4000"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtfields(4).Text = LookUp.Fields(0)
        txtfields(5).Text = LookUp.Fields(1)
        LookUp.Clear = True
    Else
        LookUp.Clear = True
        txtfields(4).SetFocus
        Exit Sub
    End If
End Sub
Private Sub SpdTranLoad()
If TmpRs.State = 1 Then TmpRs.Close
FraIssue.Visible = True
FraIssue.ZOrder
Set TmpRs = New Recordset

'*=
'TmpRs.Open "SELECT a.DOCNO,a.DOCDT,CASE WHEN isnull(a.slcode,'')='' THEN a.RDIVCODE ELSE a.slcode END  AS code, " & _
'           " CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name,COUNT(BaleNo)IssQty,SUM(ISNULL(ISSKGS,0))IssKgs FROM RM_ISSH a,RM_ISSB B,RM_VAR V,PP_DIVMAS D,FA_SLMAS S    " & _
'           " where a.DOCNO=b.DOCNO and a.DIVCODE=b.DIVCODE AND a.DOCDT =b.DOCDT AND a.ISSTYPE=b.ISSTYPE AND b.VARCODE=v.VARCODE AND a.RDIVCODE*=d.DIVCODE " & _
'           " AND a.slcode*=S.slcode AND a.DIVCODE='" & Divcode & "' AND a.ISSTYPE='" & txtFields(2).Text & "' AND a.DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and Isnull(OUTPASSFLG,'N')='N' " & SqlString & " " & _
'           " GROUP BY a.DOCNO,a.DOCDt,a.RDIVCODE,a.slcode,d.DIVNAME,s.slname", db, adOpenStatic, adLockReadOnly
            BaleISSTYPE = ""
            Set temprs1 = New Recordset
            temprs1.Open "Select Isstype From rm_issuetype where issue_code='" & txtfields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
            If Not temprs1.EOF Then
            BaleISSTYPE = temprs1("Isstype")
            End If
'
'    TmpRs.Open "SELECT a.DOCNO,a.DOCDT,CASE WHEN isnull(a.slcode,'')='' THEN a.RDIVCODE ELSE a.slcode END  AS code, " & _
'               " CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name,COUNT(BaleNo)IssQty,SUM(ISNULL(ISSKGS,0))IssKgs FROM RM_ISSH a inner join RM_ISSB B on a.DOCNO=b.DOCNO and a.DIVCODE=b.DIVCODE AND a.DOCDT =b.DOCDT AND a.ISSTYPE=b.ISSTYPE inner join RM_VAR V on b.VARCODE=v.VARCODE inner join PP_DIVMAS D on a.DIVCODE = d.DIVCODE left join FA_SLMAS S on a.slcode = S.slcode  " & _
'               " where " & _
'               " a.DIVCODE='" & Divcode & "' AND a.ISSTYPE='" & txtFields(2).Text & "' AND a.DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and Isnull(OUTPASSFLG,'N')='N' " & SqlString & " " & _
'               " GROUP BY a.DOCNO,a.DOCDt,a.RDIVCODE,a.slcode,d.DIVNAME,s.slname", DB, adOpenStatic, adLockReadOnly
  TmpRs.Open " exec KSP_TXNPendingOutPass '" & Divcode & "','" & Trim(txtfields(2).Text) & "','" & Trim(BaleISSTYPE) & "','" & Trim(txtfields(4).Text) & "','" & Format(yfdate, "yyyy-mm-dd") & "' , '" & Format(yldate, "yyyy-mm-dd") & "','" & OutpassFromInvoice & "' ", DB, adOpenStatic, adLockReadOnly

If Not TmpRs.EOF Then
    Call SetGridHead
    FpSpIss.MaxRows = 0
    RW = 1
    Do While Not TmpRs.EOF
        FpSpIss.MaxRows = FpSpIss.MaxRows + 1
        FpSpIss.SetText E_SpdIss.SpIssNo, RW, TmpRs("DOCNO")
        FpSpIss.SetText E_SpdIss.SpIssDt, RW, Format(TmpRs("DOCDT"), "dd/mm/yyyy")
        FpSpIss.SetText E_SpdIss.SpSlcode, RW, TmpRs("Code")
        FpSpIss.SetText E_SpdIss.Spslname, RW, TmpRs("Name")
        FpSpIss.SetText E_SpdIss.SpQty, RW, TmpRs("IssQty")
        FpSpIss.SetText E_SpdIss.SpKgs, RW, TmpRs("IssKgs")
        TmpRs.MoveNext
        RW = RW + 1
    Loop
Else
    MsgBox "No Record(s) Found ", vbInformation, head
    Call SetGridHead
    Exit Sub
End If

End Sub
Public Function newDocNo()
intervalMinutes = -1
Dim Rs As Recordset
    Set Rs = New Recordset
    Rs.Open "select isnull(max(DocNo),0)+1 from Rm_outpasshd where divcode = '" & Divcode & "' AND DocDate between '" & Format(yfdate, "yyyy-mm-dd") & "'  and  '" & Format(yldate, "yyyy-mm-dd") & "' AND IssueType='" & txtfields(2).Text & "'", DB, adOpenStatic, adLockReadOnly
    If Not (IsNull(Rs(0))) And (Rs.BOF = False) Then 'check new entry for the year or not
        newDocNo = Rs(0)
    End If
End Function

Public Sub query_mode()
intervalMinutes = -1
On Error GoTo qry1_Error
    Set adoPrimaryRS = New Recordset
'*=
'    adoPrimaryRS.Open "SELECT A.Divcode,A.Docno,A.Docdate,A.Issuetype,CASE WHEN isnull(a.slcode,'')='' THEN a.RefDIVCODE ELSE a.slcode END  AS code,CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name, " & _
'                    "A.Destination,A.VechicleNo,A.RemovalTime,A.AddUser,A.AddDate,A.Moduser,A.ModDate From RM_OutpassHd A ,FA_SLMAS S ,PP_DIVMAS D WHERE a.Refdivcode*=d.DIVCODE AND a.Slcode*=s.slcode and A.Divcode ='" & Divcode & "' and A.DocDate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by DocNo ", db, adOpenStatic, adLockBatchOptimistic
   
   adoPrimaryRS.Open "SELECT A.Divcode,A.Docno,A.Docdate,A.Issuetype,CASE WHEN isnull(a.slcode,'')='' THEN a.RefDIVCODE ELSE a.slcode END  AS code,CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name, " & _
                    "A.Destination,A.VechicleNo,A.RemovalTime,A.AddUser,A.AddDate,A.Moduser,A.ModDate,Driver_Name,WBTicketNo,WbNetWt,WBWtDiff,total_Grskgs From RM_OutpassHd A left join FA_SLMAS S on a.Slcode = s.slcode  inner join PP_DIVMAS D on a.divcode = d.DIVCODE WHERE  A.Divcode ='" & Divcode & "' and A.DocDate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by DocNo ", DB, adOpenStatic, adLockBatchOptimistic
 
    
    Opt = "qry"
    If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
    Call bindcontls
    Call DISABLECONTLS
    Call NEWFORM1(BUTTON, GSNO)
    If adoPrimaryRS.EOF Then
        Call SetGridHead
        stbar.Panels(2).Text = "No Record found"
        Screen.MousePointer = 0
        Exit Sub
    End If
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
    End If
    Screen.MousePointer = 0
    desc.Caption = "Query"
    intervalMinutes = -1
    Exit Sub
Exit Sub
qry1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qry1 of Form FrmGatePass", vbInformation, head
End Sub

Private Sub SpdLoad()
Call SetGridHead
TRW = 1
Do While Not ADOSECONDARYRS.EOF
    FpSpdGp.MaxRows = FpSpdGp.MaxRows + 1
    FpSpdGp.SetText E_SpdGP.SpdIssNo, TRW, ADOSECONDARYRS("IssueNo")
    FpSpdGp.SetText E_SpdGP.SpdIssDt, TRW, Format(ADOSECONDARYRS("IssueDate"), "dd/mm/yyyy")
    FpSpdGp.SetText E_SpdGP.spdLotno, TRW, ADOSECONDARYRS("LotNo")
    FpSpdGp.SetText E_SpdGP.spdLotDt, TRW, Format(ADOSECONDARYRS("LotDate"), "dd/mm/yyyy")
    FpSpdGp.SetText E_SpdGP.spdVCode, TRW, ADOSECONDARYRS("VarCode")
    FpSpdGp.SetText E_SpdGP.SpdVName, TRW, ADOSECONDARYRS("VarName")
    FpSpdGp.SetText E_SpdGP.SPDQty, TRW, ADOSECONDARYRS("Quantity")
    FpSpdGp.SetText E_SpdGP.SpdKgs, TRW, ADOSECONDARYRS("NetWeight")
    ADOSECONDARYRS.MoveNext
    TRW = TRW + 1
Loop
End Sub
Public Sub delmodproc(a As String, B As String, c As String)
On Error GoTo delmodproc_Error
    RW = 1000
    On Error GoTo ER
    Set adoPrimaryRS = New Recordset
'*=
'    adoPrimaryRS.Open "SELECT A.Divcode,A.Docno,A.Docdate,A.Issuetype,CASE WHEN isnull(a.slcode,'')='' THEN a.RefDIVCODE ELSE a.slcode END  AS code,CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name, " & _
'                    "A.Destination,A.VechicleNo,A.RemovalTime,A.AddUser,A.AddDate,A.Moduser,A.ModDate From RM_OutpassHd A ,FA_SLMAS S ,PP_DIVMAS D WHERE a.Refdivcode*=d.DIVCODE AND a.Slcode*=s.slcode and A.Divcode ='" & Divcode & "' And A.Docno = " & a & " And A.DocDate = '" & Format(b, "yyyy-mm-dd") & "' AND A.IssueType='" & C & "' Order by DocNo ", db, adOpenStatic, adLockBatchOptimistic
  
  adoPrimaryRS.Open "SELECT A.Divcode,A.Docno,A.Docdate,A.Issuetype,CASE WHEN isnull(a.slcode,'')='' THEN a.RefDIVCODE ELSE a.slcode END  AS code,CASE WHEN isnull(a.slcode,'')='' THEN d.divname ELSE S.Slname END  AS Name, " & _
                    "A.Destination,A.VechicleNo,A.RemovalTime,A.AddUser,A.AddDate,A.Moduser,A.ModDate From RM_OutpassHd A left join FA_SLMAS S on a.Slcode = s.slcode inner join PP_DIVMAS D on a.divcode = d.DIVCODE WHERE  A.Divcode ='" & Divcode & "' And A.Docno = " & a & " And A.DocDate = '" & Format(B, "yyyy-mm-dd") & "' AND A.IssueType='" & c & "' Order by DocNo ", DB, adOpenStatic, adLockBatchOptimistic
   
    
    Call bindcontls
    If Opt = "mod" Then
        If Not ADOSECONDARYRS.EOF Then ADOSECONDARYRS.MoveFirst
    End If
    DTPicker1(0).Enabled = False
    Screen.MousePointer = 0
Exit Sub
ER:
    MsgBox "Select a valid value from the list", vbOKOnly, head
    BUTTON(9).Enabled = False
Exit Sub
delmodproc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodproc of Form tmpPOINDENT", vbInformation, head
End Sub


