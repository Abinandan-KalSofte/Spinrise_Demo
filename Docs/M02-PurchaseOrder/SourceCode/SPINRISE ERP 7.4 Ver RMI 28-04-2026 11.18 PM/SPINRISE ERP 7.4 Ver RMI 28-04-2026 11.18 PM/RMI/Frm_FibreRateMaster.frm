VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_FibreRateMaster 
   Caption         =   "Fibre Rate "
   ClientHeight    =   5640
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12060
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5640
   ScaleWidth      =   12060
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport2 
      Left            =   10440
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.PictureBox FrameDiscType 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      DrawMode        =   1  'Blackness
      DrawWidth       =   2
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      ForeColor       =   &H80000008&
      Height          =   6555
      Left            =   960
      ScaleHeight     =   6525
      ScaleWidth      =   8610
      TabIndex        =   40
      ToolTipText     =   "Select an item from list"
      Top             =   1920
      Visible         =   0   'False
      Width           =   8640
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1920
         TabIndex        =   46
         Top             =   6050
         Width           =   1185
      End
      Begin VB.CheckBox Check2 
         BackColor       =   &H00C0C0C0&
         Caption         =   "All"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   180
         TabIndex        =   43
         Top             =   600
         Visible         =   0   'False
         Width           =   525
      End
      Begin VB.CommandButton Command3 
         BackColor       =   &H00FFC0FF&
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
         Height          =   450
         Left            =   3420
         Style           =   1  'Graphical
         TabIndex        =   42
         Top             =   6000
         Width           =   1035
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0FF&
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   4620
         MaskColor       =   &H00FFFF80&
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   6000
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin FPSpreadADO.fpSpread SPDDiscTypeDet 
         Height          =   5445
         Left            =   0
         TabIndex        =   45
         Top             =   480
         Visible         =   0   'False
         Width           =   8550
         _Version        =   524288
         _ExtentX        =   15081
         _ExtentY        =   9604
         _StockProps     =   64
         ArrowsExitEditMode=   -1  'True
         DisplayRowHeaders=   0   'False
         EditEnterAction =   5
         EditModePermanent=   -1  'True
         EditModeReplace =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxCols         =   10
         MaxRows         =   1
         ProcessTab      =   -1  'True
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "Frm_FibreRateMaster.frx":0000
         Appearance      =   2
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "Find Discount Type"
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
         Left            =   120
         TabIndex        =   47
         Top             =   6120
         Width           =   1665
      End
      Begin VB.Line Line2 
         BorderWidth     =   2
         X1              =   -15
         X2              =   8520
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Discount Details"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000004&
         Height          =   375
         Left            =   60
         TabIndex        =   44
         Top             =   45
         Width           =   8505
      End
   End
   Begin VB.PictureBox FraOrd 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      DrawMode        =   1  'Blackness
      DrawWidth       =   2
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      ForeColor       =   &H80000008&
      Height          =   6795
      Left            =   3000
      ScaleHeight     =   6765
      ScaleWidth      =   8610
      TabIndex        =   20
      ToolTipText     =   "Select an item from list"
      Top             =   2760
      Visible         =   0   'False
      Width           =   8640
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   6960
         TabIndex        =   34
         Top             =   480
         Width           =   1425
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H00FFC0FF&
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   4260
         MaskColor       =   &H00FFFF80&
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   6300
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin VB.CommandButton CmdOrderOk 
         BackColor       =   &H00FFC0FF&
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
         Height          =   450
         Left            =   3060
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   6300
         Width           =   1035
      End
      Begin VB.CheckBox Check1 
         BackColor       =   &H00C0C0C0&
         Caption         =   "All"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   180
         TabIndex        =   21
         Top             =   600
         Width           =   525
      End
      Begin FPSpreadADO.fpSpread SpdSIZEORD 
         Height          =   5430
         Left            =   60
         TabIndex        =   24
         Top             =   855
         Width           =   8535
         _Version        =   524288
         _ExtentX        =   15055
         _ExtentY        =   9578
         _StockProps     =   64
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "Frm_FibreRateMaster.frx":045B
      End
      Begin VB.Label Label18 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "Find Variety"
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
         Left            =   5520
         TabIndex        =   35
         Top             =   600
         Width           =   1020
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Variety List"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000004&
         Height          =   375
         Left            =   60
         TabIndex        =   25
         Top             =   45
         Width           =   8505
      End
      Begin VB.Line Line1 
         BorderWidth     =   2
         X1              =   -15
         X2              =   8520
         Y1              =   480
         Y2              =   480
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5260
         Picture         =   "Frm_FibreRateMaster.frx":0885
         Style           =   1  'Graphical
         TabIndex        =   53
         ToolTipText     =   "G.R.N"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FibreRateMaster.frx":0CC7
         Height          =   510
         Index           =   8
         Left            =   3675
         Picture         =   "Frm_FibreRateMaster.frx":1111
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "Frm_FibreRateMaster.frx":1473
         Height          =   510
         Index           =   10
         Left            =   4725
         Picture         =   "Frm_FibreRateMaster.frx":177D
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FibreRateMaster.frx":1AF9
         Height          =   510
         Index           =   9
         Left            =   4200
         Picture         =   "Frm_FibreRateMaster.frx":1E03
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FibreRateMaster.frx":21A5
         Height          =   510
         Index           =   11
         Left            =   5800
         Picture         =   "Frm_FibreRateMaster.frx":25EF
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FibreRateMaster.frx":2984
         Height          =   510
         Index           =   7
         Left            =   3150
         Picture         =   "Frm_FibreRateMaster.frx":2DCE
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   7140
         Picture         =   "Frm_FibreRateMaster.frx":311E
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FibreRateMaster.frx":34B5
         Height          =   510
         Index           =   1
         Left            =   555
         Picture         =   "Frm_FibreRateMaster.frx":37BF
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FibreRateMaster.frx":3B39
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
         Left            =   1065
         Picture         =   "Frm_FibreRateMaster.frx":3E43
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FibreRateMaster.frx":41DF
         Height          =   510
         Index           =   5
         Left            =   2115
         Picture         =   "Frm_FibreRateMaster.frx":4629
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FibreRateMaster.frx":498E
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Frm_FibreRateMaster.frx":4C98
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   135
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FibreRateMaster.frx":502B
         Height          =   510
         Index           =   6
         Left            =   2640
         Picture         =   "Frm_FibreRateMaster.frx":5475
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton CmdCrystal 
         Height          =   510
         Index           =   1
         Left            =   10320
         Picture         =   "Frm_FibreRateMaster.frx":57C2
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Delivery Note"
         Top             =   150
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton CmdCrystalGP 
         Height          =   510
         Left            =   11040
         Picture         =   "Frm_FibreRateMaster.frx":5C04
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Gate Pass"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   1590
         Picture         =   "Frm_FibreRateMaster.frx":6046
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   135
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
         Left            =   7920
         TabIndex        =   19
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
         Left            =   9120
         TabIndex        =   18
         Top             =   255
         Width           =   630
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6045
      Left            =   240
      TabIndex        =   0
      Top             =   1200
      Width           =   11085
      _ExtentX        =   19553
      _ExtentY        =   10663
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "."
      TabPicture(0)   =   "Frm_FibreRateMaster.frx":6478
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "FraDespatch"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame1 
         Caption         =   "Fibre Rate "
         Height          =   4455
         Left            =   120
         TabIndex        =   38
         Top             =   1440
         Width           =   10935
         Begin FPSpreadADO.fpSpread SpdEmpAllocation 
            Height          =   4125
            Left            =   120
            TabIndex        =   39
            Top             =   240
            Width           =   10710
            _Version        =   524288
            _ExtentX        =   18891
            _ExtentY        =   7276
            _StockProps     =   64
            ArrowsExitEditMode=   -1  'True
            DisplayRowHeaders=   0   'False
            EditEnterAction =   5
            EditModePermanent=   -1  'True
            EditModeReplace =   -1  'True
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   10
            MaxRows         =   1
            ProcessTab      =   -1  'True
            ScrollBarExtMode=   -1  'True
            SpreadDesigner  =   "Frm_FibreRateMaster.frx":6494
            Appearance      =   2
         End
      End
      Begin VB.PictureBox FraDespatch 
         Appearance      =   0  'Flat
         ForeColor       =   &H80000008&
         Height          =   1320
         Left            =   75
         ScaleHeight     =   1290
         ScaleWidth      =   10950
         TabIndex        =   27
         Top             =   90
         Width           =   10980
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "supcd"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   3
            Left            =   1470
            TabIndex        =   1
            Top             =   480
            Width           =   1320
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   2
            Left            =   2820
            TabIndex        =   36
            Top             =   480
            Width           =   8055
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFC0&
            DataField       =   "DocNo"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   0
            Left            =   1470
            TabIndex        =   29
            Top             =   120
            Width           =   1305
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   7
            Left            =   2820
            TabIndex        =   28
            Top             =   870
            Visible         =   0   'False
            Width           =   3390
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "wcat"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   8
            Left            =   1470
            TabIndex        =   2
            Top             =   870
            Visible         =   0   'False
            Width           =   1320
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "DocDate"
            Height          =   315
            Left            =   9600
            TabIndex        =   30
            Top             =   120
            Width           =   1290
            _ExtentX        =   2275
            _ExtentY        =   556
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   169476097
            CurrentDate     =   41403
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            DataField       =   "fromdate"
            Height          =   315
            Left            =   7440
            TabIndex        =   49
            Top             =   870
            Width           =   1290
            _ExtentX        =   2275
            _ExtentY        =   556
            _Version        =   393216
            Format          =   169476097
            CurrentDate     =   41403
         End
         Begin MSComCtl2.DTPicker DTPicker3 
            DataField       =   "todate"
            Height          =   315
            Left            =   9600
            TabIndex        =   51
            Top             =   870
            Width           =   1290
            _ExtentX        =   2275
            _ExtentY        =   556
            _Version        =   393216
            Format          =   169476097
            CurrentDate     =   41403
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "To Date"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   8760
            TabIndex        =   52
            Top             =   900
            Width           =   660
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "From Date"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   6480
            TabIndex        =   50
            Top             =   930
            Width           =   885
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   240
            TabIndex        =   37
            Top             =   525
            Width           =   690
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Document No."
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   240
            TabIndex        =   33
            Top             =   195
            Width           =   1170
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Document Date"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   7920
            TabIndex        =   32
            Top             =   180
            Width           =   1320
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   240
            TabIndex        =   31
            Top             =   915
            Visible         =   0   'False
            Width           =   780
         End
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   12960
      Top             =   9480
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   54
      Top             =   5340
      Width           =   12060
      _ExtentX        =   21273
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
            Object.Width           =   15179
            MinWidth        =   14729
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "26/07/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "11:05 AM"
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
   Begin VB.Label Label7 
      Caption         =   "Press F5 on Rate Column to View the Discount Details"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   11880
      TabIndex        =   48
      Top             =   600
      Width           =   6135
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Fibre Rate Entry"
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
      Height          =   390
      Left            =   240
      TabIndex        =   26
      Top             =   750
      Width           =   6870
   End
End
Attribute VB_Name = "Frm_FibreRateMaster"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS, adoSecondaryRS1 As Recordset
Dim DB As Connection
Dim Opt As String
Dim deltype As String
Dim RW As Double
Dim prodflg As String
Dim SupSEL As Boolean
Dim TmpRs As New Recordset
Dim Rstdocno As Recordset
Private Enum E_VARLIST
    SPDSCHECK1 = 1
    SPDSSNO
    SPDSSUPCD
    SPDSCATCD
    SPDSCATNAME
    SPDSBVARCODE
    SPDSBVARNAME
End Enum

Private Enum SPDRATEEntry
    SPDVSNO = 1
    SPDVSUPCD
    SPDVCATCD
    SPDVCATNAME
    SPDVVarcode
    SPDVVarName
    SPDVPlantDesc
    SPDVPlant
    SPDVRateUnitCD
    SPDVRateUnit
    SPDVRateCY
    SPDVRateKG
End Enum

Private Enum SpdDiscType
    SPDDTSNO = 1
    SPDDTVARSNO
    SPDDTVarcode
    SPDDTDISCCODE
    SPDDTDISCDESC
    SPDDTDRate
End Enum

Dim EmployeeNo As String
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
    End If
    If Opt = "" Or Opt = "qry" Then
        If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
            If adoPrimaryRS("DocDate") <> "" Then
                DTPicker1.value = Format(adoPrimaryRS("DocDate"), "dd/mm/yyyy")
            Else
            
            End If
            
            If adoPrimaryRS("todate") <> "" Then
                DTPicker3.value = Format(adoPrimaryRS("todate"), "dd/mm/yyyy")
          
            End If
                  
            If adoPrimaryRS("fromdate") <> "" Then
                DTPicker2.value = Format(adoPrimaryRS("fromdate"), "dd/mm/yyyy")
          
            End If
                    
            Call SETDESPATCHHead
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select a.Divcode,Docno,a.docsno,Docdate,a.supcd,a.CATCD,bb.CATNAME,a.Varcode,c.VARNAME,a.Plant,d.PLName,a.RateUnit,a.CandyRate,a.RATEKG ,r.unitname from RM_FibreRate a inner join rm_cat bb on bb.catcd=a.catcd left join rm_var c on c.varcode=a.varcode left join rm_plant d on d.plcode=a.Plant left join RM_rateunit r on r.unitcode=a.RateUnit where a.DocDate= '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'  and DocNo='" & adoPrimaryRS("DocNo") & "' Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
            Call SpdLoad
            
            
            Call SETDISCTYPEHead
            Set adoSecondaryRS1 = New Recordset
            adoSecondaryRS1.Open "select a.Divcode,a.Docno,a.Docdate,a.VSno,a.DocSno,a.Varcode,a.DType,b.Description ddesc,a.DRate from RM_FibreRateDisc a left join RM_DiscountType b on a.DType=b.code   where   a.DocDate= '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' and DocNo='" & adoPrimaryRS("DocNo") & "' Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
            Call SpdLoadvar
            
        End If
    End If

End Sub
Private Sub SpdLoad()
        Call SETDESPATCHHead
        With SpdEmpAllocation
            .MaxRows = 0
            .MaxCols = SPDRATEEntry.SPDVRateKG
            .CursorStyle = CursorStyleArrow
            RW = 1
        Do While Not adoSecondaryRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText SPDRATEEntry.SPDVSNO, RW, adoSecondaryRS("DOCSNO")
            .SetText SPDRATEEntry.SPDVPlantDesc, RW, adoSecondaryRS("PLName")
            .SetText SPDRATEEntry.SPDVRateUnit, RW, adoSecondaryRS("unitname")
            .SetText SPDRATEEntry.SPDVRateUnitCD, RW, adoSecondaryRS("RateUnit")
            
            .SetText SPDRATEEntry.SPDVVarcode, RW, adoSecondaryRS("varcode")
            .SetText SPDRATEEntry.SPDVVarName, RW, adoSecondaryRS("varname")
            .SetText SPDRATEEntry.SPDVPlant, RW, adoSecondaryRS("plant")
            .SetText SPDRATEEntry.SPDVRateKG, RW, adoSecondaryRS("ratekg")
            
            .SetText SPDRATEEntry.SPDVCATCD, RW, adoSecondaryRS("CATCD")
            .SetText SPDRATEEntry.SPDVCATNAME, RW, adoSecondaryRS("catname")
            
            .SetText SPDRATEEntry.SPDVSUPCD, RW, adoSecondaryRS("supcd")
            .SetText SPDRATEEntry.SPDVRateCY, RW, adoSecondaryRS("CandyRate")
            

            RW = RW + 1
            adoSecondaryRS.MoveNext
        Loop
        End With
End Sub

Private Sub SpdLoadvar()
        Call SETDISCTYPEHead
        With SPDDiscTypeDet
            .MaxRows = 0
            .MaxCols = SpdDiscType.SPDDTDRate
            .CursorStyle = CursorStyleArrow
            RW = 1
        Do While Not adoSecondaryRS1.EOF
            .MaxRows = .MaxRows + 1
            .SetText SpdDiscType.SPDDTSNO, RW, adoSecondaryRS1("DOCSNO")
            .SetText SpdDiscType.SPDDTVARSNO, RW, adoSecondaryRS1("VSno")
            .SetText SpdDiscType.SPDDTVarcode, RW, adoSecondaryRS1("Varcode")
            .SetText SpdDiscType.SPDDTDISCCODE, RW, adoSecondaryRS1("DType")
            .SetText SpdDiscType.SPDDTDISCDESC, RW, adoSecondaryRS1("ddesc")
            .SetText SpdDiscType.SPDDTDRate, RW, adoSecondaryRS1("DRate")
            RW = RW + 1
            adoSecondaryRS1.MoveNext
        Loop
        End With
End Sub


Private Sub BUTTON_Click(Index As Integer)
 intervalMinutes = -1
Select Case Index

    Case 0
    
            Set Servrs = New Recordset
            Servrs.Open "select DATEDIFF(D,'" & Format(pdate, "yyyy-MM-dd") & "',getdate()) as s_day", DB
            Serverday = Servrs("s_day")
            
            If Pentrylock = "Y" And Serverday > Lockdays - 1 Then
                MsgBox "Entry Date Expired For This User !", vbInformation, head
                Screen.MousePointer = 0
            Exit Sub
            End If
            Opt = "add"
            FraDespatch.Enabled = True
            TXTFIELDS(3).SetFocus
            desc.Caption = "Addition"
            stbar.Panels(2).Text = "Addition"
            Screen.MousePointer = 11
            stbar.Panels(2).Text = "                "
            DTPicker1.value = pdate
            EmployeeNo = "0"
           ' MaskEdBox2.Text = "__/__/____"
            FraOrd.Visible = False
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select a.divcode,docno,docdate,supcd,Fromdate,Todate from RM_FibreRate a where    1= 2", DB, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select a.Divcode,Docno,a.docsno,Docdate,a.supcd,a.CATCD,bb.CATNAME,a.Varcode,c.VARNAME,a.Plant,d.PLName,a.RateUnit,a.CandyRate,a.RATEKG,r.unitname  from RM_FibreRate a inner join rm_cat bb on bb.catcd=a.catcd left join rm_var c on c.varcode=a.varcode left join rm_plant d on d.plcode=a.Plant left join RM_rateunit r on r.unitcode=a.RateUnit where  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
            Opt = "add"
            adoPrimaryRS.AddNew
            Call bindcontls
            tottot = 0
            TXTFIELDS(7).Text = ""
            TXTFIELDS(8).Text = ""
            TXTFIELDS(2).Text = ""
             SupSEL = False
            If DB.State = 0 Then DB.BeginTrans
            Call ENABLCONTLS
            Call adddelmod(BUTTON)
            DTPicker2.value = mfdate
            DTPicker3.value = mldate
            
            Screen.MousePointer = 0
            TXTFIELDS(3).SetFocus
            Label12.Visible = True
            TXTFIELDS(8).Visible = True
            TXTFIELDS(7).Visible = True
            
            Set Rstdocno = New Recordset
            Rstdocno.Open "Select right(isnull(max(convert(numeric,docno)),0),4) as docno from RM_FibreRate where DocDate between '" & Format(yfdate, "dd-MMM-yyyy") & "' and '" & Format(yldate, "dd-MMM-yyyy") & "'", DB
    
            If IsNull(Rstdocno("docno")) Then
              
                TXTFIELDS(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
              
            Else
                TXTFIELDS(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
            End If
            
                            
          
            DB.Execute "delete from RM_FibreRateDiscTXN where IPAdd='" & LocalIPAdd & "'  "
        
            
            
            Call SETDESPATCHHead
'            SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
'            SpdEmpAllocation.SetText SPDRATEEntry.SPDVSNO, 1, SpdEmpAllocation.MaxRows
            Call SETDISCTYPEHead
            DTPicker2.maxdate = yldate
            DTPicker2.MinDate = yfdate
            DTPicker3.maxdate = yldate
            DTPicker3.MinDate = yfdate
            
    Case 1
        If Record_Exists("RM_FibreRate where  DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'") = False Then Exit Sub
        Opt = "mod"
        Set rsk = New Recordset
        FraDespatch.Enabled = True
        rsk.Open "select TOP 1 A.DocNo,DocDate,Convert(numeric(18,0),Docno) as DocNoss from RM_FibreRate A where  DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(Appflg,'N')='N' Order By DocNoss Desc", DB, adOpenStatic, adLockReadOnly
        If rsk.RecordCount > 0 Then
            desc.Caption = "Modify"
            LookUp.Clear = True

            LookUp.query = "select distinct a.DocNo 'Doc. No.',a.DocDate 'Date' from RM_FibreRate A WHERE    docno not in (select docno from rm_fibrerate aa  where  a.docno=aa.docno and isnull(Appflg,'N')='Y') "
        
            LookUp.Caption = "Fibre Rate Listing"
            LookUp.DefCol = "Doc. No."
            LookUp.ALIGN = "1500,2000"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                DTPicker1.value = LookUp.Fields(1)
                Call adddelmod(BUTTON)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.divcode,docno,docdate,supcd,Fromdate,Todate,appflg from RM_FibreRate a where   Docno = " & LookUp.Fields(0) & " And DocDate = '" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' And DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select a.Divcode,Docno,a.docsno,Docdate,a.supcd,a.CATCD,bb.CATNAME,a.Varcode,c.VARNAME,a.Plant,d.PLName,a.RateUnit,a.CandyRate,a.RATEKG,r.unitname  from RM_FibreRate a inner join rm_cat bb on bb.catcd=a.catcd left join rm_var c on c.varcode=a.varcode left join rm_plant d on d.plcode=a.Plant left join RM_rateunit r on r.unitcode=a.RateUnit  where DocNo =" & adoPrimaryRS("Docno") & " And DocDate='" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoad
                Else
                    MsgBox "Select a valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                
                SupSEL = True
                
                  DB.Execute "delete from RM_FibreRateDiscTXN where IPAdd='" & LocalIPAdd & "'  "
                Set RSDST = New Recordset
                RSDST.Open "select * from RM_FibreRateDisc   where docno='" & adoPrimaryRS("Docno") & "' and docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and supcd='" & adoPrimaryRS("supcd") & "' ", DB, adOpenStatic
                 Do While Not RSDST.EOF
                        DB.Execute "insert into RM_FibreRateDiscTXN (Divcode,docno,Docdate,VSno,DocSno,Varcode,DType,DRate,IPAdd,supcd)values('" & Divcode & "','" & val(RSDST("docno")) & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & val(RSDST("vsno")) & "','" & val(RSDST("docsno")) & "','" & RSDST("varcode") & "','" & Trim(RSDST("dtype")) & "','" & val(RSDST("drate")) & "','" & LocalIPAdd & "','" & adoPrimaryRS("supcd") & "')"
                        RSDST.MoveNext
                 Loop
                    
                
                LookUp.Clear = True
                Call bindcontls
                Call ENABLCONTLS
                TXTFIELDS(3).Locked = True
                FraDespatch.Enabled = True
                Screen.MousePointer = 0
             Else
                Opt = " "
             End If
             '19/02/14
            Buttonframe.Enabled = True
        End If
                   
    Case 2
        If Record_Exists("RM_FibreRate where  DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'") = False Then Exit Sub
        Opt = "del"
        Set rsk = New Recordset
        rsk.Open "select TOP 1 convert(numeric(18,0),A.DocNo)as DocNo ,DocDate from RM_FibreRate A where  DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "' Order By DocDate Desc", DB, adOpenStatic, adLockReadOnly
        If rsk.RecordCount > 0 Then
            desc.Caption = "Deletion"
            LookUp.Clear = True

            LookUp.query = "select distinct a.DocNo 'Doc. No.',a.DocDate 'Date' from RM_FibreRate A WHERE   docno not in (select docno from rm_fibrerate aa  where  a.docno=aa.docno and isnull(Appflg,'N')='Y')  "
      
            LookUp.Caption = "Fibre Rate Listing"
            LookUp.DefCol = "Doc. No."
            LookUp.ALIGN = "1500,1500"
         '   LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Call adddelmod(BUTTON)
                DTPicker1.value = LookUp.Fields(1)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.divcode,docno,docdate,supcd ,Fromdate,Todate from RM_FibreRate a   where  Docno = " & LookUp.Fields(0) & " And DocDate = '" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' And DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select a.Divcode,Docno,a.docsno,Docdate,a.supcd,a.CATCD,bb.CATNAME,a.Varcode,c.VARNAME,a.Plant,d.PLName,a.RateUnit,a.CandyRate,a.RATEKG,r.unitname  from RM_FibreRate a inner join rm_cat bb on bb.catcd=a.catcd left join rm_var c on c.varcode=a.varcode left join rm_plant d on d.plcode=a.Plant left join RM_rateunit r on r.unitcode=a.RateUnit where  DocNo =" & adoPrimaryRS("Docno") & " And DocDate='" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoad
                    SpdEmpAllocation.Enabled = True
                    SpdEmpAllocation.Lock = False
                Else
                    MsgBox "Select a valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                LookUp.Clear = True
                Call bindcontls
                Call disablcontls
                TXTFIELDS(3).Locked = True
                DB.Execute "delete from RM_FibreRateDiscTXN where IPAdd='" & LocalIPAdd & "'  "
                Set RSDST = New Recordset
                RSDST.Open "select * from RM_FibreRateDisc   where docno='" & adoPrimaryRS("Docno") & "' and docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and supcd='" & adoPrimaryRS("supcd") & "' ", DB, adOpenStatic
                 Do While Not RSDST.EOF
                        DB.Execute "insert into RM_FibreRateDiscTXN (Divcode,docno,Docdate,VSno,DocSno,Varcode,DType,DRate,IPAdd,supcd)values('" & Divcode & "','" & val(RSDST("docno")) & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & val(RSDST("vsno")) & "','" & val(RSDST("docsno")) & "','" & RSDST("varcode") & "','" & Trim(RSDST("dtype")) & "','" & val(RSDST("drate")) & "','" & LocalIPAdd & "','" & adoPrimaryRS("supcd") & "')"
                        RSDST.MoveNext
                 Loop
                
                Screen.MousePointer = 0
             Else
                Opt = " "
             End If
            Buttonframe.Enabled = True
        End If
        
    Case 4
        Opt = "fnd"
            LookUp.Clear = True
      
            LookUp.query = "select distinct a.DocNo 'Doc. No.',a.DocDate 'Date' from RM_FibreRate A WHERE    a.DocDate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'"
         
            LookUp.Caption = "Fibre Rate Listing"
            LookUp.DefCol = "Doc. No."
            LookUp.ALIGN = "1500,1500"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Call adddelmod(BUTTON)
                DTPicker1.value = LookUp.Fields(1)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.divcode,docno,docdate,supcd,Fromdate,Todate from RM_FibreRate a where   Docno = " & LookUp.Fields(0) & " And DocDate = '" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' And DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select a.Divcode,Docno,a.docsno,Docdate,a.supcd,a.CATCD,bb.CATNAME,a.Varcode,c.VARNAME,a.Plant,d.PLName,a.RateUnit,a.CandyRate,a.RATEKG,r.unitname  from RM_FibreRate a inner join rm_cat bb on bb.catcd=a.catcd left join rm_var c on c.varcode=a.varcode left join rm_plant d on d.plcode=a.Plant left join RM_rateunit r on r.unitcode=a.RateUnit where DocNo =" & adoPrimaryRS("Docno") & " And DocDate='" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoad
                Else
                    MsgBox "Select a valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                LookUp.Clear = True
                Call bindcontls
                Call ENABLCONTLS
                DB.Execute "delete from RM_FibreRateDiscTXN where IPAdd='" & LocalIPAdd & "'  "
                Set RSDST = New Recordset
                RSDST.Open "select * from RM_FibreRateDisc   where docno='" & adoPrimaryRS("Docno") & "' and docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and supcd='" & adoPrimaryRS("supcd") & "' ", DB, adOpenStatic
                 Do While Not RSDST.EOF
                        DB.Execute "insert into RM_FibreRateDiscTXN (Divcode,docno,Docdate,VSno,DocSno,Varcode,DType,DRate,IPAdd,supcd)values('" & Divcode & "','" & val(RSDST("docno")) & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & val(RSDST("vsno")) & "','" & val(RSDST("docsno")) & "','" & RSDST("varcode") & "','" & Trim(RSDST("dtype")) & "','" & val(RSDST("drate")) & "','" & LocalIPAdd & "','" & adoPrimaryRS("supcd") & "')"
                        RSDST.MoveNext
                 Loop
                 
                TXTFIELDS(3).Locked = True
                FraDespatch.Enabled = True
                Screen.MousePointer = 0
             Else
                Opt = " "
             End If
             '19/02/14
            Buttonframe.Enabled = True
            BUTTON(9).Enabled = False
    Case 5
            'first
            desc.Caption = "Query"
            On Error GoTo GoFirstError
            adoPrimaryRS.MoveFirst
            'calling fir procedure from module
            Call FIR(BUTTON)
            Exit Sub
GoFirstError:
       
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
                BUTTON(6).Enabled = False
                BUTTON(8).Enabled = False
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                adoPrimaryRS.MoveLast
            End If
            Exit Sub
GoNextError:
  
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
                'moved off the end so go back
                BUTTON(5).Enabled = False
                BUTTON(7).Enabled = False
                BUTTON(6).Enabled = True
                BUTTON(8).Enabled = True
                adoPrimaryRS.MoveFirst
            End If
            Exit Sub
        
GoPrevError:
 
    Case 8
        'last
            desc.Caption = "Query"
            On Error GoTo GoLastError
            adoPrimaryRS.MoveLast
            'calling last procedure from module
            Call las(BUTTON)
            Exit Sub
GoLastError:



    Case 9
        'Save
            'Screen.MousePointer = 11
            desc.Caption = "Query"
            On Error GoTo er1
            'Call PoCalculation
            
            bolSave = True
            bolSave = False
            
            If Opt = "add" Then
             Set RSDST = New Recordset
             RSDST.Open "select * from RM_FibreRateDiscTXN where IPAdd='" & LocalIPAdd & "' and docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and supcd='" & Trim(TXTFIELDS(3).Text) & "'   ", DB, adOpenStatic
             If RSDST.EOF Then
                MsgBox "Please Enter Discount Rate Details. Press F5 on Rate Column to Enter Discount Rate !!!!", vbInformation, head
                Exit Sub
             End If
            
'                If Trim(TXTFIELDS(8).Text) = "" Then
'                    MsgBox "Category Cannot be empty", vbInformation, head
'                    TXTFIELDS(8).SetFocus
'                    Screen.MousePointer = vbArrow
'                    Exit Sub
'                End If
'                If Trim(TXTFIELDS(5).Text) = "" Then
'                    MsgBox "Expense Code Cannot be empty", vbInformation, head
'                    TXTFIELDS(5).SetFocus
'                    Screen.MousePointer = vbArrow
'                    Exit Sub
'                End If
'
'                If Trim(Combo1.Text) = "" Then
'                    MsgBox "Stay Type Cannot be empty", vbInformation, head
'                    Combo1.SetFocus
'                    Screen.MousePointer = vbArrow
'                    Exit Sub
'                End If
                
                If Trim(TXTFIELDS(3).Text) = "" Then
                    MsgBox "Supplier Code Cannot be empty", vbInformation, head
                    TXTFIELDS(3).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                
'                If Trim(TXTFIELDS(9).Text) = "" Then
'                    MsgBox "Department cannot be empty", vbInformation, head
'                    Screen.MousePointer = vbArrow
'                    TXTFIELDS(2).SetFocus
'                    Exit Sub
'                End If
                
                

                With SpdEmpAllocation
                    If .MaxRows = 0 Then
                        MsgBox "No Variety Details,Transaction Aborted", vbInformation, head
                        DB.RollbackTrans
                        Call query_mode(0)
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                End With
                
                
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
'
                        If Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlant, RW)) = "" Then
                           MsgBox "Please Enter Plant Details", vbInformation, head
                           Exit Sub
                        End If
                        
                        If Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateUnit, RW)) = "" Then
                           MsgBox "Please Enter Rate/Unit Details", vbInformation, head
                           Exit Sub
                        End If
                        
                        If val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, RW)) = 0 Then
                           MsgBox "Please Enter Rate Details", vbInformation, head
                           Exit Sub
                        End If
                        
                        Set RSDST = New Recordset
                        RSDST.Open "select * from RM_FibreRateDiscTXN where IPAdd='" & LocalIPAdd & "' and docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and varcode='" & Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, RW)) & "' and supcd='" & Trim(TXTFIELDS(3).Text) & "'  ", DB, adOpenStatic
                        If RSDST.EOF Then
                           MsgBox "Please Enter Discount Rate Details. Press F5 on Rate Column to Enter Discount Details !!!!", vbInformation, head
                           Exit Sub
                        End If
                        

'                        If Val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDDDQty, RW)) <> 0 And Val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDDDPaidEmp, RW)) = 0 Then
'                          MsgBox "Please Enter Employee Paid Amount in Setup", vbInformation, head
'                          Exit Sub
'                         End If
'
'                        If Val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDDDExQty, RW)) <> 0 And Val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDDDPaidComp, RW)) = 0 Then
'                          MsgBox "Please Enter Company Paid Amount in Setup", vbInformation, head
'                          Exit Sub
'                        End If
                         
                    Next
                End With
                
                YearNo = Format(yfdate, "YY")
'                Set TmpRs = New Recordset
'                TmpRs.Open "Select isnull(max(isnull(convert(numeric(18,0),DocNo),0)),0)+1 AS Last_docno From RM_FibreRate where DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                If Not TmpRs.EOF Then
'                    Last_docno = TmpRs("Last_docno")
'                End If
'                docNo = (Last_docno)
                
                
        DB.BeginTrans

        Set Rstdocno = New Recordset
        Rstdocno.Open "Select right(isnull(max(convert(numeric,docno)),0),4) as docno from RM_FibreRate where DocDate between '" & Format(yfdate, "dd-MMM-yyyy") & "' and '" & Format(yldate, "dd-MMM-yyyy") & "'", DB

        If IsNull(Rstdocno("docno")) Then
            Set Rs = New Recordset
            Rs.Open "select sszgno from yn_param where sszgno is not null", DB, adOpenStatic
            If Not Rs.EOF Then
                TXTFIELDS(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
            Else
                TXTFIELDS(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
            End If
        Else
            TXTFIELDS(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
        End If
                docNo = val(TXTFIELDS(0).Text)
             If docNo = "" Then Exit Sub
                Screen.MousePointer = vbHourglass
               adoPrimaryRS("DIVCODE") = Divcode
               adoPrimaryRS("DocNo") = docNo
              adoPrimaryRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
              
               adoPrimaryRS("fromdate") = Format(DTPicker2.value, "yyyy-MM-dd")
               adoPrimaryRS("todate") = Format(DTPicker3.value, "yyyy-MM-dd")
              'adoPrimaryRS("SLCODE") = TXTFIELDS(8).Text
                
       
                

               ' adoPrimaryRS("EntryDate") = Now

                Dim UPDRS As Recordset
                Set UPDRS = New Recordset
                UPDRS.Open "select a.Divcode,Docno,a.docsno,Docdate,a.supcd,a.CATCD,a.Varcode,a.Plant,a.RateUnit,a.CandyRate,a.RATEKG,fromDate,todate from RM_FibreRate a where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateUnit, RW)) <> "" And val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, RW)) <> 0 Then
                            UPDRS.AddNew
                            UPDRS("divcode") = Divcode
                            UPDRS("DocNo") = docNo
                            UPDRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
                            UPDRS("fromDate") = Format(DTPicker2.value, "yyyy-MM-dd")
                            UPDRS("toDate") = Format(DTPicker3.value, "yyyy-MM-dd")
                            UPDRS("DocSno") = RW
                            UPDRS("CATCD") = GetText(SpdEmpAllocation, SPDRATEEntry.SPDVCATCD, RW)
                            UPDRS("Varcode") = Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, RW))
                            
                            UPDRS("supcd") = Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVSUPCD, RW))
                            UPDRS("Plant") = Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlant, RW))
                            UPDRS("CandyRate") = Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, RW))
                            UPDRS("RateUnit") = Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateUnitCD, RW))
                            
                            Set Rscy = New Recordset
                            Rscy.Open "select value from rm_rateunit where UNITCODE='" & Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateUnitCD, RW)) & "'", DB
                            If Not Rscy.EOF Then
                                UPDRS("RATEKG") = Round(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, RW)) / Rscy(0), 4)
                            End If
                

                        End If
                    Next
                End With
               ' adoPrimaryRS.UpdateBatch adAffectAllChapters
                UPDRS.UpdateBatch adAffectAllChapters
                
             Set RSDST = New Recordset
             RSDST.Open "select * from RM_FibreRateDiscTXN where IPAdd='" & LocalIPAdd & "' and docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'  and supcd='" & Trim(TXTFIELDS(3).Text) & "'  ", DB, adOpenStatic
             Do While Not RSDST.EOF

                    DB.Execute "insert into RM_FibreRateDisc (Divcode,docno,Docdate,VSno,DocSno,Varcode,DType,DRate,IPAdd,supcd)values('" & Divcode & "','" & val(docNo) & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & val(RSDST("vsno")) & "','" & val(RSDST("docsno")) & "','" & RSDST("varcode") & "','" & Trim(RSDST("dtype")) & "','" & val(RSDST("drate")) & "','" & LocalIPAdd & "','" & Trim(TXTFIELDS(3).Text) & "')"
                    RSDST.MoveNext
             Loop
             DB.CommitTrans
                
                MsgBox "Record(s) Saved Successfully", vbOKOnly, head
                Dim rs_cust As New ADODB.Recordset
'                Set rs_cust = New Recordset
'                rs_cust.Open "Select distinct slcode from Fa_slmas where slcode like 'D6%' and slcode = '" & TXTFIELDS(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
'                If Val(rs_cust.RecordCount) > 0 Then
'                  '  DB.Execute "ksp_WvngDly_sms '" & divcode & "','" & TXTFIELDS(0) & "','" & Format(DTPicker1.value, "yyyy-MM-dd") & "'"
'                End If
                
        End If
        
        
''09/10/13
        If Opt = "mod" Then

              
                If Trim(TXTFIELDS(3).Text) = "" Then
                    MsgBox "Supplier Name Cannnot be Empty", vbInformation, head
                    Screen.MousePointer = vbArrow
                    TXTFIELDS(9).SetFocus
                    Exit Sub
                End If
            
   
        
           ' DB.Execute ("Delete From YN_SizingDeliveryDT  WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' and DocNo = " & Val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'"), xx

            bolSave = True
            bolSave = False

            'If Opt = "add" Then

                With SpdEmpAllocation
                    If .MaxRows = 0 Then
                        MsgBox "No Item Details,Transaction Aborted", vbInformation, head
                        DB.RollbackTrans
                        Call query_mode(0)
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                End With
                YearNo = Format(yfdate, "YY")
                
              With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
'
                        If Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlant, RW)) = "" Then
                           MsgBox "Please Enter Plant Details", vbInformation, head
                           Exit Sub
                        End If
                        
                        If Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateUnit, RW)) = "" Then
                           MsgBox "Please Enter Rate/Unit Details", vbInformation, head
                           Exit Sub
                        End If
                        
                        If val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, RW)) = 0 Then
                           MsgBox "Please Enter Rate Details", vbInformation, head
                           Exit Sub
                        End If
                        
                        Set RSDST = New Recordset
                        RSDST.Open "select * from RM_FibreRateDiscTXN where IPAdd='" & LocalIPAdd & "' and docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and varcode='" & Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, RW)) & "' and supcd='" & Trim(TXTFIELDS(3).Text) & "'  ", DB, adOpenStatic
                        If RSDST.EOF Then
                           MsgBox "Please Enter Discount Rate Details. Press F5 on Rate Column to Enter Discount Details !!!!", vbInformation, head
                           Exit Sub
                        End If
                        

'                        If Val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDDDQty, RW)) <> 0 And Val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDDDPaidEmp, RW)) = 0 Then
'                          MsgBox "Please Enter Employee Paid Amount in Setup", vbInformation, head
'                          Exit Sub
'                         End If
'
'                        If Val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDDDExQty, RW)) <> 0 And Val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDDDPaidComp, RW)) = 0 Then
'                          MsgBox "Please Enter Company Paid Amount in Setup", vbInformation, head
'                          Exit Sub
'                        End If
                         
                    Next
                End With
                DB.BeginTrans
                 DB.Execute ("Delete From RM_FibreRateDisc  WHERE  DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' "), xx
                 DB.Execute ("Delete From RM_FibreRate  WHERE  DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' "), xx
             
                'Set tmprs = New Recordset
                'tmprs.Open "Select isnull(max(isnull(DocNo,0)),0)+1 AS Last_docno From RM_FibreRate where Divcode ='" & divcode & "' And DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

                'If Not tmprs.EOF Then
                 '   Last_docno = Right(tmprs("Last_docno"), 6)
                'End If
                'DocNo = YearNo & Padl(CStr(Last_docno), 6, "0")

         '   Set adoPrimaryRS = New Recordset
'            adoPrimaryRS.Open "select Divcode,DocNo,DocDate,SLCODE,JONo,JODate,DespatchTo,VechicleNo,RemTime,EntryDate,Description from  RM_FibreRate where  1= 2", DB, adOpenStatic, adLockBatchOptimistic
'
'            adoPrimaryRS.ADDNEW


              docNo = Trim(TXTFIELDS(0).Text)
              
                adoPrimaryRS("fromdate") = Format(DTPicker2.value, "yyyy-MM-dd")
               adoPrimaryRS("todate") = Format(DTPicker3.value, "yyyy-MM-dd")

              If docNo = "" Then Exit Sub
                Screen.MousePointer = vbHourglass
'                adoPrimaryRS("DIVCODE") = divcode
'                adoPrimaryRS("DocNo") = Val(DocNo)
'                adoPrimaryRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
'
'                adoPrimaryRS("EntryDate") = Now
'                adoPrimaryRS("Description") = TXTFIELDS(1).Text
                'Dim UPDRS As Recordset
                              Set UPDRS = New Recordset
                UPDRS.Open "select a.Divcode,Docno,a.docsno,Docdate,a.supcd,a.CATCD,a.Varcode,a.Plant,a.RateUnit,a.CandyRate,a.RATEKG,fromdate,todate,appflg from RM_FibreRate a where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateUnit, RW)) <> "" And val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, RW)) <> 0 Then
                            UPDRS.AddNew
                            UPDRS("divcode") = Divcode
                            UPDRS("DocNo") = val(TXTFIELDS(0).Text)
                            UPDRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
                            UPDRS("fromdate") = Format(DTPicker2.value, "yyyy-MM-dd")
                            UPDRS("todate") = Format(DTPicker3.value, "yyyy-MM-dd")
                            UPDRS("DocSno") = RW
                            UPDRS("CATCD") = GetText(SpdEmpAllocation, SPDRATEEntry.SPDVCATCD, RW)
                            UPDRS("Varcode") = Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, RW))
                            
                            UPDRS("supcd") = Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVSUPCD, RW))
                            UPDRS("Plant") = Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlant, RW))
                            UPDRS("CandyRate") = Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, RW))
                            UPDRS("RateUnit") = Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateUnitCD, RW))
                            
                            UPDRS("appflg") = "N"
                            Set Rscy = New Recordset
                            Rscy.Open "select value from rm_rateunit where UNITCODE='" & Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateUnitCD, RW)) & "'", DB
                            If Not Rscy.EOF Then
                                UPDRS("RATEKG") = Round(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, RW)) / Rscy(0), 4)
                            End If
                

                        End If
                    Next
                End With
             '   adoPrimaryRS.UpdateBatch adAffectAllChapters
                UPDRS.UpdateBatch adAffectAllChapters
                
            Set RSDST = New Recordset
            RSDST.Open "select * from RM_FibreRateDiscTXN where IPAdd='" & LocalIPAdd & "' and docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and supcd='" & Trim(TXTFIELDS(3).Text) & "' and docno='" & val(TXTFIELDS(0).Text) & "' ", DB, adOpenStatic
             Do While Not RSDST.EOF

                    DB.Execute "insert into RM_FibreRateDisc (Divcode,docno,Docdate,VSno,DocSno,Varcode,DType,DRate,IPAdd,supcd)values('" & Divcode & "','" & val(TXTFIELDS(0).Text) & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & val(RSDST("vsno")) & "','" & val(RSDST("docsno")) & "','" & RSDST("varcode") & "','" & Trim(RSDST("dtype")) & "','" & val(RSDST("drate")) & "','" & LocalIPAdd & "','" & Trim(TXTFIELDS(3).Text) & "')"
                    RSDST.MoveNext
             Loop
            DB.CommitTrans
                
                MsgBox "Record(s) Saved Successfully", vbOKOnly, head
        ''End If

        End If
      
        
      
        If Opt = "del" Then
            DB.BeginTrans
                DB.Execute ("Delete From RM_FibreRateDisc  WHERE   DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' "), xx
                DB.Execute ("Delete From RM_FibreRate  WHERE   DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' "), xx
            DB.CommitTrans
           ' DB.Execute ("Delete From RM_FibreRate  WHERE   DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' "), xx
           ' DB.Execute ("Delete From YN_SizingDeliveryDT  WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' and DocNo = " & Val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'"), xx
            MsgBox "Record deleted Successfully", vbOKOnly, head
        End If
        'DB.CommitTrans
        ' Return to query mode
        Call query_mode(0)

        Call NEWFORM1(BUTTON, GSNO)
Case 10
    If Bud <> "Y" Then
        Bud = ""
        If MsgBox("Do you want to Cancel?", vbQuestion + vbYesNo, head) = vbNo Then Exit Sub
    End If
    Bud = ""

    desc.Caption = "Query"
    Screen.MousePointer = 11
    On Error Resume Next
    'CANCEL
    
    Select Case Opt
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
    Case "add"
        'To undo addition
        DB.RollbackTrans
    Case "del"
        'To undo deletion
        DB.RollbackTrans
         
    End Select
    'To return default settings - i.e query mode
    'Call TaxClear(Me)
    Call query_mode(0)
    SSTab1.Visible = True
    grdDataGrid.Visible = True
    'calling cancl procedure from module
    'Call cancl(BUTTON, GSNO)
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(12).Enabled = True

Case 11
    'EXIT
    Unload Me
Case 12
  Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_FibreRate_Entry
    Cystalrptbunk.CrystalPrint
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0

End Select

Screen.MousePointer = 0
Exit Sub
er1:
    MsgBox Err.Description, vbInformation, head
SendKeys ("%")

SendKeys ("{esc}")
Screen.MousePointer = 0
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form quotatn", vbInformation, head
End Sub
Public Sub bindcontls()
On Error Resume Next
Dim oText As TextBox
  'Bind the text boxes to the recordset
  For Each oText In Me.TXTFIELDS
    Set oText.DataSource = adoPrimaryRS
  Next
On Error Resume Next


End Sub

Private Sub CmdRFQItemok_Click()

End Sub

Private Sub Check1_Click()
 For IntRow = 1 To SpdSIZEORD.MaxRows
        SpdSIZEORD.Row = IntRow
        SpdSIZEORD.Col = E_VARLIST.SPDSCHECK1
        SpdSIZEORD.value = Check1.value
    Next IntRow
End Sub

Private Sub CmdCrystal_Click(Index As Integer)
Dim ClsSizeDes As New clsCrystal
    'InvType = val(TXTFIELDS(11).Text)
    docNo = val(TXTFIELDS(0).Text)
    DOCDT = Format(DTPicker1.value, "yyyy-MM-dd")
'
'  If Option1.value = True Then
'    If DocNo <> 0 Then
'    ' With Wt
'        Set TmpRs = New Recordset
'        TmpRs.Open "Select DISTINCT * from YN_SizingDeliveryDT where DivCode =" & divcode & " and DocNo=" & Val(TXTFIELDS(0).Text) & " and DocDate='" & Format(DTPicker1.value, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'        If TmpRs.RecordCount > 4 Then
'            Set ClsSizeDes.cryRept = Tran_SizingDelivery_JO 'Tran_SizingDelivery
'        Else
'            Set ClsSizeDes.cryRept = Tran_SizingDelivery_JO 'Tran_SizingDelivery 'Tran_SizingDeliveryCut
'
'        End If
'
'        ClsSizeDes.CrystalPrint
'        CrystalReport1.Reset
'        CrystalReport1.DiscardSavedData = True
'        CrystalReport1.Connect = connectstring
'        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepWvgPrep.rpt"
'        CrystalReport1.ParameterFields(0) = "@DivCode;" & divcode & ""
'        CrystalReport1.ParameterFields(1) = "@DocNo;" & DocNo & ""
'        CrystalReport1.ParameterFields(2) = "@DocDt;" & Docdt & ""
'        CrystalReport1.WindowShowPrintSetupBtn = True
'        CrystalReport1.WindowShowSearchBtn = True
'        CrystalReport1.WindowState = crptMaximized
'        SendKeys "{ENTER}"
'
'        CrystalReport1.Action = 1
'        CrystalReport1.PrinterCopies = 1
'        'CrystalReport1.printers
'        Screen.MousePointer = 0
'    End If
' Else
'    If DocNo <> 0 Then
'    'Withoutwt
'        'Dim ClsSizeDes As New clsCrystal
'        Set ClsSizeDes.cryRept = Tran_SizingDeliverywowt
'        ClsSizeDes.CrystalPrint
'        CrystalReport1.Reset
'        CrystalReport1.DiscardSavedData = True
'        CrystalReport1.Connect = connectstring
'        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepWvgPrep.rpt"
'        CrystalReport1.ParameterFields(0) = "@DivCode;" & divcode & ""
'        CrystalReport1.ParameterFields(1) = "@DocNo;" & DocNo & ""
'        CrystalReport1.ParameterFields(2) = "@DocDt;" & Docdt & ""
'        CrystalReport1.WindowShowPrintSetupBtn = True
'        CrystalReport1.WindowShowSearchBtn = True
'        CrystalReport1.WindowState = crptMaximized
'        SendKeys "{ENTER}"
'        CrystalReport1.Action = 1
'        CrystalReport1.PrinterCopies = 1
'        'CrystalReport1.printers
'        Screen.MousePointer = 0
'    End If
' End If
'
End Sub

Private Sub CmdCrystalGP_Click()
    Dim ClsSizeDes1 As New clsCrystal
    'InvType = val(TXTFIELDS(11).Text)
    docNo = val(TXTFIELDS(0).Text)
    DOCDT = Format(DTPicker1.value, "yyyy-MM-dd")
    
    If docNo <> 0 Then
    ' With Wt
        'Set tmprs = New Recordset
        'tmprs.Open "Select DISTINCT * from YN_SizingDeliveryDT where DivCode =" & divcode & " and DocNo=" & val(txtfields(0).Text) & " and DocDate='" & Format(DTPicker1.Value, "yyyy-MM-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
        'If tmprs.RecordCount > 4 Then
            'Set ClsSizeDes1.cryRept = Tran_SizingDeliveryGP
        'Else
            Set ClsSizeDes1.cryRept = Tran_SizingDeliveryGPCut
            
        'End If
        
        ClsSizeDes1.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepWvgPrep.rpt"
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@DocNo;" & docNo & ""
        CrystalReport1.ParameterFields(2) = "@DocDt;" & DOCDT & ""
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        'CrystalReport1.printers
        Screen.MousePointer = 0
    End If
 
 
End Sub

Private Sub CmdOrderOk_Click()
    Call SETDESPATCHHead
    chk = 0
    With SpdSIZEORD
        For RW = 1 To .MaxRows
            .Row = RW
            .Col = SPDSCHECK1
            If .value = True Then
                chk = 1
                SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
                SpdEmpAllocation.SetText SPDRATEEntry.SPDVSNO, RW, SpdEmpAllocation.MaxRows
                SpdEmpAllocation.SetText SPDRATEEntry.SPDVVarcode, RW, Trim(GetText(SpdSIZEORD, E_VARLIST.SPDSBVARCODE, RW))
                SpdEmpAllocation.SetText SPDRATEEntry.SPDVVarName, RW, Trim(GetText(SpdSIZEORD, E_VARLIST.SPDSBVARNAME, RW))
                SpdEmpAllocation.SetText SPDRATEEntry.SPDVCATCD, RW, Trim(GetText(SpdSIZEORD, E_VARLIST.SPDSCATCD, RW))
                SpdEmpAllocation.SetText SPDRATEEntry.SPDVCATNAME, RW, Trim(GetText(SpdSIZEORD, E_VARLIST.SPDSCATNAME, RW))
                SpdEmpAllocation.SetText SPDRATEEntry.SPDVSUPCD, RW, Trim(GetText(SpdSIZEORD, E_VARLIST.SPDSSUPCD, RW))

            End If
        Next
    End With
     FraOrd.Visible = False
     SpdEmpAllocation.Col = SPDRATEEntry.SPDVPlantDesc
     SpdEmpAllocation.SetFocus
   ' TXTFIELDS(8).SetFocus
   ' If TXTFIELDS(3).Enabled = True Then TXTFIELDS(9).SetFocus
    
End Sub

Private Sub Command1_Click()
FrameDiscType.Visible = False
End Sub

Private Sub Command2_Click()
FraOrd.Visible = False
End Sub

Private Sub Command3_Click()

On Error GoTo Command5_Click_Error
FrameDiscType.Visible = False

If Opt = "add" Or Opt = "mod" Then


Dim inc As Integer
inc = 0
 With SPDDiscTypeDet
 
        For RW = 1 To .MaxRows
            .Row = RW
         If Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDRate, RW)) = "" Then
            MsgBox "Please Enter Discount Rate! Atleast Zero value to Enter", vbInformation, head
            FrameDiscType.Visible = True
            Exit Sub
         End If
            inc = 1
'            If val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDRate, RW)) > 0 Then
'                inc = 1
'             End If
        Next RW
End With
If inc = 0 Then
    MsgBox "Please Enter Discount Rate", vbInformation, head
      FrameDiscType.Visible = True
    Exit Sub
End If

Dim docDate As Date

docDate = Format(DTPicker1.value, "yyyy-mm-dd")


DB.Execute "delete from RM_FibreRateDiscTXN where IPAdd='" & LocalIPAdd & "' and docdate='" & Format(docDate, "yyyy-mm-dd") & "' and varcode='" & Trim(Trim(GetText(SpdEmpAllocation, SPDVVarcode, SpdEmpAllocation.ActiveRow))) & "' AND VSno='" & val(GetText(SpdEmpAllocation, SPDVSNO, SpdEmpAllocation.ActiveRow)) & "' and divcode='" & Divcode & "' "

 With SPDDiscTypeDet
        For RW = 1 To .MaxRows
            .Row = RW
            'If Trim(GetText(SpdPrd, SPDDTDRate, RW)) <> 0 Then
                DB.Execute "insert into RM_FibreRateDiscTXN (Divcode,docno,Docdate,VSno,DocSno,Varcode,DType,DRate,IPAdd,supcd)values('" & Divcode & "','" & val(TXTFIELDS(0).Text) & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & val(GetText(SpdEmpAllocation, SPDVSNO, SpdEmpAllocation.ActiveRow)) & "','" & val(RW) & "','" & Trim(Trim(GetText(SpdEmpAllocation, SPDVVarcode, SpdEmpAllocation.ActiveRow))) & "','" & Trim(GetText(SPDDiscTypeDet, SPDDTDISCCODE, RW)) & "','" & val(GetText(SPDDiscTypeDet, SPDDTDRate, RW)) & "','" & LocalIPAdd & "','" & Trim(TXTFIELDS(3).Text) & "')"
           ' End If
        Next RW
End With

SpdEmpAllocation.SetFocus

'Set Rs = New Recordset
'Rs.Open "select isnull(sum(isnull(Quantity,0)) ,0) QTY,isnull(sum(isnull(Bales,0)) ,0)  from [IM_TMPRECCOPYDT1] where DIVCODE='" & Divcode & "' AND DOCNO='" & TXTFIELDS(2).Text & "' and POrdNo='" & Trim(GetText(SpdPIDtls, E_POrdNo, SpdPIDtls.ActiveRow)) & "' and POrdDt='" & Format(Trim(Trim(GetText(SpdPIDtls, E_POrdDt, SpdPIDtls.ActiveRow))), "YYYY-MM-DD") & "' AND POrdSno='" & Trim(GetText(SpdPIDtls, E_POrdSno, SpdPIDtls.ActiveRow)) & "' and divcode='" & Divcode & "' AND ITEMCODE='" & Trim(GetText(SpdPIDtls, E_ItemCode, SpdPIDtls.ActiveRow)) & "' and docdt='" & Format(docDate, "yyyy-mm-dd") & "'", DB, adOpenStatic
'If Rs(0) <> val(Trim(GetText(SpdPIDtls, E_INVQuantity, SpdPIDtls.ActiveRow))) Then
'MsgBox "QUANTITY CANNOT BE GREATE or LESS THAN INVOICE QUANTITY", vbInformation, head
'SSTab3.Visible = True
'Exit Sub
'End If
'
'If Rs(1) <> val(Trim(GetText(SpdPIDtls, E_NoofBale, SpdPIDtls.ActiveRow))) Then
'MsgBox "Bale QUANTITY CANNOT BE GREATE or LESS THAN INVOICE Bale QUANTITY", vbInformation, head
'SSTab3.Visible = True
'Exit Sub
'End If

End If

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click_Error ", vbInformation, head

End Sub





Private Sub DTPicker2_Change()
 DTPicker2.maxdate = yldate
  DTPicker2.MinDate = yfdate

End Sub

Private Sub DTPicker3_Change()
 DTPicker3.maxdate = yldate
  DTPicker3.MinDate = yfdate
End Sub

Private Sub Form_Load()
  
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
    desc.Caption = "Query"
    DATLAB.Caption = Format(pdate, "dd/mm/yyyy")
    Opt = "qry"
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
'    Set rs = New Recordset
'    rs.Open "select isnull(ProdAlias,'N') ProdAlias from  WVGPRPPARAM ", DB
'    If Not rs.EOF Then
'        prodflg = rs(0)
'    End If
'
    Call query_mode(0)
'    Set rs = New Recordset
'    rs.Open "select isnull(ProdAlias,'N') ProdAlias from  WVGPRPPARAM ", DB
'    If Not rs.EOF Then
'        prodflg = rs(0)
'    End If
    Call NEWFORM1(BUTTON, GSNO)
    FraDespatch.Enabled = True
    Set RsItem = New Recordset
    intervalMinutes = -1
    Label7.Visible = True
    
            DTPicker2.maxdate = yldate
            DTPicker2.MinDate = yfdate
            DTPicker3.maxdate = yldate
            DTPicker3.MinDate = yfdate
            
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.TXTFIELDS
        oText.Locked = True
    Next
    'FraDespatch.Enabled = False
    'MaskEdBox2.Enabled = False
    DTPicker1.Enabled = False
End Sub

Public Sub query_mode(MDOC As Long)
On Error GoTo query_mode_Error

Dim oText As TextBox

    bolSave = False
    FraOrd.Visible = False
    Call SETDESPATCHHead
    If Not Opt = "" Then
        Call disablcontls
        Set adoPrimaryRS = New Recordset
        If MDOC = 0 Then
            Call qry1
            Opt = ""
        Else
        Call fnd1(MDOC)
    End If
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
        Call NEWFORM1(BUTTON, GSNO)
        If adoPrimaryRS.AbsolutePosition = -1 Then
            For Each oText In Me.TXTFIELDS
                oText.Text = ""
            Next
        End If
        Exit Sub
    End If
    If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
        Call bindcontls
        If Opt <> "add" Then
            If Not adoPrimaryRS.EOF Then
                adoPrimaryRS.MoveLast
            End If
        End If
        On Error GoTo er1
        desc.Caption = "Query"
    End If
    Call NEWFORM1(BUTTON, GSNO)
    Screen.MousePointer = 0
    Exit Sub
er1:
If Err = 3021 Then
    MsgBox "No records Found", vbInformation, head
    Set grdDataGrid.DataSource = Nothing
    Screen.MousePointer = 0
    Call BUTTON_Click(10)
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
End If

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form PO_Quotation", vbInformation, head
End Sub
Public Sub fnd1(MDOC As Long)
On Error GoTo fnd1_Error

    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SHAPE {select distinct TH.Divcode,TH.DocNo,TH.DocDate,supcd,Fromdate,Todate  from  RM_FibreRate th  where  divcode = '" & Divcode & "'    " & _
    "  AND TH.DIVCODE = '" & Divcode & "'and DOCDT between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' " & _
    " and th.DocNo >= " & MDOC & " Order by DOCDT,DOCNO} AS ParentCMD APPEND ({select a.Divcode,Docno,a.docsno,Docdate,a.supcd,a.CATCD,bb.CATNAME,a.Varcode,c.VARNAME,a.Plant,d.PLName,a.RateUnit,a.CandyRate,a.RATEKG,r.unitname  from RM_FibreRate a inner join rm_cat bb on bb.catcd=a.catcd left join rm_var c on c.varcode=a.varcode left join rm_plant d on d.plcode=a.Plant  left join RM_rateunit r on r.unitcode=a.RateUnit WHERE DOCDATE  between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' Order by a.DOCDATE ,a.DOCSNO } AS ChildCMD RELATE DIVCODE TO DIVCODE,DOCNO TO DOCNO,DOCDATE TO DOCDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

Exit Sub
fnd1_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure fnd1 of Form FrmFibre Rate"

End Sub
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
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
        If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)  ''ExitCall BUTTON_Click(11)   ''Exit
    End If
ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
    Call BUTTON_Click(10)    ''Cancel
    Else
    If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)
    End If
End If
End Sub
'Private Sub SpdEmpAllocation_ComboCloseUp(ByVal Col As Long, ByVal Row As Long, ByVal SelChange As Integer)
'
'If Opt = "add" Or Opt = "mod" Then
'
''If KeyCode = 68 Then
'    With SpdEmpAllocation
'
'            If Opt = "add" Or Opt = "mod" Then
'                If .MaxRows > 0 Then
'                    If .ActiveCol = SPDRATEEntry.SPDVVarcode Then
''                            If UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, .ActiveRow))) = UCase("Shift") Then
''                                 If UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlant2ALLOC, .ActiveRow))) = UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, .ActiveRow))) Or UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlant3ALLOC, .ActiveRow))) = UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, .ActiveRow))) Then
''                                    MsgBox "Shift already assigned for this Employee .", vbInformation, head
''                                    .SetText SPDRATEEntry.SPDVVarcode, .ActiveRow, ""
''                                    .Col = SPDRATEEntry.SPDVVarcode
''                                    .SetFocus
''                                 Exit Sub
''                                End If
''                            End If
''                            If UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, .ActiveRow))) = UCase("Shift") Then
''                                Set rsalc = New Recordset
''                                rsalc.Open "select  Varcode from VW_DailyAlloccateDetails where alc='" & UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, .ActiveRow))) & "'  and docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and divcode='" & divcode & "'", DB, adOpenStatic
''                                If Not rsalc.EOF Then
''                                         MsgBox "Shift already assigned for this Employee .", vbInformation, head
''                                        .SetText SPDRATEEntry.SPDVVarcode, .ActiveRow, ""
''                                        .Col = SPDRATEEntry.SPDVVarcode
''                                         Exit Sub
''                                End If
''                            End If
'                     End If
''                     If .ActiveCol = SPDRATEEntry.SPDVPlant2ALLOC Then
''                        If UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlant2ALLOC, .ActiveRow))) = UCase("Shift") Then
''                            If UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, .ActiveRow))) = UCase("Shift") Or UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlant3ALLOC, .ActiveRow))) = UCase("Shift") Then
''                               MsgBox "Shift already assigned for this Employee .", vbInformation, head
''                               .SetText SPDRATEEntry.SPDVPlant2ALLOC, .ActiveRow, ""
''                               .Col = SPDRATEEntry.SPDVPlant2ALLOC
''                               .SetFocus
''                               Exit Sub
''                            End If
''                         End If
''                     End If
''
''                    If .ActiveCol = SPDRATEEntry.SPDVPlant3ALLOC Then
''                        If UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlant3ALLOC, .ActiveRow))) = UCase("Shift") Then
''                            If UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, .ActiveRow))) = UCase("Shift") Or UCase(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlant2ALLOC, .ActiveRow))) = UCase("Shift") Then
''                               MsgBox "Shift already assigned for this Employee .", vbInformation, head
''                               .SetText SPDRATEEntry.SPDVPlant3ALLOC, .ActiveRow, ""
''                               .Col = SPDRATEEntry.SPDVPlant3ALLOC
''                               .SetFocus
''                               Exit Sub
''                            End If
''                         End If
''                     End If
'
'
'                 End If
'             End If
'   End With
'End If
'End Sub

Private Sub SpdEmpAllocation_Change(ByVal Col As Long, ByVal Row As Long)
If Opt = "add" Or Opt = "mod" Then

     With SpdEmpAllocation
                If (.ActiveCol = SPDRATEEntry.SPDVPlantDesc) And Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlantDesc, .ActiveRow)) = "" Then
'
                    .Col = SPDRATEEntry.SPDVPlantDesc
                    .SetFocus
                    Cancel = True
                    Exit Sub

                End If

                If (.ActiveCol = SPDRATEEntry.SPDVRateCY) And val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, .ActiveRow)) = 0 Then
'
                    .Col = SPDRATEEntry.SPDVRateCY
                    .SetFocus
                    Cancel = True
                    Exit Sub

                End If
     End With


End If
End Sub

Private Sub SpdEmpAllocation_KeyDown(KeyCode As Integer, Shift As Integer)
Dim nRow As Integer
Dim deltype As Variant
SPDDiscTypeDet.Visible = True
'If Opt = "add" Or Opt = "mod" Then
'If KeyCode = 68 Then
Text2.Text = ""
    With SpdEmpAllocation
    
    
    
                    If .ActiveCol = SPDRATEEntry.SPDVRateCY And KeyCode = vbKeyF5 Then
                    
                      
    
                            If val(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, .ActiveRow))) > 0 And Trim(Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlant, .ActiveRow))) <> "" Then
                                FrameDiscType.Visible = True
                                FrameDiscType.ZOrder
                                Call SETDISCTYPEHead
                                Set Rs = New Recordset
                                
                                If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
                                    Rs.Open "SELECT * from RM_FibreRateDiscTXN  a left join RM_DiscountType b on a.dtype=b.code and  isnull(RPTFLG,'N')='N' where  vsno='" & val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVSNO, .ActiveRow)) & "' and docdate='" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND Varcode='" & Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, .ActiveRow)) & "' ", DB, adOpenStatic
                                Else
                                    Rs.Open "SELECT * from RM_FibreRateDisc  a left join RM_DiscountType b on a.dtype=b.code and  isnull(RPTFLG,'N')='N' where  vsno='" & val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVSNO, .ActiveRow)) & "' and docdate='" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND Varcode='" & Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, .ActiveRow)) & "' ", DB, adOpenStatic
                                End If
                                 r1 = 0
                                  With SPDDiscTypeDet
                                     If Not Rs.EOF Then
                                         For I = 0 To Rs.RecordCount
                                        
                                            If Not Rs.EOF Then
                                               r1 = r1 + 1
                                               .MaxRows = r1
                                                   .SetText SPDDTSNO, r1, Rs.Fields("docsno")
                                                   .SetText SPDDTVARSNO, r1, Rs.Fields("vsno")
                                                   .SetText SPDDTVarcode, r1, Rs.Fields("varcode")
                                                   .SetText SPDDTDISCCODE, r1, Rs.Fields("DType")
                                                   .SetText SPDDTDISCDESC, r1, Rs.Fields("Description")
                                                   .SetText SPDDTDRate, r1, Rs.Fields("DRate")
                                                   
                                              Rs.MoveNext
                                              End If
                                           
                                          Next
                                     SPDDiscTypeDet.SetFocus
                                    Else
                                    
                                        Set Rs = New Recordset
                                        Rs.Open "SELECT * from  RM_DiscountType where isnull(RPTFLG,'N')='N' ", DB, adOpenStatic
                                 
                                          For I = 0 To Rs.RecordCount
                                            If Not Rs.EOF Then
                                               r1 = r1 + 1
                                                   .MaxRows = r1
                                                   .SetText SPDDTSNO, r1, r1
                                                   .SetText SPDDTVARSNO, r1, val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVSNO, .ActiveRow))
                                                   .SetText SPDDTVarcode, r1, Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, .ActiveRow))
                                                   .SetText SPDDTDISCCODE, r1, Rs.Fields("code")
                                                   .SetText SPDDTDISCDESC, r1, Rs.Fields("Description")
                                                  ' .SetText SPDDTDRate, r1, ""
                                                   
                                              Rs.MoveNext
                                              End If
                                           
                                          Next
                                   End If
                                
                               ' SpdPrd.MaxRows = SpdPrd.MaxRows + 1
                              End With
                                SPDDiscTypeDet.SetFocus
                                Exit Sub
                                
                           End If
                                
                         
                    
                    End If
                    
                    
    
    
        
            If Opt = "add" Or Opt = "mod" Then
                If .MaxRows > 0 Then
                
                
                If (.ActiveCol = SPDRATEEntry.SPDVPlantDesc) And KeyCode = 9 Then

                Set Rs = New Recordset
                Rs.Open "select PLName 'Plant Name',PLCode 'Plant Code' from rm_plant a  where PLName='" & Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlantDesc, .ActiveRow)) & "' ", DB, adOpenStatic
                If Rs.EOF Then

                       LookUp.Clear = True
                       LookUp.query = "select PLName 'Plant Name',PLCode 'Plant Code' from rm_plant a  "
                       LookUp.Caption = "Plant Listing"
                       LookUp.DefCol = "Plant Name"
                       LookUp.ALIGN = "4500,2500"
                       LookUp.Show vbModal
                       If LookUp.Cancel = False Then
                        
                            .SetText SPDRATEEntry.SPDVPlant, .ActiveRow, LookUp.Fields(1)
                            .SetText SPDRATEEntry.SPDVPlantDesc, .ActiveRow, CStr(LookUp.Fields(0))
                 
                            .Col = SPDRATEEntry.SPDVRateUnit
                            .SetFocus
                            Exit Sub

                       Else
                            .Col = SPDRATEEntry.SPDVPlantDesc
                            .SetFocus
                            Cancel = True
                            Exit Sub
                       End If
                    Else
                    
                        .SetText SPDRATEEntry.SPDVPlant, .ActiveRow, Rs(1)
                        .SetText SPDRATEEntry.SPDVPlantDesc, .ActiveRow, CStr(Rs(0))
                 
                        .Col = SPDRATEEntry.SPDVRateUnit
                        .SetFocus
                    
                    End If
                       
                   End If
                
                
                If (.ActiveCol = SPDRATEEntry.SPDVRateUnit) And KeyCode = 9 Then

                Set Rs = New Recordset
                Rs.Open "select UNITCODE 'Unit Code',UNITNAME 'Unit Description',VALUE 'Unit Value' from rm_rateunit a where UNITNAME='" & Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateUnit, .ActiveRow)) & "' ", DB, adOpenStatic
                If Rs.EOF Then

                       LookUp.Clear = True
                       LookUp.query = "select UNITCODE 'Unit Code',UNITNAME 'Unit Description',VALUE 'Unit Value' from rm_rateunit a  "
                       LookUp.Caption = "Rate/Unit Listing"
                       LookUp.DefCol = "Unit Description"
                       LookUp.ALIGN = "2000,3500,2000"
                       LookUp.Show vbModal
                       If LookUp.Cancel = False Then
                        
                            .SetText SPDRATEEntry.SPDVRateUnit, .ActiveRow, LookUp.Fields(1)
                            .SetText SPDRATEEntry.SPDVRateUnitCD, .ActiveRow, CStr(LookUp.Fields(0))
                 
                            .Col = SPDRATEEntry.SPDVRateKG
                            .SetFocus
                            Exit Sub

                       Else
                            .Col = SPDRATEEntry.SPDVRateUnitCD
                            .SetFocus
                            Cancel = True
                            Exit Sub
                       End If
                    Else
                            .SetText SPDRATEEntry.SPDVRateUnit, .ActiveRow, Rs(1)
                            .SetText SPDRATEEntry.SPDVRateUnitCD, .ActiveRow, CStr(Rs(0))
                    End If
                       
                       
                   End If
                   
                   
                   
                   
                
                    
'                        If MsgBox("Do you want to add another Employee Details?", vbYesNo, head) = vbYes Then
'                         SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
'
'                        SpdEmpAllocation.Col = SPDRATEEntry.SPDVPlant
'                         SpdEmpAllocation.SetText SPDRATEEntry.SPDVSNO, SpdEmpAllocation.MaxRows, SpdEmpAllocation.MaxRows
'                         SpdEmpAllocation.SetFocus
'
'                         Else
'
'                         End If
'                    End If
                    
                    
            End If
        End If
    End With
'End If
End Sub

Private Sub SpdEmpAllocation_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)


If Opt = "add" Or Opt = "mod" Then

     With SpdEmpAllocation
                If (.ActiveCol = SPDRATEEntry.SPDVPlantDesc) And Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlantDesc, .ActiveRow)) = "" Then
'
                    Col = SPDRATEEntry.SPDVPlantDesc
                   ' SpdEmpAllocation.SetFocus
                   Cancel = True
                    Exit Sub

                End If
                
                    If (.ActiveCol = SPDRATEEntry.SPDVRateCY) And val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, .ActiveRow)) = 0 Then
'
                    Col = SPDRATEEntry.SPDVRateCY
                    .SetFocus
                   
                    Exit Sub

                End If
                
     End With


End If
'If Opt = "add" Or Opt = "mod" Then
''    Dim Shift1hr, Shift2hr, Shift3hr As Double
''    Shift1hr = 0: Shift2hr = 0: Shift3hr = 0
'     With SpdEmpAllocation
'          If .ActiveCol = SPDRATEEntry.SPDVVarName And Val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarName, .ActiveRow)) = 0 Then
'
'
'
'                       LookUp.clear = True
'
'                       LookUp.query = "select VARNAME 'Ticket No',Ename 'Employee Name',Varcode 'Employee No.',CATCD 'Desig. Code' ,CATNAME 'Designation',supcd 'Department Code',wcat 'Category Code' from Vw_EmployeeAllocate a wHERE a.Varcode not  in (" & EmployeeNo & ") and  A.DIVCODE='" & divcode & "' AND (A.wcat ='" & Trim(TXTFIELDS(8).Text) & "' or '" & Trim(TXTFIELDS(8).Text) & "'='A')  and (A.supcd ='" & Trim(TXTFIELDS(9).Text) & "' or '" & Trim(TXTFIELDS(9).Text) & "'='A') and doj<='" & Format(pdate, "yyyy-mm-dd") & "' and (dor is null or dor>='" & Format(pdate, "yyyy-mm-dd") & "') and Varcode not in (select Varcode from RM_FibreRate where docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and divcode='" & divcode & "')"
'
'
'                       LookUp.Caption = "Employee Listing"
'                       LookUp.DefCol = "Shift Description"
'
'                       LookUp.ALIGN = "1200,3500"
'
'                       LookUp.Show vbModal
'                       If LookUp.Cancel = False Then
'                            EmployeeNo = EmployeeNo & "," & LookUp.Fields(2) & ""
'                            .SetText SPDRATEEntry.SPDVPlant, .ActiveRow, LookUp.Fields(0)
'                            .SetText SPDRATEEntry.SPDVVarcode, .ActiveRow, LookUp.Fields(2)
'                            .SetText SPDRATEEntry.SPDVVarName, .ActiveRow, LookUp.Fields(1)
'
'                            .SetText SPDRATEEntry.SPDVPlantDesc, .ActiveRow, LookUp.Fields("Desig. Code")
'                            .SetText SPDRATEEntry.SPDVRateUnit, .ActiveRow, LookUp.Fields("Designation")
'
'                            .SetText SPDRATEEntry.SPDVVarName, .ActiveRow, LookUp.Fields("Employee Name")
'                            .SetText SPDRATEEntry.SPDD .ActiveRow, LookUp.Fields("Category Code")
'                            .SetText SPDRATEEntry.SPDVRateKG, .ActiveRow, LookUp.Fields("Department Code")
'
'                            Set rsexp = New Recordset
'                            rsexp.Open "select  isnull(EmpPaid,0) EmpPaid ,isnull(CompPaid,0) CompPaid  from PR_Messexp where divcode='" & divcode & "'  and ExpCode ='" & Trim(TXTFIELDS(5).Text) & "'", DB, adOpenStatic
'                            If Not rsexp.EOF Then
'
'                                SpdEmpAllocation.SetText SPDRATEEntry.SPDDDPaidComp, .ActiveRow, rsexp(0)
'                                SpdEmpAllocation.SetText SPDRATEEntry.SPDDDPaidEmp, .ActiveRow, rsexp(1)
'                            End If
'
'
'                            SpdEmpAllocation.Col = SPDRATEEntry.SPDDDQty
'                            SpdEmpAllocation.SetFocus
'                            Exit Sub
'
'                       Else
'                            .Col = SPDRATEEntry.SPDVVarName
'                            .SetFocus
'                            Exit Sub
'                       End If
'                   End If
'     End With

    


'End If
End Sub

'Private Sub SpdEmpAllocation_LostFocus()
'If Opt = "add" Or Opt = "mod" Then
'
'    With SpdEmpAllocation
'
'            If Opt = "add" Or Opt = "mod" Then
'                If .MaxRows > 0 Then
'
'
'                If (.ActiveCol = SPDRATEEntry.SPDDDQty Or .ActiveCol = SPDRATEEntry.SPDDDExQty) And Val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, .ActiveRow)) = 0 Then
'
'                    .Col = SPDRATEEntry.SPDVPlant
'                    .SetFocus
'                    cancl = True
'                    Exit Sub
'
'                End If
'                End If
'             End If
'    End With
'End If
'End Sub

Private Sub SpdEmpAllocation_Validate(Cancel As Boolean)

'If Opt = "add" Or Opt = "mod" Then
'
'     With SpdEmpAllocation
'                If (.ActiveCol = SPDRATEEntry.SPDVPlantDesc) And Trim(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVPlantDesc, .ActiveRow)) = "" Then
''
'                    .Col = SPDRATEEntry.SPDVPlantDesc
'                    .SetFocus
'                    Cancel = True
'                    Exit Sub
'
'                End If
'
'                If (.ActiveCol = SPDRATEEntry.SPDVRateCY) And val(GetText(SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, .ActiveRow)) = 0 Then
''
'                    .Col = SPDRATEEntry.SPDVRateCY
'                    .SetFocus
'                    Cancel = True
'                    Exit Sub
'
'                End If
'     End With
'
'
'End If

End Sub

Private Sub SpdSIZEORD_Click(ByVal Col As Long, ByVal Row As Long)
    SpdSIZEORD.OperationMode = OperationModeNormal
End Sub

Private Sub SpdSIZEORD_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
SpdSIZEORD.OperationMode = OperationModeRow
End Sub
Private Sub SETSIZEORDHead()
With SpdSIZEORD
    .ClearSelection
    .MaxRows = 0
    .ColHeadersAutoText = DispBlank
    .ClearSelection
    .MaxCols = E_VARLIST.SPDSBVARNAME
    .RowHeadersShow = False
    .Row = 1
    .FontBold = True
    .OperationMode = OperationModeRow
    .TypeCheckCenter = True
    .TypeCheckType = TypeCheckTypeThreeState
    SetSpreadCol1 SpdSIZEORD, E_VARLIST.SPDSCHECK1, " ", CellTypeCheckBox, 4, , False, False
    SetSpreadCol1 SpdSIZEORD, E_VARLIST.SPDSSNO, "S.No.", CellTypeStaticText, 4, , False, True
    SetSpreadCol1 SpdSIZEORD, E_VARLIST.SPDSSUPCD, "Supplier Code.", CellTypeStaticText, 15, 0, True, True
    SetSpreadCol1 SpdSIZEORD, E_VARLIST.SPDSCATCD, "Category Code.", CellTypeStaticText, 15, 0, True, True
    SetSpreadCol1 SpdSIZEORD, E_VARLIST.SPDSCATNAME, "Category", CellTypeStaticText, 20, 0, False, True
    .TypeHAlign = TypeHAlignLeft
    
    SetSpreadCol1 SpdSIZEORD, E_VARLIST.SPDSBVARCODE, "Variety Code.", CellTypeStaticText, 15, 0, True, True
    .Col = E_VARLIST.SPDSBVARCODE
'    .TypeHAlign = TypeHAlignRight
    SetSpreadCol1 SpdSIZEORD, E_VARLIST.SPDSBVARNAME, "Variety Name", CellTypeStaticText, 35, 0, False, True
    .Col = E_VARLIST.SPDSBVARNAME

    

End With
Check1.value = False
End Sub


Private Sub SETDISCTYPEHead()
With SPDDiscTypeDet
        .ClearSelection
        .MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDVPlant2DESC
        .MaxCols = SPDDTDRate
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTSNO, "S.No", CellTypeStaticText, 8, , False, True    'a
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVARSNO, "Variety Sno.", CellTypeStaticText, 10, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
'        .TypeHAlign = TypeHAlignLeft
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, "Varcode.", CellTypeStaticText, 8, , True, True  'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCCODE, "Discount Type Code", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCDESC, "Discount Type.", CellTypeStaticText, 40, , False, True 'i
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDRate, "Discount Rate/Kgs", CellTypeNumber, 18, 2, False, False  'i

    End With
End Sub

Private Sub SETDESPATCHHead()
With SpdEmpAllocation
        .ClearSelection
        .MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDVPlant2DESC
        .MaxCols = SPDVRateKG
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVSNO, "S.No", CellTypeStaticText, 4, , False, True    'a
        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVSUPCD, "Supplier Code.", CellTypeStaticText, 10, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
'
        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVCATCD, "CATCD.", CellTypeStaticText, 8, , True, True 'b
        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVCATNAME, "Category.", CellTypeStaticText, 15, , False, True 'b
        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, "Variety.", CellTypeStaticText, 8, , True, True 'i
        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVVarName, "Variety Name.", CellTypeStaticText, 20, , False, True 'i
       
        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVPlant, "Plant Code", CellTypeEdit, 0, , True, True 'd
        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVPlantDesc, "Plant", CellTypeEdit, 20, , False, False 'd
        
        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVRateUnitCD, "UOM ", CellTypeStaticText, 14, 0, True, True 'e
        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVRateUnit, " UOM ", CellTypeEdit, 15, 0, False, False 'e
        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, "Rate/KG", CellTypeNumber, 12, 4, False, False  'i
         SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVRateKG, "Rate/KG", CellTypeNumber, 12, 4, True, True 'i
         

        

    End With
End Sub

'
'Private Sub SETDESPATCHHead()
'With SpdEmpAllocation
'        .ClearSelection
'        .MaxRows = 0
'        '.ColHeadersAutoText = DispBlank
'        .ClearSelection
'        '.MaxCols = SPDVPlant2DESC
'        .MaxCols = SPDVRateKG
'        .Row = 1
'        .TypeTextWordWrap = True
'        .FontBold = True
'        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVSNO, "S.No", CellTypeStaticText, 4, , False, True    'a
'
'
'
'        SetSpreadCol SpdEmpAllocation, SPDRATEEntry.SPDVSUPCD, "Supplier Code.", CellTypeStaticText, 10, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
''        .TypeHAlign = TypeHAlignLeft
''
'       SetSpreadCol SpdEmpAllocation, SPDRATEEntry.SPDVCATCD, "CATCD.", CellTypeStaticText, 8, , True, True 'b
'        SetSpreadCol SpdEmpAllocation, SPDRATEEntry.SPDVCATCD, "Category.", CellTypeStaticText, 10, , False, True 'b
'        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVVarcode, "Variety.", CellTypeStaticText, 8, , True, True 'i
'       SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVVarName, "Variety Name.", CellTypeStaticText, 12, , False, True 'i
'
'        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVPlant, "Plant Code", CellTypeStaticText, 8, , True, True 'd
'        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVPlantDesc, "Plant", CellTypeEdit, 8, , False, False 'd
'
'        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVRateUnitCD, "Rate Unit ", CellTypeStaticText, 10, 0, True, True 'e
'        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVRateUnit, "Rate Unit ", CellTypeEdit, 10, 0, False, False 'e
''
'
'        SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVRateCY, "Candy Rate", CellTypeNumber, 8, 2, False, False  'i
'         SetSpreadCol1 SpdEmpAllocation, SPDRATEEntry.SPDVRateKG, "Rate/KG", CellTypeNumber, 8, 2, True, True  'i
'
'
'
'
'
'    End With
'End Sub
Public Sub qry1()
On Error GoTo qry1_Error

    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SHAPE {select distinct a.divcode,docno,docdate,supcd,Fromdate,Todate  from RM_FibreRate a where    " & _
    "   DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' " & _
    " Order by DocDate,DOCNO} AS ParentCMD APPEND ({select a.Divcode,Docno,a.docsno,Docdate,a.supcd,a.CATCD,bb.CATNAME,a.Varcode,c.VARNAME,a.Plant,d.PLName,a.RateUnit,a.CandyRate,a.RATEKG,r.unitname  from RM_FibreRate a inner join rm_cat bb on bb.catcd=a.catcd left join rm_var c on c.varcode=a.varcode left join rm_plant d on d.plcode=a.Plant left join RM_rateunit r on r.unitcode=a.RateUnit WHERE  DOCDATE  between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'  Order by a.DOCDATE ,a.DOCSNO } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDATE TO DOCDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic


Exit Sub
qry1_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qry1 of Form FrmFibre Rate"

End Sub
Private Sub Form_Resize()
    Buttonframe.Width = Me.Width
    intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Screen.MousePointer = vbDefault
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
        Me.SetFocus
        If MsgBox(Me.Caption & " Screen is in Addition/Modification/Deletion mode. Are you want to Exit?", vbQuestion + vbYesNo, head) = vbNo Then
            'Me.SetFocus
            Cancel = True
            Exit Sub
        End If
    End If

    On Error Resume Next
    Set adoPrimaryRS = Nothing
    Set adoSecondaryRS = Nothing
intervalMinutes = -1
End Sub

'Private Sub SpdLoad()
'
'    Call SETDESPATCHHead
'    With SpdEmpAllocation
'        .MaxRows = 0
'        .MaxCols = SPDRATEEntry.SPDVPlant2DESC
'        .CursorStyle = CursorStyleArrow
'
'        RW = 1
'        Do While Not adoSecondaryRS.EOF
'            .MaxRows = .MaxRows + 1
'            .SetText SPDRATEEntry.SPDVSNO, RW, adoSecondaryRS("DocSno")
'            .SetText SPDRATEEntry.SPDDVarcode, RW, adoSecondaryRS("Varcode")
'            .SetText SPDRATEEntry.SPDVPlant, RW, adoSecondaryRS("VARNAME")
'            .SetText SPDRATEEntry.SPDVVarcode, RW, adoSecondaryRS("ManPower")
'            adoSecondaryRS.MoveNext
'            RW = RW + 1
'        Loop
'
'End Sub
Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.TXTFIELDS
        oText.Locked = False
    Next
    'MaskEdBox2.Enabled = True
    If Opt = "add" Then
        DTPicker1.value = Format(pdate, "dd/mm/yyyy")
    End If
    'FraDespatch.Enabled = True
End Sub


Private Sub Text1_Change()
     Dim position As Integer


            If Trim(Text1.Text) = "" Then Exit Sub
    
            Dim I As Long, j As Long
            
            j = IIf(UCase(Trim(GetText(SpdSIZEORD, SPDSBVARNAME, SpdSIZEORD.Row))) = UCase(Trim(Text1)), SpdSIZEORD.Row + 1, 1)
            For I = j To SpdSIZEORD.MaxRows + 1
            position = InStr(1, UCase(GetText(SpdSIZEORD, SPDSBVARNAME, I)), UCase(Trim(Text1)))
            
              '  If GetText(SPDPIECE, G_PieceNo, i) = Trim(txtfields(29)) Then
              If position > 0 Then
                    SpdSIZEORD.Row = I
                    SpdSIZEORD.SetSelection 1, SpdSIZEORD.Row, SpdSIZEORD.MaxCols, SpdSIZEORD.Row
                   ' IGrid_Click SPDPIECE.Col, SPDPIECE.Row
                    SpdSIZEORD.SetFocus
                     Text1.SetFocus
                    Exit For
                End If
            Next I
             Text1.SetFocus
End Sub

Private Sub Text2_Change()
     Dim position As Integer


            If Trim(Text2.Text) = "" Then Exit Sub
    
            Dim I As Long, j As Long
            
            j = IIf(UCase(Trim(GetText(SPDDiscTypeDet, SPDDTDISCDESC, SPDDiscTypeDet.Row))) = UCase(Trim(Text2)), SPDDiscTypeDet.Row + 1, 1)
            For I = j To SPDDiscTypeDet.MaxRows + 1
            position = InStr(1, UCase(GetText(SPDDiscTypeDet, SPDDTDISCDESC, I)), UCase(Trim(Text2)))

              If position > 0 Then
                    SPDDiscTypeDet.Row = I
                    SPDDiscTypeDet.SetSelection 1, SPDDiscTypeDet.Row, SPDDiscTypeDet.MaxCols, SPDDiscTypeDet.Row
                   ' IGrid_Click SPDPIECE.Col, SPDPIECE.Row
                    SPDDiscTypeDet.SetFocus
                     Text2.SetFocus
                    Exit For
                End If
            Next I
             Text2.SetFocus
End Sub

Private Sub txtFields_Change(Index As Integer)
Select Case Index
    Case 3
    Set TmpRs = New Recordset

    TmpRs.Open "Select slname  From fa_slmas where slcode ='" & TXTFIELDS(3).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
 
    If Not TmpRs.EOF Then
        TXTFIELDS(2).Text = TmpRs("slname")
    Else
        TXTFIELDS(2).Text = ""
    End If
    


    
    
End Select
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
    Case 5
        'Call ToUpCase(TXTFIELDS(Index), KeyAscii, 15)
        Call ToAlphaNumber(TXTFIELDS(Index), 15, KeyAscii)
    Case 6
        If Len(TXTFIELDS(Index).Text) = 2 And KeyAscii <> 8 Then
            iKeyAscii = KeyAscii
            KeyAscii = 0
            KeyAscii = 58
            SendKeys Chr(iKeyAscii)
        ElseIf Len(TXTFIELDS(Index).Text) = 5 And KeyAscii <> 8 Then
            iKeyAscii = KeyAscii
            KeyAscii = 0
            KeyAscii = 32
            SendKeys Chr(iKeyAscii)
        ElseIf Len(TXTFIELDS(Index).Text) > 5 And KeyAscii <> 8 Then
          '  Call ToUpCase(TXTFIELDS(Index), KeyAscii, 8)
            If KeyAscii = 65 Then
                TXTFIELDS(Index).Text = Mid(TXTFIELDS(Index).Text, 1, 6) & "AM"
            ElseIf KeyAscii = 80 Then
                TXTFIELDS(Index).Text = Mid(TXTFIELDS(Index).Text, 1, 6) & "PM"
            ElseIf (Right(TXTFIELDS(Index).Text, 2) <> "AM" And Right(TXTFIELDS(Index).Text, 2) <> "PM") Then
                KeyAscii = 0
            End If
        ElseIf Len(TXTFIELDS(Index).Text) < 6 And KeyAscii <> 8 Then
           ' Call ToNumNew(TXTFIELDS(Index), 8, KeyAscii)
        End If
    
End Select
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
    Select Case Index
        Case 6
          '  BUTTON(9).SetFocus
    End Select

End If
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 8

If Opt <> "add" Then
Exit Sub
End If
    If TXTFIELDS(8).Text = "" Then
    
        LookUp.Clear = True
        LookUp.query = "Select distinct a.catcd 'Category Code',b.Catname 'Category Name' FROM RM_Suppliervariety a inner join vw_VarietyList b on a.varcode=b.varcode and a.catcd=b.catcd  where  A.supcd ='" & Trim(TXTFIELDS(3).Text) & "' union all   select Top 1 'A', ' ALL' "
        
        LookUp.Caption = "Category Listing"
        LookUp.DefCol = "Category Name"

        LookUp.ALIGN = "1200,3500"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            TXTFIELDS(8).Text = LookUp.Fields(0)
            TXTFIELDS(7).Text = LookUp.Fields(1)
             FraOrd.ZOrder
            FraOrd.Visible = True
            Buttonframe.Enabled = False
            stbar.Panels(2).Text = "Select an Categoty from the list"
            Call SETSIZEORDHead
            SpdSIZEORD.CursorStyle = CursorStyleArrow
           ' Dim ItmRs As Recordset
            Set ItmRs = New Recordset

            ItmRs.Open " select * from RM_Suppliervariety a inner join vw_VarietyList b on a.catcd=b.catcd and a.varcode=b.varcode  wHERE a.varcode not in (select varcode from RM_FibreRate aa where  aa.supcd=a.supcd and  docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and a.varcode=aa.varcode ) and (b.catcd='" & Trim(TXTFIELDS(8).Text) & "' or '" & TXTFIELDS(8).Text & "'='A') and A.supcd ='" & Trim(TXTFIELDS(3).Text) & "'  ", DB, adOpenStatic, adLockBatchOptimistic
            RW = 1
            Do While Not ItmRs.EOF
                SpdSIZEORD.MaxRows = SpdSIZEORD.MaxRows + 1
                SpdSIZEORD.SetText E_VARLIST.SPDSBVARCODE, RW, ItmRs("Varcode")
                SpdSIZEORD.SetText E_VARLIST.SPDSBVARNAME, RW, ItmRs("VARNAME")
                SpdSIZEORD.SetText E_VARLIST.SPDSCATCD, RW, ItmRs("catcd")
                SpdSIZEORD.SetText E_VARLIST.SPDSCATNAME, RW, ItmRs("catname")
                SpdSIZEORD.SetText E_VARLIST.SPDSSUPCD, RW, Trim(TXTFIELDS(3).Text)
                SpdSIZEORD.SetText E_VARLIST.SPDSSNO, RW, SpdSIZEORD.MaxRows
     

     
                RW = RW + 1
                ItmRs.MoveNext
            Loop
            SpdSIZEORD.SetFocus
            LookUp.Clear = True
            
            Buttonframe.Enabled = True
            

 Exit Sub

  
        End If
        
    End If
SpdEmpAllocation.Col = SPDRATEEntry.SPDVPlantDesc
 SpdEmpAllocation.SetFocus
Case 3
    If TXTFIELDS(3).Text = "" And SupSEL = False Then
        LookUp.Clear = True
        LookUp.query = "Select distinct a.supcd 'Supplier Code',b.slname 'Supplier Name' FROM RM_Suppliervariety a inner join fa_slmas b on a.supcd=b.slcode where  supcd not in (select supcd from RM_FibreRate aa where docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and a.varcode=aa.varcode ) and   country='INDIA' " '' union select Top 1 'A', ' ALL'
        
        LookUp.Caption = "Supplier Listing"
        LookUp.DefCol = "Supplier Name"
        LookUp.ALIGN = "1200,3500"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            TXTFIELDS(3).Text = LookUp.Fields(0)
            TXTFIELDS(2).Text = LookUp.Fields(1)
            SupSEL = True
            LookUp.Clear = True
            Buttonframe.Enabled = True
            Exit Sub
        Else
            LookUp.Clear = True
            Cancel = True
            TXTFIELDS(3).SetFocus
        End If
    End If
End Select
End If
End Sub




