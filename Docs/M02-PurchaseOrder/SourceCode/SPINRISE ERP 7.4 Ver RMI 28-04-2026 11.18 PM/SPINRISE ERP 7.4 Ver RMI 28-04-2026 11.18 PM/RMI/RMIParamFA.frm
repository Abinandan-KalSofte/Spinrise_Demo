VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form RMIParamFA 
   Caption         =   "Parameter  - FA Related Details"
   ClientHeight    =   8490
   ClientLeft      =   -3870
   ClientTop       =   -1950
   ClientWidth     =   11400
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   50
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParamFA.frx":0000
         Height          =   510
         Index           =   6
         Left            =   1620
         Picture         =   "RMIParamFA.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   37
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParamFA.frx":0797
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMIParamFA.frx":0AA1
         Style           =   1  'Graphical
         TabIndex        =   32
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParamFA.frx":0E34
         Height          =   510
         Index           =   5
         Left            =   1090
         Picture         =   "RMIParamFA.frx":127E
         Style           =   1  'Graphical
         TabIndex        =   36
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParamFA.frx":15E3
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
         Left            =   5160
         Picture         =   "RMIParamFA.frx":18ED
         Style           =   1  'Graphical
         TabIndex        =   34
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   600
         Visible         =   0   'False
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParamFA.frx":1C89
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMIParamFA.frx":1F93
         Style           =   1  'Graphical
         TabIndex        =   33
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   360
         Picture         =   "RMIParamFA.frx":230D
         Style           =   1  'Graphical
         TabIndex        =   35
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   645
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParamFA.frx":26A4
         Height          =   510
         Index           =   7
         Left            =   2155
         Picture         =   "RMIParamFA.frx":2AEE
         Style           =   1  'Graphical
         TabIndex        =   38
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParamFA.frx":2E3E
         Height          =   510
         Index           =   11
         Left            =   4230
         Picture         =   "RMIParamFA.frx":3288
         Style           =   1  'Graphical
         TabIndex        =   42
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParamFA.frx":361D
         Height          =   510
         Index           =   9
         Left            =   3195
         Picture         =   "RMIParamFA.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   40
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "RMIParamFA.frx":3CC9
         Height          =   510
         Index           =   10
         Left            =   3710
         Picture         =   "RMIParamFA.frx":3FD3
         Style           =   1  'Graphical
         TabIndex        =   41
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParamFA.frx":434F
         Height          =   510
         Index           =   8
         Left            =   2670
         Picture         =   "RMIParamFA.frx":4799
         Style           =   1  'Graphical
         TabIndex        =   39
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParamFA.frx":4AFB
         Height          =   510
         Index           =   4
         Left            =   570
         Picture         =   "RMIParamFA.frx":4E05
         Style           =   1  'Graphical
         TabIndex        =   53
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   90
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   8565
         TabIndex        =   52
         Top             =   270
         Width           =   630
      End
      Begin VB.Label DESC 
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
         Left            =   6240
         TabIndex        =   51
         Top             =   270
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   46
      Top             =   8190
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
            Text            =   "KSL"
            TextSave        =   "KSL"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   15082
            MinWidth        =   15082
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "03/03/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "03:54 PM"
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
      Height          =   8910
      Left            =   660
      TabIndex        =   54
      Top             =   945
      Width           =   11115
      _ExtentX        =   19606
      _ExtentY        =   15716
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "RMIParamFA.frx":519A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame8"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1(0)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame1 
         Height          =   1365
         Index           =   0
         Left            =   120
         TabIndex        =   97
         Top             =   30
         Width           =   10890
         Begin VB.ComboBox Combo1 
            Height          =   315
            Index           =   0
            ItemData        =   "RMIParamFA.frx":51B6
            Left            =   1545
            List            =   "RMIParamFA.frx":51C0
            Style           =   2  'Dropdown List
            TabIndex        =   0
            Top             =   180
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            DataField       =   "TCCODE"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   2
            Left            =   1530
            MaxLength       =   6
            TabIndex        =   2
            Text            =   " "
            Top             =   930
            Width           =   900
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   3
            Left            =   2490
            MaxLength       =   35
            TabIndex        =   99
            Top             =   930
            Width           =   8280
         End
         Begin VB.TextBox txtfields 
            DataField       =   "purtype"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   0
            Left            =   1530
            MaxLength       =   2
            TabIndex        =   1
            Top             =   540
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   1
            Left            =   2490
            MaxLength       =   25
            TabIndex        =   98
            Top             =   540
            Width           =   8280
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "FA Transfer"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   4
            Left            =   90
            TabIndex        =   102
            Top             =   210
            Width           =   825
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Transaction Code"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   21
            Left            =   60
            TabIndex        =   101
            Top             =   1005
            Width           =   1260
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Purchase Type"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   90
            TabIndex        =   100
            Top             =   600
            Width           =   1080
         End
      End
      Begin VB.Frame Frame8 
         Height          =   7425
         Left            =   120
         TabIndex        =   55
         Top             =   1410
         Width           =   10905
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   81
            Left            =   7890
            MaxLength       =   200
            TabIndex        =   148
            TabStop         =   0   'False
            Top             =   6600
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "IncidentchargeGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   80
            Left            =   6930
            MaxLength       =   9
            TabIndex        =   147
            Top             =   6600
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   79
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   145
            TabStop         =   0   'False
            Top             =   6960
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "spotexpenseGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   78
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   144
            Top             =   6960
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ImportDutyGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   77
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   142
            Top             =   6600
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   76
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   141
            TabStop         =   0   'False
            Top             =   6600
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Exc_Gain_lossGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   75
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   139
            Top             =   6240
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   74
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   138
            TabStop         =   0   'False
            Top             =   6240
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "TCS_GL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   73
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   136
            Top             =   6240
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   72
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   135
            TabStop         =   0   'False
            Top             =   6240
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "FibreDisc_GL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   71
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   133
            Top             =   5880
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   70
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   132
            TabStop         =   0   'False
            Top             =   5880
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   69
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   131
            TabStop         =   0   'False
            Top             =   5880
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "AntidumpdutyGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   68
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   130
            Top             =   5880
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "SocialWelfareGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   67
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   127
            Top             =   5520
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   66
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   126
            TabStop         =   0   'False
            Top             =   5520
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "IDGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   65
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   124
            Top             =   5200
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   64
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   123
            TabStop         =   0   'False
            Top             =   5200
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   63
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   122
            TabStop         =   0   'False
            Top             =   5520
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "SICAGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   62
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   121
            Top             =   5520
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "iGSTGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   60
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   17
            Top             =   5180
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   59
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   119
            TabStop         =   0   'False
            Top             =   4880
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   61
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   118
            TabStop         =   0   'False
            Top             =   5180
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "sGSTGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   58
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   31
            Top             =   4880
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   57
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   117
            TabStop         =   0   'False
            Top             =   4840
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "CGSTGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   56
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   16
            Top             =   4840
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   55
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   112
            TabStop         =   0   'False
            Top             =   4500
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "SurchargeGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   54
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   30
            Top             =   4500
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   53
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   110
            TabStop         =   0   'False
            Top             =   4140
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "AdjustGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   52
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   29
            Top             =   4140
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   51
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   108
            TabStop         =   0   'False
            Top             =   3780
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "AddtaxGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   50
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   28
            Top             =   3780
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "OthersTaxableAmtGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   48
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   27
            Top             =   3420
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "CustomsDutyGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   42
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   24
            Top             =   2340
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "BrCommissionGl"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   44
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   25
            Top             =   2700
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ExciseGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   46
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   26
            Top             =   3060
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   49
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   106
            TabStop         =   0   'False
            Top             =   3420
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   47
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   104
            TabStop         =   0   'False
            Top             =   3060
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   19
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   75
            TabStop         =   0   'False
            Top             =   2700
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "TaxGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   18
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   10
            Top             =   2700
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   21
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   74
            TabStop         =   0   'False
            Top             =   3060
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "CSTGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   20
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   11
            Top             =   3060
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   23
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   73
            TabStop         =   0   'False
            Top             =   3420
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "OtherTaxGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   22
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   12
            Top             =   3420
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   45
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   72
            TabStop         =   0   'False
            Top             =   2700
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   43
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   71
            TabStop         =   0   'False
            Top             =   2340
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   41
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   70
            TabStop         =   0   'False
            Top             =   1980
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "OthersGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   40
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   23
            Top             =   1980
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   39
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   69
            TabStop         =   0   'False
            Top             =   1620
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ClearanceGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   38
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   22
            Top             =   1620
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   37
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   68
            TabStop         =   0   'False
            Top             =   1260
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "DamageGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   36
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   21
            Top             =   1260
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   35
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   67
            TabStop         =   0   'False
            Top             =   900
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Charity"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   34
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   20
            Top             =   900
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   33
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   66
            TabStop         =   0   'False
            Top             =   540
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "DRNoteAmtGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   32
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   19
            Top             =   540
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   31
            Left            =   7860
            MaxLength       =   200
            TabIndex        =   65
            TabStop         =   0   'False
            Top             =   180
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "LCinterestGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   30
            Left            =   6900
            MaxLength       =   9
            TabIndex        =   18
            Top             =   180
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   29
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   64
            TabStop         =   0   'False
            Top             =   4500
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "CommissionGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   28
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   15
            Top             =   4500
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   27
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   63
            TabStop         =   0   'False
            Top             =   4140
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "InsuranceGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   26
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   14
            Top             =   4140
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   25
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   62
            TabStop         =   0   'False
            Top             =   3780
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "RlyFrieghtGl"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   24
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   13
            Top             =   3780
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "CashDisGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   4
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   3
            Top             =   180
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   5
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   61
            TabStop         =   0   'False
            Top             =   180
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "TradeDisGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   6
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   4
            Top             =   540
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   7
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   60
            TabStop         =   0   'False
            Top             =   540
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "LryFrieghtGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   8
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   5
            Top             =   900
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   9
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   59
            TabStop         =   0   'False
            Top             =   900
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "BEDGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   10
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   6
            Top             =   1260
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   11
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   58
            TabStop         =   0   'False
            Top             =   1260
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "EDCessGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   14
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   8
            Top             =   1980
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   17
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   103
            TabStop         =   0   'False
            Top             =   2340
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "HsCessGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   16
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   9
            Top             =   2340
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   15
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   57
            TabStop         =   0   'False
            Top             =   1980
            Width           =   2910
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "CessGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   12
            Left            =   1530
            MaxLength       =   9
            TabIndex        =   7
            Top             =   1620
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
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
            Height          =   330
            Index           =   13
            Left            =   2490
            MaxLength       =   200
            TabIndex        =   56
            TabStop         =   0   'False
            Top             =   1620
            Width           =   2910
         End
         Begin VB.Label Label52 
            Caption         =   "Incidental Charge A/c"
            ForeColor       =   &H00FF0000&
            Height          =   390
            Index           =   37
            Left            =   5520
            TabIndex        =   149
            Top             =   6660
            Width           =   1395
         End
         Begin VB.Label Label52 
            Caption         =   "Spot Expense A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   36
            Left            =   120
            TabIndex        =   146
            Top             =   7020
            Width           =   1395
         End
         Begin VB.Label Label52 
            Caption         =   "Import Duty A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   35
            Left            =   120
            TabIndex        =   143
            Top             =   6660
            Width           =   1395
         End
         Begin VB.Label Label52 
            Caption         =   "Exchange Gain/Loss A/c"
            ForeColor       =   &H00FF0000&
            Height          =   390
            Index           =   34
            Left            =   5520
            TabIndex        =   140
            Top             =   6180
            Width           =   1155
         End
         Begin VB.Label Label52 
            Caption         =   "TCS A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   33
            Left            =   120
            TabIndex        =   137
            Top             =   6315
            Width           =   1455
         End
         Begin VB.Label Label52 
            Caption         =   "Fibre Discount A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   32
            Left            =   5520
            TabIndex        =   134
            Top             =   5870
            Width           =   1455
         End
         Begin VB.Label Label52 
            Caption         =   "Anti Dump Duty A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   31
            Left            =   120
            TabIndex        =   129
            Top             =   5955
            Width           =   1455
         End
         Begin VB.Label Label52 
            Caption         =   "Social Welfare A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   30
            Left            =   5520
            TabIndex        =   128
            Top             =   5595
            Width           =   1455
         End
         Begin VB.Label Label52 
            Caption         =   "ID A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   29
            Left            =   5520
            TabIndex        =   125
            Top             =   5280
            Width           =   1095
         End
         Begin VB.Label Label52 
            Caption         =   "SICA A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   28
            Left            =   120
            TabIndex        =   120
            Top             =   5580
            Width           =   1215
         End
         Begin VB.Label Label52 
            Caption         =   "IGST A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   27
            Left            =   120
            TabIndex        =   116
            Top             =   5260
            Width           =   1575
         End
         Begin VB.Label Label52 
            Caption         =   "SGST A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   26
            Left            =   5520
            TabIndex        =   115
            Top             =   4920
            Width           =   1575
         End
         Begin VB.Label Label52 
            Caption         =   "CGST A/c"
            ForeColor       =   &H00FF0000&
            Height          =   315
            Index           =   25
            Left            =   120
            TabIndex        =   114
            Top             =   4920
            Width           =   1665
         End
         Begin VB.Label Label52 
            Caption         =   "Surcharge A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   24
            Left            =   5460
            TabIndex        =   113
            Top             =   4530
            Width           =   1395
         End
         Begin VB.Label Label52 
            Caption         =   "Adjustment A/c"
            ForeColor       =   &H00FF0000&
            Height          =   435
            Index           =   23
            Left            =   5460
            TabIndex        =   111
            Top             =   4200
            Width           =   1665
         End
         Begin VB.Label Label52 
            Caption         =   "Others              (Taxable Amt) A/c"
            ForeColor       =   &H00FF0000&
            Height          =   435
            Index           =   22
            Left            =   5460
            TabIndex        =   109
            Top             =   3360
            Width           =   1665
         End
         Begin VB.Label lblAddtax 
            Caption         =   "Additional Tax A/c"
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   5460
            TabIndex        =   107
            Top             =   3840
            Width           =   1425
         End
         Begin VB.Label Label52 
            Caption         =   "Excise A/c"
            ForeColor       =   &H00FF0000&
            Height          =   315
            Index           =   21
            Left            =   5460
            TabIndex        =   105
            Top             =   3120
            Width           =   1425
         End
         Begin VB.Label Label52 
            Caption         =   "Broker Commission A/c"
            ForeColor       =   &H00FF0000&
            Height          =   555
            Index           =   20
            Left            =   5460
            TabIndex        =   96
            Top             =   2640
            Width           =   1425
         End
         Begin VB.Label Label52 
            Caption         =   "Customs Duty A/c"
            ForeColor       =   &H00FF0000&
            Height          =   330
            Index           =   19
            Left            =   5460
            TabIndex        =   95
            Top             =   2400
            Width           =   1365
         End
         Begin VB.Label Label52 
            Caption         =   "Others (Non Taxable Amt) A/c"
            ForeColor       =   &H00FF0000&
            Height          =   450
            Index           =   18
            Left            =   5460
            TabIndex        =   94
            Top             =   1920
            Width           =   1425
         End
         Begin VB.Label Label52 
            Caption         =   "Commission A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   17
            Left            =   120
            TabIndex        =   93
            Top             =   4560
            Width           =   1575
         End
         Begin VB.Label Label52 
            Caption         =   "LC Interest A/C"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   16
            Left            =   5460
            TabIndex        =   92
            Top             =   240
            Width           =   1500
         End
         Begin VB.Label Label52 
            Caption         =   "Debit Note  A/c"
            ForeColor       =   &H00FF0000&
            Height          =   375
            Index           =   15
            Left            =   5460
            TabIndex        =   91
            Top             =   600
            Width           =   1485
         End
         Begin VB.Label Label52 
            Caption         =   "Charity A/c"
            ForeColor       =   &H00FF0000&
            Height          =   300
            Index           =   14
            Left            =   5460
            TabIndex        =   90
            Top             =   960
            Width           =   1185
         End
         Begin VB.Label Label52 
            Caption         =   "Damage A/c"
            ForeColor       =   &H00FF0000&
            Height          =   330
            Index           =   13
            Left            =   5460
            TabIndex        =   89
            Top             =   1320
            Width           =   1185
         End
         Begin VB.Label Label52 
            Caption         =   "Clearance A/c"
            ForeColor       =   &H00FF0000&
            Height          =   450
            Index           =   0
            Left            =   5460
            TabIndex        =   88
            Top             =   1680
            Width           =   1320
         End
         Begin VB.Label Label52 
            Caption         =   "Insurance A/c"
            ForeColor       =   &H00FF0000&
            Height          =   300
            Index           =   12
            Left            =   120
            TabIndex        =   87
            Top             =   4200
            Width           =   1320
         End
         Begin VB.Label Label52 
            Caption         =   "Railway Freight A/c"
            ForeColor       =   &H00FF0000&
            Height          =   300
            Index           =   11
            Left            =   90
            TabIndex        =   86
            Top             =   3840
            Width           =   1455
         End
         Begin VB.Label Label52 
            Caption         =   "Other Tax A/c"
            ForeColor       =   &H00FF0000&
            Height          =   270
            Index           =   10
            Left            =   90
            TabIndex        =   85
            Top             =   3480
            Width           =   1125
         End
         Begin VB.Label Label52 
            Caption         =   "CST A/c"
            ForeColor       =   &H00FF0000&
            Height          =   180
            Index           =   9
            Left            =   90
            TabIndex        =   84
            Top             =   3120
            Width           =   1125
         End
         Begin VB.Label Label52 
            Caption         =   "Tax A/c"
            ForeColor       =   &H00FF0000&
            Height          =   300
            Index           =   8
            Left            =   90
            TabIndex        =   83
            Top             =   2790
            Width           =   1125
         End
         Begin VB.Label Label52 
            Caption         =   "Cash Discount A/c"
            ForeColor       =   &H00FF0000&
            Height          =   180
            Index           =   1
            Left            =   90
            TabIndex        =   82
            Top             =   240
            Width           =   1395
         End
         Begin VB.Label Label52 
            Caption         =   "Trade Discount A/c"
            ForeColor       =   &H00FF0000&
            Height          =   330
            Index           =   2
            Left            =   90
            TabIndex        =   81
            Top             =   600
            Width           =   1425
         End
         Begin VB.Label Label52 
            Caption         =   "Lorry Freight A/c"
            ForeColor       =   &H00FF0000&
            Height          =   300
            Index           =   3
            Left            =   90
            TabIndex        =   80
            Top             =   990
            Width           =   1245
         End
         Begin VB.Label Label52 
            Caption         =   "BED A/c"
            ForeColor       =   &H00FF0000&
            Height          =   300
            Index           =   4
            Left            =   90
            TabIndex        =   79
            Top             =   1350
            Width           =   1125
         End
         Begin VB.Label Label52 
            Caption         =   "ED Cess  A/c"
            ForeColor       =   &H00FF0000&
            Height          =   240
            Index           =   5
            Left            =   90
            TabIndex        =   78
            Top             =   2070
            Width           =   1125
         End
         Begin VB.Label Label52 
            Caption         =   "Hs Cess A/c"
            ForeColor       =   &H00FF0000&
            Height          =   300
            Index           =   6
            Left            =   90
            TabIndex        =   77
            Top             =   2415
            Width           =   1125
         End
         Begin VB.Label Label52 
            Caption         =   "Cess A/c"
            ForeColor       =   &H00FF0000&
            Height          =   330
            Index           =   7
            Left            =   90
            TabIndex        =   76
            Top             =   1710
            Width           =   1125
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Index           =   1
      Left            =   720
      TabIndex        =   45
      Top             =   1080
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton lovcancel 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   4740
         Style           =   1  'Graphical
         TabIndex        =   44
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         Height          =   615
         Left            =   3000
         Style           =   1  'Graphical
         TabIndex        =   43
         Top             =   4080
         Width           =   1185
      End
      Begin listacx.codelist ksldesc1 
         Height          =   3375
         Left            =   870
         TabIndex        =   49
         Top             =   540
         Width           =   7365
         _ExtentX        =   12991
         _ExtentY        =   5953
         caption         =   ""
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
         Left            =   45
         TabIndex        =   48
         Top             =   135
         Width           =   8760
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Parameter  - FA Related Details"
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
      Left            =   720
      TabIndex        =   47
      Top             =   570
      Width           =   4095
   End
End
Attribute VB_Name = "RMIParamFA"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents shiftRS As Recordset
Attribute shiftRS.VB_VarHelpID = -1
Dim DB As Connection
Dim Opt As String
Dim Rs As New Recordset
Dim sType As String

Dim rs1 As New Recordset
Dim rs3 As New Recordset
Dim rs2 As New Recordset
Dim FLG As String
Dim rs4 As New Recordset
Dim rsCommand1 As New Recordset
Dim rep As Report.ReportView
Dim tabIndex As Integer
Dim a As Integer
Dim I As Integer
Public act1 As String
Dim iRst, iCount As Integer

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error Resume Next
intervalMinutes = -1
If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
    
'    Set rs1 = New Recordset
'    rs1.Open "Select PURTYPE,TCCODE,CashDisGL,TradeDisGL,LryFrieghtGL,BEDGL,CessGL,EDCessGL,HsCessGL,TaxGL,CSTGL,OtherTaxGL,RlyFrieghtGl,InsuranceGL,CommissionGL,LCinterestGL,DRNoteAmtGL,Charity,DamageGL,ClearanceGL,OthersGL,CustomsDutyGL,BrCommissionGl,FA_TRANFER where divcode ='" & adoPrimaryRS!Divcode & "' and purtype ='" & adoPrimaryRS!purtype & "' and tccode ='" & adoPrimaryRS!tccode & "'", DB, adOpenStatic
    
    If adoPrimaryRS!FA_TRANFER = "Y" Then Combo1(0).ListIndex = 0 Else Combo1(0).ListIndex = 1
    
    
    Set Rs = New Recordset
    Rs.Open "select purdesc from RM_PURTYPE where purtype = '" & adoPrimaryRS!purtype & "'", DB, adOpenStatic
    If Rs.EOF = False Then
        txtfields(1).Text = Rs(0)
    Else
        txtfields(1).Text = ""
    End If
    a = 0
    If adoPrimaryRS!tccode = Null Then a = 0 Else a = adoPrimaryRS!tccode
    
    Set Rs = New Recordset
    Rs.Open "select tchead from fa_tcmas where tc = '" & val(a) & "'", DB, adOpenStatic
    If Rs.EOF = False Then
        txtfields(3).Text = Rs(0)
    Else
        txtfields(3).Text = ""
    End If
        
    
    iRst = 2
    iCount = 5
   
    For iRst = 2 To 26
        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS(iRst) & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(iCount).Text = Rs(0)
        Else
            txtfields(iCount).Text = ""
        End If
        iCount = iCount + 2
    Next
    
    iRst = 2
    iCount = 5
'    For iRst = 54 To 54
'        Set Rs = New Recordset
'        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS(iRst) & "'", DB, adOpenStatic
'        TXTFIELDS(iCount).Text = ""
'        If Rs.RecordCount > 0 Then
'            TXTFIELDS(iCount).Text = Rs(0)
'        Else
'            TXTFIELDS(iCount).Text = ""
'        End If
'        iCount = iCount + 2
'    Next
    
        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("SurchargeGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(55).Text = Rs(0)
        Else
            txtfields(55).Text = ""
        End If
        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("SICAGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(63).Text = Rs(0)
        Else
            txtfields(63).Text = ""
        End If
        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("AntidumpdutyGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(69).Text = Rs(0)
        Else
            txtfields(69).Text = ""
        End If
        
        
        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("IDGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(64).Text = Rs(0)
        Else
            txtfields(64).Text = ""
        End If
        
         Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("SocialWelfareGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(66).Text = Rs(0)
        Else
            txtfields(66).Text = ""
        End If
        
        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("FibreDisc_GL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(70).Text = Rs(0)
        Else
            txtfields(70).Text = ""
        End If
       
  
    

        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("CGSTGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(57).Text = Rs(0)
        Else
            txtfields(57).Text = ""
        End If
        
        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("SGSTGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(59).Text = Rs(0)
        Else
            txtfields(59).Text = ""
        End If
        
        
        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("IGSTGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(61).Text = Rs(0)
        Else
            txtfields(61).Text = ""
        End If
        
        
        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("TCS_GL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(72).Text = Rs(0)
        Else
            txtfields(72).Text = ""
        End If
        
        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("Exc_Gain_lossGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(74).Text = Rs(0)
        Else
            txtfields(74).Text = ""
        End If
    
        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("ImportDutyGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(76).Text = Rs(0)
        Else
            txtfields(76).Text = ""
        End If
        
         Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("IncidentchargeGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(81).Text = Rs(0)
        Else
            txtfields(81).Text = ""
        End If
        
        
         Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM fa_glmas WHERE glcode='" & adoPrimaryRS("spotexpenseGL") & "'", DB, adOpenStatic
        txtfields(iCount).Text = ""
        If Rs.RecordCount > 0 Then
            txtfields(79).Text = Rs(0)
        Else
            txtfields(79).Text = ""
        End If
        
        
    LockObject (True)
   ' bindcontls
    
End If
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
                ' Addition
                Opt = "add"
                Screen.MousePointer = 11
                desc.Caption = "Addition"
                SSTab1.Enabled = True
                stbar.Panels(2).Text = "Addition"
                DB.BeginTrans
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "Select PURTYPE,TCCODE,CashDisGL,TradeDisGL,LryFrieghtGL,BEDGL,CessGL,EDCessGL,HsCessGL,TaxGL,CSTGL,OtherTaxGL,RlyFrieghtGl,InsuranceGL,CommissionGL,LCinterestGL,DRNoteAmtGL,Charity,DamageGL,ClearanceGL,OthersGL,CustomsDutyGL,BrCommissionGl,ExciseGL,OthersTaxableAmtGL,ADDTAXGL,AdjustGL,FA_TRANFER,SurchargeGL,CGSTGL,SGSTGL,IGSTGL,SocialWelfareGL,IDGL,SICAGL,AntidumpdutyGL,FibreDisc_GL,TCS_GL,Exc_Gain_lossGL,ImportDutyGL,IncidentchargeGL,spotexpenseGL from rm_param_fa where divcode = '" & Divcode & "' and 1=2", DB, adOpenStatic, adLockOptimistic
                Call bindcontls
                adoPrimaryRS.AddNew
                Call adddelmod(BUTTON)
                txtfields(0).SetFocus
                Screen.MousePointer = 0
                act1 = "n"
                Call ENABLCONTLS
                LockObject (False)
                   
Case 1
           ' Modification
            If Record_Exists("RM_PARAM_FA where divcode ='" & Divcode & "'") = False Then Exit Sub
            Opt = "mod"
            desc.Caption = "Modification"
            SSTab1.Enabled = True
            stbar.Panels(2).Text = "Modification"
            Screen.MousePointer = 11
            DB.BeginTrans
            stbar.Panels(2).Text = "Select Purchase type  from the List"
            Call adddelmod(BUTTON)
            Call ENABLCONTLS
            ' purchase Type look up
            LookUp.Clear = True
            LookUp.query = "select purtype""Purchase Type"",tccode""TC Code"",b.tchead 'TC Head' from rm_param_fa a left join fa_tcmas b on a.tccode=b.tc where a.divcode ='" & Divcode & "'"
            LookUp.DefCol = "Purchase Type"
            LookUp.ALIGN = "2000,2000,3000"
            LookUp.Caption = "Purchase Type Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            Screen.MousePointer = vbHourglass
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "Select PURTYPE,TCCODE,CashDisGL,TradeDisGL,LryFrieghtGL,BEDGL,CessGL,EDCessGL,HsCessGL,TaxGL,CSTGL,OtherTaxGL,RlyFrieghtGl,InsuranceGL,CommissionGL,LCinterestGL,DRNoteAmtGL,Charity,DamageGL,ClearanceGL,OthersGL,CustomsDutyGL,BrCommissionGl,ExciseGL,OthersTaxableAmtGL,ADDTAXGL,AdjustGL,FA_TRANFER,SurchargeGL,CGSTGL,SGSTGL,IGSTGL,SocialWelfareGL,IDGL,SICAGL,AntidumpdutyGL,FibreDisc_GL,TCS_GL,Exc_Gain_lossGL,ImportDutyGL,IncidentchargeGL,spotexpenseGL from rm_param_fa where purtype='" & LookUp.Fields(0) & "' and tccode  = '" & LookUp.Fields(1) & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
            
            Call bindcontls
            Call adddelmod(BUTTON)
            Screen.MousePointer = vbArrow
                If Opt = "del" Then
                    stbar.Panels(2).Text = "Choose either SAVE or CANCEL Button"
                    BUTTON(9).SetFocus
                End If
            LockObject (False)
            Combo1(0).Locked = True
            txtfields(0).Locked = True
            txtfields(1).Locked = True
            txtfields(2).Locked = True
            txtfields(3).Locked = True

            Else
            Call BUTTON_Click(10)
            End If
    Case 2
             'Deletion
             If Record_Exists("rm_param_fa where divcode ='" & Divcode & "'") = False Then Exit Sub
              Opt = "del"
              desc.Caption = "Deletion"
              Screen.MousePointer = 11
              SSTab1.Enabled = True
              stbar.Panels(2).Text = "Deletion"
'              SSTab1.Visible = False
              DB.BeginTrans
              Buttonframe.Enabled = False
               ' purchase Type look up
                LookUp.Clear = True
                LookUp.query = "select purtype""Purchase Type"",tccode""TC Code"",b.Tchead 'TC Head' from rm_param_fa  a left join fa_tcmas b on a.tccode=b.tc where a.divcode ='" & Divcode & "'"
                LookUp.DefCol = "Purchase Type"
                LookUp.ALIGN = "2000,2000"
                LookUp.Caption = "Purchase Type Listing"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                Screen.MousePointer = vbHourglass
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "Select PURTYPE,TCCODE,CashDisGL,TradeDisGL,LryFrieghtGL,BEDGL,CessGL,EDCessGL,HsCessGL,TaxGL,CSTGL,OtherTaxGL,RlyFrieghtGl,InsuranceGL,CommissionGL,LCinterestGL,DRNoteAmtGL,Charity,DamageGL,ClearanceGL,OthersGL,CustomsDutyGL,BrCommissionGl,ExciseGL,OthersTaxableAmtGL,ADDTAXGL,AdjustGL,FA_TRANFER,SurchargeGL,CGSTGL,SGSTGL,IGSTGL,SocialWelfareGL,IDGL,SICAGL,AntidumpdutyGL,FibreDisc_GL,TCS_GL,Exc_Gain_lossGL,ImportDutyGL,IncidentchargeGL,spotexpenseGL from rm_param_fa where purtype='" & LookUp.Fields(0) & "' and tccode  = '" & LookUp.Fields(1) & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
                 stbar.Panels(2).Text = "Select Purchase type  from the List"
                End If
                 Call adddelmod(BUTTON)
                Call disablcontls
                LockObject (True)
                Screen.MousePointer = 0
    Case 5
       'First
       
       desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        stbar.Panels(2).Text = "First Record"
        Call FIR(BUTTON)
        Exit Sub
        Call disablcontls
        
GoFirstError:
        If Err = 3021 Then

        End If
        
Case 6
        'Next
       
        desc.Caption = "Query"
        Call disablcontls
        On Error GoTo GoNextError
        If Not adoPrimaryRS.EOF Then
            adoPrimaryRS.MoveNext
            stbar.Panels(2).Text = "Record  " & adoPrimaryRS.AbsolutePosition & " of " & adoPrimaryRS.RecordCount
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
      If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
            Beep
            BUTTON(6).Enabled = False
            BUTTON(8).Enabled = False
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            Call NEX(BUTTON)
            adoPrimaryRS.MoveLast
            stbar.Panels(2).Text = "Last Record"
       End If
      Exit Sub
GoNextError:
        If Err = 3021 Then
            MsgBox " No Records Found", vbCritical, head
        End If
        
Case 7
        'Previous
       
        desc.Caption = "Query"
        Call disablcontls
        On Error GoTo GoPrevError
        If Not adoPrimaryRS.BOF Then
            adoPrimaryRS.MovePrevious
            stbar.Panels(2).Text = "Record  " & adoPrimaryRS.AbsolutePosition & " of " & adoPrimaryRS.RecordCount
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        
        If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
            Beep
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            adoPrimaryRS.MoveFirst
            stbar.Panels(2).Text = "First Record"
        End If
        Exit Sub
    
GoPrevError:
        If Err = 3021 Then
            MsgBox " No Records Found", vbCritical, head
        End If
        
        
Case 8
       
        desc.Caption = "Query"
        Call disablcontls
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Last Record"
        Call las(BUTTON)
        Exit Sub
GoLastError:
        If Err = 3021 Then

        End If
        
         
  Case 9
       'Save
       
       ' On Error GoTo saveError
        Screen.MousePointer = 11
        Dim TrnLog As Recordset
        If Opt = "add" Or Opt = "mod" Then
            If Validate = False Then Exit Sub
        End If
        
        If Opt = "add" Then
            If Combo1(0).Text = "YES" Then sType = "Y" Else sType = "N"
            DB.Execute "INSERT INTO RM_PARAM_FA VALUES('" & Divcode & "','" & Trim(txtfields(0).Text) & "','" & Trim(txtfields(2).Text) & "','" & Trim(txtfields(4).Text) & "','" & Trim(txtfields(6).Text) & "','" & Trim(txtfields(8).Text) & "','" & Trim(txtfields(10).Text) & "','" & Trim(txtfields(12).Text) & "','" & Trim(txtfields(14).Text) & "','" & Trim(txtfields(16).Text) & "','" & Trim(txtfields(18).Text) & "','" & Trim(txtfields(20).Text) & "','" & Trim(txtfields(22).Text) & "','" & Trim(txtfields(24).Text) & "','" & Trim(txtfields(26).Text) & "','" & Trim(txtfields(28).Text) & "','" & Trim(txtfields(30).Text) & "','" & Trim(txtfields(32).Text) & "','" & Trim(txtfields(34).Text) & "','" & Trim(txtfields(36).Text) & "','" & Trim(txtfields(38).Text) & "','" & Trim(txtfields(40).Text) & "','" & Trim(txtfields(42).Text) & "','" & Trim(txtfields(44).Text) & "','" & sType & "','" & Trim(txtfields(46).Text) & "','" & _
                                                          Trim(txtfields(50).Text) & "','" & Trim(txtfields(48).Text) & "','" & Trim(txtfields(52).Text) & "','" & Trim(txtfields(54).Text) & "','" & Trim(txtfields(56).Text) & "','" & Trim(txtfields(58).Text) & "','" & Trim(txtfields(60).Text) & "','" & Trim(txtfields(67).Text) & "','" & Trim(txtfields(65).Text) & "','" & Trim(txtfields(62).Text) & "','" & Trim(txtfields(68).Text) & "','" & Trim(txtfields(71).Text) & "','" & Trim(txtfields(73).Text) & "','" & Trim(txtfields(75).Text) & "','" & Trim(txtfields(77).Text) & "''" & Trim(txtfields(80).Text) & "''" & Trim(txtfields(78).Text) & "')"
            
             
                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                            TrnLog("TC") = val(txtfields(2).Text)
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "FA Parameter"
                            TrnLog("Trans_Mod") = "Add"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                  
                            TrnLog("PurType") = Trim(txtfields(0).Text)
'                            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                          
'                            TrnLog("BILLDATE") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
'                            TrnLog("LotDt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
'                            TrnLog("LotNo") = txtfields(5).Text
                            
                            TrnLog.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            Screen.MousePointer = 0
            stbar.Panels(2).Text = "Record(s) Saved"
            MsgBox " Record(s) Saved", vbInformation, head
            SSTab1.Tab = 0
'            Call empcontls
            Call query_mode
            Call NEWFORM1(BUTTON, GSNO)
            BUTTON(0).SetFocus
            BUTTON(4).Enabled = False
            Exit Sub
        End If
'    End If
      If Opt = "mod" Then
          txtfields(0).Locked = True
          DB.Execute "UPDATE RM_PARAM_FA SET Exc_Gain_lossGL='" & Trim(txtfields(75).Text) & "',ImportDutyGL='" & Trim(txtfields(77).Text) & "',TCS_GL='" & Trim(txtfields(73).Text) & "',CGSTGL='" & Trim(txtfields(56).Text) & "',SGSTGL='" & Trim(txtfields(58).Text) & "',IGSTGL='" & Trim(txtfields(60).Text) & "', CashDisGL='" & Trim(txtfields(4).Text) & "',TradeDisGL='" & Trim(txtfields(6).Text) & "',LryFrieghtGL='" & Trim(txtfields(8).Text) & "',BEDGL='" & Trim(txtfields(10).Text) & "',CessGL='" & Trim(txtfields(12).Text) & "',EDCessGL='" & Trim(txtfields(14).Text) & "',HsCessGL='" & Trim(txtfields(16).Text) & "' " & _
                    " ,TaxGL='" & Trim(txtfields(18).Text) & "',CSTGL='" & Trim(txtfields(20).Text) & "',OtherTaxGL='" & Trim(txtfields(22).Text) & "',RlyFrieghtGl='" & Trim(txtfields(24).Text) & "',InsuranceGL='" & Trim(txtfields(26).Text) & "',CommissionGL='" & Trim(txtfields(28).Text) & "',LCinterestGL='" & Trim(txtfields(30).Text) & "',DRNoteAmtGL='" & Trim(txtfields(32).Text) & "',Charity='" & Trim(txtfields(34).Text) & "',DamageGL='" & Trim(txtfields(36).Text) & "',ClearanceGL='" & Trim(txtfields(38).Text) & "',OthersGL='" & Trim(txtfields(40).Text) & "',CustomsDutyGL='" & Trim(txtfields(42).Text) & "',BrCommissionGl='" & Trim(txtfields(44).Text) & "'," & _
                     " ExciseGL ='" & Trim(txtfields(46).Text) & "', OthersTaxableAmtGL ='" & Trim(txtfields(48).Text) & "', aDDTAXGL ='" & Trim(txtfields(50).Text) & "', AdjustGL ='" & Trim(txtfields(52).Text) & "',SurchargeGL ='" & Trim(txtfields(54).Text) & "' ,IDGL ='" & Trim(txtfields(65).Text) & "' ,SICAGL ='" & Trim(txtfields(62).Text) & "',SocialWelfareGL ='" & Trim(txtfields(67).Text) & "',AntidumpdutyGL ='" & Trim(txtfields(68).Text) & "' ,FibreDisc_GL ='" & Trim(txtfields(71).Text) & "' ,IncidentchargeGL ='" & Trim(txtfields(80).Text) & "' ,spotexpenseGL ='" & Trim(txtfields(78).Text) & "' " & _
                     " WHERE DIVCODE ='" & Divcode & "' AND Purtype ='" & Trim(txtfields(0).Text) & "' and tccode = '" & Trim(txtfields(2).Text) & "'"
          
                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                            TrnLog("TC") = val(txtfields(2).Text)
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "FA Parameter"
                            TrnLog("Trans_Mod") = "Mod"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                  
                            TrnLog("PurType") = Trim(txtfields(0).Text)
'                            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                          
'                            TrnLog("BILLDATE") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
'                            TrnLog("LotDt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
'                            TrnLog("LotNo") = txtfields(5).Text
                            
                            TrnLog.UpdateBatch adAffectAllChapters
          
          DB.CommitTrans
          Screen.MousePointer = 0
          stbar.Panels(2).Text = "Record(s) Modified"
          MsgBox "Record(s) Modified", vbInformation, head
          SSTab1.Tab = 0
          Call query_mode
          Call NEWFORM1(BUTTON, GSNO)
          BUTTON(0).SetFocus
          BUTTON(4).Enabled = False
          Exit Sub
      End If
      
      If Opt = "del" Then
            On Error GoTo delerr
            Set Rs = New Recordset
            Rs.Open "select tc from fa_purhd where module ='" & ModuleNo & "' tc='" & val(Trim(txtfields(2).Text)) & "' and purchasetype =''" & Trim(txtfields(0).Text) & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
            If Not Rs.EOF Then
             MsgBox "This type is in use.Cannot delete record.", vbInformation, head
             Call BUTTON_Click(10)
             Exit Sub
            End If
            
            DB.Execute "DELETE FROM RM_PARAM_FA WHERE DIVCODE ='" & Divcode & "' AND Purtype ='" & Trim(txtfields(0).Text) & "' and tccode = '" & Trim(txtfields(2).Text) & "'"


                        Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                            TrnLog("TC") = val(txtfields(2).Text)
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "FA Parameter"
                            TrnLog("Trans_Mod") = "Del"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                  
                            TrnLog("PurType") = Trim(txtfields(0).Text)
'                            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                          
'                            TrnLog("BILLDATE") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
'                            TrnLog("LotDt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
'                            TrnLog("LotNo") = txtfields(5).Text
                            
                            TrnLog.UpdateBatch adAffectAllChapters

            DB.CommitTrans
            Screen.MousePointer = 0
            stbar.Panels(2).Text = "Record(s) Deleted"
            MsgBox "Record(s) Deleted", vbInformation, head
            Call query_mode
            Call NEWFORM1(BUTTON, GSNO)
            BUTTON(0).SetFocus
            BUTTON(4).Enabled = False
            Exit Sub
      End If
          Opt = "qry"

delerr:
    If CStr(Mid$(Err.Description, InStr(Err.Description, "ORA") + 4, 5)) = "02292" Then
        MsgBox "This product is in use.Cannot delete record.", vbInformation, head
        Opt = "del"
        'BUTTON_Click (10)
    End If
    If Err = -2147217900 Then
        MsgBox "This unit code cannot be deleted as dependencies exist", vbInformation, head
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        DB.RollbackTrans
        Screen.MousePointer = 0
        Exit Sub
    End If

Case 10
        'CANCEL
        If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
        desc.Caption = "Query"
        Screen.MousePointer = 11
        Select Case Opt
            Case "add"
                DB.RollbackTrans
                stbar.Panels(2).Text = "Operation Canceled"
            Case "mod"
                DB.RollbackTrans
                stbar.Panels(2).Text = "Operation Canceled"
            Case "del"
                DB.RollbackTrans
                stbar.Panels(2).Text = "Operation Canceled"
        End Select
        Opt = " "
        Call query_mode
        Call cancl1(BUTTON, 87)
        BUTTON(4).Enabled = False
        BUTTON(0).Enabled = True
        BUTTON(1).Enabled = True
        BUTTON(2).Enabled = True
        BUTTON(10).Enabled = False
        Call NEWFORM1(BUTTON, GSNO)
        If BUTTON(0).Enabled = True Then BUTTON(0).SetFocus '''''''''''
        Screen.MousePointer = 0
 Case 11
        'If MsgBox("Do you want to exit?", vbYesNo, head) = vbNo Then Exit Sub
        Unload Me

 End Select
 intervalMinutes = -1
 Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click", vbInformation, head

End Sub


Private Sub Combo1_GotFocus(Index As Integer)
On Error GoTo Combo1_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
    Case 0
            stbar.Panels(2).Text = "Select the FA Transfer from the combobox"
End Select

End If

Exit Sub
Combo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_GotFocus of Form RMIParamFA", vbInformation, head
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
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Form_Load()
On Error GoTo Form_Load_Error

        Set Rs = New Recordset
        Set rs1 = New Recordset
        Set rs2 = New Recordset
        Set rs3 = New Recordset
        Set DB = New Connection
        DB.CursorLocation = adUseClient
        DB.Open connectstring
        DATLAB.Caption = Date
        Opt = "qry"
        
        Set Rs = New Recordset
        Rs.Open "Select addtaxrequired from rm_param", DB, adOpenStatic
        If Rs(0) = "Y" Then
            lblAddTax.Enabled = True
            txtfields(50).Enabled = True
            txtfields(51).Enabled = True
        Else
            lblAddTax.Enabled = False
            txtfields(50).Enabled = False
            txtfields(51).Enabled = False
        End If
            
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        stbar.Panels(1).Text = head
        Combo1(0).ListIndex = 0
        YearNo = Right(Year(yfdate), 2)
        BUTTON(4).Enabled = False

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
Opt = " "
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "Select PURTYPE,TCCODE,CashDisGL,TradeDisGL,LryFrieghtGL,BEDGL,CessGL,EDCessGL,HsCessGL,TaxGL,CSTGL,OtherTaxGL,RlyFrieghtGl,InsuranceGL,CommissionGL,LCinterestGL,DRNoteAmtGL,Charity,DamageGL,ClearanceGL,OthersGL,CustomsDutyGL,BrCommissionGl,ExciseGL,OthersTaxableAmtGL,ADDTAXGL,AdjustGL,FA_TRANFER,SurchargeGL,CGSTGL,SGSTGL,IGSTGL,SocialWelfareGL,IDGL,SICAGL,AntidumpdutyGL,FibreDisc_GL,TCS_GL,Exc_Gain_lossGL,ImportDutyGL,IncidentchargeGL,spotexpenseGL from rm_param_fa where divcode ='" & Divcode & "'", DB, adOpenStatic
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
        End If
        If adoPrimaryRS.EOF = False Then adoPrimaryRS.MoveLast
        Call bindcontls
            desc.Caption = "Query"
            stbar.Panels(2).Text = "Query"
      
        Call NEWFORM1(BUTTON, GSNO)
        Call disablcontls
'        Frame1(0).Enabled = False
'        Frame4.Enabled = False
'        Frame5.Enabled = False
'        Frame2.Enabled = False
        'SSTab1.Enabled = False
        stbar.Panels(2).Text = "Total Records : " & adoPrimaryRS.RecordCount

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub bindcontls()
On Error GoTo bindcontls_Error

    On Error Resume Next
    Dim c As TextBox
    For Each c In Me.txtfields
        Set c.DataSource = adoPrimaryRS
    Next

Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0
End Sub
    
Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo Txtfields_Change_Error

If Opt = "" Then
If Index = 54 Then
    MsgBox ""
End If
Select Case Index
    Case 34, 36, 38, 40, 42, 44, 50, 52, 54, 56, 58, 60, 62, 46, 30, 32, 48, 50, 52, 54, 56, 58, 60, 62, 68, 78, 80
        Set Rs = New Recordset
        Rs.Open "select glhead from fa_glmas where glcode='" & txtfields(Index).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            Index = Index + 1
            txtfields(Index).Text = Rs(0)
        Else
            Index = Index + 1
            txtfields(Index).Text = ""
        End If
        
    Case 65, 67, 71, 73
        Set Rs = New Recordset
        Rs.Open "select glhead from fa_glmas where glcode='" & txtfields(Index).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            Index = Index - 1
            txtfields(Index).Text = Rs(0)
        Else
            Index = Index - 1
            txtfields(Index).Text = ""
        End If
    Case 75, 77
        Set Rs = New Recordset
        Rs.Open "select glhead from fa_glmas where glcode='" & txtfields(Index).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            Index = Index - 1
            txtfields(Index).Text = Rs(0)
        Else
            Index = Index - 1
            txtfields(Index).Text = ""
        End If
 
End Select

End If

Exit Sub
Txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Change of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
    Case 0
        stbar.Panels(2).Text = "Enter the Invoicetype maximum of 2 characters"
    Case 1
        stbar.Panels(2).Text = "Enter the description in maximum of 25 characters"
    Case 30, 32, 34, 36, 38, 40, 42, 44, 50, 52, 54, 56, 58, 60, 62, 64, 46, 48, 50
        stbar.Panels(2).Text = "Enter the glcode in maximum of 6 characters"
    Case 2, 4, 6
        stbar.Panels(2).Text = "Enter the invoice reference in maximum of 2 characters"
    Case 27
        stbar.Panels(2).Text = "Enter the transaction code maximum of 2 charaters"
    Case 49
        stbar.Panels(2).Text = "Enter the description "
End Select
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

If KeyCode = 65 And Shift = 2 Then ''''''''''' ADDITION
        Call BUTTON_Click(0)
    ElseIf KeyCode = 77 And Shift = 2 Then ''''''''' MODIFY
        Call BUTTON_Click(1)
    ElseIf KeyCode = 68 And Shift = 2 Then    '''''DELETE
        Call BUTTON_Click(2)
    ElseIf KeyCode = 76 And Shift = 2 Then    '''' LIST
        Call BUTTON_Click(3)
    'ElseIf KeyCode = vbKeyR And Shift = 2 Then
        'Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyN And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyO And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyE And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = 83 And Shift = 2 Then ''''''''SAVE
        Call BUTTON_Click(9)
    ElseIf KeyCode = 27 Then ''''' UNDO
        Call BUTTON_Click(10)
    ElseIf KeyCode = 88 And Shift = 2 Then    ''' EXIT
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        Call BUTTON_Click(12)
'    ElseIf KeyCode = vbKeyW And Shift = 2 Then
'        Call Command6_Click
    End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtfields_KeyPress_Error
intervalMinutes = -1
Select Case Index
    Case 27, 2, 0
            Call tonum(txtfields(Index), 2, KeyAscii)
    Case 30, 32, 34, 36, 38, 40, 42, 44, 50, 52, 54, 56, 58, 60, 62, 64, 46, 48, 50
            Call tonum(txtfields(Index), txtfields(Index).MaxLength, KeyAscii)
End Select

Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0
Purchase_LookUp:
        Set Rs = New Recordset
        Rs.Open "SELECT PURDESC FROM  rm_purtype WHERE Purtype='" & txtfields(Index).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If Rs.EOF = False Then
            txtfields(Index + 1).Text = Rs(0)
        Else
            LookUp.Clear = True
            LookUp.query = "select purtype""Purchase Type"",purdesc""Purchase Description"" from rm_purtype"
            LookUp.DefCol = "Purchase Description"
            LookUp.ALIGN = "2000,5000"
            LookUp.Caption = "Purchase Type Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(Index).Text = LookUp.Fields(0)
                txtfields(Index + 1).Text = LookUp.Fields(1)
                LookUp.Clear = True
                txtfields(Index + 2).SetFocus
            Else
                txtfields(Index).SetFocus
                GoTo Purchase_LookUp
            End If
        End If
Case 2
tc_LOOKUP:
        Set Rs = New Recordset
        Rs.Open "SELECT TCHEAD FROM  fa_tcmas WHERE tc=" & val(txtfields(Index).Text) & "", DB, adOpenDynamic, adLockBatchOptimistic
        If Rs.EOF = False Then
            txtfields(Index + 1).Text = Rs(0)
        Else
            LookUp.Clear = True
            LookUp.query = "select tc""Transaction Code"",tchead""Transaction Code Head"" from fa_tcmas"
            LookUp.DefCol = "Transaction Code Head"
            LookUp.ALIGN = "2000,5000"
            LookUp.Caption = "Transaction Code Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(Index).Text = LookUp.Fields(0)
                txtfields(Index + 1).Text = LookUp.Fields(1)
                LookUp.Clear = True
                txtfields(Index + 2).SetFocus
            Else
                txtfields(Index - 2).SetFocus
                GoTo tc_LOOKUP
            End If
        End If
Case 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 78, 80
GL_LookUp_1:
        Set Rs = New Recordset
        Rs.Open "SELECT GLHEAD FROM  fa_glmas WHERE glcode='" & txtfields(Index).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If Rs.EOF = False Then
            txtfields(Index + 1).Text = Rs(0)
        Else
            LookUp.Clear = True
            LookUp.query = "select glcode""GL Code"",glhead""GL Head"" from fa_glmas"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2000,5000"
            LookUp.Caption = "GL Code Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(Index).Text = LookUp.Fields(0)
                txtfields(Index + 1).Text = LookUp.Fields(1)
                LookUp.Clear = True
                If Index <> 46 And Index <> 78 And Index <> 80 Then
                    txtfields(Index + 2).SetFocus
                Else
                    BUTTON(9).SetFocus
                End If
            Else
                 txtfields(Index).SetFocus
                 GoTo GL_LookUp_1
            End If
        End If
        
    Case 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 68
GL_LOOKUP_2:
        Set Rs = New Recordset
        Rs.Open "SELECT GLHEAD FROM  fa_glmas WHERE glcode='" & txtfields(Index).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If Rs.EOF = False Then
            txtfields(Index + 1).Text = Rs(0)
        Else
                LookUp.Clear = True
            LookUp.query = "select glcode""GL Code"",glhead""GL Head"" from fa_glmas"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2000,5000"
            LookUp.Caption = "GL Code Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(Index).Text = LookUp.Fields(0)
                txtfields(Index + 1).Text = LookUp.Fields(1)
                LookUp.Clear = True
                Set Rs = New Recordset
                
                Rs.Open "SELECT ADDTAXREQUIRED FROM RM_PARAM", DB, adOpenStatic
                If Rs(0) = "Y" Then
                    If Index <> 52 Then
                        txtfields(Index + 2).SetFocus
                    Else
                        BUTTON(9).SetFocus
                    End If
                Else
                    If Index <> 48 Then
                        'txtFields(Index + 2).SetFocus
                    Else
                        BUTTON(9).SetFocus
                    End If
                End If
            Else
                txtfields(Index).SetFocus
                GoTo GL_LOOKUP_2
            End If
        End If
    
  Case 65, 67, 71, 73, 75, 77
GL_LOOKUP_3:
        Set Rs = New Recordset
        Rs.Open "SELECT GLHEAD FROM  fa_glmas WHERE glcode='" & txtfields(Index).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If Rs.EOF = False Then
            txtfields(Index - 1).Text = Rs(0)
        Else
                LookUp.Clear = True
            LookUp.query = "select glcode""GL Code"",glhead""GL Head"" from fa_glmas"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2000,5000"
            LookUp.Caption = "GL Code Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(Index).Text = LookUp.Fields(0)
                txtfields(Index - 1).Text = LookUp.Fields(1)

                LookUp.Clear = True
         
            Else
                txtfields(Index).SetFocus
                GoTo GL_LOOKUP_3
            End If
        End If
      
    

End Select
End If
'End If

Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Validate of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0
    
End Sub
Private Function Validate() As Boolean
Dim rstVal As Recordset
Dim rstResult As Recordset
Dim I As Integer

On Error GoTo Validate_Error
    Set Rs = New Recordset
    Rs.Open "SELECT aDDTAXREQUIRED FROM RM_PARAM", DB, adOpenStatic
    If Rs(0) = "Y" Then
        For I = 0 To 51 Step 2
            If Trim(txtfields(I).Text) = "" Then
                MsgBox "Field should not be empty", vbInformation, head
                txtfields(I).SetFocus
                Validate = False
                Exit Function
            End If
        Next
    Else
        For I = 0 To 49 Step 2
            If Trim(txtfields(I).Text) = "" Then
                MsgBox "Field should not be empty", vbInformation, head
                txtfields(I).SetFocus
                Validate = False
                Exit Function
            End If
        Next
    End If
    If Opt = "add" Then
    Set rstVal = New Recordset
    rstVal.Open "Select * from rm_param_fa where TCCODE = '" & Trim(txtfields(2).Text) & "' and Divcode ='" & Divcode & "' and divcode = '" & Divcode & "'", DB, adOpenStatic
    If rstVal.EOF = False Then
        MsgBox "TC Code is Already Present", vbInformation, head
        txtfields(2).SetFocus
        Screen.MousePointer = 0
        Validate = False
        Exit Function
    End If
    End If
    
    Validate = True

Exit Function
Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Validate of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0

End Function

Private Function LockObject(status As Boolean)
Dim j As Integer

On Error GoTo LockObject_Error

    If status = True Then
        Combo1(0).Locked = True
        For j = 1 To 51 Step 1
            txtfields(j).Locked = True
        Next
    ElseIf status = False Then
        Combo1(0).Locked = False
        For j = 1 To 51 Step 1
            txtfields(j).Locked = False
        Next
    End If

Exit Function
LockObject_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LockObject of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0

End Function
Public Sub ENABLCONTLS()
Dim U As Integer
'    For u = 1 To 3 Step 1
'       If u <> 4 Then txtfields(u).Locked = False
'    Next

On Error GoTo ENABLCONTLS_Error

    

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub disablcontls()
Dim t As Control
'    For Each t In Me.Controls
'    If TypeOf t Is TextBox Then
'        t.Locked = True
'    End If
'    Next

On Error GoTo disablcontls_Error

    

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form RMIParamFA", vbInformation, head
Screen.MousePointer = 0
End Sub


