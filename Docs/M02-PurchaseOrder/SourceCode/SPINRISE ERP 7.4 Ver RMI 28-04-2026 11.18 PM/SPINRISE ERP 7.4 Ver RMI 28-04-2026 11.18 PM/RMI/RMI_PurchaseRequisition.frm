VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form RMI_PurchaseRequisition 
   Caption         =   "Purchase Requisition (PR)"
   ClientHeight    =   8190
   ClientLeft      =   165
   ClientTop       =   -1995
   ClientWidth     =   11400
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8190
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport2 
      Left            =   9240
      Top             =   840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   7725
      Left            =   120
      TabIndex        =   21
      Top             =   1200
      Width           =   14775
      _ExtentX        =   26061
      _ExtentY        =   13626
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "RMI_PurchaseRequisition.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "SSTab2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin TabDlg.SSTab SSTab2 
         Height          =   4920
         Left            =   120
         TabIndex        =   44
         Top             =   2610
         Width           =   14640
         _ExtentX        =   25823
         _ExtentY        =   8678
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         TabCaption(0)   =   "Purchase Requisition Details"
         TabPicture(0)   =   "RMI_PurchaseRequisition.frx":001C
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame2"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         Begin VB.Frame Frame2 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   4530
            Left            =   45
            TabIndex        =   45
            Top             =   315
            Width           =   14550
            Begin FPSpreadADO.fpSpread SpdIndent 
               Height          =   4350
               Left            =   60
               TabIndex        =   16
               Top             =   150
               Width           =   14475
               _Version        =   524288
               _ExtentX        =   25532
               _ExtentY        =   7673
               _StockProps     =   64
               ArrowsExitEditMode=   -1  'True
               DAutoSizeCols   =   1
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
               MaxCols         =   11
               MaxRows         =   10
               ProcessTab      =   -1  'True
               ScrollBarExtMode=   -1  'True
               SpreadDesigner  =   "RMI_PurchaseRequisition.frx":0038
               Appearance      =   2
               ScrollBarStyle  =   3
            End
         End
      End
      Begin VB.Frame Frame1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2475
         Left            =   120
         TabIndex        =   22
         Top             =   45
         Width           =   14535
         Begin VB.ComboBox CmbPrtype 
            Appearance      =   0  'Flat
            Height          =   315
            ItemData        =   "RMI_PurchaseRequisition.frx":04A8
            Left            =   2070
            List            =   "RMI_PurchaseRequisition.frx":04AA
            Style           =   2  'Dropdown List
            TabIndex        =   13
            ToolTipText     =   "Select the PR. Type"
            Top             =   1080
            Width           =   4245
         End
         Begin VB.TextBox TxtRequester 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   3315
            TabIndex        =   20
            TabStop         =   0   'False
            Top             =   1605
            Width           =   3105
         End
         Begin VB.TextBox Txtfields 
            Appearance      =   0  'Flat
            DataField       =   "REQNAME"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            Height          =   330
            Index           =   3
            Left            =   2055
            TabIndex        =   14
            ToolTipText     =   "Select the Requester from list"
            Top             =   1605
            Width           =   1245
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFC0&
            DataField       =   "prno"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   2070
            TabIndex        =   18
            Top             =   600
            Width           =   1245
         End
         Begin VB.TextBox Txtfields 
            Appearance      =   0  'Flat
            DataField       =   "refno"
            Height          =   330
            Index           =   4
            Left            =   9360
            MaxLength       =   20
            TabIndex        =   15
            ToolTipText     =   "Enter the Reference maximum with 20 characters"
            Top             =   1530
            Width           =   2550
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "prdate"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   285
            Index           =   0
            Left            =   9375
            TabIndex        =   19
            ToolTipText     =   "Select or Enter the Date"
            Top             =   540
            Width           =   1170
            _ExtentX        =   2064
            _ExtentY        =   503
            _Version        =   393216
            Appearance      =   0
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
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
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Left            =   9360
            TabIndex        =   28
            Top             =   525
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            CalendarForeColor=   -2147483640
            Format          =   153812993
            CurrentDate     =   36218
         End
         Begin VB.Label LblDivision 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFD668&
            BorderStyle     =   1  'Fixed Single
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   240
            Left            =   2085
            TabIndex        =   12
            Top             =   180
            Width           =   90
         End
         Begin VB.Label LblUser 
            AutoSize        =   -1  'True
            Caption         =   "LblUser"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00009F00&
            Height          =   195
            Left            =   9390
            TabIndex        =   17
            Top             =   180
            Width           =   630
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "User Name"
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
            Index           =   7
            Left            =   7845
            TabIndex        =   43
            Top             =   180
            Width           =   915
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Division"
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
            Index           =   4
            Left            =   600
            TabIndex        =   42
            Top             =   180
            Width           =   660
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Arrival Type"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   1
            Left            =   600
            TabIndex        =   41
            Top             =   1140
            Width           =   1035
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Requester"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   570
            TabIndex        =   36
            Top             =   1680
            Width           =   885
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "PR.No."
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
            Index           =   2
            Left            =   600
            TabIndex        =   31
            Top             =   645
            Width           =   525
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Date"
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
            Index           =   3
            Left            =   7815
            TabIndex        =   30
            Top             =   585
            Width           =   405
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Reference"
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
            Index           =   8
            Left            =   7800
            TabIndex        =   29
            Top             =   1560
            Width           =   870
         End
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   120
      Top             =   5640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   645
      Left            =   -15
      TabIndex        =   25
      Top             =   -90
      Width           =   15210
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5280
         Picture         =   "RMI_PurchaseRequisition.frx":04AC
         Style           =   1  'Graphical
         TabIndex        =   47
         ToolTipText     =   "New Order Crystal Report Print (Ctrl Y)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMI_PurchaseRequisition.frx":08EE
         Height          =   510
         Index           =   0
         Left            =   60
         Picture         =   "RMI_PurchaseRequisition.frx":0BF8
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl+A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   6720
         Picture         =   "RMI_PurchaseRequisition.frx":0F8B
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Print (Ctrl+P)"
         Top             =   105
         Visible         =   0   'False
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMI_PurchaseRequisition.frx":13CD
         Height          =   510
         Index           =   3
         Left            =   1605
         Picture         =   "RMI_PurchaseRequisition.frx":16D7
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find (Ctrl+F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMI_PurchaseRequisition.frx":1A6C
         Height          =   510
         Index           =   6
         Left            =   2640
         Picture         =   "RMI_PurchaseRequisition.frx":1EB6
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl+Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMI_PurchaseRequisition.frx":2203
         Height          =   510
         Index           =   5
         Left            =   2115
         Picture         =   "RMI_PurchaseRequisition.frx":264D
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl+Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMI_PurchaseRequisition.frx":29B2
         Height          =   510
         Index           =   2
         Left            =   1095
         Picture         =   "RMI_PurchaseRequisition.frx":2CBC
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl+D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMI_PurchaseRequisition.frx":3058
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMI_PurchaseRequisition.frx":3362
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl+M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMI_PurchaseRequisition.frx":36DC
         Height          =   510
         Index           =   7
         Left            =   3165
         Picture         =   "RMI_PurchaseRequisition.frx":3B26
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl+Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMI_PurchaseRequisition.frx":3E76
         Height          =   510
         Index           =   11
         Left            =   5790
         Picture         =   "RMI_PurchaseRequisition.frx":42C0
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl+Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMI_PurchaseRequisition.frx":4655
         Height          =   510
         Index           =   9
         Left            =   4215
         Picture         =   "RMI_PurchaseRequisition.frx":495F
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl+S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMI_PurchaseRequisition.frx":4D01
         Height          =   510
         Index           =   10
         Left            =   4740
         Picture         =   "RMI_PurchaseRequisition.frx":500B
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl+Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMI_PurchaseRequisition.frx":5387
         Height          =   510
         Index           =   8
         Left            =   3690
         Picture         =   "RMI_PurchaseRequisition.frx":57D1
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl+Right)"
         Top             =   120
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
            Name            =   "Tahoma"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   270
         Left            =   10080
         TabIndex        =   27
         Top             =   240
         Width           =   585
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   270
         Left            =   7560
         TabIndex        =   26
         Top             =   240
         Width           =   600
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   24
      Top             =   7890
      Width           =   11400
      _ExtentX        =   20108
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
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
            TextSave        =   "10/04/2021"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "05:59 PM"
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
   Begin VB.Frame Frame4 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1755
      Left            =   2550
      TabIndex        =   32
      Top             =   2430
      Width           =   4215
      Begin VB.OptionButton Option2 
         Caption         =   "&Line Deletion"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1140
         TabIndex        =   35
         Top             =   1260
         Width           =   1635
      End
      Begin VB.OptionButton Option1 
         Caption         =   "&Complete Deletion"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   1140
         TabIndex        =   34
         Top             =   720
         Width           =   1905
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Choose the  deletion type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   315
         Left            =   30
         TabIndex        =   33
         Top             =   120
         Width           =   4155
      End
   End
   Begin VB.Frame UserFooterFrame 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4965
      Left            =   7275
      TabIndex        =   37
      Top             =   1665
      Visible         =   0   'False
      Width           =   4245
      Begin VB.CommandButton FooterCmd 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   1560
         TabIndex        =   39
         Top             =   4380
         Width           =   1320
      End
      Begin VB.PictureBox UserFooter1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4215
         Left            =   120
         ScaleHeight     =   4155
         ScaleWidth      =   4035
         TabIndex        =   38
         Top             =   165
         Width           =   4095
      End
   End
   Begin VB.Timer Timer2 
      Left            =   1440
      Top             =   4485
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   240
      TabIndex        =   46
      Top             =   9120
      Width           =   16620
      WordWrap        =   -1  'True
   End
   Begin VB.Label LblLineDel 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   510
      TabIndex        =   40
      Top             =   7485
      Width           =   1845
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Purchase Requisition (PR)"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   285
      TabIndex        =   23
      Top             =   750
      Width           =   3765
   End
End
Attribute VB_Name = "RMI_PurchaseRequisition"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Bud As String

'---------------------------------------------------------------------------------------
' Module    : RMI RMI_PurchaseRequisition
' DateTime  : 22/08/2014 11:51
' Author    : KALSOFTE
' Purpose   :
'---------------------------------------------------------------------------------------
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim status As String
Dim rsg As Recordset
Dim itemrs As Recordset
Dim DB As Connection
Dim Opt As String
Dim deltype As String
Dim mvd As String
Dim rs1 As Recordset
Dim ITARY() As String
Dim Fnd As String
Dim FLG As String
Dim GRP As String
Dim RW As Long
Dim rpt As String
Dim chrs As Recordset
Dim find As Boolean
Dim rptv As Report.ReportView
Dim prano As Integer
Dim a
Dim tit As Recordset
Dim lno As Integer
Dim pgn As Integer
Dim tlno As Integer
Dim SNO As Integer
Dim BudgetPara As String
Dim Rs As Recordset
Dim Repeat As Boolean
Dim ItemMod, ManualIndNo As String
'Dim deltype As String
Private Enum E_SpdIndent
    SprdSno = 1
    Sprdvarcode
    sprdvarname
    SprdCurStk
    SprdCurBales
    Sprdpack
    SprdQtyInd
    SprdQtyIndkg
    SprdReqdDt
End Enum

'---------------------------------------------------------------------------------------
' Procedure : BUTTON_Click
' DateTime  : 01/08/2010 11:52
' Author    : KALSOFTE
'---------------------------------------------------------------------------------------
'
Private Sub BUTTON_Click(Index As Integer)
Dim adoitypers As Recordset
intervalMinutes = -1
Select Case Index
Case 0
    If Record_Exists("rm_cat", "Please Define Category in Category Master") = False Then Exit Sub
    If Record_Exists("rm_var", "Please Define Varity in Varity Master") = False Then Exit Sub
    If Record_Exists("pr_emp where divcode='" & Divcode & "'", "Please Define Employee in Setup") = False Then Exit Sub
    If Record_Exists("rmi_doc_para where tc = 'PURCHASE REQUISITION'", "Please Define Document No. for Requisition in Housekeeping") = False Then Exit Sub
    LblUser.Visible = True
    LblUser.Caption = UserName
    DTPicker1.Enabled = True
    ReDim ITARY(100, 0)
    Opt = "add"
    RW = 1
    Frame1.Enabled = True
    desc.Caption = "Addition"
    Screen.MousePointer = 11
    stbar.Panels(2).Text = "Addition"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select DIVCODE,PRNO,PRDATE,REFNO,ITYPE,reqname,userId,PREntryDate from  rm_prh where 1= 2", DB, adOpenStatic, adLockBatchOptimistic
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "select B.DIVCODE,PRNO,PRDATE,PRSNO,a.varcode ""Item"",a.varname""Item Description"",b.curstock ""Current Stock"",b.curbale ""Current Stock Bales"",Packtype ""Pack Type"", QTYIND ""Quantity Required"", QTYINDKG ""Quantity Required"",REQDDATE ""Required Date"" from  rm_prl b inner join RM_VAR a on b.varcode = a.varcode WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
    Call bindcontls
    Set ManIndRs = New Recordset
    ManIndRs.Open "Select isnull(Manual_IndNo,'N')ManualIndNo from RM_Param ", DB
    Call ENABLCONTLS
    txtfields(1).TabStop = True
    ManualIndNo = ManIndRs(0)
    Label1.Caption = ""
    If ManualIndNo = "N" Then
        txtfields(1).Locked = True
        txtfields(1).TabStop = False
        Set rsg = New Recordset
        rsg.Open "select max(prdate) from rm_prH where divcode='" & Divcode & "' and prdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
            If IsNull(rsg(0)) = False Then
                If pdate < rsg(0) Then
                    MsgBox "Date should be Equal to Current Date Or Max Purchase Requisition Date", vbInformation, head
                    Screen.MousePointer = vbNormal
                    Exit Sub
                End If
            End If
        End If
    End If
    Call FillPrtypeCombo
   ' Call FillPrCategory
   ' CmbUnit.SetFocus
    adoPrimaryRS.AddNew
    adoSecondaryRS.AddNew
    Call SetGridHead
    With SpdIndent
        .Col = SprdSno
        .SetText SprdSno, .Row, 1
        .Col = Sprdvarcode
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        .TypeMaxEditLen = 7
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .MaxRows = 1
        .Col = Sprdvarcode
        .SetText Sprdpack, .MaxRows, "B-Bale"
    End With
    DB.BeginTrans
    Call adddelmod(BUTTON)
    BUTTON(12).Enabled = False
    Screen.MousePointer = 0
    SSTab2.Tab = 0
    CmbPrtype.Text = "K - Kgswise"
    
 '   CmbUnit.SetFocus
    
Case 1      'Modification
     
    Call adddelmod(BUTTON)
    BUTTON(12).Enabled = False
    If backend = "Sql Server" Then
        If Record_Exists("rm_prL where divcode = '" & Divcode & "' and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' and (QTYIND- isnull(QTYREQD,0)) <> 0 ", "No Record found for Modification as Purchase Order is placed for all the Records") = False Then Exit Sub
    Else
        If Record_Exists("rm_prH where divcode = '" & Divcode & "'  AND prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'", "No Record found for Modification as Purchase Order is placed for all the Records") = False Then Exit Sub
    End If
    Set rsg = New Recordset
    rsg.Open "select max(prdate) from rm_prH where divcode='" & Divcode & "' and prdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
    If rsg.RecordCount > 0 Then
        If IsNull(rsg(0)) = False Then
            If pdate < rsg(0) Then
                MsgBox "Date should be Equal to Current Date Or Max Purchase Requisition Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    Frame1.Enabled = True
    'txtFields(1).Locked = True
    Dim qry As String
    Opt = "mod"
    desc.Caption = "Modification"
    DTPicker1.Enabled = True
    LookUp.Clear = True
    LookUp.query = "SELECT h.prno 'PR.No.',h.prdate 'Date',h.reqname 'Requester Code',d.ename 'Requester Name' from rm_prl l inner join  rm_prH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate inner join  pr_emp D on d.divcode = h.divcode  AND H.reqname = D.empno WHERE  h.divcode = '" & Divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' and h.appflg is null group by  h.prno,h.prdate,h.REQNAME,d.ename"
    LookUp.Caption = "Purchase Requisition Listing"
    LookUp.DefCol = "PR.No."
    LookUp.ALIGN = "700,1000,1500,4500"
    LookUp.Alignment = "dbgright,dbgcenter,dbgleft,dbgleft"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        B = LookUp.Fields(1)    'date
        a = LookUp.Fields(2)    'Depart
        c = LookUp.Fields(0)    'Indent No
        Call SetGridHead
        Call delmodproc(CStr(a), CStr(B), CStr(c))
        LookUp.Clear = True
        SSTab2.Tab = 0
    Else
        Opt = "qry"
        Call QUERY_MODE(0, 1)
        Call cancl1(BUTTON, GSNO)
        BUTTON(12).Enabled = True
    End If
    stbar.Panels(2).Text = "Select the Records to Modify"
    
 Case 2 'Deletion
    If Record_Exists("rm_prH where divcode = '" & Divcode & "'  and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'", "No Record can be Deleted as Purchase Order is placed for all Records") = False Then Exit Sub
    Frame1.Enabled = False
    Set rsg = New Recordset
    Call adddelmod(BUTTON)
    BUTTON(12).Enabled = False
    rsg.Open "select max(prdate) from rm_prH where divcode='" & Divcode & "' and prdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
    If rsg.RecordCount > 0 Then
        If IsNull(rsg(0)) = False Then
            If pdate < rsg(0) Then
                MsgBox "Date should be Equal to Current Date Or Max Purchase Requisition Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    Opt = "del"
    desc.Caption = "Deletion"
    LookUp.Clear = True
    LookUp.query = "SELECT h.prno 'PR.No.',h.prdate 'Date',h.reqname 'Requester Code',d.ename 'Requester Name' from rm_prl l inner join  rm_prH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate inner join  pr_emp D on d.divcode = h.divcode  AND H.reqname = D.empno WHERE  h.divcode = '" & Divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' and h.appflg is null group by  h.prno,h.prdate,h.REQNAME,d.ename"
    LookUp.Caption = "Purchase Requisition Listing"
    LookUp.DefCol = "PR.No."
    LookUp.ALIGN = "700,1000,1500,4500"
    LookUp.Alignment = "dbgright,dbgcenter,dbgleft,dbgleft"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        B = LookUp.Fields(1)    'date
        a = LookUp.Fields(2)    'Depart
        c = LookUp.Fields(0)    'Indent No
        Call delmodproc(CStr(a), CStr(B), CStr(c))
        LookUp.Clear = True
        deltype = InputBox("Enter the Deletion type" & Chr(13) & "1 - Complete Deletion  " & Chr(13) & "2 - Delete a particular Item", head)
        If deltype = Empty Then
            BUTTON(9).Enabled = False
            Screen.MousePointer = 0
            Exit Sub
        End If
        Do While Not (deltype = "1" Or deltype = "2") Or (deltype = "")
            MsgBox "Enter either 1 or 2", vbInformation, head
            deltype = InputBox(" Enter deletion type    1 - Complete TRANSACTION  Deletion " & Chr(13) & "  2 - Delete a  particular  Item")
        Loop
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdSno, "S.No.", CellTypeNumber, 5, , False, False
        SSTab2.Tab = 0
    Else
        Bud = "Y"
        Call BUTTON_Click(10)
    End If
    stbar.Panels(2).Text = "Select the Records to Delete"
Case 3 'Find
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    'BUTTON(12).Enabled = False
    desc.Caption = "Find"
    If Record_Exists("rm_prH where divcode = '" & Divcode & "' and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
    stbar.Panels(2).Text = "Select the Records to Find"
    LookUp.Clear = True
    LookUp.query = "SELECT h.prno 'PR.No.',h.prdate 'Date',h.reqname 'Requester Code',d.ename 'Requester Name' from rm_prl l inner join  rm_prH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate inner join  pr_emp D on d.divcode = h.divcode  AND H.reqname = D.empno WHERE  h.divcode = '" & Divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' group by  h.prno,h.prdate,h.REQNAME,d.ename"
    LookUp.Caption = "Purchase Requisition Listing"
    LookUp.DefCol = "PR.No."
    LookUp.ALIGN = "700,1000,1500,4500"
    LookUp.Alignment = "dbgright,dbgcenter,dbgleft,dbgleft"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Bud = "Y"
        B = LookUp.Fields(1)    'date
        a = LookUp.Fields(2)    'Depart
        c = LookUp.Fields(0)    'Indent No
        Set adoPrimaryRS = New Recordset
        ' adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,reqname,scopecode,tH.Prtype,tH.Note,tH.PurPose,tH.Unitcode,tH.Category,AppFlg,APP1,App2,App3,UserId,Createdby from  rm_prH th, IN_DEP D  where  d.divcode='" & Divcode & "' and th.DEPCODE  *= D.DEPCODE and TH.PRDATE = '" & Format(b, "YYYY/MM/DD") & "'  AND TH.DIVCODE = '" & Divcode & "' AND d.DIVCODE = '" & Divcode & "'  and th.prno='" & C & "' " & _
        '                " Order by PRNO", DB, adOpenStatic, adLockBatchOptimistic
        
         adoPrimaryRS.Open "select H.DIVCODE,H.PRNO,H.PRDATE,H.REFNO,H.ITYPE,H.reqname,d.ename,isNull(h.userid,'')userId  from rm_prH H inner join  pr_emp D on h.divcode= d.divcode and h.reqname =d.empno where H.DIVCODE = '" & Divcode & "' AND  H.PRNO = " & val(c) & " and H.PRDATE = '" & Format(B, "dd-mmm-yyyy") & "'", DB, adOpenStatic, adLockBatchOptimistic
         
         '} AS ParentCMD APPEND ({select DIVCODE,PRNO,PRDATE,PRSNO,a.varcode ""varcode"",a.varname""Vartity Description"",b.curstock ""Current Stock"",QTYIND ""Quantity Required"",QTYINDkg ""Quantity Required in KG"",REQDDATE ""Required Date"",packtype  from  rm_prl b inner join RM_VAR a on  " & _
        '"  a.varcode=b.varcode  WHERE  b.DIVCODE = '" & Divcode & "' AND  b.PRNO = " & val(C) & " and b.PRDATE = '" & Format(b, "dd-mmm-yyyy") & "'  Order by PRSNO } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic


        Call bindcontls
        'Call NEWFORM(BUTTON, GSNO)
        If adoPrimaryRS.RecordCount > 0 Then
            find = True
        Else
            MsgBox "No Record found"
            Text1.Text = Empty
            Text1.SetFocus
        End If
        LookUp.Clear = True
    Else
        Bud = "Y"
        Call BUTTON_Click(10)
    End If
    'Call NEWFORM(BUTTON, GSNO)
    
Case 5
    'first
     desc.Caption = "Query"
     If Opt = "add" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,isnull(userid,'')UserId,th.SubCost from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "'   Order by PRNO", DB, adOpenStatic
     End If
     Opt = "qry"
     If Record_Exists("rm_prH where divcode = '" & Divcode & "'  and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     'calling fir procedure from module
     Call bindcontls
     Call FIR(BUTTON)
     stbar.Panels(2).Text = "First Record"
     Exit Sub
GoFirstError:
    If Err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
       
Case 6
        'next
    desc.Caption = "Query"
    If Opt = "add" Then
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,UserId,th.SubCost from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "'   Order by PRNO", DB, adOpenStatic
    End If

    Opt = "qry"
    If Record_Exists("rm_prH where divcode = '" & Divcode & "' and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
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
        ' Call NEX(BUTTON)
        'moved off the end so go back
        adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Last Record"
    End If
'show the current record
    Call bindcontls
    Exit Sub
GoNextError:
    If Err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
  
Case 7
    'previous
    desc.Caption = "Query"
    If Opt = "add" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,isnull(userid,'')UserId,Th.SubCost from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "'   Order by PRNO", DB, adOpenStatic
    End If
    Opt = "qry"
    If Record_Exists("rm_prH where divcode = '" & Divcode & "'  and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
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
        'Call PREV(BUTTON)
        adoPrimaryRS.MoveFirst
        stbar.Panels(2).Text = "First Record"
    End If
    'Added Raja show the current record
    Call bindcontls
    Exit Sub
GoPrevError:
    If Err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
 
Case 8
        'last
        desc.Caption = "Query"
        If Opt = "add" Then
           Set adoPrimaryRS = New Recordset
           adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,th.SubCost from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "'   Order by PRNO", DB, adOpenStatic
        End If
        Opt = "qry"
        If Record_Exists("rm_prH where divcode = '" & Divcode & "'  and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Last Record"
        'calling las procedure from module
        
        Call las(BUTTON)
        
        'Added Raja show the current record
        Call bindcontls
        
        Exit Sub
GoLastError:
       If Err = 3021 Then
         MsgBox " No records Found", vbInformation, head
       End If

Case 9
       'Save
        Screen.MousePointer = 11
        
        
        
        If Opt = "add" Then
            If txtfields(3).Text = "" Then
                MsgBox "Requester Name Cannot be empty", vbInformation, head
                Screen.MousePointer = 0
                txtfields(3).SetFocus
                Exit Sub
            End If
            Opt = ""
            
            If SpdIndent.MaxRows <= 1 And (GetText(SpdIndent, E_SpdIndent.Sprdvarcode, RW) = "" Or val(Replace(GetText(SpdIndent, E_SpdIndent.SprdQtyInd, RW), ",", "")) = 0 Or val(Replace(GetText(SpdIndent, E_SpdIndent.SprdQtyIndkg, RW), ",", "")) = 0) Then
                MsgBox "Purchase Requisition Requires at least one Item", vbInformation, head
                Opt = "add"
                Screen.MousePointer = 0
                Exit Sub
            End If
               With SpdIndent
                For RW = 1 To .MaxRows
                    .Row = RW
                    If GetText(SpdIndent, E_SpdIndent.Sprdvarcode, RW) <> "" And val(Replace(GetText(SpdIndent, E_SpdIndent.SprdQtyInd, RW), ",", "")) <> 0 And val(Replace(GetText(SpdIndent, E_SpdIndent.SprdQtyIndkg, RW), ",", "")) <> 0 Then
                        If IsDate(GetText(SpdIndent, SprdReqdDt, RW)) = False Then
                             MsgBox "Required Date Cannot be empty", vbInformation, head
                             Screen.MousePointer = 0
                             Opt = "add"
                             SpdIndent.Col = SprdReqdDt
                             SpdIndent.SetFocus
                            Exit Sub
                        End If
                        
                        If CDate(MaskEdBox1(0).Text) > CDate(GetText(SpdIndent, SprdReqdDt, RW)) Then
                              MsgBox "Required Date Cannot be Less than PR date!!! ", vbInformation, head
                             Screen.MousePointer = 0
                             Opt = "add"
                             SpdIndent.Col = SprdReqdDt
                             SpdIndent.SetFocus
                            Exit Sub
                        End If
                    End If
                Next
                End With
            
            If ManualIndNo = "Y" Then
                Call IndentNoChk
                docNo = val(txtfields(1).Text)
            Else
                docNo = newdocno()
            End If
            adoPrimaryRS("Divcode") = Divcode
            adoPrimaryRS("prno") = docNo
            adoPrimaryRS("prdate") = Format(MaskEdBox1(0).Text, "dd-mmm-yyyy")
            adoPrimaryRS("REFNO") = txtfields(4).Text
            adoPrimaryRS("REQNAME") = val(txtfields(3))
            adoPrimaryRS("Itype") = Left(CmbPrtype.Text, 1)
            adoPrimaryRS("userId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
             Opt = "add"
            If Opt = "add" Then
            adoPrimaryRS("PREntryDate") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            End If
            'adoprimaryrs("Note") = Trim(TXTFIELDS(5).Text)
            'adoprimaryrs("PurPose") = Trim(TXTFIELDS(6).Text)
            'adoprimaryrs("Category") = catcode
            'adoprimaryrs("CREATEDBY") = UserID
            'adoprimaryrs("CREATEDDATE") = Now
            
           
            If docNo = "" Then Exit Sub
                Opt = ""
                Set Rs = New Recordset
                Rs.Open "select DIVCODE,PRNO,PRDATE,PRSNO,varcode ""varcode"",Packtype ""Pack Type"",QTYIND ""Quantity Required"",QTYINDKG ""Quantity Required in KG"",REQDDATE ""Required Date"",curstock,curbale from  rm_prl  WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                SNos = 1
                With SpdIndent
                For RW = 1 To .MaxRows
                    .Row = RW
                    If GetText(SpdIndent, E_SpdIndent.Sprdvarcode, RW) <> "" And val(Replace(GetText(SpdIndent, E_SpdIndent.SprdQtyInd, RW), ",", "")) <> 0 And val(Replace(GetText(SpdIndent, E_SpdIndent.SprdQtyIndkg, RW), ",", "")) <> 0 Then
                    
                        Rs.AddNew
                        Rs("divcode").value = Divcode
                        Rs("prno").value = docNo
                        Rs("prdate").value = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
                        Rs("prsno").value = SNos
                        Rs("varcode").value = GetText(SpdIndent, Sprdvarcode, RW)
                        Rs("Pack Type").value = Left(GetText(SpdIndent, Sprdpack, RW), 1)
                        Rs("Quantity Required").value = val(Replace(GetText(SpdIndent, SprdQtyInd, RW), ",", ""))
                        Rs("Quantity Required in KG").value = val(Replace(GetText(SpdIndent, SprdQtyIndkg, RW), ",", ""))
                        Rs("CurStock") = val(Replace(GetText(SpdIndent, SprdCurStk, RW), ",", ""))
                        Rs("CurBale") = val(Replace(GetText(SpdIndent, SprdCurBales, RW), ",", ""))
                        If IsDate(GetText(SpdIndent, SprdReqdDt, RW)) = True Then
                        Rs("Required Date").value = Format(GetText(SpdIndent, SprdReqdDt, RW), "yyyy-mm-dd")
                        End If
'''                        Rs("LRMI_PONO") = IIf(GetText(SpdIndent, SprdLpoNo, RW) = "", 0, GetText(SpdIndent, SprdLpoNo, RW))
'''                        Rs("LRMI_DATE") = IIf(GetText(SpdIndent, SprdLpoDate, RW) = "", Null, Format(GetText(SpdIndent, SprdLpoDate, RW), "yyyy-mm-dd"))
'''                        Rs("LRMI_CURRCODE") = GetText(SpdIndent, SprdCurr, RW)
'''                        Rs("LRMI_Rate") = IIf(GetText(SpdIndent, SprdLpoRate, RW) = "" Or IsNull(GetText(SpdIndent, SprdLpoRate, RW)), 0, val(Replace(GetText(SpdIndent, SprdLpoRate, RW), ",", "")))
'''                        Rs("LRMI_Slcode") = GetText(SpdIndent, SprdLPoSlcode, RW)
'''                        Rs("Pur_From") = GetText(SpdIndent, SprdLpoName, RW)
'''                        Rs("LRMI_GrnNo") = IIf(GetText(SpdIndent, SprdLGRNNo, RW) = "", 0, GetText(SpdIndent, SprdLGRNNo, RW))
'''                        Rs("LRMI_GrnDate") = IIf(GetText(SpdIndent, SprdLGRNDt, RW) = "", Null, Format(GetText(SpdIndent, SprdLGRNDt, RW), "yyyy-mm-dd"))
'''                        Rs("DepCode") = Txtfields(2).Text
'''                        Rs("CreatedBy") = UserID
'''                        Rs("CreatedDate") = Now
'''                        Rs("IP") = LocalHostID

                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Purchase Requisition"
                    TrnLog("Trans_Mod") = "Add"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("ReqName") = Trim(txtfields(3).Text)
                    TrnLog("docno") = Trim(txtfields(1).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
                    TrnLog("PRNO") = Trim(txtfields(1).Text)
                    TrnLog("PRDt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
             
                    TrnLog("BBFlg") = Left(GetText(SpdIndent, Sprdpack, RW), 1)
            
                    TrnLog("varcode") = GetText(SpdIndent, Sprdvarcode, RW)
              
                    TrnLog("ordqty") = val(Replace(GetText(SpdIndent, SprdQtyInd, RW), ",", ""))
                    TrnLog("ordkgs").value = val(Replace(GetText(SpdIndent, SprdQtyIndkg, RW), ",", ""))
                    TrnLog("SNO") = SNos
          
                    
                    TrnLog.UpdateBatch adAffectAllChapters


                        SNos = SNos + 1
                    End If
                Next
                End With
                adoPrimaryRS.UpdateBatch adAffectAllChapters
                Rs.UpdateBatch adAffectAllChapters
                Screen.MousePointer = 0
                MsgBox "Purchase Requisition No. for this transaction is " & docNo, vbInformation, head
                BUTTON(12).Enabled = True
                DB.CommitTrans
                Call BUTTON_Click(13)
        End If
        
        If Opt = "del" And deltype = "1" Then
         
            If vbNo = MsgBox("Are you sure want to Delete the Record(s)?", vbQuestion + vbYesNo, head) Then
                Bud = "Y"
                Call BUTTON_Click(10)
                Exit Sub
            End If
            
        If Record_Exists("RM_DelReason", "Please Define Reason in TXN Delete Reason Setup") = False Then Exit Sub
DelReason:
         Dim DelReasonCode As String
         LookUp.Clear = True
         LookUp.query = "select Code AS 'Code',Description as 'Description' from RM_DelReason"
         LookUp.Caption = "Delete Reason Listing"
         LookUp.DefCol = "Description"
         LookUp.ALIGN = "1500,5500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
             DelReasonCode = LookUp.Fields(0)
         Else
             GoTo DelReason
         End If
            

            
        End If
        
        If Opt = "mod" Then
                With SpdIndent
                For RW = 1 To .MaxRows
                    .Row = RW
                    If GetText(SpdIndent, E_SpdIndent.Sprdvarcode, RW) <> "" And val(Replace(GetText(SpdIndent, E_SpdIndent.SprdQtyInd, RW), ",", "")) > 0 And val(Replace(GetText(SpdIndent, E_SpdIndent.SprdQtyIndkg, RW), ",", "")) > 0 Then
                        If IsDate(GetText(SpdIndent, SprdReqdDt, RW)) = False Then
                             MsgBox "Required Date Cannot be empty", vbInformation, head
                             Screen.MousePointer = 0
                             Opt = "mod"
                             SpdIndent.Col = SprdReqdDt
                             SpdIndent.SetFocus
                            Exit Sub
                        End If
                    
                    
                        If CDate(MaskEdBox1(0).Text) > CDate(GetText(SpdIndent, SprdReqdDt, RW)) Then
                              MsgBox "Required Date Cannot be Less than PR date!!! ", vbInformation, head
                             Screen.MousePointer = 0
                             Opt = "mod"
                             SpdIndent.Col = SprdReqdDt
                             SpdIndent.SetFocus
                            Exit Sub
                        End If
                    End If
                Next
                End With
        
        End If
        
        If Opt = "mod" Or (Opt = "del" And deltype = "2") Then
            If Opt = "del" Then
                Set Rs = New Recordset
                Rs.Open "select count(*) from rm_prl where DivCode  = '" & Divcode & "' and prno = '" & txtfields(1).Text & "' and Prdate = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                tcount1 = 0
                TFlg = False
                If Not Rs.EOF Then
                    tcount1 = val(Rs(0) & "")
                End If
                If tcount1 <> SpdIndent.MaxRows Then
                    TFlg = True
                End If
                If TFlg = False Then
                    MsgBox "Delete atleast one item to save", vbInformation, head
                    Screen.MousePointer = vbNormal
                    Exit Sub
                End If
                If Record_Exists("RM_DelReason", "Please Define Reason in TXN Delete Reason Setup") = False Then Exit Sub
DelReason1:
                 
                 LookUp.Clear = True
                 LookUp.query = "select Code AS 'Code',Description as 'Description' from RM_DelReason"
                 LookUp.Caption = "Delete Reason Listing"
                 LookUp.DefCol = "Description"
                 LookUp.ALIGN = "1500,5500"
                 LookUp.Show vbModal
                 If LookUp.Cancel = False Then
                     DelReasonCode = LookUp.Fields(0)
                 Else
                     GoTo DelReason1
                 End If
                
            End If

'            prtype = ""
'            Set adoitypers = New Recordset
'            adoitypers.Open "select * from rm_prtype where Description = '" & Trim(CmbPrtype.Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
'            If Not adoitypers.EOF Then
'                prtype = adoitypers("Code")
'            End If
            
            DB.BeginTrans
            adoPrimaryRS("Divcode") = Divcode
            adoPrimaryRS("prno") = txtfields(1).Text
            adoPrimaryRS("prdate") = Format(MaskEdBox1(0).Text, "dd-mmm-yyyy")
            adoPrimaryRS("REFNO") = txtfields(4).Text
            adoPrimaryRS("REQNAME") = val(txtfields(3))
            adoPrimaryRS("Itype") = Left(CmbPrtype.Text, 1)
            adoPrimaryRS("userId") = CustID
''            adoprimaryrs("Note") = Trim(Txtfields(5).Text)
''            adoprimaryrs("PurPose") = Trim(Txtfields(6).Text)
''            adoprimaryrs("Category") = catcode
'            adoprimaryrs("modifiedby") = UserID
'            adoprimaryrs("modifiedDate") = Now
'
            DB.Execute "Delete from rm_prl where DivCode  = '" & Divcode & "' and prno = '" & txtfields(1).Text & "' and Prdate = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'"
            tmp = Opt
            Opt = ""
            Set Rs = New Recordset
            'Rs.Open "select DIVCODE,PRNO,PRDATE,PRSNO,varcode ""Item"",MACNO ""Machine Code"",QTYIND ""Quantity Required"",BGRPCODE ""Budget Group"",REQDDATE ""Required Date"",place ""Place"",REMARKS ""Remarks"",RATE,curstock,LRMI_PONO,LRMI_DATE,LRMI_CURRCODE,LRMI_Rate,LRMI_Slcode,PUR_From,LRMI_GrnNo,LRMI_GrnDate,Sample,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,IP,DelFlg,DepCode,SubCost,Sample from  rm_prl  WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
            Rs.Open "select DIVCODE,PRNO,PRDATE,PRSNO,varcode ""varcode"",Packtype ""Pack Type"",QTYIND ""Quantity Required"",QTYINDKG ""Quantity Required in KG"",REQDDATE ""Required Date"",curstock from  rm_prl  WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                
            SNos = 1
            With SpdIndent
            For RW = 1 To .MaxRows
                .Row = RW
                If GetText(SpdIndent, E_SpdIndent.Sprdvarcode, RW) <> "" And Replace(GetText(SpdIndent, E_SpdIndent.SprdQtyInd, RW), ",", "") <> "" And Replace(GetText(SpdIndent, E_SpdIndent.SprdQtyIndkg, RW), ",", "") <> "" Then
                    Rs.AddNew
                    Rs("divcode").value = Divcode
                    Rs("prno").value = txtfields(1).Text
                    Rs("prdate").value = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
                    Rs("prsno").value = SNos
                    Rs("varcode").value = GetText(SpdIndent, Sprdvarcode, RW)
                    Rs("Pack Type").value = Left(GetText(SpdIndent, Sprdpack, RW), 1)
                    Rs("Quantity Required").value = val(Replace(GetText(SpdIndent, SprdQtyInd, RW), ",", ""))
                    Rs("Quantity Required in KG").value = val(Replace(GetText(SpdIndent, SprdQtyIndkg, RW), ",", ""))
                    'Rs("Required Date").value = IIf(GetText(SpdIndent, SprdReqdDt, RW) = "", Null, Format(GetText(SpdIndent, SprdReqdDt, RW), "yyyy-mm-dd"))
                       If IsDate(GetText(SpdIndent, SprdReqdDt, RW)) = True Then
                        Rs("Required Date").value = Format(GetText(SpdIndent, SprdReqdDt, RW), "yyyy-mm-dd")
                        End If
                    'Rs("Remarks").value = GetText(SpdIndent, SprdRemarks, RW)
                    Rs("CurStock") = val(GetText(SpdIndent, SprdCurStk, RW))
                    
                    
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax ,DelReason FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Purchase Requisition"
                    TrnLog("Trans_Mod") = tmp
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("ReqName") = Trim(txtfields(3).Text)
        
                    TrnLog("PRNO") = Trim(txtfields(1).Text)
                    TrnLog("PRDt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
                    TrnLog("docno") = Trim(txtfields(1).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
                    
                     TrnLog("BBFlg") = Left(GetText(SpdIndent, Sprdpack, RW), 1)
            
                    TrnLog("varcode") = GetText(SpdIndent, Sprdvarcode, RW)
              
                    TrnLog("ordqty") = val(Replace(GetText(SpdIndent, SprdQtyInd, RW), ",", ""))
                    TrnLog("ordkgs").value = val(Replace(GetText(SpdIndent, SprdQtyIndkg, RW), ",", ""))
                    TrnLog("SNO") = SNos
                    
                    If tmp = "del" Then
                        TrnLog("DelReason") = Trim(DelReasonCode)
                    End If
                    
                    TrnLog.UpdateBatch adAffectAllChapters
                    
'''                    Rs("LRMI_PONO") = IIf(GetText(SpdIndent, SprdLpoNo, RW) = "", 0, GetText(SpdIndent, SprdLpoNo, RW))
'''                    Rs("LRMI_DATE") = IIf(GetText(SpdIndent, SprdLpoDate, RW) = "", Null, Format(GetText(SpdIndent, SprdLpoDate, RW), "yyyy-mm-dd"))
'''                    Rs("LRMI_Rate") = IIf(GetText(SpdIndent, SprdLpoRate, RW) = "", 0, val(Replace(GetText(SpdIndent, SprdLpoRate, RW), ",", "")))
'''                    Rs("LRMI_CURRCODE") = GetText(SpdIndent, SprdCurr, RW)
'''                    Rs("LRMI_Slcode") = GetText(SpdIndent, SprdLPoSlcode, RW)
'''                    Rs("Pur_From") = GetText(SpdIndent, SprdLpoName, RW)
'''                    Rs("LRMI_GrnNo") = IIf(GetText(SpdIndent, SprdLGRNNo, RW) = "", 0, GetText(SpdIndent, SprdLGRNNo, RW))
'''                    Rs("LRMI_GrnDate") = IIf(GetText(SpdIndent, SprdLGRNDt, RW) = "", Null, Format(GetText(SpdIndent, SprdLGRNDt, RW), "yyyy-mm-dd"))
'''                    Rs("DepCode") = TXTFIELDS(2).Text
'                    Rs("CreatedBy") = adoPrimaryRS("CreatedBy")
 '                   Rs("CreatedDate") = adoPrimaryRS("CreatedDate")
  '                  Rs("ModifiedBy") = UserID
   '                 Rs("ModifiedDate") = Now
    '                Rs("IP") = LocalHostID
                    SNos = SNos + 1
                End If
            Next
            End With
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            Rs.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            Opt = tmp
            If Opt = "del" Then MsgBox "Record(s) Deleted Successfully", vbInformation, head
            If Opt = "mod" Then MsgBox "Record(s) Modified Successfully", vbInformation, head
            Call BUTTON_Click(13)
        End If
        If Opt = "del" And deltype = "1" Then
            DB.BeginTrans
            Screen.MousePointer = 11
            Set Rs = New Recordset
'            Rs.Open "SELECT 'x' from RMI_ORDL WHERE PRNO = " & val(adoprimaryrs("PRNO")) & " AND PRDATE = '" & Format(adoprimaryrs("PRDATE"), "dd-mmm-yyyy") & "' AND DIVCODE = '" & adoprimaryrs("DIVCODE") & "'", DB, adOpenStatic, adLockBatchOptimistic
'            If Not Rs.BOF Then
'                MsgBox "This Purchase Requisition Amendment cannot be deleted as dependencies exist ", vbInformation, head
'                Screen.MousePointer = 0
'                Call BUTTON_Click(10)
'                Exit Sub
'            End If
            DB.Execute ("Delete From rm_prL WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' AND prno = " & val(adoPrimaryRS("prno")) & " AND PRDATE = '" & Format(adoPrimaryRS("prdate"), "dd-mmm-yyyy") & "'")
            DB.Execute ("Delete From rm_prH WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' AND prno = " & val(adoPrimaryRS("prno")) & " AND PRDATE = '" & Format(adoPrimaryRS("prdate"), "dd-mmm-yyyy") & "'")
            
                     
            SNos = 1
            With SpdIndent
            For RW = 1 To .MaxRows
                .Row = RW
            
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax,DelReason  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Purchase Requisition"
                    TrnLog("Trans_Mod") = "Del"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("ReqName") = Trim(txtfields(3).Text)
                    TrnLog("docno") = Trim(txtfields(1).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
                    TrnLog("PRNO") = Trim(txtfields(1).Text)
                    TrnLog("PRDt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
        
                              
                     TrnLog("BBFlg") = Left(GetText(SpdIndent, Sprdpack, RW), 1)
            
                    TrnLog("varcode") = GetText(SpdIndent, Sprdvarcode, RW)
              
                    TrnLog("ordqty") = val(Replace(GetText(SpdIndent, SprdQtyInd, RW), ",", ""))
                    TrnLog("ordkgs").value = val(Replace(GetText(SpdIndent, SprdQtyIndkg, RW), ",", ""))
                    TrnLog("SNO") = SNos
                    TrnLog("DelReason") = DelReasonCode
          
                    
                    TrnLog.UpdateBatch adAffectAllChapters
                Next
            End With
            ''db.Execute "UPDATE RMI_PAH SET PRNO=NULL WHERE prno = " & val(adoPrimaryRS("prno")) & ""
            DB.CommitTrans
            MsgBox "Record(s) Deleted Successfully", vbInformation + vbOKOnly, head
        End If
        Opt = "del"
        Buttonframe.Enabled = True
        Call QUERY_MODE(0, 1)
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(12).Enabled = True
        Screen.MousePointer = 0
        Opt = "qry"
        
Case 10
    If Bud <> "Y" Then
        Bud = ""
        If MsgBox("Do you want to Cancel?", vbQuestion + vbYesNo, head) = vbNo Then Exit Sub
    End If
    Bud = ""
    DTPicker1.Enabled = False
    'CANCEL
    On Error Resume Next
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
    Screen.MousePointer = 0
    desc.Caption = "Query"
    Buttonframe.Enabled = True
    Call QUERY_MODE(0, 1)
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(12).Enabled = True
    Screen.MousePointer = 0
    Opt = "qry"
Case 12
        
    If val(txtfields(1).Text) > 0 And MaskEdBox1(0).Text <> "__/__/____" Then
'        Call CryClear
'        FromPRNO = val(Txtfields(1).Text)
'        ToPRNO = val(Txtfields(1).Text)
'        DOCDT = Format(MaskEdBox1(0).Text, "DD/MM/YY")
'        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\" & "PO\RMI_Purchase Requisition.rpt"
'        CrySelectionFormula = "{rm_prH.PRDATE} = DATE(" & val(Year(DOCDT)) & "," & val(MONTH(DOCDT)) & "," & val(Day(DOCDT)) & ")  and {rm_prH.PRNO} >=" & FromPRNO & " and {rm_prH.PRNO} <=" & ToPRNO & "  and {rm_prH.DIVCODE}='" & Divcode & "' AND {IN_ReportISONO.R_ID}=" & 1 & ""
'        FrmRpt.Show
    Else
        MsgBox "NO RECORDS TO PRINT", vbInformation, vbhead
        Exit Sub
    End If
Case 13

  cno = txtfields(1).Text
        cdt = MaskEdBox1(0).Text
        
          
        Dim clsCryRpt As New clsCrystal
        Set Rs = New Recordset
        Rs.Open "exec KSP_RMIPurchaseReq '" & Divcode & "' ,'" & cno & "','" & Format(cdt, "yyyy-MM-dd") & "'", DB, adOpenStatic
        If Rs.RecordCount > 3 Then
        Set clsCryRpt.cryRept = Cry_PR_TRN
        Else
        Set clsCryRpt.cryRept = Cry_PR_TRN_Cutsheet
        End If
        clsCryRpt.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@Docno;" & cno & ""
        CrystalReport1.ParameterFields(2) = "@Docdt;" & Format(cdt, "yyyy-MM-dd") & ""
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowPrintBtn = True
        CrystalReport1.WindowShowExportBtn = True
  
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
        Call ExportERPPOPDF

Case 11
    'EXIT
    Unload Me
   'Pordmain.Picture2.Visible = True
End Select

intervalMinutes = -1
Exit Sub
er1:
If Err = -2147467259 Then
MsgBox Err.Description, vbInformation, head
    If Mid$(Err.Description, InStr(Err.Description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  tc " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head
    End If
Else
    MsgBox Err.Description, vbInformation, head
End If
End Sub

Private Sub delmodok_Click()
On Error GoTo delmodok_Click_Error
Screen.MousePointer = 11
If Opt = "mod" Then
    Call ENABLCONTLS
Else
    Call disablcontls
End If
If DataCombo1.Text <> Empty Then
    'To extract the transaction  code
    c = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "          ") - 1)
    'To extract the document number
    B = Mid$(DataCombo1.Text, InStr(DataCombo1.Text, "          ") + 10, 10)
    a = Empty 'Trim(Right(DataCombo1.Text, 5))
    Call delmodproc(CStr(a), CStr(B), CStr(c))
    If Opt = "mod" Then
    BUTTON(9).Enabled = True
    End If
Else
   MsgBox "Select a value from the list", vbOKOnly, head
   Screen.MousePointer = 0
   BUTTON(10).Enabled = True
End If

If Opt = "mod" Or Opt = "del" Then
    On Error Resume Next
    stbar.Panels(2).Text = "Click Save or Cancel Button to Continue...."
    grddatagrid.Col = 7
    grddatagrid.SetFocus
End If
Exit Sub
delmodok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodok_Click of Form tmpPOINDENT", vbInformation, head
End Sub

Private Sub CmbCategory_GotFocus()
CmbCategory.BackColor = SpdHlightClr
stbar.Panels(2).Text = CmbCategory.ToolTipText
End Sub

Private Sub CmbCategory_KeyPress(KeyAscii As Integer)
Call NextFocus(KeyAscii)
End Sub
Private Sub CmbCategory_LostFocus()
CmbCategory.BackColor = SpdOrdClr
End Sub

Private Sub CmbPrtype_GotFocus()
CmbPrtype.BackColor = SpdHlightClr
stbar.Panels(2).Text = CmbPrtype.ToolTipText
End Sub

Private Sub CmbPrtype_KeyPress(KeyAscii As Integer)
    Call NextFocus(KeyAscii)
End Sub
Private Sub CmbPrtype_LostFocus()
    CmbPrtype.BackColor = SpdOrdClr
End Sub
Private Sub DTPicker1_CloseUp()
    MaskEdBox1(0).Text = Format(DTPicker1.value, "DD/MM/YYYY")
    MaskEdBox1(0).SetFocus
End Sub
Private Sub DTPicker1_GotFocus()
 stbar.Panels(2).Text = DTPicker1.ToolTipText
End Sub
Private Sub DTPicker1_LostFocus()
    On Error GoTo DTPicker1_LostFocus_Error
    If Index = 0 And (MaskEdBox1(0).Enabled) Then
        If Not (IsDate(MaskEdBox1(0).Text)) Then
            MsgBox ("Please enter valid date"), vbInformation, head
            MaskEdBox1(0).SetFocus
        ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
            MsgBox ("Purchase Requisition Date must be equal to processing date"), vbInformation, head
            MaskEdBox1(0).Text = Format(pdate, "DD/MM/YYYY")
            MaskEdBox1(0).SetFocus
        ElseIf CDate(MaskEdBox1(0).Text) < pdate Then
            MsgBox ("Purchase Requisition Date must be equal to processing date"), vbInformation, head
            MaskEdBox1(0).Text = Format(pdate, "DD/MM/YYYY")
            MaskEdBox1(0).SetFocus
        End If
    End If
    Exit Sub
DTPicker1_LostFocus_Error:
        MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_LostFocus of Form RMI_PurchaseRequisition", vbInformation, head
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
    'ElseIf KeyCode = vbKeyY And Shift = 2 Then
    '    If BUTTON(13).Enabled = True Then
    '        Call BUTTON_Click(13)   ''Crystal Report
    '    End If
    ElseIf KeyCode = vbKeyEscape Then '27
         'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbYes Then
            If BUTTON(10).Enabled = True Then
                Call BUTTON_Click(10)    ''Cancel
            Else
                If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)
            End If
         'Else
        
         'End If
    End If
    
    Exit Sub
Form_KeyDown_Error:
        MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form tmpPOINDENT", vbInformation, head
    
End Sub

Private Sub Form_Load()
  On Error GoTo Form_Load_Error
       Call NEWFORM1(BUTTON, GSNO)
  stbar.Panels(1).Text = sbmsg
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  Call SetGridHead
  Opt = "qry"
  Call FillPrtypeCombo
  Dim ParaRs As New Recordset
  Dim YearChkRs As New Recordset
  Call QUERY_MODE(0, 1)
  LblDivision.Caption = divname
  Opt = "qry"
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
  DATLAB.Caption = pdate
  DTPicker1.maxdate = yldate
  DTPicker1.MinDate = yfdate
  DTPicker1.value = pdate
  SpdIndent.AddCustomCellType "TextBox", True, False, False, True
  SSTab2.Tab = 0
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form tmpPOINDENT", vbInformation, head
    
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
Buttonframe.Width = Me.Width
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
'If Opt = "add" Or Opt = "mod" Then

'    If Opt = "del" Then
'        tmsg = MsgBox("Do you want to Delete this record?", vbQuestion + vbYesNo, head)
'    Else
'        tmsg = MsgBox("Do you want to save this record?", vbQuestion + vbYesNo, head)
'    End If
'    If tmsg = vbYes Then
'        If BUTTON(9).Enabled = True Then Call BUTTON_Click(9)
'    ElseIf tmsg = vbNo Then
'        Bud = "Y"
'        If BUTTON(10).Enabled = True Then Call BUTTON_Click(10)
'    End If
'End If
intervalMinutes = -1
    Screen.MousePointer = vbDefault
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
        'Me.Show False, Me
        'DoEvents
        Me.SetFocus
        If MsgBox(Me.Caption & " Screen is in Addition/Modification/Deletion mode. Are you want to Exit?", vbQuestion + vbYesNo, head) = vbNo Then
            Cancel = True
            Exit Sub
        End If
    End If

    On Error Resume Next
    Set adoPrimaryRS = Nothing
    Set adoSecondaryRS = Nothing
    Reset
    Exit Sub
    
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form tmpPOINDENT", vbInformation, head
  End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
If Opt <> "add" And Opt <> "mod" And Opt <> "del" And Opt <> "fnd" Then
    If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""Varcode"",i.varname ""Vartity Description"",t.curstock ""Current Stock"",t.curbale ""Current Stock Bales"",t.Packtype as Packtype , t.QTYIND ""Quantity Required""" & _
                                "  ,QTYINDKG ""Quantity Required in KG"", reqddate ""Required Date"" from  rm_prL t inner join  RM_VAR i on t.varcode = i.varcode inner join rm_prH h on t.divcode=h.divcode and t.prno=h.prno and t.prdate=h.prdate " & _
                                " where  t.divcode='" & adoPrimaryRS("divcode") & "' and t.prno='" & adoPrimaryRS("prno") & "' and t.prdate='" & Format(adoPrimaryRS("prdate"), "yyyy-mm-dd") & "'   Order by t.prsno ", DB, adOpenStatic, adLockBatchOptimistic

        Call SetGridHead
        Call SpdLoad
        If Not adoPrimaryRS.EOF Then
            If adoPrimaryRS("userid") <> "" Then
                Set Rs = New Recordset
                Rs.Open "select USER_NAME,ALEVEL,USER_ID from pp_passwd WHERE  module =4 and DIVCODE='" & Divcode & "' AND USER_ID='" & adoPrimaryRS("userid") & "'", DB
                If Not Rs.EOF Then
                    LblUser.Caption = UserName
                End If
            End If
        End If
        If Not adoPrimaryRS.EOF Then
            Set Rs = New Recordset
            Rs.Open "Select isnull(User_Name,'')user_Name From PP_Passwd where divcode = '" & Divcode & "' and Module = " & ModuleNo & " and User_Id='" & Trim(adoPrimaryRS("UserId")) & "'", DB
            If Rs.RecordCount > 0 Then
                LblUser.Caption = Trim(Rs("user_Name"))
            End If
        End If
       ' Call FillPrtypeCombo
        
    End If
End If
If Opt <> "qry" Then Exit Sub
If adoPrimaryRS.AbsolutePosition > 0 Then
    stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
Else
    stbar.Panels(2).Text = "No Record found"
End If


Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form tmpPOINDENT", vbInformation, head
End Sub


Public Sub bindcontls()
Dim oText As TextBox
Dim intyrs As New ADODB.Recordset

  'Bind the text boxes to the recordset
  
On Error GoTo bindcontls_Error
  For Each oText In Me.txtfields
    Set oText.DataSource = adoPrimaryRS
  Next
  
If Opt = "add" Then
    MaskEdBox1(0).Text = Format(pdate, "dd/mm/yyyy")
Else
    If Not adoPrimaryRS.EOF Then
        MaskEdBox1(0).Text = Format(adoPrimaryRS("Prdate"), "dd/mm/yyyy")
    Else
        MaskEdBox1(0).Text = "__/__/____"
    End If
    If Not adoPrimaryRS.EOF Then
        If adoPrimaryRS("Itype") = "P" Then
            CmbPrtype.Text = "P -Packwise"
        Else
            CmbPrtype.Text = "K - Kgswise"
        End If
    End If
End If
  
  
On Error Resume Next

Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form tmpPOINDENT", vbInformation, head

End Sub

Public Sub disablcontls()
    Dim oText As TextBox
On Error GoTo disablcontls_Error
    For Each oText In Me.txtfields
        oText.Locked = True
    Next
    MaskEdBox1(0).Enabled = False
    
    TxtRequester.Locked = True
Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form tmpPOINDENT", vbInformation, head
End Sub

Public Sub ENABLCONTLS()
    Dim oText As TextBox
    On Error GoTo ENABLCONTLS_Error
    For Each oText In Me.txtfields
        oText.Locked = False
    Next
    
    
    'FooterFrame.Enabled = True
    MaskEdBox1(0).Enabled = False ' True
    DTPicker1.Enabled = False 'True
    DTPicker1.maxdate = pdate
    If Opt = "add" Then
        MaskEdBox1(0).Text = Format(pdate, "dd/mm/yyyy")
    End If
   
    TxtRequester.Locked = True
Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form tmpPOINDENT", vbInformation, head
    End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
MaskEdBox1(Index).BackColor = SpdHlightClr
stbar.Panels(2).Text = MaskEdBox1(Index).ToolTipText
End Sub

Private Sub MaskEdBox1_KeyPress(Index As Integer, KeyAscii As Integer)
    Call NextFocus(KeyAscii)
End Sub
Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error
If Opt = "add" Then
    If ManualIndNo = "Y" Then
        Set Rs = New Recordset
        Rs.Open "select MAX(PRDATE) from  rm_prH where divcode = '" & Divcode & "' AND prdate between '" & Format(yfdate, "yyyy-mm-dd") & "'  and  '" & Format(yldate, "yyyy-mm-dd") & "' and Prno = '" & val(txtfields(1).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
        If CDate(MaskEdBox1(0).Text) < Rs(0) Then
            MsgBox ("Date should be Equal to Current Date Or Max Purchase Requisition Date"), vbInformation, head
            MaskEdBox1(0).Text = Format(Rs(0), "DD/MM/YYYY")
            MaskEdBox1(0).SetFocus
        End If
    Else
        If Index = 0 And (MaskEdBox1(0).Enabled) And Not (Opt = "qry" Or Opt = "  " Or Opt = "") Then
            If Not (IsDate(MaskEdBox1(0).Text)) Then
                MsgBox ("Please enter valid Date"), vbInformation, head
                MaskEdBox1(0).SetFocus
            ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
                    MsgBox ("Purchase Requisition date must be equal to processing date"), vbInformation, head
                    MaskEdBox1(0).Text = Format(pdate, "DD/MM/YYYY") 'pdate
                    MaskEdBox1(0).SetFocus
             ElseIf CDate(MaskEdBox1(0).Text) < pdate Then
                    MsgBox ("Purchase Requisition date must be equal to processing date"), vbInformation, head
                    MaskEdBox1(0).Text = Format(pdate, "dd/mm/yyyy")
                    MaskEdBox1(0).SetFocus
            End If
        End If
            
    End If
    
End If
MaskEdBox1(Index).BackColor = vbWhite
Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form tmpPOINDENT", vbInformation, head
End Sub



 Private Sub SpdIndent_BeforeEditMode(ByVal Col As Long, ByVal Row As Long, ByVal UserAction As FPSpreadADO.BeforeEditModeActionConstants, CursorPos As Variant, Cancel As Variant)
With SpdIndent
    If .ActiveCol = SprdReqdDt And Trim(GetText(SpdIndent, Sprdvarcode, .MaxRows)) <> "" And val(Replace(GetText(SpdIndent, SprdQtyInd, .MaxRows), ",", "")) > 0 Then
        .MaxRows = .MaxRows + 1
        RW = .MaxRows
        .Col = SprdSno
        .SetText SprdSno, .MaxRows, .MaxRows
    End If
    
    If .ActiveCol = SprdQtyInd Then
        Set TmpRs = New Recordset
       
    End If
    If .ActiveCol = E_SpdIndent.SprdReqdDt Then
        .TypeDateMin = Format(MaskEdBox1(0).Text, "DDMMyyYY")
    End If
End With
End Sub

Private Sub SpdIndent_Change(ByVal Col As Long, ByVal Row As Long)
If Opt = "add" Or Opt = "mod" Then
    With SpdIndent
        If Col = SprdSno Then
            .Col = SprdSno
            .SetText SprdSno, Row, .MaxRows
        ElseIf Col = Sprdvarcode Then
            Call itemlookup
       End If
       
    End With
End If
End Sub

Private Sub SpdIndent_Click(ByVal Col As Long, ByVal Row As Long)
With SpdIndent
If Col = SprdSno Then
    If Opt = "add" Or Opt = "mod" Or (Opt = "del" And deltype = "2") Then
        If SpdIndent.MaxRows > 1 Then
            If MsgBox("Are You Sure You want to Delete this Record ?", vbQuestion + vbYesNo, head) = vbYes Then
                SpdIndent.DeleteRows SpdIndent.ActiveRow, 1
                SpdIndent.MaxRows = SpdIndent.MaxRows - 1
                For nRow = 1 To .MaxRows
                    .Row = nRow
                    .SetText SprdSno, .Row, nRow
                Next
            End If
        Else
            MsgBox "You cannot delete this record - Detail can have atleast one record", vbInformation, head
        End If
    ElseIf Opt = "del" Then
        MsgBox "Line deletion not possible now", vbOKOnly, head
    End If
End If
End With
End Sub

Private Sub SpdIndent_GotFocus()
    SpdIndent.Row = SpdIndent.ActiveRow
    SpdIndent.Col = SpdIndent.ActiveCol
    SpdIndent.BackColor = SpdHlightClr
End Sub

Private Sub SpdIndent_KeyDown(KeyCode As Integer, Shift As Integer)
With SpdIndent
    Select Case .ActiveCol
     Case Sprdpack
            If KeyCode = 13 Or KeyCode = 9 Then
                If CStr(GetText(SpdIndent, Sprdpack, .ActiveRow)) = "" Or (Left(CStr(Trim(GetText(SpdIndent, Sprdpack, .ActiveRow))), 1) <> "B" And Left(CStr(Trim(GetText(SpdIndent, Sprdpack, .ActiveRow))), 1) <> "H" And Left(CStr(Trim(GetText(SpdIndent, Sprdpack, .ActiveRow))), 1) <> "R") Then
                    MsgBox "Please Enter the unit B-Bale(or)H-Halfpress bale(or)R-Borah", vbInformation, head
                    
                    SpdSetFocus SpdIndent, Sprdpack1 - 1, .ActiveRow
                End If
            End If
        Case Sprdvarcode
            If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") Then
                 Call itemlookup
            End If
            
            
        Case SprdQtyInd
            If KeyCode = 13 Or KeyCode = 9 Then
                If val(Replace(GetText(SpdIndent, SprdQtyInd, .ActiveRow), ",", "")) = 0 Then
                    MsgBox "Please enter the valid Quantity", vbInformation, head
                    SpdSetFocus SpdIndent, SprdQtyInd, .ActiveRow
                End If
            End If
        Case SprdReqdDt
            If KeyCode = 13 Or KeyCode = 9 Then
                If Trim(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) <> "" Then
                    If IsDate(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) = False Then
                        MsgBox "Required Date must be equal or greater than PR.Date", vbInformation, head
                        SpdSetFocus SpdIndent, SprdReqdDt, .ActiveRow
                    ElseIf IsDate(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) = True And (GetText(SpdIndent, SprdReqdDt, .ActiveRow)) < CDate(Format(MaskEdBox1(0).Text, "dd/mm/yyyy")) Then
                        MsgBox "Required Date must be equal or greater than PR.Date", vbInformation, head
                        SpdSetFocus SpdIndent, SprdReqdDt, .ActiveRow
                    End If
                End If
            End If
            
    End Select
End With
If Opt = "del" Then
    If KeyCode = 8 Or KeyCode = vbKeyDelete Then KeyCode = 0
End If

End Sub

Private Sub SpdIndent_KeyPress(KeyAscii As Integer)
With SpdIndent
    Select Case .ActiveCol
        Case E_SpdIndent.Sprdvarcode
            stbar.Panels(2).Text = "Select valid item from the Item List"
        Case E_SpdIndent.Sprdpack
            stbar.Panels(2).Text = "Select  the unit B-Bale(or)H-Halfpress bale(or)R-Borah"
            If Not (KeyAscii = vbKeyB Or KeyAscii = vbKeyH Or KeyAscii = vbKeyR Or KeyAscii = vbKeyTab Or KeyAscii = vbKeyReturn) Then
                    KeyAscii = 0
            ElseIf Len(GetText(SpdIndent, Sprdpack, .ActiveRow)) > 0 Then
                KeyAscii = 0
            End If
        Case E_SpdIndent.SprdQtyInd
            stbar.Panels(2).Text = "Enter the Required Quantity"
            
        Case E_SpdIndent.SprdReqdDt
            stbar.Panels(2).Text = "Required Date must be equal or greater than PR.Date"
        'Case E_SpdIndent.Sprdmachine
        '    stbar.Panels(2).Text = "Select valid Machine Name from the Machine List"
       ' Case E_SpdIndent.SprdRemarks
       '     stbar.Panels(2).Text = "Enter the Remarks maximum with 30 characters"
    End Select
End With
If Opt = "del" Then
    If KeyAscii <> 9 Then KeyAscii = 0
End If
End Sub

Private Sub SpdIndent_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
If Opt = "del" And Row > 0 And NewRow > 0 Then
    SpdIndent.Row = Row
    SpdIndent.Col = 1
    SpdIndent.BackColor = SpdOrdClr

    SpdIndent.Row = NewRow 'SpdIndent.ActiveRow
    SpdIndent.Col = 1 'SpdIndent.ActiveCol
    SpdIndent.BackColor = SpdHlightClr
End If
If Opt = "add" Or Opt = "mod" Then
    With SpdIndent
        If .ActiveCol = SprdQtyInd Then
            If val(Replace(GetText(SpdIndent, SprdQtyInd, .ActiveRow), ",", "")) = 0 And Trim(GetText(SpdIndent, Sprdvarcode, .ActiveRow)) <> "" Then
                NewCol = .ActiveCol
                Cancel = True
            End If
            If Trim(Replace(GetText(SpdIndent, SprdQtyInd, .ActiveRow), ",", "")) <> "" Then
                Set rsa = New Recordset
'                rsa.Open " SELECT TOP 1 H.PORDNO,H.PORDDT,T.RATE,H.SLCODE,S.slname,H.CurrCode,G.DOCNO,G.DOCDT FROM RMI_ORDH H,RMI_ORDL T,FA_SLMAS S ,IN_TRNTAIL G " & _
'                         " Where h.divcode = t.divcode And h.pordno = t.pordno And h.porddt = t.porddt AND H.POGRP=T.POGRP  AND H.SLCODE=S.slcode " & _
'                         " AND  T.varcode='" & Trim(GetText(SpdIndent, Sprdvarcode, .ActiveRow)) & "' AND T.PORDDT*=G.porddt AND T.PORDNO*=G.pordno AND T.varcode*=G.varcode AND G.TC=1 ORDER BY T.PORDDT DESC ", DB
'                If rsa.RecordCount > 0 Then
'                    .SetText SprdLpoRate, .ActiveRow, rsa("rate")
'                    .SetText SprdLpoNo, .ActiveRow, rsa("PORDNO")
'                    .SetText SprdLpoDate, .ActiveRow, IIf(IsNull(rsa("porddt")), Null, Format(rsa("porddt"), "dd/mm/yy"))
'                    .SetText SprdLPoSlcode, .ActiveRow, rsa("slcode")
'                    .SetText SprdLpoName, .ActiveRow, rsa("slname")
'                    .SetText SprdLGRNNo, .ActiveRow, rsa("DocNo")
'                    .SetText SprdLGRNDt, .ActiveRow, IIf(IsNull(rsa("DocDt")), Null, Format(rsa("DocDt"), "dd/mm/yy"))
'                    .SetText SprdCurr, .ActiveRow, rsa("CurrCode")
'                End If
            End If
        End If
        
        
        
        If .ActiveCol = Sprdvarcode Then
            Set TmpRs = New Recordset
            TmpRs.Open "Select * from RM_VAR where varcode = '" & Trim(GetText(SpdIndent, Sprdvarcode, .ActiveRow)) & "'", DB
            If TmpRs.EOF Then
           '     Call ItemLookup
                stbar.Panels(2).Text = "Select valid item from the Item List"
                Cancel = True
                NewCol = .ActiveCol
            Else
                If Opt = "add" Then
                    'stbar.Panels(2).Text = "Addition"
                ElseIf Opt = "mod" Then
                    'stbar.Panels(2).Text = "Modification"
                End If
            End If
        End If
        
'        SpdIndent.TypeDateCentury = True
'        SpdIndent.TypeDateFormat = TypeDateFormatDDMMYY
'        SpdIndent.TypeDateMin = Format(pdate, "ddmmyyyy")
        If .ActiveCol = SprdReqdDt Then
            If Trim(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) <> "" Then
                If IsDate(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) = False Then
                    stbar.Panels(2).Text = "Required Date must be equal or greater than PR.Date"
                    NewCol = .ActiveCol
                    Cancel = True
                ElseIf IsDate(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) = True And (GetText(SpdIndent, SprdReqdDt, .ActiveRow)) < CDate(Format(MaskEdBox1(0).Text, "dd/mm/yyyy")) Then
                    'SpdIndent.SetText SprdReqdDt, .ActiveRow, Format(pdate, "dd/mm/yyyy")
                    stbar.Panels(2).Text = "Required Date must be equal or greater than PR.Date"
                    NewCol = .ActiveCol
                    Cancel = True
                End If
            End If
        Else
            If Opt = "add" Then
                'stbar.Panels(2).Text = "Addition"
            ElseIf Opt = "mod" Then
                'stbar.Panels(2).Text = "Modification"
            End If
        End If
        
        With SpdIndent
            If .ActiveCol = SprdQtyInd Then
                .Col = SprdQtyInd
                .TypeNumberDecPlaces = 3
            End If
        End With
    End With
    Call SpdHighlight_RMI(SpdIndent, NewRow, NewCol, Row, Col)
    With SpdIndent
        Select Case NewCol
            Case E_SpdIndent.Sprdvarcode
                stbar.Panels(2).Text = "Select valid item from the Item List"
            Case E_SpdIndent.Sprdpack
                stbar.Panels(2).Text = "Select the unit B-Bale(or)H-Halfpress bale(or)R-Borah"
            Case E_SpdIndent.SprdQtyInd
                stbar.Panels(2).Text = "Enter the Required Quantity"
            Case E_SpdIndent.SprdQtyIndkg
                stbar.Panels(2).Text = "Enter the Required Quantity in KG"
            Case E_SpdIndent.SprdReqdDt
                stbar.Panels(2).Text = "Required Date must be equal or greater than PR.Date"
            'Case E_SpdIndent.Sprdmachine
            '    stbar.Panels(2).Text = "Select valid Machine Name from the Machine List"
            'Case E_SpdIndent.SprdRemarks
            '  stbar.Panels(2).Text = "Enter the Remarks maximum with 30 characters"
        End Select
    End With
    
End If
End Sub

Private Sub SpdIndent_LostFocus()
    SpdIndent.Row = SpdIndent.ActiveRow
    SpdIndent.Col = SpdIndent.ActiveCol
    SpdIndent.BackColor = SpdOrdClr
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error
Select Case Index
Case 3
    Set rs1 = New Recordset
    rs1.Open "select Empno,ename from pr_emp where dor is null and divcode='" & Divcode & "' and Empno = " & val(txtfields(3).Text) & "", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        TxtRequester.Text = rs1!ename
    Else
        TxtRequester.Text = ""
    End If
    
    If txtfields(3).Text = "AG" Then
        TxtRequester.Text = "AUTO GENERATED PR"
    End If

Case 2
    Set rs1 = New Recordset
    rs1.Open "select depcode,depname from in_dep where divcode='" & Divcode & "' and depcode = '" & Trim(txtfields(2).Text) & "' Order by 1", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        TxtDepartment.Text = Trim(rs1("depname"))
    Else
        TxtDepartment.Text = ""
    End If
End Select
Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Change of Form tmpPOINDENT", vbInformation, head
End Sub


Private Sub txtfields_GotFocus(Index As Integer)

Select Case Index
   Case 2, 3, 4, 5, 6
     stbar.Panels(2).Text = txtfields(Index).ToolTipText
     txtfields(Index).BackColor = SpdHlightClr
End Select
End Sub

Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
'Call NextFocus(KeyAscii)



End Sub

Private Sub txtfields_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error
    Call NextFocus(KeyAscii)
    
    If Opt = "add" Or Opt = "mod" Then
        Select Case Index
        Case 3
            Call ToAlphanumNoSp(txtfields(Index), 10, KeyAscii)
        Case 4
            'Call ToUpCase(txtFields(Index), KeyAscii)
            Call ToAlphanumNoSp(txtfields(Index), 20, KeyAscii)
        Case 5
            Call ToAlphanumNoSp(txtfields(Index), 30, KeyAscii)
        Case 6
            Call ToAlphanumNoSp(txtfields(Index), 20, KeyAscii)
        End Select
    End If
Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyPress of Form tmpPOINDENT", vbInformation, head
End Sub
Public Sub QUERY_MODE(MDOC As Long, blcode As String)
On Error GoTo query_mode_Error
intervalMinutes = -1
SSTab1.ZOrder
Buttonframe.Enabled = True
Frame1.Enabled = False
Call SetGridHead
Call NEWFORM1(BUTTON, GSNO)
Label1.Caption = ""
If Not Opt = "  " Then
    On Error GoTo er1
    If Opt = "add" Or Opt = "mod" Then
        Call disablcontls
    End If
    If MDOC = 0 Then
        Set adoPrimaryRS = New Recordset
        Call qry1
        Opt = "qry"
       ' If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
    Else
        If Trim(adoPrimaryRS("prno")) = Trim(Text1) Then
            find = True
            'Exit Do
        End If
        If adoPrimaryRS.EOF Then
            stbar.Panels(2).Text = "No Record found"
            Screen.MousePointer = 0
            find = False
            Exit Sub
        End If
        Call bindcontls
        Exit Sub
    End If
 
    Call bindcontls
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
    End If
    Screen.MousePointer = 0
    desc.Caption = "Query"

  
End If
intervalMinutes = -1
Screen.MousePointer = 0
Call disablcontls
Exit Sub


er1:
If Err = 3021 Then
    MsgBox "No records Found", vbInformation, head
    Screen.MousePointer = 0
    Set grddatagrid.DataSource = Nothing
    Call BUTTON_Click(10)
    stbar.Panels(2).Text = "No records Found"
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
End If
Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form tmpPOINDENT", vbInformation, head
End Sub


Public Sub delmodproc(a As String, B As String, c As String)
On Error GoTo delmodproc_Error
    RW = 1000
    BUTTON(9).Enabled = True
    On Error GoTo Er
    Call ENABLCONTLS
    Set adoPrimaryRS = New Recordset
    If backend = "Sql Server" Then
        adoPrimaryRS.Open "SHAPE {select H.DIVCODE,H.PRNO,H.PRDATE,H.REFNO,H.ITYPE,H.reqname,d.ename,userId  from rm_prH H inner join  pr_emp D on h.divcode= d.divcode and h.reqname =d.empno where H.DIVCODE = '" & Divcode & "' AND  H.PRNO = " & val(c) & " and H.PRDATE = '" & Format(B, "dd-mmm-yyyy") & "'} AS ParentCMD APPEND ({select DIVCODE,PRNO,PRDATE,PRSNO,a.varcode ""varcode"",a.varname""Vartity Description"",b.curstock ""Current Stock"",b.curbale ""Current Stock Bales"",QTYIND ""Quantity Required"",QTYINDkg ""Quantity Required in KG"",REQDDATE ""Required Date"",packtype  from  rm_prl b inner join RM_VAR a on  " & _
        "  a.varcode=b.varcode  WHERE  b.DIVCODE = '" & Divcode & "' AND  b.PRNO = " & val(c) & " and b.PRDATE = '" & Format(B, "dd-mmm-yyyy") & "'  Order by PRSNO } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

'SELECT h.prno 'PR.No.',h.prdate 'Date',h.reqname 'Requester Code',d.ename 'Requester Name' from rm_prl l inner join  rm_prH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate inner join  pr_emp D on d.divcode = h.divcode  AND H.reqname = D.empno WHERE  h.divcode = '" & Divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' group by  h.prno,h.prdate,h.REQNAME,d.ename"
    Else
      '  adoPrimaryRS.Open "SHAPE {select H.DIVCODE,H.PRNO,H.PRDATE,H.DEPCODE,H.REFNO,D.DEPNAME,h.blcode,reqname,scopecode,UserId,H.SubCost from  rm_prH H, IN_DEP D where d.divcode='" & Divcode & "' and H.DIVCODE = '" & Divcode & "' and  h.blcode ='" & C & "' and  H.PRNO = " & val(b) & " and H.PRDATE = '" & Format(Trim(a), "dd-mmm-yyyy") & "' and h.depcode (+)= d.depcode} AS ParentCMD APPEND ({select DIVCODE,PRNO,PRDATE,PRSNO,a.varcode ""Item"",b.varname ""Description"",b.uom ""Unit"",b.curstock ""Current Stock"",QTYIND ""Quantity Required"",a.CATCODE ""Category"",CCCODE ""Cost Centre"", BGRPCODE ""Budget Group"",a.MACNO ""Machine Code"",REQDDATE ""Required date"",REMARKS ""Remarks"",a.blcode ""blcode"" from  rm_prl a,RM_VAR b where  a.varcode=b.varcode and PRNO = " & val(b) & " Order by PRSNO } AS ChildCMD RELATE DIVCODE TO DIVCODE, blcode TO blcode ,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
    End If
    Call bindcontls

    Set adoSecondaryRS = New Recordset
    Set adoSecondaryRS.DataSource = adoPrimaryRS("childcmd").UnderlyingValue
    If Opt = "mod" Then
        If Not adoSecondaryRS.EOF Then adoSecondaryRS.MoveFirst
    End If
    Call SpdLoad
    txtfields(1).Locked = True 'False
    MaskEdBox1(0).Enabled = False
    DTPicker1.Enabled = False
    Screen.MousePointer = 0
Exit Sub
Er:
    MsgBox "Select a valid value from the list", vbOKOnly, head
    BUTTON(9).Enabled = False
Exit Sub
delmodproc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodproc of Form tmpPOINDENT", vbInformation, head
End Sub
Public Function newdocno()
Dim v_stdate As String, v_endate As String
Dim Rs As Recordset
Dim tcrs As Recordset
'This following  coding is used to get the document number from the parameter

On Error GoTo newdocno_Error

Set tcrs = New Recordset
tcrs.Open "select tc,stdocno From  RMI_DOC_PARA where tc = 'PURCHASE REQUISITION' ", DB, adOpenStatic, adLockBatchOptimistic
If tcrs.BOF Then
    MsgBox "No such transaction in the parameter table , Consult your DBA ", vbInformation, head
    newdocno = ""
    Screen.MousePointer = 0
Else
    v_stdate = Format(yfdate, "dd-mmm-yyyy")
    v_endate = Format(yldate, "dd-mmm-yyyy")
    
    Set Rs = New Recordset
    Rs.Open "select max(prno) from  rm_prH where divcode = '" & Divcode & "' AND prdate between '" & v_stdate & "'  and  '" & v_endate & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    If Not (IsNull(Rs(0))) And (Rs.BOF = False) Then 'check new entry for the year or not
        newdocno = Rs(0) + 1
    Else
        newdocno = val(tcrs(1))
    End If
    
End If

Exit Function
newdocno_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure newdocno of Form RMI_PurchaseRequisition", vbInformation, head
End Function

Public Sub qry1()
On Error GoTo qry1_Error

If backend = "Sql Server" Then
''''    adoprimaryrs.Open "SHAPE {select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,reqname,scopecode,AppFlg,APP1,App2,App3,isNull(userid,'')userId,Th.SubCost,th.Prtype,Note,PurPose,th.Unitcode,Category,Createdby from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  *= D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND  TH.DIVCODE = '" & Divcode & "'  AND CANCELFLAG IS NULL and isnull(th.DelFlg,'N')<>'Y' " & _
''''                    " Order by PRNO} AS ParentCMD APPEND ({select distinct t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""Item"",i.varname ""Description"",i.Cuom ""Unit"",I.RATE ""Rate"",t.macno""Machine Code"",S.Model,t.curstock ""Current Stock"",t.QTYIND ""Quantity Required"",QTYREQD ""Quantity Approved"",QTYord ""Quantity Ordered"",qtyrec ""Quantity Received"",reqddate ""Required Date"",'Indent Status' = (case WHEN ISNULL(CLOSEDQTY,0)>0  THEN 'ORDER CLOSED' WHEN PRSTATUS IS NULL AND FirstApp IS NULL OR FirstApp = '' THEN 'INDENT'  WHEN PRSTATUS IS NULL AND QTYREQD=0   THEN 'INDENT CANCELLED'  WHEN PRSTATUS IS NULL AND DIRECTAPP='Y' THEN 'FINAL LEVEL APPROVED' WHEN PRSTATUS IS NULL AND ThirdApp='Y' THEN 'THIRD LEVEL APPROVED' WHEN PRSTATUS IS NULL AND SecondApp='Y' THEN 'SECOND LEVEL APPROVED'  WHEN PRSTATUS IS NULL AND FirstApp='Y' THEN 'FIRST LEVEL APPROVED' " & _
''''                    " WHEN PRSTATUS = 'O' AND QTYORD > 0  THEN 'ORDERED' WHEN PRSTATUS = 'O' AND QTYORD = 0  THEN 'ORDER CANCELLED'  WHEN PRSTATUS = 'E' THEN 'ENQUIRED' WHEN PRSTATUS = 'C' THEN 'RECEIVED' END ),FinalLevel_Remarks ,place ""Place Of Issue"" ,appcost ""Approx. Cost"",remarks ""Remarks"",LRMI_RATE,LRMI_DATE,PUR_FROM,Sample,LRMI_CURRCODE from  rm_prL t, RM_VAR i, mm_MACmas S ,rm_prH h where t.divcode=h.divcode " & _
''''                    " and t.divcode ='" & Divcode & "' and s.divcode='" & Divcode & "'  and isnull(t.DelFlg,'N')<>'Y' and t.prno=h.prno and t.prdate=h.prdate and h.depcode*=s.depcode and t.macno *= s.mac_no and t.varcode = i.varcode and t.Prdate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
MsqlStr = " SHAPE { Select distinct top 10 th.DIVCODE,th.prno,th.PRDATE,AppFlg,isNull(userid,'')userId,"
MsqlStr = MsqlStr + " th.IType , refno, appflg,th.reqname "
MsqlStr = MsqlStr + " from  rm_prH th INNER JOIN  pr_emp d ON th.REQNAME = d.empno   and  th.divcode = d.divcode"
MsqlStr = MsqlStr + " where TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND  TH.DIVCODE = '" & Divcode & "'  Order by prno desc "
MsqlStr = MsqlStr + "} AS ParentCMD APPEND ({select distinct t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""VarityCode"",i.Varname ""Description"",t.curstock ""Current Stock"",t.curbale ""Current Stock Bales"",t.QTYIND ""Quantity Required"",t.QTYINDKG ""Quantity Required"",reqddate ""Required Date"" "
MsqlStr = MsqlStr + "  from  rm_prL t inner join   rm_Var i on  t.varcode = i.varcode   inner join rm_prH h on t.divcode=h.divcode and  t.prno=h.prno and t.prdate=h.prdate    where "
MsqlStr = MsqlStr + " t.divcode ='" & Divcode & "' and t.Prdate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD"
                    
                    

adoPrimaryRS.Open MsqlStr, DB, adOpenStatic, adLockBatchOptimistic
                    
'MsqlStr = MsqlStr + " where TH.PRDATE betweenbetween '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND  TH.DIVCODE = '" & Divcode & "'  Order by PRNO"

'Else
'    adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.blcode,th.itype,th.section,reqname,scopecode from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  (+)= D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "' " & _
'    " Order by PRNO} AS ParentCMD  APPEND ({select t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""Item"",i.varname ""Item Description"",i.Cuom ""Unit"",s.macdes ""Machine Code"",t.curstock ""Current Stock"",t.QTYIND ""Quantity Required"",QTYREQD ""Quantity Ordered"",qtyrec ""Quantity Received"",reqddate ""Required Date"",decode(PRSTATUS,'O','ORDERED','E','ENQUIRED','R','RECEIVED','C','RECEIVED','INDENT') ""Indent Status"" ,remarks ""Remarks"",t.blcode ""blcode"",remark1 ""REMARKS1"" from  rm_prL t, RM_VAR i, IN_MAC S  where    t.macno = s.macno(+) and t.varcode = i.varcode Order by t.varcode,t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE , blcode TO blcode ,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
End If

Exit Sub
qry1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qry1 of Form tmpPOINDENT", vbInformation, head
End Sub
Public Sub fnd1(MDOC)
On Error GoTo fnd1_Error
If backend = "Sql Server" Then

MsqlStr = " SHAPE { Select distinct th.DIVCODE,th.prno,th.PRDATE,AppFlg,isNull(userid,'')userId,"
MsqlStr = MsqlStr + " th.IType , refno, appflg,th.reqname "
MsqlStr = MsqlStr + " from  rm_prH th INNER JOIN  pr_emp d ON th.REQNAME = d.empno   and  th.divcode = d.divcode"
MsqlStr = MsqlStr + " where TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND  TH.DIVCODE = '" & Divcode & "'  Order by PRNO"
MsqlStr = MsqlStr + "} AS ParentCMD APPEND ({select distinct t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""VarityCode"",i.Varname ""Description"",t.curstock ""Current Stock"",t.curbale ""Current Stock Bales"",t.QTYIND ""Quantity Required"",t.QTYINDKG ""Quantity Required"",reqddate ""Required Date"" "
MsqlStr = MsqlStr + "  from  rm_prL t inner join   rm_Var i on  t.varcode = i.varcode   inner join rm_prH h on t.divcode=h.divcode and  t.prno=h.prno and t.prdate=h.prdate    where "
MsqlStr = MsqlStr + " t.divcode ='" & Divcode & "' and t.Prdate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD"
adoPrimaryRS.Open MsqlStr, DB, adOpenStatic, adLockBatchOptimistic


'    adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,isnull(userid,'')UserId,Th.SubCost from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  *= D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "' AND CANCELFLAG IS NULL " & _
'                      " Order by PRNO} AS ParentCMD APPEND ({select t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""Item"",i.varname ""Description"",i.Cuom ""Unit"",I.RATE ""Rate"",t.macno ""Machine Code"",S.Model,t.curstock ""Current Stock"",t.QTYIND ""Quantity Required"",QTYREQD ""Quantity Approved"",QTYord ""Quantity Ordered"",qtyrec ""Quantity Received"",reqddate ""Required Date"",'Indent Status' = (case WHEN ISNULL(CLOSEDQTY,0)>0  THEN 'ORDER CLOSED' WHEN PRSTATUS IS NULL AND FirstApp IS NULL OR FirstApp = '' THEN 'INDENT'  WHEN PRSTATUS IS NULL AND QTYREQD=0   THEN 'INDENT CANCELLED'  WHEN PRSTATUS IS NULL AND DIRECTAPP='Y' THEN 'FINAL LEVEL APPROVED' WHEN PRSTATUS IS NULL AND ThirdApp='Y' THEN 'THIRD LEVEL APPROVED' WHEN PRSTATUS IS NULL AND SecondApp='Y' THEN 'SECOND LEVEL APPROVED'  WHEN PRSTATUS IS NULL AND FirstApp='Y' THEN 'FIRST LEVEL APPROVED' " & _
'                      " WHEN PRSTATUS = 'O' AND QTYORD > 0  THEN 'ORDERED' WHEN PRSTATUS = 'O' AND QTYORD = 0  THEN 'ORDER CANCELLED'  WHEN PRSTATUS = 'E' THEN 'ENQUIRED' WHEN PRSTATUS = 'C' THEN 'RECEIVED'  END ),place ""Place Of Issue"" ,appcost ""Approx. Cost"",remarks ""Remarks"",LRMI_CURRCODE from  rm_prL t, RM_VAR i, mm_MACmas S ,rm_prH h where t.divcode=h.divcode and t.divcode='" & Divcode & "' and s.divcode='" & Divcode & "' and t.prno=h.prno and t.prdate=h.prdate and h.depcode*=s.depcode and t.macno *= s.mac_no and t.varcode = i.varcode and t.Prdate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
Else
    adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.blcode,th.itype,th.section,reqname,scopecode,isnull(userid,'')UserId from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  (+)= D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "' and th.blcode ='" & DataCombo3 & "'  and th.prno = " & MDOC & _
                      " Order by PRNO} AS ParentCMD APPEND ({select distinct t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""Item"",i.varname ""Item Description"",i.Cuom ""Unit"",s.macdes ""Machine Code"",t.QTYIND ""Qty Required"",QTYREQD ""Qty Ordered"",qtyrec ""Qty Received"",reqddate ""Required Date"",decode(PRSTATUS,'O','ORDERED','E','ENQUIRED','R','RECEIVED','C','RECEIVED','INDENT') ""Indent Status"" ,remarks ""Remarks"",t.blcode ""blcode"" from  rm_prL t, RM_VAR i, IN_MAC S  where   t.macno = s.macno(+) and t.varcode = i.varcode Order by t.varcode } AS ChildCMD RELATE DIVCODE TO DIVCODE ,blcode TO blcode ,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
End If
Exit Sub
fnd1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure fnd1 of Form tmpPOINDENT", vbInformation, head
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
    If t + 1 > UBound(ITARY) Then
        ReDim Preserve ITARY(t + 100, 0)
    End If
    ITARY(t + 1, 0) = grddatagrid.Columns(G_varcode)
    For I = 0 To t
        If ITARY(t + 1, 0) = ITARY(I, 0) Then
            Fnd = "y"
            Exit For
        End If
    Next
    End If
Exit Sub
chkrepeat_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure chkrepeat of Form tmpPOINDENT", vbInformation, head
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)

On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
    Select Case Index
    
    Case 3
        'If Trim(txtFields(Index).Text) <> "" Then
            KeyAscii = 0
            Set rs1 = New Recordset
            rs1.Open "select Empno,ename from pr_emp where  divcode='" & Divcode & "' and  Empno = " & val(txtfields(Index).Text) & " ", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                txtfields(Index).Text = Trim(rs1("Empno"))
                 TxtRequester = Trim(rs1("ename"))
            Else
                Call ScopeLookup
                If txtfields(Index).Text = "" Then
                    Cancel = True
                End If
            End If
        'Else
            'KeyAscii = 0
            'Call ScopeLookup
            'If txtFields(Index).Text = "" Then
                'CANCEL = True
            'End If
        'End If
    
    Case 2
'''            Set rs1 = New Recordset
'''            rs1.Open "select depcode,depname from in_dep where divcode='" & Divcode & "' and depcode = '" & Trim(Txtfields(Index).Text) & "'", DB, adOpenStatic
'''            If rs1.RecordCount > 0 Then
'''                Txtfields(Index).Text = Trim(rs1("depcode"))
'''                TxtDepartment.Text = Trim(rs1("depname"))
'''                Txtfields(4).SetFocus
'''            Else
'''                Call DepLookup
'''                If Txtfields(Index).Text = "" Then
'''                    Cancel = True
'''                End If
'''            End If
    End Select
End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_Validate of Form tmpPOINDENT", vbInformation, head
    
End Sub
'Sub DepLookup()
'On Error GoTo DepLookup_Error
'LookUp.clear = True
'LookUp.query = "select Depname 'Department',Depcode 'Code' from In_dep where divcode='" & Divcode & "' order by 1"
'LookUp.Caption = "Department Listing"
'LookUp.DefCol = "Department"
'LookUp.ALIGN = "6000,1000"
'Screen.MousePointer = 0
'LookUp.Show vbModal
'If LookUp.Cancel = False Then
'    Txtfields(2).Text = LookUp.Fields(1)
'    TxtDepartment.Text = LookUp.Fields(0)
'    LookUp.clear = True
'    CmbCategory.SetFocus
'Else
'    LookUp.clear = True
'    Txtfields(5).SetFocus
'    Exit Sub
'End If
'Exit Sub
'DepLookup_Error:
'    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DepLookup of Form tmpPOINDENT", vbInformation, head
'End Sub

'Sub MacLookup()
'On Error GoTo MacLookup_Error
'Set rsa = New Recordset
'rsa.Open "select Mac_no,Description from mm_macmas where divcode='" & Divcode & "' and depcode='" & Trim(Txtfields(2).Text) & "'", DB, adOpenStatic
'If rsa.RecordCount > 0 Then
'    LookUp.clear = True
'    LookUp.query = "select Mac_no 'Machine No',Description 'Machine Name', MacMake 'Make', Model, MacSerialNo 'SerialNo.'  from mm_macmas where MACFLAG='M' AND divcode='" & Divcode & "' and depcode='" & Trim(Txtfields(2).Text) & "'"
'    LookUp.Caption = "Machine Listing"
'    LookUp.DefCol = "Machine Name"
'    LookUp.ALIGN = "1200,3500,1300,1300,1300"
'    Screen.MousePointer = 0
'    LookUp.Show vbModal
'    If LookUp.Cancel = False Then
'        SpdIndent.SetText Sprdmachine, SpdIndent.ActiveRow, LookUp.Fields(0)
'        LookUp.clear = True
'    End If
'End If
'Exit Sub
'
'MacLookup_Error:
'    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MacLookup of Form tmpPOINDENT", vbInformation, head
'
'End Sub
Sub itemlookup()
On Error GoTo itemlookup_Error
Dim CurrStk As Double, TItem As String
LookUp.Clear = True
LookUp.query = "select  varname as [Varity Name],varcode as [Varity Code],VARTYPE 'Variety Type',CASE WHEN VARTYPE='G' THEN 'Grey' WHEN VARTYPE='D' THEN 'Dyed' ELSE '' End 'Variety Desc.',SHADENO 'Shade',Denier,Length from RM_VAR where isnull(Is_Active,'N')='Y'"
LookUp.DefCol = "Item Description"
LookUp.Caption = "Item Listing"
LookUp.ALIGN = "3000,1200,1200,1000,900,1000,1000"
LookUp.Alignment = "dbgleft,dbgleft"
Screen.MousePointer = 0
LookUp.Show vbModal
If LookUp.Cancel = False Then
    
    Set itemrs = New Recordset
    itemrs.Open "Select varname from RM_VAR where varcode='" & LookUp.Fields(1) & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Not itemrs.EOF Then
        Call RepeatCheck(LookUp.Fields(1))
        With SpdIndent
            If Repeat = False Then
                .SetText Sprdvarcode, .ActiveRow, CStr(LookUp.Fields(1))
                .SetText sprdvarname, .ActiveRow, CStr(LookUp.Fields(0))
                
                TItem = CStr(LookUp.Fields(1))
                Set RSStk = New Recordset
                RSStk.Open "exec KSP_VARIETYSTOCK '" & Divcode & "','" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & TItem & "'", DB, adOpenStatic
                If Not RSStk.EOF Then
                Label1.Caption = CStr(RSStk(0))
                End If
                
                CurrStk = val(CurrentStock(TItem, pdate))
              '  CurrStk = 0
                .SetText SprdCurStk, .ActiveRow, CurrStk
                .Col = E_SpdIndent.SprdCurStk
                .SetFocus
                .Action = 0
                Currbales = val(CurrentStockBales(TItem, pdate))
              '  CurrStk = 0
                .SetText SprdCurBales, .ActiveRow, Currbales
                .Col = E_SpdIndent.SprdCurBales
                .SetFocus
                .Action = 0
            Else
                .SetText E_SpdIndent.Sprdvarcode, RW, " "
                .SetText E_SpdIndent.sprdvarname, RW, " "
                .Col = E_SpdIndent.Sprdvarcode
                .SetFocus
            End If
        End With
        LookUp.Clear = True
        LookUp.Clear = True
    Else
    
        SpdIndent.Col = Sprdvarcode
        On Error Resume Next
        SpdIndent.SetFocus
    End If
End If

Exit Sub
itemlookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ItemLookup of Form RMI_PurchaseRequisition", vbInformation, head
    Resume
End Sub

Sub ScopeLookup()
On Error GoTo ScopeLookup_Error
LookUp.Clear = True
LookUp.query = "select ename 'Employee Name',Empno 'Employee No' from pr_emp where dor is null and divcode='" & Divcode & "'"
LookUp.Caption = "Requester Listing"
LookUp.DefCol = "Employee Name"
LookUp.ALIGN = "5500,1500"
Screen.MousePointer = 0
LookUp.Show vbModal
If LookUp.Cancel = False Then
    txtfields(3).Text = LookUp.Fields(1)
    TxtRequester.Text = LookUp.Fields(0)
    LookUp.Clear = True
    txtfields(4).SetFocus
Else
    txtfields(3).SetFocus
    Exit Sub
End If

Exit Sub
ScopeLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ScopeLookup of Form tmpPOINDENT", vbInformation, head

End Sub
Private Sub txtfields_LostFocus(Index As Integer)
    Select Case Index

Case 1
    Call IndentNoChk
Case 4
    SpdSetFocus SpdIndent, Sprdvarcode, SpdIndent.ActiveRow
End Select
Select Case Index
   Case 2, 3, 4, 5, 6
     txtfields(Index).BackColor = vbWhite
End Select
End Sub
Private Sub IndentNoChk()
    If ManualIndNo = "Y" Then
          Set Rs = New Recordset
          Rs.Open "select count(*) Rec from  rm_prH where divcode = '" & Divcode & "' AND prdate between '" & Format(yfdate, "yyyy-mm-dd") & "'  and  '" & Format(yldate, "yyyy-mm-dd") & "' and Prno = '" & val(txtfields(1).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
          If Rs(0) <> 0 Then
              MsgBox "'PR.No.' already Exist ", vbInformation, head
              txtfields(1).Text = ""
              txtfields(1).SetFocus
              Exit Sub
          End If
          If val(txtfields(1)) = 0 Then
              MsgBox "Please Enter PR.No.", vbInformation, head
              txtfields(1).SetFocus
              Exit Sub
          End If
    End If
End Sub
'''Private Sub stock_find()
'''On Error GoTo stock_find_Error
'''            Call stkchk1(Trim(GetText(SpdIndent, Sprdvarcode, RW)), DB, "")
'''            Call stkchk2(Trim(GetText(SpdIndent, Sprdvarcode, RW)), DB, "")
'''            If curstk < curstk1 Then
'''                SpdIndent.SetText SprdCurStk, SpdIndent.ActiveRow, val(curstk)
'''            Else
'''                SpdIndent.SetText SprdCurStk, SpdIndent.ActiveRow, val(curstk1)
'''            End If
'''            If curstk = curstk1 Then
'''                SpdIndent.SetText SprdCurStk, SpdIndent.ActiveRow, val(curstk)
'''            End If
'''            SpdIndent.SetText SprdCurStk, SpdIndent.ActiveRow, Format(val(curstk), "#.000")
'''Exit Sub
'''stock_find_Error:
'''    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure stock_find of Form tmpPOINDENT", vbInformation, head
'''End Sub

Private Sub SetGridHead()
On Error GoTo SetGridHead_Error
With SpdIndent
    .ClearSelection
    .MaxRows = 0
    If Opt = "add" Or Opt = "mod" Then
        .ColHeadersAutoText = DispBlank
        .ClearSelection
        .MaxCols = SprdReqdDt
        .Row = 0
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdSno, "S.No.", CellTypeNumber, 5, , False, True
         .Col = E_SpdIndent.Sprdvarcode
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        'SetSpreadCol SpdIndent, E_SpdIndent.SprdItemcode, "Item Code", CellTypeEdit, 8, , False, False
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.Sprdvarcode, "Variety Code", CellTypeEdit, 8, , , False
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.sprdvarname, "Variety Name", CellTypeStaticText, 35, , False, False
        .Col = SprdCurStk
        .FontBold = True
        .ForeColor = RGB(0, 130, 0)
        .TypeHAlign = TypeHAlignRight
        .TypeEditCharSet = TypeEditCharSetNumeric
        'SetSpreadCol SpdIndent, E_SpdIndent.SprdItemcode, "Item Code", CellTypeEdit, 8, , False, False
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdCurStk, "Current Stock Quantity", CellTypeNumber, 11, 3, False, True
        
        .Col = SprdCurBales
        .FontBold = True
        .ForeColor = RGB(0, 130, 0)
        .TypeHAlign = TypeHAlignRight
        .TypeEditCharSet = TypeEditCharSetNumeric
        'SetSpreadCol SpdIndent, E_SpdIndent.SprdItemcode, "Item Code", CellTypeEdit, 8, , False, False
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdCurBales, "Current Stock Bales", CellTypeNumber, 11, 0, False, True
        
        .Col = E_SpdIndent.Sprdpack
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        
        'SetSpreadCol_RMI SpdIndent, E_SpdIndent.Sprdpack, "Pack Type", CellTypeEdit, 10, , False, False
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.Sprdpack, "Pack Type ", CellTypeComboBox, 12, , , False
        SpdIndent.TypeComboBoxList = "B-Bale" & vbTab & "H-Half Press" & vbTab & "R-Broach"
        .Col = SprdQtyInd
        
        .TypeNumberMin = 0.001
        .TypeNumberSeparator = ","
        .TypeNumberShowSep = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdQtyInd, "Required Quantity ", CellTypeNumber, 10, 0, False, False
        
        .Col = SprdQtyIndkg
        .TypeNumberMin = 0.001
        .TypeNumberSeparator = ","
        .TypeNumberShowSep = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdQtyIndkg, "Required Quantity in KG", CellTypeNumber, 14, 3, False, False
        
        .Col = E_SpdIndent.SprdReqdDt
        .TypeDateCentury = False
        .TypeDateFormat = TypeDateFormatDDMMYY
        .TypeDateMin = Format(pdate, "DDMMYYYY")
        .TypeSpin = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdReqdDt, "Required Date", CellTypeDate, 12, , False, False
        .Col = SprdReqdDt
        .TypeHAlign = TypeHAlignCenter
        
    ElseIf Opt = "" Or Opt = " " Or Opt = "qry" Then
        .ColHeadersAutoText = DispBlank
        .MaxCols = SprdReqdDt
        .Row = 0
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdSno, "S.No.", CellTypeNumber, 5, , False, True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.Sprdvarcode, "Variety Code", CellTypeEdit, 8, , False, True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.sprdvarname, "Variety Name", CellTypeStaticText, 35
        .Col = SprdCurStk
        .FontBold = True
        .ForeColor = RGB(0, 130, 0)
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdCurStk, "Current Stock Quantity", CellTypeNumber, 11, 3, False, True
        
        .Col = SprdCurBales
        .FontBold = True
        .ForeColor = RGB(0, 130, 0)
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdCurBales, "Current Stock Bales", CellTypeNumber, 11, 0, False, True
        
        .Col = E_SpdIndent.Sprdpack
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.Sprdpack, "Pack Type", CellTypeEdit, 10, , False, False
        .Col = SprdQtyInd
        .TypeNumberSeparator = ","
        .TypeNumberShowSep = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdQtyInd, "Required Quantity", CellTypeNumber, 10, 0, False, True
        .Col = SprdQtyIndkg
        .TypeNumberSeparator = ","
        .TypeNumberShowSep = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdQtyIndkg, "Required Quantity in KG", CellTypeNumber, 14, 3, False, True
        .Col = SprdReqdDt
        .TypeDateCentury = False
       ' .TypeDateFormat = TypeDateFormatDDMMYYYY
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdReqdDt, "Required Date", CellTypeStaticText, 11, , False, True
        .Col = SprdReqdDt
        .TypeHAlign = TypeHAlignCenter
        
    End If
End With


Exit Sub
SetGridHead_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetGridHead of Form FrmIndentDirectorAppr"
End Sub
Private Sub SpdLoad()

On Error GoTo SpdLoad_Error

    Call SetGridHead
        SpdIndent.MaxRows = 0
        
        If Opt = "qry" Or Opt = "" Then
           SpdIndent.MaxCols = SprdReqdDt

        Else
            SpdIndent.MaxCols = SprdReqdDt
        End If
        SpdIndent.CursorStyle = CursorStyleArrow
        RW = 1
        Do While Not adoSecondaryRS.EOF
            SpdIndent.MaxRows = SpdIndent.MaxRows + 1
            
            SpdIndent.SetText E_SpdIndent.SprdSno, RW, adoSecondaryRS("prsno")
            SpdIndent.SetText E_SpdIndent.Sprdvarcode, RW, adoSecondaryRS("varcode")
            SpdIndent.SetText E_SpdIndent.sprdvarname, RW, adoSecondaryRS("Vartity Description")
            SpdIndent.SetText E_SpdIndent.SprdCurStk, RW, adoSecondaryRS("Current Stock")
            SpdIndent.SetText E_SpdIndent.SprdCurBales, RW, adoSecondaryRS("Current Stock Bales")
            If adoSecondaryRS("Packtype") = "H" Then
            SpdIndent.SetText E_SpdIndent.Sprdpack, RW, "H-Half Press"
            ElseIf adoSecondaryRS("Packtype") = "R" Then
            SpdIndent.SetText E_SpdIndent.Sprdpack, RW, "R-Broach"
            Else
            SpdIndent.SetText E_SpdIndent.Sprdpack, RW, "B-Bale"
            End If
            SpdIndent.SetText E_SpdIndent.SprdQtyInd, RW, adoSecondaryRS("Quantity Required")
            SpdIndent.SetText E_SpdIndent.SprdQtyIndkg, RW, adoSecondaryRS("Quantity Required in KG")
            SpdIndent.SetText E_SpdIndent.SprdReqdDt, RW, Format(adoSecondaryRS("Required Date"), "dd/MM/yy")
            adoSecondaryRS.MoveNext
            RW = RW + 1
        Loop
    
    If adoPrimaryRS("Itype") = "P" Then
        CmbPrtype.Text = "P -Packwise"
    Else
        CmbPrtype.Text = "K - Kgswise"
    End If
Exit Sub
SpdLoad_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdLoad of Form RMI_PurchaseRequisition", vbInformation, head
End Sub

Private Sub RepeatCheck(Item)
On Error GoTo RepeatCheck_Error

Repeat = False
With SpdIndent
    .Row = RW
    For I = 1 To .MaxRows - 1
        If (GetText(SpdIndent, E_SpdIndent.Sprdvarcode, I)) <> "" Then
            If (GetText(SpdIndent, E_SpdIndent.Sprdvarcode, I)) = Item Then
                Repeat = True
                GoTo msg:
            Else
                Repeat = False
            End If
        End If
    Next
msg:
    If Repeat = True Then
        MsgBox "Item Code must be unique", vbInformation, head
        Exit Sub
    End If
End With

Exit Sub
RepeatCheck_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure RepeatCheck of Form RMI_PurchaseRequisition", vbInformation, head
End Sub
Sub FillPrtypeCombo()
    CmbPrtype.Clear
    CmbPrtype.AddItem "P -Packwise"
    CmbPrtype.AddItem "K - Kgswise"
    CmbPrtype.ListIndex = 0
End Sub
Sub FillPrCategory()
    CmbCategory.Clear
    Set CMBRS = New Recordset
    CMBRS.Open "SELECT Idesc  FROM  RMI_IndentType ORDER BY def DESC ", DB, adOpenStatic
    If CMBRS.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
    CMBRS.MoveFirst
    Do While Not (CMBRS.EOF)
       CmbCategory.AddItem CStr(CMBRS(0))
       CMBRS.MoveNext
    Loop
    CmbCategory.ListIndex = 0
End Sub


Public Function CurrentStock(Varcode As String, STR As String) As Double
'''    Dim CurrRs As Recordset
'''    Set CurrRs = New Recordset
'''    CurrRs.Open " SELECT X.varcode,SUM(isnull(X.REC,0))-SUM(Isnull(X.ISS,0))BalanceQty FROM (" & _
'''                " SELECT T.TC,A.varcode,SUM(Isnull(A.QUANTITY,0))REC, 0 ISS FROM in_trntail A,IN_TC t WHERE a.TC=t.TC and DIVCODE='" & Divcode & "' " & _
'''                " AND varcode='" & Varcode & "' AND t.tctype IN (1,3,5,7) " & _
'''                " AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY A.varcode,t.TC " & _
'''                " Union All " & _
'''                " SELECT T.TC,A.varcode,0 REC,SUM(isnull(A.QUANTITY,0))ISS FROM in_trntail A,IN_TC t WHERE a.TC=t.TC and DIVCODE='" & Divcode & "'" & _
'''                " AND varcode='" & Varcode & "' AND t.tctype IN (2,4,6,8) " & _
'''                " AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY A.varcode,t.TC )X " & _
'''                " GROUP BY X.varcode ", DB, adOpenDynamic, adLockReadOnly
'''    If Not CurrRs.EOF Then
'''        CurrentStock = CurrRs("BalanceQty")
'''    Else
'''        CurrentStock = 0
'''    End If


Dim F_Date As String
Dim T_Date As String


Dim rs1 As Recordset
Dim RS2 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim tot16 As Double
Dim totRejBales, totRejBoras, totRejKgs, totRejValue As Double
Dim Cnn As Connection
Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Cnn.CommandTimeout = 2000

F_Date = STR
T_Date = STR
catcd = "ALL"
FVar = Varcode
TVar = Varcode
pRecType = "ALL"
 
SR = catcd
SR = catcd
vrectype = Trim(Left(pRecType, 3))
pg1 = 1
co = 0
        
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0
tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0
tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
tot16 = 0:
totRejBales = 0: totRejBoras = 0: totRejKgs = 0: totRejValue = 0

vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0
VTOT = 0
vtotRejBales = 0: vtotRejBoras = 0: vtotRejKgs = 0: vtotRejValue = 0


Set rs1 = New Recordset


  If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
      YFF = Year(yfdate)
   ElseIf Year(yfdate) + 1 = Year(F_Date) Then
      YFF = Year(yfdate)
   Else
      YFF = Year(yfdate)
   End If
  
    Set RSV = New Recordset
        strSQL = " select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(F_Date, T_Date)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE BETWEEN '" & FVar & "' AND '" & TVar & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' "

                    
        If Trim(SR) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
            End If
        End If

'        MsgBox rs1!varcode
    Set RSV = New Recordset
        RSV.Open strSQL, Cnn, adOpenStatic, adLockBatchOptimistic
Do While Not RSV.EOF

            
   'Print #a,
   co = co + 1
         VTOT = VTOT + RSV("opbales")
         vtot1 = vtot1 + RSV("opboras")
         vtot2 = vtot2 + RSV("opkgs")
         vtot3 = vtot3 + RSV("recbales")
         VTOT4 = VTOT4 + RSV("recboras")
         VTOT5 = VTOT5 + RSV("reckgs")
         VTOT6 = VTOT6 + RSV("issbales")
         VTOT7 = VTOT7 + RSV("issboras")
         VTOT8 = VTOT8 + RSV("isskgs")
         
         vtotRejBales = RSV!rejBales
         vtotRejKgs = RSV!rejkgs
      '   vtotRejValue = RSV!REJVALUE
        
        
        totRejBales = val(totRejBales) + val(RSV!rejBales)
        totRejBoras = totRejBoras
        totRejKgs = val(totRejKgs) + val(RSV!rejkgs)
        totRejValue = val(totRejValue) + val(RSV!REJVALUE)
   
        
        VTOT9 = VTOT9 + RSV("clobales")
        VTOT10 = VTOT10 + RSV("cloboras")
        VTOT11 = VTOT11 + RSV("clokgs")
        
        VTOT15 = VTOT15 + IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE"))

         VTOT12 = VTOT12 + RSV("opvalue")
         VTOT13 = VTOT13 + RSV("recvalue")
         VTOT14 = VTOT14 + RSV("issvalue")
         vtotRejValue = vtotRejValue + RSV!REJVALUE
      
    VarName = RSV!VarName
                
   Set opf = New Recordset
   If Trim(SR) = "A" Then SR1 = "'C','P','V'" Else SR1 = SR
   
   'Print #a, Space(4) + Padr((CStr(VarName)), 14, " ") & Padl(INF(VTOT, 0), 7, " ") + Padl(INF(vtot1, 0), 6, " ") + Padl(INF(vtot2, 3), 14, " ") + Padl(INF(VTOT12, 2), 16, " ") + Padl(INF(vtot3, 0), 7, " ") + Padl(INF(VTOT4, 0), 6, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 7, " ") + Padl(INF(VTOT7, 0), 6, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(vtotRejBales, 0), 7, " ") + Padl(INF(vtotRejBoras, 0), 6, " ") + Padl(INF(vtotRejKgs, 3), 14, " ") + Padl(INF(vtotRejValue, 2), 16, " ") + Padl(INF(VTOT9, 0), 7, " ") + Padl(INF(VTOT10, 0), 6, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
   tot1 = val(tot1 + VTOT)
   tot2 = val(tot2 + vtot1)
   tot3 = val(tot3 + vtot2)
   tot4 = val(tot4 + vtot3)
   tot5 = val(tot5 + VTOT4)
   tot6 = val(tot6 + VTOT5)
   tot7 = val(tot7 + VTOT6)
   tot8 = val(tot8 + VTOT7)
    
   tot9 = val(tot9 + VTOT8)
   tot10 = val(tot10 + VTOT9)
   tot11 = val(tot11 + VTOT10)
   tot12 = val(tot12 + VTOT11)
   tot13 = val(tot13 + VTOT12)   'Opening value
   tot14 = val(tot14 + VTOT13)   'Received value
   tot15 = val(tot15 + VTOT14)   'Issue VaLUE
   tot16 = val(tot16 + VTOT15)   'Clse value
   

   
   vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
   VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
   VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0: VTOT = 0
   vtotRejBales = 0: vtotRejBoras = 0: vtotRejKgs = 0: vtotRejValue = 0
30:
   RSV.MoveNext
Loop
   If tot12 <> Empty Then
        CurrentStock = INF(val(tot12), 3)
            Else
            CurrentStock = 0
            End If


End Function
Public Function CurrentStockBales(Varcode As String, STR As String) As Double
'''    Dim CurrRs As Recordset
'''    Set CurrRs = New Recordset
'''    CurrRs.Open " SELECT X.varcode,SUM(isnull(X.REC,0))-SUM(Isnull(X.ISS,0))BalanceQty FROM (" & _
'''                " SELECT T.TC,A.varcode,SUM(Isnull(A.QUANTITY,0))REC, 0 ISS FROM in_trntail A,IN_TC t WHERE a.TC=t.TC and DIVCODE='" & Divcode & "' " & _
'''                " AND varcode='" & Varcode & "' AND t.tctype IN (1,3,5,7) " & _
'''                " AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY A.varcode,t.TC " & _
'''                " Union All " & _
'''                " SELECT T.TC,A.varcode,0 REC,SUM(isnull(A.QUANTITY,0))ISS FROM in_trntail A,IN_TC t WHERE a.TC=t.TC and DIVCODE='" & Divcode & "'" & _
'''                " AND varcode='" & Varcode & "' AND t.tctype IN (2,4,6,8) " & _
'''                " AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY A.varcode,t.TC )X " & _
'''                " GROUP BY X.varcode ", DB, adOpenDynamic, adLockReadOnly
'''    If Not CurrRs.EOF Then
'''        CurrentStock = CurrRs("BalanceQty")
'''    Else
'''        CurrentStock = 0
'''    End If


Dim F_Date As String
Dim T_Date As String


Dim rs1 As Recordset
Dim RS2 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim tot16 As Double
Dim totRejBales, totRejBoras, totRejKgs, totRejValue As Double
Dim Cnn As Connection
Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Cnn.CommandTimeout = 2000

F_Date = STR
T_Date = STR
catcd = "ALL"
FVar = Varcode
TVar = Varcode
pRecType = "ALL"
 
SR = catcd
SR = catcd
vrectype = Trim(Left(pRecType, 3))
pg1 = 1
co = 0
        
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0
tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0
tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
tot16 = 0:
totRejBales = 0: totRejBoras = 0: totRejKgs = 0: totRejValue = 0

vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0
VTOT = 0
vtotRejBales = 0: vtotRejBoras = 0: vtotRejKgs = 0: vtotRejValue = 0


Set rs1 = New Recordset


  If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
      YFF = Year(yfdate)
   ElseIf Year(yfdate) + 1 = Year(F_Date) Then
      YFF = Year(yfdate)
   Else
      YFF = Year(yfdate)
   End If
  
    Set RSV = New Recordset
        strSQL = " select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(F_Date, T_Date)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE BETWEEN '" & FVar & "' AND '" & TVar & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' "

                    
        If Trim(SR) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
            End If
        End If

'        MsgBox rs1!varcode
    Set RSV = New Recordset
        RSV.Open strSQL, Cnn, adOpenStatic, adLockBatchOptimistic
Do While Not RSV.EOF

            
   'Print #a,
   co = co + 1
         VTOT = VTOT + RSV("opbales")
         vtot1 = vtot1 + RSV("opboras")
         vtot2 = vtot2 + RSV("opkgs")
         vtot3 = vtot3 + RSV("recbales")
         VTOT4 = VTOT4 + RSV("recboras")
         VTOT5 = VTOT5 + RSV("reckgs")
         VTOT6 = VTOT6 + RSV("issbales")
         VTOT7 = VTOT7 + RSV("issboras")
         VTOT8 = VTOT8 + RSV("isskgs")
         
         vtotRejBales = RSV!rejBales
         vtotRejKgs = RSV!rejkgs
      '   vtotRejValue = RSV!REJVALUE
        
        
        totRejBales = val(totRejBales) + val(RSV!rejBales)
        totRejBoras = totRejBoras
        totRejKgs = val(totRejKgs) + val(RSV!rejkgs)
        totRejValue = val(totRejValue) + val(RSV!REJVALUE)
   
        
        VTOT9 = VTOT9 + RSV("clobales")
        VTOT10 = VTOT10 + RSV("cloboras")
        VTOT11 = VTOT11 + RSV("clokgs")
        
        VTOT15 = VTOT15 + IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE"))

         VTOT12 = VTOT12 + RSV("opvalue")
         VTOT13 = VTOT13 + RSV("recvalue")
         VTOT14 = VTOT14 + RSV("issvalue")
         vtotRejValue = vtotRejValue + RSV!REJVALUE
      
    VarName = RSV!VarName
                
   Set opf = New Recordset
   If Trim(SR) = "A" Then SR1 = "'C','P','V'" Else SR1 = SR
   
   'Print #a, Space(4) + Padr((CStr(VarName)), 14, " ") & Padl(INF(VTOT, 0), 7, " ") + Padl(INF(vtot1, 0), 6, " ") + Padl(INF(vtot2, 3), 14, " ") + Padl(INF(VTOT12, 2), 16, " ") + Padl(INF(vtot3, 0), 7, " ") + Padl(INF(VTOT4, 0), 6, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 7, " ") + Padl(INF(VTOT7, 0), 6, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(vtotRejBales, 0), 7, " ") + Padl(INF(vtotRejBoras, 0), 6, " ") + Padl(INF(vtotRejKgs, 3), 14, " ") + Padl(INF(vtotRejValue, 2), 16, " ") + Padl(INF(VTOT9, 0), 7, " ") + Padl(INF(VTOT10, 0), 6, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
   tot1 = val(tot1 + VTOT)
   tot2 = val(tot2 + vtot1)
   tot3 = val(tot3 + vtot2)
   tot4 = val(tot4 + vtot3)
   tot5 = val(tot5 + VTOT4)
   tot6 = val(tot6 + VTOT5)
   tot7 = val(tot7 + VTOT6)
   tot8 = val(tot8 + VTOT7)
    
   tot9 = val(tot9 + VTOT8)
   tot10 = val(tot10 + VTOT9)
   tot11 = val(tot11 + VTOT10)
   tot12 = val(tot12 + VTOT11)
   tot13 = val(tot13 + VTOT12)   'Opening value
   tot14 = val(tot14 + VTOT13)   'Received value
   tot15 = val(tot15 + VTOT14)   'Issue VaLUE
   tot16 = val(tot16 + VTOT15)   'Clse value
   

   
   vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
   VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
   VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0: VTOT = 0
   vtotRejBales = 0: vtotRejBoras = 0: vtotRejKgs = 0: vtotRejValue = 0
30:
   RSV.MoveNext
Loop
   If tot10 <> Empty Then
        'CurrentStock = INF(val(tot12), 3)
       CurrentStockBales = INF(val(tot10), 3)
    Else
       CurrentStockBales = 0
    End If


End Function


Private Sub ExportERPPOPDF()
If Opt = "add" Or Opt = "mod" Or UCase(usrid) = "KSL" Then
Dim strNewFile As String
'If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
'    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
'    End
'End If


    strNewFile = ""
    Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMERPPR" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMERPPR" & CustID)
       
    End If
    
    ' display Common Dialog and choose a file
'    CommonDialog1.ShowOpen
'    strNewFile = CommonDialog1.FileTitle
   
'  strNewFile
    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMERPPR" & CustID & "\" & Divcode & "-PRNO-" & Trim(txtfields(1).Text) + " DT-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(TxtRequester.Text), 15) & ".pdf"
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
       If Opt <> "add" And Opt <> "mod" Then
        If MsgBox("PR Report Already Exists!!! Do you want to override in Server?", vbYesNo, head) = vbNo Then Exit Sub
       End If
 
    End If
    
'  If strNewFile <> "" Then
'
'    Dim myPath As String
'    myPath = strNewFile
'    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
'    FileCopy strNewFile, App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 4) + "-" & Right$(CommonDialog1.FileName, 4)
'   End If
   
           Dim CrApp As Craxdrt.Application
           Dim oRpt As Craxdrt.Report
            Set CrApp = New Craxdrt.Application
            Set oRpt = CrApp.OpenReport(KALFOLDERDATA & "RepRMI.rpt", 1)
            'oRpt.RecordSelectionFormula = "{PO_ORDH.PORDDT} = DATE(" & Val(Year(SPoDT)) & "," & Val(Month(SPoDT)) & "," & Val(Day(SPoDT)) & ")  and {PO_ORDH.PORDNO}=" & Val(sPono) & "  and {PO_ORDH.POGRP}='" & sPOGrp & "'  and {PO_ORDH.DivCode}='" & divcode & "'"

         '   oRpt.RecordSelectionFormula = "{sp_yarninvy_sort.sortno}='" & Trim(txtfields(37).Text) & "'  and {sp_yarninvy_sort.divcode}='" & Divcode & "'"
            '{sp_yarninvy_sort.sortno}={?@Sortcode} and {sp_yarninvy_sort.divcode}={?@divcode}
'
            oRpt.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
            oRpt.ParameterFields.Item(1).AddCurrentValue Divcode
            oRpt.ParameterFields.Item(2).AddCurrentValue txtfields(1).Text
            oRpt.ParameterFields.Item(3).AddCurrentValue (Format(MaskEdBox1(0), "yyyy-mm-dd"))
            
'            oRpt.ParameterFields.Item(4).AddCurrentValue (Format(MaskEdBox3, "yyyy-mm-dd"))
'            oRpt.ParameterFields.Item(5).AddCurrentValue Trim(TXTFIELDS(0).Text)
'             oRpt.ParameterFields.Item(6).AddCurrentValue cid
             
'            oRpt.RecordSelectionFormula = "{RM_ARRIVAL.DIVCODE}='" & Divcode & "' AND {RM_ARRIVAL.ARRDATE} = cdate('" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "') AND {RM_ARRIVAL.ARRNO}>= " & val(Txtfields(96).Text) & " AND  {RM_ARRIVAL.ARRNO}<=  " & val(Txtfields(96).Text) & ""
'            oRpt.ParameterFields(1).AddCurrentValue Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
'            oRpt.ParameterFields(2).AddCurrentValue CStr(Txtfields(96).Text)
'            oRpt.ParameterFields(3).AddCurrentValue CStr(Txtfields(96).Text)
'            oRpt.ParameterFields(4).AddCurrentValue val(1)
             
             
'            If UCase(CustID) = "PALLAVA" Then
'                cid = ""
'                cid = "PALLAVAA"
'                oRpt.ParameterFields.Item(6).AddCurrentValue cid
'            ElseIf UCase(CustID) = "SHRIGIRI" Then
'                cid = ""
'                cid = "SRICHERAN "
'                oRpt.ParameterFields.Item(6).AddCurrentValue cid
'            End If
'
  
            oRpt.ExportOptions.DiskFileName = sFilePath
            oRpt.ExportOptions.DestinationType = crEDTDiskFile
            oRpt.ExportOptions.FormatType = crEFTPortableDocFormat
            oRpt.ExportOptions.PDFExportAllPages = True
            oRpt.Export False
            
   
   
   
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"
End Sub



