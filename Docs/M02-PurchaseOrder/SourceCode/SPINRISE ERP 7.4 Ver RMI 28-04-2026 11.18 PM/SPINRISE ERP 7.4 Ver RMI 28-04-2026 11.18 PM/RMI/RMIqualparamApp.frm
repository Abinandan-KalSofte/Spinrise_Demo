VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmQualparamApp 
   Caption         =   "Inspection & Quality Parameter"
   ClientHeight    =   9630
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11400
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000005&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9630
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   11280
      Top             =   4440
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   13
      Left            =   5220
      Picture         =   "RMIqualparamApp.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   364
      ToolTipText     =   "New Order Crystal Report Print (Ctrl Y)"
      Top             =   60
      Width           =   510
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
      Height          =   645
      Left            =   0
      TabIndex        =   46
      Top             =   -90
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   3
         Left            =   8550
         Picture         =   "RMIqualparamApp.frx":0442
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "List (Ctrl L)"
         Top             =   90
         Visible         =   0   'False
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   4
         Left            =   4185
         Picture         =   "RMIqualparamApp.frx":07D9
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Print"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         Caption         =   "FORMXX"
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
         Index           =   12
         Left            =   5730
         Picture         =   "RMIqualparamApp.frx":0C1B
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Print"
         Top             =   150
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIqualparamApp.frx":105D
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
         Left            =   540
         Picture         =   "RMIqualparamApp.frx":1367
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   135
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIqualparamApp.frx":1703
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   8
         Left            =   2625
         Picture         =   "RMIqualparamApp.frx":1B4D
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIqualparamApp.frx":1EAF
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   10
         Left            =   3660
         Picture         =   "RMIqualparamApp.frx":21B9
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Cancel (Ctrl Backspace)  "
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIqualparamApp.frx":2535
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   9
         Left            =   3150
         Picture         =   "RMIqualparamApp.frx":283F
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIqualparamApp.frx":2BE1
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   11
         Left            =   4710
         Picture         =   "RMIqualparamApp.frx":302B
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   495
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIqualparamApp.frx":33C0
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   7
         Left            =   2100
         Picture         =   "RMIqualparamApp.frx":380A
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIqualparamApp.frx":3B5A
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   1
         Left            =   15
         Picture         =   "RMIqualparamApp.frx":3E64
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIqualparamApp.frx":41DE
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   5
         Left            =   1050
         Picture         =   "RMIqualparamApp.frx":4628
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   495
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIqualparamApp.frx":498D
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   6
         Left            =   1575
         Picture         =   "RMIqualparamApp.frx":4DD7
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   510
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   7455
         TabIndex        =   48
         Top             =   255
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   10275
         TabIndex        =   47
         Top             =   255
         Width           =   1095
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   45
      Top             =   9330
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
            Object.Width           =   12806
            MinWidth        =   12806
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "02/11/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "09:17 PM"
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
      Height          =   7935
      Left            =   315
      TabIndex        =   49
      Top             =   1005
      Width           =   10950
      _ExtentX        =   19315
      _ExtentY        =   13996
      _Version        =   393216
      Tabs            =   2
      Tab             =   1
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "Inspection && Quality Parameters                                 "
      TabPicture(0)   =   "RMIqualparamApp.frx":5124
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(1)=   "SSTab2"
      Tab(0).Control(2)=   "Frame6"
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "Sample"
      TabPicture(1)   =   "RMIqualparamApp.frx":5140
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "Frame2"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).ControlCount=   1
      Begin VB.Frame Frame2 
         Height          =   6915
         Left            =   105
         TabIndex        =   225
         Top             =   375
         Width           =   10740
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
            Height          =   4215
            Left            =   60
            TabIndex        =   306
            Top             =   2760
            Width           =   10590
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "GTEX"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   132
               Left            =   8925
               MaxLength       =   5
               TabIndex        =   334
               Top             =   540
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "shortfibre"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   113
               Left            =   1950
               TabIndex        =   333
               Top             =   3450
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "scncv"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   114
               Left            =   1950
               MaxLength       =   6
               TabIndex        =   332
               Top             =   3105
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "nepcv"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   115
               Left            =   8910
               TabIndex        =   331
               Top             =   2775
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "UI"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   116
               Left            =   1965
               TabIndex        =   330
               Top             =   3480
               Visible         =   0   'False
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "ML"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   117
               Left            =   5520
               TabIndex        =   329
               Top             =   3450
               Visible         =   0   'False
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "uhml"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   118
               Left            =   5520
               TabIndex        =   328
               Top             =   2445
               Visible         =   0   'False
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "ifc"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   119
               Left            =   1950
               TabIndex        =   327
               Top             =   2775
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "uqlw"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   120
               Left            =   1950
               TabIndex        =   326
               Top             =   2445
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "sfcw"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   121
               Left            =   8910
               TabIndex        =   325
               Top             =   2115
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "SCNeps_g"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   122
               Left            =   5520
               TabIndex        =   324
               Top             =   2115
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "MCOEFF"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   123
               Left            =   1950
               MaxLength       =   7
               TabIndex        =   323
               Top             =   1560
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "SFI"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   124
               Left            =   8925
               TabIndex        =   322
               Top             =   870
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "UNIRATIO"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0000;(0.0000)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   125
               Left            =   8925
               MaxLength       =   7
               TabIndex        =   321
               Top             =   210
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "STAPLEN"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0000;(0.0000)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   126
               Left            =   1950
               TabIndex        =   320
               Top             =   210
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "STAPLEN50"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   127
               Left            =   5520
               TabIndex        =   319
               Top             =   210
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "nepspergm"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   130
               Left            =   1950
               TabIndex        =   318
               Top             =   2115
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "trash_per"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   133
               Left            =   1950
               TabIndex        =   317
               Top             =   540
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "MICRONAIRE"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   135
               Left            =   5520
               TabIndex        =   316
               Top             =   540
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "bplus"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   136
               Left            =   8925
               TabIndex        =   315
               Top             =   1215
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "ELG"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   137
               Left            =   1950
               TabIndex        =   314
               Top             =   1215
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
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
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   138
               Left            =   1950
               MaxLength       =   7
               TabIndex        =   313
               Top             =   870
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "rd"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   139
               Left            =   5520
               TabIndex        =   312
               Top             =   1215
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "sci"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   140
               Left            =   5520
               TabIndex        =   311
               Top             =   870
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "fqi"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   141
               Left            =   5520
               TabIndex        =   310
               Top             =   3105
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00FFFFFF&
               DataField       =   "remarks"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   152
               Left            =   1950
               MaxLength       =   25
               TabIndex        =   309
               Top             =   3810
               Width           =   8295
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "STAPLEN5"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   153
               Left            =   5520
               TabIndex        =   308
               Top             =   2445
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "MCOEFF1"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   155
               Left            =   5520
               MaxLength       =   7
               TabIndex        =   307
               Top             =   2775
               Width           =   1300
            End
            Begin VB.Label Label50 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Strength (G.Tex)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   7110
               TabIndex        =   363
               Top             =   608
               Width           =   1170
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "HVI Test (mm)"
               DataField       =   "SNO"
               Height          =   195
               Index           =   3
               Left            =   120
               TabIndex        =   362
               Top             =   4035
               Visible         =   0   'False
               Width           =   1005
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Short Fibre"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   37
               Left            =   210
               TabIndex        =   361
               Top             =   3495
               Width           =   765
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "SCN CV"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   38
               Left            =   165
               TabIndex        =   360
               Top             =   3180
               Width           =   585
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Nep CV"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   39
               Left            =   7050
               TabIndex        =   359
               Top             =   2850
               Width           =   555
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "UI"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   40
               Left            =   165
               TabIndex        =   358
               Top             =   3525
               Visible         =   0   'False
               Width           =   165
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "ML"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   41
               Left            =   3390
               TabIndex        =   357
               Top             =   3510
               Visible         =   0   'False
               Width           =   225
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "UHML"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   42
               Left            =   3390
               TabIndex        =   356
               Top             =   2550
               Visible         =   0   'False
               Width           =   465
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "IFC"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   43
               Left            =   165
               TabIndex        =   355
               Top             =   2910
               Width           =   240
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "UQL(W)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   44
               Left            =   165
               TabIndex        =   354
               Top             =   2550
               Width           =   585
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "SFC(W)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   45
               Left            =   7050
               TabIndex        =   353
               Top             =   2190
               Width           =   555
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "SCN/GM"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   46
               Left            =   3390
               TabIndex        =   352
               Top             =   2190
               Width           =   660
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "Uniformity  Ratio (UI)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   1
               Left            =   7110
               TabIndex        =   351
               Top             =   278
               Width           =   1455
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "+b"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   47
               Left            =   7110
               TabIndex        =   350
               Top             =   1245
               Width           =   180
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "S.F.I."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   48
               Left            =   7110
               TabIndex        =   349
               Top             =   938
               Width           =   375
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Elongation"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   49
               Left            =   150
               TabIndex        =   348
               Top             =   1290
               Width           =   750
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Moisture Content"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   5
               Left            =   150
               TabIndex        =   347
               Top             =   945
               Width           =   1200
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "S.C.I."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   50
               Left            =   3390
               TabIndex        =   346
               Top             =   930
               Width           =   390
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Neps/Gm"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   51
               Left            =   150
               TabIndex        =   345
               Top             =   2190
               Width           =   690
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "F.Q.I."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   52
               Left            =   3390
               TabIndex        =   344
               Top             =   3240
               Width           =   390
            End
            Begin VB.Label Label12 
               Caption         =   "Maturity Coefficient % (MR)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   405
               Index           =   5
               Left            =   150
               TabIndex        =   343
               Top             =   1635
               Width           =   1680
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Micronaire (µ/gram)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   5
               Left            =   3360
               TabIndex        =   342
               Top             =   615
               Width           =   1380
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "RD"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   53
               Left            =   3390
               TabIndex        =   341
               Top             =   1275
               Width           =   240
            End
            Begin VB.Label Label48 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Remarks"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Left            =   135
               TabIndex        =   340
               Top             =   3840
               Width           =   630
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Trash %"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   6
               Left            =   120
               TabIndex        =   339
               Top             =   720
               Width           =   570
            End
            Begin VB.Label Label49 
               Caption         =   "2.5 % Span Length (MM) (UHML)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   420
               Left            =   120
               TabIndex        =   338
               Top             =   240
               Width           =   1755
            End
            Begin VB.Label Label8 
               Caption         =   "50 % Span Length (MM)  (ML)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   435
               Index           =   5
               Left            =   3390
               TabIndex        =   337
               Top             =   240
               Width           =   1875
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "5% Span Length"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   55
               Left            =   3450
               TabIndex        =   336
               Top             =   2520
               Width           =   1170
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "Maturity Coefficient % (MR)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   9
               Left            =   3390
               TabIndex        =   335
               Top             =   2865
               Width           =   1905
            End
            Begin VB.Line Line4 
               X1              =   0
               X2              =   10575
               Y1              =   2055
               Y2              =   2055
            End
         End
         Begin VB.Frame Frame14 
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   2445
            Left            =   75
            TabIndex        =   226
            Top             =   150
            Width           =   10725
            Begin VB.TextBox TXTFIELDS 
               DataField       =   "catcd"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   330
               Index           =   151
               Left            =   8160
               TabIndex        =   252
               Top             =   3480
               Width           =   540
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00E0E0E0&
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   150
               Left            =   1320
               Locked          =   -1  'True
               TabIndex        =   251
               Top             =   105
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " "
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   149
               Left            =   2445
               Locked          =   -1  'True
               TabIndex        =   250
               Top             =   435
               Width           =   8130
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " "
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   148
               Left            =   1320
               Locked          =   -1  'True
               TabIndex        =   249
               Top             =   435
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   147
               Left            =   1320
               Locked          =   -1  'True
               TabIndex        =   248
               Top             =   1410
               Width           =   1935
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " "
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   146
               Left            =   3945
               Locked          =   -1  'True
               TabIndex        =   247
               Top             =   105
               Width           =   1455
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " "
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   145
               Left            =   7560
               Locked          =   -1  'True
               TabIndex        =   246
               Top             =   1095
               Width           =   3015
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00E0E0E0&
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   144
               Left            =   9240
               Locked          =   -1  'True
               TabIndex        =   245
               Top             =   105
               Width           =   1335
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               DataField       =   "tarewt"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   330
               Index           =   143
               Left            =   3600
               MaxLength       =   9
               TabIndex        =   244
               Top             =   3480
               Width           =   1125
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               DataField       =   "netwt"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   330
               Index           =   142
               Left            =   6060
               MaxLength       =   11
               TabIndex        =   243
               Top             =   3480
               Width           =   1455
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               DataField       =   "grosswt"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   330
               Index           =   131
               Left            =   1320
               MaxLength       =   11
               TabIndex        =   242
               Top             =   3480
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00E0E0E0&
               DataField       =   "quantity"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   129
               Left            =   4920
               Locked          =   -1  'True
               MaxLength       =   5
               TabIndex        =   241
               Top             =   1740
               Width           =   1140
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00E0E0E0&
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   128
               Left            =   6840
               Locked          =   -1  'True
               TabIndex        =   240
               Top             =   105
               Width           =   1080
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " "
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   112
               Left            =   1320
               Locked          =   -1  'True
               TabIndex        =   239
               Top             =   750
               Width           =   1095
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " "
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   111
               Left            =   7545
               Locked          =   -1  'True
               TabIndex        =   238
               Top             =   750
               Width           =   3030
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " station"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   110
               Left            =   1320
               Locked          =   -1  'True
               TabIndex        =   237
               Top             =   1065
               Width           =   4740
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " prmark"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   109
               Left            =   7560
               Locked          =   -1  'True
               TabIndex        =   236
               Top             =   1410
               Width           =   3015
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " prno"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   108
               Left            =   4920
               Locked          =   -1  'True
               TabIndex        =   235
               Top             =   1410
               Width           =   1140
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   "unit"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   107
               Left            =   7560
               Locked          =   -1  'True
               MaxLength       =   40
               TabIndex        =   234
               Top             =   1740
               Width           =   1380
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00E0E0E0&
               DataField       =   "ratecy"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   106
               Left            =   8970
               Locked          =   -1  'True
               MaxLength       =   10
               TabIndex        =   233
               Top             =   1740
               Width           =   1605
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " "
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   105
               Left            =   1320
               Locked          =   -1  'True
               TabIndex        =   232
               Top             =   1740
               Width           =   1935
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " "
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   104
               Left            =   1320
               Locked          =   -1  'True
               TabIndex        =   231
               Top             =   2070
               Width           =   1935
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " "
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   103
               Left            =   2445
               Locked          =   -1  'True
               TabIndex        =   230
               Top             =   750
               Width           =   3615
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " RVEHNO"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   102
               Left            =   7560
               TabIndex        =   229
               Top             =   2070
               Visible         =   0   'False
               Width           =   3015
            End
            Begin VB.TextBox TXTFIELDS 
               DataField       =   "SPOTPasser"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   330
               Index           =   101
               Left            =   4920
               MaxLength       =   100
               TabIndex        =   228
               Top             =   2070
               Width           =   1140
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               BeginProperty Font 
                  Name            =   "Times New Roman"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   330
               Index           =   100
               Left            =   6060
               Locked          =   -1  'True
               MaxLength       =   30
               TabIndex        =   227
               TabStop         =   0   'False
               Top             =   2070
               Width           =   4500
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Mill Lot No."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   195
               Index           =   9
               Left            =   240
               TabIndex        =   274
               Top             =   180
               Width           =   795
            End
            Begin VB.Label Label3 
               AutoSize        =   -1  'True
               Caption         =   "Supplier"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   195
               Index           =   0
               Left            =   240
               TabIndex        =   273
               Top             =   495
               Width           =   570
            End
            Begin VB.Label Label71 
               AutoSize        =   -1  'True
               Caption         =   "Count"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   195
               Left            =   240
               TabIndex        =   272
               Top             =   1485
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Category"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   195
               Index           =   0
               Left            =   7560
               TabIndex        =   271
               Top             =   3600
               Width           =   630
            End
            Begin VB.Label Label70 
               AutoSize        =   -1  'True
               Caption         =   "Variety"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   195
               Left            =   6240
               TabIndex        =   270
               Top             =   1155
               Width           =   480
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Arrival Date"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   195
               Index           =   36
               Left            =   2880
               TabIndex        =   269
               Top             =   180
               Width           =   825
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Lot No."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   195
               Index           =   6
               Left            =   8040
               TabIndex        =   268
               Top             =   180
               Width           =   1140
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Pack Type"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   8
               Left            =   240
               TabIndex        =   267
               Top             =   2115
               Width           =   780
            End
            Begin VB.Label Label69 
               AutoSize        =   -1  'True
               Caption         =   "Quantity"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   3315
               TabIndex        =   266
               Top             =   1815
               Width           =   585
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "Tare Weight"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   3
               Left            =   2640
               TabIndex        =   265
               Top             =   3480
               Width           =   885
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Gross Weight"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   7
               Left            =   120
               TabIndex        =   264
               Top             =   3480
               Width           =   960
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               Caption         =   "Nett Weight"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   8
               Left            =   5040
               TabIndex        =   263
               Top             =   3480
               Width           =   855
            End
            Begin VB.Label Label68 
               AutoSize        =   -1  'True
               Caption         =   "Contract No."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   5640
               TabIndex        =   262
               Top             =   180
               Width           =   900
            End
            Begin VB.Label Label67 
               AutoSize        =   -1  'True
               Caption         =   "Area"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   270
               TabIndex        =   261
               Top             =   810
               Width           =   330
            End
            Begin VB.Label Label66 
               AutoSize        =   -1  'True
               Caption         =   "State"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   6240
               TabIndex        =   260
               Top             =   840
               Width           =   375
            End
            Begin VB.Label Label61 
               AutoSize        =   -1  'True
               Caption         =   "Station"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   240
               TabIndex        =   259
               Top             =   1125
               Width           =   495
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               Caption         =   "PR. No."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   195
               Index           =   5
               Left            =   3315
               TabIndex        =   258
               Top             =   1485
               Width           =   570
            End
            Begin VB.Label Label5 
               Caption         =   "Press Mark No."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   240
               Index           =   4
               Left            =   6240
               TabIndex        =   257
               Top             =   1455
               Width           =   1380
            End
            Begin VB.Label Label57 
               AutoSize        =   -1  'True
               Caption         =   "Rate / Unit"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   6240
               TabIndex        =   256
               Top             =   1770
               Width           =   795
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "Delivery"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   2
               Left            =   240
               TabIndex        =   255
               Top             =   1815
               Width           =   570
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Vehicle No."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   6
               Left            =   6240
               TabIndex        =   254
               Top             =   2085
               Visible         =   0   'False
               Width           =   825
            End
            Begin VB.Label Label55 
               AutoSize        =   -1  'True
               Caption         =   "SPOT Passing Person"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   3300
               TabIndex        =   253
               Top             =   2145
               Width           =   1575
            End
         End
         Begin VB.Line Line1 
            X1              =   30
            X2              =   10710
            Y1              =   2640
            Y2              =   2640
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
         Height          =   2865
         Left            =   -74880
         TabIndex        =   76
         Top             =   345
         Width           =   10725
         Begin VB.CheckBox ChkApp 
            Alignment       =   1  'Right Justify
            Caption         =   "Approved"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   3330
            TabIndex        =   365
            Top             =   2460
            Width           =   1785
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "SPOTPasser"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   91
            Left            =   4920
            MaxLength       =   100
            TabIndex        =   31
            Top             =   2070
            Width           =   1140
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " RVEHNO"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   60
            Left            =   7560
            TabIndex        =   41
            Top             =   2070
            Visible         =   0   'False
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   7
            Left            =   2445
            Locked          =   -1  'True
            TabIndex        =   19
            Top             =   750
            Width           =   3615
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   41
            Left            =   1320
            Locked          =   -1  'True
            TabIndex        =   30
            Top             =   2070
            Width           =   1935
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   40
            Left            =   1320
            Locked          =   -1  'True
            TabIndex        =   26
            Top             =   1740
            Width           =   1935
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "ratecy"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.0000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   38
            Left            =   8970
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   29
            Top             =   1740
            Width           =   1605
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "unit"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   37
            Left            =   7560
            Locked          =   -1  'True
            MaxLength       =   40
            TabIndex        =   28
            Top             =   1740
            Width           =   1380
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " prno"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   36
            Left            =   4920
            Locked          =   -1  'True
            TabIndex        =   24
            Top             =   1410
            Width           =   1140
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " prmark"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   35
            Left            =   7560
            Locked          =   -1  'True
            TabIndex        =   25
            Top             =   1410
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " station"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   34
            Left            =   1320
            Locked          =   -1  'True
            TabIndex        =   21
            Top             =   1065
            Width           =   4740
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   33
            Left            =   7560
            Locked          =   -1  'True
            TabIndex        =   20
            Top             =   750
            Width           =   3030
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   32
            Left            =   1320
            Locked          =   -1  'True
            TabIndex        =   18
            Top             =   750
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   28
            Left            =   6840
            Locked          =   -1  'True
            TabIndex        =   14
            Top             =   105
            Width           =   1080
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "quantity"
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
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   21
            Left            =   4920
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   27
            Top             =   1740
            Width           =   1140
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            DataField       =   "grosswt"
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
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   20
            Left            =   1320
            MaxLength       =   11
            TabIndex        =   91
            Top             =   3480
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            DataField       =   "netwt"
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
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   19
            Left            =   6060
            MaxLength       =   11
            TabIndex        =   90
            Top             =   3480
            Width           =   1455
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            DataField       =   "tarewt"
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
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   17
            Left            =   3600
            MaxLength       =   9
            TabIndex        =   89
            Top             =   3480
            Width           =   1125
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   14
            Left            =   9240
            Locked          =   -1  'True
            TabIndex        =   15
            Top             =   105
            Width           =   1335
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   3
            Left            =   7560
            Locked          =   -1  'True
            TabIndex        =   22
            Top             =   1095
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   2
            Left            =   3945
            Locked          =   -1  'True
            TabIndex        =   13
            Top             =   105
            Width           =   1455
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   4
            Left            =   1320
            Locked          =   -1  'True
            TabIndex        =   23
            Top             =   1410
            Width           =   1935
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   5
            Left            =   1320
            Locked          =   -1  'True
            TabIndex        =   16
            Top             =   435
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   6
            Left            =   2445
            Locked          =   -1  'True
            TabIndex        =   17
            Top             =   435
            Width           =   8130
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   1
            Left            =   1320
            Locked          =   -1  'True
            TabIndex        =   12
            Top             =   105
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "catcd"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   0
            Left            =   8160
            TabIndex        =   43
            Top             =   3480
            Width           =   540
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   93
            Left            =   6060
            Locked          =   -1  'True
            MaxLength       =   30
            TabIndex        =   32
            TabStop         =   0   'False
            Top             =   2070
            Width           =   4500
         End
         Begin VB.Label Label46 
            AutoSize        =   -1  'True
            Caption         =   "SPOT Passing Person"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3300
            TabIndex        =   130
            Top             =   2145
            Width           =   1575
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Vehicle No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   4
            Left            =   6240
            TabIndex        =   105
            Top             =   2085
            Visible         =   0   'False
            Width           =   825
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Delivery"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   11
            Left            =   240
            TabIndex        =   104
            Top             =   1815
            Width           =   570
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Rate / Unit"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   6240
            TabIndex        =   103
            Top             =   1770
            Width           =   795
         End
         Begin VB.Label Label5 
            Caption         =   "Press Mark No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Index           =   2
            Left            =   6240
            TabIndex        =   102
            Top             =   1455
            Width           =   1380
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "PR. No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   0
            Left            =   3315
            TabIndex        =   101
            Top             =   1485
            Width           =   570
         End
         Begin VB.Label Label28 
            AutoSize        =   -1  'True
            Caption         =   "Station"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   240
            TabIndex        =   100
            Top             =   1125
            Width           =   495
         End
         Begin VB.Label Label27 
            AutoSize        =   -1  'True
            Caption         =   "State"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   6240
            TabIndex        =   99
            Top             =   840
            Width           =   375
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Area"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   270
            TabIndex        =   98
            Top             =   810
            Width           =   330
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "Contract No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5640
            TabIndex        =   97
            Top             =   180
            Width           =   900
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Nett Weight"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   0
            Left            =   5040
            TabIndex        =   96
            Top             =   3480
            Width           =   855
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Gross Weight"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   95
            Top             =   3480
            Width           =   960
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Tare Weight"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   10
            Left            =   2640
            TabIndex        =   94
            Top             =   3480
            Width           =   885
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3315
            TabIndex        =   93
            Top             =   1815
            Width           =   585
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Pack Type"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   1
            Left            =   240
            TabIndex        =   92
            Top             =   2115
            Width           =   780
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Supplier Lot No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   1
            Left            =   8040
            TabIndex        =   88
            Top             =   180
            Width           =   1140
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Arrival Date"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   0
            Left            =   2880
            TabIndex        =   82
            Top             =   180
            Width           =   825
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Left            =   6240
            TabIndex        =   81
            Top             =   1155
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   1
            Left            =   7560
            TabIndex        =   80
            Top             =   3600
            Width           =   630
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Count"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Left            =   240
            TabIndex        =   79
            Top             =   1485
            Width           =   420
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   1
            Left            =   240
            TabIndex        =   78
            Top             =   495
            Width           =   570
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Mill Lot No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   0
            Left            =   240
            TabIndex        =   77
            Top             =   180
            Width           =   795
         End
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   4425
         Left            =   -74910
         TabIndex        =   42
         Top             =   3225
         Width           =   10755
         _ExtentX        =   18971
         _ExtentY        =   7805
         _Version        =   393216
         MousePointer    =   1
         Tabs            =   4
         Tab             =   2
         TabsPerRow      =   4
         TabHeight       =   529
         ShowFocusRect   =   0   'False
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         TabCaption(0)   =   "&Fibre Quality Param."
         TabPicture(0)   =   "RMIqualparamApp.frx":515C
         Tab(0).ControlEnabled=   0   'False
         Tab(0).Control(0)=   "Frame12"
         Tab(0).Control(1)=   "Frame5"
         Tab(0).ControlCount=   2
         TabCaption(1)   =   "&Yarn Quality Parameters"
         TabPicture(1)   =   "RMIqualparamApp.frx":5178
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame10"
         Tab(1).Control(1)=   "Frame13"
         Tab(1).Control(2)=   "Frame11"
         Tab(1).ControlCount=   3
         TabCaption(2)   =   "&Inspection Status"
         TabPicture(2)   =   "RMIqualparamApp.frx":5194
         Tab(2).ControlEnabled=   -1  'True
         Tab(2).Control(0)=   "Label31"
         Tab(2).Control(0).Enabled=   0   'False
         Tab(2).Control(1)=   "Label9"
         Tab(2).Control(1).Enabled=   0   'False
         Tab(2).Control(2)=   "TXTFIELDS(39)"
         Tab(2).Control(2).Enabled=   0   'False
         Tab(2).Control(3)=   "TXTFIELDS(8)"
         Tab(2).Control(3).Enabled=   0   'False
         Tab(2).Control(4)=   "TXTFIELDS(9)"
         Tab(2).Control(4).Enabled=   0   'False
         Tab(2).Control(5)=   "Frame7"
         Tab(2).Control(5).Enabled=   0   'False
         Tab(2).Control(6)=   "Frame3"
         Tab(2).Control(6).Enabled=   0   'False
         Tab(2).Control(7)=   "TXTFIELDS(31)"
         Tab(2).Control(7).Enabled=   0   'False
         Tab(2).Control(8)=   "Frame4"
         Tab(2).Control(8).Enabled=   0   'False
         Tab(2).ControlCount=   9
         TabCaption(3)   =   "&Bale Details"
         TabPicture(3)   =   "RMIqualparamApp.frx":51B0
         Tab(3).ControlEnabled=   0   'False
         Tab(3).Control(0)=   "Txtfrombaleno"
         Tab(3).Control(1)=   "TxtTobaleno"
         Tab(3).Control(1).Enabled=   0   'False
         Tab(3).Control(2)=   "Txttotalbale"
         Tab(3).Control(2).Enabled=   0   'False
         Tab(3).Control(3)=   "CmdReject"
         Tab(3).Control(4)=   "CmdReset"
         Tab(3).Control(5)=   "grid"
         Tab(3).Control(6)=   "Label34"
         Tab(3).Control(7)=   "Label40"
         Tab(3).Control(8)=   "Label43"
         Tab(3).ControlCount=   9
         Begin VB.Frame Frame5 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   4050
            Left            =   -74925
            TabIndex        =   275
            Top             =   315
            Width           =   10545
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "STAPLEN5"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   134
               Left            =   5490
               MaxLength       =   5
               TabIndex        =   69
               Top             =   2280
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "sci"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   62
               Left            =   5490
               MaxLength       =   7
               TabIndex        =   57
               Top             =   780
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "UNIRATIO"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0000;(0.0000)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   47
               Left            =   8880
               MaxLength       =   7
               TabIndex        =   59
               Top             =   120
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "SHORT_FIBRE"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   99
               Left            =   1905
               MaxLength       =   5
               TabIndex        =   67
               Top             =   3345
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00FFFFFF&
               DataField       =   "remarks"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   15
               Left            =   1905
               MaxLength       =   25
               TabIndex        =   75
               Top             =   3690
               Width           =   8295
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "FQI"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   61
               Left            =   5490
               MaxLength       =   7
               TabIndex        =   71
               Top             =   2970
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "rd"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   64
               Left            =   5490
               MaxLength       =   7
               TabIndex        =   58
               Top             =   1125
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
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
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   42
               Left            =   2040
               MaxLength       =   7
               TabIndex        =   52
               Top             =   780
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "ELG"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   66
               Left            =   2040
               MaxLength       =   7
               TabIndex        =   53
               Top             =   1125
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "bb"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   63
               Left            =   8880
               MaxLength       =   7
               TabIndex        =   62
               Top             =   1125
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "MICRONAIRE"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   13
               Left            =   5490
               MaxLength       =   5
               TabIndex        =   56
               Top             =   450
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "trash_per"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   16
               Left            =   2040
               MaxLength       =   7
               TabIndex        =   51
               Top             =   450
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "GTEX"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   54
               Left            =   8880
               MaxLength       =   5
               TabIndex        =   60
               Top             =   450
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "nepspergm"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   92
               Left            =   1905
               MaxLength       =   7
               TabIndex        =   63
               Top             =   1965
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "STAPLEN50"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   49
               Left            =   5490
               MaxLength       =   7
               TabIndex        =   55
               Top             =   120
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "STAPLEN"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0000;(0.0000)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   48
               Left            =   2040
               MaxLength       =   7
               TabIndex        =   50
               Top             =   120
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "SFI"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   65
               Left            =   8880
               MaxLength       =   7
               TabIndex        =   61
               Top             =   780
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "MCOEFF"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   43
               Left            =   2040
               MaxLength       =   7
               TabIndex        =   54
               Top             =   1470
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "sfcw"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   84
               Left            =   8880
               MaxLength       =   7
               TabIndex        =   72
               Top             =   1965
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "uqlw"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   85
               Left            =   1905
               MaxLength       =   7
               TabIndex        =   64
               Top             =   2295
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "ifc"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   90
               Left            =   1905
               MaxLength       =   7
               TabIndex        =   65
               Top             =   2655
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "uhml"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   94
               Left            =   8880
               MaxLength       =   7
               TabIndex        =   73
               Top             =   2310
               Visible         =   0   'False
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "ML"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   95
               Left            =   5490
               MaxLength       =   5
               TabIndex        =   277
               Top             =   3330
               Visible         =   0   'False
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "UI"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   285
               Index           =   96
               Left            =   1905
               MaxLength       =   7
               TabIndex        =   276
               Top             =   3360
               Visible         =   0   'False
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "nepcv"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   97
               Left            =   8880
               MaxLength       =   7
               TabIndex        =   74
               Top             =   2670
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "scncv"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   98
               Left            =   1905
               MaxLength       =   6
               TabIndex        =   66
               Top             =   3000
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "MCOEFF1"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   154
               Left            =   5490
               MaxLength       =   7
               TabIndex        =   70
               Top             =   2640
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "SCNeps_g"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   300
               Index           =   72
               Left            =   5490
               MaxLength       =   7
               TabIndex        =   68
               Top             =   1965
               Width           =   1300
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "5% Span Length"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   54
               Left            =   3360
               TabIndex        =   305
               Top             =   2323
               Width           =   1170
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "S.C.I."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   4
               Left            =   3405
               TabIndex        =   304
               Top             =   833
               Width           =   390
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "Uniformity  Ratio (UI)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   0
               Left            =   7020
               TabIndex        =   303
               Top             =   165
               Width           =   1455
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Short Fibre"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   35
               Left            =   105
               TabIndex        =   302
               Top             =   3388
               Width           =   765
            End
            Begin VB.Label Label41 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Strength (G.Tex)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   7020
               TabIndex        =   301
               Top             =   503
               Width           =   1170
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "50 % Span Length (MM) (ML)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   3
               Left            =   3405
               TabIndex        =   300
               Top             =   120
               Width           =   2070
            End
            Begin VB.Label Label37 
               Caption         =   "2.5 % Span Length(MM) (UHML)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   465
               Left            =   120
               TabIndex        =   299
               Top             =   120
               Width           =   1935
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Trash %"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   1
               Left            =   120
               TabIndex        =   298
               Top             =   600
               Width           =   570
            End
            Begin VB.Label Label33 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Remarks"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Left            =   105
               TabIndex        =   297
               Top             =   3733
               Width           =   630
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "RD"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   6
               Left            =   3405
               TabIndex        =   296
               Top             =   1178
               Width           =   240
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Micronaire (µ/gram)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   7
               Left            =   3405
               TabIndex        =   295
               Top             =   503
               Width           =   1380
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "F.Q.I."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   3
               Left            =   3360
               TabIndex        =   294
               Top             =   3090
               Width           =   390
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Neps/Gm"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   31
               Left            =   105
               TabIndex        =   293
               Top             =   2008
               Width           =   690
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Moisture Content"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   2
               Left            =   120
               TabIndex        =   292
               Top             =   855
               Width           =   1200
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Elongation"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   8
               Left            =   120
               TabIndex        =   291
               Top             =   1200
               Width           =   750
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "S.F.I."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   7
               Left            =   7020
               TabIndex        =   290
               Top             =   833
               Width           =   375
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "+b"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   5
               Left            =   7020
               TabIndex        =   289
               Top             =   1178
               Width           =   180
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "SCN/GM"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   14
               Left            =   3360
               TabIndex        =   288
               Top             =   2008
               Width           =   660
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "SFC(W)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   23
               Left            =   7020
               TabIndex        =   287
               Top             =   2055
               Width           =   555
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "UQL(W)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   24
               Left            =   105
               TabIndex        =   286
               Top             =   2338
               Width           =   585
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "IFC"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   29
               Left            =   105
               TabIndex        =   285
               Top             =   2698
               Width           =   240
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "UHML"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   2
               Left            =   7020
               TabIndex        =   284
               Top             =   2415
               Visible         =   0   'False
               Width           =   465
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "ML"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   30
               Left            =   3360
               TabIndex        =   283
               Top             =   3405
               Visible         =   0   'False
               Width           =   225
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "UI"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   32
               Left            =   120
               TabIndex        =   282
               Top             =   3405
               Visible         =   0   'False
               Width           =   165
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Nep CV"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   33
               Left            =   7020
               TabIndex        =   281
               Top             =   2745
               Width           =   555
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "SCN CV"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   34
               Left            =   105
               TabIndex        =   280
               Top             =   3043
               Width           =   585
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "Maturity Coefficient % (MR)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   195
               Index           =   4
               Left            =   3360
               TabIndex        =   279
               Top             =   2760
               Width           =   1905
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "Maturity Coefficient % (MR)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   195
               Index           =   6
               Left            =   120
               TabIndex        =   278
               Top             =   1470
               Width           =   1905
            End
            Begin VB.Line Line2 
               X1              =   30
               X2              =   10530
               Y1              =   1890
               Y2              =   1890
            End
         End
         Begin VB.Frame Frame11 
            Caption         =   "Mix Count  Details"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   1935
            Left            =   -74910
            TabIndex        =   179
            Top             =   630
            Width           =   8385
            Begin VB.OptionButton Option4 
               Caption         =   "Hold"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   240
               Left            =   3765
               TabIndex        =   182
               Top             =   1155
               Width           =   975
            End
            Begin VB.OptionButton Option3 
               Caption         =   "Yes"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   240
               Left            =   2595
               TabIndex        =   181
               Top             =   1140
               Value           =   -1  'True
               Width           =   660
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00FFFFFF&
               DataField       =   "Allmixcount"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Height          =   360
               Index           =   78
               Left            =   2580
               MaxLength       =   5
               TabIndex        =   33
               Top             =   600
               Width           =   1575
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "recmixcount"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Height          =   360
               Index           =   79
               Left            =   6075
               MaxLength       =   12
               TabIndex        =   34
               Top             =   1395
               Visible         =   0   'False
               Width           =   2085
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00E0E0E0&
               DataField       =   " "
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   360
               Index           =   80
               Left            =   4230
               TabIndex        =   180
               Top             =   600
               Width           =   4050
            End
            Begin VB.Label Label47 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Allocated Mix Count"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   135
               TabIndex        =   185
               Top             =   615
               Width           =   1410
            End
            Begin VB.Label Label45 
               AutoSize        =   -1  'True
               Caption         =   "Can be Issued"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   135
               TabIndex        =   184
               Top             =   1125
               Width           =   1020
            End
            Begin VB.Label Label44 
               AutoSize        =   -1  'True
               Caption         =   "Recommended Mix Count"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   3615
               TabIndex        =   183
               Top             =   1410
               Visible         =   0   'False
               Width           =   1830
            End
         End
         Begin VB.Frame Frame13 
            Caption         =   "Inspection Status"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   1935
            Left            =   -66390
            TabIndex        =   176
            Top             =   645
            Visible         =   0   'False
            Width           =   1905
            Begin VB.Label lblAcceptance 
               Caption         =   "Aceepted Bales"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FF0000&
               Height          =   345
               Left            =   180
               TabIndex        =   178
               Top             =   660
               Visible         =   0   'False
               Width           =   3150
            End
            Begin VB.Label lblRejected 
               Caption         =   "Rejected Bales"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000FF&
               Height          =   315
               Left            =   195
               TabIndex        =   177
               Top             =   1170
               Visible         =   0   'False
               Width           =   3150
            End
         End
         Begin VB.TextBox Txtfrombaleno 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   375
            Left            =   -73380
            TabIndex        =   37
            Top             =   570
            Width           =   1410
         End
         Begin VB.TextBox TxtTobaleno 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   375
            Left            =   -73380
            TabIndex        =   38
            TabStop         =   0   'False
            Top             =   1275
            Width           =   1395
         End
         Begin VB.TextBox Txttotalbale 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   375
            Left            =   -73440
            Locked          =   -1  'True
            TabIndex        =   220
            TabStop         =   0   'False
            Top             =   2730
            Width           =   1455
         End
         Begin VB.CommandButton CmdReject 
            BackColor       =   &H00C0FFC0&
            Caption         =   "Re&ject"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   -74775
            Style           =   1  'Graphical
            TabIndex        =   39
            Top             =   2010
            Width           =   1095
         End
         Begin VB.CommandButton CmdReset 
            BackColor       =   &H00C0FFC0&
            Caption         =   "Re&set"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   -73200
            Style           =   1  'Graphical
            TabIndex        =   40
            Top             =   2010
            Width           =   1215
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
            Height          =   495
            Left            =   1215
            TabIndex        =   212
            Top             =   360
            Visible         =   0   'False
            Width           =   1695
            Begin VB.OptionButton Option2 
               Caption         =   "No"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   930
               TabIndex        =   214
               Top             =   210
               Width           =   615
            End
            Begin VB.OptionButton Option1 
               Caption         =   "Yes"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   150
               TabIndex        =   213
               Top             =   210
               Value           =   -1  'True
               Width           =   615
            End
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            DataField       =   "quantity"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   31
            Left            =   7200
            MaxLength       =   12
            TabIndex        =   211
            Top             =   435
            Width           =   3225
         End
         Begin VB.Frame Frame3 
            Caption         =   " Accepted "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   2415
            Left            =   2235
            TabIndex        =   205
            Top             =   1125
            Width           =   2970
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "ratecy"
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   360
               Index           =   27
               Left            =   1365
               Locked          =   -1  'True
               MaxLength       =   10
               TabIndex        =   206
               Top             =   1080
               Width           =   1440
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "accqty"
               ForeColor       =   &H00000000&
               Height          =   360
               Index           =   22
               Left            =   1395
               MaxLength       =   5
               TabIndex        =   35
               Top             =   630
               Width           =   1425
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "passdt"
               Height          =   330
               Index           =   1
               Left            =   1365
               TabIndex        =   207
               Top             =   1560
               Visible         =   0   'False
               Width           =   1440
               _ExtentX        =   2540
               _ExtentY        =   582
               _Version        =   393216
               BackColor       =   255
               ForeColor       =   0
               Enabled         =   0   'False
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
            Begin VB.Label Label14 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Date"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   0
               Left            =   60
               TabIndex        =   210
               Top             =   1650
               Visible         =   0   'False
               Width           =   345
            End
            Begin VB.Label Label20 
               AutoSize        =   -1  'True
               Caption         =   "Contract Rate/Kg"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   45
               TabIndex        =   209
               Top             =   1185
               Width           =   1260
            End
            Begin VB.Label Label10 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Bales/Borah"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   45
               TabIndex        =   208
               Top             =   705
               Width           =   915
            End
         End
         Begin VB.Frame Frame7 
            Caption         =   "     Rejected           "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   2415
            Left            =   5295
            TabIndex        =   203
            Top             =   1020
            Width           =   1650
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "rejqty"
               ForeColor       =   &H00000000&
               Height          =   405
               Index           =   23
               Left            =   90
               MaxLength       =   5
               TabIndex        =   36
               Top             =   1155
               Width           =   1455
            End
            Begin VB.Label Label30 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Bales/Borah"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   420
               TabIndex        =   204
               Top             =   675
               Width           =   885
            End
         End
         Begin VB.Frame Frame10 
            Height          =   1650
            Left            =   -74940
            TabIndex        =   186
            Top             =   330
            Visible         =   0   'False
            Width           =   10425
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "csp"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0;(0)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   18
               Left            =   8985
               MaxLength       =   7
               TabIndex        =   194
               Top             =   217
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
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
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   12
               Left            =   2040
               MaxLength       =   7
               TabIndex        =   193
               Top             =   585
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
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
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   10
               Left            =   9000
               MaxLength       =   25
               TabIndex        =   192
               Top             =   600
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00FFFFFF&
               DataField       =   "COLOR"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   55
               Left            =   2040
               MaxLength       =   7
               TabIndex        =   191
               Top             =   960
               Visible         =   0   'False
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
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
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   51
               Left            =   5490
               MaxLength       =   7
               TabIndex        =   190
               Top             =   990
               Visible         =   0   'False
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               BackColor       =   &H00FFFFFF&
               DataField       =   "yarnapp"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   45
               Left            =   5490
               MaxLength       =   25
               TabIndex        =   189
               Top             =   600
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
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
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   11
               Left            =   5490
               MaxLength       =   7
               TabIndex        =   188
               Top             =   210
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
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
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   46
               Left            =   2040
               MaxLength       =   7
               ScrollBars      =   2  'Vertical
               TabIndex        =   187
               Top             =   210
               Width           =   1300
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "C.S.P."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   1
               Left            =   7245
               TabIndex        =   202
               Top             =   285
               Width           =   450
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "T.P.I."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   2
               Left            =   255
               TabIndex        =   201
               Top             =   705
               Width           =   390
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Corrected Strength"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   4
               Left            =   7215
               TabIndex        =   200
               Top             =   645
               Width           =   1335
            End
            Begin VB.Label Label42 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Colour"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   255
               TabIndex        =   199
               Top             =   1080
               Visible         =   0   'False
               Width           =   450
            End
            Begin VB.Label Label39 
               AutoSize        =   -1  'True
               Caption         =   "Yellow Touch"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   3660
               TabIndex        =   198
               Top             =   1065
               Visible         =   0   'False
               Width           =   975
            End
            Begin VB.Label Label35 
               AutoSize        =   -1  'True
               Caption         =   "Yarn Appearance"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   3675
               TabIndex        =   197
               Top             =   660
               Width           =   1245
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Yarn Strength"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   3
               Left            =   3675
               TabIndex        =   196
               Top             =   270
               Width           =   975
            End
            Begin VB.Label Label36 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Count"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   285
               TabIndex        =   195
               Top             =   285
               Width           =   420
            End
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "passbl"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   9
            Left            =   4890
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   217
            Top             =   1545
            Visible         =   0   'False
            Width           =   1455
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "passbl"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   8
            Left            =   3570
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   218
            Top             =   1935
            Visible         =   0   'False
            Width           =   1065
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "passbl"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   39
            Left            =   3900
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   219
            Top             =   2055
            Visible         =   0   'False
            Width           =   1455
         End
         Begin MSDataGridLib.DataGrid grid 
            Height          =   3255
            Left            =   -71460
            TabIndex        =   221
            Top             =   435
            Width           =   7080
            _ExtentX        =   12488
            _ExtentY        =   5741
            _Version        =   393216
            AllowUpdate     =   -1  'True
            AllowArrows     =   -1  'True
            BackColor       =   16777215
            ForeColor       =   0
            HeadLines       =   1
            RowHeight       =   19
            TabAction       =   1
            BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
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
         Begin VB.Frame Frame12 
            Height          =   3225
            Left            =   -74880
            TabIndex        =   131
            Top             =   345
            Width           =   10455
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "nepsize"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   81
               Left            =   1530
               MaxLength       =   7
               TabIndex        =   153
               Top             =   195
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "scnsize"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   82
               Left            =   5010
               MaxLength       =   7
               TabIndex        =   152
               Top             =   195
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "lw"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   83
               Left            =   5010
               MaxLength       =   7
               TabIndex        =   151
               Top             =   570
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "ln"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   86
               Left            =   5010
               MaxLength       =   7
               TabIndex        =   150
               Top             =   960
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "sfcn"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   87
               Left            =   8835
               MaxLength       =   7
               TabIndex        =   149
               Top             =   585
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "fiveper"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   88
               Left            =   1530
               MaxLength       =   5
               TabIndex        =   148
               Top             =   555
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "fine"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   89
               Left            =   5025
               MaxLength       =   7
               TabIndex        =   147
               Top             =   1335
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "TotSCNeps_g"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   74
               Left            =   8835
               MaxLength       =   7
               TabIndex        =   146
               Top             =   930
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "AVGSCNeps_Micm"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   75
               Left            =   5025
               MaxLength       =   7
               TabIndex        =   145
               Top             =   1695
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "GRADE"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   53
               Left            =   8835
               MaxLength       =   7
               TabIndex        =   144
               Top             =   225
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "TRArea"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   68
               Left            =   8835
               MaxLength       =   7
               TabIndex        =   143
               Top             =   1305
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "LINT"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   70
               Left            =   1530
               MaxLength       =   7
               TabIndex        =   142
               Top             =   1260
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "IVC"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   71
               Left            =   8835
               MaxLength       =   7
               TabIndex        =   141
               Top             =   1650
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "risi"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00;(0.00)"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   77
               Left            =   4995
               MaxLength       =   7
               TabIndex        =   140
               Top             =   2730
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   " "
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   52
               Left            =   8835
               MaxLength       =   7
               TabIndex        =   139
               Top             =   1980
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "TRCNT"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   67
               Left            =   5010
               MaxLength       =   7
               TabIndex        =   138
               Top             =   2385
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "TRGrade"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   69
               Left            =   1530
               MaxLength       =   7
               TabIndex        =   137
               Top             =   1965
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "EXNoils"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   76
               Left            =   1530
               MaxLength       =   7
               TabIndex        =   136
               Top             =   2325
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "STAPHANDTEST"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   59
               Left            =   8835
               MaxLength       =   7
               TabIndex        =   135
               Top             =   2340
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
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
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   50
               Left            =   1530
               MaxLength       =   7
               TabIndex        =   134
               Top             =   1635
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   " "
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   44
               Left            =   5010
               MaxLength       =   7
               TabIndex        =   133
               Top             =   2055
               Width           =   1300
            End
            Begin VB.TextBox TXTFIELDS 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "SCNeps_Micm"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   73
               Left            =   1530
               MaxLength       =   7
               TabIndex        =   132
               Top             =   915
               Width           =   1300
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "SCN Size"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   21
               Left            =   3450
               TabIndex        =   175
               Top             =   300
               Width           =   675
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "L(W)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   22
               Left            =   3450
               TabIndex        =   174
               Top             =   675
               Width           =   345
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "L(n)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   25
               Left            =   3450
               TabIndex        =   173
               Top             =   1065
               Width           =   270
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "SFC(n)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   26
               Left            =   6975
               TabIndex        =   172
               Top             =   690
               Width           =   480
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Fine"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   28
               Left            =   3450
               TabIndex        =   171
               Top             =   1440
               Width           =   300
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Avg. SC neps/Mic.n"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   17
               Left            =   3435
               TabIndex        =   170
               Top             =   1710
               Width           =   1440
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Total SC neps/g"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   16
               Left            =   6975
               TabIndex        =   169
               Top             =   975
               Width           =   1170
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "CG"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   19
               Left            =   6975
               TabIndex        =   168
               Top             =   255
               Width           =   225
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "TR Area"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   10
               Left            =   6975
               TabIndex        =   167
               Top             =   1350
               Width           =   600
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Invisible Loss"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   13
               Left            =   6975
               TabIndex        =   166
               Top             =   1680
               Width           =   945
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "Mature"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   195
               Index           =   7
               Left            =   6975
               TabIndex        =   165
               Top             =   2010
               Width           =   495
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "Half Mature"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000006&
               Height          =   195
               Index           =   8
               Left            =   3435
               TabIndex        =   164
               Top             =   2085
               Width           =   825
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Staple Length (Hand)"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   1
               Left            =   6975
               TabIndex        =   163
               Top             =   2385
               Width           =   1515
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Ri. Si."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   4
               Left            =   3435
               TabIndex        =   162
               Top             =   2760
               Width           =   420
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "TR CNT"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   9
               Left            =   3435
               TabIndex        =   161
               Top             =   2430
               Width           =   600
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Nep Size"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   20
               Left            =   330
               TabIndex        =   160
               Top             =   300
               Width           =   645
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "5%"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   27
               Left            =   330
               TabIndex        =   159
               Top             =   660
               Width           =   210
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "LINT"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   12
               Left            =   330
               TabIndex        =   158
               Top             =   1320
               Width           =   360
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "ExNoils"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   18
               Left            =   300
               TabIndex        =   157
               Top             =   2370
               Width           =   525
            End
            Begin VB.Label Label38 
               AutoSize        =   -1  'True
               Caption         =   "Immature"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   330
               TabIndex        =   156
               Top             =   1665
               Width           =   645
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "TR Grade"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   11
               Left            =   330
               TabIndex        =   155
               Top             =   2010
               Width           =   705
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "SCN/Mic.m"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   15
               Left            =   330
               TabIndex        =   154
               Top             =   960
               Width           =   825
            End
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "From Bale No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   195
            Left            =   -74760
            TabIndex        =   224
            Top             =   660
            Width           =   1005
         End
         Begin VB.Label Label40 
            Caption         =   "To Bale No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   -74760
            TabIndex        =   223
            Top             =   1350
            Width           =   975
         End
         Begin VB.Label Label43 
            Caption         =   "Total Bales"
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
            Left            =   -74760
            TabIndex        =   222
            Top             =   2790
            Width           =   1095
         End
         Begin VB.Label Label9 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "In Godown"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   255
            TabIndex        =   216
            Top             =   510
            Visible         =   0   'False
            Width           =   780
         End
         Begin VB.Label Label31 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Lot Status"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   6360
            TabIndex        =   215
            Top             =   510
            Width           =   720
         End
      End
      Begin VB.Frame Frame6 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3180
         Left            =   -73140
         TabIndex        =   83
         Top             =   2160
         Visible         =   0   'False
         Width           =   7380
         Begin VB.CommandButton Command3 
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
            Height          =   390
            Left            =   2715
            TabIndex        =   85
            Top             =   2700
            Width           =   975
         End
         Begin VB.CommandButton Command4 
            Caption         =   "&Cancel"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   3780
            TabIndex        =   84
            Top             =   2700
            Width           =   975
         End
         Begin MSDataGridLib.DataGrid DataGrid1 
            Height          =   2100
            Left            =   120
            TabIndex        =   86
            Top             =   480
            Visible         =   0   'False
            Width           =   7170
            _ExtentX        =   12647
            _ExtentY        =   3704
            _Version        =   393216
            AllowUpdate     =   -1  'True
            ForeColor       =   8388608
            HeadLines       =   2
            RowHeight       =   15
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
                  Type            =   1
                  Format          =   "dd/MM/yyyy"
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
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Select A Lot Number"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   195
            Left            =   3225
            TabIndex        =   87
            Top             =   120
            Width           =   1470
         End
      End
   End
   Begin VB.Frame Frame8 
      Caption         =   "Accepted With Allowance  "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   2535
      Left            =   2385
      TabIndex        =   106
      Top             =   3135
      Visible         =   0   'False
      Width           =   2895
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "accallowqty"
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
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Index           =   24
         Left            =   1320
         Locked          =   -1  'True
         MaxLength       =   5
         TabIndex        =   112
         Top             =   300
         Width           =   1455
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "ACCALLOWRTPERcy"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   25
         Left            =   1320
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   111
         Top             =   1752
         Width           =   1455
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "ACCALLOWRTPERKG"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   26
         Left            =   1320
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   110
         Top             =   2100
         Width           =   1455
      End
      Begin VB.ComboBox Combo1 
         BackColor       =   &H00FFFFC0&
         Height          =   360
         ItemData        =   "RMIqualparamApp.frx":51CC
         Left            =   1320
         List            =   "RMIqualparamApp.frx":51D6
         TabIndex        =   109
         Top             =   2520
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "passbl"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   56
         Left            =   1320
         Locked          =   -1  'True
         MaxLength       =   5
         TabIndex        =   108
         Top             =   1404
         Width           =   1455
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "netwt"
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
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Index           =   58
         Left            =   1320
         MaxLength       =   12
         TabIndex        =   107
         Top             =   1026
         Width           =   1455
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "passdt"
         Height          =   330
         Index           =   2
         Left            =   1320
         TabIndex        =   113
         Top             =   678
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   582
         _Version        =   393216
         BackColor       =   16777215
         Enabled         =   0   'False
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
      Begin VB.Label Label22 
         AutoSize        =   -1  'True
         Caption         =   "Allowance"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   120
         TabIndex        =   120
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         Caption         =   "Bales/Borah"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   120
         TabIndex        =   119
         Top             =   360
         Width           =   885
      End
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         Caption         =   "Rate/Cy"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   120
         TabIndex        =   118
         Top             =   1800
         Width           =   600
      End
      Begin VB.Label Label17 
         AutoSize        =   -1  'True
         Caption         =   "Rate/Kg"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   120
         TabIndex        =   117
         Top             =   2160
         Width           =   615
      End
      Begin VB.Label Label19 
         Caption         =   "Allowance Wt"
         Height          =   255
         Left            =   120
         TabIndex        =   116
         Top             =   2520
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   3
         Left            =   120
         TabIndex        =   115
         Top             =   720
         Width           =   345
      End
      Begin VB.Label Label32 
         AutoSize        =   -1  'True
         Caption         =   "Net Weight"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   120
         TabIndex        =   114
         Top             =   1080
         Width           =   810
      End
   End
   Begin VB.Frame Frame9 
      Caption         =   "                   Return                     "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   2535
      Left            =   5325
      TabIndex        =   121
      Top             =   3180
      Width           =   2775
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "returnqty"
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
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   29
         Left            =   1320
         MaxLength       =   5
         TabIndex        =   124
         Top             =   720
         Width           =   1305
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "ratekg"
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
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   30
         Left            =   1320
         Locked          =   -1  'True
         MaxLength       =   12
         TabIndex        =   123
         Top             =   1440
         Width           =   1305
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "netwt"
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
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   57
         Left            =   1320
         MaxLength       =   12
         TabIndex        =   122
         Top             =   1080
         Width           =   1305
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "returndate"
         Height          =   330
         Index           =   0
         Left            =   1320
         TabIndex        =   125
         Top             =   360
         Width           =   1320
         _ExtentX        =   2328
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
      Begin VB.Label Label23 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Bales/Borah"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   330
         TabIndex        =   129
         Top             =   788
         Width           =   885
      End
      Begin VB.Label Label25 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   330
         TabIndex        =   128
         Top             =   428
         Width           =   345
      End
      Begin VB.Label Label18 
         AutoSize        =   -1  'True
         Caption         =   "Rate/Kg"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   330
         TabIndex        =   127
         Top             =   1508
         Width           =   615
      End
      Begin VB.Label Label24 
         AutoSize        =   -1  'True
         Caption         =   "Net Weight"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   330
         TabIndex        =   126
         Top             =   1148
         Width           =   810
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Inspection & Quality Parameter Approval "
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
      Left            =   405
      TabIndex        =   44
      Top             =   555
      UseMnemonic     =   0   'False
      Width           =   5445
   End
End
Attribute VB_Name = "FrmQualparamApp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents adoGridRS As Recordset
Attribute adoGridRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim adoPrimaryRS1 As Recordset
Dim adoPrimaryRS2 As Recordset
Dim DB As Connection
Dim Opt As String
Dim deltype As String
Dim RW As Double
Dim FLGREPET As Boolean
Dim a As Integer
Dim dblAcceptance As Double
Dim dblRejection As Double
Dim GRP As String
Dim rpt As String
Dim Fnd As String
Dim oldsecno As Integer
Dim oldsecval  As Double
Dim st1 As String, st2 As String
Dim ITARY() As String
Dim Rs As Recordset
Dim taxc As String
Dim tax As Double, EXC As Double, SED As Double, sur As Double, dis As Double, modvat As Double
Dim tempdb As Connection
Dim OLDREJQTY As Integer
Dim TmpRs As Recordset
Dim Qualityparamchk As Boolean


Private Sub BUTTON_Click(Index As Integer)
On Error Resume Next
intervalMinutes = -1
Select Case Index
Case 4
    Screen.MousePointer = 11
    Call CottonPassingReport_PrePrint(val(Txtfields(1).Text), Trim(Txtfields(5).Text), getMasterName("Varcode", "RM_VAR", "varname", Trim(Txtfields(3).Text)))
    Screen.MousePointer = 0
Case 0
'If ToValidFinYear = False Then Exit Sub

    Opt = "add"
    desc.Caption = "Addition"
    Screen.MousePointer = 11
    Frame6.Visible = True
    Frame5.Visible = False
    Frame1.Visible = False
    SSTab2.Visible = False
    
    Option3.value = True
    
    Call ClearControls
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT Lotno,Plotno, lotdt FROM rm_lot WHERE lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'AND ins_flg='Y' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "' AND (isnull(netwt,0) - isnull(isswt,0)) >0 and ins_flg is null Order by Lotdt,lotno", DB, adOpenStatic
    Call query_mode
    Txtfields(61).Locked = False
    SSTab1.Tab = 0
    BUTTON(1).Enabled = True
    BUTTON(3).Enabled = True
    BUTTON(4).Enabled = True
    BUTTON(5).Enabled = True
    BUTTON(6).Enabled = True
    BUTTON(7).Enabled = True
    BUTTON(8).Enabled = True
    BUTTON(9).Enabled = False
    Screen.MousePointer = 0
Case 1
'If ToValidFinYear = False Then Exit Sub

    Set adoPrimaryRS = New Recordset
'    DB.BeginTrans
    desc.Caption = "Modification"
    If QualParaMod = False Then
        adoPrimaryRS.Open "SELECT * FROM rm_lot WHERE isnull(Fappflg,'N') ='N' and  lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'AND ins_flg='Y' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "' AND (isnull(netwt,0) - isnull(isswt,0)) >0 Order by Lotdt,lotno", DB, adOpenStatic
    ElseIf QualParaMod = True Then
        adoPrimaryRS.Open "SELECT * FROM rm_lot WHERE isnull(Fappflg,'N') ='N' and  lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'AND ins_flg='Y' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "' Order by Lotdt,lotno", DB, adOpenStatic
    End If
    StatusBar1.Panels(2).Text = "Select a Lot Number from the List for Modification"
    If adoPrimaryRS.RecordCount = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    LookUp.Clear = True
    If QualParaMod = False Then
        LookUp.query = "select LOTNO""Lot No."",LOTDT""Lot Date"",plotno""Supplier Lot No."" From rm_lot WHERE  isnull(Fappflg,'N') ='N' and   ins_flg='Y' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "' AND (isnull(bales,0) - isnull(ISSbal,0)) >0 And (ISNULL(ISSWT,0)+ISNULL(adjwt,0)) = 0 "
    ElseIf QualParaMod = True Then
        LookUp.query = "select LOTNO""Lot No."",LOTDT""Lot Date"",plotno""Supplier Lot No."" From rm_lot WHERE isnull(Fappflg,'N') ='N' and     ins_flg='Y' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'"
    End If
    LookUp.Caption = "Lot No. Listing"
    LookUp.DefCol = "Lot No."
    LookUp.ALIGN = "2500,2500,2500"
    LookUp.Show vbModal
            
    If LookUp.Cancel = False Then
        SSTab2.TabVisible(1) = True
        SSTab2.TabVisible(2) = True
        SSTab2.TabVisible(3) = True
        Call ClearControls
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT * FROM rm_lot a WHERE a.ins_flg='Y' AND a.LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE='" & Divcode & "' AND a.Lotno = " & val(LookUp.Fields(0)) & " AND a.lotdt = '" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "'", DB, adOpenStatic
         BUTTON(0).Enabled = False
         BUTTON(1).Enabled = False
         BUTTON(3).Enabled = False
         BUTTON(2).Enabled = False
         BUTTON(5).Enabled = False
         BUTTON(6).Enabled = False
         BUTTON(7).Enabled = False
         BUTTON(8).Enabled = False
         BUTTON(9).Enabled = True
         BUTTON(10).Enabled = True
         BUTTON(11).Enabled = True
         'Exit Sub

    End If

         Opt = "mod"
         Screen.MousePointer = 11
         desc.Caption = "Modification"
'         'Call clearval
         Call query_mode
         Call fn_mod1
         BUTTON(1).Enabled = False
         BUTTON(3).Enabled = False
         BUTTON(2).Enabled = False
         BUTTON(5).Enabled = False
         BUTTON(6).Enabled = False
         BUTTON(7).Enabled = False
         BUTTON(8).Enabled = False
         BUTTON(9).Enabled = True
         BUTTON(10).Enabled = True
'         For I = 9 To 10
'          TXTFIELDS(I).Locked = False
'         Next
         Screen.MousePointer = 0
         Txtfields(22).Locked = False
         Txtfields(23).Locked = False
         Txtfields(24).Locked = False
         Txtfields(22).Enabled = True
         MaskEdBox1(1).Enabled = True
         desc.Caption = "Modification"
         Label15.Caption = Label15.Caption + Trim(Txtfields(37).Text)
         'txtfields(22).SetFocus
         'txtFields(46).SetFocus
         If Opt = "add" Then
            DataGrid1.Col = 0
            DataGrid1.SetFocus
         End If
         Txtfields(61).Locked = False
        'Listing
        'Command3.SetFocus
Case 2
'If ToValidFinYear = False Then Exit Sub

'Deletion
    Opt = "del"
    desc.Caption = "Deletion"
    SSTab2.TabVisible(2) = False
    SSTab2.TabVisible(3) = False
    'BUTTON(4).Enabled = False
    Call delmodok_Click
    Call adddelmod(BUTTON)
    StatusBar1.Panels(2).Text = ""
    BUTTON(0).Enabled = True
    BUTTON(1).Enabled = True
    BUTTON(2).Enabled = True
    BUTTON(3).Enabled = True
    BUTTON(4).Enabled = True
    BUTTON(5).Enabled = True
    BUTTON(6).Enabled = True
    BUTTON(7).Enabled = True
    BUTTON(8).Enabled = True
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    BUTTON(11).Enabled = True

    BUTTON(11).Enabled = True
Case 3
'        Dim f As repform1
'        Screen.MousePointer = 11
'        REPINDEX = 500
'        repform1.Show
'        Screen.MousePointer = 0
        
Case 5
'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
         
        SSTab2.TabVisible(2) = False
        SSTab2.TabVisible(3) = False
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT * FROM rm_lot a WHERE a.lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'AND a.ins_flg='Y' AND a.LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE='" & Divcode & "' Order by a.Lotdt,a.Lotno", DB, adOpenStatic

        If adoPrimaryRS.RecordCount <> 0 Then
        adoPrimaryRS.MoveFirst
        StatusBar1.Panels(2).Text = "First Record"
'        Call bindcontls
        Call FIR(BUTTON)
        End If

        Beep
        Exit Sub
GoFirstError:
        If Err.Number = 3021 Then
            MsgBox "First Record", vbInformation, head
            Exit Sub
        End If
        
       MsgBox Err.Description, vbInformation, head
       
            
Case 6
'next
    desc.Caption = "Query"
    On Error Resume Next
    
    SSTab2.TabVisible(2) = False
    SSTab2.TabVisible(3) = False
    
    If Not adoPrimaryRS.EOF Then
'        Call bindcontls
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
        Beep
    End If
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
 'previous
        desc.Caption = "Query"
        On Error Resume Next
        
        desc.Caption = "Query"
        On Error GoTo GoPrevError
    
        SSTab2.TabVisible(2) = False
        SSTab2.TabVisible(3) = False
    
    
    If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        
        If adoPrimaryRS.BOF Then
            StatusBar1.Panels(2).Text = "First Record"
        End If
'            Call bindcontls
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
        
        SSTab2.TabVisible(2) = False
        SSTab2.TabVisible(3) = False
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT * FROM rm_lot a WHERE a.lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'AND a.ins_flg='Y' AND a.LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE='" & Divcode & "' Order by a.Lotdt,a.Lotno", DB, adOpenStatic
        If adoPrimaryRS.RecordCount <> 0 Then
        adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
'        Call bindcontls
        'calling las procedure from module
'        Call navi(BUTTON)
        Call las(BUTTON)
        End If
        Beep
        Exit Sub
GoLastError:
       If Err.Number = 3021 Then
        MsgBox "Last Record", vbInformation, head
        Exit Sub
       End If
       MsgBox Err.Description, vbInformation, head
    
'
Case 9
        'Save
        DB.BeginTrans
        Screen.MousePointer = 11
        desc.Caption = "Query"       '   After this mode QUERY WILL BE INVOKED
        
        
        
        
        If Opt = "mod" Then
                If ChkApp.value Then
                    Set rs5 = New Recordset
                    rs5.Open "select isnull(iqa,'Y') as iqa from rm_param ", DB, adOpenStatic, adLockReadOnly
                    If Not Rs.EOF Then
                        If rs5!iqa = "Y" Then
                        Set getd = New Recordset
                            getd.Open "Select getdate() as GETDATE ", DB, adOpenStatic, adLockBatchOptimistic
                                'MODDATE ='" & Format(getd("Getdate"), "yyyy-MM-dd HH:mm") & "'"
                        
                                strSQL = ""
                                strSQL = "update rm_Lot set Fappflg = 'Y', FADDUSERNAME   ='" & UserName & "', FADDDATE   ='" & Format(getd("Getdate"), "yyyy-MM-dd HH:mm") & "'" & _
                                     " where  LOTNO=" & adoPrimaryRS("LOTNO") & " AND arrno=" & adoPrimaryRS("arrno") & " " & _
                                    " and arrdt='" & Format(adoPrimaryRS("ARRDT"), "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'"
                                DB.Execute strSQL
                         End If
                    End If
                End If
        End If
        DB.CommitTrans
                   Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Inspection Approval"
                    TrnLog("Trans_Mod") = Opt
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("ReqName") = Trim(Combo1.Text)
                    TrnLog("docno") = Trim(Txtfields(1).Text)
                    TrnLog("docdt") = Format(adoPrimaryRS("LotDt"), "YYYY-mm-DD")
                    TrnLog("lotno") = Trim(Txtfields(1).Text)
                    TrnLog("lotdt") = Format(adoPrimaryRS("LotDt"), "YYYY-mm-DD")
                  
                    TrnLog("varcode") = Txtfields(6).Text
                    TrnLog("ordqty") = val(Txtfields(21).Text)
                    TrnLog("ordkgs").value = val(Txtfields(23).Text)
                    TrnLog("AreaCode") = Txtfields(32).Text
                    TrnLog("slcode") = Txtfields(5).Text
                    TrnLog.UpdateBatch adAffectAllChapters
                    
        tempdb.Execute "delete from rm_acceptqty"
        MsgBox "Record(s) Saved", vbInformation, head
        Screen.MousePointer = 0
        BUTTON(3).Enabled = True
        BUTTON(2).Enabled = True
        Call Form_Load
        Call query_mode
        SSTab2.Visible = True
        Frame1.Visible = True
        Frame5.Visible = True
        Frame6.Visible = False
        Screen.MousePointer = 0

    If Opt = "del" Then
        On Error GoTo del
        Set rs5 = New Recordset
                    rs5.Open "select isnull(iqa,'Y') as iqa from rm_param ", DB, DB, adOpenStatic, adLockReadOnly
                    If Not Rs.EOF Then
                        If rs5!iqa = "Y" Then
                        Set getd = New Recordset
                            getd.Open "Select getdate() as GETDATE ", DB, adOpenStatic, adLockBatchOptimistic
                                'MODDATE ='" & Format(getd("Getdate"), "yyyy-MM-dd HH:mm") & "'"
                        
                                strSQL = ""
                                strSQL = "update rm_Lot set Fappflg = 'N', FADDUSERNAME   =NULL, FADDDATE   =NULL " & _
                                     " where  LOTNO=" & adoPrimaryRS("LOTNO") & " AND arrno=" & adoPrimaryRS("arrno") & " " & _
                                    " and arrdt='" & Format(adoPrimaryRS("ARRDT"), "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'"
                                DB.Execute strSQL
                         End If
                    End If
        
        DB.CommitTrans
        MsgBox "Record(s) Deleted!", vbInformation, head
        BUTTON(9).ToolTipText = "Save"
        Opt = "list"
        SSTab2.Visible = True
        BUTTON(4).Enabled = True
del:
If Err.Number = -2147217900 Then
    MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
    BUTTON(9).ToolTipText = "Save"
    GoTo gocancel
    Exit Sub
End If
gocancel:
    desc.Caption = "Query"
    'BUTTON(4).Enabled = True
    Screen.MousePointer = 11
    'CANCEL
    On Error Resume Next
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Opt = "list"
    Call query_mode
    Screen.MousePointer = 0
    'calling cancl procedure from module
    If adoPrimaryRS.RecordCount = 0 Then
        Call NEWFORM1(BUTTON, GSNO)
    End If
 
 End If
 Case 4
 
         Set rep = New Report.ReportView
        a = FreeFile
        totqty = 0
        totkgs = 0
        pgn = 1
        lno = 7
        Close
       ' Open "C:\ind.txt" For Output As #a
        Open KALFOLDERDATA & "\ind.TXT" For Output As #a
        
        If Txtfields(2).Text = "" Then
            MsgBox "No Records found", vbInformation, head
            Exit Sub
        End If
'nithya
        pg1 = 1
        SNO = 1
        Call gatepass(CInt(pg1))
        slno = 1
        Set rs1 = New Recordset
        
        rs1.Open "select a.VARCODE,ISNULL(REJQTY,0) AS QUANTITY,sum(B.netwt) AS KGS from  RM_ARRIVAL a,rm_bale b where a.divcode=b.divcode and  a.DIVCODE='" & Divcode & "' and status in ('RT','AW') AND a.lotno=b.lotno and a.lotdt=b.lotdt and a.LOTNO='" & Txtfields(1).Text & "' AND a.LOTDT='" & Format(Txtfields(2).Text, "YYYY-MM-DD") & "' GROUP BY  a.VARCODE,REJQTY", DB, adOpenStatic, adLockReadOnly
        Do While Not rs1.EOF
        Set rsa = New Recordset
        rsa.Open "select varname from rm_var where varcode='" & rs1("varcode") & "'", DB
        If rsa.RecordCount > 0 Then
            VarName = rsa(0)
        Else
            VarName = ""
        End If
            
        Print #a, Space(3) + Padr(slno, 15, " ") + Space(2); Padr(VarName, 15, " "); Space(2); Padl(rs1("quantity"), 10, " ") + "Qty" + " --- " + Padl(INF(rs1("KGS"), 3), 20, " ") + "Kgs" + Space(3)
        slno = slno + 1
        lno = lno + 1
        Call pblist
        rs1.MoveNext
        Loop
        
    Do While Not lno > 25
        Print #a,
        lno = lno + 1
    Loop
        Print #a, Space(3) + String(85, "-")
        Print #a, Space(5); "Returnable"; Space(35); Chr(27) + "E" + "For"; CENTRE(divname, 50, " ") + Chr(27) + "F"
        Print #a,
        Print #a,
        Print #a, Space(5) + "Receiver Signature" + Space(25) + "Prepared by" + Space(20) + "FM"
        Close #a
'        Open "C:\ind.bat" For Output As #a
'        Print #a, "C:"
'        Print #a, "cd\"
'        Print #a, "type ind.txt>prn"
'        Rep.txtfile = "C:\ind.txt"
'        Rep.Batfile = "C:\ind.bat"
'        Close #a
         a = FreeFile
         Call KALBATPROCESS("ind")
Case 12
      Set rep = New Report.ReportView
        a = FreeFile
        
        pgn = 1
        lno = 7
        Close
        'Open "C:\form20.txt" For Output As #a
        Open KALFOLDERDATA & "\form20.TXT" For Output As #a
        
        If Txtfields(2).Text = "" Then
            MsgBox "No Records found", vbInformation, head
            Exit Sub
        End If
'nithya
        pg1 = 1
        SNO = 1
        I = 0
        For I = 1 To 4
        Call headlist(CInt(pg1), CInt(I))
        'Call hdlist(CInt(pg1))
        Set divmasrs = New Recordset
        divmasrs.Open "select divname,add1,add2,city,pincode,tngst,TNGSTDT,CGST,CGSTDT from pp_divmas where divcode='" & Divcode & "'", DB, adOpenStatic
        Print #a, Space(5); "1.(a) Name of and address of the consigner                       : TNGST RC.No." + divmasrs("tngst") + "/" + Format(divmasrs("TNGSTDT"), "dd-mm-yyyy")
        Print #a, Space(5); "                                                                 : CST No." + divmasrs("cgst") + "/" + Format(divmasrs("cgstdt"), "dd-mm-yyyy")
        Print #a,
        Print #a, Space(5); "  (b) His registration certificate number under the tamil nadu   : " + divmasrs("divname")
        Print #a, Space(5); "      General sales Tax Act.1954 and /or under the                 " + divmasrs("add1") + "," + divmasrs("add2")
        Print #a, Space(5); "      Central Sales Tax Act 1956                                   " + divmasrs("city") + "-" + divmasrs("pincode")
        Print #a,
        Set parmasrs = New Recordset
        parmasrs.Open "select slname,add1,add2,add3,city,pin,tngst from fa_slmas where slcode='" & Txtfields(5).Text & "'", DB
        Print #a, Space(5); "2.(a) Name and address of consignee                              : " + IIf(IsNull(parmasrs("slname")), " ", parmasrs("slname"))
        Print #a,
        Print #a, Space(5); "  (b) His Registration Ceritificate number , if any ,under the   : " + IIf(IsNull(parmasrs("add1")), " ", parmasrs("add1"))
        Print #a, Space(5); "      Tamil nadu Gereral Sales Tax Act,1959 or any other /         " + IIf(IsNull(parmasrs("add2")), " ", parmasrs("add2"))
        Print #a, Space(5); "      State Act and/or Central Sales Tax Act, 1959                 " + IIf(IsNull(parmasrs("add3")), " ", parmasrs("add3"))
        Print #a, Space(5); "                                                                   " + IIf(IsNull(parmasrs("city")), " ", parmasrs("city")) + "-" + IIf(IsNull(parmasrs("pin")), " ", parmasrs("pin"))
        Print #a, Space(5); "                                                                   " + IIf(IsNull(parmasrs("tngst")), " ", parmasrs("tngst"))
        Print #a,
        Print #a, Space(5); "3.    Particular of place                                        : "
        Print #a, Space(5); "      (i)From Which the goods are consigned                      : " + divmasrs("city")
        Print #a, Space(5); "      (ii)To which the goods are consigned                       : " + IIf(IsNull(parmasrs("city")), " ", parmasrs("city"))
        Print #a,
        Print #a, Space(5); "4.    Description of goods consigned                             "
        Set rs1 = New Recordset
  
        rs1.Open "select a.VARCODE,ISNULL(REJQTY,0) AS QUANTITY,SUM(B.NETWT) AS KGS,DBAMT from  RM_ARRIVAL A,RM_BALE B where a.divcode=b.divcode and  a.DIVCODE='" & Divcode & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND status in ('RT','AW') AND A.LOTNO='" & Txtfields(1).Text & "' AND A.LOTDT='" & Format(Txtfields(2).Text, "YYYY-MM-DD") & "' GROUP BY a.VARCODE,REJQTY,DBAMT", DB, adOpenStatic, adLockReadOnly

        Set rsa = New Recordset
        rsa.Open "select catcd,varname from rm_var where varcode='" & rs1("varcode") & "'", DB
        Set CATRS = New Recordset
        CATRS.Open "select catname from rm_cat where catcd='" & rsa("catcd") & "'", DB
        Do While Not rs1.EOF
        totkgs = totkgs + rs1("kgs")
        SNO = SNO + 1
        lno = lno + 1
        Call pblist
        rs1.MoveNext
        Loop

        Set rs2 = New Recordset
        rs2.Open "select VARCODE,ISNULL(REJQTY,0) AS QUANTITY,NETWT/QUANTITY*ISNULL(REJQTY,0) AS KGS,DBAMT,* from  RM_ARRIVAL where LOTNO='" & Txtfields(1).Text & "' AND LOTDT='" & Format(Txtfields(2).Text, "YYYY-MM-DD") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly



        Print #a, Space(5); "      (i)Name of the goods                                       : " + CATRS("catname") + " Web"
        Print #a, Space(5); "      (ii)Quantity or Weight                                     : " + "NetWeight" + Space(3) + Padr(INF(totkgs, 3), 15, " ") + "Kgs"
        Print #a, Space(5); "      (iii)Value of Goods                                        : " + Padl(INF(IIf(IsNull(rs2("DBAMT")), 0, rs2("DBAMT")), 2), 15, " ")
        Print #a,
        totkgs = 0
'        Set vehRS = New Recordset
'        vehRS.Open "select * from  RM_DCDYINGhd where dcno='" & txtFields(2).Text & " 'Order by dcno ", db, adOpenStatic, adLockReadOnly
        Print #a, Space(5); "5.    To whom delivered for transport                            : " + IIf(IsNull(rs2("LORRYNOS")) = True, " ", rs2("LORRYNOS"))
        Print #a,
        Print #a, Space(5); "6.    Remarks if Any                                             : " + "Not for Sales dying purpose only"
        Print #a,
        Print #a, Space(3) + String(85, "-")
        Print #a,
        Print #a, Space(5) & Chr(15) & "I/We Certify that to the best of my/our knowlege the particulars furnished are true and correct" & Chr(18)
        Print #a,
        Print #a,
        Print #a,
        Print #a, Space(5) & Chr(15) & "Name and signature of the person to whom the goods were delivered for            Name and signature of consigner/his employee /his " & Chr(18)
        Print #a, Space(5) & Chr(15) & "               transporting with status of person siging                                          representatives                    " & Chr(18)
        Print #a, Space(3) + String(85, "-")
        Print #a, Space(5); "Notes:-"
        Print #a, Space(5) & Chr(15) & "(1)  Original to be furinished to the  officer -in - charge of the  first check -post  or barrier ,the  second copy to officer in the last check -post or barrier "
        Print #a, Space(5); "     and the third copy shall be retained by the owner orv other person in-charge of the goods vehicle or boat"
        Print #a, Space(5); "(2)  The Entries in this form should be made in link or by copying pencil using double side carbon paper. In the case of delivery notes issued in respect   "
        Print #a, Space(5); "     of goods intended to be transferred to a place outside the State of thamil Nadu entries should be made in English in other cases of transport such    "
        Print #a, Space(5); "     entries may be made either in English or in the offical/regional language of the state ,namely ,Tamil "
        Print #a, Space(5); "(3)  Any Correction  made in the form should be duly attested by the signed the Form" & Chr(18)
        Print #a, Space(3) + String(85, "-")
        Print #a, Space(5); "Ref. :PC & CCI Chennai acts cell 1/41643/99 dt24-12-1999 & 9-3-2000."
        Next I
        Print #a, Space(3) + String(85, "-")
        Close #a
'        Open "C:\from20.bat" For Output As #a
'        Print #a, "C:"
'        Print #a, "cd\"
'        Print #a, "type form20.txt>prn"
'        Rep.txtfile = "C:\form20.txt"
'        Rep.Batfile = "C:\from20.bat"
'        Close #a
        a = FreeFile
        Call KALBATPROCESS("from20")

Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    If Opt = "updat" Then
    DB.RollbackTrans
    Opt = "list"
    End If
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT * FROM rm_lot WHERE lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'AND ins_flg='Y' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "' AND (isnull(netwt,0) - isnull(isswt,0)) >0 Order BY Lotdt,lotno", DB, adOpenStatic
    If adoPrimaryRS.EOF = False Then adoPrimaryRS.MoveLast

    Screen.MousePointer = 0
    BUTTON(0).Enabled = True
    BUTTON(1).Enabled = True 'mod
    'BUTTON(3).Enabled = True 'list
    BUTTON(2).Enabled = True
    BUTTON(3).Enabled = True
    BUTTON(5).Enabled = True 'First
    BUTTON(6).Enabled = True 'next
    BUTTON(7).Enabled = True 'prev
    BUTTON(8).Enabled = True 'Last
    BUTTON(9).Enabled = False 'Save
    BUTTON(10).Enabled = False 'Cancel
    BUTTON(11).Enabled = True
    SSTab2.TabVisible(2) = False
    SSTab2.TabVisible(3) = False
    
Case 13

    docNo = val(Txtfields(1).Text)
    DOCDT = Format(Txtfields(2).Text, "yyyy-mm-dd")
    If docNo <> 0 Then
        Dim ClsInsQuality As New clsCrystal
        Set ClsInsQuality.cryRept = Tran_InsQualityParam
        ClsInsQuality.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@Lot_No;" & docNo & ""
        CrystalReport1.ParameterFields(2) = "@LDate;" & DOCDT & ""
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
    End If
    
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
End Select
Exit Sub
Exit Sub
'BUTTON_Click_Error:
'    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BUTTON_Click of Form FrmQualparam", vbInformation, head
'    Resume
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  Dim lotsts1 As String
  Dim lotsts2 As String
On Error GoTo adoPrimaryRS_MoveComplete_Error
   intervalMinutes = -1
  On Error Resume Next
  If Opt <> "del" Then
  If Opt <> "list" Or Opt <> "updat" Or Opt <> "del" Then
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  'Vinoth
         If Opt <> "add" Then
            Set adoPrimaryRS1 = New Recordset
            adoPrimaryRS1.Open "select isnull(staplen,0) as stplen25,isnull(staplen50,0) as stplen50,isnull(uniratio,0) as uniratio,isnull(mcoeff,0) as mcoeff,isnull(strength,0) as strenght,isnull(trash_per,0) as trash,micronaire as micronair,HMATURE,MATURE,IMATURE,spotpasser from rm_lot where divcode = '" & Divcode & "' and  lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='A' AND OPFLG='N'", DB, adOpenStatic, adLockBatchOptimistic
         End If
         On Error Resume Next
         If adoPrimaryRS.EOF = False Then
         Txtfields(0).Text = adoPrimaryRS("CATCD")
         Txtfields(2).Text = Format(adoPrimaryRS("lotdt"), "dd/mm/yyyy")
         Txtfields(1).Text = adoPrimaryRS("lotno")
         Txtfields(3).Text = adoPrimaryRS("varcode")
         If Not IsNull(adoPrimaryRS!CntCode) Then Txtfields(4).Text = adoPrimaryRS("cntcode")
         Txtfields(5).Text = adoPrimaryRS("supcd")
         Txtfields(32).Text = adoPrimaryRS("areacd")
'         txtFields(7).Text = adoPrimaryRS("areaname")
         Txtfields(21).Text = adoPrimaryRS("bALES")
         Txtfields(17).Text = adoPrimaryRS("grswGt")
         Txtfields(20).Text = adoPrimaryRS("tarewt")
         Txtfields(19).Text = adoPrimaryRS("netwt")
         Txtfields(14).Text = adoPrimaryRS("plotno")
'         txtFields(28).Text = adoPrimaryRS("contno")
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM RM_ARRIVAL WHERE ARRNO = " & adoPrimaryRS!Arrno & "  AND DIVCODE ='" & Divcode & "'", DB, adOpenStatic
         Txtfields(28).Text = Rs("contno")
         Txtfields(35).Text = IIf(IsNull(Rs("prno")), "", Rs("prno"))
         Txtfields(36).Text = IIf(IsNull(Rs("prmark")), "", Rs("prmark"))
         Txtfields(15).Text = IIf(IsNull(adoPrimaryRS("remarks")), "", adoPrimaryRS("remarks"))
         Txtfields(65).Text = adoPrimaryRS("SFI")
         Txtfields(66).Text = adoPrimaryRS("ELG")
         Txtfields(67).Text = adoPrimaryRS("TRCNT")
         Txtfields(68).Text = adoPrimaryRS("TRArea")
         Txtfields(69).Text = adoPrimaryRS("TRGrade")
         Txtfields(70).Text = adoPrimaryRS("LINT")
         Txtfields(71).Text = adoPrimaryRS("IVC")
         Txtfields(72).Text = adoPrimaryRS("SCNeps_g")
         Txtfields(73).Text = adoPrimaryRS("SCNeps_Micm")
         Txtfields(74).Text = adoPrimaryRS("TotSCNeps_g")
         Txtfields(75).Text = adoPrimaryRS("AVGSCNeps_Micm")
         Txtfields(76).Text = adoPrimaryRS("EXNoils")
         
         Txtfields(48).Text = adoPrimaryRS("STAPLEN")
         Txtfields(49).Text = adoPrimaryRS("STAPLEN50")
         Txtfields(47).Text = adoPrimaryRS("UNIRATIO")
         Txtfields(43).Text = adoPrimaryRS("MCOEFF")
         Txtfields(11).Text = adoPrimaryRS("STRENGTH")
         Txtfields(16).Text = adoPrimaryRS("TRASH_PER")
         Txtfields(13).Text = adoPrimaryRS("MICRONAIRE")
         Txtfields(44).Text = adoPrimaryRS("MATURE")
         Txtfields(52).Text = adoPrimaryRS("HMATURE")
         Txtfields(50).Text = adoPrimaryRS("IMATURE")
         
         
         Txtfields(61).Text = IIf(IsNull(adoPrimaryRS("FQI")), "", adoPrimaryRS("FQI"))
         Txtfields(62).Text = IIf(IsNull(adoPrimaryRS("SCI")), "", adoPrimaryRS("SCI"))
         Txtfields(91).Text = IIf(IsNull(adoPrimaryRS("SPOTPasser")), "", adoPrimaryRS("SPOTPasser"))
         Txtfields(93).Text = getMasterName("spname", "RM_Spotpass", "spcode", Trim(Txtfields(91).Text))
         Txtfields(78).Text = adoPrimaryRS("ALLMIXCOUNT")
         Txtfields(79).Text = adoPrimaryRS("RECMIXCOUNT")
         Txtfields(15).Text = adoPrimaryRS("REMARKS")
         Txtfields(54).Text = adoPrimaryRS("GTEX")
         Txtfields(42).Text = adoPrimaryRS("MOITURE")
         Txtfields(64).Text = adoPrimaryRS("RD")
         Txtfields(63).Text = adoPrimaryRS("BB")
         Txtfields(53).Text = adoPrimaryRS("GRADE")
         Txtfields(18).Text = adoPrimaryRS("CSP")
         Txtfields(77).Text = adoPrimaryRS("risi")
         Txtfields(46).Text = adoPrimaryRS("YARNCOUNT")
         Txtfields(92).Text = adoPrimaryRS("nepspergm")
         Txtfields(12).Text = adoPrimaryRS("TPI")
         Txtfields(45).Text = adoPrimaryRS("YARNAPPEARANCE")
         Txtfields(10).Text = adoPrimaryRS("CORRECTEDSTRENGTH")
         Txtfields(59).Text = adoPrimaryRS("STAPLE_HAND")
         
'         txtFields(80).Text = adoPrimaryRS("nepspergm")
         Txtfields(81).Text = adoPrimaryRS("nepsize")
         Txtfields(82).Text = adoPrimaryRS("scnsize")
         Txtfields(83).Text = adoPrimaryRS("lw")
         Txtfields(84).Text = adoPrimaryRS("sfcw")
         Txtfields(85).Text = adoPrimaryRS("uqlw")
         Txtfields(86).Text = adoPrimaryRS("ln")
         Txtfields(87).Text = adoPrimaryRS("sfcn")
         Txtfields(88).Text = adoPrimaryRS("fiveper")
         Txtfields(89).Text = adoPrimaryRS("fine")
         Txtfields(90).Text = adoPrimaryRS("ifc")
'         txtFields(91).Text = adoPrimaryRS("mr")
         Txtfields(94).Text = adoPrimaryRS("uhml")
         Txtfields(95).Text = adoPrimaryRS("ml")
         Txtfields(96).Text = adoPrimaryRS("ui")
         Txtfields(97).Text = adoPrimaryRS("nepcv")
         Txtfields(98).Text = adoPrimaryRS("scncv")
         Txtfields(99).Text = adoPrimaryRS("SHORT_FIBRE")
         Txtfields(134).Text = adoPrimaryRS("STAPLEN5")
         Set rs1 = New Recordset
         rs1.Open "select arrdate,a.prno,b.rateunit,ratecy from rm_arrival a,rm_cont b where a.contno=b.contno and a.contdt=b.contdt and a.divcode=b.divcode and a.divcode='" & Divcode & "' and a.lotno='" & Txtfields(1).Text & "' and arrdate='" & Format(Txtfields(2).Text, "yyyy-MM-dd") & "'", DB, adOpenStatic
         If rs1.RecordCount > 0 Then
            Txtfields(38).Text = rs1("ratecy")
            Txtfields(36).Text = rs1("PRNO")
            Txtfields(37).Text = rs1("rateunit")
         End If

         'Supplier name
         Dim rssupl As Recordset
         Set rssupl = New Recordset
         rssupl.Open "select slname from fa_slmas where slcode ='" & adoPrimaryRS("supcd") & "'", DB, adOpenStatic, adLockReadOnly
         If rssupl.RecordCount > 0 Then
            Txtfields(6).Text = rssupl("slname")
         Else
            Txtfields(6).Text = ""
         End If
         
         'Variety name
         Dim rsVar As Recordset
         Set rsVar = New Recordset
         rsVar.Open "select varname from rm_var where varcode ='" & adoPrimaryRS("varcode") & "'", DB, adOpenStatic, adLockReadOnly
         If rsVar.RecordCount > 0 Then
            Txtfields(3).Text = rsVar("varname")
         End If
         Set Rs = New Recordset
         Rs.Open "Select * from rm_arrival where arrno=" & val(adoPrimaryRS("arrno")) & " and Arrdate ='" & Format(adoPrimaryRS("Arrdt"), "yyyy-MM-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
         If Rs.EOF = False Then
         '
         'cont details
         Dim rscont As Recordset
         Set rscont = New Recordset
         'rscont.Open "select areacode, prno, pressmarkno, rateunit, candyrate, carcode,dlytype,bbflag from rm_cont where contno = '" & adoSecondaryRS("contno") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
         rscont.Open "select areacode, prno, pressmarkno, rateunit, candyrate, carcode,dlytype,Case when bbflag ='b' then 'BALE' else 'BORAH' end as Packtype from rm_cont where contno = '" & Rs("contno") & "' and Contdt= '" & Format(Rs("Contdt"), "yyyy-MM-dd") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
         'w = rscont.RecordCount
         If rscont.RecordCount > 0 Then
            Txtfields(32).Text = IIf(IsNull(rscont("areacode")), "", rscont("areacode"))
            Txtfields(36).Text = IIf(IsNull(rscont("prno")), "", rscont("prno"))
            Txtfields(35).Text = IIf(IsNull(rscont("pressmarkno")), "", rscont("pressmarkno"))
            Txtfields(38).Text = Format(IIf(IsNull(rscont("candyrate")), "0.000", rscont("candyrate")), "0.0000")
            Txtfields(37).Text = IIf(IsNull(rscont("rateunit")), "", rscont("rateunit"))
            Txtfields(41).Text = IIf(IsNull(rscont("Packtype")), "", rscont("Packtype"))
            Txtfields(40).Text = getMasterName("deldesc", "rm_delivery", "delcode", rscont("dlytype"))
        End If
            

'        If rscont("dlytype") = "S" Then
'            txtFields(40).Text = "Spot"
'        ElseIf rscont("dlytype") = "M" Then
'           txtFields(40).Text = "FOR"
'        ElseIf rscont("dlytype") = "C" Then
'            txtFields(40).Text = "C&F"
'        ElseIf rscont("dlytype") = "I" Then
'            txtFields(40).Text = "CIF"
'        End If
        
         'area details
         
         
              Dim rscount As Recordset
              If IsNull(rscont("areacode")) Then
                Set rscount = New Recordset
                rscount.Open "select * from rm_area where areacode ='" & rscont("areacode") & "'", DB, adOpenStatic, adLockReadOnly
                If rscount.RecordCount > 0 Then
                    Txtfields(7).Text = rscount("areaname")
                    Txtfields(33).Text = IIf(IsNull(rscount("state")), "", rscount("state"))
                    Txtfields(34).Text = IIf(IsNull(rscount("station")), "", rscount("station"))
                    
                End If
            End If
        End If
         'Count name
         'Dim rscount As Recordset
         Set rscount = New Recordset
         rscount.Open "select cntname from rm_count where cntcd ='" & adoPrimaryRS("cntcode") & "'", DB, adOpenStatic, adLockReadOnly
         If rscount.RecordCount > 0 Then
            Txtfields(4).Text = rscount("cntname")
         End If
'
         
'         Dim rssupl As Recordset
         Set rssupl = New Recordset
         rssupl.Open "select slname from fa_slmas where slcode ='" & adoPrimaryRS("supcd") & "'", DB, adOpenStatic, adLockReadOnly
         If rssupl.RecordCount > 0 Then
            Txtfields(6).Text = rssupl("slname")
         Else
            Txtfields(6).Text = ""
         End If
         
         'Variety name
'         Dim rsVar As Recordset
         Set rsVar = New Recordset
         rsVar.Open "select varname from rm_var where varcode ='" & adoPrimaryRS("varcode") & "'", DB, adOpenStatic, adLockReadOnly
         If rsVar.RecordCount > 0 Then
            Txtfields(3).Text = rsVar("varname")
         End If
'        adoPrimaryRS("RVEHNO") = txtFields(60).Text
         'Count name
'         Dim rscount As Recordset
         Set rscount = New Recordset
         rscount.Open "select cntname from rm_count where cntcd ='" & adoPrimaryRS("cntcode") & "'", DB, adOpenStatic, adLockReadOnly
         If rscount.RecordCount > 0 Then
            Txtfields(3).Text = rscount("cntname")
         End If
        
        Dim rstBal As Recordset
        
        Call loadsampledet
        Set rstBal = New Recordset
        rstBal.Open "Select (bales - (SELECT count(*) FROM rm_bale WHERE  Lotno = " & adoPrimaryRS!lotno & " AND lotdt = '" & Format(adoPrimaryRS!LOTDT, "YYYY-MM-DD") & "' AND DIVCODE ='" & Divcode & "' AND rejflg='Y')) AS Balance From RM_LOT " & _
                    "Where Lotno = " & adoPrimaryRS!lotno & " AND lotdt = '" & Format(adoPrimaryRS!LOTDT, "YYYY-MM-DD") & "' AND DIVCODE ='" & Divcode & "'", DB, adOpenStatic
        
        
        
1212        If Not rstBal.EOF Then
'            Frame13.Visible = True
            lblAcceptance.Visible = True
            lblRejected.Visible = True
            lblAcceptance.Caption = "Accepted Bales : " & rstBal(0)
            lblRejected.Caption = "Rejected Bales  : " & ((adoPrimaryRS!bales) - (rstBal!balance))
        Else
'            Frame13.Visible = False
            lblAcceptance.Visible = False
            lblRejected.Visible = False
        End If
         
         
         Txtfields(61).Text = IIf(IsNull(adoPrimaryRS("FQI")), "", adoPrimaryRS("FQI"))
         Txtfields(62).Text = IIf(IsNull(adoPrimaryRS("SCI")), "", adoPrimaryRS("SCI"))
         End If
         End If
         
         
      End If
      
      intervalMinutes = -1
'      End If
'  End If
'End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub loadsampledet()
    Set adoPrimaryRS2 = New Recordset
     
    adoPrimaryRS2.Open "select * from rm_sample where lotno='" & Txtfields(1).Text & "' and lotdt='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and lottype='" & adoPrimaryRS("lottype") & "' ", DB, adOpenStatic
    Txtfields(127).Text = ""
    Txtfields(126).Text = ""
    Txtfields(133).Text = ""
    Txtfields(135).Text = ""
    Txtfields(152).Text = ""
    Txtfields(141).Text = ""
    Txtfields(113).Text = ""
    Txtfields(140).Text = ""
    Txtfields(132).Text = ""
    Txtfields(125).Text = ""
    Txtfields(123).Text = ""
    Txtfields(138).Text = ""
    Txtfields(139).Text = ""
    Txtfields(136).Text = ""
    Txtfields(124).Text = ""
    Txtfields(137).Text = ""
    Txtfields(122).Text = ""
    Txtfields(127).Text = ""
    Txtfields(130).Text = ""
    Txtfields(121).Text = ""
    Txtfields(120).Text = ""
    Txtfields(119).Text = ""
    Txtfields(118).Text = ""
    Txtfields(117).Text = ""
    Txtfields(116).Text = ""
    Txtfields(115).Text = ""
    Txtfields(114).Text = ""
    Txtfields(153).Text = ""
    If adoPrimaryRS2.RecordCount > 0 Then
    
        Txtfields(127).Text = adoPrimaryRS2("STAPLEN50")
        Txtfields(126).Text = adoPrimaryRS2("STAPLEN25")
        Txtfields(133).Text = adoPrimaryRS2("TRASH_PER")
        Txtfields(135).Text = adoPrimaryRS2("MICRONAIRE")
        Txtfields(152).Text = adoPrimaryRS2("remarks")
        Txtfields(141).Text = adoPrimaryRS2("FQI")
        Txtfields(113).Text = adoPrimaryRS2("shortfibre")
        Txtfields(140).Text = adoPrimaryRS2("SCI")
        Txtfields(132).Text = adoPrimaryRS2("GTEX")
        Txtfields(125).Text = adoPrimaryRS2("UNIRATIO")
        Txtfields(123).Text = adoPrimaryRS2("MCOEFF")
        Txtfields(138).Text = adoPrimaryRS2("MOITURE")
        Txtfields(139).Text = adoPrimaryRS2("rd")
        Txtfields(136).Text = adoPrimaryRS2("bplus")
        Txtfields(124).Text = adoPrimaryRS2("sfi")
        Txtfields(137).Text = adoPrimaryRS2("elg")
        Txtfields(122).Text = adoPrimaryRS2("SCNeps_g")
        Txtfields(127).Text = adoPrimaryRS2("scneps_g")
        Txtfields(130).Text = adoPrimaryRS2("nepspergm")
        Txtfields(121).Text = adoPrimaryRS2("sfcw")
        Txtfields(120).Text = adoPrimaryRS2("uqlw")
        Txtfields(119).Text = adoPrimaryRS2("ifc")
        Txtfields(118).Text = adoPrimaryRS2("uhml")
        Txtfields(117).Text = adoPrimaryRS2("ml")
        Txtfields(116).Text = adoPrimaryRS2("ui")
        Txtfields(115).Text = adoPrimaryRS2("nepcv")
        Txtfields(114).Text = adoPrimaryRS2("scncv")
        Txtfields(153).Text = adoPrimaryRS2("STAPLEN5")
    End If
End Sub

Private Sub query_mode()
On Error GoTo query_mode_Error

BUTTON(1).Enabled = True
intervalMinutes = -1
BUTTON(5).Enabled = False
BUTTON(6).Enabled = True
BUTTON(7).Enabled = False
BUTTON(8).Enabled = True
BUTTON(9).Enabled = False
BUTTON(10).Enabled = False
BUTTON(11).Enabled = True
If Opt <> "add" Then desc.Caption = "Query"
' If opt = "list" Or opt = "updat" Then
lotsts1 = "Rejected"
If Opt = "add" Then
    Frame1.Visible = False
    Frame5.Visible = False
    Frame6.Visible = True
    DataGrid1.Visible = True
    BUTTON(6).Enabled = False
    BUTTON(8).Enabled = False
'    Call QUERY_MODE
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT arrno,arrdt,lottype,lotno,plotno,lotdt,catcd,varcode,CntCode FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "' AND ins_flg IS null and (OPFLG <> 'Y' AND  (isnull(bales,0) - isnull(ISSbal,0))>0) Order BY Lotdt,lotno", DB, adOpenStatic, adLockBatchOptimistic
    
    If adoPrimaryRS.EOF Then
       MsgBox "No Arrival Record(s) Found", vbInformation, head
       Set DataGrid1.DataSource = Nothing
        Frame1.Visible = True
        SSTab2.Visible = True
        Frame5.Visible = True
        Frame6.Visible = False
        SSTab2.TabVisible(2) = False
        SSTab2.TabVisible(3) = False
            BUTTON(0).Enabled = True
            BUTTON(1).Enabled = True
            BUTTON(2).Enabled = True
            BUTTON(4).Enabled = True
            BUTTON(5).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(8).Enabled = True
            BUTTON(11).Enabled = True
        Exit Sub
      
    Else
        
       Set DataGrid1.DataSource = adoPrimaryRS
       DataGrid1.Columns(0).Caption = "Arrival No"
       DataGrid1.Columns(0).Text = adoPrimaryRS(0)
       DataGrid1.Columns(1).Caption = "Arrival Date"
       DataGrid1.Columns(1).Text = adoPrimaryRS(1)
       DataGrid1.Columns(2).Caption = "Lot Status"
       DataGrid1.Columns(2).Text = IIf(IsNull(adoPrimaryRS(2)) = True, " ", adoPrimaryRS(2))
       DataGrid1.Columns(0).Width = 0
       DataGrid1.Columns(1).Width = 0
       DataGrid1.Columns(2).Width = 1200
       DataGrid1.Columns(3).Width = 1200
       DataGrid1.Columns(3).Caption = "Lot No."
       DataGrid1.Columns(4).Width = 1200
       DataGrid1.Columns(4).Caption = "Supplier Lot No."
       DataGrid1.Columns(5).Width = 1500
       DataGrid1.Columns(5).Caption = "Lot Date"
       DataGrid1.Columns(6).Width = 1200
       DataGrid1.Columns(6).Caption = "Category."
       DataGrid1.Columns(7).Width = 1200
       DataGrid1.Columns(7).Caption = "Variety"
    End If
    Frame6.ZOrder
    If Opt = "updat" Then
      DB.BeginTrans
    End If
'    txtFields(22).Locked = True
'    txtFields(23).Locked = True
    Txtfields(24).Locked = True
    Txtfields(25).Locked = True
    Txtfields(26).Locked = True
    Txtfields(27).Locked = True
    Txtfields(10).Locked = False
    Txtfields(22).Text = ""
    Txtfields(23).Text = ""
    Txtfields(24).Text = ""
    Txtfields(29).Text = ""
    
 End If
intervalMinutes = -1

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form FrmQualparam", vbInformation, head
End Sub

Private Sub CmdReject_Click()
On Error GoTo CmdReject_Click_Error
Dim bale As Integer
If Opt = "add" Or Opt = "mod" Then
    If CmdReject.Caption = "Accept" Then
        tempcount = 0
        adoGridRS.MoveFirst
        Do While Not adoGridRS.EOF
            If grid.Columns(2).Text = "Y" Then
                tempcount = tempcount + 1
            End If
            adoGridRS.MoveNext
        Loop
        adoGridRS.MoveFirst
        If val(tempcount) = val(Txtfields(22).Text) Then
            MsgBox "Selected Bales must be less than or equal to Accepted Bales", vbInformation, head
            Txtfrombaleno.SetFocus
            Txttotalbale.Text = S1 - 1
            Txtfrombaleno.Text = ""
            TxtTobaleno.Text = ""
            Exit Sub
        Else
            Call acceptqty
        End If
    ElseIf CmdReject.Caption = "Accepted with Allowance" Then
        
        If (val(TxtTobaleno.Text) - val(Txtfrombaleno.Text) + 1) <> val(Txtfields(24).Text) Then
            MsgBox "Bale No must be less than or equal to Accepted with allowance Quantity", vbInformation, head
            TxtTobaleno.Text = ""
            TxtTobaleno.SetFocus
            Exit Sub
        End If
        Call acceptqty
        
    Else
        If adoGridRS.EOF = False Then
        adoGridRS.MoveFirst
        cnt1 = val(Txtfields(29).Text)
        S1 = 1
        
        adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
        
            grid.Columns(2).Text = "N"
            adoGridRS.MoveNext
        
        Loop
        
        
        
        adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
            If grid.Columns(2).Text = "Y" Then
                S1 = S1 + 1
            End If
            adoGridRS.MoveNext
        Loop
        If S1 = 0 Then S1 = 1
        adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
            For I = val(Txtfrombaleno.Text) To val(TxtTobaleno.Text)
                If I = grid.Columns(0).Text Then
                    If S1 >= val(cnt1) Then
                        grid.Columns(2).Text = "Y"
                        S1 = S1 + 1
                    Else
                        MsgBox "Already  " & cnt1 & " Bales Rejected ", vbInformation, head
                        Exit Sub
                    End If
                End If
            Next
            adoGridRS.MoveNext
           ' GoTo L1:
        Loop
        Txtfields(23).Text = S1 - 1
'        bale = (val(txtFields(22).Text) - val(txtFields(23).Text))
'        txtFields(22).Text = bale
'        Txttotalbale.Text = s1 - 1
'        Txtfrombaleno.Text = ""
'        TxtTobaleno.Text = ""

        Txttotalbale.Text = val(Txtfields(23).Text)
        adoGridRS.MoveFirst
        End If
    End If
'L1:
End If


Exit Sub
CmdReject_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CmdReject_Click of Form FrmQualparam", vbInformation, head

End Sub

Private Sub CmdReset_Click()
On Error GoTo CmdReset_Click_Error

If Opt = "add" Then
    Call gridload
    adoGridRS.MoveFirst
    Do While adoGridRS.EOF = False
        grid.Columns(2).Text = "N"
        adoGridRS.MoveNext
    Loop
     adoGridRS.MoveFirst
End If
Txttotalbale.Text = ""


Exit Sub
CmdReset_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CmdReset_Click of Form FrmQualparam", vbInformation, head
End Sub

Private Sub Combo1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo1_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_KeyDown of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error
BUTTON(0).Enabled = False
BUTTON(1).Enabled = False
BUTTON(2).Enabled = False
BUTTON(3).Enabled = False
BUTTON(4).Enabled = False
BUTTON(5).Enabled = False
BUTTON(6).Enabled = False
BUTTON(7).Enabled = False
BUTTON(8).Enabled = False
BUTTON(9).Enabled = True
BUTTON(10).Enabled = True
SSTab2.Tab = 0
' If SSTab2.Tab = 0 Then TXTFIELDS(48).SetFocus
On Error Resume Next
If Opt = "add" Then
    Call fn_mod
    Exit Sub
End If
If Opt = "add" Or Opt = "updat" Or Opt = "del" Then
         Call ENABLCONTLS
         Call ClearControls
         Set adoSecondaryRS = New Recordset
         'ADOSECONDARYRS.Open "select b.varname,c.cntname,d.slcode,d.slname from rm_var b,rm_cont c,fa_slmas d where substr(b.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "' and substr(c.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "' and substr(d.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "'", Db, adOpenStatic, adLockBatchOptimistic
         
         'ADOSECONDARYRS.Open "select a.supcd,b.varname,c.cntname,d.slname,isnull(e.staplen,0) from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.divcode = e.divcode and e.divcode = '" & Divcode & "' and a.lotno = '" & DataGrid1.Columns(1).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and a.catcd = '" & DataGrid1.Columns(0).Text & "' and a.varcode = b.varcode and a.cntcode = c.cntcd and a.supcd = d.slcode and a.lotno = e.lotno", DB, adOpenStatic, adLockBatchOptimistic
         'Ravi 24-10-2002 ADOSECONDARYRS.Open "select distinct a.supcd,b.varname,e.cntcode,d.slname,isnull(e.staplen,0) from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.divcode = e.divcode and e.divcode = '" & Divcode & "' and a.lotno = '" & DataGrid1.Columns(1).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and e.catcd = '" & DataGrid1.Columns(0).Text & "' and a.varcode = b.varcode and a.cntcode = c.mixgrpcd and a.supcd = d.slcode and a.lotno = e.lotno", DB, adOpenStatic, adLockBatchOptimistic
         'ADOSECONDARYRS.Open "select distinct a.supcd,b.varname,e.cntcode,d.slname,isnull(e.staplen,0) as stplen25,isnull(staplen50,0) as stplen50,isnull(uniratio,0) as uniratio,isnull(mcoeff,0) as mcoeff,isnull(strength,0) as strenght,isnull(trash_per,0) as trash,micronaire As micronair,ISNULL(a.PLOTNO,'')AS PLOTNO  from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.divcode = e.divcode and e.divcode = '" & Divcode & "' and a.lotno = '" & DataGrid1.Columns(0).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(1).Text, "yyyy-mm-dd") & "' and e.catcd = '" & DataGrid1.Columns(0).Text & "' and a.varcode = b.varcode and a.cntcode = c.mixgrpcd and a.supcd = d.slcode and a.lotno = e.lotno and a.varcode=e.varcode", DB, adOpenStatic, adLockBatchOptimistic
                                        
        'adoSecondaryRS.Open "select arrdate,SUPCD,VARCODE,CNTCODE,QUANTITY,GROSSWT,TAREWT, " & _
                "NETWT,arrno,bbflag,passbl,isgodown,plotno, lotno, accqty, accdt, rejqty, prno,prmark,remarks," & _
                "rejdt, accallowqty, accallowdt, accallowrtpercandy, accallowrtperkg,contno,lotstatus,returnqty,returndate,CatCd  " & _
                "from rm_arrival where arrno=" & val(DataGrid1.Columns(0).Text) & " and " & _
                "arrdate  ='" & Format(DataGrid1.Columns(1).Text, "yyyy-mm-dd") & _
                "' AND DIVCODE='" & Divcode & "' " & _
                "UNION ALL" & _
                " select arrdt,SUPCD,VARCODE,CNTCODE,Bales,GRSWGT,TAREWT, " & _
                " NETWT,arrno,bblflg,'' as passbl, 'Y' as isgodown,plotno, lotno, 0 as accqty, 0 as accdt," & _
                " 0 as rejqty,0 as  prno,'' as prmark,'' as remarks,0 as rejdt, 0 as accallowqty,0 as accallowdt,0 as accallowrtpercandy, " & _
                " 0 as accallowrtperkg,0 as contno,'' as lotstatus,0 as returnqty, 0 as returndate,CatCd " & _
                " from rm_Lot where arrno=" & val(DataGrid1.Columns(0).Text) & " and " & _
                " arrdt  ='" & Format(DataGrid1.Columns(1).Text, "yyyy-mm-dd") & _
                "' AND DIVCODE='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
                
        adoSecondaryRS.Open " select arrdt as arrdate,SUPCD,VARCODE,CNTCODE,Bales as QUANTITY,GRSWGT as GROSSWT,TAREWT, " & _
                " NETWT,arrno,bblflg as bbflag,'' as passbl, 'Y' as isgodown,plotno, lotno, 0 as accqty, 0 as accdt," & _
                " 0 as rejqty,0 as  prno,'' as prmark,'' as remarks,0 as rejdt, 0 as accallowqty,0 as accallowdt,0 as accallowrtpercandy, " & _
                " 0 as accallowrtperkg,0 as contno,'' as lotstatus,0 as returnqty, 0 as returndate,CatCd, " & _
                " SFI ,ELG,TRCNT,TRArea,TRGrade,LINT,IVC,SCNeps_g,SCNeps_Micm, TotSCNeps_g, AVGSCNeps_Micm, EXNoils,areacd,areaname,ratecy,station" & _
                " from rm_Lot a,rm_area b where a.areacd=b.areacode and Lotno=" & val(DataGrid1.Columns(3).Text) & " and " & _
                " Lotdt  ='" & Format(DataGrid1.Columns(5).Text, "yyyy-mm-dd") & _
                "' AND DIVCODE='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
                

          If adoSecondaryRS.RecordCount = 0 Then
            MsgBox "No Arrival Record(s) Found!", vbInformation, head
            Command3.Enabled = False
            BUTTON(1).Enabled = True
            BUTTON(5).Enabled = False
            BUTTON(6).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(8).Enabled = False
            BUTTON(9).Enabled = False
            BUTTON(10).Enabled = False
'            Frame1.Visible = False
            Exit Sub
         Else
         On Error Resume Next
         SSTab2.Visible = True
         
         Txtfields(0).Text = adoSecondaryRS("CATCD")
         Txtfields(2).Text = Format(adoPrimaryRS("lotdt"), "dd/mm/yyyy")
         Txtfields(1).Text = adoPrimaryRS("lotno")
         Txtfields(3).Text = adoSecondaryRS("varcode")
         Txtfields(4).Text = adoSecondaryRS("cntcode")
         Txtfields(5).Text = adoSecondaryRS("supcd")
         Txtfields(32).Text = adoSecondaryRS("areacd")
         Txtfields(7).Text = adoSecondaryRS("areaname")
         Txtfields(21).Text = adoSecondaryRS("quantity")
         Txtfields(17).Text = adoSecondaryRS("grosswt")
         Txtfields(20).Text = adoSecondaryRS("tarewt")
         Txtfields(19).Text = adoSecondaryRS("netwt")
         Txtfields(14).Text = adoSecondaryRS("plotno")
         Txtfields(28).Text = adoSecondaryRS("contno")
         Txtfields(35).Text = adoSecondaryRS("prno")
         Txtfields(36).Text = adoSecondaryRS("prmark")
         Txtfields(15).Text = IIf(IsNull(adoSecondaryRS("remarks")), "", adoSecondaryRS("remarks"))
         Txtfields(65).Text = adoSecondaryRS("SFI")
         Txtfields(66).Text = adoSecondaryRS("ELG")
         Txtfields(67).Text = adoSecondaryRS("TRCNT")
         Txtfields(68).Text = adoSecondaryRS("TRArea")
         Txtfields(69).Text = adoSecondaryRS("TRGrade")
         Txtfields(70).Text = adoSecondaryRS("LINT")
         Txtfields(71).Text = adoSecondaryRS("IVC")
         Txtfields(72).Text = adoSecondaryRS("SCNeps_g")
         Txtfields(73).Text = adoSecondaryRS("SCNeps_Micm")
         Txtfields(74).Text = adoSecondaryRS("TotSCNeps_g")
         Txtfields(75).Text = adoSecondaryRS("AVGSCNeps_Micm")
         Txtfields(76).Text = adoSecondaryRS("EXNoils")
         Txtfields(34).Text = adoSecondaryRS("station")
         Set rs1 = New Recordset
         rs1.Open "select arrdate,a.prno,b.rateunit,ratecy from rm_arrival a,rm_cont b where a.contno=b.contno and a.contdt=b.contdt and a.divcode=b.divcode and a.divcode='" & Divcode & "' and a.lotno='" & Txtfields(1).Text & "' and arrdate='" & Format(Txtfields(2).Text, "yyyy-MM-dd") & "'", DB, adOpenStatic
         If rs1.RecordCount > 0 Then
            Txtfields(38).Text = rs1("ratecy")
            Txtfields(36).Text = rs1("PRNO")
            Txtfields(37).Text = rs1("rateunit")
         End If
         If adoSecondaryRS("bbflag") = "B" Then
            Txtfields(41).Text = "Bale"
         Else
            Txtfields(41).Text = "Borah"
         End If
         'Supplier name
         Dim rssupl As Recordset
         Set rssupl = New Recordset
         rssupl.Open "select slname from fa_slmas where slcode ='" & adoSecondaryRS("supcd") & "'", DB, adOpenStatic, adLockReadOnly
         If rssupl.RecordCount > 0 Then
            Txtfields(6).Text = rssupl("slname")
         Else
            Txtfields(6).Text = ""
         End If
         
         'Variety name
         Dim rsVar As Recordset
         Set rsVar = New Recordset
         rsVar.Open "select varname from rm_var where varcode ='" & adoSecondaryRS("varcode") & "'", DB, adOpenStatic, adLockReadOnly
         If rsVar.RecordCount > 0 Then
            Txtfields(3).Text = rsVar("varname")
         End If
         
         'cont details
         Dim rscont As Recordset
         Set rscont = New Recordset
         'rscont.Open "select areacode, prno, pressmarkno, rateunit, candyrate, carcode,dlytype,bbflag from rm_cont where contno = '" & adoSecondaryRS("contno") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
         rscont.Open "select areacode, prno, pressmarkno, rateunit, candyrate, carcode,dlytype,bbflag from rm_cont where contno = '" & adoSecondaryRS("contno") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
         'w = rscont.RecordCount
         If rscont.RecordCount > 0 Then
            Txtfields(32).Text = rscont("areacode")
            'TXTFIELDS(36).Text = rscont("prno")
            'TXTFIELDS(35).Text = rscont("pressmarkno")
            Txtfields(38).Text = rscont("candyrate")
            Txtfields(37).Text = rscont("rateunit")
            'TXTFIELDS(41).Text = rscont("dlytype")
            
        End If
            
        If rscont("dlytype") = "S" Then
            Txtfields(40).Text = "Spot"
        ElseIf rscont("dlytype") = "M" Then
           Txtfields(40).Text = "FOR"
        ElseIf rscont("dlytype") = "C" Then
            Txtfields(40).Text = "C&F"
        ElseIf rscont("dlytype") = "I" Then
            Txtfields(40).Text = "CIF"
        End If
        
         'area details
         
         
              Dim rscount As Recordset
              If Not rscont("areacode") Then
                Set rscount = New Recordset
                rscount.Open "select * from rm_area where areacode ='" & rscont("areacode") & "'", DB, adOpenStatic, adLockReadOnly
                If rscount.RecordCount > 0 Then
                    Txtfields(7).Text = rscount("areaname")
                    Txtfields(33).Text = rscount("state")
                    Txtfields(34).Text = rscount("station")
                    
                End If
            End If
         'Count name
         'Dim rscount As Recordset
         Set rscount = New Recordset
         rscount.Open "select cntname from rm_count where cntcd ='" & adoSecondaryRS("cntcode") & "'", DB, adOpenStatic, adLockReadOnly
         If rscount.RecordCount > 0 Then
            Txtfields(4).Text = rscount("cntname")
         End If
         
         MaskEdBox1(1).Enabled = True
         MaskEdBox1(1).Text = pdate
         
         Call filltestdetails
         
         'Accepted Qty
         If IsNull(adoSecondaryRS("accqty")) = False Then
            Txtfields(22).Text = adoSecondaryRS("accqty")
         End If
         
        If IIf(IsNull(adoSecondaryRS("accqty")), 0, adoSecondaryRS("accqty")) = 0 And IIf(IsNull(adoSecondaryRS("rejqty")), 0, adoSecondaryRS("rejqty")) = 0 Then
            Frame8.Visible = False
            Frame9.Visible = False
            Frame3.Visible = True
        Else
            Frame8.Visible = True
            Frame9.Visible = True
            Frame3.Visible = False
        End If
        Set grid.DataSource = Nothing
'''************* Temporary Storrage of status
            If Table_Exists("rm_acceptqty") = False Then
                tempdb.Execute "create table rm_acceptqty (baleno numeric(5,0),netwt numeric(15,2),acflag varchar(1),rejflag varchar(1),acallflag varchar(1),returnflag varchar(1),date1 datetime)"
            Else
                tempdb.Execute "drop table rm_acceptqty"
                tempdb.Execute "create table rm_acceptqty (baleno numeric(5,0),netwt numeric(15,2),acflag varchar(1),rejflag varchar(1),acallflag varchar(1),returnflag varchar(1),date1 datetime)"
            End If
'''**********************************************************************
''        Frame9.Visible = True
''        Frame3.Visible = True
''        Frame3.Visible = True
''        Frame7.Visible = True
         
         'Accepted Date
         If IsNull(adoSecondaryRS("accdt")) = False Then
            MaskEdBox1(1).Text = Format(adoSecondaryRS("accdt"), "dd/mm/yyyy")
         End If
         
         'Rejected Qty
         If IsNull(adoSecondaryRS("rejqty")) = False Then
            Txtfields(23).Text = adoSecondaryRS("rejqty")
            OLDREJQTY = val(Txtfields(23).Text)
         End If
        
        If adoSecondaryRS("REJQTY") > 0 Then
            Frame8.Visible = True
            Frame9.Visible = True
            Frame3.Visible = False
        End If
        If adoSecondaryRS("RETURNQTY") > 0 Then
            Frame8.Visible = True
            Frame9.Visible = True
            Frame3.Visible = False
        End If
        
         'Accpted With Allowance Qty
         If IsNull(adoSecondaryRS("accallowqty")) = False Then
            Txtfields(24).Text = adoSecondaryRS("accallowqty")
         End If

         'Rate Per Candy
         If IsNull(adoSecondaryRS("accallowrtpercandy")) = False Then
            Txtfields(25).Text = Format(adoSecondaryRS("accallowrtpercandy"), "#0.000")
         End If
         
         'Rate Per Kg
         If IsNull(adoSecondaryRS("accallowrtperkg")) = False Then
            Txtfields(26).Text = Format(adoSecondaryRS("accallowrtperkg"), "#0.000")
         End If
         
         'Rate Per Kg
         If IsNull(adoSecondaryRS("kgrate")) = False Then
            Txtfields(27).Text = Format(adoSecondaryRS("kgrate"), "#0.000")
         End If
                 
         'Return  Qty
         If IsNull(adoSecondaryRS("returnqty")) = False Then
            Txtfields(29).Text = adoSecondaryRS("returnqty")
         End If
         'return Date
         If IsNull(adoSecondaryRS("returndate")) = False Then
            MaskEdBox1(0).Text = Format(adoSecondaryRS("returndate"), "dd/mm/yyyy")
         End If
        
        'Lot status
'         If IsNull(adoSecondaryRS("lotstatus")) = False Then
'            txtfields(32).Text = Trim(adoSecondaryRS("lotstatus"))
'         End If
'
         End If
         
         Frame6.Visible = False
         Frame1.Visible = True
         Frame5.Visible = True
         BUTTON(1).Enabled = True
         If Opt = "del" Then
         BUTTON(9).Enabled = True
         BUTTON(1).Enabled = False
         End If
         If Opt = "list" Then
             Call disabletxt
             
             ACCQTY = IIf(IsNull(adoSecondaryRS("ACCQTY")), 0, adoSecondaryRS("ACCQTY"))
             
                If ACCQTY = 0 Then
                    Txtfields(22).Text = adoSecondaryRS("quantity")
                    Txtfields(22).SetFocus
                End If
             
         End If
         If Opt = "updat" Then
             Call disabletxt
             Txtfields(7).Locked = False
             Txtfields(7).SetFocus
         End If
'         txtFields(22).Locked = True
'         txtFields(23).Locked = True
         Txtfields(24).Locked = True
         Txtfields(25).Locked = True
         Txtfields(26).Locked = True
         Txtfields(27).Locked = True
         Txtfields(10).Locked = False
         MaskEdBox1(1).Enabled = False
         
        Set rsa = New Recordset
        rsa.Open "select ratecy from rm_lot where lotno='" & Txtfields(1).Text & "' and lotdt ='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            Txtfields(25).Text = rsa(0)
        End If
        MaskEdBox1(2).Mask = pdate
        MaskEdBox1(0).Mask = pdate
        BUTTON(1).Enabled = False
        BUTTON(3).Enabled = False
        BUTTON(2).Enabled = False
        Call BUTTON_Click(1)
        SSTab2.Tab = 0
        Txtfields(48).SetFocus
                
End If

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmQualparam", vbInformation, head
End Sub

Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

    Frame6.Visible = False
    Frame1.Visible = True
    Frame5.Visible = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT * FROM rm_lot WHERE lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'AND opflg <>'Y' and ins_flg='Y' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "' AND (isnull(netwt,0) - isnull(isswt,0)) >0 Order by Lotdt,lotno", DB, adOpenStatic

    If adoPrimaryRS.EOF = True Then
        MsgBox "No Records Found", vbInformation, head
'        Exit Sub
    Else
        adoPrimaryRS.MoveLast
        SSTab2.Visible = True
        SSTab2.TabVisible(2) = False
        SSTab2.TabVisible(3) = False
'        Exit Sub
    End If
 
    Call NEWFORM1(BUTTON, GSNO)
    SSTab2.Visible = True
    SSTab2.TabVisible(2) = True
    SSTab2.TabVisible(3) = True
'   DB.CommitTrans

Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_DblClick()
On Error GoTo DataGrid1_DblClick_Error

Call Command3_Click

Exit Sub
DataGrid1_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_DblClick of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo DataGrid1_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
'    If BUTTON(0).Enabled = True Then
'        Call BUTTON_Click(0)    ''Add
'    End If
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
'ElseIf KeyCode = vbKeyP And Shift = 2 Then
'    If BUTTON(12).Enabled = True Then
'        'Call BUTTON_Click(12)   ''Print Option
'    End If
'ElseIf KeyCode = vbKeyY And Shift = 2 Then
'    If BUTTON(13).Enabled = True Then
'        'Call BUTTON_Click(13)   ''Crystal Report
'    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
DataGrid1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyDown of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
On Error GoTo DataGrid1_KeyPress_Error

If KeyAscii = 13 Then
    Call Command3_Click
End If
If Opt = "updat" Then
    Call disabletxt
    SSTab2.Tab = 0
    Txtfields(62).Locked = False
    Txtfields(62).SetFocus
End If
'KeyAscii = 0

Exit Sub
DataGrid1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyPress of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid2_Click()

End Sub

Private Sub Form_Activate()
    If BUTTON(1).Enabled = True Then BUTTON(1).SetFocus
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
intervalMinutes = -1
If KeyCode = vbKeyA And Shift = 2 Then
'    If BUTTON(0).Enabled = True Then
'        Call BUTTON_Click(0)    ''Add
'    End If
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
'ElseIf KeyCode = vbKeyP And Shift = 2 Then
'    If BUTTON(12).Enabled = True Then
'        Call BUTTON_Click(12)   ''Print Option
'    End If
'ElseIf KeyCode = vbKeyY And Shift = 2 Then
'    If BUTTON(13).Enabled = True Then
'        Call BUTTON_Click(13)   ''Crystal Report
'    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
ElseIf KeyCode = 27 Then
 If MsgBox("Are you sure want to cancel", vbYesNo, head) = vbYes Then
       Call BUTTON_Click(10)
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
Dim rstLoad As Recordset
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
  Opt = "Query"
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  Set tempdb = New Connection
  tempdb.CursorLocation = adUseClient
  tempdb.Open "PROVIDER=MSDataShape;" + connectstring
  'TabStrip1.Tabs.Clear
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
'  SSTab2.Visible = False
 ' BUTTON(9).Enabled = False
    SSTab2.TabVisible(1) = False
    SSTab2.TabVisible(2) = False
 
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT TOP 1 * FROM rm_lot WHERE Fappflg ='Y' and lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' AND opflg <>'Y' AND ins_flg='Y' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "' Order by Lotdt desc,lotno desc", DB, adOpenStatic

    If adoPrimaryRS.EOF = True Then
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    Else
        adoPrimaryRS.MoveLast
        
    End If
 intervalMinutes = -1
'   Call QUERY_MODE
'   Call NEWFORM(BUTTON, 14)
  'Frame1.Visible = True
  'Frame5.Visible = True
   Call NEWFORM1(BUTTON, GSNO)
   SSTab2.Visible = True
   
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmQualparam", vbInformation, head
  End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
intervalMinutes = -1
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  Set adoPrimaryRS = Nothing
  Reset

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
  End Sub
Public Sub clearval()
On Error GoTo clearval_Error

For I = 0 To 10
  Txtfields(I).Text = ""
Next

Exit Sub
clearval_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure clearval of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub disabletxt()
On Error GoTo disabletxt_Error

For I = 0 To 10
  Txtfields(I).Locked = True
Next

Exit Sub
disabletxt_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disabletxt of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
On Error GoTo disablcontls_Error

    For Each oText In Me.Txtfields
        oText.Locked = True
    Next

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
On Error GoTo ENABLCONTLS_Error

    For Each oText In Me.Txtfields
        oText.Locked = False
    Next
    
    
Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub ClearControls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
On Error GoTo ClearControls_Error

    For Each oText In Me.Txtfields
        oText.Text = ""
    Next
    Txtfrombaleno.Text = ""
    TxtTobaleno.Text = ""
ChkApp.value = False
Exit Sub
ClearControls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ClearControls of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Text1_KeyPress(KeyAscii As Integer)
On Error GoTo Text1_KeyPress_Error

KeyAscii = 0

Exit Sub
Text1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_KeyPress of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text2_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub
Private Sub Text3_KeyPress(KeyAscii As Integer)
On Error GoTo Text3_KeyPress_Error

On Error GoTo Text3_KeyPress_Error

KeyAscii = 0

Exit Sub
Text3_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text3_KeyPress of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0
End Sub



Private Sub grid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grid_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
'    If BUTTON(0).Enabled = True Then
'        Call BUTTON_Click(0)    ''Add
'    End If
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
        'Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        'Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
grid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grid_KeyDown of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub grid_LostFocus()
On Error GoTo grid_LostFocus_Error

     BUTTON(9).SetFocus

Exit Sub
grid_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grid_LostFocus of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub MaskEdBox1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox1_KeyDown_Error

If KeyCode = 13 And Opt = "updat" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
MaskEdBox1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_KeyDown of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option3_Click()
    If Option3.value = True Then BUTTON(9).Enabled = True: BUTTON(9).SetFocus

End Sub

Private Sub Option4_Click()
    If Option4.value = True Then BUTTON(9).Enabled = True: BUTTON(9).SetFocus
End Sub

Private Sub SSTab1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SSTab1_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
'    If BUTTON(0).Enabled = True Then
'        Call BUTTON_Click(0)    ''Add
'    End If
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
'ElseIf KeyCode = vbKeyP And Shift = 2 Then
'    If BUTTON(12).Enabled = True Then
'        Call BUTTON_Click(12)   ''Print Option
'    End If
'ElseIf KeyCode = vbKeyY And Shift = 2 Then
'    If BUTTON(13).Enabled = True Then
'        Call BUTTON_Click(13)   ''Crystal Report
'    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SSTab2_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SSTab2_KeyDown_Error

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
SSTab2_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab2_KeyDown of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Change(Index As Integer)
'On Error GoTo txtFields_Change_Error
intervalMinutes = -1
Dim tot As Integer
On Error GoTo Txtfields_Change_Error
If Index = 78 Then Txtfields(80).Text = getMasterName("cntname", "RM_count", "cntCD", Trim(Txtfields(78).Text))
If Opt = "add" Then
    Select Case Index
        Case 7
            Txtfields(7).Text = getMasterName("AREANAME", "RM_AREA", "aREACODE", Trim(Txtfields(32).Text))
        Case 33
            Txtfields(33).Text = getMasterName("STATE", "RM_AREA", "aREACODE", Trim(Txtfields(32).Text))
        Case 78
            Txtfields(80).Text = getMasterName("cntname", "RM_count", "cntCD", Trim(Txtfields(78).Text))
        Case 91
            Txtfields(93).Text = getMasterName("spname", "RM_Spotpass", "spcode", Trim(Txtfields(91).Text))
        
        Case 22 'Accepted Qty
            tot = val(Txtfields(22).Text) + val(Txtfields(23).Text) + val(Txtfields(24).Text)
            If tot > val(Txtfields(21).Text) Then
                MsgBox "Quantity inspected must be less than or equal to Quantity arrived", vbInformation, head
                Txtfields(22).Text = Txtfields(21).Text
            End If
        
        Case 23 'Rejected Qty
            If val(Txtfields(23).Text) > val(Txtfields(21).Text) Then
                MsgBox "Rejected Quantity should not be greater than Quantity arrived", vbInformation, head
                Txtfields(23).SetFocus
            Else
                Txtfields(22).Text = val(val(Txtfields(21).Text) - val(Txtfields(23).Text))
            End If

'            If val(txtfields(22).Text) + val(txtfields(23).Text) + val(txtfields(24).Text) > '                val(txtfields(21).Text) Then
'                MsgBox "Quantity inspected should not be greater than Quantity arrived", vbInformation, head
'                txtfields(23).SetFocus
'            End If
        
'        Case 24 'Accepted with allowance Qty
'            If Val(txtFields(22).Text) + Val(txtFields(23).Text) + Val(txtFields(24).Text) > '                Val(txtFields(21).Text) Then
'                MsgBox "Quantity inspected should not be greater than Quantity arrived", vbInformation, head
'                txtFields(24).SetFocus
'            End If
        Case 24 'Accepted with allowance Qty
            If val(Txtfields(22).Text) + val(Txtfields(23).Text) > val(Txtfields(24).Text) And val(Txtfields(24).Text) > val(Txtfields(21).Text) Then
                MsgBox "Quantity inspected must be less than or equal to Quantity arrived", vbInformation, head
                Txtfields(24).SetFocus
            End If
            
    End Select
End If
    If Opt = "mod" Or Opt = "add" Then
        Select Case Index
            Case 22 'Accepted Qty
                tot = val(Txtfields(22).Text) + val(Txtfields(23).Text) + val(Txtfields(24).Text)
                If tot > val(Txtfields(21).Text) Then
                    MsgBox "Quantity inspected must be less than or equal to Quantity arrived", vbInformation, head
                    Txtfields(22).Text = Txtfields(21).Text
                End If
            
            Case 23 'Rejected Qty
                If val(Txtfields(23).Text) > val(Txtfields(21).Text) Then
                    MsgBox "Rejected Quantity should not be greater than Quantity arrived", vbInformation, head
                    Txtfields(23).SetFocus
                Else
                    Txtfields(22).Text = val(val(Txtfields(21).Text) - val(Txtfields(23).Text))
                End If
    
            Case 24 'Accepted with allowance Qty
                If val(Txtfields(22).Text) + val(Txtfields(23).Text) > val(Txtfields(24).Text) And val(Txtfields(24).Text) > val(Txtfields(21).Text) Then
                    MsgBox "Quantity inspected must be less than or equal to Quantity arrived", vbInformation, head
                    Txtfields(24).SetFocus
                End If
        End Select
            Txtfields(18).Text = val(Txtfields(46).Text) * val(Txtfields(11).Text)
            
            'FQI
            'TXTFIELDS(61).Text = val(TXTFIELDS(49).Text) * val(TXTFIELDS(54).Text) * val(TXTFIELDS(43).Text)
            If val(Txtfields(49).Text) * val(Txtfields(54).Text) * val(Txtfields(43).Text) = 0 Then
'                Txtfields(61).Text = "0.00"
            Else
               If val(Txtfields(13).Text) <> 0 Then
                    If val(Txtfields(61).Text) = 0 Then Txtfields(61).Text = Format(Round((val(Txtfields(49).Text) * val(Txtfields(54).Text) * val(Txtfields(43).Text)) / val(Txtfields(13).Text), 2), "0.00")
               End If
            End If
            'SCI
            'TXTFIELDS(62).Text = (-364.6 + (2.9 * val(TXTFIELDS(54).Text)) - 9.32 * val(TXTFIELDS(13).Text)) + (1.92 * val(TXTFIELDS(48).Text)) + (8.73 * val(TXTFIELDS(47).Text))
            'If val(TXTFIELDS(62).Text) = 0 Then TXTFIELDS(62).Text = Format(Round(-364.6 + (2.9 * val(TXTFIELDS(54).Text) - 9.32 * val(TXTFIELDS(13).Text)) + (1.92 * val(TXTFIELDS(48).Text)) + (8.73 * val(TXTFIELDS(47).Text)), 2), "0.00")
    End If
    Txtfields(61).Locked = False
    Select Case Index
            Case 1
                Txtfields(150).Text = Txtfields(Index).Text
            Case 2
                Txtfields(146).Text = Txtfields(Index).Text
            Case 3
                Txtfields(145).Text = Txtfields(Index).Text
            Case 4
                Txtfields(147).Text = Txtfields(Index).Text
            Case 5
                Txtfields(148).Text = Txtfields(Index).Text
            Case 6
                Txtfields(149).Text = Txtfields(Index).Text
            Case 7
                Txtfields(103).Text = Txtfields(Index).Text
            Case 21
                Txtfields(129).Text = Txtfields(Index).Text
            Case 28
                Txtfields(128).Text = Txtfields(Index).Text
            Case 14
                Txtfields(144).Text = Txtfields(Index).Text
            Case 32
                Txtfields(112).Text = Txtfields(Index).Text
            Case 33
                Txtfields(111).Text = Txtfields(Index).Text
            Case 34
                Txtfields(110).Text = Txtfields(Index).Text
            Case 35
                Txtfields(109).Text = Txtfields(Index).Text
            Case 36
                Txtfields(108).Text = Txtfields(Index).Text
            Case 37
                Txtfields(107).Text = Txtfields(Index).Text
            Case 38
                Txtfields(106).Text = Txtfields(Index).Text
            Case 40
                Txtfields(105).Text = Txtfields(Index).Text
            Case 41
                Txtfields(104).Text = Txtfields(Index).Text
            Case 60
                Txtfields(102).Text = Txtfields(Index).Text
            Case 91
                Txtfields(101).Text = Txtfields(Index).Text
            Case 93
                Txtfields(100).Text = Txtfields(Index).Text
        End Select
Exit Sub
Txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form FrmQualparam", vbInformation, head

End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    If Index = 7 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 3 Integers"
    ElseIf Index = 8 Then
      StatusBar1.Panels(2).Text = "Enter Maximum of 3 Integers"
    ElseIf Index = 9 Then
      StatusBar1.Panels(2).Text = "Enter Maximum of 3 Integers"
    ElseIf Index = 10 Or Index = 22 Or Index = 23 Or Index = 24 Or Index = 25 Or Index = 26 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 3 Integers"
    ElseIf Index = 11 Or Index = 12 Or Index = 46 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers with 4 Decimals"
    ElseIf Index = 62 Then
        StatusBar1.Panels(2).Text = "Enter SCI"
    ElseIf Index = 13 Then
        StatusBar1.Panels(2).Text = "Enter Micronaire, Maximum of 1 Integer with 2 decimals"
    ElseIf Index = 16 Then
        StatusBar1.Panels(2).Text = "Enter Trash%"
    ElseIf Index = 44 Then
        StatusBar1.Panels(2).Text = "Enter Mature"
    ElseIf Index = 42 Then
        StatusBar1.Panels(2).Text = "Enter Moisture Content"
    ElseIf Index = 47 Then
        StatusBar1.Panels(2).Text = "Enter Uniformity Ratio"
    ElseIf Index = 48 Then
        StatusBar1.Panels(2).Text = "Enter 2.5% Span Length"
    ElseIf Index = 49 Then
        StatusBar1.Panels(2).Text = "Enter 50% Span Length"
    ElseIf Index = 53 Then
        StatusBar1.Panels(2).Text = "Enter Grade"
    ElseIf Index = 65 Then
        StatusBar1.Panels(2).Text = "Enter SFI"
    ElseIf Index = 54 Then
        StatusBar1.Panels(2).Text = "Enter G.Tex"
    ElseIf Index = 55 Then
        StatusBar1.Panels(2).Text = "Enter Colour"
    ElseIf Index = 51 Then
        StatusBar1.Panels(2).Text = "Enter Yellow touch"
    ElseIf Index = 64 Then
        StatusBar1.Panels(2).Text = "Enter RD"
    ElseIf Index = 66 Then
        StatusBar1.Panels(2).Text = "Enter Elongation"
    ElseIf Index = 67 Then
        StatusBar1.Panels(2).Text = "Enter TRCNT"
    ElseIf Index = 68 Then
        StatusBar1.Panels(2).Text = "Enter TRArea"
    ElseIf Index = 69 Then
        StatusBar1.Panels(2).Text = "Enter TRGrade"
    ElseIf Index = 70 Then
        StatusBar1.Panels(2).Text = "Enter LINT"
    ElseIf Index = 80 Then
        StatusBar1.Panels(2).Text = "Enter Neps/Gm"
    ElseIf Index = 81 Then
        StatusBar1.Panels(2).Text = "Enter Nep Size"
    ElseIf Index = 82 Then
        StatusBar1.Panels(2).Text = "Enter SCN Size"
    ElseIf Index = 83 Then
        StatusBar1.Panels(2).Text = "Enter L(W)"
    ElseIf Index = 84 Then
        StatusBar1.Panels(2).Text = "Enter SFC(W)"
    ElseIf Index = 85 Then
        StatusBar1.Panels(2).Text = "Enter UQL(W)"
    ElseIf Index = 86 Then
        StatusBar1.Panels(2).Text = "Enter L(n)"
    ElseIf Index = 87 Then
        StatusBar1.Panels(2).Text = "Enter SFC(n)"
    ElseIf Index = 88 Then
        StatusBar1.Panels(2).Text = "Enter 5%"
    ElseIf Index = 89 Then
        StatusBar1.Panels(2).Text = "Enter Fine"
    ElseIf Index = 90 Then
        StatusBar1.Panels(2).Text = "Enter IFC"
    ElseIf Index = 91 Then
        StatusBar1.Panels(2).Text = "Enter MR."
    End If
End If
Txtfields(Index).BackColor = &HC0FFC0

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
Dim I As Integer
On Error GoTo txtfields_KeyDown_Error

If KeyCode = 13 And Opt = "updat" Then
    SendKeys ("{TAB}")
    SendKeys ("{enter}")
    Exit Sub
End If
    
    If KeyCode = vbKeyReturn Then SendKeys ("{tab}")
    
    
If KeyCode = vbKeyA And Shift = 2 Then
'    If BUTTON(0).Enabled = True Then
'        Call BUTTON_Click(0)    ''Add
'    End If
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
'ElseIf KeyCode = vbKeyP And Shift = 2 Then
'    If BUTTON(12).Enabled = True Then
'        'Call BUTTON_Click(12)   ''Print Option
'    End If
'ElseIf KeyCode = vbKeyY And Shift = 2 Then
'    If BUTTON(13).Enabled = True Then
'        'Call BUTTON_Click(13)   ''Crystal Report
'    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
'If Opt = "updat" Then
On Error GoTo txtfields_KeyPress_Error
intervalMinutes = -1
  Select Case Index
        Case 48, 54, 13, 99, 16, 49, 47, 43, 42, 65, 66, 72, 63, 84, 85, 94, 98, 134, 135
            Call ToNumbernew(Txtfields(Index), 2, KeyAscii, 2, 2)
        Case 126, 132, 113, 133, 127, 125, 123, 138, 124, 137, 122, 136, 121, 120, 118, 114, 153
            Call ToNumbernew(Txtfields(Index), 2, KeyAscii, 2, 2)
        Case 61, 62, 64, 92, 90
            Call ToNumbernew(Txtfields(Index), 3, KeyAscii, 3, 2)
        Case 141, 140, 139, 130, 119
            Call ToNumbernew(Txtfields(Index), 3, KeyAscii, 3, 2)
        Case 49, 77, 71, 74, 75, 53, 64, 73, 59, 76, 50, 44
            Call ToNumbernew(Txtfields(Index), 4, KeyAscii, 4, 2)
        Case 94, 95, 96, 97, 117, 116, 115
            Call ToNumbernew(Txtfields(Index), 2, KeyAscii, 2, 2)
        Case 52, 69, 67, 68, 70, 81, 82, 72, 90, 83, 84, 85, 86, 87, 86, 89, 46, 11, 18, 12
            Call ToNumbernew(Txtfields(Index), 4, KeyAscii, 4, 2)
        Case 88
            Call ToNumbernew(Txtfields(Index), 4, KeyAscii, 4, 0)
        Case 7
            Call tonum(Txtfields(7), 3, KeyAscii)
        Case 8
            Call tonum(Txtfields(8), 3, KeyAscii)
        Case 9
            Call tonum(Txtfields(9), 3, KeyAscii)
        Case 10
            Call tonum(Txtfields(10), 3, KeyAscii)
        Case 23, 24, 25, 26
            Call tonum(Txtfields(10), 3, KeyAscii)
        Case 49
            Call ToNumbernew(Txtfields(49), 5, KeyAscii, 4, 4)
        Case 10
            Call tonum(Txtfields(10), 5, KeyAscii)
        Case 22
            Call tonum(Txtfields(10), 3, KeyAscii)
            If KeyAscii = vbKeyTab Then
                SSTab2.Tab = 3
                Txtfrombaleno.SetFocus
            End If
            
        
  End Select
'End If

Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub txtfields_LostFocus(Index As Integer)
'On Error GoTo txtFields_LostFocus_Error

On Error GoTo txtfields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
    Select Case Index
        Case 22 'Accepted Qty
            If val(Txtfields(22).Text) + val(Txtfields(23).Text) + val(Txtfields(24).Text) > _
                val(Txtfields(21).Text) Then
                MsgBox "Quantity inspected must be less than or equal to Quantity arrived", vbInformation, head
                Txtfields(22).Text = Txtfields(21).Text
            End If
''''************************************
            If val(Txtfields(22).Text) < val(Txtfields(21).Text) Then
                If val(Txtfields(22).Text) > 0 Then
                    CmdReject.Caption = "Accept"
                End If
                Call gridload
            ElseIf val(Txtfields(22).Text) = val(Txtfields(21).Text) Then
                If val(Txtfields(22).Text) > 0 Then
                    CmdReject.Caption = "Reject"
                End If
                Call gridload
                Call acceptqty
            End If
            
        Case 26 'rate/kg
               
                'Combo1.SetFocus
        Case 23 'Rejected Qty
                If val(Txtfields(22).Text) + val(Txtfields(23).Text) <= val(Txtfields(21).Text) Then
'                    If Table_Exists("rm_acceptqty") = False Then Exit Sub
'                    Set rsa = New Recordset
'                    rsa.Open "select * from rm_acceptqty", DB, adOpenStatic
'                    If rsa.RecordCount > 0 Then
                    If val(Txtfields(23).Text) > 0 And val(Txtfields(22).Text) > 0 Then
                            CmdReject.Caption = "Reject"
                            Call acceptqty
                        
                    ElseIf val(Txtfields(23).Text) = 0 Then
                            Call gridload
                            Call acceptqty
                    End If
                    
                    Txtfrombaleno.SetFocus
'                    SSTab1.Tab = 2
                    
                    
                    
                Else
                    MsgBox "Rejection Quantity should not be greater than " & val(Txtfields(21).Text), vbInformation, head
                    Txtfields(23).Text = 0
                    Txtfields(23).SetFocus
                    Exit Sub
                End If
'            If val(txtfields(22).Text) + val(txtfields(23).Text) + val(txtfields(24).Text) > _
'                val(txtfields(21).Text) Then
'                MsgBox "Quantity inspected should not be greater than Quantity arrived", vbInformation, head
'                txtfields(23).Text = " "
'                txtfields(23).SetFocus
'            End If
        
        Case 24 'Accepted with allowance Qty
'            If Val(txtFields(22).Text) + Val(txtFields(23).Text) + Val(txtFields(24).Text) > _
'                Val(txtFields(21).Text) Then
        If val(Txtfields(24).Text) > val(Txtfields(23).Text) Then
        '    MsgBox "Accepted with Allowance Bales cannot be Greater then Rejected Bales", vbInformation, head
            Txtfields(24).Text = ""
            Txtfields(24).SetFocus
            Exit Sub
        End If
             If val(Txtfields(22).Text) + val(Txtfields(23).Text) > val(Txtfields(24).Text) And val(Txtfields(24).Text) > val(Txtfields(21).Text) Then
                MsgBox "Quantity inspected must be less than or equal to Quantity arrived", vbInformation, head
                Txtfields(24).SetFocus
            Else
                Txtfields(25).Enabled = True
                Txtfields(26).Enabled = True
                Txtfields(56).SetFocus
            End If
            If Txtfields(21).Text > 0 Then
               Txtfields(25).Locked = False
               Txtfields(26).Locked = False
            End If
            Combo1.Text = "Y"
            If Txtfields(24) = "" Then
            Combo1.Text = "N"
            End If
            
    Case 56
               If val(Trim(Txtfields(56).Text)) <= val(Trim(Txtfields(38).Text)) Then
                    Txtfields(25).Text = val(Trim(Txtfields(38).Text)) - val(Trim(Txtfields(56).Text))
               Else
                MsgBox "Please enter a valid Allowance Amount"""
                SSTab2.Tab = 2
                Txtfields(56).SetFocus
               End If
                Call RateKgAccWithAllow
              If val(Txtfields(29).Text) > 0 Then
                Txtfields(29).SetFocus
              End If
    Case 49
            If val(Txtfields(49).Text) <= 0 Then
'                MsgBox "Enter 50 % Span Length (MM) ", vbInformation, head
'                If txtFields(49).Enabled = True Then
'                    SSTab2.Tab = 0
''                    txtFields(Index).BackColor = &HFFFFFF
'                    txtFields(49).SetFocus
'                    Exit Sub
'                End If
            End If
    Case 13
            If val(Txtfields(13).Text) <= 0 Then
'                MsgBox "Enter Micronaire ", vbInformation, head
'                If txtFields(13).Enabled = True Then
'                    SSTab2.Tab = 0
'                    txtFields(13).SetFocus
'                    Exit Sub
'                End If
'            Else
'                txtFields(54).SetFocus
            End If
       
            
        Case 54
            If val(Txtfields(54).Text) <= 0 Then
'                MsgBox "Enter Strength(G.Tex) ", vbInformation, head
'                If txtFields(54).Enabled = True Then
'                    SSTab2.Tab = 0
'                    txtFields(54).SetFocus
'                    Exit Sub
'                End If
'            Else
'                txtFields(66).SetFocus
            End If
        Case 52
            If val(Txtfields(52).Text) <= 0 Then
'                MsgBox "Enter Mature ", vbInformation, head
'                If txtFields(52).Enabled = True Then
'                    SSTab2.Tab = 0
'                    txtFields(52).SetFocus
'                    Exit Sub
'                End If
            End If
    Case 76
            Dim LotRs As Recordset
            Set LotRs = New Recordset
            LotRs.Open "Select ContNo,ContDt from RM_Arrival where LotNo='" & Txtfields(1).Text & "' and LotDt='" & Format(Txtfields(2).Text, "yyyy-MM-dd") & "'", DB, adOpenStatic
            If LotRs.RecordCount > 0 Then
                vContNo = LotRs("ContNo")
                vcontdt = LotRs("ContDt")
                Set LotRs = New Recordset
                LotRs.Open "Select CntCode from RM_Cont where ContNo='" & vContNo & "' and ContDt='" & Format(vcontdt, "yyyy-MM-dd") & "'", DB, adOpenStatic
                If LotRs.RecordCount > 0 Then
                    vMixGrp = LotRs("CntCode")
                End If
            Else
                Set LotRs = New Recordset
                LotRs.Open "Select CntCode from RM_Lot where LotNo='" & Txtfields(1).Text & "' and LotDt='" & Format(Txtfields(2).Text, "yyyy-MM-dd") & "'", DB, adOpenStatic
                If LotRs.RecordCount > 0 Then
                    vCntCode = LotRs("CntCode")
                    Set LotRs = New Recordset
                    LotRs.Open "Select MixGrpCd from RM_Count where CntCd='" & vCntCode & "' ", DB, adOpenStatic
                    If LotRs.RecordCount > 0 Then
                        vMixGrp = LotRs("MixGrpCd")
                    End If
                End If
            End If
            
            Dim MixRs As Recordset
            Set MixRs = New Recordset
            MixRs.Open "Select NumCount from RM_MixGrp where MixGrpCd='" & vMixGrp & "' ", DB, adOpenStatic
            If MixRs.RecordCount > 0 Then
                vNumCount = MixRs("NumCount")
            End If
            
            If val(Txtfields(13).Text) > 0 Then vfqi = (val(Txtfields(49).Text) * val(Txtfields(54).Text) * val(Txtfields(52).Text)) / val(Txtfields(13).Text) Else vfqi = 0
            
            vCSP = (280 * Sqr(vfqi)) + 700 - (13 * vNumCount)
            
            vExNoils = ((val(Txtfields(76).Text) / 2) / 100) + 1
            
            If vExNoils > 0 Then
                If vCSP <> Null Then Txtfields(18).Text = Round(vCSP * vExNoils, 2)
            Else
                Txtfields(18).Text = Round(vCSP, 2)
            End If
    
    End Select
End If
    If Opt = "add" Or Opt = "mod" Or Opt = "Query" Then
        If Index = 91 Then
            Set Rs = New Recordset
            Rs.Open "select * from rm_Spotpass where spcode='" & Trim(Txtfields(81).Text) & "'", DB, adOpenStatic
            If Rs.RecordCount = 0 Then
                LookUp.Clear = True
                LookUp.query = "select spcode""SPOT Passing Person"",spname""SPOT Passing Person Name"" from rm_SPotpass"
                LookUp.Caption = "SPOT Passing Person Listing"
                LookUp.DefCol = "SPOT Passing Person Name"
                LookUp.ALIGN = "3000,5500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    Txtfields(91).Text = LookUp.Fields(0)
                    Txtfields(93).Text = LookUp.Fields(1)
                    SSTab2.Tab = 0
                    Txtfields(48).SetFocus
                    Txtfields(Index).BackColor = &HFFFFFF
                    Exit Sub
                Else
                    Txtfields(91).Text = ""
                    Txtfields(93).Text = ""
                    SSTab2.Tab = 0
                    Txtfields(48).SetFocus
                    Txtfields(Index).BackColor = &HFFFFFF
                    Exit Sub
                End If
            End If
        End If
    End If
If Opt = "Query" Then
Select Case Index
    Case 49
            If val(Txtfields(49).Text) <= 0 Then
'                MsgBox "Please Enter 50 % Span Length (MM)", vbInformation, head
'                If Txtfields(49).Enabled = True Then
'                    SSTab2.Tab = 0
''                    txtFields(Index).BackColor = &HFFFFFF
'                    Txtfields(49).SetFocus
'                    Exit Sub
'                End If
            End If
    Case 13
            If val(Txtfields(13).Text) <= 0 Then
'                MsgBox "Please Enter Micronaire", vbInformation, head
'                If Txtfields(13).Enabled = True Then
'                    SSTab2.Tab = 0
'                    Txtfields(13).SetFocus
'                    Exit Sub
'                End If
            Else
                Txtfields(54).SetFocus
            End If
       
            
        Case 54
            If val(Txtfields(54).Text) <= 0 Then
'                MsgBox "Please Enter Strength(G.Tex)", vbInformation, head
'                If Txtfields(54).Enabled = True Then
'                    SSTab2.Tab = 0
'                    Txtfields(54).SetFocus
'                    Exit Sub
'                End If
'            Else
'                Txtfields(66).SetFocus
            End If
        Case 52
            If val(Txtfields(52).Text) <= 0 Then
'                MsgBox "Please Enter Mature", vbInformation, head
'                If Txtfields(52).Enabled = True Then
'                    SSTab2.Tab = 0
'                    Txtfields(52).SetFocus
'                    Exit Sub
'                End If
            End If
    Case 76
'            Dim LotRs As Recordset
            Set LotRs = New Recordset
            LotRs.Open "Select ContNo,ContDt from RM_Arrival where LotNo='" & Txtfields(1).Text & "' and LotDt='" & Format(Txtfields(2).Text, "yyyy-MM-dd") & "'", DB, adOpenStatic
            If LotRs.RecordCount > 0 Then
                vContNo = LotRs("ContNo")
                vcontdt = LotRs("ContDt")
                Set LotRs = New Recordset
                LotRs.Open "Select CntCode from RM_Cont where ContNo='" & vContNo & "' and ContDt='" & Format(vcontdt, "yyyy-MM-dd") & "'", DB, adOpenStatic
                If LotRs.RecordCount > 0 Then
                    vMixGrp = LotRs("CntCode")
                End If
            Else
                Set LotRs = New Recordset
                LotRs.Open "Select CntCode from RM_Lot where LotNo='" & Txtfields(1).Text & "' and LotDt='" & Format(Txtfields(2).Text, "yyyy-MM-dd") & "'", DB, adOpenStatic
                If LotRs.RecordCount > 0 Then
                    vCntCode = LotRs("CntCode")
                    Set LotRs = New Recordset
                    LotRs.Open "Select MixGrpCd from RM_Count where CntCd='" & vCntCode & "' ", DB, adOpenStatic
                    If LotRs.RecordCount > 0 Then
                        vMixGrp = LotRs("MixGrpCd")
                    End If
                End If
            End If
            
'            Dim MixRs As Recordset
            Set MixRs = New Recordset
            MixRs.Open "Select NumCount from RM_MixGrp where MixGrpCd='" & vMixGrp & "' ", DB, adOpenStatic
            If MixRs.RecordCount > 0 Then
                vNumCount = MixRs("NumCount")
            End If
            If val(Txtfields(13).Text) <> 0 Then vfqi = (val(Txtfields(49).Text) * val(Txtfields(54).Text) * val(Txtfields(52).Text)) / val(Txtfields(13).Text) Else vfqi = 0
            
            vCSP = (280 * Sqr(vfqi)) + 700 - (13 * vNumCount)
            
            vExNoils = ((val(Txtfields(76).Text) / 2) / 100) + 1
            
            If vExNoils > 0 Then
                If vCSP <> Null Then Txtfields(18).Text = Round(vCSP * vExNoils, 2)
            Else
                Txtfields(18).Text = Round(vCSP, 2)
            End If
   Case 78
    
        Set Rs = New Recordset
        Rs.Open "select * from rm_count where cntcd='" & Trim(Txtfields(78).Text) & "'", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            LookUp.Clear = True
            LookUp.query = "select cntcd""Mixing Count Code"",cntname""Mixing Count Name"" from rm_count"
            LookUp.Caption = "Mixing Count Listing"
            LookUp.DefCol = "Mixing Count Name"
            LookUp.ALIGN = "2000,5500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Txtfields(78).Text = LookUp.Fields(0)
                Txtfields(80).Text = LookUp.Fields(1)
                Txtfields(80).Locked = True
                LookUp.Clear = True
                Option3.SetFocus
                Exit Sub
            Else
                Txtfields(78).Text = ""
                Txtfields(80).Text = ""
                Txtfields(80).Locked = True
                LookUp.Clear = True
                Option3.SetFocus
                Exit Sub
            End If
        Else
                Txtfields(78).Text = ""
                Txtfields(80).Text = ""
                Txtfields(80).Locked = True
                LookUp.Clear = True
                Option3.SetFocus
            Exit Sub
        End If
    End Select

End If


StatusBar1.Panels(2).Text = ""
If Index = 79 Then
    SSTab2.Tab = 2
    BUTTON(9).SetFocus
End If


If Index = 15 Then
    SSTab2.Tab = 1
    Txtfields(78).SetFocus
End If

If Index = 79 Then
    If Opt = "add" Then
        SSTab2.Tab = 1
        If BUTTON(9).Enabled = True Then BUTTON(9).SetFocus
        Exit Sub
    Else
        If BUTTON(9).Enabled = True Then BUTTON(9).SetFocus
        Exit Sub
    End If
End If

Txtfields(Index).BackColor = &HFFFFFF
Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form FrmQualparam", vbInformation, head

Screen.MousePointer = 0
'Resume
End Sub

Private Sub filltestdetails()
Dim rstestdetls As Recordset
On Error GoTo filltestdetails_Error

On Error GoTo filltestdetails_Error

    Set rstestdetls = New Recordset
    rstestdetls.Open "select sno,isnull(staplen25,0) as stplen25,isnull(staplen50,0) as stplen50,isnull(uniratio,0) as uniratio,isnull(mcoeff,0) as mcoeff,isnull(strength,0) as strength,isnull(trash_per,0) as trash,micronaire as micronaire from rm_SAMPLE where divcode = '" & Divcode & "'  AND SNO in (SELECT distinct SNO FROM RM_CONT WHERE CONTNO IN (SELECT DISTINCT CONTNO FROM RM_ARRIVAL WHERE ARRNO=" & adoSecondaryRS("arrno") & " and arrdate='" & Format(adoSecondaryRS("arrdate"), "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "') AND CONTDT IN (SELECT DISTINCT CONTDT FROM RM_ARRIVAL WHERE ARRNO=" & adoSecondaryRS("arrno") & " and arrdate='" & Format(adoSecondaryRS("arrdate"), "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'))", DB, adOpenStatic

    If rstestdetls.RecordCount > 0 Then
    
        'Category
        If adoSecondaryRS("catcd").value = "" Then
             Txtfields(0).Text = ""
        Else
             Txtfields(0).Text = adoSecondaryRS("catcd")
        End If
    
        'Mill lot no
        If adoSecondaryRS("lotno").value = "" Then
             Txtfields(1).Text = ""
        Else
             Txtfields(1).Text = adoSecondaryRS("lotno")
        End If
        
        
        If rstestdetls("StpLen50").value = "" Then
             Txtfields(8).Text = ""
        Else
             Txtfields(8).Text = rstestdetls("StpLen50")
        End If
        
        If rstestdetls("UniRatio").value = "" Then
             Txtfields(9).Text = ""
        Else
             Txtfields(9).Text = rstestdetls("UniRatio")
        End If
    
        If rstestdetls("MCoeff").value = "" Then
             Txtfields(10).Text = ""
        Else
             Txtfields(10).Text = rstestdetls("MCoeff")
        End If
    
        If rstestdetls("StrengTh").value = "" Then
             Txtfields(11).Text = ""
        Else
             Txtfields(11).Text = rstestdetls("StrengTh")
        End If
        
        If rstestdetls("Trash").value = "" Then
             Txtfields(12).Text = ""
        Else
             Txtfields(12).Text = rstestdetls("Trash")
        End If
    
        If rstestdetls("MicronairE").value = "" Then
             Txtfields(13).Text = ""
        Else
             Txtfields(13).Text = rstestdetls("MicronairE")
        End If
        
'        If rstestdetls("Mature").Value = "" Then
'             txtFields(16).Text = ""
'        Else
'             txtFields(16).Text = rstestdetls("Mature")
'        End If
'
'        If rstestdetls("Hmature").Value = "" Then
'             txtFields(15).Text = ""
'        Else
'             txtFields(15).Text = rstestdetls("Hmature")
'        End If
'
'        If rstestdetls("Immature").Value = "" Then
'             txtFields(18).Text = ""
'        Else
'             txtFields(18).Text = rstestdetls("Immature")
'        End If
    End If


Exit Sub
filltestdetails_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure filltestdetails of Form FrmQualparam", vbInformation, head

Screen.MousePointer = 0
End Sub

Private Sub delmodok_Click()
    'Set CheckRs = New Recordset
    'CheckRs.Open "select arrno,arrdate,lotstatus from rm_arrival where arrdate > ='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and passdt is null and passed is null and LOTSTATUS IS NULL or LOTSTATUS = '" & lotsts1 & "' and divcode='" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
    'If CheckRs.RecordCount > 0 Then
On Error GoTo delmodok_Click_Error

    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP FROM RM_LOT WHERE (isswt is null  or isswt =0)and (issbal is null or issbal =0) and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'A' and opflg='N'", DB, adOpenStatic, adLockOptimistic
    'adoPrimaryRS.Open "select arrNO,arrdate FROM rm_arrival WHERE divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype is null and lotno is null and lotdt is null and passed is not null ", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount <> 0 Then
        Set Rs = New Recordset
    Rs.Open "select arrno""Arr.No."",arrdate ""Date"" from rm_arrival where divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype is null and lotno is null and lotdt is null and passed is not null ", DB, adOpenStatic, adLockBatchOptimistic
    Frame9.Visible = True
    Frame9.ZOrder
    Set DataGrid1.DataSource = Rs
    DataGrid1.Visible = True
    DataGrid1.Columns(0).Width = 854.9292
    DataGrid1.Columns(1).Width = 1365.165
    'DataGrid1.Columns(2).Width = 1739.906
    'DataGrid1.Columns(3).Width = 2489.953
    'DataGrid1.Columns(4).Width = 1035.213
    DB.BeginTrans
'            Set adoSecondaryRS = New Recordset
'            adoSecondaryRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,lottype,arrdt  FROM RM_BALE WHERE isqty is null and lottype = 'A' ", db, adOpenStatic, adLockBatchOptimistic
        Else
            MsgBox "Deletion is not allowed!", vbInformation, head
            'Call QUERY_MODE
'            Call Form_Load
           ' BUTTON(0).Enabled = True
            BUTTON(1).Enabled = True
            BUTTON(2).Enabled = True
            BUTTON(4).Enabled = True
            BUTTON(5).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(8).Enabled = True
            BUTTON(11).Enabled = True
            
            Exit Sub
            
        End If
'Else
    'MsgBox "All Lots are Used.Delettion/Modification Not allowed!", vbInformation, head
    'Exit Sub
'End If


Exit Sub
delmodok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodok_Click of Form FrmQualparam", vbInformation, head
End Sub

Private Sub fn_mod()

On Error GoTo fn_mod_Error

'BUTTON(1).Enabled = True
'BUTTON(3).Enabled = True
'BUTTON(4).Enabled = True
'BUTTON(5).Enabled = True
'BUTTON(6).Enabled = True
'BUTTON(7).Enabled = True
'BUTTON(8).Enabled = True
BUTTON(9).Enabled = True
BUTTON(10).Enabled = True
 On Error Resume Next
'If opt = "add" o Then
If Opt = "list" Or Opt = "add" Or Opt = "del" Then
         Call ENABLCONTLS
'
         Txtfields(48).Text = ""
         Txtfields(49).Text = ""
         Txtfields(47).Text = ""
         Txtfields(43).Text = ""
         Txtfields(11).Text = ""
         Txtfields(43).Text = ""
         Txtfields(11).Text = ""
         Txtfields(16).Text = ""
         Txtfields(13).Text = ""
         Txtfields(44).Text = ""
         Txtfields(52).Text = ""
         Txtfields(50).Text = ""
         Txtfields(61).Text = ""
         Txtfields(62).Text = ""
         Txtfields(78).Text = ""
         Txtfields(79).Text = ""
         Txtfields(15).Text = ""
         Txtfields(55).Text = ""
         Txtfields(62).Text = ""
         Txtfields(54).Text = ""
         Txtfields(42).Text = ""
         Txtfields(64).Text = ""
         Txtfields(63).Text = ""
         Txtfields(53).Text = ""
         Txtfields(18).Text = ""
         Txtfields(65).Text = ""
         Txtfields(66).Text = ""
         Txtfields(67).Text = ""
         Txtfields(68).Text = ""
         Txtfields(69).Text = ""
         Txtfields(70).Text = ""
         Txtfields(71).Text = ""
         Txtfields(72).Text = ""
         Txtfields(73).Text = ""
         Txtfields(74).Text = ""
         Txtfields(75).Text = ""
         Txtfields(76).Text = ""
         Txtfields(77).Text = ""
         Txtfields(46).Text = ""
         Txtfields(12).Text = ""
         Txtfields(45).Text = ""
         Txtfields(10).Text = ""
         Txtfields(59).Text = ""
         Txtfields(80).Text = ""
         Txtfields(81).Text = ""
         Txtfields(82).Text = ""
         Txtfields(83).Text = ""
         Txtfields(84).Text = ""
         Txtfields(85).Text = ""
         Txtfields(86).Text = ""
         Txtfields(87).Text = ""
         Txtfields(88).Text = ""
         Txtfields(89).Text = ""
         Txtfields(90).Text = ""
         Txtfields(91).Text = ""
         Txtfields(92).Text = ""
         Txtfields(13).Text = ""
         Txtfields(23).Text = ""
         
         Set adoSecondaryRS = New Recordset
         'ADOSECONDARYRS.Open "select b.varname,c.cntname,d.slcode,d.slname from rm_var b,rm_cont c,fa_slmas d where substr(b.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "' and substr(c.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "' and substr(d.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "'", Db, adOpenStatic, adLockBatchOptimistic
         
         'ADOSECONDARYRS.Open "select a.supcd,b.varname,c.cntname,d.slname,isnull(e.staplen,0) from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.divcode = e.divcode and e.divcode = '" & Divcode & "' and a.lotno = '" & DataGrid1.Columns(1).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and a.catcd = '" & DataGrid1.Columns(0).Text & "' and a.varcode = b.varcode and a.cntcode = c.cntcd and a.supcd = d.slcode and a.lotno = e.lotno", DB, adOpenStatic, adLockBatchOptimistic
         'Ravi 24-10-2002 ADOSECONDARYRS.Open "select distinct a.supcd,b.varname,e.cntcode,d.slname,isnull(e.staplen,0) from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.divcode = e.divcode and e.divcode = '" & Divcode & "' and a.lotno = '" & DataGrid1.Columns(1).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and e.catcd = '" & DataGrid1.Columns(0).Text & "' and a.varcode = b.varcode and a.cntcode = c.mixgrpcd and a.supcd = d.slcode and a.lotno = e.lotno", DB, adOpenStatic, adLockBatchOptimistic
         'ADOSECONDARYRS.Open "select distinct a.supcd,b.varname,e.cntcode,d.slname,isnull(e.staplen,0) as stplen25,isnull(staplen50,0) as stplen50,isnull(uniratio,0) as uniratio,isnull(mcoeff,0) as mcoeff,isnull(strength,0) as strenght,isnull(trash_per,0) as trash,micronaire As micronair,ISNULL(a.PLOTNO,'')AS PLOTNO  from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.divcode = e.divcode and e.divcode = '" & Divcode & "' and a.lotno = '" & DataGrid1.Columns(0).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(1).Text, "yyyy-mm-dd") & "' and e.catcd = '" & DataGrid1.Columns(0).Text & "' and a.varcode = b.varcode and a.cntcode = c.mixgrpcd and a.supcd = d.slcode and a.lotno = e.lotno and a.varcode=e.varcode", DB, adOpenStatic, adLockBatchOptimistic
         
         'adoSecondaryRS.Open "select CATCD,arrdate,lotno, SUPCD, VARCODE,CNTCODE,QUANTITY,GROSSWT, " & _
            "TAREWT,NETWT,arrno,bbflag,passbl,isgodown,plotno, accqty, accdt, rejqty, rejdt,prno,prmark,remarks," & _
            "accallowqty, accallowdt, accallowrtpercandy, accallowrtperkg, " & _
            "(select ISNULL(rateKG,0) from rm_cont where contdt between '" & Format(yfdate, "yyyy/mm/dd") & _
            "' and '" & Format(yldate, "yyyy/mm/dd") & "' and contno=rm.contno and contdt=rm.contdt AND VARCODE=RM.VARCODE) kgrate,contno,lotstatus,returnqty,returndate,FAQ,SCI,BB,Rd  " & _
            "from rm_arrival rm " & _
            "where lotno=" & val(DataGrid1.Columns(3).Text) & " and   arrno=" & val(DataGrid1.Columns(0).Text) & " and arrdate  ='" & _
            Format(DataGrid1.Columns(1).Text, "yyyy-mm-dd") & "'AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            
            
            'adoSecondaryRS.Open "select arrdate,SUPCD,VARCODE,CNTCODE,QUANTITY,GROSSWT,TAREWT, " & _
                "NETWT,arrno,bbflag,passbl,isgodown,plotno, lotno, accqty, accdt, rejqty, prno,prmark,remarks," & _
                "rejdt, accallowqty, accallowdt, accallowrtpercandy, accallowrtperkg,contno,lotstatus,returnqty,returndate ,CatCd " & _
                "from rm_arrival where arrno=" & val(DataGrid1.Columns(0).Text) & " and " & _
                "arrdate  ='" & Format(DataGrid1.Columns(1).Text, "yyyy-mm-dd") & _
                "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                
            'adoSecondaryRS.Open " select arrdt as arrdate,SUPCD,VARCODE,CNTCODE,Bales as QUANTITY,GRSWGT as GROSSWT,TAREWT, " & _
                " NETWT,arrno,bblflg as bbflag,'' as passbl, 'Y' as isgodown,plotno, lotno, 0 as accqty, 0 as accdt," & _
                " 0 as rejqty,0 as  prno,'' as prmark,'' as remarks,0 as rejdt, 0 as accallowqty,0 as accallowdt,0 as accallowrtpercandy, " & _
                " 0 as accallowrtperkg,0 as contno,'' as lotstatus,0 as returnqty, 0 as returndate,CatCd " & _
                " from rm_Lot where arrno=" & val(DataGrid1.Columns(0).Text) & " and " & _
                " arrdt  ='" & Format(DataGrid1.Columns(1).Text, "yyyy-mm-dd") & _
                "' AND DIVCODE='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
                
            adoSecondaryRS.Open " select arrdt as arrdate,SUPCD,VARCODE,CNTCODE,Bales as QUANTITY,GRSWGT as GROSSWT,TAREWT, " & _
                " NETWT,arrno,AREACD,bblflg as bbflag,'' as passbl, 'Y' as isgodown,plotno, lotno, bales as accqty, 0 as accdt," & _
                " 0 as rejqty,0 as  prno,'' as prmark,'' as remarks,0 as rejdt, 0 as accallowqty,0 as accallowdt,0 as accallowrtpercandy, " & _
                " 0 as accallowrtperkg,0 as contno,'' as lotstatus,0 as returnqty, 0 as returndate,CatCd, " & _
                " SFI ,ELG,TRCNT,TRArea,TRGrade,LINT,IVC,SCNeps_g,SCNeps_Micm, TotSCNeps_g, AVGSCNeps_Micm, EXNoils" & _
                " from rm_Lot where Lotno=" & val(DataGrid1.Columns(3).Text) & " and " & _
                " Lotdt  ='" & Format(DataGrid1.Columns(5).Text, "yyyy-mm-dd") & _
                "' AND DIVCODE='" & Divcode & "' and VarCode='" & DataGrid1.Columns(7).Text & "' And CatCd='" & DataGrid1.Columns(6).Text & "'", DB, adOpenStatic, adLockBatchOptimistic

       ' adoSecondaryRS.Open " select a.arrdt as arrdate,a.SUPCD,a.VARCODE,a.CNTCODE,a.Bales as QUANTITY,a.GRSWGT as GROSSWT,a.TAREWT,  a.NETWT,a.arrno," & _
                            "a.bblflg as bbflag,'' as passbl, 'Y' as isgodown,a.plotno, a.lotno,b.accqty, 0 as accdt,b.rejqty,0 as  prno,'' as prmark, " & _
                            "'' as remarks,0 as rejdt, 0 as accallowqty,0 as accallowdt,0 as accallowrtpercandy,  0 as accallowrtperkg,0 as contno, " & _
                            "'' as lotstatus,0 as returnqty, 0 as returndate,a.CatCd,  SFI ,ELG,TRCNT,TRArea,TRGrade,LINT,IVC,SCNeps_g,SCNeps_Micm," & _
                            "TotSCNeps_g, AVGSCNeps_Micm, EXNoils from rm_Lot a,rm_arrival b  where a.lotno=b.lotno and a.divcode=b.divcode and " & _
                            "a.Lotno=" & val(DataGrid1.Columns(3).Text) & " and " & _
                            " a.Lotdt  ='" & Format(DataGrid1.Columns(4).Text, "yyyy-mm-dd") & _
                            "' AND a.DIVCODE='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
          
          If adoSecondaryRS.RecordCount = 0 Then
            MsgBox "Arrival Record Not Found!", vbInformation, head
            Command3.Enabled = False
            BUTTON(1).Enabled = False
            BUTTON(5).Enabled = False
            BUTTON(6).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(8).Enabled = False
            BUTTON(9).Enabled = False
            BUTTON(10).Enabled = False
            Exit Sub
         Else
         On Error Resume Next
         SSTab2.Visible = True
         
         Txtfields(0).Text = adoSecondaryRS("CATCD")
         Txtfields(2).Text = Format(adoPrimaryRS("LOTDT"), "dd/mm/yyyy")
         Txtfields(32).Text = adoSecondaryRS("AREACD")
         Txtfields(1).Text = adoSecondaryRS("lotno")
         Txtfields(3).Text = adoSecondaryRS("varcode")
         Txtfields(4).Text = adoSecondaryRS("cntcode")
         Txtfields(5).Text = adoSecondaryRS("supcd")
         Txtfields(21).Text = adoSecondaryRS("quantity")
         Txtfields(17).Text = adoSecondaryRS("grosswt")
         Txtfields(20).Text = adoSecondaryRS("tarewt")
         Txtfields(19).Text = adoSecondaryRS("netwt")
         Txtfields(14).Text = adoSecondaryRS("plotno")
         Txtfields(28).Text = adoSecondaryRS("contno")
         Txtfields(35).Text = adoSecondaryRS("prno")
         Txtfields(36).Text = adoSecondaryRS("prmark")
         Txtfields(15).Text = adoSecondaryRS("remarks")
         Txtfields(61).Text = adoSecondaryRS("faq")
         Txtfields(62).Text = adoSecondaryRS("sci")
         Txtfields(63).Text = adoSecondaryRS("bb")
         Txtfields(64).Text = adoSecondaryRS("rd")
         
         If adoSecondaryRS("bbflag") = "B" Then
            Txtfields(41).Text = "Bale"
         Else
            Txtfields(41).Text = "Borah"
         End If
         'Supplier name
         Dim rssupl As Recordset
         Set rssupl = New Recordset
         rssupl.Open "select slname from fa_slmas where slcode ='" & adoSecondaryRS("supcd") & "'", DB, adOpenStatic, adLockReadOnly
         If rssupl.RecordCount > 0 Then
            Txtfields(6).Text = rssupl("slname")
         Else
            Txtfields(6).Text = ""
         End If
         
         'Variety name
         Dim rsVar As Recordset
         Set rsVar = New Recordset
         rsVar.Open "select varname from rm_var where varcode ='" & adoSecondaryRS("varcode") & "'", DB, adOpenStatic, adLockReadOnly
         If rsVar.RecordCount > 0 Then
            Txtfields(3).Text = rsVar("varname")
         End If
         
         'cont details
         Dim rscont As Recordset
         Set rscont = New Recordset
         rscont.Open "select areacode, prno, pressmarkno, rateunit, candyrate, carcode,dlytype,bbflag from rm_cont where contno = '" & adoSecondaryRS("contno") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
         'w = rscont.RecordCount
         If rscont.RecordCount > 0 Then
            
            'TXTFIELDS(36).Text = rscont("prno")
            'TXTFIELDS(35).Text = rscont("pressmarkno")
            Txtfields(38).Text = rscont("candyrate")
            Txtfields(37).Text = rscont("rateunit")
            'TXTFIELDS(41).Text = rscont("dlytype")
            
        End If
            
        If rscont("dlytype") = "S" Then
            Txtfields(40).Text = "Spot"
        ElseIf rscont("dlytype") = "M" Then
           Txtfields(40).Text = "FOR"
        ElseIf rscont("dlytype") = "C" Then
            Txtfields(40).Text = "C&F"
        ElseIf rscont("dlytype") = "I" Then
            Txtfields(40).Text = "CIF"
        End If
        
         'area details
         
         
              Dim rscount As Recordset
              If Not IsNull(rscont("areacode")) Then
                Set rscount = New Recordset
                rscount.Open "select * from rm_area where areacode ='" & Trim(Txtfields(32).Text) & "'", DB, adOpenStatic, adLockReadOnly
                If rscount.RecordCount > 0 Then
                    Txtfields(7).Text = rscount("areaname")
                    Txtfields(33).Text = rscount("state")
                    Txtfields(34).Text = rscount("station")
                    
                End If
            End If
         'Count name
         'Dim rscount As Recordset
         Set rscount = New Recordset
         rscount.Open "select cntname from rm_count where cntcd ='" & adoSecondaryRS("cntcode") & "'", DB, adOpenStatic, adLockReadOnly
         If rscount.RecordCount > 0 Then
            Txtfields(3).Text = rscount("cntname")
         End If
         
         MaskEdBox1(1).Enabled = True
         MaskEdBox1(1).Text = pdate
         
         Call filltestdetails
         
         'Accepted Qty
         If IsNull(adoSecondaryRS("accqty")) = False Then
            Txtfields(22).Text = adoSecondaryRS("accqty")
         End If
         
         'Accepted Date
         If IsNull(adoSecondaryRS("accdt")) = False Then
            MaskEdBox1(1).Text = Format(adoSecondaryRS("accdt"), "dd/mm/yyyy")
         End If
         
         'Rejected Qty
         If IsNull(adoSecondaryRS("rejqty")) = False Then
            Txtfields(23).Text = adoSecondaryRS("rejqty")
         End If

         'Accpted With Allowance Qty
         If IsNull(adoSecondaryRS("accallowqty")) = False Then
            Txtfields(24).Text = adoSecondaryRS("accallowqty")
         End If

         'Rate Per Candy
         If IsNull(adoSecondaryRS("accallowrtpercandy")) = False Then
            Txtfields(25).Text = Format(adoSecondaryRS("accallowrtpercandy"), "#0.000")
         End If
         
         'Rate Per Kg
         If IsNull(adoSecondaryRS("accallowrtperkg")) = False Then
            Txtfields(26).Text = Format(adoSecondaryRS("accallowrtperkg"), "#0.000")
         End If
         
         'Rate Per Kg
         If IsNull(adoSecondaryRS("kgrate")) = False Then
            Txtfields(27).Text = Format(adoSecondaryRS("kgrate"), "#0.000")
         End If
                 
         'Return  Qty
         If IsNull(adoSecondaryRS("returnqty")) = False Then
            Txtfields(29).Text = Format(adoSecondaryRS("returnqty"), "#0.000")
         End If
         'return Date
         If IsNull(adoSecondaryRS("returndate")) = False Then
            MaskEdBox1(0).Text = Format(adoSecondaryRS("returndate"), "dd/mm/yyyy")
         End If
        
        'Lot status
         If IsNull(adoSecondaryRS("lotstatus")) = False Then
'            txtFields(32).Text = Trim(adoSecondaryRS("lotstatus"))
         End If
        
         Call gridload
        Call acceptqty
         Frame6.Visible = False
         Frame1.Visible = True
         Frame5.Visible = True
         If Opt = "del" Then
            BUTTON(9).Enabled = True
            BUTTON(1).Enabled = False
            End If
            If Opt = "list" Then
                Call disabletxt
                If IsNull(adoSecondaryRS("ACCQTY")) = False Then
                    If adoSecondaryRS("ACCQTY") = 0 Then
                        Txtfields(22).Text = adoSecondaryRS("QUANTITY")
                    End If
                End If
            End If
'            txtFields(22).Locked = True
'            txtFields(23).Locked = True
            Txtfields(24).Locked = True
            Txtfields(25).Locked = True
            Txtfields(26).Locked = True
            Txtfields(27).Locked = True
            Txtfields(10).Locked = False
            MaskEdBox1(1).Enabled = False
            
            Txtfields(61).Text = ""
            Txtfields(62).Text = ""
            Txtfields(13).Text = ""
            
            'DB.CommitTrans
            If Opt = "add" Then
                Call disabletxt
                SSTab2.TabVisible(1) = True
                SSTab2.TabVisible(2) = True
                SSTab2.TabVisible(3) = True
                SSTab2.Tab = 0
                Txtfields(62).Locked = False
                Txtfields(61).Locked = False
            End If
            Txtfields(91).SetFocus
        End If
End If


Exit Sub
fn_mod_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure fn_mod of Form FrmQualparam", vbInformation, head

End Sub

Private Sub fn_mod1()

'BUTTON(1).Enabled = True
'BUTTON(3).Enabled = True
'BUTTON(4).Enabled = True
'BUTTON(5).Enabled = True
'BUTTON(6).Enabled = True
'BUTTON(7).Enabled = True
'BUTTON(8).Enabled = True
On Error GoTo fn_mod1_Error

BUTTON(9).Enabled = True
BUTTON(10).Enabled = True
 On Error Resume Next
'If opt = "add" o Then
If Opt = "mod" Then
        Call ENABLCONTLS
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open " select arrdt as arrdate,SUPCD,VARCODE,CNTCODE,Bales as QUANTITY,GRSWGT as GROSSWT,TAREWT, " & _
                " NETWT,arrno,AREACD,bblflg as bbflag,'' as passbl, 'Y' as isgodown,plotno, lotno, bales as accqty, 0 as accdt," & _
                " 0 as rejqty,0 as  prno,'' as prmark,'' as remarks,0 as rejdt, 0 as accallowqty,0 as accallowdt,0 as accallowrtpercandy, " & _
                " 0 as accallowrtperkg,0 as contno,'' as lotstatus,0 as returnqty, 0 as returndate,CatCd, " & _
                " SFI ,ELG,TRCNT,TRArea,TRGrade,LINT,IVC,SCNeps_g,SCNeps_Micm, TotSCNeps_g, AVGSCNeps_Micm, EXNoils" & _
                " from rm_Lot where Lotno=" & val(Txtfields(1).Text) & " and " & _
                " Lotdt  ='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & _
                "' AND DIVCODE='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic

          
          If adoSecondaryRS.RecordCount = 0 Then
            MsgBox "Arrival Record Not Found!", vbInformation, head
            Command3.Enabled = False
            BUTTON(1).Enabled = False
            BUTTON(5).Enabled = False
            BUTTON(6).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(8).Enabled = False
            BUTTON(9).Enabled = False
            BUTTON(10).Enabled = False
            Exit Sub
         Else
         On Error Resume Next
         SSTab2.Visible = True
         
         
         'Accepted Qty
         If IsNull(adoSecondaryRS("accqty")) = False Then
            Txtfields(22).Text = adoSecondaryRS("accqty")
         End If
         
         'Accepted Date
         If IsNull(adoSecondaryRS("accdt")) = False Then
            MaskEdBox1(1).Text = Format(adoSecondaryRS("accdt"), "dd/mm/yyyy")
         End If
         
         'Rejected Qty
         If IsNull(adoSecondaryRS("rejqty")) = False Then
            Txtfields(23).Text = adoSecondaryRS("rejqty")
         End If

         'Accpted With Allowance Qty
         If IsNull(adoSecondaryRS("accallowqty")) = False Then
            Txtfields(24).Text = adoSecondaryRS("accallowqty")
         End If

         'Rate Per Candy
         If IsNull(adoSecondaryRS("accallowrtpercandy")) = False Then
            Txtfields(25).Text = Format(adoSecondaryRS("accallowrtpercandy"), "#0.000")
         End If
         
         'Rate Per Kg
         If IsNull(adoSecondaryRS("accallowrtperkg")) = False Then
            Txtfields(26).Text = Format(adoSecondaryRS("accallowrtperkg"), "#0.000")
         End If
         
         'Rate Per Kg
''         If IsNull(adoSecondaryRS("kgrate")) = False Then
''            TXTFIELDS(27).Text = Format(adoSecondaryRS("kgrate"), "#0.000")
''         End If
                 
         'Return  Qty
         If IsNull(adoSecondaryRS("returnqty")) = False Then
            Txtfields(29).Text = Format(adoSecondaryRS("returnqty"), "#0.000")
         End If
         'return Date
         If IsNull(adoSecondaryRS("returndate")) = False Then
            MaskEdBox1(0).Text = Format(adoSecondaryRS("returndate"), "dd/mm/yyyy")
         End If
        
        'Lot status
         If IsNull(adoSecondaryRS("lotstatus")) = False Then
'            txtFields(32).Text = Trim(adoSecondaryRS("lotstatus"))
         End If
        Call gridload
        Call acceptqty
         Frame6.Visible = False
         Frame1.Visible = True
         Frame5.Visible = True
         If Opt = "del" Then
            BUTTON(9).Enabled = True
            BUTTON(1).Enabled = False
            End If
            If Opt = "list" Then
                Call disabletxt
                If IsNull(adoSecondaryRS("ACCQTY")) = False Then
                    If adoSecondaryRS("ACCQTY") = 0 Then
                        Txtfields(22).Text = adoSecondaryRS("QUANTITY")
                    End If
                End If
            End If
'            txtFields(22).Locked = True
'            txtFields(23).Locked = True
            Txtfields(24).Locked = True
            Txtfields(25).Locked = True
            Txtfields(26).Locked = True
            Txtfields(27).Locked = True
            Txtfields(10).Locked = False
            MaskEdBox1(1).Enabled = False
            
            'TXTFIELDS(61).Text = ""
            'TXTFIELDS(62).Text = ""
            'TXTFIELDS(13).Text = ""
            
            'DB.CommitTrans
            If Opt = "add" Then
                Call disabletxt
                SSTab2.TabVisible(1) = True
                SSTab2.TabVisible(2) = True
                SSTab2.TabVisible(3) = True
                SSTab2.Tab = 0
                Txtfields(62).Locked = False
                Txtfields(61).Locked = False
            End If
            Txtfields(48).SetFocus
        End If
End If

Exit Sub
fn_mod1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure fn_mod1 of Form FrmQualparam"
End Sub


Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
'On Error GoTo txtFields_Validate_Error

On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Or Opt = "updat" Then
    Select Case Index
    Case 24
        If val(Txtfields(22).Text) + val(Txtfields(23).Text) + val(Txtfields(24).Text) > val(Txtfields(21).Text) Then
            MsgBox "Accepted with Allowance Bales cannot be Greater then Rejected Bales", vbInformation, head
            Txtfields(24).Text = ""
            Txtfields(24).SetFocus
            Exit Sub
        End If
        
        
        
        If val(Txtfields(24).Text) > 0 Then
           ' Txtfields(29).Text = Round((val(Txtfields(23).Text) - val(Txtfields(24).Text)), 2)
        End If
        Set rsa = New Recordset
        rsa.Open "select isnull(sum(netwt)/count(*),0)  from rm_bale where lotno='" & val(Txtfields(1).Text) & "' and lotdt ='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            Txtfields(58).Text = Round(val(Txtfields(24).Text) * rsa(0), 3)
        End If
        Txtfields(56).SetFocus
        Set rsa = New Recordset
        rsa.Open "select isnull(billno,0) from rm_lot where lotno='" & Txtfields(1).Text & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 And val(Txtfields(24).Text) > 0 Then
                If rsa(0) = 0 Or rsa(0) = "" Then
                    MsgBox "Please enter Bill Number to create Debit Note", vbInformation, head
                    Txtfields(24).Text = ""
                    Txtfields(29).Text = ""
                    Txtfields(24).SetFocus
                    Exit Sub
                End If
            End If
        If val(Txtfields(24).Text) <= val(Txtfields(23).Text) And val(Txtfields(24).Text) <> 0 Then
            Call accept_allowance
        End If
    Case 29
        If (val(Txtfields(24).Text) + val(Txtfields(29).Text)) > val(Txtfields(23).Text) Then
            MsgBox "Accepted with Allowance Bales and Return Bales cannot be Greater then Rejected Bales", vbInformation, head
            Txtfields(29).Text = ""
            Txtfields(29).SetFocus
            Exit Sub
        End If
        If val(Txtfields(29).Text) <> val(Txtfields(21).Text) Then
            Set rsa = New Recordset
            rsa.Open "select isnull(billno,0) from rm_lot where lotno='" & Txtfields(1).Text & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 And val(Txtfields(29).Text) > 0 Then
                If rsa(0) = 0 Or rsa(0) = "" Then
                    MsgBox "Please enter Bill Number to create Debit Note", vbInformation, head
                    Txtfields(24).Text = ""
                    Txtfields(29).Text = ""
                    Txtfields(29).SetFocus
                    Exit Sub
                End If
            End If
        ElseIf val(Txtfields(29).Text) = val(Txtfields(23).Text) Then
            Call returnqty
        End If
        Set rsa = New Recordset
        rsa.Open "select sum(netwt)/count(*) from rm_bale where lotno='" & val(Txtfields(1).Text) & "' and lotdt ='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            Txtfields(57).Text = Format(Round((val(Txtfields(29).Text) * rsa(0)), 3), "#.000")
        End If
        Txtfields(30).SetFocus
        Call RateKgReturn
        If val(Txtfields(29).Text) > 0 Then
            Txtfields(24).Text = Round((val(Txtfields(23).Text) - val(Txtfields(29).Text)), 2)
        End If
        
         Set rsa = New Recordset
        rsa.Open "select isnull(sum(netwt)/count(*),0)  from rm_bale where lotno='" & val(Txtfields(1).Text) & "' and lotdt ='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            Txtfields(58).Text = Round(val(Txtfields(24).Text) * rsa(0), 3)
        End If
        
        Txtfields(56).Text = val(Txtfields(56).Text)
         If val(Trim(Txtfields(56).Text)) < val(Trim(Txtfields(38).Text)) Then
              Txtfields(25).Text = val(Trim(Txtfields(38).Text)) - val(Trim(Txtfields(56).Text))
         Else
              MsgBox "Please Enter Valid Allowance Amount"
              Txtfields(56).SetFocus
         End If
         Call RateKgAccWithAllow
         If val(Txtfields(29).Text) > 0 Then
              Txtfields(29).SetFocus
         End If
        
        
    Case 57
            Call RateKgReturn
    Case 78
        Set Rs = New Recordset
        Rs.Open "select * from rm_count where cntcd='" & Trim(Txtfields(78).Text) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            LookUp.Clear = True
            LookUp.query = "select cntcd""Mixing Count Code"",cntname""Mixing Count Name"" from rm_count where divcode='" & Divcode & "'"
            LookUp.Caption = "Mixing Count Listing"
            LookUp.DefCol = "Mixing Count Name"
            LookUp.ALIGN = "2000,5500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Txtfields(78).Text = LookUp.Fields(0)
                Txtfields(80).Text = LookUp.Fields(1)
                Txtfields(80).Locked = True
                LookUp.Clear = True
                Option3.SetFocus
                Exit Sub
            Else
                Txtfields(78).Text = ""
                Txtfields(80).Text = ""
                Txtfields(80).Locked = True
                LookUp.Clear = True
                Option3.SetFocus
                Exit Sub
            End If
        Else
                Txtfields(78).Text = ""
                Txtfields(80).Text = ""
                Txtfields(80).Locked = True
                LookUp.Clear = True
                Option3.SetFocus
            Exit Sub
        End If
    Case 13
        If val(Txtfields(Index)) <> 0 Then
            Call QualParaChk("Micronaire", val(Txtfields(Index)))
            If Qualityparamchk = False Then
                Txtfields(Index).Text = ""
                MsgBox "Please Enter Correct Value ", vbInformation, head
                Txtfields(Index).SetFocus
            End If
        End If
    Case 16
        If val(Txtfields(Index)) <> 0 Then
            Call QualParaChk("Trash", val(Txtfields(Index)))
            If Qualityparamchk = False Then
                Txtfields(Index).Text = ""
                MsgBox "Please Enter Correct Value ", vbInformation, head
                Txtfields(Index).SetFocus
            End If
        End If
    Case 42
        If val(Txtfields(Index)) <> 0 Then
            Call QualParaChk("Moisture", val(Txtfields(Index)))
            If Qualityparamchk = False Then
                Txtfields(Index).Text = ""
                MsgBox "Please Enter Correct Value ", vbInformation, head
                Txtfields(Index).SetFocus
            End If
        End If
    Case 48
        If val(Txtfields(Index)) <> 0 Then
            Call QualParaChk("Staple Length", val(Txtfields(Index)))
            If Qualityparamchk = False Then
                Txtfields(Index).Text = ""
                MsgBox "Please Enter Correct Value ", vbInformation, head
                Txtfields(Index).SetFocus
            End If
        End If
    Case 54
        If val(Txtfields(Index)) <> 0 Then
            Call QualParaChk("Strength (Gtex)", val(Txtfields(Index)))
            If Qualityparamchk = False Then
                Txtfields(Index).Text = ""
                MsgBox "Please Enter Correct Value ", vbInformation, head
                Txtfields(Index).SetFocus
            End If
        End If
    End Select
End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form FrmQualparam", vbInformation, head

Screen.MousePointer = 0
End Sub
Sub RateKgReturn()
On Error GoTo RateKgReturn_Error

 Set rsa = New Recordset
rsa.Open "select catcd,isnull(bedamt,0)+isnull(aedamt,0)+isnull(cessamt,0)+isnull(vatamt,0)+isnull(cstamt,0)+isnull(scamt,0)+isnull(othtaxamt,0)+isnull(lrfrtamt,0)+isnull(rlyfrtamt,0)+isnull(insamt,0)+isnull(tngstamt,0)+isnull(commamt,0) +isnull(lcintamt,0)+isnull(dnamt1,0)+isnull(charityamt,0)+isnull(damageamt,0)" & _
" +isnull(clearanceamt,0)+isnull(othersamt,0)+isnull(brkcom,0) as calca from rm_lot where lotno='" & Txtfields(1).Text & "' and lotdt ='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic

If rsa.RecordCount > 0 Then
     If rsa("catcd") = "P" Then
         pjamt = (val(Txtfields(38).Text) * val(Txtfields(57).Text)) / 1
     Else
         pjamt = (val(Txtfields(38).Text) * val(Txtfields(57).Text)) / 355.6187
     End If
     If val(Txtfields(57).Text) > 0 Then
         Txtfields(30).Text = Round((val(pjamt) + rsa(1)) / val(Txtfields(57).Text), 4)
     End If
End If


Exit Sub
RateKgReturn_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure RateKgReturn of Form FrmQualparam", vbInformation, head

End Sub
Sub RateKgAccWithAllow()
On Error GoTo RateKgAccWithAllow_Error

Set rsa = New Recordset
rsa.Open "select catcd,isnull(bedamt,0)+isnull(aedamt,0)+isnull(cessamt,0)+isnull(vatamt,0)+isnull(cstamt,0)+isnull(scamt,0)+isnull(othtaxamt,0)+isnull(lrfrtamt,0)+isnull(rlyfrtamt,0)+isnull(insamt,0)+isnull(tngstamt,0)+isnull(commamt,0) +isnull(lcintamt,0)+isnull(dnamt1,0)+isnull(charityamt,0)+isnull(damageamt,0)" & _
" +isnull(clearanceamt,0)+isnull(othersamt,0)+isnull(brkcom,0) as calca from rm_lot where lotno='" & Txtfields(1).Text & "' and lotdt ='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'", DB, adOpenStatic

If rsa.RecordCount > 0 Then
     If rsa("catcd") = "P" Then
         pjamt = Round((val(Txtfields(25).Text) * val(Txtfields(58).Text)) / 1, 2)
     Else
         pjamt = Round((val(Txtfields(25).Text) * val(Txtfields(58).Text)) / 355.6187, 2)
     End If
     If val(Txtfields(58).Text) > 0 Then
         Txtfields(26).Text = Round((val(pjamt) + rsa(1)) / val(Txtfields(58).Text), 4)
     End If
End If


Exit Sub
RateKgAccWithAllow_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure RateKgAccWithAllow of Form FrmQualparam", vbInformation, head

End Sub
Public Sub gatepass(pg1 As Integer)
    Print #a,
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27) + "F"
    Print #a,
    Set Rs = New Recordset
  '  rs.Open "select distinct th.DOCNO,th.DOCDT,s.slname,refno from  IN_TRNHEAD th, FA_SLMAS s,  IN_TRNTAIL t, IN_TC tc where th.divcode = '" & Divcode & "' and th.tc = tc.tc and tc.tctype =1  and th.divcode = t.divcode and th.tc = t.tc and th.docno = t.docno  and th.slcode = s.slcode  and th.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and th.docdt=t.docdt and  t.pordno is  null And th.docno = " & Trim(Val(txtFields(2).Text)) & "  Order by TH.DOCNO ", db, adOpenStatic, adLockReadOnly
     Rs.Open "select slname,add3 from fa_slmas where slcode='" & Txtfields(5).Text & "'", DB
    Print #a, Space(3) + Padr("DC for Gatepass List ", 50, " ") + Space(15) + Format(pdate, "dd-mm-yy") + Space(5); "Pg. :"; pg1
    Print #a,
    Print #a, Space(3) + "        Please Allow The Following Materials Through         "
 '   Set RS1 = New Recordset
  '  rs.Open "select distinct th.DOCNO,th.DOCDT,s.slname,refno from  IN_TRNHEAD th, FA_SLMAS s,  IN_TRNTAIL t, IN_TC tc where th.divcode = '" & Divcode & "' and th.tc = tc.tc and tc.tctype =1  and th.divcode = t.divcode and th.tc = t.tc and th.docno = t.docno  and th.slcode = s.slcode  and th.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and th.docdt=t.docdt and  t.pordno is  null And th.docno = " & Trim(Val(txtFields(2).Text)) & "  Order by TH.DOCNO ", db, adOpenStatic, adLockReadOnly
 '    RS1.Open "select VEHICLENO from rm_dcdyinghd where slcode='" & txtfields(7).Text & "' and DCDT='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' ", DB
    Print #a, Space(15) + Padr(" ", 10, " ") + "For Dying " + Space(5) + Padr(Rs("slname"), 40, " ")
    Print #a, Space(3) + "                           " + Padr(Rs("add3"), 40, " ") + Space(12)
    Print #a, Space(3) + "S.No                  Descripsion        Quantity              Kgs"
    'Print #a, Space(3) + "Vehile No.     :" + Padr(txtFields(3).Text, 40, " ")
    Print #a, Space(3) + String(85, "-")
End Sub

Public Sub pblist()
    If lno >= 58 Then
    Print #a, Space(3) + String(85, "-")
    lno = 7
    pgn = pgn + 1
    Print #a, Chr(12)
    pg1 = pg1 + 1
    Call gatepass(CInt(pg1))
    End If
End Sub

Public Sub headlist(pg1 As Integer, I As Integer)
    Print #a,
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + "FORM XX" + CENTRE("DELIVERY CHALLAN", 75, " ") + Chr(27) + "F"
    If I = 1 Then
    Print #a, "                                                                          " + "ORIGINAL "
    End If
    If I = 2 Then
    Print #a, "                                                                          " + "DUPLICATE "
    End If
    If I = 3 Then
    Print #a, "                                                                          " + "TRIPLICATE "
    End If
    If I = 4 Then
    Print #a, "                                                                          " + "QUATERPLICATE "
    End If
    Print #a, Space(5); "Form XX/Delivery Notes"
    Print #a, Space(5); "See Rule 35[5]/36[1]"
    Print #a,
    Print #a,
    Print #a, Space(5); "Date seal of the issuing authority                    :"
    Print #a,
    Print #a, Space(5); "Name of the Dealer to whom issued with                 "
    Print #a, Space(5); "Registation Cerificate Number                         :"
    Print #a, Space(3); String(85, "-")


End Sub

Public Sub acceptqty()
On Error Resume Next
adoGridRS.MoveFirst

cnt1 = val(Txtfields(22).Text) + val(Txtfields(23).Text)
S1 = 1
If val(Txtfields(22).Text) + val(Txtfields(23).Text) < val(Txtfields(21).Text) Then
        adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
            If grid.Columns(2).Text = "Y" Then
                S1 = S1 + 1
            End If
            adoGridRS.MoveNext
        Loop
        If S1 = 0 Then S1 = 1
        adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
            For I = val(Txtfrombaleno.Text) To val(TxtTobaleno.Text)
                If I = grid.Columns(0).Text Then
                    If S1 <= cnt1 Then
                        grid.Columns(2).Text = "Y"
                        S1 = S1 + 1
                    If CmdReject.Caption = "Accept" Then
                        tempdb.Execute "update rm_acceptqty set acflag='Y' where baleno='" & grid.Columns(0).Text & "' "
                    Else
                        ''tempdb.Execute "update rm_acceptqty set rejflag='Y'"
                    End If
                        
                    Else
                        MsgBox "Already  " & cnt1 & " Bales Rejected ", vbInformation, head
                        Txttotalbale.Text = S1 - 1
                        Txtfrombaleno.Text = ""
                        TxtTobaleno.Text = ""
                        Exit Sub
                    End If
                End If
            Next
            adoGridRS.MoveNext
           ' GoTo L1:
        Loop
        Txttotalbale.Text = S1 - 1
        Txtfrombaleno.Text = ""
        TxtTobaleno.Text = ""
        adoGridRS.MoveFirst
    ''End If
ElseIf val(Txtfields(23).Text) < val(Txtfields(21).Text) And val(Txtfields(23).Text) > 0 And CmdReject.Caption <> "Accepted with Allowance" Then
''        adoGridRS.MoveFirst
''        Do While adoGridRS.EOF = False
''            If grid.Columns(2).Text = "N" Then
''                grid.Columns(2).Caption = "Rejected"
''                grid.Columns(2).Text = "Y"
''                s1 = s1 + 1
''                tempdb.Execute "update rm_acceptqty set rejflag='Y' where rejflag='N' and baleno='" & grid.Columns(0).Text & "' "
''            End If
''            adoGridRS.MoveNext
''      Loop
''        adoGridRS.MoveFirst
''        Txttotalbale.Text = s1 - 1
''        Txtfrombaleno.Text = ""
''        TxtTobaleno.Text = ""

ElseIf val(Txtfields(22).Text) = val(Txtfields(21).Text) And CmdReject.Caption <> "Accepted with Allowance" Then
''    adoGridRS.MoveFirst
''        Do While adoGridRS.EOF = False
''            If Grid.Columns(2).Text = "N" Then
''                Grid.Columns(2).Caption = "Accepted"
''                Grid.Columns(2).Text = "Y"
''                tempdb.Execute "update rm_acceptqty set acflag='Y' where baleno='" & Grid.Columns(0).Text & "' "
''                s1 = s1 + 1
''            End If
''            adoGridRS.MoveNext
''        Loop
''        adoGridRS.MoveFirst
''        Txttotalbale.Text = s1 - 1
''        Txtfrombaleno.Text = ""
''        TxtTobaleno.Text = ""
ElseIf val(Txtfields(23).Text) = val(Txtfields(21).Text) And CmdReject.Caption <> "Accepted with Allowance" Then
        adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
            If grid.Columns(2).Text = "N" Then
                grid.Columns(2).Caption = "Rejected"
                grid.Columns(2).Text = "Y"
                tempdb.Execute "update rm_acceptqty set rejflag='Y' where baleno='" & grid.Columns(0).Text & "' "
                S1 = S1 + 1
            End If
            adoGridRS.MoveNext
        Loop
        adoGridRS.MoveFirst
        Txttotalbale.Text = S1 - 1
        Txtfrombaleno.Text = ""
        TxtTobaleno.Text = ""
ElseIf CmdReject.Caption = "Accepted with Allowance" Then
        
        adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
            If grid.Columns(2).Text = "Y" Then
                S1 = S1 + 1
            End If
            adoGridRS.MoveNext
        Loop
        If S1 = 0 Then S1 = 1
        adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
            For I = val(Txtfrombaleno.Text) To val(TxtTobaleno.Text)
                If I = grid.Columns(0).Text Then
                    If S1 <= cnt1 Then
                        grid.Columns(2).Text = "Y"
                        grid.Columns(2).Caption = "Accepted"
                        S1 = S1 + 1
                    If CmdReject.Caption = "Accepted with Allowance" Then
                        tempdb.Execute "update rm_acceptqty set acallflag='Y' where baleno='" & grid.Columns(0).Text & "' "
                    Else
                        ''tempdb.Execute "update rm_acceptqty set rejflag='Y'"
                    End If
                    End If
                End If
            Next
            adoGridRS.MoveNext
           ' GoTo L1:
        Loop
        Txttotalbale.Text = S1 - 1
        Txtfrombaleno.Text = ""
        TxtTobaleno.Text = ""
        CmdReject.Caption = "Reject"
        SSTab2.Tab = 1
        Txtfields(29).SetFocus
        adoGridRS.MoveFirst
        Call returnqty
End If
End Sub

Public Sub gridload()

On Error GoTo gridload_Error
        tempdb.Execute "Delete from rm_acceptqty"
        Txtfields(23).Text = CStr(val(Txtfields(21).Text) - val(Txtfields(22).Text))
        Set adoGridRS = New Recordset
        If Opt = "add" Then
            adoGridRS.Open "select Baleno""Bale No."",netwt""Net Weight"",RejFlg""Rejected"",RejDt""Date"" from rm_bale where lotno='" & val(Txtfields(1).Text) & "' and lotdt ='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and isnull(rejflg,'N')='N' and  DIVCODE='" & Divcode & "' and LotType ='" & DataGrid1.Columns(2).Text & "'  and VarCode='" & DataGrid1.Columns(7).Text & "' And CatCd='" & DataGrid1.Columns(6).Text & "' order by Baleno", DB, adOpenStatic, adLockBatchOptimistic
        ElseIf Opt = "mod" Then
            adoGridRS.Open "select Baleno""Bale No."",netwt""Net Weight"",RejFlg""Rejected"",RejDt""Date"" from rm_bale where lotno='" & val(Txtfields(1).Text) & "' and lotdt ='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and isnull(rejflg,'N')='N' and  DIVCODE='" & Divcode & "' and LotType ='" & adoPrimaryRS("LotType") & "'  and VarCode='" & adoPrimaryRS("VarCode") & "' And CatCd='" & adoPrimaryRS("CatCd") & "' order by Baleno", DB, adOpenStatic, adLockBatchOptimistic
        End If
        Set grid.DataSource = adoGridRS
        grid.Columns(3).Visible = False
        grid.Columns(0).Width = 2000
        grid.Columns(1).Width = 2000
        grid.Columns(2).Width = 2000
        grid.Columns(1).Caption = "Nett Weight"
        grid.Columns(0).Alignment = dbgCenter
        grid.Columns(1).Alignment = dbgCenter
        grid.Columns(2).Alignment = dbgCenter
        If adoGridRS.RecordCount > 0 Then adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
            If val(Txtfields(22).Text) >= adoGridRS.AbsolutePosition Then
                grid.Columns(2).Text = "N"
            Else
                grid.Columns(2).Text = "Y"
            End If
                grid.Columns(3).Text = Format(pdate, "yyyy-mm-dd")
                tempdb.Execute "insert into rm_acceptqty values('" & adoGridRS(0).value & "','" & adoGridRS(1).value & "','N','N','N','N','" & Format(pdate, "yyyy-mm-dd") & "')"
                
                If val(Txtfields(22).Text) >= adoGridRS.AbsolutePosition Then
                    tempdb.Execute "update rm_acceptqty set acflag='Y' where baleno='" & grid.Columns(0).Text & "' "
                Else
                    tempdb.Execute "update rm_acceptqty set REJflag='Y' where baleno='" & grid.Columns(0).Text & "' "
                End If
                
                adoGridRS.MoveNext
            
        Loop
        
        If adoGridRS.RecordCount > 0 Then adoGridRS.MoveFirst
            grid.AllowUpdate = True
            If (val(Txtfields(22).Text) <> val(Txtfields(21).Text)) And (val(Txtfields(23).Text) <> val(Txtfields(21).Text)) Then
                SSTab2.Tab = 2
                Txtfrombaleno.Text = ""
                TxtTobaleno.Text = ""
                Txttotalbale.Text = ""
                ''Txtfrombaleno.SetFocus
                'BUTTON(9).SetFocus
            End If


Exit Sub
gridload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure gridload of Form FrmQualparam", vbInformation, head
End Sub
Public Sub accept_allowance()
        
On Error GoTo accept_allowance_Error

        Set adoGridRS = New Recordset
        adoGridRS.Open "select Baleno""Bale No."",netwt""Net Weight"",RejFlg""Rejected"",RejDt""Date"" from rm_bale where lotno='" & val(Txtfields(1).Text) & "' and lotdt ='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and isnull(rejflg,'N')='N' and status='RJ' and  DIVCODE='" & Divcode & "' and LotType ='" & DataGrid1.Columns(2).Text & "' and VarCode='" & DataGrid1.Columns(7).Text & "' And CatCd='" & DataGrid1.Columns(6).Text & "' order by Baleno", DB, adOpenStatic, adLockBatchOptimistic
        Set grid.DataSource = adoGridRS
        grid.Columns(3).Visible = False
        grid.Columns(0).Width = 2000
        grid.Columns(1).Width = 2000
        grid.Columns(2).Width = 2000
        grid.Columns(0).Alignment = dbgCenter
        grid.Columns(1).Alignment = dbgCenter
        grid.Columns(2).Alignment = dbgCenter
        If adoGridRS.RecordCount > 0 Then adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
            grid.Columns(2).Text = "N"
            grid.Columns(3).Text = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            tempdb.Execute "insert into rm_acceptqty values('" & adoGridRS(0).value & "','" & adoGridRS(1).value & "','N','N','N','N','" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "')"
            adoGridRS.MoveNext
        Loop
        If adoGridRS.RecordCount > 0 Then adoGridRS.MoveFirst
        grid.AllowUpdate = True
        SSTab2.Tab = 1
        Txtfrombaleno.Text = ""
        TxtTobaleno.Text = ""
        Txttotalbale.Text = ""
        'Grid.COL = 2
        'Grid.SetFocus
        CmdReject.Caption = "Accepted with Allowance"
        
        Txtfrombaleno.SetFocus


Exit Sub
accept_allowance_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure accept_allowance of Form FrmQualparam", vbInformation, head
End Sub
Public Sub returnqty()
On Error GoTo returnqty_Error

    If grid.Row = -1 Then
        Set adoGridRS = New Recordset
        adoGridRS.Open "select Baleno""Bale No."",netwt""Net Weight"",RejFlg""Rejected"",RejDt""Date"" from rm_bale where lotno='" & val(Txtfields(1).Text) & "' and lotdt ='" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and isnull(rejflg,'N')='N' and status='RJ' and  DIVCODE='" & Divcode & "' order by Baleno", DB, adOpenStatic, adLockBatchOptimistic
        Set grid.DataSource = adoGridRS
        grid.Columns(3).Visible = False
        grid.Columns(0).Width = 2000
        grid.Columns(1).Width = 2000
        grid.Columns(2).Width = 2000
        grid.Columns(0).Alignment = dbgCenter
        grid.Columns(1).Alignment = dbgCenter
        grid.Columns(2).Alignment = dbgCenter
        If adoGridRS.RecordCount > 0 Then adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
            grid.Columns(2).Text = "N"
            grid.Columns(3).Text = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            tempdb.Execute "insert into rm_acceptqty values('" & adoGridRS(0).value & "','" & adoGridRS(1).value & "','N','N','N','N','" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "')"
            adoGridRS.MoveNext
        Loop
        If adoGridRS.RecordCount > 0 Then adoGridRS.MoveFirst
    End If
    
    
        adoGridRS.MoveFirst
        Do While adoGridRS.EOF = False
            If grid.Columns(2).Text = "N" Then
                S1 = S1 + 1
                grid.Columns(2).Text = "Y"
                tempdb.Execute "update rm_acceptqty set returnflag='Y' where baleno='" & grid.Columns(0).Text & "' "
            End If
            adoGridRS.MoveNext
        Loop
        
        Txttotalbale.Text = S1 - 1
        Txtfrombaleno.Text = ""
        TxtTobaleno.Text = ""
        adoGridRS.MoveFirst


Exit Sub
returnqty_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure returnqty of Form FrmQualparam", vbInformation, head
End Sub

Private Sub Txtfrombaleno_KeyPress(KeyAscii As Integer)
    Call ToNumber1(Txtfrombaleno, 8, KeyAscii)
End Sub

Private Sub Txtfrombaleno_LostFocus()
On Error GoTo Txtfrombaleno_LostFocus_Error

    'TxtTobaleno.SetFocus

Exit Sub
Txtfrombaleno_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfrombaleno_LostFocus of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TxtTobaleno_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo TxtTobaleno_KeyDown_Error

    If KeyCode = vbKeyReturn Or KeyCode = vbKeyTab Then CmdReject.SetFocus

Exit Sub
TxtTobaleno_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TxtTobaleno_KeyDown of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TxtTobaleno_KeyPress(KeyAscii As Integer)
    Call ToNumber1(TxtTobaleno, 8, KeyAscii)
End Sub

Private Sub TxtTobaleno_LostFocus()
'SSTab2.Tab = 0
'txtFields(62).SetFocus
'BUTTON(9).SetFocus
On Error GoTo TxtTobaleno_LostFocus_Error

    CmdReject.SetFocus

Exit Sub
TxtTobaleno_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TxtTobaleno_LostFocus of Form FrmQualparam", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Function QualParaChk(eQParam As String, eQParamVal As Double) As Boolean
    Qualityparamchk = True
    Set TmpRs = New Recordset
    TmpRs.Open "Select Maximum,Minimum,Range from RM_FibreRange where FibreProperty ='" & eQParam & "' and range <> '' ", DB, adOpenStatic, adLockBatchOptimistic
    If Not TmpRs.EOF Then
        Select Case TmpRs("Range")
            Case "Range"
                Set TmpRs = New Recordset
                TmpRs.Open "Select Maximum,Minimum,Range from RM_FibreRange where FibreProperty ='" & eQParam & "' and  " & eQParamVal & " Between Minimum and Maximum ", DB, adOpenStatic, adLockBatchOptimistic
                If TmpRs.EOF Then
                    Qualityparamchk = False
                Else
                    Qualityparamchk = True
                End If
            Case "Above"
                Set TmpRs = New Recordset
                TmpRs.Open "Select Maximum,Minimum,Range from RM_FibreRange where FibreProperty ='" & eQParam & "' and  Maximum <= " & eQParamVal & "", DB, adOpenStatic, adLockBatchOptimistic
                If TmpRs.EOF Then
                    Qualityparamchk = False
                Else
                    Qualityparamchk = True
                End If
            Case "Below"
                Set TmpRs = New Recordset
                TmpRs.Open "Select Maximum,Minimum,Range from RM_FibreRange where FibreProperty ='" & eQParam & "' and  Minimum >= " & eQParamVal & "", DB, adOpenStatic, adLockBatchOptimistic
                If TmpRs.EOF Then
                    Qualityparamchk = False
                Else
                    Qualityparamchk = True
                End If
        End Select
    End If
End Function
Public Function QualParaMod() As Boolean
    QualParaMod = False
    
    Set TmpRs = New Recordset
    TmpRs.Open "Select isnull(QParamMod,'N')QParamModm From Rm_Param where isnull(QParamMod,'N')='Y' ", DB, adOpenStatic, adLockBatchOptimistic
    If Not TmpRs.EOF Then
        QualParaMod = True
    Else
        QualParaMod = False
    End If
End Function
