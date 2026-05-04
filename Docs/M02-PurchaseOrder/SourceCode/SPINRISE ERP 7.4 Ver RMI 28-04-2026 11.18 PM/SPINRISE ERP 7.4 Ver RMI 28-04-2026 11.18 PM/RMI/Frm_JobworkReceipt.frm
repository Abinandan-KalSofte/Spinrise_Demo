VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_JobworkReceipt 
   Caption         =   "Jobwork Yarn/Fabric Receipt"
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
      Left            =   20160
      ScaleHeight     =   6525
      ScaleWidth      =   8610
      TabIndex        =   49
      ToolTipText     =   "Select an item from list"
      Top             =   1920
      Visible         =   0   'False
      Width           =   8640
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1920
         TabIndex        =   55
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
         TabIndex        =   52
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
         TabIndex        =   51
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
         TabIndex        =   50
         Top             =   6000
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin FPSpreadADO.fpSpread SPDDiscTypeDet 
         Height          =   5445
         Left            =   0
         TabIndex        =   54
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
         SpreadDesigner  =   "Frm_JobworkReceipt.frx":0000
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
         TabIndex        =   56
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
         TabIndex        =   53
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
      Left            =   15000
      ScaleHeight     =   6765
      ScaleWidth      =   8610
      TabIndex        =   31
      ToolTipText     =   "Select an item from list"
      Top             =   2520
      Visible         =   0   'False
      Width           =   8640
      Begin VB.TextBox Text1 
         Height          =   325
         Left            =   2160
         TabIndex        =   45
         Top             =   480
         Width           =   6345
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
         TabIndex        =   34
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
         TabIndex        =   33
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
         TabIndex        =   32
         Top             =   600
         Width           =   525
      End
      Begin FPSpreadADO.fpSpread SpdSIZEORD 
         Height          =   5430
         Left            =   60
         TabIndex        =   35
         Top             =   840
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
         SpreadDesigner  =   "Frm_JobworkReceipt.frx":045B
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
         Left            =   1080
         TabIndex        =   46
         Top             =   600
         Width           =   1020
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Issue List"
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
         TabIndex        =   36
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
      Picture         =   "Frm_JobworkReceipt.frx":0885
      Style           =   1  'Graphical
      TabIndex        =   29
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   120
      Visible         =   0   'False
      Width           =   520
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   12
      Top             =   0
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_JobworkReceipt.frx":0CC7
         Height          =   510
         Index           =   8
         Left            =   3675
         Picture         =   "Frm_JobworkReceipt.frx":1111
         Style           =   1  'Graphical
         TabIndex        =   26
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "Frm_JobworkReceipt.frx":1473
         Height          =   510
         Index           =   10
         Left            =   4725
         Picture         =   "Frm_JobworkReceipt.frx":177D
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_JobworkReceipt.frx":1AF9
         Height          =   510
         Index           =   9
         Left            =   4200
         Picture         =   "Frm_JobworkReceipt.frx":1E03
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_JobworkReceipt.frx":21A5
         Height          =   510
         Index           =   11
         Left            =   5280
         Picture         =   "Frm_JobworkReceipt.frx":25EF
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_JobworkReceipt.frx":2984
         Height          =   510
         Index           =   7
         Left            =   3150
         Picture         =   "Frm_JobworkReceipt.frx":2DCE
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   7140
         Picture         =   "Frm_JobworkReceipt.frx":311E
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_JobworkReceipt.frx":34B5
         Height          =   510
         Index           =   1
         Left            =   555
         Picture         =   "Frm_JobworkReceipt.frx":37BF
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_JobworkReceipt.frx":3B39
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
         Picture         =   "Frm_JobworkReceipt.frx":3E43
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_JobworkReceipt.frx":41DF
         Height          =   510
         Index           =   5
         Left            =   2115
         Picture         =   "Frm_JobworkReceipt.frx":4629
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_JobworkReceipt.frx":498E
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Frm_JobworkReceipt.frx":4C98
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   135
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_JobworkReceipt.frx":502B
         Height          =   510
         Index           =   6
         Left            =   2640
         Picture         =   "Frm_JobworkReceipt.frx":5475
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton CmdCrystal 
         Height          =   510
         Index           =   1
         Left            =   6360
         Picture         =   "Frm_JobworkReceipt.frx":57C2
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Delivery Note"
         Top             =   150
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton CmdCrystalGP 
         Height          =   510
         Left            =   11040
         Picture         =   "Frm_JobworkReceipt.frx":5C04
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Gate Pass"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   1590
         Picture         =   "Frm_JobworkReceipt.frx":6046
         Style           =   1  'Graphical
         TabIndex        =   13
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   9120
         TabIndex        =   27
         Top             =   255
         Width           =   630
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   8085
      Left            =   240
      TabIndex        =   0
      Top             =   1200
      Width           =   17325
      _ExtentX        =   30559
      _ExtentY        =   14261
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "."
      TabPicture(0)   =   "Frm_JobworkReceipt.frx":6478
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "FraDespatch"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "SSTab2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin TabDlg.SSTab SSTab2 
         Height          =   5175
         Left            =   45
         TabIndex        =   10
         Top             =   2880
         Width           =   17175
         _ExtentX        =   30295
         _ExtentY        =   9128
         _Version        =   393216
         Tabs            =   2
         TabsPerRow      =   2
         TabHeight       =   520
         TabCaption(0)   =   "Issue List"
         TabPicture(0)   =   "Frm_JobworkReceipt.frx":6494
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "SpdEmpAllocation"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "Frame1"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).ControlCount=   2
         TabCaption(1)   =   "Finished Product Details"
         TabPicture(1)   =   "Frm_JobworkReceipt.frx":64B0
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame2"
         Tab(1).Control(1)=   "SPFinishedProd"
         Tab(1).ControlCount=   2
         Begin VB.Frame Frame2 
            Caption         =   "Total"
            Height          =   735
            Left            =   -74880
            TabIndex        =   78
            Top             =   4320
            Width           =   10695
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "TotPackWastekg2"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00800000&
               Height          =   330
               Index           =   22
               Left            =   7470
               TabIndex        =   87
               Top             =   240
               Width           =   960
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "Totpacks"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00800000&
               Height          =   330
               Index           =   21
               Left            =   1230
               TabIndex        =   82
               Top             =   240
               Width           =   960
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "TotPackKgs"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00800000&
               Height          =   330
               Index           =   20
               Left            =   3030
               TabIndex        =   81
               Top             =   240
               Width           =   960
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "TotPackWastekg1"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00800000&
               Height          =   330
               Index           =   19
               Left            =   5190
               TabIndex        =   80
               Top             =   240
               Width           =   960
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "TotPackWastekg3"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00800000&
               Height          =   330
               Index           =   18
               Left            =   9630
               TabIndex        =   79
               Top             =   240
               Width           =   960
            End
            Begin VB.Label Label24 
               AutoSize        =   -1  'True
               Caption         =   "Waste kgs2"
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
               Left            =   6360
               TabIndex        =   88
               Top             =   270
               Width           =   990
            End
            Begin VB.Label Label23 
               AutoSize        =   -1  'True
               Caption         =   "No. of Packs"
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
               TabIndex        =   86
               Top             =   270
               Width           =   1005
            End
            Begin VB.Label Label22 
               AutoSize        =   -1  'True
               Caption         =   "Kgs"
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
               Left            =   2280
               TabIndex        =   85
               Top             =   270
               Width           =   420
            End
            Begin VB.Label Label21 
               AutoSize        =   -1  'True
               Caption         =   "Waste kgs1"
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
               Left            =   4080
               TabIndex        =   84
               Top             =   270
               Width           =   990
            End
            Begin VB.Label Label20 
               AutoSize        =   -1  'True
               Caption         =   "Waste kgs3"
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
               Left            =   8520
               TabIndex        =   83
               Top             =   270
               Width           =   990
            End
         End
         Begin VB.Frame Frame1 
            Caption         =   "Total"
            Height          =   735
            Left            =   120
            TabIndex        =   67
            Top             =   4320
            Width           =   10695
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "TotInLosskgs"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00800000&
               Height          =   330
               Index           =   15
               Left            =   9270
               TabIndex        =   74
               Top             =   240
               Width           =   1200
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "TotWastekgs"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00800000&
               Height          =   330
               Index           =   14
               Left            =   6510
               TabIndex        =   72
               Top             =   240
               Width           =   1200
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "totRecKgs"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00800000&
               Height          =   330
               Index           =   13
               Left            =   3750
               TabIndex        =   70
               Top             =   240
               Width           =   1200
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "TotIsskgs"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00800000&
               Height          =   330
               Index           =   12
               Left            =   1350
               TabIndex        =   68
               Top             =   240
               Width           =   1080
            End
            Begin VB.Label Label17 
               AutoSize        =   -1  'True
               Caption         =   "Invisible Loss"
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
               Left            =   8040
               TabIndex        =   75
               Top             =   270
               Width           =   1140
            End
            Begin VB.Label Label16 
               AutoSize        =   -1  'True
               Caption         =   "Waste Wt."
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
               Left            =   5280
               TabIndex        =   73
               Top             =   270
               Width           =   870
            End
            Begin VB.Label Label15 
               AutoSize        =   -1  'True
               Caption         =   "Received Wt."
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
               Left            =   2520
               TabIndex        =   71
               Top             =   270
               Width           =   1110
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               Caption         =   " Issued Wt."
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
               TabIndex        =   69
               Top             =   270
               Width           =   945
            End
         End
         Begin FPSpreadADO.fpSpread SpdEmpAllocation 
            Height          =   3885
            Left            =   45
            TabIndex        =   9
            Top             =   360
            Width           =   16950
            _Version        =   524288
            _ExtentX        =   29898
            _ExtentY        =   6853
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
            SpreadDesigner  =   "Frm_JobworkReceipt.frx":64CC
            Appearance      =   2
         End
         Begin FPSpreadADO.fpSpread SPFinishedProd 
            Height          =   3885
            Left            =   -74955
            TabIndex        =   66
            Top             =   360
            Width           =   17070
            _Version        =   524288
            _ExtentX        =   30110
            _ExtentY        =   6853
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
            SpreadDesigner  =   "Frm_JobworkReceipt.frx":6927
            Appearance      =   2
         End
      End
      Begin VB.PictureBox FraDespatch 
         Appearance      =   0  'Flat
         ForeColor       =   &H80000008&
         Height          =   2760
         Left            =   75
         ScaleHeight     =   2730
         ScaleWidth      =   17070
         TabIndex        =   38
         Top             =   90
         Width           =   17100
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "InwardType"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   17
            Left            =   1470
            TabIndex        =   4
            Top             =   1180
            Width           =   1320
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   16
            Left            =   2820
            TabIndex        =   76
            Top             =   1180
            Width           =   8070
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "RealisationPer"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   11
            Left            =   9150
            TabIndex        =   8
            Top             =   2325
            Width           =   1680
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "VehcileNo"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   10
            Left            =   1470
            TabIndex        =   7
            Top             =   2325
            Width           =   1320
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "Dcno"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   9
            Left            =   1470
            TabIndex        =   2
            Top             =   840
            Width           =   1320
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   6
            Left            =   2820
            TabIndex        =   59
            Top             =   3000
            Visible         =   0   'False
            Width           =   8055
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "JBType"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   5
            Left            =   1470
            TabIndex        =   11
            Top             =   3000
            Visible         =   0   'False
            Width           =   1320
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   4
            Left            =   2820
            TabIndex        =   57
            Top             =   480
            Width           =   8055
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "IssType"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   1
            Left            =   1470
            TabIndex        =   1
            Top             =   480
            Width           =   1320
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "slcode"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   3
            Left            =   1470
            TabIndex        =   6
            Top             =   1920
            Width           =   1320
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   2
            Left            =   2820
            TabIndex        =   47
            Top             =   1920
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
            TabIndex        =   40
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
            TabIndex        =   39
            Top             =   1550
            Width           =   8070
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "CarCode"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   8
            Left            =   1470
            TabIndex        =   5
            Top             =   1550
            Width           =   1320
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "DocDate"
            Height          =   315
            Left            =   9600
            TabIndex        =   41
            Top             =   120
            Width           =   1290
            _ExtentX        =   2275
            _ExtentY        =   556
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   164757505
            CurrentDate     =   41403
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DcDate"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   270
            Index           =   1
            Left            =   9495
            TabIndex        =   3
            Top             =   855
            Width           =   1140
            _ExtentX        =   2011
            _ExtentY        =   476
            _Version        =   393216
            Appearance      =   0
            ForeColor       =   0
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            DataField       =   "DcDate"
            Height          =   315
            Left            =   9480
            TabIndex        =   62
            TabStop         =   0   'False
            Top             =   840
            Width           =   1440
            _ExtentX        =   2540
            _ExtentY        =   556
            _Version        =   393216
            Format          =   164757505
            CurrentDate     =   36218
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Inward Type"
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
            TabIndex        =   77
            Top             =   1240
            Width           =   1065
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Realisation %"
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
            TabIndex        =   65
            Top             =   2355
            Width           =   1185
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Vehcile No."
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
            TabIndex        =   64
            Top             =   2355
            Width           =   900
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Bill. Date"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   7800
            TabIndex        =   63
            Top             =   885
            Width           =   870
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Bill No."
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
            TabIndex        =   61
            Top             =   885
            Width           =   540
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Jobwork Type"
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
            TabIndex        =   60
            Top             =   3045
            Visible         =   0   'False
            Width           =   1185
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Issue Type"
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
            TabIndex        =   58
            Top             =   525
            Width           =   930
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Vendor"
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
            TabIndex        =   48
            Top             =   1965
            Width           =   600
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
            TabIndex        =   44
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
            TabIndex        =   43
            Top             =   180
            Width           =   1320
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Carrier"
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
            TabIndex        =   42
            Top             =   1635
            Width           =   585
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
      TabIndex        =   30
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
            TextSave        =   "10/06/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "11:25 AM"
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
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Jobwork Yarn/Fabric Receipt"
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
      TabIndex        =   37
      Top             =   750
      Width           =   6870
   End
End
Attribute VB_Name = "Frm_JobworkReceipt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS, adoSecondaryRS1 As Recordset
Dim DB As Connection
Dim opt As String
Dim deltype As String
Dim RW As Double
Dim prodflg As String
Dim SupSEL As Boolean
Dim TmpRs As New Recordset
Dim Rstdocno As Recordset
Dim VarProd As String
Private Enum E_SIZELISTDC1
    SPDSCHECK1 = 1
    SPDSSNO
    SPDISDOCNO
    SPDISDOCDT
    SPDSBVARCODE
    SPDSBVARNAME
    SPDISISSUEDQTY
    SPDISIBALQTY
End Enum

Private Enum SpdAllocation
    SPDVSNO = 1
    SPDDDOCNO
    SPDDDOCDT
    SPDVVarcode
    SPDVVarName
    SPDDISQTY
    SPDDBALQTY
    SPDDRECQTY
    SPDDWasteKg
    SPDDIinvisibleLoss
End Enum
Private Enum SpdFinished
    SPDFVSNO = 1
    SPDFPrrodCode
    SPDFProdName
    SPDFPackNoType
    SPDFPackNoTypeDesc
    SPDFPackType
    SPDFPackTypeDesc
    SPDFNoofPacks
    SPDFKgs
    SPDFWaste1
    SPDFWasteKg1
    SPDFWaste2
    SPDFWasteKg2
    SPDFWaste3
    SPDFWasteKg3
End Enum

'Private Enum SpdDiscType
'    SPDDTSNO = 1
'    SPDDTVARSNO
'    SPDDTVarcode
'    SPDDTDISCCODE
'    SPDDTDISCDESC
'    SPDDTDRate
'End Enum

Dim EmployeeNo As String
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
    End If
    If opt = "" Or opt = "qry" Then
        If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
            If adoPrimaryRS("DocDate") <> "" Then
                DTPicker1.value = Format(adoPrimaryRS("DocDate"), "dd/mm/yyyy")
            Else
            End If
            If adoPrimaryRS("dcdate") <> "" And IsDate(adoPrimaryRS("dcdate")) = True Then
                MaskEdBox1(1).Text = Format(adoPrimaryRS("dcdate"), "dd/mm/yyyy")
                DTPicker2.value = Format(adoPrimaryRS("dcdate"), "dd/mm/yyyy")
          
            End If
  
                    
            Call SETDESPATCHHead
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Varcode,a.IssDocno,a.IssDocDt,a.IssuedQty,a.BalKgs,a.RecKgs,a.WasteKgs,a.InvisibleKgs,b.varname FROM IG_JWRecDT a inner join rm_var b on a.varcode=b.varcode where a.DocDate= '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'  and DocNo='" & adoPrimaryRS("DocNo") & "' and a.divcode ='" & Divcode & "' Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
            Call SpdLoad
            
            Call SETFinishedDetHead
            Set adoSecondaryRS1 = New Recordset
            adoSecondaryRS1.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Product_code,a.PackNoCode,a.PackType,a.Noofpacks,a.Kgs,a.WProduct_Code1,a.WasteKgs1,a.WProduct_Code2,a.WasteKgs2,a.WProduct_Code3,a.WasteKgs3,b.DESCRIPTION Packnodesc,c.DESCRIPTION ProductDesc,d.DESCRIPTION Packtypedesc FROM IG_JWRecFDT a inner join IG_PACKNOTYPE b on a.PackNoCode=b.PACKNO_CODE and a.DIVCODE=b.DIVCODE inner join IG_product c on a.product_code=c.product_code and a.DIVCODE=c.DIVCODE inner join IG_packtype d on a.PackType=d.PACK_TYPE where a.DocDate= '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' and a.divcode ='" & Divcode & "'  and DocNo='" & adoPrimaryRS("DocNo") & "' Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
            Call SpdLoadFin
           'SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Product_code,a.PackNoCode,a.PackType,a.Noofpacks,a.Kgs,a.WProduct_Code1,a.WasteKgs1,a.WProduct_Code2,a.WasteKgs2,a.WProduct_Code3,a.WasteKgs3,b.DESCRIPTION Packnodesc,c.DESCRIPTION ProductDesc,d.DESCRIPTION Packtypedesc FROM IG_JWRecFDT a inner join IG_PACKNOTYPE b on a.PackNoCode=b.PACKNO_CODE and a.DIVCODE=b.DIVCODE inner join IG_product c on a.product_code=c.product_code and a.DIVCODE=c.DIVCODE  inner join IG_packtype d on a.PackType=d.PACK_TYPE
            
        End If
    End If

End Sub
Private Sub SpdLoad()
        Call SETDESPATCHHead
        With SpdEmpAllocation
            .MaxRows = 0
            .MaxCols = SpdAllocation.SPDDWasteKg
            .CursorStyle = CursorStyleArrow
            RW = 1
        Do While Not adoSecondaryRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText SpdAllocation.SPDVSNO, RW, adoSecondaryRS("DOCSNO")
            .SetText SpdAllocation.SPDDBALQTY, RW, adoSecondaryRS("BalKgs")
            .SetText SpdAllocation.SPDVVarcode, RW, adoSecondaryRS("varcode")
            .SetText SpdAllocation.SPDVVarName, RW, adoSecondaryRS("varname")
            .SetText SpdAllocation.SPDDISQTY, RW, adoSecondaryRS("IssuedQty")
            .SetText SpdAllocation.SPDDWasteKg, RW, adoSecondaryRS("WasteKgs")
            .SetText SpdAllocation.SPDDDOCDT, RW, adoSecondaryRS("IssDocDt")
            .SetText SpdAllocation.SPDDIinvisibleLoss, RW, adoSecondaryRS("InvisibleKgs")
            .SetText SpdAllocation.SPDDDOCNO, RW, adoSecondaryRS("IssDocno")
            .SetText SpdAllocation.SPDDRECQTY, RW, adoSecondaryRS("RecKgs")
            RW = RW + 1
            adoSecondaryRS.MoveNext
        Loop
        SSTab2.Tab = 0
        End With
End Sub
Private Sub SpdLoadFin()
        Call SETFinishedDetHead
        With SPFinishedProd
            .MaxRows = 0
            .MaxCols = SpdFinished.SPDFWasteKg3
            .CursorStyle = CursorStyleArrow
            RW = 1
            'Product_code,a.PackNoCode,a.PackType,a.Noofpacks,a.Kgs,a.WProduct_Code1,a.WasteKgs1,a.WProduct_Code2,a.WasteKgs2,a.WProduct_Code3,a.WasteKgs3,b.DESCRIPTION Packnodesc,c.DESCRIPTION ProductDesc,d.DESCRIPTION Packtypedesc
        Do While Not adoSecondaryRS1.EOF
            .MaxRows = .MaxRows + 1
            .SetText SpdFinished.SPDFVSNO, RW, adoSecondaryRS1("DOCSNO")
            .SetText SpdFinished.SPDFPrrodCode, RW, adoSecondaryRS1("Product_code")
            .SetText SpdFinished.SPDFPackNoType, RW, adoSecondaryRS1("PackNoCode")
            .SetText SpdFinished.SPDFPackType, RW, adoSecondaryRS1("PackType")
            .SetText SpdFinished.SPDFNoofPacks, RW, adoSecondaryRS1("Noofpacks")
            .SetText SpdFinished.SPDFKgs, RW, adoSecondaryRS1("Kgs")
            .SetText SpdFinished.SPDFWaste1, RW, adoSecondaryRS1("WProduct_Code1")
            .SetText SpdFinished.SPDFWasteKg1, RW, adoSecondaryRS1("WasteKgs1")
            .SetText SpdFinished.SPDFWaste2, RW, adoSecondaryRS1("WProduct_Code2")
            .SetText SpdFinished.SPDFWasteKg2, RW, adoSecondaryRS1("WasteKgs2")
            .SetText SpdFinished.SPDFWaste3, RW, adoSecondaryRS1("WProduct_Code3")
            .SetText SpdFinished.SPDFWasteKg3, RW, adoSecondaryRS1("WasteKgs3")
            .SetText SpdFinished.SPDFPackNoTypeDesc, RW, adoSecondaryRS1("Packnodesc")
            .SetText SpdFinished.SPDFPackTypeDesc, RW, adoSecondaryRS1("Packtypedesc")
            .SetText SpdFinished.SPDFProdName, RW, adoSecondaryRS1("ProductDesc")
            RW = RW + 1
            adoSecondaryRS1.MoveNext
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
            VarProd = "' '"
            opt = "add"
            SSTab2.Tab = 0
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
            adoPrimaryRS.Open "SELECT Divcode,Docno,Docdate,Slcode,IssType,JBType,DCNo,DCDate,InwardType,VehcileNo,CarCode,RealisationPer,TotIssKgs,totRecKgs,TotWastekgs,TotInLosskgs,Totpacks,TotPackKgs,TotPackWastekg1,TotPackWastekg2,TotPackWastekg3  FROM IG_JWRecHD  a where    1= 2", DB, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Varcode,a.IssDocno,a.IssDocDt,a.IssuedQty,a.BalKgs,a.RecKgs,a.WasteKgs,a.InvisibleKgs,b.varname FROM IG_JWRecDT a inner join rm_var b on a.varcode=b.varcode where  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
            opt = "add"
            adoPrimaryRS.AddNew
            Call bindcontls
            tottot = 0
            txtfields(7).Text = ""
            txtfields(8).Text = ""
            txtfields(2).Text = ""
             SupSEL = False
            If DB.State = 0 Then DB.BeginTrans
            Call ENABLCONTLS
            Call adddelmod(BUTTON)
            DTPicker2.value = pdate
            MaskEdBox1(1).Text = "__/__/____"
            'DTPicker3.value = mldate
            
            Screen.MousePointer = 0
            txtfields(1).SetFocus
      
            
            Set Rstdocno = New Recordset
            Rstdocno.Open "Select right(isnull(max(convert(numeric,docno)),0),4) as docno from IG_JWRecHD where Divcode='" & Divcode & "' and DocDate between '" & Format(yfdate, "dd-MMM-yyyy") & "' and '" & Format(yldate, "dd-MMM-yyyy") & "' AND dIVCODE='" & Divcode & "' ", DB
    
            If IsNull(Rstdocno("docno")) Then
                txtfields(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
            Else
                txtfields(0).Text = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 4, "0")
            End If
            

            
            Call SETDESPATCHHead
            Call SETFinishedDetHead
            SPFinishedProd.MaxRows = SPFinishedProd.MaxRows + 1
            SPFinishedProd.SetText SpdFinished.SPDFVSNO, 1, SPFinishedProd.MaxRows
   
            
    Case 1
        If Record_Exists("IG_JWRecHD where  DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' AND dIVCODE='" & Divcode & "' ") = False Then Exit Sub
        opt = "mod"
        Set rsk = New Recordset
        FraDespatch.Enabled = True
        rsk.Open "select TOP 1 A.DocNo,DocDate,Convert(numeric(18,0),Docno) as DocNoss from IG_JWRecHD A where  DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "' AND dIVCODE='" & Divcode & "'  Order By DocNoss Desc", DB, adOpenStatic, adLockReadOnly
        If rsk.RecordCount > 0 Then
            desc.Caption = "Modify"
            LookUp.Clear = True

            LookUp.query = "select distinct a.DocNo 'Doc. No.',a.DocDate 'Date' from IG_JWRecHD A WHERE   dIVCODE='" & Divcode & "' AND DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "' "
        
            LookUp.Caption = "Jobwork Opening Stock Listing"
            LookUp.DefCol = "Doc. No."
            LookUp.ALIGN = "1500,2000"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                DTPicker1.value = LookUp.Fields(1)
                Call adddelmod(BUTTON)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "SELECT Divcode,Docno,Docdate,Slcode,IssType,JBType,DCNo,DCDate,InwardType,VehcileNo,CarCode,RealisationPer,TotIssKgs,totRecKgs,TotWastekgs,TotInLosskgs,Totpacks,TotPackKgs,TotPackWastekg1,TotPackWastekg2,TotPackWastekg3 FROM IG_JWRecHD a where   Docno = " & LookUp.Fields(0) & " And DocDate = '" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' And DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "' AND dIVCODE='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Varcode,a.IssDocno,a.IssDocDt,a.IssuedQty,a.BalKgs,a.RecKgs,a.WasteKgs,a.InvisibleKgs,b.varname FROM IG_JWRecDT a inner join rm_var b on a.varcode=b.varcode  where DocNo =" & adoPrimaryRS("Docno") & " And DocDate='" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' AND dIVCODE='" & Divcode & "' Order by a.DocSno ", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoad
                    SpdEmpAllocation.Lock = True
                    Set adoSecondaryRS1 = New Recordset
                    adoSecondaryRS1.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Product_code,a.PackNoCode,a.PackType,a.Noofpacks,a.Kgs,a.WProduct_Code1,a.WasteKgs1,a.WProduct_Code2,a.WasteKgs2,a.WProduct_Code3,a.WasteKgs3,b.DESCRIPTION Packnodesc,c.DESCRIPTION ProductDesc,d.DESCRIPTION Packtypedesc FROM IG_JWRecFDT a inner join IG_PACKNOTYPE b on a.PackNoCode=b.PACKNO_CODE and a.DIVCODE=b.DIVCODE inner join IG_product c on a.product_code=c.product_code and a.DIVCODE=c.DIVCODE inner join IG_packtype d on a.PackType=d.PACK_TYPE where a.DocDate= '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' and a.divcode ='" & Divcode & "'  and DocNo='" & adoPrimaryRS("DocNo") & "' Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoadFin
                    SPFinishedProd.Lock = True
                Else
                    MsgBox "Select a valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                VarProd = "' '"
                SupSEL = True
                

                
                LookUp.Clear = True
                Call bindcontls
                Call ENABLCONTLS
                txtfields(3).Locked = True
                FraDespatch.Enabled = True
                Screen.MousePointer = 0
             Else
                opt = " "
             End If
             '19/02/14
            Buttonframe.Enabled = True
        End If
                   
    Case 2
        If Record_Exists("RM_JWOpeningDT where   dIVCODE='" & Divcode & "'  AND DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'") = False Then Exit Sub
        opt = "del"
        Set rsk = New Recordset
        rsk.Open "select TOP 1 convert(numeric(18,0),A.DocNo)as DocNo ,DocDate from IG_JWRecHD A where  dIVCODE='" & Divcode & "'  AND DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "' Order By DocDate Desc", DB, adOpenStatic, adLockReadOnly
        If rsk.RecordCount > 0 Then
            desc.Caption = "Deletion"
            LookUp.Clear = True
            LookUp.query = "select distinct a.DocNo 'Doc. No.',a.DocDate 'Date' from IG_JWRecHD A WHERE  dIVCODE='" & Divcode & "' AND DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'  "
            LookUp.Caption = "Jobwork Opening Stock Listing"
            LookUp.DefCol = "Doc. No."
            LookUp.ALIGN = "1500,1500"
         '   LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Call adddelmod(BUTTON)
                DTPicker1.value = LookUp.Fields(1)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "SELECT Divcode,Docno,Docdate,Slcode,IssType,JBType,DCNo,DCDate,InwardType,VehcileNo,CarCode,RealisationPer,TotIssKgs,totRecKgs,TotWastekgs,TotInLosskgs,Totpacks,TotPackKgs,TotPackWastekg1,TotPackWastekg2,TotPackWastekg3  FROM IG_JWRecHD  a where  dIVCODE='" & Divcode & "'  AND  Docno = " & LookUp.Fields(0) & " And DocDate = '" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' And DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Varcode,a.IssDocno,a.IssDocDt,a.IssuedQty,a.BalKgs,a.RecKgs,a.WasteKgs,a.InvisibleKgs,b.varname FROM IG_JWRecDT a inner join rm_var b on a.varcode=b.varcode where  dIVCODE='" & Divcode & "'  AND  DocNo =" & adoPrimaryRS("Docno") & " And DocDate='" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoad
                    SpdEmpAllocation.Enabled = True
                    SpdEmpAllocation.Lock = False
                    
                    Set adoSecondaryRS1 = New Recordset
                    adoSecondaryRS1.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Product_code,a.PackNoCode,a.PackType,a.Noofpacks,a.Kgs,a.WProduct_Code1,a.WasteKgs1,a.WProduct_Code2,a.WasteKgs2,a.WProduct_Code3,a.WasteKgs3,b.DESCRIPTION Packnodesc,c.DESCRIPTION ProductDesc,d.DESCRIPTION Packtypedesc FROM IG_JWRecFDT a inner join IG_PACKNOTYPE b on a.PackNoCode=b.PACKNO_CODE and a.DIVCODE=b.DIVCODE inner join IG_product c on a.product_code=c.product_code and a.DIVCODE=c.DIVCODE inner join IG_packtype d on a.PackType=d.PACK_TYPE where a.DocDate= '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' and a.divcode ='" & Divcode & "'  and DocNo='" & adoPrimaryRS("DocNo") & "' Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoadFin
                     SPFinishedProd.Lock = True
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
                opt = " "
             End If
            Buttonframe.Enabled = True
        End If
        
    Case 4
        opt = "fnd"
            LookUp.Clear = True
      
            LookUp.query = "select distinct a.DocNo 'Doc. No.',a.DocDate 'Date' from IG_JWRecHD A WHERE  dIVCODE='" & Divcode & "'  AND  a.DocDate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'"
         
            LookUp.Caption = "Jobwork Opening Stock Listing"
            LookUp.DefCol = "Doc. No."
            LookUp.ALIGN = "1500,1500"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Call adddelmod(BUTTON)
                DTPicker1.value = LookUp.Fields(1)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "SELECT Divcode,Docno,Docdate,Slcode,IssType,JBType,DCNo,DCDate,InwardType,VehcileNo,CarCode,RealisationPer,TotIssKgs,totRecKgs,TotWastekgs,TotInLosskgs,Totpacks,TotPackKgs,TotPackWastekg1,TotPackWastekg2,TotPackWastekg3  FROM IG_JWRecHD a where  dIVCODE='" & Divcode & "'  AND Docno = " & LookUp.Fields(0) & " And DocDate = '" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' And DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Varcode,a.IssDocno,a.IssDocDt,a.IssuedQty,a.BalKgs,a.RecKgs,a.WasteKgs,a.InvisibleKgs,b.varname FROM IG_JWRecDT a inner join rm_var b on a.varcode=b.varcode where dIVCODE='" & Divcode & "'  AND DocNo =" & adoPrimaryRS("Docno") & " And DocDate='" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoad
                    
                    Set adoSecondaryRS1 = New Recordset
                    adoSecondaryRS1.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Product_code,a.PackNoCode,a.PackType,a.Noofpacks,a.Kgs,a.WProduct_Code1,a.WasteKgs1,a.WProduct_Code2,a.WasteKgs2,a.WProduct_Code3,a.WasteKgs3,b.DESCRIPTION Packnodesc,c.DESCRIPTION ProductDesc,d.DESCRIPTION Packtypedesc FROM IG_JWRecFDT a inner join IG_PACKNOTYPE b on a.PackNoCode=b.PACKNO_CODE and a.DIVCODE=b.DIVCODE inner join IG_product c on a.product_code=c.product_code and a.DIVCODE=c.DIVCODE inner join IG_packtype d on a.PackType=d.PACK_TYPE where a.DocDate= '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' and a.divcode ='" & Divcode & "'  and DocNo='" & adoPrimaryRS("DocNo") & "' Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoadFin
                    SPFinishedProd.Lock = True
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
                opt = " "
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
            On Error GoTo ER1
            'Call PoCalculation
            
            bolSave = True
            bolSave = False
            
            If opt = "add" Then
                If CDate(MaskEdBox1(1).Text) > pdate Then
                  MsgBox "DC Date must be earlier or equal to processing date", vbInformation, head
                  MaskEdBox1(1).SetFocus
                  MaskEdBox1(1).Text = Format(pdate, "dd/MM/yyyy")
                  Exit Sub
                End If
            
                If Trim(txtfields(3).Text) = "" Then
                    MsgBox "Supplier Cannot be empty", vbInformation, head
                    txtfields(3).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                If Trim(txtfields(1).Text) = "" Then
                    MsgBox "Issue Type Cannot be empty", vbInformation, head
                    txtfields(1).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If

                If Trim(txtfields(9).Text) = "" Then
                    MsgBox "DC No. Cannot be empty", vbInformation, head
                    txtfields(9).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
'
'                If Trim(TXTFIELDS(5).Text) = "" Then
'                    MsgBox " JobWork Type Cannot be empty", vbInformation, head
'                    TXTFIELDS(5).SetFocus
'                    Screen.MousePointer = vbArrow
'                    Exit Sub
'                End If
                
                If Trim(txtfields(8).Text) = "" Then
                    MsgBox "Mixing Count cannot be empty", vbInformation, head
                    Screen.MousePointer = vbArrow
                    txtfields(8).SetFocus
                    Exit Sub
                End If
                
                

                With SpdEmpAllocation
                    If .MaxRows = 0 Then
                        MsgBox "No Variety Details,Transaction Aborted", vbInformation, head
                        DB.RollbackTrans
                        Call QUERY_MODE(0)
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                End With
                
                
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
'
                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTY, RW)) = "" Then
                           MsgBox "Please Enter TotalBale Details", vbInformation, head
                           Exit Sub
                        End If
                        
                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, RW)) = "" Then
                           MsgBox "Please Enter Total Kgs Details", vbInformation, head
                           Exit Sub
                        End If
                        
                        If val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW)) = 0 Then
                           MsgBox "Please Enter Rate Details", vbInformation, head
                           Exit Sub
                        End If
                        
                                          

'                        If Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDQty, RW)) <> 0 And Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDPaidEmp, RW)) = 0 Then
'                          MsgBox "Please Enter Employee Paid Amount in Setup", vbInformation, head
'                          Exit Sub
'                         End If
'
'                        If Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDExQty, RW)) <> 0 And Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDPaidComp, RW)) = 0 Then
'                          MsgBox "Please Enter Company Paid Amount in Setup", vbInformation, head
'                          Exit Sub
'                        End If
                         
                    Next
                End With
                ProdEntered = 0
                  With SPFinishedProd
                    For RW = 1 To .MaxRows
                        .Row = RW
'
                        If Trim(GetText(SPFinishedProd, SpdFinished.SPDFPrrodCode, RW)) <> "" Then
'                           MsgBox "Please Select Product Details", vbInformation, head
'                           Exit Sub
                         ProdEntered = 1
                            If val(GetText(SPFinishedProd, SpdFinished.SPDFKgs, RW)) = 0 Then
                               MsgBox "Please Enter Kgs Details", vbInformation, head
                               Exit Sub
                            End If
                            
                            If Trim(GetText(SPFinishedProd, SpdFinished.SPDFPackNoTypeDesc, RW)) = "" Then
                               MsgBox "Please Enter Pack No Code", vbInformation, head
                               Exit Sub
                            End If
                            If Trim(GetText(SPFinishedProd, SpdFinished.SPDFPackTypeDesc, RW)) = "" Then
                               MsgBox "Please Enter Pack Type Code", vbInformation, head
                               Exit Sub
                            End If
                            
                            If val(GetText(SPFinishedProd, SpdFinished.SPDFNoofPacks, RW)) = 0 Then
                               MsgBox "Please Enter packs Details", vbInformation, head
                               Exit Sub
                            End If
                        End If
 
                    Next
                End With
                
                If ProdEntered = 0 Then
                    MsgBox "Please Enter Finished Product Details", vbInformation, head
                    Exit Sub
                End If
                YearNo = Format(yfdate, "YY")
'                Set TmpRs = New Recordset
'                TmpRs.Open "Select isnull(max(isnull(convert(numeric(18,0),DocNo),0)),0)+1 AS Last_docno From RM_JWOpeningDT where DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                If Not TmpRs.EOF Then
'                    Last_docno = TmpRs("Last_docno")
'                End If
'                docNo = (Last_docno)
                
                
        DB.BeginTrans

        Set Rstdocno = New Recordset
        Rstdocno.Open "Select right(isnull(max(convert(numeric,docno)),0),4) as docno from IG_JWRecHD where DocDate between '" & Format(yfdate, "dd-MMM-yyyy") & "' and '" & Format(yldate, "dd-MMM-yyyy") & "' and Divcode='" & Divcode & "'", DB

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
              
               adoPrimaryRS("DcDate") = Format(MaskEdBox1(1).Text, "yyyy-MM-dd")
         
               adoPrimaryRS("SLCODE") = txtfields(3).Text
                adoPrimaryRS("IssType") = txtfields(1).Text
                
                adoPrimaryRS("Dcno") = txtfields(9).Text
                adoPrimaryRS("JBType") = txtfields(5).Text
              ' adoPrimaryRS("CntCode") = TXTFIELDS(8).Text
            
                
       
                

               ' adoPrimaryRS("EntryDate") = Now

                Dim UPDRS As Recordset
                Set UPDRS = New Recordset
                UPDRS.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Varcode,a.IssDocno,a.IssDocDt,a.IssuedQty,a.BalKgs,a.RecKgs,a.WasteKgs,a.InvisibleKgs FROM IG_JWRecDT a where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, RW)) <> "" And val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW)) <> 0 Then
                            UPDRS.AddNew
                            UPDRS("divcode") = Divcode
                            UPDRS("DocNo") = docNo
                            UPDRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
                            UPDRS("DocSno") = RW
                            UPDRS("IssDocno") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW))
                            UPDRS("IssDocDt") = Format(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW), "yyyy-mm-dd")
                            UPDRS("Varcode") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, RW))
                            UPDRS("IssuedQty") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTY, RW))
                            UPDRS("RecKgs") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW))
                            UPDRS("BalKgs") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, RW))
                            UPDRS("WasteKgs") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDWasteKg, RW))
                            UPDRS("InvisibleKgs") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDIinvisibleLoss, RW))
                            
                            
                            TotalRecKgs = (val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW)) + val(GetText(SpdEmpAllocation, SpdAllocation.SPDDWasteKg, RW)) + val(GetText(SpdEmpAllocation, SpdAllocation.SPDDIinvisibleLoss, RW)))
                            Set rsbam = New Recordset
                            rsbam.Open "select (isskgs-isnull(b.RecKgs,0))  balkgs ,baleno,lotno,lotdt from rm_issb b  where docno = " & val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW)) & "  and docdt='" & Format((GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW)), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and varcode = '" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, RW)) & "' and (isskgs-isnull(b.RecKgs,0)) >0 order by baleno asc", DB, adOpenStatic
                            If Not rsbam.EOF Then
                                 Do While Not rsbam.EOF
                                        If TotalRecKgs > 0 Then
                                            If TotalRecKgs >= val(rsbam("balkgs")) Then
                                                DB.Execute "update rm_issb set  RecKgs  =  isnull(RecKgs,0) +'" & val(rsbam("balkgs")) & "' where docno = " & val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW)) & "  and lotdt='" & Format(rsbam("lotdt"), "yyyy-mm-dd") & "' and lotno='" & val(rsbam("lotno")) & "' and docdt='" & Format((GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW)), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and varcode = '" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, RW)) & "'  and baleno ='" & val(rsbam("baleno")) & "' "
                                            Else
                                                DB.Execute "update rm_issb set  RecKgs  =  isnull(RecKgs,0) +'" & val(Format(TotalRecKgs, "#0.000")) & "' where docno = " & val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW)) & "  and lotdt='" & Format(rsbam("lotdt"), "yyyy-mm-dd") & "' and lotno='" & val(rsbam("lotno")) & "' and docdt='" & Format((GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW)), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and varcode = '" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, RW)) & "' and baleno ='" & val(rsbam("baleno")) & "' "
                                            End If
                                       
                                            TotalRecKgs = TotalRecKgs - val(rsbam("balkgs"))
                                        Else
                                          
                                       End If
                                       rsbam.MoveNext
                                   Loop
                             End If
                            
                        End If
                    Next
                End With
                
                
                 Dim UPDRS1 As Recordset
                Set UPDRS1 = New Recordset
                UPDRS1.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Product_code,a.PackNoCode,a.PackType,a.Noofpacks,a.Kgs,a.WProduct_Code1,a.WasteKgs1,a.WProduct_Code2,a.WasteKgs2,a.WProduct_Code3,a.WasteKgs3 FROM IG_JWRecFDT a  where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                With SPFinishedProd
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SPFinishedProd, SpdFinished.SPDFPrrodCode, RW)) <> "" And val(GetText(SPFinishedProd, SpdFinished.SPDFKgs, RW)) <> 0 Then
                            UPDRS1.AddNew
                            UPDRS1("divcode") = Divcode
                            UPDRS1("DocNo") = docNo
                            UPDRS1("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
                            UPDRS1("DocSno") = RW
                            UPDRS1("Product_code") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFPrrodCode, RW))
                            UPDRS1("PackNoCode") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFPackNoType, RW))
                            UPDRS1("PackType") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFPackType, RW))
                            UPDRS1("Noofpacks") = val(GetText(SPFinishedProd, SpdFinished.SPDFNoofPacks, RW))
                            UPDRS1("Kgs") = val(GetText(SPFinishedProd, SpdFinished.SPDFKgs, RW))
                            UPDRS1("WProduct_Code1") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFWaste1, RW))
                            UPDRS1("WasteKgs1") = val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg1, RW))
                            UPDRS1("WProduct_Code2") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFWaste2, RW))
                            UPDRS1("WasteKgs2") = val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg2, RW))
                            UPDRS1("WProduct_Code3") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFWaste3, RW))
                            UPDRS1("WasteKgs3") = val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg3, RW))
                            
                        End If
                    Next
                End With
                UPDRS1.UpdateBatch adAffectAllChapters
               
                adoPrimaryRS.UpdateBatch adAffectAllChapters
                UPDRS.UpdateBatch adAffectAllChapters
                
   
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
        If opt = "mod" Then

                If CDate(MaskEdBox1(1).Text) > pdate Then
                  MsgBox "DC Date must be earlier or equal to processing date", vbInformation, head
                  MaskEdBox1(1).SetFocus
                  MaskEdBox1(1).Text = Format(pdate, "dd/MM/yyyy")
                  Exit Sub
                End If

            If Trim(txtfields(3).Text) = "" Then
                    MsgBox "Supplier Cannot be empty", vbInformation, head
                    txtfields(3).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                If Trim(txtfields(1).Text) = "" Then
                    MsgBox "Issue Type Cannot be empty", vbInformation, head
                    txtfields(1).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If

                If Trim(txtfields(9).Text) = "" Then
                    MsgBox "DC No. Cannot be empty", vbInformation, head
                    txtfields(9).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                
                If Trim(txtfields(5).Text) = "" Then
                    MsgBox " JobWork Type Cannot be empty", vbInformation, head
                    txtfields(5).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
                
                If Trim(txtfields(8).Text) = "" Then
                    MsgBox "Mixing Count cannot be empty", vbInformation, head
                    Screen.MousePointer = vbArrow
                    txtfields(8).SetFocus
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
                        Call QUERY_MODE(0)
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                End With
                YearNo = Format(yfdate, "YY")
                
              With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
'
                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTY, RW)) = "" Then
                           MsgBox "Please Enter TotalBale Details", vbInformation, head
                           Exit Sub
                        End If
                        
                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, RW)) = "" Then
                           MsgBox "Please Enter Rate/Unit Details", vbInformation, head
                           Exit Sub
                        End If
                        
                        If val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW)) = 0 Then
                           MsgBox "Please Enter Rate Details", vbInformation, head
                           Exit Sub
                        End If
                        
              
                         
                    Next
                End With
                
                        ProdEntered = 0
                  With SPFinishedProd
                    For RW = 1 To .MaxRows
                        .Row = RW
'
                        If Trim(GetText(SPFinishedProd, SpdFinished.SPDFPrrodCode, RW)) <> "" Then
'                           MsgBox "Please Select Product Details", vbInformation, head
'                           Exit Sub
                         ProdEntered = 1
                            If val(GetText(SPFinishedProd, SpdFinished.SPDFKgs, RW)) = 0 Then
                               MsgBox "Please Enter Kgs Details", vbInformation, head
                               Exit Sub
                            End If
                            
                            If Trim(GetText(SPFinishedProd, SpdFinished.SPDFPackNoTypeDesc, RW)) = "" Then
                               MsgBox "Please Enter Pack No Code", vbInformation, head
                               Exit Sub
                            End If
                            If Trim(GetText(SPFinishedProd, SpdFinished.SPDFPackTypeDesc, RW)) = "" Then
                               MsgBox "Please Enter Pack Type Code", vbInformation, head
                               Exit Sub
                            End If
                            
                            If val(GetText(SPFinishedProd, SpdFinished.SPDFNoofPacks, RW)) = 0 Then
                               MsgBox "Please Enter packs Details", vbInformation, head
                               Exit Sub
                            End If
                        End If
 
                    Next
                End With
                
                If ProdEntered = 0 Then
                    MsgBox "Please Enter Finished Product Details", vbInformation, head
                    Exit Sub
                End If
                
                DB.BeginTrans
                 'DB.Execute ("Delete From IG_JWRecHD  WHERE  DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' AND dIVCODE='" & Divcode & "' "), xx
                 DB.Execute ("Delete From RM_JWOpeningDT  WHERE  DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' AND dIVCODE='" & Divcode & "'  "), xx
             
                'Set tmprs = New Recordset
                'tmprs.Open "Select isnull(max(isnull(DocNo,0)),0)+1 AS Last_docno From RM_JWOpeningDT where Divcode ='" & divcode & "' And DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

                'If Not tmprs.EOF Then
                 '   Last_docno = Right(tmprs("Last_docno"), 6)
                'End If
                'DocNo = YearNo & Padl(CStr(Last_docno), 6, "0")

         '   Set adoPrimaryRS = New Recordset
'            adoPrimaryRS.Open "select Divcode,DocNo,DocDate,SLCODE,JONo,JODate,DespatchTo,VechicleNo,RemTime,EntryDate,Description from  RM_JWOpeningDT where  1= 2", DB, adOpenStatic, adLockBatchOptimistic
'
'            adoPrimaryRS.ADDNEW


              docNo = Trim(txtfields(0).Text)
              
                    adoPrimaryRS("DIVCODE") = Divcode
               adoPrimaryRS("DocNo") = docNo
              adoPrimaryRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
              
               adoPrimaryRS("DcDate") = Format(MaskEdBox1(1).Text, "yyyy-MM-dd")
         
               adoPrimaryRS("SLCODE") = txtfields(3).Text
                adoPrimaryRS("IssType") = txtfields(1).Text
                
                adoPrimaryRS("Dcno") = txtfields(9).Text
                adoPrimaryRS("JBType") = txtfields(5).Text
                adoPrimaryRS("CntCode") = txtfields(8).Text
            

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
                UPDRS.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Varcode,a.IssDocno,a.IssDocDt,a.IssuedQty,a.BalKgs,a.RecKgs,a.WasteKgs,a.InvisibleKgs FROM IG_JWRecDT a where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, RW)) <> "" And val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW)) <> 0 Then
                            UPDRS.AddNew
                            UPDRS("divcode") = Divcode
                            UPDRS("DocNo") = docNo
                            UPDRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
                            UPDRS("DocSno") = RW
                            UPDRS("IssDocno") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW))
                            UPDRS("IssDocDt") = Format(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW), "yyyy-mm-dd")
                            UPDRS("Varcode") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, RW))
                            UPDRS("IssuedQty") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTY, RW))
                            UPDRS("RecKgs") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW))
                            UPDRS("BalKgs") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, RW))
                            UPDRS("WasteKgs") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDWasteKg, RW))
                            UPDRS("InvisibleKgs") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDIinvisibleLoss, RW))
                            
                        End If
                    Next
                End With
                
                Set UPDRS1 = New Recordset
                UPDRS1.Open "SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Product_code,a.PackNoCode,a.PackType,a.Noofpacks,a.Kgs,a.WProduct_Code1,a.WasteKgs1,a.WProduct_Code2,a.WasteKgs2,a.WProduct_Code3,a.WasteKgs3 FROM IG_JWRecFDT a  where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                With SPFinishedProd
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SPFinishedProd, SpdFinished.SPDFPrrodCode, RW)) <> "" And val(GetText(SPFinishedProd, SpdFinished.SPDFKgs, RW)) <> 0 Then
                            UPDRS1.AddNew
                            UPDRS1("divcode") = Divcode
                            UPDRS1("DocNo") = docNo
                            UPDRS1("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
                            UPDRS1("DocSno") = RW
                            UPDRS1("Product_code") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFPrrodCode, RW))
                            UPDRS1("PackNoCode") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFPackNoType, RW))
                            UPDRS1("PackType") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFPackType, RW))
                            UPDRS1("Noofpacks") = val(GetText(SPFinishedProd, SpdFinished.SPDFNoofPacks, RW))
                            UPDRS1("Kgs") = val(GetText(SPFinishedProd, SpdFinished.SPDFKgs, RW))
                            UPDRS1("WProduct_Code1") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFWaste1, RW))
                            UPDRS1("WasteKgs1") = val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg1, RW))
                            UPDRS1("WProduct_Code2") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFWaste2, RW))
                            UPDRS1("WasteKgs2") = val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg2, RW))
                            UPDRS1("WProduct_Code3") = Trim(GetText(SPFinishedProd, SpdFinished.SPDFWaste3, RW))
                            UPDRS1("WasteKgs3") = val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg3, RW))
                            
                        End If
                    Next
                End With
                UPDRS1.UpdateBatch adAffectAllChapters
                adoPrimaryRS.UpdateBatch adAffectAllChapters
                UPDRS.UpdateBatch adAffectAllChapters
               
        
            DB.CommitTrans
                
                MsgBox "Record(s) Saved Successfully", vbOKOnly, head
        ''End If

        End If
      
        
        DB.BeginTrans
        If opt = "del" Then
            DB.BeginTrans
                DB.Execute ("Delete From IG_JWRecHD  WHERE   DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' AND dIVCODE='" & Divcode & "'  "), xx
                DB.Execute ("Delete From RM_JWOpeningDT  WHERE   DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' AND dIVCODE='" & Divcode & "'  "), xx
            DB.CommitTrans
           ' DB.Execute ("Delete From RM_JWOpeningDT  WHERE   DocNo = " & val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' "), xx
           ' DB.Execute ("Delete From YN_SizingDeliveryDT  WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' and DocNo = " & Val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'"), xx
            MsgBox "Record deleted Successfully", vbOKOnly, head
        End If
        DB.CommitTrans
        ' Return to query mode
        Call QUERY_MODE(0)

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
    
    Select Case opt
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
    Call QUERY_MODE(0)
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
ER1:
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
        SpdSIZEORD.Col = E_SIZELISTDC1.SPDSCHECK1
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
'    Call SETDESPATCHHead
'    chk = 0
'    With SpdSIZEORD
'        For RW = 1 To .MaxRows
'            .Row = RW
'            .Col = SPDSCHECK1
'            If .value = True Then
'                chk = 1
'                SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
'                SpdEmpAllocation.SetText SpdAllocation.SPDVSNO, RW, SpdEmpAllocation.MaxRows
'                SpdEmpAllocation.SetText SpdAllocation.SPDVVarcode, RW, Trim(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, RW))
'                SpdEmpAllocation.SetText SpdAllocation.SPDVVarName, RW, Trim(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARNAME, RW))
'                SpdEmpAllocation.SetText SpdAllocation.SPDDDOCDT, RW, Trim(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISDOCDT, RW))
'                SpdEmpAllocation.SetText SpdAllocation.SPDDIinvisibleLoss, RW, Trim(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISISSUEDQTY, RW))
'                SpdEmpAllocation.SetText SpdAllocation.SPDDDOCNO, RW, Trim(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISDOCNO, RW))
'                 VarProd = VarProd + ",'" & Trim(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, RW)) & "'"
'            End If
'        Next
'    End With
'     FraOrd.Visible = False
'     SpdEmpAllocation.Col = SpdAllocation.SPDDISQTY
'     SpdEmpAllocation.SetFocus
'   ' TXTFIELDS(8).SetFocus
'   ' If TXTFIELDS(3).Enabled = True Then TXTFIELDS(9).SetFocus

Call SETDESPATCHHead
 chk = 0
 TOTQty = 0
 IssuedTotQty = 0
    With SpdSIZEORD
        For RW = 1 To .MaxRows
            .Row = RW
            .Col = SPDSCHECK1
            If .value = True Then
                chk = 1
                SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
                SpdEmpAllocation.SetText SpdAllocation.SPDVSNO, SpdEmpAllocation.MaxRows, SpdEmpAllocation.MaxRows
                SpdEmpAllocation.SetText SpdAllocation.SPDDDOCNO, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISDOCNO, RW)
                SpdEmpAllocation.SetText SpdAllocation.SPDDISQTY, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISISSUEDQTY, RW)
                VarProd = VarProd + ",'" & Trim(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, RW)) & "'"
                SpdEmpAllocation.SetText SpdAllocation.SPDVVarcode, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, RW)
                SpdEmpAllocation.SetText SpdAllocation.SPDVVarName, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARNAME, RW)
  
                SpdEmpAllocation.SetText SpdAllocation.SPDDDOCDT, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISDOCDT, RW)
                SpdEmpAllocation.SetText SpdAllocation.SPDDBALQTY, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISIBALQTY, RW)
                TOTQty = TOTQty + val(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISIBALQTY, RW))
                IssuedTotQty = IssuedTotQty + val(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISISSUEDQTY, RW))
                SupSEL = True
            End If
        Next
    End With
    txtfields(12).Text = Format(TOTQty, "#0.000")
'     SpdEmpAllocation.Col = SpdAllocation.SPDDDOCNO
'                SpdEmpAllocation.SetFocus
    FraOrd.Visible = False
    txtfields(10).SetFocus

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

If opt = "add" Or opt = "mod" Then


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


DB.Execute "delete from RM_JWOpeningDTDiscTXN where IPAdd='" & LocalIPAdd & "' and docdate='" & Format(docDate, "yyyy-mm-dd") & "' and varcode='" & Trim(Trim(GetText(SpdEmpAllocation, SPDVVarcode, SpdEmpAllocation.ActiveRow))) & "' AND VSno='" & val(GetText(SpdEmpAllocation, SPDVSNO, SpdEmpAllocation.ActiveRow)) & "' and divcode='" & Divcode & "' "

 With SPDDiscTypeDet
        For RW = 1 To .MaxRows
            .Row = RW
            'If Trim(GetText(SpdPrd, SPDDTDRate, RW)) <> 0 Then
               ' DB.Execute "insert into RM_JWOpeningDTDiscTXN (Divcode,docno,Docdate,VSno,DocSno,Varcode,DType,DRate,IPAdd,Slcode)values('" & Divcode & "','" & val(TXTFIELDS(0).Text) & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & val(GetText(SpdEmpAllocation, SPDVSNO, SpdEmpAllocation.ActiveRow)) & "','" & val(RW) & "','" & Trim(Trim(GetText(SpdEmpAllocation, SPDVVarcode, SpdEmpAllocation.ActiveRow))) & "','" & Trim(GetText(SPDDiscTypeDet, SPDDTDISCCODE, RW)) & "','" & val(GetText(SPDDiscTypeDet, SPDDTDRate, RW)) & "','" & LocalIPAdd & "','" & Trim(TXTFIELDS(3).Text) & "')"
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

Private Sub DTPicker2_CloseUp()
MaskEdBox1(1).Text = Format(DTPicker2.value, "dd/MM/yyyy")
MaskEdBox1(1).SetFocus

End Sub
Private Sub MaskEdBox1_GotFocus(Index As Integer)
    
On Error GoTo Errh

    If opt = "add" Or opt = "mod" Then
        Select Case Index
            Case 0
                MaskEdBox1(Index).BackColor = &HC0FFC0
                stbar.Panels(2).Text = MaskEdBox1(Index).ToolTipText
        End Select
    End If
    If Index = 1 Then
        If Len(txtfields(2)) <> 0 Then
            If MaskEdBox1(1).Text = "__/__/____" Then
                MaskEdBox1(1) = Format(pdate, "dd/MM/yyyy")
            End If
        End If
    End If
    
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_GotFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
End Sub
Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo Errh

    If opt = "add" Or opt = "mod" Then
    
        Select Case Index
            Case 1
                MaskEdBox1(Index).BackColor = &H80000005
                stbar.Panels(2).Text = ""
        End Select
        
    End If

If opt = "add" Or opt = "mod" Then
    
    If Index = 1 Then
        If MaskEdBox1(1).Enabled Then
            If Not (IsDate(MaskEdBox1(1).Text)) Then
                MsgBox "Please Enter valid Date", vbInformation, head
                MaskEdBox1(1).SetFocus
                Exit Sub
            ElseIf CDate(MaskEdBox1(1).Text) > pdate Then
                MsgBox "DC Date must be earlier or equal to processing date", vbInformation, head
                MaskEdBox1(1).SetFocus
                MaskEdBox1(1).Text = Format(pdate, "dd/MM/yyyy")
                Exit Sub
            End If
        End If
    End If

End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Errh

If opt = "add" And Index = 0 Then
    stbar.Panels(2).Text = "Select "
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_Validate " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub Form_Load()
  
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
    desc.Caption = "Query"
    DATLAB.Caption = Format(pdate, "dd/mm/yyyy")
    opt = "qry"
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
'    Set rs = New Recordset
'    rs.Open "select isnull(ProdAlias,'N') ProdAlias from  WVGPRPPARAM ", DB
'    If Not rs.EOF Then
'        prodflg = rs(0)
'    End If
'
    Call QUERY_MODE(0)
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

Public Sub QUERY_MODE(MDOC As Long)
On Error GoTo query_mode_Error

Dim oText As TextBox

    bolSave = False
    FraOrd.Visible = False
    Call SETDESPATCHHead
    If Not opt = "" Then
        Call disablcontls
        Set adoPrimaryRS = New Recordset
        If MDOC = 0 Then
            Call qry1
            opt = ""
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
        If opt <> "add" Then
            If Not adoPrimaryRS.EOF Then
                adoPrimaryRS.MoveLast
            End If
        End If
        On Error GoTo ER1
        desc.Caption = "Query"
    End If
    Call NEWFORM1(BUTTON, GSNO)
    Screen.MousePointer = 0
    Exit Sub
ER1:
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
    adoPrimaryRS.Open "SHAPE {SELECT Divcode,Docno,Docdate,Slcode,IssType,JBType,DCNo,DCDate,InwardType,VehcileNo,CarCode,RealisationPer,TotIssKgs,totRecKgs,TotWastekgs,TotInLosskgs,Totpacks,TotPackKgs,TotPackWastekg1,TotPackWastekg2,TotPackWastekg3  FROM IG_JWRecHD th where  divcode = '" & Divcode & "'    " & _
    "  AND TH.DIVCODE = '" & Divcode & "'and DOCDT between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' " & _
    " and th.DocNo >= " & MDOC & " Order by DOCDT,DOCNO} AS ParentCMD APPEND ({SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Varcode,a.IssDocno,a.IssDocDt,a.IssuedQty,a.BalKgs,a.RecKgs,a.WasteKgs,a.InvisibleKgs,b.varname FROM IG_JWRecDT a inner join rm_var b on a.varcode=b.varcode left join rm_TotalBale d on d.plcode=a.TotalBale  left join RM_TotalKgs r on r.unitcode=a.TotalKgs WHERE DOCDATE  between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' Order by a.DOCDATE ,a.DOCSNO } AS ChildCMD RELATE DIVCODE TO DIVCODE,DOCNO TO DOCNO,DOCDATE TO DOCDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

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
'                    If .ActiveCol = SpdAllocation.SPDVVarcode Then
''                            If UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, .ActiveRow))) = UCase("Shift") Then
''                                 If UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTY2ALLOC, .ActiveRow))) = UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, .ActiveRow))) Or UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTY3ALLOC, .ActiveRow))) = UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, .ActiveRow))) Then
''                                    MsgBox "Shift already assigned for this Employee .", vbInformation, head
''                                    .SetText SpdAllocation.SPDVVarcode, .ActiveRow, ""
''                                    .Col = SpdAllocation.SPDVVarcode
''                                    .SetFocus
''                                 Exit Sub
''                                End If
''                            End If
''                            If UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, .ActiveRow))) = UCase("Shift") Then
''                                Set rsalc = New Recordset
''                                rsalc.Open "select  Varcode from VW_DailyAlloccateDetails where alc='" & UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, .ActiveRow))) & "'  and docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and divcode='" & divcode & "'", DB, adOpenStatic
''                                If Not rsalc.EOF Then
''                                         MsgBox "Shift already assigned for this Employee .", vbInformation, head
''                                        .SetText SpdAllocation.SPDVVarcode, .ActiveRow, ""
''                                        .Col = SpdAllocation.SPDVVarcode
''                                         Exit Sub
''                                End If
''                            End If
'                     End If
''                     If .ActiveCol = SpdAllocation.SPDDISQTY2ALLOC Then
''                        If UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTY2ALLOC, .ActiveRow))) = UCase("Shift") Then
''                            If UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, .ActiveRow))) = UCase("Shift") Or UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTY3ALLOC, .ActiveRow))) = UCase("Shift") Then
''                               MsgBox "Shift already assigned for this Employee .", vbInformation, head
''                               .SetText SpdAllocation.SPDDISQTY2ALLOC, .ActiveRow, ""
''                               .Col = SpdAllocation.SPDDISQTY2ALLOC
''                               .SetFocus
''                               Exit Sub
''                            End If
''                         End If
''                     End If
''
''                    If .ActiveCol = SpdAllocation.SPDDISQTY3ALLOC Then
''                        If UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTY3ALLOC, .ActiveRow))) = UCase("Shift") Then
''                            If UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, .ActiveRow))) = UCase("Shift") Or UCase(Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTY2ALLOC, .ActiveRow))) = UCase("Shift") Then
''                               MsgBox "Shift already assigned for this Employee .", vbInformation, head
''                               .SetText SpdAllocation.SPDDISQTY3ALLOC, .ActiveRow, ""
''                               .Col = SpdAllocation.SPDDISQTY3ALLOC
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
If opt = "add" Or opt = "mod" Then

     With SpdEmpAllocation
'                If (.ActiveCol = SpdAllocation.SPDDISQTYDesc) And Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTYDesc, .ActiveRow)) = "" Then
''
'                    .Col = SpdAllocation.SPDDISQTYDesc
'                    .SetFocus
'                    Cancel = True
'                    Exit Sub
'
'                End If

                If (.ActiveCol = SpdAllocation.SPDDRECQTY) And val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, .ActiveRow)) = 0 Then
'
                    .Col = SpdAllocation.SPDDRECQTY
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
    
    
        
            If opt = "add" Or opt = "mod" Then
                If .MaxRows > 0 Then
                
                    If .ActiveCol = SpdAllocation.SPDDIinvisibleLoss Then
                        If .MaxRows = SpdEmpAllocation.ActiveRow Then
                           If vbYes = MsgBox("Any corrections?", vbYesNo, head) Then
                            
                            SSTab2.Tab = 0
                           ' TXTFIELDS(3).SetFocus
                            Exit Sub
                        Else
                             SSTab2.Tab = 1
                             SPFinishedProd.Row = 1
                             SPFinishedProd.Col = SpdFinished.SPDFPrrodCode
                             SPFinishedProd.SetFocus
                            Exit Sub
                        End If
                       End If
                     End If
                    
                   If ((.ActiveCol = SpdAllocation.SPDDRECQTY) Or (.ActiveCol = SpdAllocation.SPDDWasteKg) Or (.ActiveCol = SpdAllocation.SPDDIinvisibleLoss)) And KeyCode = 9 Then
                        reckgs = (val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, .ActiveRow)) + val(GetText(SpdEmpAllocation, SpdAllocation.SPDDWasteKg, .ActiveRow)) + val(GetText(SpdEmpAllocation, SpdAllocation.SPDDIinvisibleLoss, .ActiveRow)))
                        If reckgs > val(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, .ActiveRow)) Then
                                MsgBox "Received Kgs + Waste Kgs + invisible loss Cannot be Grater than Balance Kgs", vbInformation, head
                                .SetText SpdAllocation.SPDDRECQTY, .ActiveRow, ""
                                .SetText SpdAllocation.SPDDWasteKg, .ActiveRow, ""
                                .SetText SpdAllocation.SPDDIinvisibleLoss, .ActiveRow, ""
                                Exit Sub
                        End If
                   End If
                   
                   
               
                
'                    If (.ActiveCol = SpdAllocation.SPDDRECQTY) Or (.ActiveCol = SpdAllocation.SPDDBALQTY) Then
'                            .SetText SpdAllocation.SPDDWasteKg, .ActiveRow, Format(val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, .ActiveRow)) * val(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, .ActiveRow)), "#0.00")
'                    End If
'
'                        If (.ActiveCol = SpdAllocation.SPDVVarName) And KeyCode = 9 Then
'
'                        Set Rs = New Recordset
'                        Rs.Open "select VARCODE 'Variety Code',VARNAME 'Variety Name',CatCD 'Category Code',b.CatName 'Category Name' from rm_var a inner join rm_cat b on a.catcd=b.catcd where varname='" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarName, .ActiveRow)) & "' ", DB, adOpenStatic
'                        If Rs.EOF Then
'
'                            LookUp.Clear = True
'                           LookUp.query = "select VARCODE 'Variety Code',VARNAME 'Variety Name',CatCD 'Category Code',b.CatName 'Category Name' from rm_var a inner join rm_cat b on a.catcd=b.catcd where  varcode not in (" & VarProd & ") "
'                           LookUp.Caption = "Variety Listing"
'                           LookUp.DefCol = "Variety Name"
'                           LookUp.ALIGN = "2000,3500,0"
'                           LookUp.Show vbModal
'                           If LookUp.Cancel = False Then
'
'                                .SetText SpdAllocation.SPDVVarcode, .ActiveRow, LookUp.Fields(0)
'                                .SetText SpdAllocation.SPDVVarName, .ActiveRow, CStr(LookUp.Fields(1))
'                                .SetText SpdAllocation.SPDDDOCDT, .ActiveRow, CStr(LookUp.Fields(2))
'                               .SetText SpdAllocation.SPDDIinvisibleLoss, .ActiveRow, CStr(LookUp.Fields(3))
'
'
'
'                                    VarProd = VarProd + ",'" & Trim(LookUp.Fields(0)) & "'"
'                                    .Col = SpdAllocation.SPDDISQTY
'                                    .SetFocus
'                                    Exit Sub
'
'                               Else
'                                    .Col = SpdAllocation.SPDVVarName
'                                    .SetFocus
'                                    Cancel = True
'                                    Exit Sub
'                               End If
'                            Else
'
'                                .SetText SpdAllocation.SPDVVarcode, .ActiveRow, Rs(0)
'                                .SetText SpdAllocation.SPDVVarName, .ActiveRow, CStr(Rs(1))
'                                .SetText SpdAllocation.SPDDDOCDT, .ActiveRow, CStr(LookUp.Fields(2))
'                               .SetText SpdAllocation.SPDDIinvisibleLoss, .ActiveRow, CStr(LookUp.Fields(3))
'
'                                .Col = SpdAllocation.SPDDISQTY
'                                .SetFocus
'
'                            End If
'
'                           End If
'
                
                    If (.ActiveCol = SpdAllocation.SPDVVarName) And KeyCode = 9 Then
'                        If MsgBox("Do you want to add another Variety?", vbYesNo, head) = vbYes Then
'                         SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
'
'                         SpdEmpAllocation.Col = SpdAllocation.SPDC
'                         SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, SpdEmpAllocation.MaxRows, SpdEmpAllocation.MaxRows
'                         SpdEmpAllocation.SetFocus
'
'                         Else
'
'                         End If
                    End If
            End If
        End If
    End With
'End If
End Sub

Private Sub SpdEmpAllocation_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)


If opt = "add" Or opt = "mod" Then
        If val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW)) = 0 And Col = SPDDRECQTY Then
        
               SpdEmpAllocation.Col = SpdAllocation.SPDDRECQTY
                SpdEmpAllocation.SetFocus
                Exit Sub
        End If
     With SpdEmpAllocation
                If (.ActiveCol = SpdAllocation.SPDDRECQTY) Or (.ActiveCol = SpdAllocation.SPDDWasteKg) Or (.ActiveCol = SpdAllocation.SPDDIinvisibleLoss) Then
                    reckgs = (val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, .ActiveRow)) + val(GetText(SpdEmpAllocation, SpdAllocation.SPDDWasteKg, .ActiveRow)) + val(GetText(SpdEmpAllocation, SpdAllocation.SPDDIinvisibleLoss, .ActiveRow)))
                    If reckgs > val(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, .ActiveRow)) Then
                           ' MsgBox "Received Kgs + Waste Kgs + invisible loss Cannot be Grater than Balance Kgs", vbInformation, head
                            .SetText SpdAllocation.SPDDRECQTY, .ActiveRow, ""
                            .SetText SpdAllocation.SPDDWasteKg, .ActiveRow, ""
                            .SetText SpdAllocation.SPDDIinvisibleLoss, .ActiveRow, ""
                            Exit Sub
                    End If
                    Dim TotRecQty, TotWasteKg, TotInvisibleLoss As Double
                    TotRecQty = 0: TotWasteKg = 0: TotInvisibleLoss = 0
                    
                    For RW = 1 To .MaxRows
                        .Row = RW
                        TotRecQty = TotRecQty + val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW))
                        TotInvisibleLoss = TotInvisibleLoss + val(GetText(SpdEmpAllocation, SpdAllocation.SPDDIinvisibleLoss, RW))
                        TotWasteKg = TotWasteKg + val(GetText(SpdEmpAllocation, SpdAllocation.SPDDWasteKg, RW))
                    Next
                    txtfields(13).Text = Format(TotRecQty, "#0.000")
                    txtfields(14).Text = Format(TotWasteKg, "#0.000")
                    txtfields(15).Text = Format(TotInvisibleLoss, "#0.000")
                    
                End If

          
            
                
        
                If (.ActiveCol = SpdAllocation.SPDDRECQTY) Or (.ActiveCol = SpdAllocation.SPDDBALQTY) Then
                     '   .SetText SpdAllocation.SPDDWasteKg, .ActiveRow, Format(val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, .ActiveRow)) * val(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, .ActiveRow)), "#0.00")
                End If
                
                    If (.ActiveCol = SpdAllocation.SPDDRECQTY) And val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, .ActiveRow)) = 0 Then
'
                    Col = SpdAllocation.SPDDRECQTY
                    .SetFocus
                   
                    Exit Sub

                End If
                
     End With


End If
'If Opt = "add" Or Opt = "mod" Then
''    Dim Shift1hr, Shift2hr, Shift3hr As Double
''    Shift1hr = 0: Shift2hr = 0: Shift3hr = 0
'     With SpdEmpAllocation
'          If .ActiveCol = SpdAllocation.SPDVVarName And Val(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarName, .ActiveRow)) = 0 Then
'
'
'
'                       LookUp.clear = True
'
'                       LookUp.query = "select VARNAME 'Ticket No',Ename 'Employee Name',Varcode 'Employee No.',CATCD 'Desig. Code' ,CATNAME 'Designation',Slcode 'Department Code',wcat 'Category Code' from Vw_EmployeeAllocate a wHERE a.Varcode not  in (" & EmployeeNo & ") and  A.DIVCODE='" & divcode & "' AND (A.wcat ='" & Trim(TXTFIELDS(8).Text) & "' or '" & Trim(TXTFIELDS(8).Text) & "'='A')  and (A.Slcode ='" & Trim(TXTFIELDS(9).Text) & "' or '" & Trim(TXTFIELDS(9).Text) & "'='A') and doj<='" & Format(pdate, "yyyy-mm-dd") & "' and (dor is null or dor>='" & Format(pdate, "yyyy-mm-dd") & "') and Varcode not in (select Varcode from RM_JWOpeningDT where docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and divcode='" & divcode & "')"
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
'                            .SetText SpdAllocation.SPDDISQTY, .ActiveRow, LookUp.Fields(0)
'                            .SetText SpdAllocation.SPDVVarcode, .ActiveRow, LookUp.Fields(2)
'                            .SetText SpdAllocation.SPDVVarName, .ActiveRow, LookUp.Fields(1)
'
'                            .SetText SpdAllocation.SPDDISQTYDesc, .ActiveRow, LookUp.Fields("Desig. Code")
'                            .SetText SpdAllocation.SPDDBALQTY, .ActiveRow, LookUp.Fields("Designation")
'
'                            .SetText SpdAllocation.SPDVVarName, .ActiveRow, LookUp.Fields("Employee Name")
'                            .SetText SpdAllocation.SPDD .ActiveRow, LookUp.Fields("Category Code")
'                            .SetText SpdAllocation.SPDDWasteKg, .ActiveRow, LookUp.Fields("Department Code")
'
'                            Set rsexp = New Recordset
'                            rsexp.Open "select  isnull(EmpPaid,0) EmpPaid ,isnull(CompPaid,0) CompPaid  from PR_Messexp where divcode='" & divcode & "'  and ExpCode ='" & Trim(TXTFIELDS(5).Text) & "'", DB, adOpenStatic
'                            If Not rsexp.EOF Then
'
'                                SpdEmpAllocation.SetText SpdAllocation.SPDDDPaidComp, .ActiveRow, rsexp(0)
'                                SpdEmpAllocation.SetText SpdAllocation.SPDDDPaidEmp, .ActiveRow, rsexp(1)
'                            End If
'
'
'                            SpdEmpAllocation.Col = SpdAllocation.SPDDDQty
'                            SpdEmpAllocation.SetFocus
'                            Exit Sub
'
'                       Else
'                            .Col = SpdAllocation.SPDVVarName
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
'                If (.ActiveCol = SpdAllocation.SPDDDQty Or .ActiveCol = SpdAllocation.SPDDDExQty) And Val(GetText(SpdEmpAllocation, SpdAllocation.SPDVVarcode, .ActiveRow)) = 0 Then
'
'                    .Col = SpdAllocation.SPDDISQTY
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
'                If (.ActiveCol = SpdAllocation.SPDDISQTYDesc) And Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTYDesc, .ActiveRow)) = "" Then
''
'                    .Col = SpdAllocation.SPDDISQTYDesc
'                    .SetFocus
'                    Cancel = True
'                    Exit Sub
'
'                End If
'
'                If (.ActiveCol = SpdAllocation.SPDDRECQTY) And val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, .ActiveRow)) = 0 Then
''
'                    .Col = SpdAllocation.SPDDRECQTY
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
    .MaxCols = E_SIZELISTDC1.SPDISIBALQTY
    .RowHeadersShow = False
    .Row = 1
    .FontBold = True
    .OperationMode = OperationModeRow
    .TypeCheckCenter = True
    .TypeCheckType = TypeCheckTypeThreeState
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSCHECK1, " ", CellTypeCheckBox, 4, , False, False
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSSNO, "S.No.", CellTypeStaticText, 4, , False, True
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDISDOCNO, "issue Doc.No.", CellTypeNumber, 15, 0, False, True
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDISDOCDT, "Issue Doc.Dt", CellTypeStaticText, 15, 0, False, True
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDISISSUEDQTY, "Issued Qty", CellTypeNumber, 10, 3, True, True
    .TypeHAlign = TypeHAlignRight
    
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, "Variety Code.", CellTypeStaticText, 15, 0, True, True
    .Col = E_SIZELISTDC1.SPDSBVARCODE
'    .TypeHAlign = TypeHAlignRight
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSBVARNAME, "Variety Name", CellTypeStaticText, 35, 0, False, True
    .Col = E_SIZELISTDC1.SPDSBVARNAME
     SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDISIBALQTY, "Balance Qty", CellTypeNumber, 10, 3, False, True
    .TypeHAlign = TypeHAlignRight

    

End With
Check1.value = False
End Sub


Private Sub SETDISCTYPEHead()
With SPDDiscTypeDet
        .ClearSelection
        .MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDDISQTY2DESC
        .MaxCols = SPDDTDRate
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTSNO, "S.No", CellTypeStaticText, 8, , False, True    'a
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVARSNO, "Variety Sno.", CellTypeStaticText, 10, , True, True 'b        .Col = SpdAllocation.SPDVSNO
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
       ' .ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDDISQTY2DESC
        .MaxCols = SPDDIinvisibleLoss
        .Row = 1
      '  .TypeTextWordWrap = True
      '  .TypeHAlign = TypeHAlignLeft
        .FontBold = True
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDVSNO, "S.No", CellTypeStaticText, 4, , False, True    'a

'
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDVVarcode, "Variety Code", CellTypeStaticText, 12, , False, True 'd
        
           SpdEmpAllocation.Col = SpdAllocation.SPDVVarcode
        SpdEmpAllocation.TypeHAlign = TypeHAlignLeft
        
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDVVarName, "Variety", CellTypeEdit, 30, , False, True 'e
         SpdEmpAllocation.Col = SpdAllocation.SPDVVarName
        SpdEmpAllocation.TypeHAlign = TypeHAlignLeft
      '  .Col = SpdAllocation.SPDDDOCNO
     '  .TypeNumberDecPlaces = "0"
         SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDDOCNO, "Doc.No.", CellTypeStaticText, 10, , False, True 'i
         
        
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDISQTY, "Issued Wt.", CellTypeNumber, 10, 3, False, True   'f
        SpdEmpAllocation.Col = SpdAllocation.SPDDISQTY
        SpdEmpAllocation.TypeHAlign = TypeHAlignLeft

        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDDOCDT, "Doc.Date", CellTypeStaticText, 12, , False, True  'i
        
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDBALQTY, "Balance Wt.", CellTypeNumber, 10, 3, False, True  'i
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDRECQTY, "Receipt Wt.", CellTypeNumber, 10, 3, False, False  'i
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDIinvisibleLoss, "Invisible Loss", CellTypeNumber, 10, 3, False, False  'i
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDWasteKg, "Waste Kgs", CellTypeNumber, 10, 3, False, fa   'i
        
    End With
End Sub



Private Sub SETFinishedDetHead()
With SPFinishedProd
        .ClearSelection
        .MaxRows = 0
       ' .ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDDISQTY2DESC
        .MaxCols = SPDFWasteKg3
        .Row = 1
      '  .TypeTextWordWrap = True
      '  .TypeHAlign = TypeHAlignLeft
        .FontBold = True
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFVSNO, "S.No", CellTypeStaticText, 4, , False, True    'a

'
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFPrrodCode, "Product Code", CellTypeEdit, 12, , False, False 'd
        
           SPFinishedProd.Col = SpdFinished.SPDFPrrodCode
        SPFinishedProd.TypeHAlign = TypeHAlignLeft
        
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFProdName, "Product Name", CellTypeStaticText, 25, , False, True 'e
         SPFinishedProd.Col = SpdFinished.SPDFProdName
        SPFinishedProd.TypeHAlign = TypeHAlignLeft
      '  .Col = SpdFinished.SPDDDOCNO
     '  .TypeNumberDecPlaces = "0"
         SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFPackNoType, "Pack No Code", CellTypeStaticText, 8, , True, True 'i
         
        
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFPackNoTypeDesc, "Pack No. Type", CellTypeEdit, 9, 0, False, False     'f
        SPFinishedProd.Col = SpdFinished.SPDFPackNoTypeDesc
        SPFinishedProd.TypeHAlign = TypeHAlignLeft

        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFPackType, "Pack Type", CellTypeStaticText, 7, , True, True  'i
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFPackTypeDesc, "Pack Type", CellTypeEdit, 9, , False, False  'i
        
        
        
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFNoofPacks, "No. of Packs", CellTypeNumber, 8, 0, False, False  'i
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFKgs, "Kgs", CellTypeNumber, 8, 3, False, False
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFWaste1, "Waste1", CellTypeEdit, 8, 0, False, False
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFWasteKg1, "Waste Kgs1", CellTypeNumber, 8, 3, False, False
        
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFWaste2, "Waste2", CellTypeEdit, 8, 0, False, False
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFWasteKg2, "Waste Kgs2", CellTypeNumber, 8, 3, False, False
          
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFWaste3, "Waste3", CellTypeEdit, 8, 0, False, False  '
        SetSpreadCol1 SPFinishedProd, SpdFinished.SPDFWasteKg3, "Waste Kgs3", CellTypeNumber, 8, 3, False, False
        
        
    End With
End Sub
'
'Private Sub SETDESPATCHHead()
'With SpdEmpAllocation
'        .ClearSelection
'        .MaxRows = 0
'        '.ColHeadersAutoText = DispBlank
'        .ClearSelection
'        '.MaxCols = SPDDISQTY2DESC
'        .MaxCols = SPDDWasteKg
'        .Row = 1
'        .TypeTextWordWrap = True
'        .FontBold = True
'        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDVSNO, "S.No", CellTypeStaticText, 4, , False, True    'a
'
'
'
'        SetSpreadCol SpdEmpAllocation, SpdAllocation.SPDDDOCNO, "Supplier Code.", CellTypeStaticText, 10, , True, True 'b        .Col = SpdAllocation.SPDVSNO
''        .TypeHAlign = TypeHAlignLeft
''
'       SetSpreadCol SpdEmpAllocation, SpdAllocation.SPDDDOCDT, "CATCD.", CellTypeStaticText, 8, , True, True 'b
'        SetSpreadCol SpdEmpAllocation, SpdAllocation.SPDDDOCDT, "Category.", CellTypeStaticText, 10, , False, True 'b
'        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDVVarcode, "Variety.", CellTypeStaticText, 8, , True, True 'i
'       SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDVVarName, "Variety Name.", CellTypeStaticText, 12, , False, True 'i
'
'        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDISQTY, "TotalBale Code", CellTypeStaticText, 8, , True, True 'd
'        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDISQTYDesc, "TotalBale", CellTypeEdit, 8, , False, False 'd
'
'        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDBALQTYCD, "Rate Unit ", CellTypeStaticText, 10, 0, True, True 'e
'        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDBALQTY, "Rate Unit ", CellTypeEdit, 10, 0, False, False 'e
''
'
'        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDRECQTY, "Candy Rate", CellTypeNumber, 8, 2, False, False  'i
'         SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDWasteKg, "Rate/KG", CellTypeNumber, 8, 2, True, True  'i
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
    adoPrimaryRS.Open "SHAPE {SELECT Divcode,Docno,Docdate,Slcode,IssType,JBType,DCNo,DCDate,InwardType,VehcileNo,CarCode,RealisationPer,TotIssKgs,totRecKgs,TotWastekgs,TotInLosskgs,Totpacks,TotPackKgs,TotPackWastekg1,TotPackWastekg2,TotPackWastekg3 FROM IG_JWRecHD  a where    " & _
    "   DocDate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' " & _
    " Order by DocDate,DOCNO} AS ParentCMD APPEND ({SELECT a.Divcode,a.DocNo,a.DocDate,a.Docsno,a.Varcode,a.IssDocno,a.IssDocDt,a.IssuedQty,a.BalKgs,a.RecKgs,a.WasteKgs,a.InvisibleKgs,b.varname FROM IG_JWRecDT a inner join rm_var b on a.varcode=b.varcode WHERE  DOCDATE  between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'  Order by a.DOCDATE ,a.DOCSNO } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDATE TO DOCDATE,Divcode to Divcode) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic


Exit Sub
qry1_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qry1 of Form FrmFibre Rate"

End Sub
Private Sub Form_Resize()
    Buttonframe.Width = Me.Width
    intervalMinutes = -1
    

On Error Resume Next

    ''For Entry Form
    stbar.Panels(2).Width = Me.Width - val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
'    Buttonframe.Width = Me.Width - 200
'
'    SSTab1.Width = Me.Width - 400
'    SSTab2.Width = Me.Width - 600
'    FraDespatch.Width = Me.Width - 600
'    SpdEmpAllocation.Width = Me.Width - 1000
'    SPFinishedProd.Width = Me.Width - 1000
'
'    SSTab1.Height = Me.Height - 2100
'    SSTab2.Height = Me.Height - 5500
'    FraDespatch.Height = Me.Height - 2500
'    SpdEmpAllocation.Height = (SpdEmpAllocation.Height - 60) 'Me.Height - 2500
'    SPFinishedProd.Height = (SpdEmpAllocation.Height - 60) 'Me.Height - 2500
'    Label11.Top = Me.Height - 2600
'    txtNarr.Top = Me.Height - 2650
        
    ''For PO Order List Frame
    Frame8.Top = (Me.Height / 2) - (Frame8.Height / 2)
    Frame8.Left = (Me.Width / 2) - (Frame8.Width / 2)



    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Screen.MousePointer = vbDefault
    If opt = "add" Or opt = "mod" Or opt = "del" Then
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
'        .MaxCols = SpdAllocation.SPDDISQTY2DESC
'        .CursorStyle = CursorStyleArrow
'
'        RW = 1
'        Do While Not adoSecondaryRS.EOF
'            .MaxRows = .MaxRows + 1
'            .SetText SpdAllocation.SPDVSNO, RW, adoSecondaryRS("DocSno")
'            .SetText SpdAllocation.SPDDVarcode, RW, adoSecondaryRS("Varcode")
'            .SetText SpdAllocation.SPDDISQTY, RW, adoSecondaryRS("VARNAME")
'            .SetText SpdAllocation.SPDVVarcode, RW, adoSecondaryRS("ManPower")
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
    If opt = "add" Then
        DTPicker1.value = Format(pdate, "dd/mm/yyyy")
    End If
    'FraDespatch.Enabled = True
End Sub


Private Sub SPFinishedProd_KeyDown(KeyCode As Integer, Shift As Integer)
If opt = "add" Then
    With SPFinishedProd
                If (.ActiveCol = SpdFinished.SPDFPrrodCode) And KeyCode = 9 Then

                        Set Rs = New Recordset
                        Rs.Open "select  Product_code, Description from ig_product where Divcode='" & Divcode & "' and Product_code='" & Trim(GetText(SPFinishedProd, SpdFinished.SPDFPrrodCode, .ActiveRow)) & "' ", DB, adOpenStatic
                        If Rs.EOF Then
                            LookUp.Clear = True
                            LookUp.query = "select  Product_code, Description from ig_product where Divcode='" & Divcode & "' and   Product_code not in (" & VarProd & ") "
                            LookUp.Caption = "Product Listing"
                            LookUp.DefCol = "Description"
                            LookUp.ALIGN = "1500,3500"
                            LookUp.Show vbModal
                            If LookUp.Cancel = False Then

                                .SetText SpdFinished.SPDFPrrodCode, .ActiveRow, LookUp.Fields(0)
                                .SetText SpdFinished.SPDFProdName, .ActiveRow, CStr(LookUp.Fields(1))
     
                                    VarProd = VarProd + ",'" & Trim(LookUp.Fields(0)) & "'"
                                    .Col = SpdFinished.SPDFPackNoTypeDesc
                                    .SetFocus
                                    Exit Sub

                               Else
                                    .Col = SpdFinished.SPDFPrrodCode
                                    .SetFocus
                                    Cancel = True
                                    Exit Sub
                               End If
                        Else

                                .SetText SpdFinished.SPDFPrrodCode, .ActiveRow, Rs(0)
                                .SetText SpdFinished.SPDFProdName, .ActiveRow, CStr(Rs(1))
                                .Col = SpdFinished.SPDFPackNoTypeDesc
                                .SetFocus
                        End If
            End If
            If (.ActiveCol = SpdFinished.SPDFPackNoTypeDesc) And KeyCode = 9 Then
                        Set Rs = New Recordset
                        Rs.Open "select PackNo_Code,Description from ig_packnotype where Divcode='" & Divcode & "' and Description='" & Trim(GetText(SPFinishedProd, SpdFinished.SPDFPackNoTypeDesc, .ActiveRow)) & "' ", DB, adOpenStatic
                        If Rs.EOF Then
                            LookUp.Clear = True
                            LookUp.query = "select PackNo_Code,Description from ig_packnotype where Divcode='" & Divcode & "'  "
                            LookUp.Caption = "Pack No type Listing"
                            LookUp.DefCol = "Description"
                            LookUp.ALIGN = "1500,3500"
                            LookUp.Show vbModal
                            If LookUp.Cancel = False Then
                                    .SetText SpdFinished.SPDFPackNoType, .ActiveRow, LookUp.Fields(0)
                                    .SetText SpdFinished.SPDFPackNoTypeDesc, .ActiveRow, CStr(LookUp.Fields(1))
                                    .Col = SpdFinished.SPDFNoofPacks
                                    .SetFocus
                                    Exit Sub
                               Else
                                    .Col = SpdFinished.SPDFPackNoTypeDesc
                                    .SetFocus
                                    Cancel = True
                                    Exit Sub
                               End If
                        Else
                                .SetText SpdFinished.SPDFPackNoType, .ActiveRow, Rs(0)
                                .SetText SpdFinished.SPDFPackNoTypeDesc, .ActiveRow, CStr(Rs(1))
                                .Col = SpdFinished.SPDFPackTypeDesc
                                .SetFocus
                        End If
            End If
            
            If (.ActiveCol = SpdFinished.SPDFPackTypeDesc) And KeyCode = 9 Then
                        Set Rs = New Recordset
                        Rs.Open "select Pack_Type,Description from ig_packtype where Description='" & Trim(GetText(SPFinishedProd, SpdFinished.SPDFPackTypeDesc, .ActiveRow)) & "' ", DB, adOpenStatic
                        If Rs.EOF Then
                            LookUp.Clear = True
                            LookUp.query = "select Pack_Type,Description from ig_packtype   "
                            LookUp.Caption = "Pack Type Listing"
                            LookUp.DefCol = "Description"
                            LookUp.ALIGN = "1500,3500"
                            LookUp.Show vbModal
                            If LookUp.Cancel = False Then
                                .SetText SpdFinished.SPDFPackType, .ActiveRow, LookUp.Fields(0)
                                .SetText SpdFinished.SPDFPackTypeDesc, .ActiveRow, CStr(LookUp.Fields(1))
                                .Col = SpdFinished.SPDFNoofPacks
                                .SetFocus
                                Exit Sub
                               Else
                                    .Col = SpdFinished.SPDFPackTypeDesc
                                    .SetFocus
                                    Cancel = True
                                    Exit Sub
                               End If
                        Else
                                .SetText SpdFinished.SPDFPackType, .ActiveRow, Rs(0)
                                .SetText SpdFinished.SPDFPackTypeDesc, .ActiveRow, CStr(Rs(1))
                                .Col = SpdFinished.SPDFNoofPacks
                                .SetFocus
                        End If
            End If
            
            If (.ActiveCol = SpdFinished.SPDFWaste1) And KeyCode = 9 Then
                        Set Rs = New Recordset
                        Rs.Open "select  Product_code, Description  from ig_rproduct where Divcode='" & Divcode & "' and Product_code='" & Trim(GetText(SPFinishedProd, SpdFinished.SPDFWaste1, .ActiveRow)) & "' ", DB, adOpenStatic
                        If Rs.EOF Then
                            LookUp.Clear = True
                            LookUp.query = "select  Product_code, Description  from ig_rproduct where Divcode='" & Divcode & "'   "
                            LookUp.Caption = "Pack Type Listing"
                            LookUp.DefCol = "Description"
                            LookUp.ALIGN = "1500,3500"
                            LookUp.Show vbModal
                            If LookUp.Cancel = False Then
                                    .SetText SpdFinished.SPDFWaste1, .ActiveRow, LookUp.Fields(0)
                                    .Col = SpdFinished.SPDFWasteKg1
                                    .SetFocus
                                    Exit Sub
                            Else
                                    .Col = SpdFinished.SPDFWaste1
                                    .SetFocus
                                   ' Cancel = True
                                    Exit Sub
                            End If
                        Else
                                .SetText SpdFinished.SPDFWaste1, .ActiveRow, Rs(0)
                                .Col = SpdFinished.SPDFWasteKg1
                                .SetFocus
                        End If
            End If
            
             If (.ActiveCol = SpdFinished.SPDFWaste2) And KeyCode = 9 Then
                        Set Rs = New Recordset
                        Rs.Open "select  Product_code, Description  from ig_rproduct where Divcode='" & Divcode & "' and Product_code='" & Trim(GetText(SPFinishedProd, SpdFinished.SPDFWaste2, .ActiveRow)) & "' ", DB, adOpenStatic
                        If Rs.EOF Then
                            LookUp.Clear = True
                            LookUp.query = "select  Product_code, Description  from ig_rproduct where Divcode='" & Divcode & "'   "
                            LookUp.Caption = "Waste product Listing"
                            LookUp.DefCol = "Description"
                            LookUp.ALIGN = "1500,3500"
                            LookUp.Show vbModal
                            If LookUp.Cancel = False Then
                                    .SetText SpdFinished.SPDFWaste2, .ActiveRow, LookUp.Fields(0)
                                    .Col = SpdFinished.SPDFWasteKg2
                                    .SetFocus
                                    Exit Sub
                            Else
                                    .Col = SpdFinished.SPDFWaste2
                                    .SetFocus
                                    'Cancel = True
                                    Exit Sub
                            End If
                        Else
                                .SetText SpdFinished.SPDFWaste2, .ActiveRow, Rs(0)
                                .Col = SpdFinished.SPDFWasteKg2
                                .SetFocus
                        End If
            End If
            
            If (.ActiveCol = SpdFinished.SPDFWaste3) And KeyCode = 9 Then
                        Set Rs = New Recordset
                        Rs.Open "select  Product_code, Description  from ig_rproduct where Divcode='" & Divcode & "' and Product_code='" & Trim(GetText(SPFinishedProd, SpdFinished.SPDFWaste3, .ActiveRow)) & "' ", DB, adOpenStatic
                        If Rs.EOF Then
                            LookUp.Clear = True
                            LookUp.query = "select  Product_code, Description  from ig_rproduct where Divcode='" & Divcode & "'   "
                            LookUp.Caption = "Waste product Listing"
                            LookUp.DefCol = "Description"
                            LookUp.ALIGN = "1500,3500"
                            LookUp.Show vbModal
                            If LookUp.Cancel = False Then
                                    .SetText SpdFinished.SPDFWaste3, .ActiveRow, LookUp.Fields(0)
                                    .Col = SpdFinished.SPDFWasteKg3
                                    .SetFocus
                                    Exit Sub
                            Else
                                    .Col = SpdFinished.SPDFWaste3
                                    .SetFocus
                                    'Cancel = True
                                    Exit Sub
                            End If
                        Else
                                .SetText SpdFinished.SPDFWaste3, .ActiveRow, Rs(0)
                                .Col = SpdFinished.SPDFWasteKg3
                                .SetFocus
                        End If
            End If
                If (.ActiveCol = SpdFinished.SPDFWasteKg3) And KeyCode = 9 Then
                        If MsgBox("Do you want to add another Product?", vbYesNo, head) = vbYes Then
                             SPFinishedProd.MaxRows = SPFinishedProd.MaxRows + 1
                             SPFinishedProd.Col = SpdFinished.SPDFPrrodCode
                             SPFinishedProd.SetText SpdFinished.SPDFVSNO, SPFinishedProd.MaxRows, SPFinishedProd.MaxRows
                             SPFinishedProd.SetFocus
                         Else

                         End If
                End If
            
End With
End If
End Sub

Private Sub SPFinishedProd_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)

If opt = "add" Or opt = "mod" Then

     With SPFinishedProd
                If (.ActiveCol = SpdFinished.SPDFWasteKg1) Or (.ActiveCol = SpdFinished.SPDFKgs) Or (.ActiveCol = SpdFinished.SPDFWasteKg2) Or (.ActiveCol = SpdFinished.SPDFWasteKg3) Then
                    reckgs = (val(GetText(SPFinishedProd, SpdFinished.SPDFKgs, .ActiveRow)) + val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg1, .ActiveRow)) + val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg2, .ActiveRow)) + val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg3, .ActiveRow)))
            
                    Dim TotRecQty, TotWasteKg1, TotWasteKg2, TotWasteKg3, TotWasteKg, TotInvisibleLoss, Noofpack As Double
                    TotRecQty = 0: TotWasteKg = 0: TotInvisibleLoss = 0: TotWasteKg1 = 0: TotWasteKg2 = 0: TotWasteKg3 = 0
                    Noofpack = 0
               
                    For RW = 1 To .MaxRows
                        .Row = RW
                        TotRecQty = TotRecQty + val(GetText(SPFinishedProd, SpdFinished.SPDFKgs, RW))
                        TotWasteKg1 = TotWasteKg1 + val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg1, RW))
                        TotWasteKg2 = TotWasteKg2 + val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg2, RW))
                        TotWasteKg3 = TotWasteKg3 + val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg3, RW))
                        TotWasteKg = TotWasteKg + (val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg1, RW)) + val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg2, RW)) + val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg3, RW)))
                        Noofpack = Noofpack + val(GetText(SPFinishedProd, SpdFinished.SPDFNoofPacks, RW))
                    Next
                    
                    If val(TotRecQty) > val(txtfields(13)) Then
                           ' MsgBox "Received Kgs + Waste Kgs + invisible loss Cannot be Grater than Balance Kgs", vbInformation, head
                            .SetText SpdFinished.SPDFKgs, .ActiveRow, ""
                            TotRecQty = TotRecQty - val(GetText(SPFinishedProd, SpdFinished.SPDFKgs, Row))
                            Exit Sub
                    End If
                    
                    If val(TotWasteKg) > val(txtfields(14)) Then
                            .SetText SpdFinished.SPDFWasteKg1, .ActiveRow, ""
                            .SetText SpdFinished.SPDFWasteKg2, .ActiveRow, ""
                            .SetText SpdFinished.SPDFWasteKg3, .ActiveRow, ""
                            TotWasteKg1 = TotWasteKg1 - val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg1, Row))
                            TotWasteKg2 = TotWasteKg2 - val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg2, Row))
                            TotWasteKg3 = TotWasteKg3 - val(GetText(SPFinishedProd, SpdFinished.SPDFWasteKg3, Row))
                    End If
                    
                    txtfields(21).Text = Format(Noofpack, "0")
                    txtfields(20).Text = Format(TotRecQty, "#0.000")
                    txtfields(19).Text = Format(TotWasteKg1, "#0.000")
                    txtfields(22).Text = Format(TotWasteKg2, "#0.000")
                    txtfields(18).Text = Format(TotWasteKg3, "#0.000")
                    
                End If
     End With
End If
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

Private Sub Txtfields_Change(Index As Integer)
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

    TmpRs.Open "select  Issue_Code,Issue_Desc from rm_issuetype where Issue_Code ='" & txtfields(1).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
 
    If Not TmpRs.EOF Then
        txtfields(4).Text = TmpRs("Issue_Desc")
    Else
        txtfields(4).Text = ""
    End If

Case 5
    Set TmpRs = New Recordset

    TmpRs.Open "select  Code,Detail from Vw_JBDesc where Code ='" & txtfields(5).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
 
    If Not TmpRs.EOF Then
        txtfields(6).Text = TmpRs("Detail")
    Else
        txtfields(6).Text = ""
    End If
Case 8

    Set Rstm = New Recordset
    Rstm.Open "select carcode,carname from po_car where carcode='" & txtfields(8).Text & "'", DB
    If Rstm.RecordCount > 0 Then
        txtfields(8).Text = Rstm(0)
        txtfields(7).Text = Rstm(1)
    Else
        txtfields(7).Text = ""
    End If
    
Case 17
    Set TmpRs = New Recordset

    TmpRs.Open "select  Code,Detail from Vw_JBInwardDesc where Code ='" & txtfields(17).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
 
    If Not TmpRs.EOF Then
        txtfields(16).Text = TmpRs("Detail")
    Else
        txtfields(16).Text = ""
    End If
End Select
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
    Case 5, 9
        'Call ToUpCase(TXTFIELDS(Index), KeyAscii, 15)
        Call ToAlphaNumber(txtfields(Index), 15, KeyAscii)
        Call ToUpCase(txtfields(Index), KeyAscii)
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
If opt = "add" Or opt = "mod" Then
    Select Case Index
        Case 6
          '  BUTTON(9).SetFocus
          
        Case 3
            
    End Select

End If
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)

If opt = "add" Or opt = "mod" Then
Select Case Index

Case 3
    If txtfields(3).Text = "" And SupSEL = False Then
        LookUp.Clear = True
        LookUp.query = "Select distinct a.Slcode 'Supplier Code',a.slname 'Supplier Name' FROM  VW_JBIssueDetailsFinished a where ISSTYPE='" & Trim(txtfields(1).Text) & "' and  docdt<='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'  and a.divcode='" & Divcode & "'  " '' union select Top 1 'A', ' ALL'
        LookUp.Caption = "Supplier Listing"
        LookUp.DefCol = "Supplier Name"
        LookUp.ALIGN = "1200,3500"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(3).Text = LookUp.Fields(0)
            txtfields(2).Text = LookUp.Fields(1)
            
            LookUp.Clear = True
            Buttonframe.Enabled = True
'
'                    Frame10.Visible = True
                    FraOrd.ZOrder
                    FraOrd.Visible = True
                   ' Buttonframe.Enabled = False
                   ' stbar.Panels(2).Text = "Select an Variety from the list"
                    Call SETSIZEORDHead
                   ' SpdSIZEORD.CursorStyle = CursorStyleArrow
                   ' Dim ItmRs As Recordset
                    Set ItmRs = New Recordset
                    ItmRs.Open " select docno,docdt,varname,varcode,sum(isnull(ISSKGS,0)) ISSKGS,isnull(sum(isnull(BalKgs,0)),0) BalKgs from VW_JBIssueDetailsFinished a wHERE ISSTYPE='" & Trim(txtfields(1).Text) & "' and slcode='" & Trim(txtfields(3).Text) & "' and Divcode='" & Divcode & "' and docdt<='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' group by docno,docdt,varname,varcode", DB, adOpenStatic, adLockBatchOptimistic
                    RW = 1
                    Do While Not ItmRs.EOF
                        SpdSIZEORD.MaxRows = SpdSIZEORD.MaxRows + 1
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDISDOCNO, RW, ItmRs("docno")
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDISDOCDT, RW, ItmRs("docdt")
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDSSNO, RW, SpdSIZEORD.MaxRows
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBVARNAME, RW, ItmRs("varname")
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBVARCODE, RW, ItmRs("varcode")
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDISISSUEDQTY, RW, ItmRs("ISSKGS")
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDISIBALQTY, RW, ItmRs("BalKgs")
                        RW = RW + 1
                        ItmRs.MoveNext
                    Loop
                    LookUp.Clear = True
                    txtfields(3).SetFocus
'                    FraOrd.ZOrder
'                    FraOrd.Visible = True
                    SpdSIZEORD.SetFocus
                    
                 '   Buttonframe.Enabled = True
                    CmdOrderOk.SetFocus
                    FraOrd.SetFocus
            
            
            Exit Sub
        Else
            LookUp.Clear = True
            Cancel = True
            txtfields(3).SetFocus
        End If
    End If
    
 Case 1
    Set TmpRs = New Recordset

    TmpRs.Open "select  Issue_Code,Issue_Desc from rm_issuetype where Issue_Code ='" & txtfields(1).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
 
    If TmpRs.EOF Then
        LookUp.Clear = True
        LookUp.query = "select  Issue_Code 'Code',Issue_Desc 'Description' from rm_issuetype"
        
        LookUp.Caption = "Issue Type Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1200,3500"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(1).Text = LookUp.Fields(0)
            txtfields(4).Text = LookUp.Fields(1)
    
            LookUp.Clear = True
            Buttonframe.Enabled = True
            Exit Sub
        Else
            LookUp.Clear = True
            Cancel = True
            txtfields(1).SetFocus
        End If
     Else
        txtfields(1).Text = TmpRs(0)
        txtfields(4).Text = TmpRs(1)
        
    End If
    
 Case 5
    Set TmpRs = New Recordset

    TmpRs.Open "select  Code,Detail from Vw_JBDesc where Code ='" & txtfields(5).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
 
    If TmpRs.EOF Then
        LookUp.Clear = True
        LookUp.query = "select  Code,Detail 'Description' from Vw_JBDesc "
        
        LookUp.Caption = "Jobwork Type Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1200,3500"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(5).Text = LookUp.Fields(0)
            txtfields(6).Text = LookUp.Fields(1)
    
            LookUp.Clear = True
            Buttonframe.Enabled = True
            Exit Sub
        Else
            LookUp.Clear = True
            Cancel = True
            txtfields(5).SetFocus
        End If
     Else
        txtfields(5).Text = TmpRs(0)
        txtfields(6).Text = TmpRs(1)
        
    End If
Case 8

    Set Rstm = New Recordset
    Rstm.Open "select carcode,carname from po_car where carcode='" & txtfields(8).Text & "'", DB
    If Rstm.RecordCount > 0 Then
        txtfields(8).Text = Rstm(0)
        txtfields(7).Text = Rstm(1)
    Else
        LookUp.Clear = True
        LookUp.query = "SELECT carcode""Carrier Code"",Carname""Carrier Name"" FROM PO_CAR"
        LookUp.DefCol = "Carrier Name"
        LookUp.Caption = "Carrier Listing"
        LookUp.ALIGN = "1500,3500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(8).Text = LookUp.Fields(0)
            txtfields(7).Text = LookUp.Fields(1)
            LookUp.Clear = True
        Else
            txtfields(7).Text = ""
            txtfields(8).SetFocus
            Cancel = True
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
 Case 17
    Set TmpRs = New Recordset

    TmpRs.Open "select  Code,Detail from Vw_JBInwardDesc where Code ='" & txtfields(17).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
 
    If TmpRs.EOF Then
        LookUp.Clear = True
        LookUp.query = "select  Code,Detail 'Description' from Vw_JBInwardDesc "
        
        LookUp.Caption = "Inward Type Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1200,3500"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(17).Text = LookUp.Fields(0)
            txtfields(16).Text = LookUp.Fields(1)
    
            LookUp.Clear = True
            Buttonframe.Enabled = True
            Exit Sub
        Else
            LookUp.Clear = True
            Cancel = True
            txtfields(17).SetFocus
        End If
     Else
        txtfields(17).Text = TmpRs(0)
        txtfields(16).Text = TmpRs(1)
        
    End If
'    Set TmpRs = New Recordset
'
'    TmpRs.Open "select cntcd,cntname from rm_count where Divcode='" & Divcode & "' and  cntcd ='" & TXTFIELDS(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
'
'    If TmpRs.EOF Then
'        LookUp.Clear = True
'        LookUp.query = "select cntcd 'Count Code',cntname 'Count Name' from rm_count where Divcode='" & Divcode & "' "
'
'        LookUp.Caption = "Mix Count Listing"
'        LookUp.DefCol = "Count Name"
'        LookUp.ALIGN = "1200,3500"
'
'        LookUp.Show vbModal
'        If LookUp.Cancel = False Then
'            TXTFIELDS(8).Text = LookUp.Fields(0)
'            TXTFIELDS(7).Text = LookUp.Fields(1)
'
'
'              FraOrd.ZOrder
'            FraOrd.Visible = True
'            Buttonframe.Enabled = False
'            stbar.Panels(2).Text = "Select an Categoty from the list"
'            Call SETSIZEORDHead
'            SpdSIZEORD.CursorStyle = CursorStyleArrow
'           ' Dim ItmRs As Recordset
'            Set ItmRs = New Recordset
'
'            ItmRs.Open " select * from  vw_VarietyList b  wHERE b.varcode not in (select varcode from Vw_RM_JBOpening aa  where  aa.Slcode='" & Trim(TXTFIELDS(3).Text) & "' and  docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and b.varcode=aa.varcode ) and varcode not in (" & VarProd & ") ", DB, adOpenStatic, adLockBatchOptimistic
'            RW = 1
'            Do While Not ItmRs.EOF
'                SpdSIZEORD.MaxRows = SpdSIZEORD.MaxRows + 1
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBVARCODE, RW, ItmRs("Varcode")
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBVARNAME, RW, ItmRs("VARNAME")
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDISDOCDT, RW, ItmRs("catcd")
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDISISSUEDQTY, RW, ItmRs("catname")
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDISDOCNO, RW, Trim(TXTFIELDS(3).Text)
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSSNO, RW, SpdSIZEORD.MaxRows
'
'
'
'                RW = RW + 1
'                ItmRs.MoveNext
'            Loop
'            SpdSIZEORD.SetFocus
'            LookUp.Clear = True
'
'            Buttonframe.Enabled = True
'
'            LookUp.Clear = True
'            Buttonframe.Enabled = True
'            Exit Sub
'        Else
'            LookUp.Clear = True
'            Cancel = True
'            TXTFIELDS(8).SetFocus
'        End If
'     Else
'        TXTFIELDS(8).Text = TmpRs(0)
'        TXTFIELDS(7).Text = TmpRs(1)
'
'    End If
'
Case 10, 9

    SpdEmpAllocation.SetFocus
     SpdEmpAllocation.Row = 1
    SpdEmpAllocation.Col = SpdAllocation.SPDDRECQTY
    SpdEmpAllocation.SetFocus
End Select
End If
End Sub




