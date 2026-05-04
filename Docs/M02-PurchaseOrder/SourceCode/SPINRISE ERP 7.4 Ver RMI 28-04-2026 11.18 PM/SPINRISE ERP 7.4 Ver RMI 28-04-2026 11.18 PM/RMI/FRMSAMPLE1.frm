VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FRMSAMPLE1 
   Caption         =   "Sample"
   ClientHeight    =   9090
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11400
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   9090
   ScaleWidth      =   11400
   Visible         =   0   'False
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   255
      Top             =   7140
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Frame5 
      Height          =   465
      Left            =   4050
      TabIndex        =   126
      Top             =   600
      Visible         =   0   'False
      Width           =   6075
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         Default         =   -1  'True
         Height          =   315
         Left            =   4635
         TabIndex        =   131
         Top             =   135
         Visible         =   0   'False
         Width           =   1275
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   225
         Left            =   3465
         TabIndex        =   128
         Top             =   180
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   255
         Left            =   2205
         TabIndex        =   127
         Top             =   135
         Width           =   1260
      End
      Begin VB.Label Label15 
         Caption         =   "Report Footer"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   210
         TabIndex        =   129
         Top             =   150
         Width           =   1425
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   -30
      TabIndex        =   77
      Top             =   -95
      Width           =   11610
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMSAMPLE1.frx":0000
         Height          =   550
         Index           =   4
         Left            =   1605
         Picture         =   "FRMSAMPLE1.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   68
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   12
         Left            =   5310
         Picture         =   "FRMSAMPLE1.frx":069F
         Style           =   1  'Graphical
         TabIndex        =   76
         ToolTipText     =   "Sample Report Print (Ctrl P)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMSAMPLE1.frx":0AE1
         Height          =   550
         Index           =   8
         Left            =   3720
         Picture         =   "FRMSAMPLE1.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   72
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMSAMPLE1.frx":128D
         Height          =   550
         Index           =   10
         Left            =   4770
         Picture         =   "FRMSAMPLE1.frx":1597
         Style           =   1  'Graphical
         TabIndex        =   74
         ToolTipText     =   "Cancel  (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMSAMPLE1.frx":1913
         Height          =   550
         Index           =   9
         Left            =   4245
         Picture         =   "FRMSAMPLE1.frx":1C1D
         Style           =   1  'Graphical
         TabIndex        =   73
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMSAMPLE1.frx":1FBF
         Height          =   550
         Index           =   11
         Left            =   5835
         Picture         =   "FRMSAMPLE1.frx":2409
         Style           =   1  'Graphical
         TabIndex        =   75
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMSAMPLE1.frx":279E
         Height          =   550
         Index           =   7
         Left            =   3195
         Picture         =   "FRMSAMPLE1.frx":2BE8
         Style           =   1  'Graphical
         TabIndex        =   71
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   9630
         Picture         =   "FRMSAMPLE1.frx":2F38
         Style           =   1  'Graphical
         TabIndex        =   67
         ToolTipText     =   "List (Ctrl L)"
         Top             =   60
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMSAMPLE1.frx":32CF
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "FRMSAMPLE1.frx":35D9
         Style           =   1  'Graphical
         TabIndex        =   65
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMSAMPLE1.frx":3953
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
         Picture         =   "FRMSAMPLE1.frx":3C5D
         Style           =   1  'Graphical
         TabIndex        =   66
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMSAMPLE1.frx":3FF9
         Height          =   550
         Index           =   5
         Left            =   2145
         Picture         =   "FRMSAMPLE1.frx":4443
         Style           =   1  'Graphical
         TabIndex        =   69
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMSAMPLE1.frx":47A8
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "FRMSAMPLE1.frx":4AB2
         Style           =   1  'Graphical
         TabIndex        =   64
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMSAMPLE1.frx":4E45
         Height          =   550
         Index           =   6
         Left            =   2670
         Picture         =   "FRMSAMPLE1.frx":528F
         Style           =   1  'Graphical
         TabIndex        =   70
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   6960
         TabIndex        =   79
         Top             =   255
         Width           =   60
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   8520
         TabIndex        =   78
         Top             =   240
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   81
      Top             =   8790
      Width           =   11400
      _ExtentX        =   20108
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12630
            MinWidth        =   12630
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "04/01/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "07:50 PM"
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
      Height          =   7110
      Left            =   600
      TabIndex        =   82
      Top             =   960
      Width           =   9645
      _ExtentX        =   17013
      _ExtentY        =   12541
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BackColor       =   -2147483643
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "FRMSAMPLE1.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   6840
         Left            =   150
         TabIndex        =   83
         Top             =   120
         Width           =   9285
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "prty_sampno"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   26
            Left            =   7095
            MaxLength       =   10
            TabIndex        =   2
            Top             =   135
            Width           =   2040
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "sno"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   0
            Left            =   2055
            TabIndex        =   0
            TabStop         =   0   'False
            Top             =   165
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "supcode"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   1
            Left            =   2055
            TabIndex        =   3
            Top             =   525
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "varcode"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   4
            Left            =   2055
            TabIndex        =   7
            Top             =   1230
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "brokercode"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   24
            Left            =   2055
            TabIndex        =   5
            Top             =   870
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "AREA_CODE"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   33
            Left            =   2055
            TabIndex        =   9
            Top             =   1590
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            DataField       =   "STATE_CODE"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   34
            Left            =   2055
            Locked          =   -1  'True
            TabIndex        =   12
            TabStop         =   0   'False
            Top             =   2310
            Width           =   3210
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "CROP_YEAR"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   36
            Left            =   7110
            Locked          =   -1  'True
            TabIndex        =   13
            Top             =   2295
            Width           =   2025
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            DataField       =   "STATION_NAME"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   27
            Left            =   2055
            Locked          =   -1  'True
            TabIndex        =   11
            TabStop         =   0   'False
            Top             =   1950
            Width           =   7080
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   35
            Left            =   3180
            Locked          =   -1  'True
            TabIndex        =   10
            TabStop         =   0   'False
            Top             =   1590
            Width           =   5955
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   25
            Left            =   3195
            Locked          =   -1  'True
            TabIndex        =   6
            TabStop         =   0   'False
            Top             =   885
            Width           =   5955
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   3
            Left            =   3180
            Locked          =   -1  'True
            TabIndex        =   8
            TabStop         =   0   'False
            Top             =   1230
            Width           =   5955
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   2
            Left            =   3195
            Locked          =   -1  'True
            TabIndex        =   4
            TabStop         =   0   'False
            Top             =   525
            Width           =   5955
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "POTYPE"
            ForeColor       =   &H00000000&
            Height          =   315
            ItemData        =   "FRMSAMPLE1.frx":55F8
            Left            =   2055
            List            =   "FRMSAMPLE1.frx":5605
            Style           =   2  'Dropdown List
            TabIndex        =   14
            Top             =   2655
            Width           =   3210
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "Date"
            Height          =   330
            Index           =   0
            Left            =   3840
            TabIndex        =   1
            Top             =   135
            Width           =   1170
            _ExtentX        =   2064
            _ExtentY        =   582
            _Version        =   393216
            BackColor       =   16777215
            ForeColor       =   0
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
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   360
            Left            =   3840
            TabIndex        =   34
            Top             =   120
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   635
            _Version        =   393216
            Format          =   149291009
            CurrentDate     =   38478
         End
         Begin VB.Frame MachineFrame 
            Caption         =   "Quality Parameters - With Basic Sample"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   3660
            Left            =   0
            TabIndex        =   84
            Top             =   3105
            Width           =   9195
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "neps"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   62
               Left            =   1980
               TabIndex        =   61
               Top             =   3240
               Width           =   2535
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "contamination"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   61
               Left            =   6510
               TabIndex        =   62
               Top             =   3240
               Width           =   2415
            End
            Begin VB.ComboBox Cmb_Moisture 
               DataField       =   "moisAVL"
               Height          =   315
               Index           =   0
               ItemData        =   "FRMSAMPLE1.frx":5640
               Left            =   4560
               List            =   "FRMSAMPLE1.frx":564D
               TabIndex        =   156
               Text            =   "="
               Top             =   840
               Width           =   510
            End
            Begin VB.ComboBox Cmb_Trash 
               DataField       =   "TRASHAVL"
               Height          =   315
               ItemData        =   "FRMSAMPLE1.frx":565A
               Left            =   1080
               List            =   "FRMSAMPLE1.frx":5667
               TabIndex        =   41
               Text            =   "="
               Top             =   870
               Width           =   870
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "remarks"
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   15
               Left            =   1965
               MaxLength       =   250
               TabIndex        =   60
               Top             =   2790
               Width           =   7005
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "UNIRATIO"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   13
               Left            =   7890
               MaxLength       =   5
               TabIndex        =   37
               Top             =   210
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "STAPLEN25"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   5
               Left            =   1980
               MaxLength       =   20
               TabIndex        =   35
               Top             =   210
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "STAPLEN50"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   6
               Left            =   5160
               MaxLength       =   20
               TabIndex        =   36
               Top             =   210
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "bplus"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   59
               Left            =   7890
               MaxLength       =   20
               TabIndex        =   59
               Top             =   2460
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "rd"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   58
               Left            =   5070
               MaxLength       =   20
               TabIndex        =   58
               Top             =   2460
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "COLOURGRADE"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   49
               Left            =   7890
               MaxLength       =   25
               TabIndex        =   56
               Top             =   2145
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "SCI"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   48
               Left            =   1980
               MaxLength       =   25
               TabIndex        =   54
               Top             =   2145
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "FQI"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   47
               Left            =   7890
               MaxLength       =   25
               TabIndex        =   53
               Top             =   1830
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "QUANTITY"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   46
               Left            =   7890
               MaxLength       =   25
               TabIndex        =   47
               Top             =   1200
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "RATE"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0000;(0.0000)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   45
               Left            =   5070
               MaxLength       =   25
               TabIndex        =   46
               Top             =   1200
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "PRNO"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   44
               Left            =   1980
               MaxLength       =   20
               TabIndex        =   45
               Top             =   1200
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "PLOTNO"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   43
               Left            =   7890
               MaxLength       =   25
               TabIndex        =   44
               Top             =   870
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "SHORTFIBRE"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   42
               Left            =   7890
               MaxLength       =   25
               TabIndex        =   40
               Top             =   540
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "GTEX"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   41
               Left            =   5070
               MaxLength       =   25
               TabIndex        =   39
               Top             =   540
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "corr_strenth"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   21
               Left            =   7890
               MaxLength       =   25
               TabIndex        =   50
               Top             =   1515
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "avrstrength"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   20
               Left            =   1980
               MaxLength       =   25
               TabIndex        =   48
               Top             =   1515
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "csp"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   18
               Left            =   5070
               MaxLength       =   25
               TabIndex        =   52
               Top             =   1830
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "avgcount"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   16
               Left            =   5070
               MaxLength       =   25
               ScrollBars      =   2  'Vertical
               TabIndex        =   49
               Top             =   1515
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "yarnapp"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   17
               Left            =   1980
               MaxLength       =   20
               TabIndex        =   57
               Top             =   2460
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               DataField       =   "MCOEFF"
               Height          =   330
               Index           =   9
               Left            =   7080
               MaxLength       =   25
               TabIndex        =   88
               Top             =   4080
               Visible         =   0   'False
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               DataField       =   "UNIRATIO"
               Height          =   330
               Index           =   10
               Left            =   5010
               MaxLength       =   25
               TabIndex        =   87
               Top             =   4200
               Visible         =   0   'False
               Width           =   1215
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "moiture"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   14
               Left            =   5070
               MaxLength       =   20
               TabIndex        =   43
               Top             =   870
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "TRASH_PER"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0;(0.0)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   28
               Left            =   1980
               MaxLength       =   25
               TabIndex        =   42
               Top             =   870
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "MICRONAIRE"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   11
               Left            =   1980
               MaxLength       =   20
               TabIndex        =   38
               Top             =   540
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "tpi"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   19
               Left            =   1980
               MaxLength       =   25
               TabIndex        =   51
               Top             =   1830
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               DataField       =   "rate"
               Height          =   330
               Index           =   23
               Left            =   8280
               MaxLength       =   25
               TabIndex        =   86
               Top             =   3960
               Visible         =   0   'False
               Width           =   1005
            End
            Begin VB.TextBox TXTFIELDS 
               DataField       =   "spot_for"
               Height          =   330
               Index           =   22
               Left            =   5025
               MaxLength       =   25
               TabIndex        =   85
               Top             =   3840
               Visible         =   0   'False
               Width           =   1200
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "color"
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   37
               Left            =   5070
               MaxLength       =   20
               TabIndex        =   55
               Top             =   2145
               Width           =   1095
            End
            Begin VB.Label Label47 
               Caption         =   "Neps"
               Height          =   255
               Left            =   120
               TabIndex        =   158
               Top             =   3240
               Width           =   1290
            End
            Begin VB.Label Label46 
               Caption         =   "Contamination"
               Height          =   255
               Left            =   5100
               TabIndex        =   157
               Top             =   3240
               Width           =   1290
            End
            Begin VB.Label Label12 
               Caption         =   "Uniformity  Ratio"
               Height          =   210
               Left            =   6420
               TabIndex        =   153
               Top             =   210
               Width           =   1335
            End
            Begin VB.Label Label7 
               Caption         =   "2.5 % Span Length (MM)"
               Height          =   225
               Left            =   120
               TabIndex        =   152
               Top             =   210
               Width           =   1785
            End
            Begin VB.Label Label8 
               Caption         =   "50 % Span Length (MM)"
               Height          =   195
               Left            =   3210
               TabIndex        =   151
               Top             =   210
               Width           =   1740
            End
            Begin VB.Label Label45 
               Caption         =   "+ b"
               Height          =   255
               Left            =   6420
               TabIndex        =   150
               Top             =   2460
               Width           =   1290
            End
            Begin VB.Label Label44 
               Caption         =   "RD"
               Height          =   255
               Left            =   3180
               TabIndex        =   149
               Top             =   2460
               Width           =   1290
            End
            Begin VB.Label Label35 
               Caption         =   "Colour Grade"
               Height          =   225
               Left            =   6420
               TabIndex        =   140
               Top             =   2145
               Width           =   1185
            End
            Begin VB.Label Label34 
               Caption         =   "S.C.I."
               Height          =   225
               Left            =   150
               TabIndex        =   139
               Top             =   2145
               Width           =   1185
            End
            Begin VB.Label Label33 
               Caption         =   "F.Q.I."
               Height          =   225
               Left            =   6450
               TabIndex        =   138
               Top             =   1830
               Width           =   1185
            End
            Begin VB.Label Label32 
               Caption         =   "Quantity"
               Height          =   225
               Left            =   6420
               TabIndex        =   137
               Top             =   1200
               Width           =   1185
            End
            Begin VB.Label Label31 
               Caption         =   "Rate / Unit"
               Height          =   225
               Left            =   3210
               TabIndex        =   136
               Top             =   1200
               Width           =   1185
            End
            Begin VB.Label Label30 
               Caption         =   "PR No."
               Height          =   225
               Left            =   150
               TabIndex        =   135
               Top             =   1200
               Width           =   1185
            End
            Begin VB.Label Label29 
               Caption         =   "Supplier Lot No."
               Height          =   225
               Left            =   6420
               TabIndex        =   134
               Top             =   870
               Width           =   1185
            End
            Begin VB.Label Label28 
               Caption         =   "Short Fibre"
               Height          =   225
               Left            =   6420
               TabIndex        =   133
               Top             =   540
               Width           =   975
            End
            Begin VB.Label Label27 
               Caption         =   "Strength (G.Tex)"
               Height          =   225
               Left            =   3210
               TabIndex        =   132
               Top             =   540
               Width           =   1785
            End
            Begin VB.Label Label26 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Micronaire (µ grams/inch)"
               Height          =   195
               Left            =   120
               TabIndex        =   125
               Top             =   540
               Width           =   1800
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "HVI Test (mm)"
               DataField       =   "SNO"
               Height          =   195
               Index           =   0
               Left            =   3360
               TabIndex        =   102
               Top             =   4320
               Visible         =   0   'False
               Width           =   1005
            End
            Begin VB.Label Label16 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Average Count"
               Height          =   195
               Left            =   3225
               TabIndex        =   101
               Top             =   1515
               Width           =   1065
            End
            Begin VB.Label Label17 
               Caption         =   "Yarn Appearance"
               Height          =   255
               Left            =   120
               TabIndex        =   100
               Top             =   2460
               Width           =   1290
            End
            Begin VB.Label Label11 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Maturity Co."
               Height          =   195
               Left            =   6240
               TabIndex        =   99
               Top             =   3960
               Visible         =   0   'False
               Width           =   840
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Moisture Content %"
               Height          =   195
               Index           =   0
               Left            =   3210
               TabIndex        =   98
               Top             =   870
               Width           =   1380
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Trash %"
               Height          =   195
               Index           =   1
               Left            =   120
               TabIndex        =   97
               Top             =   870
               Width           =   570
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "T.P.I."
               Height          =   195
               Index           =   2
               Left            =   150
               TabIndex        =   96
               Top             =   1830
               Width           =   405
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "C.S.P."
               Height          =   195
               Index           =   1
               Left            =   3210
               TabIndex        =   95
               Top             =   1830
               Width           =   450
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Average Strength"
               Height          =   195
               Index           =   3
               Left            =   150
               TabIndex        =   94
               Top             =   1515
               Width           =   1260
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Rate"
               Height          =   195
               Index           =   6
               Left            =   7515
               TabIndex        =   93
               Top             =   3645
               Visible         =   0   'False
               Width           =   345
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Spot/For"
               Height          =   180
               Index           =   5
               Left            =   3720
               TabIndex        =   92
               Top             =   3960
               Visible         =   0   'False
               Width           =   630
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Corrected Strength"
               Height          =   195
               Index           =   4
               Left            =   6420
               TabIndex        =   91
               Top             =   1515
               Width           =   1335
            End
            Begin VB.Label Label18 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Remarks"
               Height          =   195
               Left            =   150
               TabIndex        =   90
               Top             =   2775
               Width           =   630
            End
            Begin VB.Label Label22 
               AutoSize        =   -1  'True
               Caption         =   "Colour"
               Height          =   195
               Left            =   3210
               TabIndex        =   89
               Top             =   2145
               Width           =   450
            End
         End
         Begin VB.Frame HandTestFrame 
            Caption         =   "Quality Parameters / Subject To Approval"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   3180
            Left            =   0
            TabIndex        =   103
            Top             =   3120
            Visible         =   0   'False
            Width           =   8775
            Begin VB.ComboBox Cmb_Moisture 
               DataField       =   "moisAVL"
               Height          =   315
               Index           =   1
               ItemData        =   "FRMSAMPLE1.frx":5674
               Left            =   1800
               List            =   "FRMSAMPLE1.frx":5681
               TabIndex        =   21
               Text            =   "="
               Top             =   2640
               Width           =   510
            End
            Begin VB.ComboBox cmb_Trash2 
               DataField       =   "TRASHAVL"
               Height          =   315
               ItemData        =   "FRMSAMPLE1.frx":568E
               Left            =   1800
               List            =   "FRMSAMPLE1.frx":569B
               TabIndex        =   155
               Text            =   "="
               Top             =   747
               Width           =   510
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "moiture"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   60
               Left            =   2415
               MaxLength       =   20
               TabIndex        =   22
               Top             =   2640
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "SCI"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   57
               Left            =   2415
               MaxLength       =   25
               TabIndex        =   19
               Top             =   1908
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "SHORTFIBRE"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   56
               Left            =   5040
               MaxLength       =   25
               TabIndex        =   24
               Top             =   747
               Width           =   1125
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "FQI"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   55
               Left            =   7860
               MaxLength       =   25
               TabIndex        =   31
               Top             =   1521
               Width           =   1125
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "PRNO"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0;(0)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   54
               Left            =   7860
               MaxLength       =   25
               TabIndex        =   30
               Top             =   1134
               Width           =   1125
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "RATE"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0000;(0.0000)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   53
               Left            =   5040
               MaxLength       =   25
               TabIndex        =   26
               Top             =   1521
               Width           =   1125
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "QUANTITY"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   52
               Left            =   2415
               MaxLength       =   25
               TabIndex        =   18
               Top             =   1521
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "PLOTNO"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0;(0)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   51
               Left            =   5040
               MaxLength       =   25
               TabIndex        =   25
               Top             =   1134
               Width           =   1125
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "COLOURGRADE"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   50
               Left            =   2400
               MaxLength       =   25
               TabIndex        =   20
               Top             =   2280
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "STAPHANDTEST"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0;(0.0)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   12
               Left            =   2415
               MaxLength       =   50
               TabIndex        =   15
               Top             =   360
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "remarks"
               ForeColor       =   &H00000000&
               Height          =   660
               Index           =   29
               Left            =   5040
               MaxLength       =   255
               MultiLine       =   -1  'True
               ScrollBars      =   2  'Vertical
               TabIndex        =   33
               Top             =   2295
               Width           =   3930
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "TRASH_PER"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0;(0.0)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   8
               Left            =   2415
               MaxLength       =   20
               TabIndex        =   16
               Top             =   747
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "Micronaire"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.0;(0.0)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   7
               Left            =   5040
               MaxLength       =   20
               TabIndex        =   23
               Top             =   360
               Width           =   1125
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "immature"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   40
               Left            =   2415
               MaxLength       =   10
               TabIndex        =   17
               Top             =   1134
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "GRADE"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   32
               Left            =   7860
               MaxLength       =   10
               TabIndex        =   29
               Top             =   747
               Width           =   1125
            End
            Begin VB.TextBox TXTFIELDS 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "COLOR"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   30
               Left            =   7860
               MaxLength       =   20
               TabIndex        =   32
               Top             =   1908
               Width           =   1125
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "GTEX"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0;(0.0)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   31
               Left            =   7860
               MaxLength       =   10
               TabIndex        =   28
               Top             =   360
               Width           =   1125
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00FFFFFF&
               DataField       =   "hvitest"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   38
               Left            =   7845
               MaxLength       =   50
               TabIndex        =   63
               TabStop         =   0   'False
               Top             =   750
               Visible         =   0   'False
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               DataField       =   "yellowtouch"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   39
               Left            =   5040
               MaxLength       =   10
               TabIndex        =   27
               Top             =   1908
               Width           =   1125
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Moisture Content %"
               Height          =   195
               Index           =   2
               Left            =   195
               TabIndex        =   154
               Top             =   2738
               Width           =   1380
            End
            Begin VB.Label Label43 
               AutoSize        =   -1  'True
               Caption         =   "S.C.I."
               Height          =   195
               Left            =   195
               TabIndex        =   148
               Top             =   1961
               Width           =   390
            End
            Begin VB.Label Label42 
               AutoSize        =   -1  'True
               Caption         =   "Short Fibre"
               Height          =   195
               Left            =   3675
               TabIndex        =   147
               Top             =   795
               Width           =   765
            End
            Begin VB.Label Label41 
               AutoSize        =   -1  'True
               Caption         =   "F.Q.I."
               Height          =   195
               Left            =   6405
               TabIndex        =   146
               Top             =   1574
               Width           =   390
            End
            Begin VB.Label Label40 
               AutoSize        =   -1  'True
               Caption         =   "PR No."
               Height          =   195
               Left            =   6405
               TabIndex        =   145
               Top             =   1187
               Width           =   525
            End
            Begin VB.Label Label39 
               AutoSize        =   -1  'True
               Caption         =   "Rate / Unit"
               Height          =   195
               Left            =   3675
               TabIndex        =   144
               Top             =   1575
               Width           =   795
            End
            Begin VB.Label Label38 
               AutoSize        =   -1  'True
               Caption         =   "Quantity"
               Height          =   195
               Left            =   195
               TabIndex        =   143
               Top             =   1574
               Width           =   585
            End
            Begin VB.Label Label37 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Lot No."
               Height          =   195
               Left            =   3675
               TabIndex        =   142
               Top             =   1185
               Width           =   1140
            End
            Begin VB.Label Label36 
               AutoSize        =   -1  'True
               Caption         =   "Colour Grade"
               Height          =   195
               Left            =   195
               TabIndex        =   141
               Top             =   2348
               Width           =   930
            End
            Begin VB.Label Label25 
               AutoSize        =   -1  'True
               Caption         =   "Immature"
               Height          =   195
               Left            =   195
               TabIndex        =   124
               Top             =   1187
               Width           =   645
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Grade"
               Height          =   195
               Index           =   2
               Left            =   6405
               TabIndex        =   123
               Top             =   800
               Width           =   435
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Staple Hand  Test (mm)"
               Height          =   195
               Index           =   0
               Left            =   195
               TabIndex        =   122
               Top             =   413
               Width           =   1665
            End
            Begin VB.Label Label9 
               BackStyle       =   0  'Transparent
               Caption         =   "Micronaire     (µ grams/inch)"
               Height          =   465
               Left            =   3675
               TabIndex        =   110
               Top             =   285
               Width           =   1035
            End
            Begin VB.Label Label10 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Trash %"
               Height          =   195
               Left            =   195
               TabIndex        =   109
               Top             =   800
               Width           =   570
            End
            Begin VB.Label Label19 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Remarks"
               Height          =   195
               Left            =   3675
               TabIndex        =   108
               Top             =   2295
               Width           =   630
            End
            Begin VB.Label Label20 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Colour"
               Height          =   195
               Left            =   6405
               TabIndex        =   107
               Top             =   1961
               Width           =   450
            End
            Begin VB.Label Label21 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Strength (G.Tex)"
               Height          =   195
               Left            =   6405
               TabIndex        =   106
               Top             =   413
               Width           =   1170
            End
            Begin VB.Label Label23 
               AutoSize        =   -1  'True
               Caption         =   "HVI Test"
               Height          =   195
               Left            =   6390
               TabIndex        =   105
               Top             =   780
               Visible         =   0   'False
               Width           =   630
            End
            Begin VB.Label Label24 
               AutoSize        =   -1  'True
               Caption         =   "Yellow Touch"
               Height          =   195
               Left            =   3675
               TabIndex        =   104
               Top             =   1965
               Width           =   975
            End
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier Sample No."
            Height          =   195
            Index           =   1
            Left            =   5490
            TabIndex        =   121
            Top             =   195
            Width           =   1440
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Mill Sample No."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   300
            TabIndex        =   120
            Top             =   210
            Width           =   1095
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Supplier"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   300
            TabIndex        =   119
            Top             =   570
            Width           =   570
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Variety"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   300
            TabIndex        =   118
            Top             =   1275
            Width           =   480
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3315
            TabIndex        =   117
            Top             =   210
            Width           =   345
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Agent"
            ForeColor       =   &H00404040&
            Height          =   195
            Index           =   1
            Left            =   300
            TabIndex        =   116
            Top             =   930
            Width           =   420
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Purchase Option"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   7
            Left            =   300
            TabIndex        =   115
            Top             =   2715
            Width           =   1185
         End
         Begin VB.Line Line1 
            X1              =   30
            X2              =   9510
            Y1              =   3030
            Y2              =   3030
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Area"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   3
            Left            =   300
            TabIndex        =   114
            Top             =   1635
            Width           =   330
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "State"
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   4
            Left            =   300
            TabIndex        =   113
            Top             =   2355
            Width           =   375
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Station"
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   2
            Left            =   300
            TabIndex        =   112
            Top             =   1995
            Width           =   495
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Crop Year"
            Height          =   195
            Index           =   3
            Left            =   5475
            TabIndex        =   111
            Top             =   2400
            Width           =   705
         End
      End
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4395
      Left            =   6120
      TabIndex        =   130
      Top             =   1110
      Visible         =   0   'False
      Width           =   4050
      _extentx        =   7250
      _extenty        =   7779
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
      ForeColor       =   &H00FF0000&
      Height          =   345
      Left            =   675
      TabIndex        =   80
      Top             =   630
      Width           =   945
   End
End
Attribute VB_Name = "FRMSAMPLE1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim Opt As String
Dim ipageno  As Integer
Dim oText As TextBox
Dim DB As Connection
Dim FLG As String
Dim oldqty As Integer
Dim rsPO As Recordset
Dim oldcontno As String
Dim oldcontdt As Date
Dim QTY As Integer
Dim MaxNoRs As Recordset
Dim dContNO As Double
Dim sContDATE As String
Dim StationCode As String
Dim rsch As New Recordset

Public Sub openconnection()

On Error GoTo openconnection_Error
    intervalMinutes = -1
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    intervalMinutes = -1
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Sample"
End Sub

Private Sub BUTTON_Click(Index As Integer)

On Error GoTo BUTTON_Click_Error

intervalMinutes = -1
Select Case Index
Case 0
    If ToValidFinYear(Divcode) = False Then Exit Sub
    txtfields(37).Text = ""
    Set rsz = New Recordset
    rsz.Open "select max(Date) from rm_sample where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter the valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    dContNO = 0
    sContDATE = Format(pdate, "YYYY-MM-DD")
    StatusBar1.Panels(2).Text = "Addition"
    Opt = "add"
    desc.Caption = "Addition"
    If MsgBox("Do You want enter Sample with Purchase Order?", vbYesNo, head) = vbYes Then
            StatusBar1.Panels(2).Text = "Select a Order number from the list"
'            Buttonframe.Enabled = False
            LookUp.Clear = True
            LookUp.query = "select distinct cast(contno as NUMERIC(10))""Order No."",contdt""Order Date"",slname""Supplier""  from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ordqty<>isnull(Cancelbales,0) AND A.contdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' AND ISNULL(A.SNO,0) =0"
            LookUp.Caption = "Purchase Order Listing"
            LookUp.DefCol = "OrderNo"
            LookUp.ALIGN = "1200,1500,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            
                Set adoPrimaryRS = New Recordset
             
                adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI ,rd,bplus ,trashAVL ,moisAVL,neps,contamination  FROM RM_SAMPLE WHERE  1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                temp1 = txtfields(36).Text
                temp2 = txtfields(37).Text
                ''temp3 = Combo1.Text
                
                Call ENABLCONTLS
                Call bindcontls
                adoPrimaryRS.AddNew
                dContNO = val(LookUp.Fields(0))
                sContDATE = Format(LookUp.Fields(1), "YYYY-MM-DD")
                Set rsPO = New Recordset
                rsPO.Open "select distinct supcd,brkcd,ratekg,varcode,areacode,COLORCODE,CROPYEAR,plotno,prno,pressmarkno,rateunit from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' aND contdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockOptimistic
                If rsPO.EOF = False Then
                    txtfields(1).Text = IIf(IsNull(rsPO("supcd")), "", rsPO("supcd"))
                    txtfields(24).Text = IIf(IsNull(rsPO("brkcd")), "", rsPO("brkcd"))
                    
                    txtfields(4).Text = IIf(IsNull(rsPO("varcode")), "", rsPO("varcode"))
                    txtfields(33).Text = IIf(IsNull(rsPO("areacode")), "", rsPO("areacode"))
                    txtfields(36).Text = IIf(IsNull(rsPO("CROPYEAR")), "", rsPO("CROPYEAR"))
                    txtfields(43).Text = IIf(IsNull(rsPO("plotno")), "", rsPO("plotno"))
                    txtfields(44).Text = IIf(IsNull(rsPO("prno")), "", rsPO("prno"))
                End If
            Else
'                DB.BeginTrans
'                BUTTON_Click (10)
                Opt = ""
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus ,isnull(trashAVL,'=') trashAVL, moisAVL,neps,contamination  FROM RM_SAMPLE WHERE  divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                    adoPrimaryRS.MoveLast
                End If
                Call bindcontls

                Screen.MousePointer = 0
                Call disablcontls
                Call NEWFORM(BUTTON)
                Call NEWFORM1(BUTTON, GSNO)
                BUTTON(0).SetFocus '''''''''''
                Call Form_Load
                Exit Sub
            End If
        Else
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI ,rd,bplus,trashAVL,moisAVL,neps,contamination  FROM RM_SAMPLE WHERE  1=2 ", DB, adOpenStatic, adLockBatchOptimistic
        
            temp1 = txtfields(36).Text
            temp2 = txtfields(37).Text
            ''temp3 = Combo1.Text
            Call ENABLCONTLS
            Call bindcontls
            adoPrimaryRS.AddNew
            txtfields(2).Text = ""
            txtfields(3).Text = ""
            txtfields(25).Text = ""
            txtfields(35).Text = ""
            txtfields(37).Text = ""
        End If
    DB.BeginTrans
    Call adddelmod(BUTTON)
    'BUTTON(9).ToolTipText = "Add Record"
    txtfields(0).Text = ""
    txtfields(0).Locked = True
    MaskEdBox1(0).Text = pdate
'    txtFields(0).SetFocus
    txtfields(0).Locked = True
    txtfields(27).Locked = True
    txtfields(34).Locked = True
    txtfields(1).Locked = False
    DTPicker1.Enabled = True
    DTPicker1.MinDate = yfdate
    Buttonframe.Enabled = True
    MaskEdBox1(0).Text = Format(pdate, "dd/mm/yyyy")
    
    
    
    SSTab1.Enabled = True
    FLG = "Y"
    MaskEdBox1(0).Enabled = True
    txtfields(36).Text = temp1
    txtfields(37).Text = temp2
    ''Combo1.Text = temp3
    Combo1.Locked = False
    Combo1.ListIndex = 0
    txtfields(26).SetFocus
Case 1
    If ToValidFinYear(Divcode) = False Then Exit Sub
    Set rsz = New Recordset
    rsz.Open "select max(Date) from rm_sample where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Invalid Processing Date...!!!", vbInformation, head
                Exit Sub
            End If
        End If
    End If


    'Modification
    Set Rs = New Recordset
    Rs.Open "select a.sno ,date ,slname ,varname  from rm_sample a inner join fa_slmas b on a.supcode=b.slcode inner join rm_var c on a.varcode=c.varcode  where   a.divcode='" & Divcode & "' AND a.sno not in(select b.contno from rm_sample a,rm_cont b where a.divcode=b.divcode and a.sno=b.contno and a.supcode=b.supcd and a.varcode=b.varcode and DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "') and DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
       SSTab1.Enabled = True
       Opt = "mod"
       desc.Caption = "Modification"
       StatusBar1.Panels(2).Text = "Select a Sample Number from the List for modification"
            
      LookUp.Clear = True
      LookUp.query = "select a.sno""Mill Sample No."",date""Mill Sample Date"",slname""Supplier Name"",varname""Variety Name""  from rm_sample a inner join  fa_slmas b on a.supcode=b.slcode inner join  rm_var c on  a.varcode=c.varcode  where  a.divcode='" & Divcode & "' AND a.sno not in(select b.contno from rm_sample a,rm_cont b where a.divcode=b.divcode and a.sno=b.contno and a.supcode=b.supcd and a.varcode=b.varcode and DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "') and DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
      LookUp.Caption = "Sample Listing"
      LookUp.DefCol = "No."
      LookUp.ALIGN = "1300,1500,4000,2000"
      LookUp.Show vbModal
            
    If LookUp.Cancel = False Then
         BUTTON(9).Enabled = True
        If Opt <> "fnd" Then
           Set adoPrimaryRS = New Recordset
           adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,CROP_YEAR,STAPHANDTEST,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus,trashAVL ,moisavl,neps,contamination   FROM RM_SAMPLE WHERE  sno='" & LookUp.Fields(0) & "' AND date='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
        Else
           Set adoPrimaryRS = New Recordset
           adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus,trashAVL,moisAVL,neps,contamination  FROM RM_SAMPLE WHERE  sno >='" & LookUp.Fields(0) & "' AND date >='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
        End If
''        If adoPrimaryRS("potype") = "With Basic Sample" Then
''            MachineFrame.Visible = True
''            HandTestFrame.Visible = False
''        Else
''            HandTestFrame.Visible = True
''            MachineFrame.Visible = False
''        End If
        Call bindcontls
        Call ENABLCONTLS
        DTPicker1.Enabled = False
        MaskEdBox1(0).Enabled = False
        txtfields(37).Text = adoPrimaryRS("color")
        txtfields(0).Locked = True
        If Opt = "del" Then
           Call disablcontls
        End If
        If Opt = "fnd" Then
           Call disablcontls
           BUTTON(9).Enabled = False
           Call NEWFORM(BUTTON)
           Call NEWFORM1(BUTTON, GSNO)
           BUTTON(0).Enabled = False
           BUTTON(1).Enabled = False
           BUTTON(2).Enabled = False
           BUTTON(10).Enabled = True
        End If
            DB.BeginTrans
            'calling addmoddel procedure from module
            Call adddelmod(BUTTON)
            BUTTON(10).Enabled = True
            txtfields(0).Locked = True
        Else
      
        End If
        Set rsch = New Recordset
        rsch.Open "select * from rm_cont where divcode='" & Divcode & "' AND sno = " & txtfields(0).Text & " ", DB
        If rsch.RecordCount > 0 Then
            txtfields(24).Locked = True
            txtfields(25).Locked = True
        Else
            txtfields(24).Locked = False
            txtfields(25).Locked = False
        End If
        If Opt = "mod" Then
            LookUp.Clear = True
            Combo1.Locked = False
           ' Txtfields(20).SetFocus
        End If
      
'''           KslList1.Visible = True
'''           KslList1.listfield1width = 2500
'''           KslList1.listfield2width = 7500
'''           KslList1.conn = connectstring
'''           KslList1.Caption = "Select Sample No to Modify"
'''           KslList1.table = "rm_sample where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
'''           KslList1.listfield1 = "sno as SampleNo" '"cast(sno as varchar)as Sample"
'''           KslList1.listfield2 = "date"
'''           Frame3.Visible = True
'''           Frame3.ZOrder
'''           Buttonframe.Enabled = True
'''           DB.BeginTrans
'''           Call adddelmod(BUTTON)
'''           Call disablcontls
'''           BUTTON(9).ToolTipText = "Modify"
'''           txtfields(0).Locked = True
'''           KslList1.SetFocus
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 2
    If Index = 2 Then If ToValidFinYear(Divcode) = False Then Exit Sub
    If Index = 2 Then
        Opt = "del"
        desc.Caption = "Deletion"
    ElseIf Index = 4 Then
        Opt = "fnd"
        desc.Caption = "Find"
    End If
    
        Set rsz = New Recordset
        rsz.Open "select max(Date) from rm_sample where divcode='" & Divcode & "'", DB, adOpenStatic
        If rsz.RecordCount > 0 Then
            If IsDate(rsz(0)) = True Then
                If rsz(0) > pdate Then
                    MsgBox "Invalid Processing Date...!!!", vbInformation, head
                    Exit Sub
                End If
            End If
        End If
    

        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_SAMPLE where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' ", DB
        If Not Rs(0) = 0 Then
            
            
            'Opt = "del"
            StatusBar1.Panels(2).Text = "Select a Sample Number from the List for Deletion"
            Set rsa = New Recordset
            rsa.Open "select a.sno ,date ,slname ,varname  from rm_sample a inner join fa_slmas b on   a.supcode=b.slcode   inner join rm_var c on a.varcode=c.varcode where a.divcode='" & Divcode & "' AND a.sno not in(select b.contno from rm_sample a inner join rm_cont b on  a.divcode=b.divcode and a.sno=b.contno and a.supcode=b.supcd and a.varcode=b.varcode where DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "')  " & _
                     " and DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                MsgBox "No Record Found", vbInformation, head
                Screen.MousePointer = 0
                Exit Sub
            End If
      LookUp.Clear = True
      ''LookUp.Query = "select sno ,date ,slname ,varname  from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' "
            
      LookUp.query = "select a.sno""Mill Sample No."",date""Mill Sample Date"",slname""Supplier Name"",varname""Variety Name""  from rm_sample a inner join fa_slmas b on a.supcode=b.slcode inner join rm_var c on a.varcode=c.varcode  where  a.divcode='" & Divcode & "' AND a.sno not in(select b.contno from rm_sample a,rm_cont b where a.divcode=b.divcode and a.sno=b.contno and a.supcode=b.supcd and a.varcode=b.varcode and DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' )  and date BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
      LookUp.Caption = "Sample Listing"
      LookUp.DefCol = "No."
      LookUp.ALIGN = "1350,1500,4000,1750"
      LookUp.Show vbModal
            
    If LookUp.Cancel = False Then
      BUTTON(9).Enabled = True
      If Opt <> "fnd" Then
         Set adoPrimaryRS = New Recordset
         adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,CROP_YEAR,STAPHANDTEST,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus,trashAVL,moisAVL,neps,contamination  FROM RM_SAMPLE WHERE  sno='" & LookUp.Fields(0) & "' AND date='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
      Else
         Set adoPrimaryRS = New Recordset
         adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus,,trashAVL ,moisavl,neps,contamination   FROM RM_SAMPLE ,moisAVL WHERE  sno >='" & LookUp.Fields(0) & "' AND date >='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
      End If
''      If adoPrimaryRS("potype") = "With Basic Sample" Then
''            MachineFrame.Visible = True
''            HandTestFrame.Visible = False
''        Else
''            HandTestFrame.Visible = True
''            MachineFrame.Visible = False
''    End If
      Call bindcontls
      Call ENABLCONTLS
      If Opt = "del" Then
         Call disablcontls
      End If
      
      If Opt = "fnd" Then
         Call disablcontls
         BUTTON(9).Enabled = False
         Call NEWFORM(BUTTON)
         Call NEWFORM1(BUTTON, GSNO)
         BUTTON(0).Enabled = False
         BUTTON(1).Enabled = False
         BUTTON(2).Enabled = False
         BUTTON(10).Enabled = True
      End If
      
       Set rsch = New Recordset
        rsch.Open "select * from rm_cont where divcode='" & Divcode & "' AND sno = " & txtfields(0).Text & " ", DB
   
        If rsch.RecordCount > 0 Then
         txtfields(24).Locked = True
         txtfields(25).Locked = True
        Else
          txtfields(24).Locked = False
          txtfields(25).Locked = False
        End If
    
      DB.BeginTrans
     'calling addmoddel procedure from module
      Call adddelmod(BUTTON)
      If Opt = "fnd" Then
        BUTTON(9).Enabled = False
      End If
      txtfields(0).Locked = True
      'txtFields(5).SetFocus
      
      Else
      
      End If
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
    
Case 3

        'Query
        Screen.MousePointer = 11
        
        Dim iRow As Integer
        Set repo = New Report.ReportView
        desc.Caption = "Query"
        Set rs1 = New Recordset
'        RS1.Open " SELECT a.DIVCODE,a.SNO,a.DATE,a.SUPCODE,b.slname,a.VARCODE,c.varname,a.STAPLEN25,a.STAPLEN50,a.TRASH_PER," & _
'                 " a.MICRONAIRE,a.STRENGTH,a.MCOEFF,a.UNIRATIO,a.STAPHANDTEST,a.HVITEST,a.moiture " & _
'                 " FROM RM_SAMPLE a,fa_slmas b,rm_var c WHERE  a.supcode=b.slcode and a.varcode=c.varcode and " & _
'                 " a.date = ' " & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and a.sno='" & Txtfields(0).Text & "' and a.divcode='" & Divcode & "'", db, adOpenStatic, adLockReadOnly
         
         
         rs1.Open " SELECT a.DIVCODE,a.SNO,a.DATE,a.SUPCODE,A.BROKERCODE,a.Station_name,a.crop_year,b.slname,a.VARCODE,c.varname,a.STAPLEN25,a.STAPLEN50,a.TRASH_PER," & _
                 " a.MICRONAIRE,a.STRENGTH,a.MCOEFF,remarks,a.UNIRATIO,a.STAPHANDTEST,a.HVITEST,a.moiture, a.csp ,a.tpi ,a.avrstrength ,a.corr_strenth , a.spot_for , a.rate ,a.prno ,a.prty_sampno,a.brokercode , a.station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,a.STATE_CODE,STATION_NAME,CROP_YEAR,neps,contamination " & _
                 " FROM RM_SAMPLE a,fa_slmas b,rm_var c WHERE  a.supcode=b.slcode and a.varcode=c.varcode and " & _
                 " a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and a.divcode='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly

       'a.date > = '" & Format(yfdate, "yyyy-mm-dd") & "' and a.date <= '" & Format(yldate, "yyyy-MM-dd") & "'
        
        
        If rs1.RecordCount <= 0 Then
        MsgBox "No record found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
        End If
        ipageno = 1
        Set rsP = New Recordset
        Close
        Open KALFOLDERDATA + "red.txt" For Output As #1
        
        'Open "C:\red.txt" For Output As #1
            iRow = 0
            Call listHeader
            iRow = iRow + 9
            rs1.MoveFirst
            Do While Not rs1.EOF
                Print #1, Space(2); Padr(rs1("sno"), 9, " ") + Space(2) + Padr(Format(rs1("date"), "dd/mm/yy"), 8, " ") + Space(5) + Padr(rs1("prty_sampno"), 8, " ") + Space(3) + Padr(rs1("slname"), 34, " ") + Space(1) + Padr(rs1("Station_name"), 16, " ") + Space(1) + Padr(rs1("varname"), 16, " ") + Space(1) + Padr(rs1("Crop_year"), 8, " ") + Space(2) + Padr(rs1("POTYPE"), 20, " ")
                iRow = iRow + 1
                
                    If iRow > 60 Then
                        Print #1,
                        Print #1, Space(2) & String(134, "-")
                        Print #1, Chr(12)
                        iRow = iRow + 3
                        
                        Print #1, Chr(12)
                        co = 0
                        ipageno = ipageno + 1
                        Call listHeader
                    End If
                rs1.MoveNext
            Loop
            
            Print #1,
            Print #1, Space(2) & String(134, "-")
            Print #1, Chr(12)
            iRow = iRow + 3
            
        Close #1
        Call KALBATPROCESS("Red")
        Screen.MousePointer = 0
        
Case 4
        If Index = 2 Then If ToValidFinYear(Divcode) = False Then Exit Sub
        Opt = "fnd"
        desc.Caption = "Find"
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_SAMPLE where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' ", DB
        If Not Rs(0) = 0 Then
            'Opt = "del"
            StatusBar1.Panels(2).Text = "Select a Sample Number from the List for Deletion"
            Set rsa = New Recordset
            rsa.Open "select a.sno ,date ,slname ,varname  from rm_sample a inner join fa_slmas b on a.supcode=b.slcode inner join rm_var c on a.varcode=c.varcode where   a.divcode='" & Divcode & "'" & _
                     " and DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                MsgBox "No Record Found", vbInformation, head
                Screen.MousePointer = 0
                Exit Sub
            End If
            LookUp.Clear = True
            LookUp.query = "select a.sno""Mill Sample No."",date""Mill Sample Date"",slname""Supplier Name"",varname""Variety Name""  from rm_sample a inner join  fa_slmas b on a.supcode=b.slcode inner join rm_var c on a.varcode=c.varcode  where  a.divcode='" & Divcode & "' and DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
            LookUp.Caption = "Sample Listing"
            LookUp.DefCol = "No."
            LookUp.ALIGN = "1350,1500,4000,1750"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                If Opt <> "fnd" Then
                    Set adoPrimaryRS = New Recordset
                    adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,CROP_YEAR,STAPHANDTEST,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus,trashAVL,moisAVL,neps,contamination    FROM RM_SAMPLE WHERE  sno='" & LookUp.Fields(0) & "' AND date='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
                Else
                    Set adoPrimaryRS = New Recordset
                    adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus,trashAVL,moisAVL,neps,contamination    FROM RM_SAMPLE WHERE  sno >='" & LookUp.Fields(0) & "' AND date >='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
                End If
                Call bindcontls
                Call ENABLCONTLS
                If Opt = "fnd" Then
                    Call disablcontls
                    BUTTON(9).Enabled = False
                    Call NEWFORM(BUTTON)
                    Call NEWFORM1(BUTTON, GSNO)
                    BUTTON(0).Enabled = False
                    BUTTON(1).Enabled = False
                    BUTTON(2).Enabled = False
                    BUTTON(10).Enabled = True
                End If
                Set rsch = New Recordset
                rsch.Open "select * from rm_cont where divcode='" & Divcode & "' AND sno = " & txtfields(0).Text & " ", DB
   
                If rsch.RecordCount > 0 Then
                    txtfields(24).Locked = True
                    txtfields(25).Locked = True
                Else
                    txtfields(24).Locked = False
                    txtfields(25).Locked = False
                End If
                DB.BeginTrans
                'calling addmoddel procedure from module
                Call adddelmod(BUTTON)
                If Opt = "fnd" Then
                    BUTTON(9).Enabled = False
                End If
                txtfields(0).Locked = True
                'txtFields(5).SetFocus
            Else
            End If
        Else
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If
       
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        If adoPrimaryRS.RecordCount <> 0 Then
        adoPrimaryRS.MoveFirst
        StatusBar1.Panels(2).Text = "First Record"
        Call bindcontls
        'calling fir procedure from module
'        Call navi(BUTTON)
        Call FIR(BUTTON)
        End If

        Beep
        Exit Sub
GoFirstError:
        MsgBox Err.Description, vbInformation, head
Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        Call bindcontls
        adoPrimaryRS.MoveNext
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
        MsgBox Err.Description, vbInformation, head

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
        MsgBox Err.Description, vbInformation, head

Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        If adoPrimaryRS.RecordCount <> 0 Then
        adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
        Call bindcontls
        'calling las procedure from module
'        Call navi(BUTTON)
        Call las(BUTTON)
        End If
        Beep
        Exit Sub

GoLastError:
        MsgBox Err.Description, vbInformation, head

Case 9
        'Save
    If Opt = "add" Or Opt = "mod" Then
        If Trim(txtfields(1).Text) = "" Then
            MsgBox "Please enter Supplier ", vbInformation, head
            txtfields(1).SetFocus
            Exit Sub
        End If
        If Trim(txtfields(4).Text) = "" Then
            MsgBox "Please enter the Variety", vbInformation, head
            txtfields(4).SetFocus
            Exit Sub
        End If
        If MaskEdBox1(0).Text = "__/__/____" Or IsDate(MaskEdBox1(0).Text) = False Then
            MsgBox "Please enter the Date ", vbInformation, head
            MaskEdBox1(0).SetFocus
            Exit Sub
        End If
    End If
    If Opt = "add" Then
            adoPrimaryRS("divcode") = Divcode
            Set MaxNoRs = New Recordset
                MaxNoRs.Open "SELECT ISNULL(MAX(CAST(SNO AS NUMERIC))+1,1) FROM rm_SAMPLE WHERE  DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
                txtfields(0).Text = MaxNoRs(0)
            
            
            adoPrimaryRS("SNO") = txtfields(0)
            If (IsNull(MaskEdBox1(0).Text) = False) And (MaskEdBox1(0).Text <> "__/__/____") Then
                adoPrimaryRS("date") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            Else
                adoPrimaryRS("date") = Null
            End If
            adoPrimaryRS("prty_sampno") = txtfields(26)
            adoPrimaryRS("SUPCODE") = txtfields(1)
            adoPrimaryRS("state_code") = txtfields(34)
            adoPrimaryRS("brokercode") = txtfields(24)
            adoPrimaryRS("VARCODE") = txtfields(4)
            adoPrimaryRS("HVITEST") = txtfields(38)
            adoPrimaryRS("STAPHANDTEST") = txtfields(12)
            If UCase(CustID) = "SARANYA" Then
                adoPrimaryRS("STAPLEN50") = Trim(txtfields(6))
                adoPrimaryRS("STAPLEN25") = Trim(txtfields(5))
                    If HandTestFrame.Visible = True Then
                        adoPrimaryRS("MICRONAIRE") = Trim(txtfields(7))
                        adoPrimaryRS("trashAVL") = Mid(Trim(IIf(Trim(Cmb_Trash) = "", "=", Trim(Cmb_Trash))), 1, 1)
                        adoPrimaryRS("moisaVL") = Mid(Trim(IIf(Trim(Cmb_Moisture(0).Text) = "", "=", Trim(Cmb_Moisture(0).Text))), 1, 1)
                    
                    Else
                        adoPrimaryRS("MICRONAIRE") = Trim(txtfields(11).Text)
                        adoPrimaryRS("trashAVL") = Mid(Trim(IIf(Trim(cmb_Trash2) = "", "=", Trim(cmb_Trash2))), 1, 1)
                        adoPrimaryRS("moisaVL") = Mid(Trim(IIf(Trim(Cmb_Moisture(1).Text) = "", "=", Trim(Cmb_Moisture(1).Text))), 1, 1)
                    End If
            
            Else
                adoPrimaryRS("STAPLEN50") = val(txtfields(6))
                adoPrimaryRS("STAPLEN25") = val(txtfields(5))
                If HandTestFrame.Visible = True Then
'                    adoPrimaryRS("MICRONAIRE") = val(txtfields(7))
                    adoPrimaryRS("MICRONAIRE") = Trim(txtfields(11).Text)
                    adoPrimaryRS("trashAVL") = Mid(Trim(IIf(Trim(Cmb_Trash) = "", "=", Trim(Cmb_Trash))), 1, 1)
                    adoPrimaryRS("moisaVL") = Mid(Trim(IIf(Trim(Cmb_Moisture(0).Text) = "", "=", Trim(Cmb_Moisture(0).Text))), 1, 1)
                Else
'                    adoPrimaryRS("MICRONAIRE") = val(txtfields(11))
                    adoPrimaryRS("MICRONAIRE") = val(Trim(txtfields(11).Text))
                    adoPrimaryRS("trashAVL") = Mid(Trim(IIf(Trim(cmb_Trash2) = "", "=", Trim(cmb_Trash2))), 1, 1)
                    adoPrimaryRS("moisaVL") = Mid(Trim(IIf(Trim(Cmb_Moisture(1).Text) = "", "=", Trim(Cmb_Moisture(1).Text))), 1, 1)
                End If
                
            End If
            If HandTestFrame.Visible = True Then
                adoPrimaryRS("TRASH_PER") = val(txtfields(8))
            Else
                adoPrimaryRS("TRASH_PER") = val(txtfields(28))
            End If
            If HandTestFrame.Visible = True Then
                adoPrimaryRS("COLOR") = CStr(txtfields(30))
            Else
                adoPrimaryRS("COLOR") = CStr(txtfields(37))
            End If
            '----chanage by muthu instustion balakrishna
            If HandTestFrame.Visible = True Then
                adoPrimaryRS("remarks") = txtfields(29).Text
                adoPrimaryRS("COLOURGRADE") = txtfields(50).Text
                adoPrimaryRS("QUANTITY") = val(txtfields(52).Text)
                adoPrimaryRS("FQI") = val(txtfields(55).Text)
                adoPrimaryRS("shortfibre") = val(txtfields(56).Text)
                adoPrimaryRS("PLOTNO") = txtfields(44).Text
                adoPrimaryRS("SCI") = txtfields(57).Text
                adoPrimaryRS("GTEX") = txtfields(31).Text
                adoPrimaryRS("RATE") = val(txtfields(53).Text)
                adoPrimaryRS("PRNO") = txtfields(45).Text
                
            Else
                adoPrimaryRS("remarks") = txtfields(15).Text
                adoPrimaryRS("COLOURGRADE") = txtfields(49).Text
                adoPrimaryRS("QUANTITY") = val(txtfields(46).Text)
                adoPrimaryRS("FQI") = val(txtfields(47).Text)
                adoPrimaryRS("shortfibre") = val(txtfields(42).Text)
             '   adoPrimaryRS("PLOTNO") = Txtfields(54).Text
                adoPrimaryRS("PLOTNO") = txtfields(43).Text
                adoPrimaryRS("SCI") = txtfields(48).Text
                adoPrimaryRS("gtex") = txtfields(41).Text
                adoPrimaryRS("RATE") = val(txtfields(45).Text)
                adoPrimaryRS("PRNO") = txtfields(44).Text
                
            End If
            
            adoPrimaryRS("YARNAPP") = txtfields(17)
            adoPrimaryRS("AVGCOUNT") = val(txtfields(16))
            adoPrimaryRS("UNIRATIO") = val(txtfields(13))
            adoPrimaryRS("MCOEFF") = 0
            adoPrimaryRS("MOITURE") = txtfields(14)
            adoPrimaryRS("csp") = val(txtfields(18))
            adoPrimaryRS("tpi") = txtfields(19)
            adoPrimaryRS("avrstrength") = val(txtfields(20))
            adoPrimaryRS("corr_strenth") = val(txtfields(21))
            adoPrimaryRS("spot_for") = txtfields(22)
            adoPrimaryRS("rate") = val(txtfields(23))
            adoPrimaryRS("rd") = val(txtfields(58))
            adoPrimaryRS("bplus") = val(txtfields(59))
            adoPrimaryRS("POTYPE") = Trim(Combo1.Text)
            adoPrimaryRS("GRADE") = txtfields(32)
                        
            adoPrimaryRS("AREA_CODE") = txtfields(33)
            adoPrimaryRS("STATION_NAME") = txtfields(27)
            adoPrimaryRS("CROP_YEAR") = txtfields(36)
            adoPrimaryRS("yellowtouch") = txtfields(39).Text
            adoPrimaryRS("immature") = txtfields(40).Text
            adoPrimaryRS("trashavl") = IIf(Trim(Cmb_Trash) = "", "=", Cmb_Trash)
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            
            DB.Execute "UPDATE RM_CONT SET SNO =" & val(txtfields(0).Text) & " WHERE CONTNO='" & dContNO & "' AND CONTDT ='" & Format(sContDATE, "yyyy-MM-DD") & "' AND CONTDT BETWEEN '" & Format(yfdate, "yyyy-MM-DD") & "' AND '" & Format(yldate, "yyyy-MM-DD") & "'"
            
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Sample"
                    TrnLog("Trans_Mod") = "Add"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                    TrnLog("slcode") = txtfields(1).Text
                    TrnLog("areacode") = IIf(Trim(txtfields(33).Text) = "", Null, txtfields(33).Text)
                    TrnLog("Agent_code") = IIf(Trim(txtfields(24).Text) = "", Null, txtfields(24).Text)
                    TrnLog("docno") = Trim(txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
                    TrnLog("varcode") = Trim(txtfields(4).Text)
                    TrnLog.UpdateBatch adAffectAllChapters

            
            
            DB.CommitTrans
            MsgBox "Record(s) Saved", vbInformation, head
            MsgBox "Mill Sample No. is " & txtfields(0).Text, vbInformation, head
            SSTab1.Enabled = False
            Screen.MousePointer = 0
            Opt = ""
     End If
    
    If Opt = "mod" Then
            If (IsNull(MaskEdBox1(0).Text) = False) And (MaskEdBox1(0).Text <> "__/__/____") Then
                adoPrimaryRS("date") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            Else
                adoPrimaryRS("date") = Null
            End If
            
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Sample"
                    TrnLog("Trans_Mod") = "Mod"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("slcode") = txtfields(1).Text
                    TrnLog("areacode") = IIf(Trim(txtfields(33).Text) = "", Null, txtfields(33).Text)
                    TrnLog("Agent_code") = IIf(Trim(txtfields(24).Text) = "", Null, txtfields(24).Text)
                    TrnLog("docno") = Trim(txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
                    TrnLog("varcode") = Trim(txtfields(4).Text)
                    TrnLog.UpdateBatch adAffectAllChapters
        
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            
            
            Set rsch = New Recordset
            rsch.Open "select * from rm_cont where divcode='" & Divcode & "' AND sno = " & txtfields(0).Text & " ", DB
            
             If rsch.RecordCount > 0 Then
               DB.Execute ("update rm_cont set supcd = '" & (txtfields(1).Text) & "',varcode= '" & (txtfields(4).Text) & "' where sno= " & val(txtfields(0).Text) & " and divcode='" & Divcode & "'")
             End If
             
            DB.CommitTrans
            MsgBox "Record(s) Modified", vbInformation, head
            Screen.MousePointer = 0
            SSTab1.Enabled = False
            Opt = ""
    End If
    If Opt = "del" Then
        On Error GoTo del
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
        If msg = vbYes Then
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Sample"
                    TrnLog("Trans_Mod") = "Del"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("slcode") = txtfields(1).Text
                    TrnLog("areacode") = IIf(Trim(txtfields(33).Text) = "", Null, txtfields(33).Text)
                    TrnLog("Agent_code") = IIf(Trim(txtfields(24).Text) = "", Null, txtfields(24).Text)
                    TrnLog("docno") = Trim(txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
                    TrnLog("varcode") = Trim(txtfields(4).Text)
                    TrnLog.UpdateBatch adAffectAllChapters
        
            DB.Execute ("delete from rm_sample where sno= " & val(txtfields(0).Text) & " and divcode='" & Divcode & "'")
            DB.CommitTrans
            MsgBox "Record(s) Deleted!", vbInformation, head
            'BUTTON(9).ToolTipText = "Save"
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
            Opt = ""
        txtfields(2).Text = ""
        txtfields(25).Text = ""
        txtfields(3).Text = ""
        txtfields(35).Text = ""
        txtfields(12).Text = ""
    End If
    If Opt = "fnd" Then
        DB.CommitTrans
        Opt = ""
    End If
        'Return to query mode
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus,trashavl,moisavl,neps,contamination  FROM RM_SAMPLE WHERE divcode='" & Divcode & "' order by date", DB, adOpenStatic, adLockOptimistic
        
        If adoPrimaryRS.RecordCount > 0 Then
            adoPrimaryRS.MoveLast
        End If
        Call bindcontls
        Call disablcontls
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).SetFocus
        Exit Sub
GOPRIMERROR:
    If Err = -2147217900 Then
        MsgBox "Division Code Already Exists ", vbInformation, head
        GoTo gocancel
    End If
del:
    If Err.Number = -2147217900 Then
        MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
        'BUTTON(9).ToolTipText = "Save"
        GoTo gocancel
        Exit Sub
    End If

Case 10
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:

        desc.Caption = "Query"
        Screen.MousePointer = 11
Select Case Opt
    Case "mod"
        DB.RollbackTrans
        SSTab1.Enabled = False
    Case "add"
        DB.RollbackTrans
        SSTab1.Enabled = False
    Case "del"
        DB.RollbackTrans
    Case "fnd"
        DB.RollbackTrans
    End Select
        Opt = ""
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus,trashavl,moisAVL,neps,contamination  FROM RM_SAMPLE WHERE  divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount > 0 Then
            adoPrimaryRS.MoveLast
        End If
        Call bindcontls
        Screen.MousePointer = 0
        Call disablcontls
        'procedure unique to this form  to set grid headings
        'calling cancl procedure from module
'        Call cancl(BUTTON)
'        Call ClearText
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).SetFocus '''''''''''
       ' Frame1.Visible = True
       ' Frame2.Visible = True
'        Call Combo1_LostFocus
        Call Form_Load
        Call NEWFORM1(BUTTON, GSNO)
Case 11
        'EXIT
        
        Unload Me

Case 12
''        Frame5.Visible = True
''        Frame5.ZOrder 0
''        Option5.value = True
''        Option5.SetFocus
''        SSTab1.Enabled = False
''        'UserFooter1.Visible = True
''        'UserFooter1.Load
''        UserFooter1.ClearFooter
''        Command1.Visible = True
''        Buttonframe.Enabled = False
        If txtfields(0).Text <> "" And MaskEdBox1(0).Text <> "__/__/____" Then
            Dim ClsRMISample As New clsCrystal
         ''   Set ClsRMISample.cryRept = CRY_RMI_Sample
         Set ClsRMISample.cryRept = Cry_Trans_Sample 'CRY_RMI_Sample1
            ClsRMISample.CrystalPrint
            CrystalReport1.Reset
            CrystalReport1.DiscardSavedData = True
            CrystalReport1.Connect = connectstring
            CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
            CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
            CrystalReport1.ParameterFields(1) = "@SamNo;" & val(txtfields(0).Text)
            CrystalReport1.ParameterFields(3) = "@FDate;" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
            CrystalReport1.WindowState = crptMaximized
            SendKeys "{ENTER}"
            CrystalReport1.Action = 2
            CrystalReport1.PrinterCopies = 1
            Screen.MousePointer = 0
        End If




End Select
intervalMinutes = -1

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FRMSAMPLE1", vbInformation, head
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

On Error GoTo Command2_Click_Error

Frame6.Visible = False

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Combo1_Click()
On Error GoTo Combo1_Click_Error

If Opt = "add" Or Opt = "mod" Then
    If Combo1.Text = "With Basic Sample" Then
        MachineFrame.Visible = True
        ''Txtfields(16).SetFocus
'        txtfields(20).SetFocus
        txtfields(37).Text = ""
        HandTestFrame.Visible = False
    Else
        If Combo1.Text = "Subject To Approval" Then
            MachineFrame.Caption = "Quality Parameters / Subject To Approval"
        Else
            MachineFrame.Caption = "Quality Parameters / Spot Purchase"
        End If
        ''HandTestFrame.Visible = True

        MachineFrame.Visible = True
    End If
End If
Exit Sub

Combo1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Click of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command5_Click()    'activex cancel

On Error GoTo Command5_Click_Error

Screen.MousePointer = 0
Buttonframe.Enabled = True
BUTTON(11).Enabled = True
FLG = "Y"

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command6_Click()        'activex okay
On Error GoTo Command6_Click_Error

Buttonframe.Enabled = True
Select Case Ksllist1.listfield1

Case "sno as SampleNo" '"cast(sno as varchar)"
      BUTTON(9).Enabled = True
      If Opt <> "fnd" Then
         Set adoPrimaryRS = New Recordset
         adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,CROP_YEAR,STAPHANDTEST,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus,,trashAVL ,moisavl,neps,contamination   FROM RM_SAMPLE WHERE  sno='" & Ksllist1.Code & "' AND date='" & Format(Ksllist1.Description, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
      Else
         Set adoPrimaryRS = New Recordset
         adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus,,trashAVL ,moisavl,neps,contamination   FROM RM_SAMPLE WHERE  sno >='" & Ksllist1.Code & "' AND date >='" & Format(Ksllist1.Description, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", DB, adOpenStatic, adLockOptimistic
      End If
''      If adoPrimaryRS("potype") = "With Basic Sample" Then
''            MachineFrame.Visible = True
''            HandTestFrame.Visible = False
''        Else
''            HandTestFrame.Visible = True
''            MachineFrame.Visible = False
''    End If
      Call bindcontls
      Call ENABLCONTLS
      If Opt = "del" Then
         Call disablcontls
      End If
      If Opt = "fnd" Then
         Call disablcontls
         BUTTON(9).Enabled = False
         Call NEWFORM(BUTTON)
         Call NEWFORM1(BUTTON, GSNO)
         BUTTON(0).Enabled = False
         BUTTON(1).Enabled = False
         BUTTON(2).Enabled = False
         BUTTON(10).Enabled = True
      End If
      txtfields(0).Locked = True
      'txtFields(5).SetFocus
      
        
Case "slname as SupplierName,city as City"
      txtfields(2).Text = Ksllist1.Code
      txtfields(1).Text = Ksllist1.Description
     
      txtfields(24).SetFocus
      FLG = "Y"
      Exit Sub
      
Case "slname as BrokerName,city as City"
      txtfields(25).Text = Ksllist1.Code
      txtfields(24).Text = Ksllist1.Description
      
      txtfields(4).SetFocus
      FLG = "Y"
      Exit Sub
      
Case "areaname as AREANAME,Station,State"
      
      txtfields(33).Text = Ksllist1.Description
      Set rsa = New Recordset
      rsa.Open "SELECT * FROM RM_AREA WHERE AREACODE='" & Ksllist1.Description & "'", DB, adOpenStatic
      If rsa.RecordCount > 0 Then
      txtfields(35).Text = rsa![areaname]
      txtfields(27).Text = rsa("STATION")
      txtfields(34).Text = rsa("STATE")
      End If
      StationCode = Ksllist1.Description
     
      'TXTFIELDS(34).SetFocus
      Combo1.SetFocus
      FLG = "Y"
      Exit Sub

'Case "NAME"
'      TXTFIELDS(34).Text = ksllist1.description
'      TXTFIELDS(37).Text = ksllist1.Code
'      Frame3.Visible = False
'      Combo1.SetFocus
'      flg = "Y"
'      Exit Sub
'
                 
Case "varname as VarietyName"
      txtfields(3).Text = Ksllist1.Code
      txtfields(4).Text = Ksllist1.Description
      txtfields(33).SetFocus
      FLG = "Y"
End Select


Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form FRMSAMPLE1", vbInformation, head

End Sub

Private Sub Combo1_DropDown()
    'Combo1.ListIndex = 0
End Sub

Private Sub Combo1_GotFocus()
On Error GoTo Combo1_GotFocus_Error

    StatusBar1.Panels(2).Text = "Select a Purchase type"
    Combo1.BackColor = &HC0FFC0

Exit Sub
Combo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_GotFocus of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error

Combo1.BackColor = &HFFFFFF
If Opt = "add" Or Opt = "mod" Then
    If Combo1.Text = "With Basic Sample" Then
        MachineFrame.Visible = True
        'Txtfields(16).SetFocus
        'If txtfields(20).Locked = True Then
            txtfields(5).Locked = False
            txtfields(5).SetFocus
        'End If
        txtfields(37).Text = ""
        HandTestFrame.Visible = False
    Else
        If Combo1.Text = "Subject To Approval" Then
        HandTestFrame.Caption = "Quality Parameters / Subject To Approval"
        Else
        HandTestFrame.Caption = "Quality Parameters / Spot Purchase"
        End If
        ''HandTestFrame.Visible = True
        'If txtfields(12).Locked = True Then
            HandTestFrame.Enabled = True
            HandTestFrame.Visible = True
            txtfields(12).Locked = False
            txtfields(12).Enabled = True
            txtfields(12).SetFocus
        'End If
        MachineFrame.Visible = True
    End If
End If

Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_LostFocus of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

If txtfields(0).Text <> "" Then
        Screen.MousePointer = 11
        Set repo = New Report.ReportView
        'desc.Caption = "Listing"
        Set rs1 = New Recordset
''         RS1.Open " SELECT a.DIVCODE,a.SNO,a.DATE,a.SUPCODE,e.slname as BROKERname,b.slname,a.VARCODE,c.varname,a.STAPLEN25,a.STAPLEN50,a.TRASH_PER," & _
''                 " a.MICRONAIRE,a.STRENGTH,a.MCOEFF,remarks,a.avgcount, a.UNIRATIO,a.yarnapp,a.STAPHANDTEST,a.HVITEST,a.moiture, a.csp ,a.tpi ,a.avrstrength ," & _
''                 " a.corr_strenth , a.spot_for , a.rate ,a.prno ,a.prty_sampno,a.brokercode , a.station_code,POTYPE,GRADE,GTEX,COLOR,D.AREANAME,a.STATE_CODE,STATION_NAME,CROP_YEAR " & _
''                 " FROM RM_SAMPLE a,fa_slmas b,rm_var c, RM_AREA d, fa_slmas e WHERE  a.brokercode=e.slcode and a.supcode=b.slcode and a.area_code = d.areacode and a.varcode=c.varcode and " & _
''                 " a.date = ' " & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and a.sno='" & Txtfields(0).Text & "' and a.divcode='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly

        rs1.Open " SELECT a.DIVCODE,a.SNO,a.DATE,a.SUPCODE, b.slname,a.VARCODE,c.varname,a.STAPLEN25,a.immature,a.yellowtouch,a.STAPLEN50,a.TRASH_PER," & _
                 " a.MICRONAIRE,a.STRENGTH,a.MCOEFF,remarks,a.avgcount, a.UNIRATIO,a.yarnapp,a.STAPHANDTEST,a.HVITEST,a.moiture, a.csp ,a.tpi ,a.avrstrength ," & _
                 " a.corr_strenth , a.spot_for , a.rate ,a.prno ,a.prty_sampno,a.brokercode , a.station_code,POTYPE,GRADE,GTEX,COLOR,D.AREANAME,a.STATE_CODE,STATION_NAME,CROP_YEAR,a.trashAVL,neps,contamination " & _
                 " FROM RM_SAMPLE a inner join fa_slmas b on a.supcode=b.slcode  inner join  rm_var c on a.varcode=c.varcode  inner join  RM_AREA d on  a.area_code = d.areacode  " & _
                 " where a.date = ' " & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and a.sno='" & txtfields(0).Text & "' and a.divcode='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly

        If rs1.RecordCount <= 0 Then
        MsgBox "No record found", vbInformation
        Screen.MousePointer = 0
        Option4.SetFocus
        Exit Sub
        End If
        pg = 1
        Set rsP = New Recordset
        Close
        Open KALFOLDERDATA + "red.txt" For Output As #1
'            Print #1, Chr(18)
            Print #1, Space(1) & Chr(18) & Chr(27); "E"; CENTRE(Trim(divname), 85, " "); Chr(27); "F"
            Print #1,
            Print #1, Space(1); CENTRE("Sample Details", 88, " ") ' & Space(38) '& "Dt: "; Format(pdate, "dd/mm/yy")
            Print #1, Space(1) & String(89, "-")
            Print #1, Space(1); "Supplier        : "; Padr(rs1("slname"), 30, " ") + Space(5) + "Mill Sample No     : "; Padr(rs1("sno"), 5, " ")
            Print #1,
            Print #1, Space(1); "Broker          : "; Padr(txtfields(25).Text, 30, " "); Space(5) + "Date               : "; Padr(Format(rs1("date"), "dd/mm/yy"), 10, " ")
            Print #1,
            Print #1, Space(1); "Variety         : "; Padr(rs1("varname"), 30, " "); Space(5) + "Supplier Sample No : "; Padr(rs1("prty_sampno"), 8, " ")
            Print #1,
            Print #1, Space(1); "Area            : "; Padr(rs1("areaname"), 30, " "); Space(5) + "Station            : "; Padr(rs1("station_name"), 8, " ")
            Print #1,
            Print #1, Space(1); "State           : "; Padr(rs1("state_code"), 30, " "); Space(5) + "Crop Year          : "; Padr(rs1("crop_year"), 30, " ")
            Print #1,
            If rs1("POTYPE") = "With Basic Sample" Then
            Print #1, Space(1); "Quality Parameters / With Basic Sample"
            Print #1, Space(1); "--------------------------------------"
            Print #1, Space(1); "Average Strength    : "; Padl(INF(rs1("Avrstrength"), 2), 8, " ") + Space(2); "Micronaire          : "; Padl(INF(rs1("Micronaire"), 1), 8, " ") + Space(2) + "Trash %          : "; Padl(INF(rs1("TRASH_PER"), 1), 6, " ")
            Print #1,
            Print #1, Space(1); "2.5% Span Length(mm): "; Padl(INF(rs1("STAPLEN25"), 2), 8, " ") + Space(2); "50% Span length(mm) : "; Padl(INF(rs1("Staplen50"), 2), 8, " ") + Space(2) + "Uniformity Ratio : "; Padl(INF(rs1("UniRatio"), 2), 6, " ")
            Print #1,
            Print #1, Space(1); "Moisture Content %  : "; Padl(INF(rs1("Moiture"), 2), 8, " "); Space(2); "Average Count       : "; Padl(INF(rs1("avgcount"), 2), 8, " ") + Space(2) + "C.S.P.           : "; Padl(INF(rs1("CSP"), 0), 6, " ")
            Print #1,
            Print #1, Space(1); "T.P.I.              : "; Padl(INF(rs1("TPI"), 2), 8, " "); Space(2); "Corrected Strength  : "; Padl(INF(rs1("corr_strenth"), 2), 8, " ")
            Print #1,
            Print #1, Space(1); "Colour              : "; Padr(rs1("COLOR"), 15, " "); Space(2); "Yarn Appearance : "; Padr(rs1("yarnapp"), 30, " ")
            Print #1,
            Print #1, Space(1); "Remarks             : "; Chr(15) + Padr(rs1("remarks"), 250, " ") + Chr(18)
            Print #1, Space(1) & String(89, "-")
            Print #1,
            Print #1,
            ElseIf rs1("POTYPE") = "Subject To Approval" Then
            Print #1, Space(1); "Quality Parameters / Subject To Approval"
            Print #1, Space(1); "--------------------------------------"
            Print #1, Space(1); "Stable Handle Test(mm): "; Padl(INF(rs1("staphandtest"), 2), 8, " ") + Space(2); "Grade         : "; Padr(rs1("grade"), 8, " ") + Space(2) + "Immature          : "; Padl(INF(rs1("immature"), 2), 6, " ")
            Print #1,
            Print #1, Space(1); "Micronaire            : "; Padl(INF(rs1("Micronaire"), 1), 8, " ") + Space(2); "Trash %       : "; Padl(INF(rs1("TRASH_PER"), 1), 8, " ") + Space(2); "Strength (G. Tex) : "; Padl(INF(rs1("gtex"), 2), 6, " ")
            Print #1,
            Print #1, Space(1); "Yellow Touch          : "; Padl(INF(rs1("yellowtouch"), 2), 8, " ") + Space(2); "Colour        : "; Padr(rs1("COLOR"), 20, " ")
            Print #1,
            Print #1, Space(1); "Remarks               : "; Chr(15) + Padr(rs1("remarks"), 250, " ") + Chr(18)
            Print #1, Space(1) & String(89, "-")
            Print #1,
            Print #1,
            Print #1,
            Print #1,
            ElseIf rs1("POTYPE") = "Spot Purchase" Then
            Print #1, Space(1); "Quality Parameters / Spot Purchase"
            Print #1, Space(1); "--------------------------------------"
            Print #1, Space(1); "Stable Handle Test(mm): "; Padl(INF(rs1("staphandtest"), 2), 8, " ") + Space(2); "Grade         : "; Padr(rs1("grade"), 8, " ") + Space(2) + "Immature          : "; Padl(INF(rs1("immature"), 2), 6, " ")
            Print #1,
            Print #1, Space(1); "Micronaire            : "; Padl(INF(rs1("Micronaire"), 1), 8, " ") + Space(2); "Trash %       : "; Padl(INF(rs1("TRASH_PER"), 1), 8, " ") + Space(2); "Strength (G. Tex) : "; Padl(INF(rs1("gtex"), 2), 6, " ")
            Print #1,
            Print #1, Space(1); "Yellow Touch          : "; Padl(INF(rs1("yellowtouch"), 2), 8, " ") + Space(2); "Colour        : "; Padr(rs1("COLOR"), 20, " ")
            Print #1,
            Print #1, Space(1); "Remarks               : "; Chr(15) + Padr(rs1("remarks"), 250, " ") + Chr(18)
            Print #1, Space(1) & String(89, "-")
            Print #1,
            Print #1,
            Print #1,
            Print #1,
            
            End If
            
            Call footermod(CInt(1), UserFooter1.SelectedStr, 85)
            'Call FOOTER_PRINT(85, CStr(1), 5)
            Print #1,
            'call footermod(cint(1),
         Close #1
         
         Call KALBATPROCESS("Red")
         Screen.MousePointer = 0
Else
    MsgBox "No record found", vbInformation, head
End If

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Command1_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        UserFooter1.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
ElseIf KeyCode = vbKeyLeft Or KeyCode = vbKeyRight Then
    Option4.SetFocus
End If

Exit Sub
Command1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_KeyDown of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

MaskEdBox1(0).Text = DTPicker1.value
MaskEdBox1(0).SetFocus

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If
If KeyCode = vbKeyEscape Then
'    If frmReport.Visible = True Then
'        frmReport.Visible = False
'        Frame5.Visible = False
'        UserFooter1.Visible = False
'        Command1.Visible = False
'        SSTab1.Enabled = True
'        Buttonframe.Enabled = True
'    End If
    If Frame5.Visible = True Then
        Frame5.Visible = False
        UserFooter1.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
Call openconnection
DATLAB.Caption = pdate
DTPicker1.value = pdate
Set adoPrimaryRS = New Recordset
 ' adoprimaryrs.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP FROM RM_SAMPLE WHERE  DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by SNO", db, adOpenStatic, adLockOptimistic
 ' adoprimaryrs.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,csp ,tpi ,avrstrength,corr_strenth, spot_for, rate ,prno ,prty_sampno,brokercode , station_code FROM RM_SAMPLE WHERE  DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by SNO", db, adOpenStatic, adLockOptimistic
 ' adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,csp ,tpi ,avrstrength,corr_strenth, spot_for, rate ,prno ,prty_sampno,brokercode , station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,CROP_YEAR,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI   FROM RM_SAMPLE WHERE  DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by cast(SNO as numeric)", DB, adOpenStatic, adLockOptimistic
   adoPrimaryRS.Open "SELECT top 10 DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,isnull(STAPLEN25,0)STAPLEN25,isnull(STAPLEN50,0)STAPLEN50,isnull(TRASH_PER,0)TRASH_PER,isnull(MICRONAIRE,0)MICRONAIRE,isnull(STRENGTH,0)STRENGTH,isnull(MCOEFF,0)MCOEFF,isnull(UNIRATIO,0)UNIRATIO,isnull(STAPHANDTEST,0)STAPHANDTEST,isnull(HVITEST,0)HVITEST,isnull(moiture,0)moiture,isnull(AVGCOUNT,0)AVGCOUNT,YARNAPP,csp ,tpi ,isnull(avrstrength,0)avrstrength,isnull(corr_strenth,0)corr_strenth, spot_for, rate ,prno ,prty_sampno,brokercode , station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,CROP_YEAR,remarks,yellowtouch,immature,SCI,PLOTNO,SHORTFIBRE,COLOURGRADE,QUANTITY,FQI,rd,bplus ,trashAVL ,moisAVL,neps,contamination   FROM RM_SAMPLE WHERE  DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by cast(SNO as numeric) ASC", DB, adOpenStatic, adLockOptimistic
If adoPrimaryRS.RecordCount <> 0 Then
    adoPrimaryRS.MoveLast
   'Bind the text boxes,check boxes and option buttons to the data source
   Call bindcontls
''   If adoPrimaryRS("potype") = "With Basic Sample" Then
''            MachineFrame.Visible = True
''            HandTestFrame.Visible = False
''        Else
''            HandTestFrame.Visible = True
''            MachineFrame.Visible = False
''    End If
   desc.Caption = "Query"
   'This variable is declared as global to show the date
   DATLAB.Caption = pdate
   tem = adoPrimaryRS("potype")
    
    'Calling newform procedure from Module to disable buttons
   Call NEWFORM(BUTTON)
   Call NEWFORM1(BUTTON, GSNO)
   Call disablcontls
   SSTab1.Enabled = False
   intervalMinutes = -1
'   BUTTON(0).SetFocus
   'Exit Sub
Else
   MsgBox "No Record Found", vbInformation, head
   Call Norecfound(BUTTON)
   Call NEWFORM1(BUTTON, GSNO)
   'TabStrip1.Visible = True
End If


Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FRMSAMPLE1", vbInformation, head
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

Opt = ""
Screen.MousePointer = vbDefault
intervalMinutes = -1
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error
Dim iCount As Integer
intervalMinutes = -1
If (adoPrimaryRS.AbsolutePosition) = -1 Then iCount = 0 Else iCount = (adoPrimaryRS.AbsolutePosition)

'StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
StatusBar1.Panels(2).Text = "Records " & CStr(iCount) & " of " & CStr(adoPrimaryRS.RecordCount)

If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) And Opt <> "add" Then
   
       If adoPrimaryRS!PoType = "With Basic Sample" Then
            MachineFrame.Visible = True
            txtfields(37).Text = ""
            HandTestFrame.Visible = False
        Else
''            If adoPrimaryRS!PoType = "Subject To Approval" Then
''                HandTestFrame.Caption = "Quality Parameters / Subject To Approval"
''            Else
''                HandTestFrame.Caption = "Quality Parameters / Spot Purchase"
''            End If
''                HandTestFrame.Visible = True
''                MachineFrame.Visible = False
            MachineFrame.Visible = True
            HandTestFrame.Visible = False
        End If

   
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & adoPrimaryRS("supcode") & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
      txtfields(2).Text = Rs("slname")
   Else
      txtfields(2).Text = ""
   End If
        
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & adoPrimaryRS("brokercode") & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
      txtfields(25).Text = Rs("slname")
   Else
      txtfields(25).Text = ""
   End If
        
        
   Set Rs = New Recordset
   Rs.Open "select varname from rm_var where varcode= '" & adoPrimaryRS("varcode") & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
      txtfields(3).Text = Rs("varname")
   Else
      txtfields(3).Text = ""
   End If
   MaskEdBox1(0).Text = adoPrimaryRS("date")
   Cmb_Trash.Text = IIf(IsNull(adoPrimaryRS("trashAVL")), "=", adoPrimaryRS("trashAVL"))
   cmb_Trash2.Text = IIf(IsNull(adoPrimaryRS("trashAVL")), "=", adoPrimaryRS("trashAVL"))
   Cmb_Moisture(0).Text = IIf(IsNull(adoPrimaryRS("moisavl")), "=", adoPrimaryRS("moisavl"))
   Cmb_Moisture(1).Text = IIf(IsNull(adoPrimaryRS("moisavl")), "=", adoPrimaryRS("moisavl"))
   
   Set Rs = New Recordset
   Rs.Open "SELECT * FROM RM_AREA WHERE AREACODE= '" & adoPrimaryRS("AREA_CODE") & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
      txtfields(35).Text = Rs("AREANAME")
      'Combo2.AddItem IIf(IsNull(rs(0)), 0, rs(0))
      txtfields(34).Text = IIf(IsNull(Rs("STATE")), 0, Rs("STATE"))
      
   Else
      txtfields(35).Text = ""
      txtfields(34).Text = ""
   End If
   
'   Set rs = New Recordset
'   rs.Open "SELECT * FROM IG_STATE WHERE STATE_CODE= '" & adoPrimaryRS("STATE_CODE") & "'", db, adOpenStatic
'   If rs.RecordCount <> 0 Then
'      TXTFIELDS(37).Text = rs("NAME")
'   Else
'      TXTFIELDS(37).Text = ""
'   End If
End If

intervalMinutes = -1
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FRMSAMPLE1", vbInformation, head
End Sub

'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.txtfields
    Set oText.DataSource = adoPrimaryRS
Next
Set Combo1.DataSource = adoPrimaryRS
MaskEdBox1(0).DataField = "arrdate"
DTPicker1.maxdate = pdate
DTPicker1.MinDate = yfdate
Set Combo1.DataSource = adoPrimaryRS
End Sub

Public Sub ENABLCONTLS()
Dim tb As TextBox
For Each tb In Me.txtfields
    tb.Locked = False
Next
txtfields(27).Locked = True
txtfields(34).Locked = True
End Sub

Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.txtfields
   tb.Locked = True
Next
End Sub


Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error

MaskEdBox1(Index).BackColor = &HC0FFC0
StatusBar1.Panels(2).Text = "Enter a Date"

Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form FRMSAMPLE1", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_KeyDown of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error

Select Case Index
Case 2
    If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
       If Not (IsDate(MaskEdBox1(2).Text)) Then
          'MsgBox "Please enter the Date", vbInformation, head
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
MaskEdBox1(Index).BackColor = &HFFFFFF
StatusBar1.Panels(2).Text = ""

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo MaskEdBox1_Validate_Error

If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
   If Not (IsDate(MaskEdBox1(0).Text)) Then
      MsgBox ("Please enter the valid Date"), vbInformation, head
      MaskEdBox1(0).Text = pdate
      MaskEdBox1(0).SetFocus
      Cancel = True
   ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
      MsgBox ("Date must be earlier or equal to Processing date"), vbInformation, head
      MaskEdBox1(0).SetFocus
      MaskEdBox1(0).Text = pdate
      Cancel = True
   Else
    ''TXTFIELDS(1).SetFocus
   End If
   If MaskEdBox1(0).Text <> pdate Then
      MsgBox ("Date must be equal to processing date"), vbInformation, head
      MaskEdBox1(0).SetFocus
      MaskEdBox1(0).Text = pdate
      Cancel = True
   End If
End If

Exit Sub
MaskEdBox1_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_Validate of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    Command1.Visible = True

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        UserFooter1.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    Command1.Visible = True

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        UserFooter1.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SSTab1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SSTab1_KeyDown_Error

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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo Txtfields_Change_Error

    If Opt = "add" Or Opt = "mod" Then
    Select Case Index
    Case 1
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode='" & txtfields(1).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(2).Text = Rs(0)
        Else
            txtfields(2).Text = ""
        End If

    Case 24
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode='" & txtfields(24).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(25).Text = Rs(0)
        Else
            txtfields(25).Text = ""
        End If
    Case 4
        Set Rs = New Recordset
        Rs.Open "select varname from rm_var where varcode='" & txtfields(4).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(3).Text = Rs(0)
        Else
            txtfields(3).Text = ""
        End If
    Case 33
        Set Rs = New Recordset
        Rs.Open "select areaname,station,state from rm_area where areacode='" & txtfields(33).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(35).Text = Rs(0)
            txtfields(27).Text = Rs(1)
            txtfields(34).Text = Rs(2)
        Else
            txtfields(35).Text = ""
            txtfields(27).Text = ""
            txtfields(34).Text = ""
            txtfields(27).Locked = False
            txtfields(34).Locked = False
        End If
    Case 38
        txtfields(13).Text = Trim(txtfields(38).Text)
    End Select
    End If


Exit Sub
Txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form FRMSAMPLE1", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
    txtfields(Index).BackColor = &HC0FFC0
If Opt = "add" Or Opt = "mod" Then
    If Index = 0 Then
        StatusBar1.Panels(2).Text = "Enter a Sample No."
    ElseIf Index = 1 Then
        StatusBar1.Panels(2).Text = "Enter a Supplier Code"
    ElseIf Index = 2 Then
        StatusBar1.Panels(2).Text = "Enter a Agent Code"
    ElseIf Index = 3 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers with 2 Decimal Places"
    ElseIf Index = 4 Then
        StatusBar1.Panels(2).Text = "Enter a Variety Code"
    ElseIf Index = 5 Then
            If UCase(CustID) = "SARANYA" Then
                StatusBar1.Panels(2).Text = "Enter Span Lenth With in 20 Char"
            Else
            
            End If
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers with 2 Decimal Places"
    ElseIf Index = 6 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers with 2 Decimal Places"
    ElseIf Index = 7 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 1 Integers with 1 Decimal Place"
    ElseIf Index = 8 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 1 Integers with 1 Decimal Place"
    ElseIf Index = 12 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 1 Decimal Place"
    ElseIf Index = 13 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers with 2 Decimal Places"
    ElseIf Index = 15 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 250 Characters"
    ElseIf Index = 16 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 3 Integers with 2 Decimal Places"
    ElseIf Index = 17 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 20 Characters"
    ElseIf Index = 18 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers"
    ElseIf Index = 19 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 3 Integers with 2 Decimal Places"
    ElseIf Index = 24 Then
        StatusBar1.Panels(2).Text = "Enter a Broker Code"
    ElseIf Index = 28 Or Index = 5 Or Index = 6 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 1 Integers with 1 Decimal Place"
    ElseIf Index = 11 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 1 Integers with 1 Decimal Place"
    ElseIf Index = 20 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers with 2 Decimal Places"
    ElseIf Index = 21 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers with 2 Decimal Places"
    ElseIf Index = 12 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers"
    ElseIf Index = 26 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 10 Characters"
    ElseIf Index = 29 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 250 Characters"
    ElseIf Index = 30 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 20 Characters"
    ElseIf Index = 33 Then
        StatusBar1.Panels(2).Text = "Enter a Area Code"
    ElseIf Index = 31 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 1 Decimal Places"
    ElseIf Index = 32 Then
        StatusBar1.Panels(2).Text = "Enter a Maximum of 10 Characters"
    ElseIf Index = 38 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers with 2 Decimal Places"
    ElseIf Index = 37 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 20 Characters"
    ElseIf Index = 39 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers with 2 Decimal Places"
    ElseIf Index = 40 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 2 Decimal Places"
    ElseIf Index = 14 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 2 Decimal Places"
    End If
End If
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

    If Opt = "add" Or Opt = "mod" Then
    
If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") Then
    SendKeys ("{TAB}")
    Exit Sub
End If

'        If KeyCode = vbKeyS And Shift = 2 Then
'            Call BUTTON_Click(9)
'        ElseIf KeyCode = vbKeyZ And Shift = 2 Then
'            Call BUTTON_Click(10)
'        ElseIf KeyCode = vbKeyQ And Shift = 2 Then
'            Call BUTTON_Click(11)
'        ElseIf KeyCode = vbKeyP And Shift = 2 Then
'            Call BUTTON_Click(12)
'        ElseIf KeyCode = vbKeyW And Shift = 2 Then
'            Call Command6_Click
'        End If
        
    End If
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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
'''Call ToUpCase(TXTFIELDS, KeyAscii)
On Error GoTo txtfields_KeyPress_Error

If KeyPress = VBESC Then
    
    Screen.MousePointer = 0
    Buttonframe.Enabled = True
    BUTTON(11).Enabled = True
    FLG = "Y"
    If Index = 4 Then
        Call ToAlphaNumber(txtfields(Index), 10, KeyAscii)
    ElseIf Index = 26 Then
        If Trim(txtfields(Index).Text) = "" Then
            Call ToAlphaNumberOnly(txtfields(Index), 10, KeyAscii)
        Else
            Call ToAlphaNumber(txtfields(Index), 10, KeyAscii)
        End If
    End If
End If

Select Case Index
Case 51, 52, 54, 43, 46
    Call ToNumber1(txtfields(Index), 7, KeyAscii)
Case 53, 45
    Call ToNumberAssign(txtfields(Index), 10, KeyAscii, 4, 4)
Case 20, 21, 38, 39, 12, 16, 18, 19, 40, 14
    Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 2)
Case 5, 6, 13, 41
     If UCase(CustID) = "SARANYA" And (Index = 5 Or Index = 6) Then
        Call ToAlphanum(txtfields(Index), 20, KeyAscii)
     Else
        Call ToNumberAssign(txtfields(Index), 2, KeyAscii, 2, 2)
     End If
    
Case 52, 32, 55, 57, 42, 47, 48, 37, 58, 59, 56
    Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 2)
Case 31
    Call ToNumberAssign(txtfields(Index), 2, KeyAscii, 1, 1)
Case 7, 8, 28  '11,sivkumar gm
     If UCase(CustID) = "SARANYA" And (Index = 11) Then
              Call ToAlphanum(txtfields(Index), 20, KeyAscii)
     Else
        Call ToNumberAssign(txtfields(Index), 1, KeyAscii, 1, 1)
    End If
Case 43, 49, 17, 51, 54, 52, 50
    If Trim(txtfields(Index).Text) = "" Then
        Call ToAlphaNumberOnly(txtfields(Index), 10, KeyAscii)
    Else
        Call ToAlphaNumber(txtfields(Index), 10, KeyAscii)
    End If
Case 15, 29
    If Trim(txtfields(Index).Text) = "" Then
        Call ToAlphaNumberOnly(txtfields(Index), 250, KeyAscii)
    Else
        Call ToAlphaNumber(txtfields(Index), 250, KeyAscii)
    End If


End Select

If Index = 1 Then
    Call ToAlphanum(txtfields(1), 10, KeyAscii)
ElseIf Index = 24 Then
    Call ToAlphanum(txtfields(24), 10, KeyAscii)
ElseIf Index = 4 Then
    Call ToAlphanum(txtfields(4), 10, KeyAscii)
ElseIf Index = 33 Then
    Call ToAlphanum(txtfields(33), 10, KeyAscii)
'ElseIf Index = 11 Then
'    Call ToNumberAssign(txtFields(11), 1, KeyAscii, 1, 3)
ElseIf Index = 26 Then
'    MsgBox KeyAscii
    Call ToAlphanum(txtfields(26), 10, KeyAscii)
ElseIf Index = 36 Then
    'Call ToNumber1(txtfields(36), 8, KeyAscii)
    Call ToAlphanum(txtfields(36), 8, KeyAscii)
End If

Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
'  If Frame3.Visible = True Then KslList1.SetFocus
On Error GoTo txtfields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
    If Index = 17 Then
        BUTTON(9).SetFocus
    End If
    If Index = 1 Then
        If txtfields(1).Text = "" And LookUp.Visible = False Then
            txtfields(1).SetFocus
        End If
    End If
    
    If Index = 4 Then
        If txtfields(4).Text = "" And LookUp.Visible = False Then
            txtfields(4).SetFocus
        End If
    End If
''    If Index = 33 Then
''        txtfields(36).Locked = False
''        txtfields(36).SetFocus
''    End If
'    If Index = 11 Then
'        If txtFields(11).Text = "0.000" Then
'            txtFields(11).Text = ""
'            txtFields(11).SetFocus
'        End If
'    ElseIf Index = 12 Then
'        If txtFields(12).Text = "0.0" Then
'            txtFields(12).Text = ""
'            txtFields(12).SetFocus
'        End If
'    ElseIf Index = 5 Then
'        If txtFields(5).Text = "0.00" Then
'            txtFields(5).Text = ""
'            txtFields(5).SetFocus
'        End If
'    ElseIf Index = 6 Then
'        If txtFields(6).Text = "0.00" Then
'            txtFields(6).Text = ""
'            txtFields(6).SetFocus
'        End If
'    ElseIf Index = 7 Then
'        If txtFields(7).Text = "0.0" Then
'            txtFields(7).Text = ""
'            txtFields(7).SetFocus
'        End If
'    ElseIf Index = 8 Then
'        If txtFields(8).Text = "0.0" Then
'            txtFields(8).Text = ""
'            txtFields(8).SetFocus
'        End If
'    ElseIf Index = 13 Then
'        If txtFields(13).Text = "0.00" Then
'            txtFields(13).Text = ""
'            txtFields(13).SetFocus
'        End If
'    ElseIf Index = 14 Then
'        If txtFields(14).Text = "0.00" Then
'            txtFields(14).Text = ""
'            txtFields(14).SetFocus
'        End If
'    ElseIf Index = 16 Then
'        If txtFields(16).Text = "0.00" Then
'            txtFields(16).Text = ""
'            txtFields(16).SetFocus
'        End If
'    ElseIf Index = 18 Then
'        If txtFields(18).Text = "0.00" Then
''            TXTFIELDS(18).Text = ""
''            TXTFIELDS(18).SetFocus
'        End If
'    ElseIf Index = 19 Then
'        If txtFields(19).Text = "0.00" Then
'            txtFields(19).Text = ""
'            txtFields(19).SetFocus
'        End If
'    ElseIf Index = 20 Then
'        If txtFields(20).Text = "0.00" Then
'            txtFields(20).Text = ""
'            txtFields(20).SetFocus
'        End If
'    ElseIf Index = 21 Then
'        If txtFields(21).Text = "0.00" Then
'            txtFields(21).Text = ""
'            txtFields(21).SetFocus
'        End If
'    ElseIf Index = 28 Then
'        If txtFields(28).Text = "0.00" Then
'            txtFields(28).Text = ""
'            txtFields(28).SetFocus
'        End If
'    ElseIf Index = 31 Then
'        If txtFields(31).Text = "0.0" Then
'            txtFields(31).Text = ""
'            txtFields(31).SetFocus
'        End If
'    ElseIf Index = 38 Then
'        If txtFields(38).Text = "0.00" Then
'            txtFields(38).Text = ""
'            txtFields(38).SetFocus
'        End If
'    ElseIf Index = 39 Then
'        If txtFields(39).Text = "0.00" Then
'            txtFields(39).Text = ""
'            txtFields(39).SetFocus
'        End If
'    End If
''    If Index = 36 Then
''        Combo1.SetFocus
''    End If
'    If Index = 26 Then
''        If txtFields(26).Text = "" Then
''        ElseIf val(txtFields(26)) = 0 Then
''            txtFields(26).Text = ""
''            txtFields(26).SetFocus
''        End If
'    End If
'
''    If Index = 33 Then
''        If txtfields(33).Text = "" And LookUp.Visible = False Then
''            txtfields(33).SetFocus
''        End If
''    End If
''    If Index = 34 Then
''        If txtfields(34).Text = "" And LookUp.Visible = False Then
''            txtfields(34).SetFocus
''        End If
''    End If
End If
Select Case Index
    Case 5, 6
            If UCase(CustID) = "SARANYA" Then
                txtfields(Index).Text = txtfields(Index).Text
            Else
                txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.00")
            End If
    Case 13, 42, 28, 14, 20, 16, 21, 19, 18, 47, 48, 37, 58, 59, 12, 56, 38, 40, 55, 57, 39, 30
    
        txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.00")
    
    'Case 11  ''
     '       If UCase(CustID) = "SARANYA" Then
      '          Txtfields(Index).Text = Txtfields(Index).Text
       '     Else
        '        Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.0")
         '   End If
    
    Case 41, 7, 31, 8
                txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.0")
       
    Case 45, 53
        txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.0000")

    End Select

  

'StatusBar1.Panels(2).Text = ""
txtfields(Index).BackColor = &HFFFFFF

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If (Opt = "add" Or Opt = "mod") And FLG = "Y" Then
   Select Case Index
   Case 0
     If Opt = "add" Then
'        If Trim(txtFields(0).Text) = "" Then
'           MsgBox "Pleas Define the Sample No", vbInformation, head
'           Cancel = True
'           Exit Sub
'        End If
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_SAMPLE WHERE DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and sno ='" & txtfields(0).Text & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
           MsgBox "This Number already defined", vbInformation, head
           Cancel = True
           txtfields(0).Text = ""
           Exit Sub
        End If
     End If

   Case 1
     If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM fa_slmas WHERE slcode = '" & Trim(txtfields(1).Text) & "' and isnull(IsActive,'N')='Y'", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
           txtfields(1).Text = UCase(txtfields(1).Text)
           txtfields(2).Text = Rs("slname")
        Else
            Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                sup = rs1("ptypecotton") '& "%"
            Else
                sup = ""
            End If
            LookUp.Clear = True
            LookUp.query = "Select Slname""Supplier Name"", City,Slcode""Supplier Code"",brcode""Broker Code"" FROM Fa_Slmas WHERE left(slcode,2) in (select Items from dbo.split('" & sup & "',',')) and isnull(isactive,'N')='Y'"
            StatusBar1.Panels(2).Text = "Select a Supplier Code from the list"
            LookUp.Caption = "Supplier Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "4000,1900,1300,1500"
                      LookUp.Show vbModal
            
            If LookUp.Cancel = False Then
            
                d = 0
                If (EXIST_VAT_PARA = True) Then
                    d = EXIST_VAT(LookUp.Fields(2))
                    If d <> 6 And d <> 0 Then
                        Buttonframe.Enabled = True
                        Call BUTTON_Click(10)
                        'Call QUERY_MODE
                        Call cancl(BUTTON)
                        Exit Sub
                        
                    End If
                End If
                txtfields(2).Text = LookUp.Fields(0)
                txtfields(1).Text = LookUp.Fields(2)
                ''Txtfields(25).Text = LookUp.Fields(0)
                txtfields(24).Text = IIf(IsNull(LookUp.Fields(3)), "", LookUp.Fields(3))
                txtfields(2).Locked = True
                txtfields(25).Locked = True
                LookUp.Clear = True
                
                txtfields(24).SetFocus
                FLG = "Y"
                Exit Sub
            Else
                LookUp.Clear = True
                txtfields(1).Text = ""
                txtfields(1).SetFocus
                Exit Sub
            End If
        End If
     End If
   
   Case 4
     If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_var WHERE varcode= '" & txtfields(4).Text & "' and isnull(Is_Active,'N')='Y' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
           txtfields(4).Text = UCase(txtfields(4).Text)
           txtfields(3).Text = Rs("varname")
        Else
            LookUp.Clear = True
            LookUp.query = "SELECT Varcode""Variety Code"",varname""Variety Name"" from rm_var where isnull(Is_Active,'N')='Y'"
            StatusBar1.Panels(2).Text = "Select a Vaiety code from the list"
            LookUp.Caption = "Variety Listing"
            LookUp.DefCol = "Variety Name"
            LookUp.ALIGN = "4000,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(3).Text = LookUp.Fields(1)
                txtfields(4).Text = LookUp.Fields(0)
                txtfields(3).Locked = True
                LookUp.Clear = True
                txtfields(33).SetFocus
                FLG = "Y"
                Exit Sub
            Else
                LookUp.Clear = True
                txtfields(4).Text = ""
                txtfields(33).SetFocus
                Exit Sub
            End If
        End If
     End If
Case 24
     If Opt = "add" Or Opt = "mod" Then
        Set rs1 = New Recordset
        rs1.Open "Select * from masterlen", DB, adOpenStatic
        If rs1.RecordCount > 0 Then
            bro = rs1("ptypebroker") & "%"
        Else
            bro = ""
        End If
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM fa_slmas WHERE slcode like '" & bro & "'", DB, adOpenStatic
        
        If Rs.RecordCount > 0 Then
        Set rsch = New Recordset
        rsch.Open "select * from rm_cont where divcode='" & Divcode & "' AND sno = " & val(txtfields(0).Text) & " ", DB
        If Opt = "mod" Then
         If rsch.RecordCount > 0 Then
            txtfields(24).Locked = True
            txtfields(25).Locked = True
            Exit Sub
         Else
            txtfields(24).Locked = False
            txtfields(25).Locked = False
          End If
        End If
    
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM fa_slmas WHERE slcode = '" & txtfields(24).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
           txtfields(24).Text = UCase(txtfields(24).Text)
           txtfields(25).Text = Rs("slname")
        Else
            LookUp.Clear = True
            LookUp.query = "Select Slname""Agent Name"",City,Slcode""Agent Code"" FROM fa_slmas where slcode like '" & bro & "'"
            LookUp.Caption = "Agent Listing"
            LookUp.DefCol = "Agent Name"
            LookUp.ALIGN = "4800,2000,2000"
            LookUp.Show vbModal
            LookUp.Cls
            If LookUp.Cancel = False Then
                txtfields(25).Text = LookUp.Fields(0)
                txtfields(24).Text = LookUp.Fields(2)
                txtfields(25).Locked = True
                LookUp.Clear = True
                txtfields(4).SetFocus
                FLG = "Y"
                Exit Sub
            Else
                txtfields(25).Text = ""
                txtfields(24).Text = ""
                txtfields(4).SetFocus
                Exit Sub
            End If

        End If
     End If
End If
      
    Case 27
'     If opt = "add" Then
'        Set rs = New Recordset
'        rs.Open "SELECT  areacode""Station_code"",areaname ""station Name""  from  rm_area  WHERE areaname  = '" & TXTFIELDS(27).Text & "' ", db, adOpenStatic
'        If rs.RecordCount > 0 Then
'           TXTFIELDS(27).Text = rs(1)
'           StationCode = rs(0)
'        Else
'           Frame3.Visible = True
'           Frame3.ZOrder
'           Buttonframe.Enabled = True
'           ksllist1.Visible = True
'           ksllist1.conn = connectstring
'           ksllist1.table = "rm_area"
'           ksllist1.listfield1 = "AREANAME"
'           ksllist1.listfield2 = "AREACODE,STATION,STATE"
'           flg = "N"
'           Label15.Caption = "Station Details"
'           ksllist1.SetFocus
'           Exit Sub
'        End If
'     End If

    Case 33
     If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        'rs.Open "SELECT AREACODE,AREANAME,STATION,STATE FROM rm_area WHERE AREANAME = '" & TXTFIELDS(33).Text & "' ", db, adOpenStatic
            Rs.Open "SELECT ISNULL(AREACODE,''),ISNULL(AREANAME,''),ISNULL(STATION,''),ISNULL(STATE,'') FROM rm_area WHERE AREACODE = '" & txtfields(33).Text & "' ", DB, adOpenStatic
           If Rs.RecordCount > 0 Then
           txtfields(33).Text = Rs(0)
           txtfields(27).Text = Rs(2)
           txtfields(35).Text = Rs(1)
           txtfields(34).Text = Rs(3)
           txtfields(36).SetFocus
        Else
        
      LookUp.Clear = True
      LookUp.query = "SELECT AreaCode""Area Code"",AreaName""Area Name"",isnull(STATION,'')as Station,isnull(STATE,'')as State FROM rm_area"
      LookUp.Caption = "Area Listing"
      StatusBar1.Panels(2).Text = "Select a area code from the list"
      LookUp.DefCol = "Area Name"
      LookUp.ALIGN = "2000,2000,2000,2000"
      LookUp.Show vbModal
      If LookUp.Cancel = False Then
      txtfields(33).Text = LookUp.Fields(0)
      txtfields(35).Text = LookUp.Fields(1)
      txtfields(27).Text = LookUp.Fields(2)
      txtfields(34).Text = LookUp.Fields(3)
'      txtFields(36).Text = Year(yfdate) & "-" & Format(yldate, "yy")
      txtfields(35).Locked = True
      txtfields(27).Locked = True
      txtfields(34).Locked = True
      txtfields(36).SetFocus
      LookUp.Clear = True
      'Combo1.SetFocus
      FLG = "Y"
      Exit Sub
      Else
        LookUp.Clear = True
        txtfields(33).Text = ""
       'TXTFIELDS(33).SetFocus
       txtfields(36).SetFocus
       'Combo1.SetFocus
      End If
        
        
        
'''           KslList1.Visible = True
'''           KslList1.conn = connectstring
'''           KslList1.Caption = "AreaDetails"
'''           KslList1.listfield1width = 2500
'''           KslList1.listfield2width = 2500
'''           KslList1.table = "rm_area"
'''           KslList1.listfield1 = "areaname as AREANAME,Station,State"
'''           KslList1.listfield2 = "areacode as Code"
'''           FLG = "N"
'''           Frame3.Visible = True
'''           Frame3.ZOrder
'''           Buttonframe.Enabled = True
'''           KslList1.SetFocus
'''           Exit Sub

        
''           Frame3.Visible = True
''           Frame3.ZOrder
''           Buttonframe.Enabled = True
''           KslList1.Visible = True
''           KslList1.conn = connectstring
''           KslList1.table = "rm_area"
''           KslList1.listfield1 = "AREACODE"
''           KslList1.listfield2 = "AREANAME,STATION,STATE"
''           flg = "N"
''           Label15.Caption = "Area Details"
''           KslList1.SetFocus
''           Exit Sub
        End If
     End If

'    Case 34
'     If Opt = "add" Then
'        Set rs = New Recordset
'        rs.Open "SELECT STATE_CODE,NAME FROM IG_STATE WHERE NAME = '" & TXTFIELDS(34).Text & "' ", db, adOpenStatic
'        If rs.RecordCount > 0 Then
'           TXTFIELDS(34).Text = rs(0)
'           TXTFIELDS(37).Text = rs(1)
'           Combo1.SetFocus
'        Else
'           Frame3.Visible = True
'           Frame3.ZOrder
'           Buttonframe.Enabled = True
'           ksllist1.Visible = True
'           ksllist1.conn = connectstring
'           ksllist1.table = "IG_STATE"
'           ksllist1.listfield1 = "NAME"
'           ksllist1.listfield2 = "STATE_CODE"
'           flg = "N"
'           Label15.Caption = "State Details"
'           ksllist1.SetFocus
'           Exit Sub
'        End If
'     End If
    Case 36
                    If Opt = "add" Or Opt = "mod" Then
                        If val(txtfields(36).Text) > Year(pdate) Then
                            MsgBox "Crop year must be earlier or equal to Processing year", vbInformation, head
                            txtfields(36).Text = Year(pdate)
                        End If
                        If val(txtfields(36).Text) < 2000 Then    '2000 is hard coded
                            MsgBox "Crop year must be after 2000 or equal to Processing year", vbInformation, head
                            txtfields(36).Text = Year(pdate)
                        End If
                    End If
      Case sdew
         BUTTON(9).SetFocus
         Exit Sub
   End Select
   
'  `
   
End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form FRMSAMPLE1", vbInformation, head
End Sub

Public Sub callhead(co As Integer)
Print #1, Chr(18)
Print #1, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
'Call Module2.addresshead
Print #1,
Print #1, Chr(18)
Print #1, Space(5) & "Purchase Order Listing  For " & Rs("contdt"); Space(25); "Dt. : " & Format(Date, "dd/mm/yyyy")
Print #1, Space(5) & String(80, "-")
End Sub

Private Sub ClearText()
On Error GoTo ClearText_Error

    txtfields(2).Text = ""
    txtfields(25).Text = ""
    txtfields(3).Text = ""
    txtfields(35).Text = ""
    Combo1.ListIndex = 0

Exit Sub
ClearText_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ClearText of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub listHeader()
'    Print #1,
On Error GoTo listHeader_Error

    Print #1, Chr(18)
    Print #1, Space(2) & Chr(27); "E"; CENTRE(divname, 134, " "); Chr(27); "F"
     ' Call Module2.addresshead
    Print #1,
    Print #1, Space(2); "Sample Listing" & Space(97); Format(pdate, "dd/mm/yy") + Space(2); "Page No. : " & ipageno
    Print #1, Space(2) & String(134, "-")
    Print #1, Space(2); "   Mill       Mill      Supplier   Supplier Name                      Supplier City    Variety         Crop Year  Purchase Option "
    Print #1, Space(2); "Sample No. Sample Date  Sample No.                                                                                             "
    Print #1, Space(2) & String(134, "-")

Exit Sub
listHeader_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure listHeader of Form FRMSAMPLE1", vbInformation, head
Screen.MousePointer = 0
End Sub
