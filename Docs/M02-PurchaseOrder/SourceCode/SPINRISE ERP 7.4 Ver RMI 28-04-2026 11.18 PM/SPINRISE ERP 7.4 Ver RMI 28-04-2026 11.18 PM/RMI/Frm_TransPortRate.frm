VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_TransPortRate 
   Caption         =   "Transport Rate Entry"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.PictureBox FrameDiscType 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      DrawMode        =   1  'Blackness
      DrawWidth       =   2
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      ForeColor       =   &H80000008&
      Height          =   6555
      Left            =   11520
      ScaleHeight     =   6525
      ScaleWidth      =   8610
      TabIndex        =   47
      ToolTipText     =   "Select an item from list"
      Top             =   2160
      Visible         =   0   'False
      Width           =   8640
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1920
         TabIndex        =   53
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
         TabIndex        =   50
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
         TabIndex        =   49
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
         TabIndex        =   48
         Top             =   6000
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin FPSpreadADO.fpSpread SPDDiscTypeDet 
         Height          =   5445
         Left            =   0
         TabIndex        =   52
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
         SpreadDesigner  =   "Frm_TransPortRate.frx":0000
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
         TabIndex        =   54
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
         TabIndex        =   51
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
      Left            =   11400
      ScaleHeight     =   6765
      ScaleWidth      =   8610
      TabIndex        =   30
      ToolTipText     =   "Select an item from list"
      Top             =   2400
      Visible         =   0   'False
      Width           =   8640
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   6960
         TabIndex        =   42
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
         TabIndex        =   33
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
         TabIndex        =   32
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
         TabIndex        =   31
         Top             =   600
         Width           =   525
      End
      Begin FPSpreadADO.fpSpread SpdSIZEORD 
         Height          =   5430
         Left            =   60
         TabIndex        =   34
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
         SpreadDesigner  =   "Frm_TransPortRate.frx":045B
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
         TabIndex        =   43
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
         TabIndex        =   35
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
   Begin VB.CommandButton CmdCrystal 
      Height          =   510
      Index           =   0
      Left            =   6600
      Picture         =   "Frm_TransPortRate.frx":0885
      Style           =   1  'Graphical
      TabIndex        =   28
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   120
      Visible         =   0   'False
      Width           =   520
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   11
      Top             =   0
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_TransPortRate.frx":0CC7
         Height          =   510
         Index           =   8
         Left            =   3675
         Picture         =   "Frm_TransPortRate.frx":1111
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "Frm_TransPortRate.frx":1473
         Height          =   510
         Index           =   10
         Left            =   4725
         Picture         =   "Frm_TransPortRate.frx":177D
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_TransPortRate.frx":1AF9
         Height          =   510
         Index           =   9
         Left            =   4200
         Picture         =   "Frm_TransPortRate.frx":1E03
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_TransPortRate.frx":21A5
         Height          =   510
         Index           =   11
         Left            =   5280
         Picture         =   "Frm_TransPortRate.frx":25EF
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_TransPortRate.frx":2984
         Height          =   510
         Index           =   7
         Left            =   3150
         Picture         =   "Frm_TransPortRate.frx":2DCE
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   7140
         Picture         =   "Frm_TransPortRate.frx":311E
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_TransPortRate.frx":34B5
         Height          =   510
         Index           =   1
         Left            =   555
         Picture         =   "Frm_TransPortRate.frx":37BF
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_TransPortRate.frx":3B39
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
         Picture         =   "Frm_TransPortRate.frx":3E43
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_TransPortRate.frx":41DF
         Height          =   510
         Index           =   5
         Left            =   2115
         Picture         =   "Frm_TransPortRate.frx":4629
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_TransPortRate.frx":498E
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Frm_TransPortRate.frx":4C98
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   135
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_TransPortRate.frx":502B
         Height          =   510
         Index           =   6
         Left            =   2640
         Picture         =   "Frm_TransPortRate.frx":5475
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton CmdCrystal 
         Height          =   510
         Index           =   1
         Left            =   6360
         Picture         =   "Frm_TransPortRate.frx":57C2
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Delivery Note"
         Top             =   150
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton CmdCrystalGP 
         Height          =   510
         Left            =   11040
         Picture         =   "Frm_TransPortRate.frx":5C04
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Gate Pass"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   1590
         Picture         =   "Frm_TransPortRate.frx":6046
         Style           =   1  'Graphical
         TabIndex        =   12
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
         TabIndex        =   27
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
         TabIndex        =   26
         Top             =   255
         Width           =   630
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3525
      Left            =   240
      TabIndex        =   0
      Top             =   1200
      Width           =   11205
      _ExtentX        =   19764
      _ExtentY        =   6218
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "."
      TabPicture(0)   =   "Frm_TransPortRate.frx":6478
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "FraDespatch"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame1 
         Caption         =   "Transport Details"
         Height          =   735
         Left            =   120
         TabIndex        =   46
         Top             =   4920
         Visible         =   0   'False
         Width           =   10935
         Begin FPSpreadADO.fpSpread SpdTransportRate 
            Height          =   1365
            Left            =   120
            TabIndex        =   10
            Top             =   240
            Width           =   10710
            _Version        =   524288
            _ExtentX        =   18891
            _ExtentY        =   2408
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
            SpreadDesigner  =   "Frm_TransPortRate.frx":6494
            Appearance      =   2
         End
      End
      Begin VB.PictureBox FraDespatch 
         Appearance      =   0  'Flat
         ForeColor       =   &H80000008&
         Height          =   3240
         Left            =   75
         ScaleHeight     =   3210
         ScaleWidth      =   10950
         TabIndex        =   37
         Top             =   90
         Width           =   10980
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            DataField       =   "AppFileName"
            Enabled         =   0   'False
            ForeColor       =   &H80000012&
            Height          =   315
            Index           =   68
            Left            =   7440
            Locked          =   -1  'True
            TabIndex        =   66
            Top             =   2685
            Width           =   3405
         End
         Begin VB.CommandButton btnBrowse 
            BackColor       =   &H80000003&
            Caption         =   "&Browse..."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   5400
            Style           =   1  'Graphical
            TabIndex        =   9
            Top             =   2640
            Visible         =   0   'False
            Width           =   975
         End
         Begin VB.TextBox txt_filename 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   360
            Left            =   1950
            Locked          =   -1  'True
            TabIndex        =   65
            Top             =   2670
            Visible         =   0   'False
            Width           =   3375
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "Freight_Amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   9
            Left            =   1950
            Locked          =   -1  'True
            MultiLine       =   -1  'True
            TabIndex        =   8
            Top             =   2280
            Width           =   1440
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "Bales"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   8
            Left            =   9400
            Locked          =   -1  'True
            MultiLine       =   -1  'True
            TabIndex        =   7
            Top             =   1920
            Width           =   1440
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "MinQty"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   7
            Left            =   5640
            Locked          =   -1  'True
            MultiLine       =   -1  'True
            TabIndex        =   6
            Top             =   1920
            Width           =   1440
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   6
            Left            =   3420
            TabIndex        =   60
            Top             =   840
            Width           =   7455
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "plant"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   5
            Left            =   1950
            TabIndex        =   2
            Top             =   840
            Width           =   1440
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "VslCapacity"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   15
            Left            =   1950
            Locked          =   -1  'True
            MultiLine       =   -1  'True
            TabIndex        =   5
            Top             =   1920
            Width           =   1440
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   4
            Left            =   3420
            TabIndex        =   57
            Top             =   1560
            Width           =   7455
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "Transporter"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   1
            Left            =   1950
            TabIndex        =   4
            Top             =   1560
            Width           =   1440
         End
         Begin VB.ComboBox Combo3 
            BackColor       =   &H00FFFFFF&
            DataField       =   "carcode"
            ForeColor       =   &H00000000&
            Height          =   315
            ItemData        =   "Frm_TransPortRate.frx":68EF
            Left            =   1950
            List            =   "Frm_TransPortRate.frx":68FF
            Style           =   2  'Dropdown List
            TabIndex        =   3
            Top             =   1215
            Width           =   1440
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "supcd"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   3
            Left            =   1950
            TabIndex        =   1
            Top             =   480
            Width           =   1440
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   2
            Left            =   3420
            TabIndex        =   44
            Top             =   480
            Width           =   7455
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFC0&
            DataField       =   "DocNo"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   0
            Left            =   1950
            TabIndex        =   38
            Top             =   120
            Width           =   1440
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "DocDate"
            Height          =   315
            Left            =   9600
            TabIndex        =   39
            Top             =   120
            Width           =   1290
            _ExtentX        =   2275
            _ExtentY        =   556
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   168689665
            CurrentDate     =   41403
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Freight Approved Copy"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   120
            TabIndex        =   68
            Top             =   2650
            Visible         =   0   'False
            Width           =   2010
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label59 
            Caption         =   "File Name"
            Height          =   255
            Left            =   6480
            TabIndex        =   67
            Top             =   2760
            Width           =   975
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Agreed Rate"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   64
            Top             =   2325
            Width           =   1200
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "No. Of Bales"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   7560
            TabIndex        =   63
            Top             =   1965
            Width           =   1170
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Minimum Level"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3840
            TabIndex        =   62
            Top             =   1965
            Width           =   1455
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Plant/Station"
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
            Left            =   120
            TabIndex        =   61
            Top             =   885
            Width           =   1140
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Carrying Capacity"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   59
            Top             =   1965
            Width           =   1740
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Transporter"
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
            Left            =   120
            TabIndex        =   58
            Top             =   1605
            Width           =   1020
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Mode of Transport"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   1
            Left            =   120
            TabIndex        =   56
            Top             =   1275
            Width           =   1740
            WordWrap        =   -1  'True
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
            Left            =   120
            TabIndex        =   45
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
            Left            =   120
            TabIndex        =   41
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
            Index           =   0
            Left            =   7920
            TabIndex        =   40
            Top             =   180
            Width           =   1320
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
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            AutoSize        =   1
            Object.Width           =   14729
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
            TextSave        =   "04:04 PM"
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
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4800
      Top             =   720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label7 
      Caption         =   "Press F5 on Candy Rate Column to View the Discount Details"
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
      Left            =   12000
      TabIndex        =   55
      Top             =   120
      Visible         =   0   'False
      Width           =   6135
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Transport Rate Entry"
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
      TabIndex        =   36
      Top             =   750
      Width           =   6870
   End
End
Attribute VB_Name = "Frm_TransPortRate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
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
    SPDVPlantDesc
    SPDVPlant
    SPDVTruckName
    SPDVTruckCD
    SPDVCAPKGS
    SPDVMIMKGS
    SPDVNOOFBALE
    SPDVFRGWOGST
    SPDVTRANSITDAYS
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
            Combo3.Text = adoPrimaryRS("carcode")
                    
'            Call SETDESPATCHHead
'            Set adoSecondaryRS = New Recordset
'            adoSecondaryRS.Open "SELECT a.Divcode,a.Docno,a.Docdate,a.DocSno,a.SUPCD,a.plant,a.Vslcode,a.VslCapacity,a.MinQty,a.Bales,a.Freight_Amt,a.TransitDays ,b.DESCRIPTION vessel,d.PLName FROM RM_TransportRate a left join IM_Vessel b on a.vslcode=b.CODE  left join rm_plant d on d.plcode=a.Plant   where a.DocDate= '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'  and DocNo='" & adoPrimaryRS("DocNo") & "' Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
'            Call SpdLoad

        End If
    End If

End Sub
Private Sub SpdLoad()
Exit Sub
        Call SETDESPATCHHead
        With SpdTransportRate
            .MaxRows = 0
            .MaxCols = SPDRATEEntry.SPDVTRANSITDAYS
            .CursorStyle = CursorStyleArrow
            RW = 1
        Do While Not adoSecondaryRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText SPDRATEEntry.SPDVSNO, RW, adoSecondaryRS("DOCSNO")
            .SetText SPDRATEEntry.SPDVPlantDesc, RW, adoSecondaryRS("PLName")

            .SetText SPDRATEEntry.SPDVNOOFBALE, RW, adoSecondaryRS("Bales")
            
            .SetText SPDRATEEntry.SPDVCAPKGS, RW, adoSecondaryRS("VslCapacity")
            .SetText SPDRATEEntry.SPDVMIMKGS, RW, adoSecondaryRS("MinQty")
            .SetText SPDRATEEntry.SPDVPlant, RW, adoSecondaryRS("plant")
            .SetText SPDRATEEntry.SPDVTRANSITDAYS, RW, adoSecondaryRS("TransitDays")
            
            .SetText SPDRATEEntry.SPDVTruckCD, RW, adoSecondaryRS("Vslcode")
            .SetText SPDRATEEntry.SPDVTruckName, RW, adoSecondaryRS("vessel")
            
            .SetText SPDRATEEntry.SPDVSUPCD, RW, adoSecondaryRS("supcd")
            .SetText SPDRATEEntry.SPDVFRGWOGST, RW, adoSecondaryRS("Freight_Amt")
            

            RW = RW + 1
            adoSecondaryRS.MoveNext
        Loop
        End With
End Sub




Private Sub btnBrowse_Click()
On Error GoTo openconnection_Error
If Opt = "add" Or Opt = "mod" Then
Dim strNewFile As String
'If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
'    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
'    End
'End If

    strNewFile = ""
    Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMI")) Then
        fso.CreateFolder (App.Path & "\RMI")
    End If
    
    If Not (fso.FolderExists(App.Path & "\RMI\RMFREIGHTAPPROVED" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMI\RMFREIGHTAPPROVED" & CustID)
    End If
    
    ' display Common Dialog and choose a file
    CommonDialog1.ShowOpen
    strNewFile = CommonDialog1.FileTitle
    txtfields(68).Text = strNewFile
    If Len(Trim(txtfields(68).Text)) > 40 Then
        MsgBox "File Name should be 40 character", vbInformation, head
        Exit Sub
    End If
    FileEXT = Trim(Mid(CommonDialog1.FileName, InStr(3, CommonDialog1.FileName, "."), Len(CommonDialog1.FileName)))
                
    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & cust_id & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMI\RMFREIGHTAPPROVED" & CustID & "\" & Divcode & "-" & Trim(txtfields(0).Text) + "-" + Trim(Format(DTPicker1.value, "dd-mm-yy")) + "-" + Left(Trim(txtfields(2).Text), 10) + "-" + Left(Trim(txtfields(6).Text), 10) + "--" & strNewFile
     
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
        If MsgBox("Freight Approved Scan Copy Already Exists!!! Do you want to override in Server?", vbYesNo, head) = vbNo Then Exit Sub
 
    End If
    
  If strNewFile <> "" Then

    Dim myPath As String
    myPath = strNewFile
    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
    FileCopy strNewFile, sFilePath 'App.Path & "\IMPORT\RMFREIGHTAPPROVED" & CustID & "\" & Divcode & "-" & Trim(txtfields(0).Text) + "-" + Trim(Format(MaskEdBox3.Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 10) + "--" & strNewFile
   End If
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload PO of Form Purchase PO"
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
            txtfields(3).SetFocus
            desc.Caption = "Addition"
            stbar.Panels(2).Text = "Addition"
            Screen.MousePointer = 11
            stbar.Panels(2).Text = "                "
            DTPicker1.value = pdate
            EmployeeNo = "0"
           ' MaskEdBox2.Text = "__/__/____"
            FraOrd.Visible = False
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "SELECT Divcode,Docno,Docdate,SUPCD,plant,Vslcode,VslCapacity,MinQty,Bales,Freight_Amt,TransitDays,Transporter,carcode,AppFileName  FROM RM_TransportRate a where    1= 2", DB, adOpenStatic, adLockBatchOptimistic
           ' Set adoSecondaryRS = New Recordset
           ' adoSecondaryRS.Open "SELECT a.Divcode,a.Docno,a.Docdate,a.DocSno,a.SUPCD,a.plant,a.Vslcode,a.VslCapacity,a.MinQty,a.Bales,a.Freight_Amt,a.TransitDays ,b.DESCRIPTION vessel,d.PLName FROM RM_TransportRate a left join IM_Vessel b on a.vslcode=b.CODE  left join rm_plant d on d.plcode=a.Plant where  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
            Opt = "add"
            adoPrimaryRS.AddNew
            Call bindcontls
            tottot = 0
'            TXTFIELDS(7).Text = ""
'            TXTFIELDS(8).Text = ""
            txtfields(2).Text = ""
            Combo3.Text = "By Road"
             SupSEL = False
            If DB.State = 0 Then DB.BeginTrans
            Call ENABLCONTLS
            Call adddelmod(BUTTON)
            
            Screen.MousePointer = 0
            txtfields(3).SetFocus
           ' Label12.Visible = True

            
            Set Rstdocno = New Recordset
            Rstdocno.Open "Select right(isnull(max(convert(numeric,docno)),0),4) as docno from RM_TransportRate where DocDate between '" & Format(yfdate, "dd-MMM-yyyy") & "' and '" & Format(yldate, "dd-MMM-yyyy") & "'", DB
    
            If IsNull(Rstdocno("docno")) Then
              
                txtfields(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
              
            Else
                txtfields(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
            End If
           btnBrowse.Visible = True
           txt_filename.Visible = True
           Label15.Visible = True
        
            
                 
'            Call SETDESPATCHHead
'            SpdTransportRate.MaxRows = SpdTransportRate.MaxRows + 1
'            SpdTransportRate.SetText SPDRATEEntry.SPDVSNO, 1, SpdTransportRate.MaxRows
            

            
    Case 1
        If Record_Exists("RM_TransportRate where  DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'") = False Then Exit Sub
        Opt = "mod"
        Set rsk = New Recordset
        FraDespatch.Enabled = True
        rsk.Open "select TOP 1 A.DocNo,DocDate,Convert(numeric(18,0),a.Docno) as DocNo from RM_TransportRate A where  DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "' Order By a.DocNo Desc", DB, adOpenStatic, adLockReadOnly
        If rsk.RecordCount > 0 Then
            desc.Caption = "Modify"
            LookUp.Clear = True

            LookUp.query = "select distinct a.DocNo 'Doc. No.',a.DocDate 'Date',s.slname 'Supplier' from RM_TransportRate A inner join fa_slmas  s on s.slcode=a.supcd WHERE    a.DocDate = '" & Format(rsk("DocDate"), "dd-mmm-yyyy") & "'  "
        
            LookUp.Caption = "Transport Listing"
            LookUp.DefCol = "Doc. No."
            LookUp.ALIGN = "1500,2000"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                DTPicker1.value = LookUp.Fields(1)
                Call adddelmod(BUTTON)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "SELECT Divcode,Docno,Docdate,SUPCD,plant,Vslcode,VslCapacity,MinQty,Bales,Freight_Amt,TransitDays,Transporter,carcode,AppFileName  FROM RM_TransportRate where   Docno = " & LookUp.Fields(0) & " And DocDate = '" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' And DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
'                    Set adoSecondaryRS = New Recordset
'                    adoSecondaryRS.Open "SELECT a.Divcode,a.Docno,a.Docdate,a.DocSno,a.SUPCD,a.plant,a.Vslcode,a.VslCapacity,a.MinQty,a.Bales,a.Freight_Amt,a.TransitDays ,b.DESCRIPTION vessel,d.PLName FROM RM_TransportRate a left join IM_Vessel b on a.vslcode=b.CODE  left join rm_plant d on d.plcode=a.Plant where DocNo =" & adoPrimaryRS("Docno") & " And DocDate='" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                    Call SpdLoad
                    Combo3.Text = adoPrimaryRS("carcode")
                Else
                    MsgBox "Select a valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                
                SupSEL = True
            btnBrowse.Visible = True
           txt_filename.Visible = True
           Label15.Visible = True
                
                LookUp.Clear = True
                Call bindcontls
                Call ENABLCONTLS
                txtfields(3).Locked = True
                FraDespatch.Enabled = True
                Screen.MousePointer = 0
             Else
                Opt = " "
             End If
             '19/02/14
            Buttonframe.Enabled = True
        End If
            
    
    
    
                
    Case 2
        If Record_Exists("RM_TransportRate where  DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'") = False Then Exit Sub
        Opt = "del"
        Set rsk = New Recordset
        rsk.Open "select TOP 1 convert(numeric(18,0),A.DocNo)as DocNo ,DocDate from RM_TransportRate A where  DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "' Order By DocDate Desc", DB, adOpenStatic, adLockReadOnly
        If rsk.RecordCount > 0 Then
            desc.Caption = "Deletion"
            LookUp.Clear = True

            LookUp.query = "select distinct a.DocNo 'Doc. No.',a.DocDate 'Date',s.slname 'Supplier' from RM_TransportRate A inner join fa_slmas  s on s.slcode=a.supcd WHERE   a.DocDate = '" & Format(rsk("DocDate"), "dd-mmm-yyyy") & "'  "
      
            LookUp.Caption = "Transport Listing"
            LookUp.DefCol = "Doc. No."
            LookUp.ALIGN = "1500,1500"
         '   LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Call adddelmod(BUTTON)
                DTPicker1.value = LookUp.Fields(1)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "SELECT Divcode,Docno,Docdate,SUPCD,plant,Vslcode,VslCapacity,MinQty,Bales,Freight_Amt,TransitDays,Transporter,carcode,AppFileName  FROM RM_TransportRate where  Docno = " & LookUp.Fields(0) & " And DocDate = '" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' And DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
'                    Set adoSecondaryRS = New Recordset
'                    adoSecondaryRS.Open "SELECT a.Divcode,a.Docno,a.Docdate,a.DocSno,a.SUPCD,a.plant,a.Vslcode,a.VslCapacity,a.MinQty,a.Bales,a.Freight_Amt,a.TransitDays ,b.DESCRIPTION vessel,d.PLName FROM RM_TransportRate a left join IM_Vessel b on a.vslcode=b.CODE  left join rm_plant d on d.plcode=a.Plant  where  DocNo =" & adoPrimaryRS("Docno") & " And DocDate='" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                    Call SpdLoad
'                    SpdTransportRate.Enabled = True
'                    SpdTransportRate.Lock = False
                    Combo3.Text = adoPrimaryRS("carcode")
                Else
                    MsgBox "Select a valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                LookUp.Clear = True
                Call bindcontls
                Call disablcontls
                txtfields(3).Locked = True
       
                Screen.MousePointer = 0
             Else
                Opt = " "
             End If
            Buttonframe.Enabled = True
        End If
        
    Case 4
        Opt = "fnd"
            LookUp.Clear = True
      
            LookUp.query = "select distinct a.DocNo 'Doc. No.',a.DocDate 'Date',s.slname 'Supplier' from RM_TransportRate A inner join fa_slmas  s on s.slcode=a.supcd WHERE    a.DocDate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'"
         
            LookUp.Caption = "Transport Listing"
            LookUp.DefCol = "Doc. No."
            LookUp.ALIGN = "1500,1500"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Call adddelmod(BUTTON)
                DTPicker1.value = LookUp.Fields(1)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "SELECT Divcode,Docno,Docdate,SUPCD,plant,Vslcode,VslCapacity,MinQty,Bales,Freight_Amt,TransitDays,Transporter,carcode,AppFileName  FROM RM_TransportRate where   Docno = " & LookUp.Fields(0) & " And DocDate = '" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' And DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
'                    Set adoSecondaryRS = New Recordset
'                    adoSecondaryRS.Open "SELECT a.Divcode,a.Docno,a.Docdate,a.DocSno,a.SUPCD,a.plant,a.Vslcode,a.VslCapacity,a.MinQty,a.Bales,a.Freight_Amt,a.TransitDays ,b.DESCRIPTION vessel,d.PLName FROM RM_TransportRate a left join IM_Vessel b on a.vslcode=b.CODE  left join rm_plant d on d.plcode=a.Plant   where DocNo =" & adoPrimaryRS("Docno") & " And DocDate='" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                    Call SpdLoad
                Combo3.Text = adoPrimaryRS("carcode")
                Else
                    MsgBox "Select a valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                LookUp.Clear = True
                Call bindcontls
                Call ENABLCONTLS
                  
                txtfields(3).Locked = True
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
            
                If Trim(Combo3.Text) = "" Then
                    MsgBox "Transport Mode Cannot be empty", vbInformation, head
                    Combo3.SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                
                If Trim(txtfields(3).Text) = "" Then
                    MsgBox "Supplier Code Cannot be empty", vbInformation, head
                    txtfields(3).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                
                If Trim(txtfields(5).Text) = "" Then
                    MsgBox "Plant Code Cannot be empty", vbInformation, head
                    txtfields(5).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                If Trim(txtfields(1).Text) = "" Then
                    MsgBox "Transporter Code Cannot be empty", vbInformation, head
                    txtfields(1).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                
                 If val(txtfields(15).Text) = 0 Then
                    MsgBox "Carrying Capacity Cannot be empty", vbInformation, head
                    txtfields(15).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                
                If val(txtfields(7).Text) = 0 Then
                    MsgBox "Minimum Level Quantity  Cannot be empty", vbInformation, head
                    txtfields(7).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                If val(txtfields(8).Text) = 0 Then
                    MsgBox "Bales Cannot be empty", vbInformation, head
                    txtfields(8).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
              If val(txtfields(9).Text) = 0 Then
                    MsgBox "Rate Cannot be empty", vbInformation, head
                    txtfields(9).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                
                

'                With SpdTransportRate
'                    If .MaxRows = 0 Then
'                        MsgBox "No Transport Details,Transaction Aborted", vbInformation, head
'                        DB.RollbackTrans
'                        Call QUERY_MODE(0)
'                        Screen.MousePointer = 0
'                        Exit Sub
'                    End If
'                End With
                
                
'                With SpdTransportRate
'                    For RW = 1 To .MaxRows
'                        .Row = RW
''
'                        If val(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, RW)) = 0 Then
'                           MsgBox "Please Enter Truck Capacity ", vbInformation, head
'                           Exit Sub
'                        End If
'
'                        If Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlant, RW)) = "" Then
'                           MsgBox "Please Enter Truck Capacity ", vbInformation, head
'                           Exit Sub
'                        End If
'
'
'
'                        If val(GetText(SpdTransportRate, SPDRATEEntry.SPDVFRGWOGST, RW)) = 0 Then
'                           MsgBox "Please Enter Freight Details", vbInformation, head
'                           Exit Sub
'                        End If
'
'                        If val(GetText(SpdTransportRate, SPDRATEEntry.SPDVMIMKGS, RW)) = 0 Then
'                           MsgBox "Please Enter Minimum Kgs", vbInformation, head
'                           Exit Sub
'                        End If
'                        If val(GetText(SpdTransportRate, SPDRATEEntry.SPDVTRANSITDAYS, RW)) = 0 Then
'                           MsgBox "Please Enter Transit Days", vbInformation, head
'                           Exit Sub
'                        End If
'
'
'                    Next
'                End With
                
                YearNo = Format(yfdate, "YY")


            Set Rstdocno = New Recordset
            Rstdocno.Open "Select right(isnull(max(convert(numeric,docno)),0),4) as docno from RM_TransportRate where DocDate between '" & Format(yfdate, "dd-MMM-yyyy") & "' and '" & Format(yldate, "dd-MMM-yyyy") & "'", DB
    
            If IsNull(Rstdocno("docno")) Then
                Set Rs = New Recordset
                Rs.Open "select sszgno from yn_param where sszgno is not null", DB, adOpenStatic
                If Not Rs.EOF Then
                    txtfields(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
                Else
                    txtfields(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
                End If
            Else
                txtfields(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
            End If
                docNo = val(txtfields(0).Text)
             If docNo = "" Then Exit Sub
              Screen.MousePointer = vbHourglass
              adoPrimaryRS("DIVCODE") = Divcode
              adoPrimaryRS("DocNo") = docNo
              adoPrimaryRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
              adoPrimaryRS("supcd") = Trim(txtfields(3).Text)
              adoPrimaryRS("plant") = Trim(txtfields(5).Text)
              adoPrimaryRS("carcode") = Trim(Combo3.Text)
              adoPrimaryRS("Transporter") = Trim(txtfields(1).Text)
              adoPrimaryRS("VslCapacity") = val(txtfields(15).Text)
              adoPrimaryRS("MinQty") = val(txtfields(7).Text)
              adoPrimaryRS("Bales") = val(txtfields(8).Text)
              adoPrimaryRS("Freight_Amt") = val(txtfields(9).Text)
              adoPrimaryRS("AppFileName") = Trim(txtfields(68).Text)
              adoPrimaryRS("Vslcode") = Trim(txtfields(1).Text)
              adoPrimaryRS.UpdateBatch adAffectAllChapters
                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Freight Bill(Master)"
                            TrnLog("Trans_Mod") = "Add"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("slcode") = Trim(txtfields(3).Text)
                            TrnLog("Agent_code") = Trim(txtfields(1).Text)
                            TrnLog("Plcode") = Trim(txtfields(5).Text)
                            TrnLog("grosswt") = val(txtfields(15).Text)
                            TrnLog("NETWT") = val(txtfields(7).Text)
                            TrnLog("pnetwt") = val(txtfields(8).Text)
                            TrnLog("Frg_Amt") = val(txtfields(9).Text)
                            
                            TrnLog("docno") = val(docNo)
                            TrnLog("docdt") = Format(DTPicker1.value, "yyyy-MM-dd")
                      
                            TrnLog.UpdateBatch adAffectAllChapters
            
            
'                Dim UPDRS As Recordset
'                Set UPDRS = New Recordset
'                UPDRS.Open "SELECT a.Divcode,a.Docno,a.Docdate,a.DocSno,a.SUPCD,a.plant,a.Vslcode,a.VslCapacity,a.MinQty,a.Bales,a.Freight_Amt,a.TransitDays  FROM RM_TransportRate a where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
'                With SpdTransportRate
'                    For RW = 1 To .MaxRows
'                        .Row = RW
'                        If val(GetText(SpdTransportRate, SPDRATEEntry.SPDVNOOFBALE, RW)) <> 0 And val(GetText(SpdTransportRate, SPDRATEEntry.SPDVFRGWOGST, RW)) <> 0 Then
'                            UPDRS.AddNew
'                            UPDRS("divcode") = Divcode
'                            UPDRS("DocNo") = docNo
'                            UPDRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
'                            UPDRS("DocSno") = RW
'                            UPDRS("Vslcode") = Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVTruckCD, RW))
'                            UPDRS("VslCapacity") = val(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, RW))
'                            UPDRS("MinQty") = val(GetText(SpdTransportRate, SPDRATEEntry.SPDVMIMKGS, RW))
'
'                            UPDRS("supcd") = Trim(txtfields(3).Text)
'                            UPDRS("Plant") = Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlant, RW))
'                            UPDRS("Freight_Amt") = Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVFRGWOGST, RW))
'                            UPDRS("Bales") = Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVNOOFBALE, RW))
'                            UPDRS("TransitDays") = Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVTRANSITDAYS, RW))
'
'                        End If
'                    Next
'                End With
                
'                UPDRS.UpdateBatch adAffectAllChapters
                
      
                
                
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

              
                If Trim(txtfields(3).Text) = "" Then
                    MsgBox "Supplier Code Cannot be empty", vbInformation, head
                    txtfields(3).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                  If Trim(Combo3.Text) = "" Then
                    MsgBox "Transport Mode Cannot be empty", vbInformation, head
                    Combo3.SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                If Trim(txtfields(5).Text) = "" Then
                    MsgBox "Plant Code Cannot be empty", vbInformation, head
                    txtfields(5).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                If Trim(txtfields(1).Text) = "" Then
                    MsgBox "Transporter Code Cannot be empty", vbInformation, head
                    txtfields(1).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                
                 If val(txtfields(15).Text) = 0 Then
                    MsgBox "Carrying Capacity Cannot be empty", vbInformation, head
                    txtfields(15).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                
                If val(txtfields(7).Text) = 0 Then
                    MsgBox "Minimum Level Quantity  Cannot be empty", vbInformation, head
                    txtfields(7).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                If val(txtfields(8).Text) = 0 Then
                    MsgBox "Bales Cannot be empty", vbInformation, head
                    txtfields(8).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
              If val(txtfields(9).Text) = 0 Then
                    MsgBox "Rate Cannot be empty", vbInformation, head
                    txtfields(9).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
            ' DB.Execute ("Delete From RM_TransportRate  WHERE  DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' "), xx

            bolSave = True
            bolSave = False
            adoPrimaryRS("supcd") = Trim(txtfields(3).Text)
              adoPrimaryRS("plant") = Trim(txtfields(5).Text)
              adoPrimaryRS("carcode") = Trim(Combo3.Text)
              adoPrimaryRS("Transporter") = Trim(txtfields(1).Text)
              adoPrimaryRS("VslCapacity") = val(txtfields(15).Text)
              adoPrimaryRS("MinQty") = val(txtfields(7).Text)
              adoPrimaryRS("Bales") = val(txtfields(8).Text)
              adoPrimaryRS("Freight_Amt") = val(txtfields(9).Text)
              adoPrimaryRS("AppFileName") = Trim(txtfields(68).Text)
             adoPrimaryRS("Vslcode") = Trim(txtfields(1).Text)
               
                

            adoPrimaryRS.UpdateBatch adAffectAllChapters
            
            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Freight Bill(Master)"
                            TrnLog("Trans_Mod") = "Mod"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("slcode") = Trim(txtfields(3).Text)
                            TrnLog("Agent_code") = Trim(txtfields(1).Text)
                            TrnLog("Plcode") = Trim(txtfields(5).Text)
                            TrnLog("grosswt") = val(txtfields(15).Text)
                            TrnLog("NETWT") = val(txtfields(7).Text)
                            TrnLog("pnetwt") = val(txtfields(8).Text)
                            TrnLog("Frg_Amt") = val(txtfields(9).Text)
                            TrnLog("docno") = val(adoPrimaryRS("DocNo"))
                            TrnLog("docdt") = Format(DTPicker1.value, "yyyy-MM-dd")
                            TrnLog.UpdateBatch adAffectAllChapters
            
            'If Opt = "add" Then

'                With SpdTransportRate
'                    If .MaxRows = 0 Then
'                        MsgBox "No Item Details,Transaction Aborted", vbInformation, head
'                        DB.RollbackTrans
'                        Call QUERY_MODE(0)
'                        Screen.MousePointer = 0
'                        Exit Sub
'                    End If
'                End With
'                YearNo = Format(yfdate, "YY")
'
'              With SpdTransportRate
'                    For RW = 1 To .MaxRows
'                        .Row = RW
''
'                        If val(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, RW)) = 0 Then
'                           MsgBox "Please Enter Truck Capacity ", vbInformation, head
'                           Exit Sub
'                        End If
'
'                        If Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlant, RW)) = "" Then
'                           MsgBox "Please Enter Truck Capacity ", vbInformation, head
'                           Exit Sub
'                        End If
'
'
'
'                        If val(GetText(SpdTransportRate, SPDRATEEntry.SPDVFRGWOGST, RW)) = 0 Then
'                           MsgBox "Please Enter Freight Details", vbInformation, head
'                           Exit Sub
'                        End If
'
'                        If val(GetText(SpdTransportRate, SPDRATEEntry.SPDVMIMKGS, RW)) = 0 Then
'                           MsgBox "Please Enter Minimum Kgs", vbInformation, head
'                           Exit Sub
'                        End If
'                        If val(GetText(SpdTransportRate, SPDRATEEntry.SPDVTRANSITDAYS, RW)) = 0 Then
'                           MsgBox "Please Enter Transit Kgs", vbInformation, head
'                           Exit Sub
'                        End If
'
'                    Next
'                End With

                'Set tmprs = New Recordset
                'tmprs.Open "Select isnull(max(isnull(DocNo,0)),0)+1 AS Last_docno From RM_TransportRate where Divcode ='" & divcode & "' And DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

                'If Not tmprs.EOF Then
                 '   Last_docno = Right(tmprs("Last_docno"), 6)
                'End If
                'DocNo = YearNo & Padl(CStr(Last_docno), 6, "0")

'            Set adoPrimaryRS = New Recordset
''            adoPrimaryRS.Open "select Divcode,DocNo,DocDate,SLCODE,JONo,JODate,DespatchTo,VechicleNo,RemTime,EntryDate,Description from  RM_TransportRate where  1= 2", DB, adOpenStatic, adLockBatchOptimistic
''
''            adoPrimaryRS.ADDNEW
'
'
'              docNo = Trim(TXTFIELDS(0).Text)
'
'              If docNo = "" Then Exit Sub
'                Screen.MousePointer = vbHourglass
'
'                 Set UPDRS = New Recordset
'                UPDRS.Open "SELECT a.Divcode,a.Docno,a.Docdate,a.DocSno,a.SUPCD,a.plant,a.Vslcode,a.VslCapacity,a.MinQty,a.Bales,a.Freight_Amt,a.TransitDays  FROM RM_TransportRate a where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
'                With SpdTransportRate
'                    For RW = 1 To .MaxRows
'                        .Row = RW
'                        If val(GetText(SpdTransportRate, SPDRATEEntry.SPDVNOOFBALE, RW)) <> 0 And val(GetText(SpdTransportRate, SPDRATEEntry.SPDVFRGWOGST, RW)) <> 0 Then
'                            UPDRS.AddNew
'                            UPDRS("divcode") = Divcode
'                            UPDRS("DocNo") = docNo
'                            UPDRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
'                            UPDRS("DocSno") = RW
'                            UPDRS("Vslcode") = GetText(SpdTransportRate, SPDRATEEntry.SPDVTruckCD, RW)
'                            UPDRS("VslCapacity") = val(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, RW))
'                            UPDRS("MinQty") = val(GetText(SpdTransportRate, SPDRATEEntry.SPDVMIMKGS, RW))
'
'                            UPDRS("supcd") = Trim(TXTFIELDS(3).Text)
'                            UPDRS("Plant") = Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlant, RW))
'                            UPDRS("Freight_Amt") = val(GetText(SpdTransportRate, SPDRATEEntry.SPDVFRGWOGST, RW))
'                            UPDRS("Bales") = val(GetText(SpdTransportRate, SPDRATEEntry.SPDVNOOFBALE, RW))
'                            UPDRS("TransitDays") = Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVTRANSITDAYS, RW))
'
'                        End If
'                    Next
'                End With
'                UPDRS.UpdateBatch adAffectAllChapters
                
                MsgBox "Record(s) Saved Successfully", vbOKOnly, head
        End If
        
        DB.BeginTrans
        If Opt = "del" Then

            
            DB.Execute ("Delete From RM_TransportRate  WHERE   DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' "), xx
            
            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Freight Bill(Master)"
                            TrnLog("Trans_Mod") = "Del"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("slcode") = Trim(txtfields(3).Text)
                            TrnLog("Agent_code") = Trim(txtfields(1).Text)
                            TrnLog("Plcode") = Trim(txtfields(5).Text)
                            TrnLog("grosswt") = val(txtfields(15).Text)
                            TrnLog("NETWT") = val(txtfields(7).Text)
                            TrnLog("pnetwt") = val(txtfields(8).Text)
                            TrnLog("Frg_Amt") = val(txtfields(9).Text)
                            
                            TrnLog("docno") = val(adoPrimaryRS("DocNo"))
                            TrnLog("docdt") = Format(DTPicker1.value, "yyyy-MM-dd")
                      
                            TrnLog.UpdateBatch adAffectAllChapters
            
            MsgBox "Record deleted Successfully", vbOKOnly, head
        End If
        DB.CommitTrans
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
  For Each oText In Me.txtfields
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
    docNo = val(txtfields(0).Text)
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
    docNo = val(txtfields(0).Text)
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
                SpdTransportRate.MaxRows = SpdTransportRate.MaxRows + 1
                SpdTransportRate.SetText SPDRATEEntry.SPDVSNO, RW, SpdTransportRate.MaxRows
                SpdTransportRate.SetText SPDRATEEntry.SPDVCAPKGS, RW, Trim(GetText(SpdSIZEORD, E_VARLIST.SPDSBVARCODE, RW))
                SpdTransportRate.SetText SPDRATEEntry.SPDVMIMKGS, RW, Trim(GetText(SpdSIZEORD, E_VARLIST.SPDSBVARNAME, RW))
                SpdTransportRate.SetText SPDRATEEntry.SPDVTruckCD, RW, Trim(GetText(SpdSIZEORD, E_VARLIST.SPDSCATCD, RW))
                SpdTransportRate.SetText SPDRATEEntry.SPDVTruckName, RW, Trim(GetText(SpdSIZEORD, E_VARLIST.SPDSCATNAME, RW))
                SpdTransportRate.SetText SPDRATEEntry.SPDVSUPCD, RW, Trim(GetText(SpdSIZEORD, E_VARLIST.SPDSSUPCD, RW))

            End If
        Next
    End With
     FraOrd.Visible = False
     SpdTransportRate.Col = SPDRATEEntry.SPDVMIMKGS
     SpdTransportRate.SetFocus
   
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
If Opt = "add" Or Opt = "mod" Then
FrameDiscType.Visible = False

Dim inc As Integer
inc = 0
 With SPDDiscTypeDet
 
        For RW = 1 To .MaxRows
            .Row = RW
        If val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDRate, RW)) > 0 Then
            inc = 1
         End If
        Next RW
End With
If inc = 0 Then
    MsgBox "Please Enter Discount Rate", vbInformation, head
      FrameDiscType.Visible = True
    Exit Sub
End If

Dim docDate As Date

docDate = Format(DTPicker1.value, "yyyy-mm-dd")


DB.Execute "delete from RM_TransportRateDiscTXN where IPAdd='" & LocalIPAdd & "' and docdate='" & Format(docDate, "yyyy-mm-dd") & "' and varcode='" & Trim(Trim(GetText(SpdTransportRate, SPDVCAPKGS, SpdTransportRate.ActiveRow))) & "' AND VSno='" & val(GetText(SpdTransportRate, SPDVSNO, SpdTransportRate.ActiveRow)) & "' and divcode='" & Divcode & "' "

 With SPDDiscTypeDet
        For RW = 1 To .MaxRows
            .Row = RW
            'If Trim(GetText(SpdPrd, SPDDTDRate, RW)) <> 0 Then
                DB.Execute "insert into RM_TransportRateDiscTXN (Divcode,docno,Docdate,VSno,Varcode,DType,DRate,IPAdd,supcd)values('" & Divcode & "','" & val(txtfields(0).Text) & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & val(GetText(SpdTransportRate, SPDVSNO, SpdTransportRate.ActiveRow)) & "','" & val(RW) & "','" & Trim(Trim(GetText(SpdTransportRate, SPDVCAPKGS, SpdTransportRate.ActiveRow))) & "','" & Trim(GetText(SPDDiscTypeDet, SPDDTDISCCODE, RW)) & "','" & val(GetText(SPDDiscTypeDet, SPDDTDRate, RW)) & "','" & LocalIPAdd & "','" & Trim(txtfields(3).Text) & "')"
           ' End If
        Next RW
End With



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
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.txtfields
        oText.Locked = True
    Next
    'FraDespatch.Enabled = False
    'MaskEdBox2.Enabled = False
    DTPicker1.Enabled = False
End Sub

Public Sub query_mode(MDOC As Long)
On Error GoTo query_mode_Error
       btnBrowse.Visible = False
           txt_filename.Visible = False
           Label15.Visible = False
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
            For Each oText In Me.txtfields
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
    adoPrimaryRS.Open "SELECT Divcode,Docno,Docdate,SUPCD,plant,Vslcode,VslCapacity,MinQty,Bales,Freight_Amt,TransitDays,Transporter,carcode,AppFileName  FROM RM_TransportRate th  where  DOCDT between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' " & _
    " and th.DocNo >= " & MDOC & " Order by DOCDT,DOCNO", DB, adOpenStatic, adLockBatchOptimistic

Exit Sub
fnd1_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure fnd1 of Form FrmTransport"

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
'Private Sub SpdTransportRate_ComboCloseUp(ByVal Col As Long, ByVal Row As Long, ByVal SelChange As Integer)
'
'If Opt = "add" Or Opt = "mod" Then
'
''If KeyCode = 68 Then
'    With SpdTransportRate
'
'            If Opt = "add" Or Opt = "mod" Then
'                If .MaxRows > 0 Then
'                    If .ActiveCol = SPDRATEEntry.SPDVCAPKGS Then
''                            If UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, .ActiveRow))) = UCase("Shift") Then
''                                 If UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlant2ALLOC, .ActiveRow))) = UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, .ActiveRow))) Or UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlant3ALLOC, .ActiveRow))) = UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, .ActiveRow))) Then
''                                    MsgBox "Shift already assigned for this Employee .", vbInformation, head
''                                    .SetText SPDRATEEntry.SPDVCAPKGS, .ActiveRow, ""
''                                    .Col = SPDRATEEntry.SPDVCAPKGS
''                                    .SetFocus
''                                 Exit Sub
''                                End If
''                            End If
''                            If UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, .ActiveRow))) = UCase("Shift") Then
''                                Set rsalc = New Recordset
''                                rsalc.Open "select  Varcode from VW_DailyAlloccateDetails where alc='" & UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, .ActiveRow))) & "'  and docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and divcode='" & divcode & "'", DB, adOpenStatic
''                                If Not rsalc.EOF Then
''                                         MsgBox "Shift already assigned for this Employee .", vbInformation, head
''                                        .SetText SPDRATEEntry.SPDVCAPKGS, .ActiveRow, ""
''                                        .Col = SPDRATEEntry.SPDVCAPKGS
''                                         Exit Sub
''                                End If
''                            End If
'                     End If
''                     If .ActiveCol = SPDRATEEntry.SPDVPlant2ALLOC Then
''                        If UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlant2ALLOC, .ActiveRow))) = UCase("Shift") Then
''                            If UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, .ActiveRow))) = UCase("Shift") Or UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlant3ALLOC, .ActiveRow))) = UCase("Shift") Then
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
''                        If UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlant3ALLOC, .ActiveRow))) = UCase("Shift") Then
''                            If UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, .ActiveRow))) = UCase("Shift") Or UCase(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlant2ALLOC, .ActiveRow))) = UCase("Shift") Then
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

Private Sub SpdTransportRate_KeyDown(KeyCode As Integer, Shift As Integer)
Dim nRow As Integer
Dim deltype As Variant
'If Opt = "add" Or Opt = "mod" Then
'If KeyCode = 68 Then
    With SpdTransportRate
    
    
    
'                    If .ActiveCol = SPDRATEEntry.SPDVFRGWOGST And KeyCode = vbKeyF5 Then
'
'                            If val(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVFRGWOGST, .ActiveRow))) > 0 And Trim(Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlant, .ActiveRow))) <> "" Then
'                                FrameDiscType.Visible = True
'                                FrameDiscType.ZOrder
'                                Call SETDISCTYPEHead
'                                Set Rs = New Recordset
'                                Rs.Open "SELECT * from RM_TransportRateDiscTXN  a inner join RM_DiscountType b on a.dtype=b.code where  vsno='" & val(GetText(SpdTransportRate, SPDRATEEntry.SPDVSNO, .ActiveRow)) & "' and docdate='" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND Varcode='" & Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, .ActiveRow)) & "' and divcode='" & Divcode & "' ", DB, adOpenStatic
'                                 r1 = 0
'                                  With SPDDiscTypeDet
'                                     If Not Rs.EOF Then
'                                         For i = 0 To Rs.RecordCount
'
'                                            If Not Rs.EOF Then
'                                               r1 = r1 + 1
'                                               .MaxRows = r1
'                                                   .SetText SPDDTSNO, r1, Rs.Fields("docsno")
'                                                   .SetText SPDDTVARSNO, r1, Rs.Fields("vsno")
'                                                   .SetText SPDDTVarcode, r1, Rs.Fields("varcode")
'                                                   .SetText SPDDTDISCCODE, r1, Rs.Fields("DType")
'                                                   .SetText SPDDTDISCDESC, r1, Rs.Fields("Description")
'                                                   .SetText SPDDTDRate, r1, Rs.Fields("DRate")
'
'                                              Rs.MoveNext
'                                              End If
'
'                                          Next
'
'                                    Else
'
'                                        Set Rs = New Recordset
'                                        Rs.Open "SELECT * from  RM_DiscountType  where  isnull(RPTFLG,'N')='N' ", DB, adOpenStatic
'
'                                          For i = 0 To Rs.RecordCount
'                                            If Not Rs.EOF Then
'                                               r1 = r1 + 1
'                                                   .MaxRows = r1
'                                                   .SetText SPDDTSNO, r1, r1
'                                                   .SetText SPDDTVARSNO, r1, val(GetText(SpdTransportRate, SPDRATEEntry.SPDVSNO, .ActiveRow))
'                                                   .SetText SPDDTVarcode, r1, Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, .ActiveRow))
'                                                   .SetText SPDDTDISCCODE, r1, Rs.Fields("code")
'                                                   .SetText SPDDTDISCDESC, r1, Rs.Fields("Description")
'                                                  ' .SetText SPDDTDRate, r1, ""
'
'                                              Rs.MoveNext
'                                              End If
'
'                                          Next
'                                   End If
'
'                               ' SpdPrd.MaxRows = SpdPrd.MaxRows + 1
'                              End With
'                                'SpdPrd.SetFocus
'                                Exit Sub
'
'                           End If
'
'
'
'                    End If
'
                    
    
    
        
            If Opt = "add" Or Opt = "mod" Then
                If .MaxRows > 0 Then
                
                
                If (.ActiveCol = SPDRATEEntry.SPDVPlantDesc) And KeyCode = 9 Then

                

                       LookUp.Clear = True
                       LookUp.query = "select PLName 'Plant Name',PLCode 'Plant Code' from rm_plant a inner join RM_fibrerate b on a.PLCode=b.plant and b.supcd='" & Trim(txtfields(3).Text) & "' and isnull(b.Appflg,'N')='Y'   and docdate=(select max(docdate) from RM_fibrerate bb where bb.supcd=b.supcd and bb.plant=b.plant and docdate<='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and bb.supcd='" & Trim(txtfields(3).Text) & "' and isnull(bb.Appflg,'N')='Y' ) "
                       
                       LookUp.Caption = "Plant Listing"
                       LookUp.DefCol = "Plant Name"
                       LookUp.ALIGN = "4500,2500"
                       LookUp.Show vbModal
                       If LookUp.Cancel = False Then
                        
                            .SetText SPDRATEEntry.SPDVPlant, .ActiveRow, LookUp.Fields(1)
                            .SetText SPDRATEEntry.SPDVPlantDesc, .ActiveRow, CStr(LookUp.Fields(0))
                 
                            .Col = SPDRATEEntry.SPDVTruckCD
                            .SetFocus
                            Exit Sub

                       Else
                            .Col = SPDRATEEntry.SPDVPlant
                            .SetFocus
                            Exit Sub
                       End If
                   End If
                
                
                    If (.ActiveCol = SPDRATEEntry.SPDVTruckName) And KeyCode = 9 Then

                

                       LookUp.Clear = True
                       LookUp.query = "select CODE 'Vessel Code',DESCRIPTION 'Vessel Name' from IM_Vessel a  "
                       LookUp.Caption = "Rate/Unit Listing"
                       LookUp.DefCol = "Unit Description"
                       LookUp.ALIGN = "2000,3500"
                       LookUp.Show vbModal
                       If LookUp.Cancel = False Then
                        
                            .SetText SPDRATEEntry.SPDVTruckCD, .ActiveRow, LookUp.Fields(0)
                            .SetText SPDRATEEntry.SPDVTruckName, .ActiveRow, CStr(LookUp.Fields(1))
                 
                            .Col = SPDRATEEntry.SPDVCAPKGS
                            .SetFocus
                            Exit Sub

                       Else
                            .Col = SPDRATEEntry.SPDVPlant
                            .SetFocus
                            Exit Sub
                       End If
                   End If
                   
 
                
                    If (.ActiveCol = SPDRATEEntry.SPDVTRANSITDAYS) And KeyCode = 9 Then
                        If MsgBox("Do you want to add another Plant Details?", vbYesNo, head) = vbYes Then
                         SpdTransportRate.MaxRows = SpdTransportRate.MaxRows + 1

                         SpdTransportRate.Col = SPDRATEEntry.SPDVPlantDesc
                         SpdTransportRate.SetText SPDRATEEntry.SPDVSNO, SpdTransportRate.MaxRows, SpdTransportRate.MaxRows
                         SpdTransportRate.SetFocus

                         Else

                         End If
                    End If
                    
                    
            End If
        End If
    End With
'End If
End Sub

Private Sub SpdTransportRate_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NEWROW As Long, Cancel As Boolean)


If Opt = "add" Or Opt = "mod" Then

     With SpdTransportRate
                If (.ActiveCol = SPDRATEEntry.SPDVPlantDesc) And Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlantDesc, .ActiveRow)) = "" Then
'
                    Col = SPDRATEEntry.SPDVPlantDesc
                    '.SetFocus
                   
                    Exit Sub

                End If
     End With


End If
'If Opt = "add" Or Opt = "mod" Then
''    Dim Shift1hr, Shift2hr, Shift3hr As Double
''    Shift1hr = 0: Shift2hr = 0: Shift3hr = 0
'     With SpdTransportRate
'          If .ActiveCol = SPDRATEEntry.SPDVMIMKGS And Val(GetText(SpdTransportRate, SPDRATEEntry.SPDVMIMKGS, .ActiveRow)) = 0 Then
'
'
'
'                       LookUp.clear = True
'
'                       LookUp.query = "select VARNAME 'Ticket No',Ename 'Employee Name',Varcode 'Employee No.',CATCD 'Desig. Code' ,CATNAME 'Designation',supcd 'Department Code',wcat 'Category Code' from Vw_EmployeeAllocate a wHERE a.Varcode not  in (" & EmployeeNo & ") and  A.DIVCODE='" & divcode & "' AND (A.wcat ='" & Trim(TXTFIELDS(8).Text) & "' or '" & Trim(TXTFIELDS(8).Text) & "'='A')  and (A.supcd ='" & Trim(TXTFIELDS(9).Text) & "' or '" & Trim(TXTFIELDS(9).Text) & "'='A') and doj<='" & Format(pdate, "yyyy-mm-dd") & "' and (dor is null or dor>='" & Format(pdate, "yyyy-mm-dd") & "') and Varcode not in (select Varcode from RM_TransportRate where docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and divcode='" & divcode & "')"
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
'                            .SetText SPDRATEEntry.SPDVCAPKGS, .ActiveRow, LookUp.Fields(2)
'                            .SetText SPDRATEEntry.SPDVMIMKGS, .ActiveRow, LookUp.Fields(1)
'
'                            .SetText SPDRATEEntry.SPDVPlantDesc, .ActiveRow, LookUp.Fields("Desig. Code")
'                            .SetText SPDRATEEntry.SPDVRateUnit, .ActiveRow, LookUp.Fields("Designation")
'
'                            .SetText SPDRATEEntry.SPDVMIMKGS, .ActiveRow, LookUp.Fields("Employee Name")
'                            .SetText SPDRATEEntry.SPDD .ActiveRow, LookUp.Fields("Category Code")
'                            .SetText SPDRATEEntry.SPDVTRANSITDAYS, .ActiveRow, LookUp.Fields("Department Code")
'
'                            Set rsexp = New Recordset
'                            rsexp.Open "select  isnull(EmpPaid,0) EmpPaid ,isnull(CompPaid,0) CompPaid  from PR_Messexp where divcode='" & divcode & "'  and ExpCode ='" & Trim(TXTFIELDS(5).Text) & "'", DB, adOpenStatic
'                            If Not rsexp.EOF Then
'
'                                SpdTransportRate.SetText SPDRATEEntry.SPDDDPaidComp, .ActiveRow, rsexp(0)
'                                SpdTransportRate.SetText SPDRATEEntry.SPDDDPaidEmp, .ActiveRow, rsexp(1)
'                            End If
'
'
'                            SpdTransportRate.Col = SPDRATEEntry.SPDDDQty
'                            SpdTransportRate.SetFocus
'                            Exit Sub
'
'                       Else
'                            .Col = SPDRATEEntry.SPDVMIMKGS
'                            .SetFocus
'                            Exit Sub
'                       End If
'                   End If
'     End With

    


'End If
End Sub

'Private Sub SpdTransportRate_LostFocus()
'If Opt = "add" Or Opt = "mod" Then
'
'    With SpdTransportRate
'
'            If Opt = "add" Or Opt = "mod" Then
'                If .MaxRows > 0 Then
'
'
'                If (.ActiveCol = SPDRATEEntry.SPDDDQty Or .ActiveCol = SPDRATEEntry.SPDDDExQty) And Val(GetText(SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, .ActiveRow)) = 0 Then
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

Private Sub SpdTransportRate_Validate(Cancel As Boolean)

If Opt = "add" Or Opt = "mod" Then

     With SpdTransportRate
                If (.ActiveCol = SPDRATEEntry.SPDVPlantDesc) And Trim(GetText(SpdTransportRate, SPDRATEEntry.SPDVPlantDesc, .ActiveRow)) = "" Then
'
                    .Col = SPDRATEEntry.SPDVPlant
                    .SetFocus
                    Cancel = True
                    Exit Sub

                End If
     End With


End If

End Sub

Private Sub SpdSIZEORD_Click(ByVal Col As Long, ByVal Row As Long)
    SpdSIZEORD.OperationMode = OperationModeNormal
End Sub

Private Sub SpdSIZEORD_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NEWROW As Long, Cancel As Boolean)
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
    .TypeHAlign = TypeHAlignRight
    
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
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTSNO, "S.No", CellTypeStaticText, 4, , False, True    'a
        

        
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVARSNO, "Variety Sno.", CellTypeStaticText, 10, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
'        .TypeHAlign = TypeHAlignLeft
'
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, "Varcode.", CellTypeStaticText, 8, , True, True  'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCCODE, "Discount Type Code", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCDESC, "Discount Type.", CellTypeStaticText, 30, , False, True 'i
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDRate, "Discount Rate.", CellTypeNumber, 15, 2, False, False  'i

'


    End With
End Sub

Private Sub SETDESPATCHHead()
With SpdTransportRate
        .ClearSelection
        .MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDVPlant2DESC
        .MaxCols = SPDVTRANSITDAYS
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVSNO, "S.No", CellTypeStaticText, 4, , False, True    'a
        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVSUPCD, "Supplier Code.", CellTypeStaticText, 10, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVPlantDesc, "Plant", CellTypeEdit, 14, , False, False 'b
        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVPlant, "Plant Code", CellTypeStaticText, 10, , True, True 'b
        
        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVTruckName, "Vessel Name.", CellTypeEdit, 16, , False, False 'b
        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVTruckCD, "Vessel", CellTypeStaticText, 8, , True, True 'b
        
        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, "Capacity in KGs.", CellTypeNumber, 10, 3, False, False 'i
        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVMIMKGS, "Minimum Agreed KGs.", CellTypeNumber, 12, 3, False, False 'i
        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVNOOFBALE, "No. of Bale ", CellTypeEdit, 10, 0, False, False 'e
'        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVRateUnit, "Rate Unit ", CellTypeEdit, 15, 0, False, False 'e
        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVFRGWOGST, "Freight Without GST", CellTypeNumber, 12, 2, False, False  'i
        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVTRANSITDAYS, "Transit Days", CellTypeNumber, 10, , False, False 'i
         
          

    End With
End Sub

'
'Private Sub SETDESPATCHHead()
'With SpdTransportRate
'        .ClearSelection
'        .MaxRows = 0
'        '.ColHeadersAutoText = DispBlank
'        .ClearSelection
'        '.MaxCols = SPDVPlant2DESC
'        .MaxCols = SPDVTRANSITDAYS
'        .Row = 1
'        .TypeTextWordWrap = True
'        .FontBold = True
'        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVSNO, "S.No", CellTypeStaticText, 4, , False, True    'a
'
'
'
'        SetSpreadCol SpdTransportRate, SPDRATEEntry.SPDVSUPCD, "Supplier Code.", CellTypeStaticText, 10, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
''        .TypeHAlign = TypeHAlignLeft
''
'       SetSpreadCol SpdTransportRate, SPDRATEEntry.SPDVTruckCD, "CATCD.", CellTypeStaticText, 8, , True, True 'b
'        SetSpreadCol SpdTransportRate, SPDRATEEntry.SPDVTruckCD, "Category.", CellTypeStaticText, 10, , False, True 'b
'        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVCAPKGS, "Variety.", CellTypeStaticText, 8, , True, True 'i
'       SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVMIMKGS, "Variety Name.", CellTypeStaticText, 12, , False, True 'i
'
'        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVPlant, "Plant Code", CellTypeStaticText, 8, , True, True 'd
'        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVPlantDesc, "Plant", CellTypeEdit, 8, , False, False 'd
'
'        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVNOOFBALE, "Rate Unit ", CellTypeStaticText, 10, 0, True, True 'e
'        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVRateUnit, "Rate Unit ", CellTypeEdit, 10, 0, False, False 'e
''
'
'        SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVFRGWOGST, "Candy Rate", CellTypeNumber, 8, 2, False, False  'i
'         SetSpreadCol1 SpdTransportRate, SPDRATEEntry.SPDVTRANSITDAYS, "Rate/KG", CellTypeNumber, 8, 2, True, True  'i
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
    adoPrimaryRS.Open "SELECT Divcode,Docno,Docdate,SUPCD,plant,Vslcode,VslCapacity,MinQty,Bales,Freight_Amt,TransitDays,Transporter,carcode,AppFileName  FROM RM_TransportRate a where   " & _
    "   DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' " & _
    " Order by DocDate,DOCNO", DB, adOpenStatic, adLockBatchOptimistic


Exit Sub
qry1_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qry1 of Form FrmTransport"

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
'    With SpdTransportRate
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
'            .SetText SPDRATEEntry.SPDVCAPKGS, RW, adoSecondaryRS("ManPower")
'            adoSecondaryRS.MoveNext
'            RW = RW + 1
'        Loop
'
'End Sub
Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.txtfields
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
        TmpRs.Open "Select slname  From fa_slmas where slcode ='" & txtfields(3).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not TmpRs.EOF Then
            txtfields(2).Text = TmpRs("slname")
        Else
            txtfields(2).Text = ""
        End If
    

    Case 1
        Set TmpRs = New Recordset
    
        TmpRs.Open "Select slname  From fa_slmas where slcode ='" & txtfields(1).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
     
        If Not TmpRs.EOF Then
            txtfields(4).Text = TmpRs("slname")
        Else
            txtfields(4).Text = ""
        End If
    Case 5
        Set TmpRs = New Recordset
        TmpRs.Open "Select  PLName 'PlantName'  From rm_plant  where PLCode ='" & txtfields(5).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not TmpRs.EOF Then
            txtfields(6).Text = TmpRs("PlantName")
        Else
            txtfields(6).Text = ""
        End If
    
End Select
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
    Case 5
        'Call ToUpCase(TXTFIELDS(Index), KeyAscii, 15)
        Call ToAlphaNumber(txtfields(Index), 15, KeyAscii)
    Case 6
        If Len(txtfields(Index).Text) = 2 And KeyAscii <> 8 Then
            iKeyAscii = KeyAscii
            KeyAscii = 0
            KeyAscii = 58
            SendKeys Chr(iKeyAscii)
        ElseIf Len(txtfields(Index).Text) = 5 And KeyAscii <> 8 Then
            iKeyAscii = KeyAscii
            KeyAscii = 0
            KeyAscii = 32
            SendKeys Chr(iKeyAscii)
        ElseIf Len(txtfields(Index).Text) > 5 And KeyAscii <> 8 Then
          '  Call ToUpCase(TXTFIELDS(Index), KeyAscii, 8)
            If KeyAscii = 65 Then
                txtfields(Index).Text = Mid(txtfields(Index).Text, 1, 6) & "AM"
            ElseIf KeyAscii = 80 Then
                txtfields(Index).Text = Mid(txtfields(Index).Text, 1, 6) & "PM"
            ElseIf (Right(txtfields(Index).Text, 2) <> "AM" And Right(txtfields(Index).Text, 2) <> "PM") Then
                KeyAscii = 0
            End If
        ElseIf Len(txtfields(Index).Text) < 6 And KeyAscii <> 8 Then
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
Case 5
        Set TmpRs = New Recordset
        TmpRs.Open "Select  PLName 'PlantName'  From rm_plant  where PLCode ='" & txtfields(5).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If TmpRs.EOF Then
           LookUp.Clear = True
                LookUp.query = "select PLName 'Plant Name',PLCode 'Plant Code' from rm_plant a inner join RM_fibrerate b on a.PLCode=b.plant and b.supcd='" & Trim(txtfields(3).Text) & "' and isnull(b.Appflg,'N')='Y'   and docdate=(select max(docdate) from RM_fibrerate bb where bb.supcd=b.supcd and bb.plant=b.plant and docdate<='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and bb.supcd='" & Trim(txtfields(3).Text) & "' and isnull(bb.Appflg,'N')='Y' ) "
                       
                LookUp.Caption = "Plant Listing"
                LookUp.DefCol = "Plant Name"
                LookUp.ALIGN = "4500,2500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(5).Text = LookUp.Fields(1)
                    txtfields(6).Text = LookUp.Fields(0)
                    Exit Sub
                Else
                    txtfields(5).Text = ""
                    txtfields(6).Text = ""
                    txtfields(5).SetFocus
                    Cancel = True
                    Exit Sub
                End If
            
        Else
            txtfields(6).Text = TmpRs("PlantName")
        End If
'
'If Opt <> "add" Then
'Exit Sub
'End If
'    If txtfields(8).Text = "" Then
'
'        LookUp.Clear = True
'        LookUp.query = "Select distinct a.catcd 'Category Code',b.Catname 'Category Name' FROM RM_Suppliervariety a inner join vw_VarietyList b on a.varcode=b.varcode and a.catcd=b.catcd  where  A.supcd ='" & Trim(txtfields(3).Text) & "' union all   select Top 1 'A', ' ALL' "
'
'        LookUp.Caption = "Category Listing"
'        LookUp.DefCol = "Category Name"
'
'        LookUp.ALIGN = "1200,3500"
'
'        LookUp.Show vbModal
'        If LookUp.Cancel = False Then
'            txtfields(8).Text = LookUp.Fields(0)
'            txtfields(7).Text = LookUp.Fields(1)
'             FraOrd.ZOrder
'            FraOrd.Visible = True
'            Buttonframe.Enabled = False
'            stbar.Panels(2).Text = "Select an Categoty from the list"
'            Call SETSIZEORDHead
'            SpdSIZEORD.CursorStyle = CursorStyleArrow
'           ' Dim ItmRs As Recordset
'            Set ItmRs = New Recordset
'
'            ItmRs.Open " select * from RM_Suppliervariety a inner join vw_VarietyList b on a.catcd=b.catcd and a.varcode=b.varcode  wHERE (b.catcd='" & Trim(txtfields(8).Text) & "' or '" & txtfields(8).Text & "'='A') and A.supcd ='" & Trim(txtfields(3).Text) & "'  ", DB, adOpenStatic, adLockBatchOptimistic
'            RW = 1
'            Do While Not ItmRs.EOF
'                SpdSIZEORD.MaxRows = SpdSIZEORD.MaxRows + 1
'                SpdSIZEORD.SetText E_VARLIST.SPDSBVARCODE, RW, ItmRs("Varcode")
'                SpdSIZEORD.SetText E_VARLIST.SPDSBVARNAME, RW, ItmRs("VARNAME")
'                SpdSIZEORD.SetText E_VARLIST.SPDSCATCD, RW, ItmRs("catcd")
'                SpdSIZEORD.SetText E_VARLIST.SPDSCATNAME, RW, ItmRs("catname")
'                SpdSIZEORD.SetText E_VARLIST.SPDSSUPCD, RW, Trim(txtfields(3).Text)
'                SpdSIZEORD.SetText E_VARLIST.SPDSSNO, RW, SpdSIZEORD.MaxRows
'

'                RW = RW + 1
'                ItmRs.MoveNext
'            Loop
'            SpdSIZEORD.SetFocus
'            LookUp.Clear = True
'
'            Buttonframe.Enabled = True
'
'
' Exit Sub
'
'
'        End If
'    End If

Case 1
    Set TmpRs = New Recordset
    
        TmpRs.Open "Select slname  From fa_slmas where slcode ='" & txtfields(1).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
     
        If TmpRs.EOF Then
        LookUp.Clear = True
        LookUp.query = "Select distinct slcode 'Code',slname 'Transporter Name' FROM fa_slmas a"
        LookUp.Caption = "Transporter Listing"
        LookUp.DefCol = "Transporter Name"
        LookUp.ALIGN = "1800,5500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(1).Text = LookUp.Fields(0)
            txtfields(4).Text = LookUp.Fields(1)
            SupSEL = True
            LookUp.Clear = True
            Buttonframe.Enabled = True
            Exit Sub
        Else
            LookUp.Clear = True
            Cancel = True
            txtfields(1).SetFocus
        End If
    Else
        txtfields(4).Text = TmpRs("slname")
    End If
        
   
Case 3
    If txtfields(3).Text = "" And SupSEL = False Then
        LookUp.Clear = True
        LookUp.query = "Select distinct a.supcd 'Supplier Code',b.slname 'Supplier Name' FROM RM_fibrerate  a inner join fa_slmas b on a.supcd=b.slcode where  isnull(a.Appflg,'N')='Y'  and docdate=(select max(docdate) from RM_fibrerate bb where bb.supcd=a.supcd  and docdate<='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'  and isnull(bb.Appflg,'N')='Y' )  and supcd not in (select supcd from RM_TransportRate where docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' )  " '' union select Top 1 'A', ' ALL'
        LookUp.Caption = "Supplier Listing"
        LookUp.DefCol = "Supplier Name"
        LookUp.ALIGN = "1800,5500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(3).Text = LookUp.Fields(0)
            txtfields(2).Text = LookUp.Fields(1)
            SupSEL = True
            LookUp.Clear = True
            Buttonframe.Enabled = True
            Exit Sub
        Else
            LookUp.Clear = True
            Cancel = True
            txtfields(3).SetFocus
        End If
    End If
End Select
End If
End Sub




