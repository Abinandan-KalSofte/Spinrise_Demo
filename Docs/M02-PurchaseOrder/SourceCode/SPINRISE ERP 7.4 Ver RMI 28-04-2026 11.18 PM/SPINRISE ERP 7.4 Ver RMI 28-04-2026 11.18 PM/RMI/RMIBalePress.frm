VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmBalePress 
   Caption         =   "Bale Press"
   ClientHeight    =   8490
   ClientLeft      =   390
   ClientTop       =   3315
   ClientWidth     =   11400
   ForeColor       =   &H80000009&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport crr 
      Left            =   1485
      Top             =   8535
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      WindowControlBox=   -1  'True
      WindowMaxButton =   -1  'True
      WindowMinButton =   -1  'True
      PrintFileLinesPerPage=   60
      WindowShowSearchBtn=   -1  'True
      WindowShowPrintSetupBtn=   -1  'True
      WindowShowRefreshBtn=   -1  'True
   End
   Begin VB.Frame Frame1 
      Caption         =   "Removed  Fields"
      Height          =   5265
      Left            =   11160
      TabIndex        =   62
      Top             =   1320
      Visible         =   0   'False
      Width           =   10620
      Begin VB.TextBox Txtfields 
         Height          =   330
         Index           =   1
         Left            =   2115
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   96
         TabStop         =   0   'False
         Top             =   4305
         Width           =   990
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "RMIBalePress.frx":0000
         Left            =   1260
         List            =   "RMIBalePress.frx":0010
         TabIndex        =   95
         Top             =   1515
         Visible         =   0   'False
         Width           =   1970
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "RMIBalePress.frx":0037
         Left            =   3975
         List            =   "RMIBalePress.frx":0044
         Locked          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   86
         TabStop         =   0   'False
         Top             =   2040
         Width           =   930
      End
      Begin VB.TextBox Txtfields 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   15
         Left            =   6645
         MaxLength       =   5
         TabIndex        =   85
         Top             =   3180
         Width           =   1065
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
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
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   330
         Index           =   16
         Left            =   2265
         MaxLength       =   11
         TabIndex        =   84
         Top             =   2640
         Width           =   1380
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
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
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   330
         Index           =   18
         Left            =   8025
         MaxLength       =   11
         TabIndex        =   83
         Top             =   3180
         Width           =   1350
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
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
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   330
         Index           =   17
         Left            =   4020
         MaxLength       =   9
         TabIndex        =   82
         Top             =   2565
         Width           =   885
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   19
         Left            =   1275
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   81
         TabStop         =   0   'False
         Top             =   3510
         Width           =   1395
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
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
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   330
         Index           =   24
         Left            =   6420
         MaxLength       =   9
         TabIndex        =   80
         Top             =   2655
         Width           =   1065
      End
      Begin VB.TextBox Text6 
         Height          =   315
         Left            =   2400
         TabIndex        =   76
         Top             =   1455
         Visible         =   0   'False
         Width           =   2970
      End
      Begin VB.TextBox Txtfields 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   10
         Left            =   1365
         MaxLength       =   10
         TabIndex        =   75
         Top             =   1440
         Visible         =   0   'False
         Width           =   870
      End
      Begin VB.TextBox Txtfields 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   5
         Left            =   5100
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   69
         Top             =   2625
         Width           =   975
      End
      Begin VB.TextBox Txtfields 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   6
         Left            =   4890
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   68
         Top             =   705
         Width           =   975
      End
      Begin VB.TextBox Txtfields 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   7
         Left            =   1470
         MaxLength       =   20
         TabIndex        =   67
         Top             =   1035
         Width           =   2100
      End
      Begin VB.TextBox Txtfields 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   8
         Left            =   1470
         MaxLength       =   15
         TabIndex        =   66
         Top             =   675
         Width           =   2100
      End
      Begin VB.TextBox Txtfields 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   12
         Left            =   1470
         MaxLength       =   10
         TabIndex        =   65
         Top             =   330
         Width           =   2100
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   20
         Left            =   5970
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   64
         TabStop         =   0   'False
         Top             =   330
         Width           =   3285
      End
      Begin VB.TextBox Text5 
         BackColor       =   &H00E0E0E0&
         Height          =   330
         Left            =   5970
         Locked          =   -1  'True
         TabIndex        =   63
         TabStop         =   0   'False
         Top             =   705
         Width           =   3285
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         Height          =   330
         Index           =   2
         Left            =   1830
         TabIndex        =   78
         Top             =   1875
         Visible         =   0   'False
         Width           =   960
         _ExtentX        =   1693
         _ExtentY        =   582
         _Version        =   393216
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
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
      Begin MSMask.MaskEdBox MaskEdBox1 
         Height          =   315
         Index           =   1
         Left            =   6465
         TabIndex        =   97
         TabStop         =   0   'False
         Top             =   4275
         Width           =   1305
         _ExtentX        =   2302
         _ExtentY        =   556
         _Version        =   393216
         Enabled         =   0   'False
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
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
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "Purchase Order No."
         Height          =   195
         Left            =   645
         TabIndex        =   99
         Top             =   4365
         Width           =   1410
      End
      Begin VB.Label Label16 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "P.O.Date"
         Height          =   195
         Left            =   5250
         TabIndex        =   98
         Top             =   4320
         Width           =   660
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Unit"
         Height          =   195
         Index           =   1
         Left            =   3210
         TabIndex        =   94
         Top             =   3585
         Width           =   285
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "Rate/"
         Height          =   195
         Left            =   1440
         TabIndex        =   93
         Top             =   2835
         Width           =   450
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         Caption         =   "Nett Weight"
         Height          =   195
         Left            =   6930
         TabIndex        =   92
         Top             =   435
         Width           =   855
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Gross Weight"
         Height          =   195
         Index           =   0
         Left            =   540
         TabIndex        =   91
         Top             =   3090
         Width           =   960
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         Caption         =   "Tare Weight"
         Height          =   195
         Left            =   2655
         TabIndex        =   90
         Top             =   3075
         Width           =   885
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Quantity"
         Height          =   195
         Left            =   5520
         TabIndex        =   89
         Top             =   3255
         Width           =   585
      End
      Begin VB.Label Label29 
         AutoSize        =   -1  'True
         Caption         =   "Moisture"
         Height          =   195
         Left            =   4680
         TabIndex        =   88
         Top             =   3225
         Width           =   600
      End
      Begin VB.Label Label31 
         AutoSize        =   -1  'True
         Caption         =   "unit"
         ForeColor       =   &H000000FF&
         Height          =   195
         Left            =   1725
         TabIndex        =   87
         Top             =   3090
         Width           =   255
      End
      Begin VB.Label Label26 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Date"
         Height          =   195
         Left            =   840
         TabIndex        =   79
         Top             =   1980
         Visible         =   0   'False
         Width           =   345
      End
      Begin VB.Label Label23 
         AutoSize        =   -1  'True
         Caption         =   "Ginning Name"
         Height          =   195
         Left            =   135
         TabIndex        =   77
         Top             =   1515
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.Label Label24 
         AutoSize        =   -1  'True
         Caption         =   "Party Lot No."
         Height          =   195
         Left            =   15
         TabIndex        =   74
         Top             =   375
         Width           =   930
      End
      Begin VB.Label Label19 
         AutoSize        =   -1  'True
         Caption         =   "PR Number"
         Height          =   195
         Left            =   0
         TabIndex        =   73
         Top             =   1080
         Width           =   825
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "PR Mark"
         Height          =   195
         Left            =   0
         TabIndex        =   72
         Top             =   735
         Width           =   630
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Variety"
         Height          =   195
         Left            =   3750
         TabIndex        =   71
         Top             =   3210
         Width           =   960
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Mixing Group"
         Height          =   195
         Left            =   3765
         TabIndex        =   70
         Top             =   750
         Width           =   1110
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   42
      Top             =   -120
      Width           =   11310
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIBalePress.frx":0058
         Height          =   510
         Index           =   4
         Left            =   1635
         Picture         =   "RMIBalePress.frx":0362
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIBalePress.frx":06F7
         Height          =   510
         Index           =   11
         Left            =   5400
         Picture         =   "RMIBalePress.frx":0B41
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit  (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIBalePress.frx":0ED6
         Height          =   510
         Index           =   10
         Left            =   4860
         Picture         =   "RMIBalePress.frx":11E0
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel   (Ctrl BackSpace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIBalePress.frx":155C
         Height          =   510
         Index           =   9
         Left            =   4320
         Picture         =   "RMIBalePress.frx":1866
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save  (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIBalePress.frx":1C08
         Height          =   510
         Index           =   8
         Left            =   3780
         Picture         =   "RMIBalePress.frx":2052
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record  (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIBalePress.frx":23B4
         Height          =   510
         Index           =   7
         Left            =   3240
         Picture         =   "RMIBalePress.frx":27FE
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record  (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIBalePress.frx":2B4E
         Height          =   510
         Index           =   6
         Left            =   2700
         Picture         =   "RMIBalePress.frx":2F98
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record  (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIBalePress.frx":32E5
         Height          =   510
         Index           =   5
         Left            =   2160
         Picture         =   "RMIBalePress.frx":372F
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record  (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1635
         Picture         =   "RMIBalePress.frx":3A94
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List  (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIBalePress.frx":3E2B
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
         Left            =   1110
         Picture         =   "RMIBalePress.frx":4135
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete  (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIBalePress.frx":44D1
         Height          =   510
         Index           =   1
         Left            =   585
         Picture         =   "RMIBalePress.frx":47DB
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIBalePress.frx":4B55
         Height          =   510
         Index           =   0
         Left            =   60
         Picture         =   "RMIBalePress.frx":4E5F
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
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
         Left            =   9330
         TabIndex        =   44
         Top             =   255
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   7800
         TabIndex        =   43
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   41
      Top             =   8190
      Width           =   11400
      _ExtentX        =   20108
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   10584
            MinWidth        =   10584
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "10/04/2021"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "07:03 PM"
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
      Height          =   6540
      Left            =   495
      TabIndex        =   50
      Top             =   960
      Width           =   9915
      _ExtentX        =   17489
      _ExtentY        =   11536
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "         "
      TabPicture(0)   =   "RMIBalePress.frx":51F2
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame7 
         Height          =   6390
         Left            =   105
         TabIndex        =   51
         Top             =   30
         Width           =   9690
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "bpno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   0
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   12
            Top             =   165
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "Gincode"
            Height          =   330
            Index           =   32
            Left            =   1650
            MaxLength       =   100
            TabIndex        =   26
            Top             =   2895
            Width           =   1005
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   31
            Left            =   2700
            Locked          =   -1  'True
            MaxLength       =   30
            TabIndex        =   27
            TabStop         =   0   'False
            Top             =   2895
            Width           =   6750
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "catcd"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   29
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   14
            Top             =   555
            Width           =   1020
         End
         Begin VB.TextBox Text9 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2700
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   15
            TabStop         =   0   'False
            Text            =   " "
            Top             =   555
            Width           =   6750
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "Sno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   30
            Left            =   1650
            MaxLength       =   10
            TabIndex        =   24
            TabStop         =   0   'False
            Top             =   2400
            Width           =   2580
         End
         Begin VB.TextBox Text8 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2700
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   23
            TabStop         =   0   'False
            Text            =   " "
            Top             =   2025
            Width           =   6735
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "areacode"
            Height          =   330
            Index           =   4
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   20
            TabStop         =   0   'False
            Top             =   1650
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "weignment"
            Height          =   330
            Index           =   13
            Left            =   1650
            MaxLength       =   100
            TabIndex        =   22
            TabStop         =   0   'False
            Top             =   2025
            Width           =   1020
         End
         Begin VB.TextBox Text7 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   6450
            Locked          =   -1  'True
            TabIndex        =   30
            TabStop         =   0   'False
            Top             =   3270
            Width           =   3030
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   23
            Left            =   6450
            Locked          =   -1  'True
            MaxLength       =   30
            TabIndex        =   33
            TabStop         =   0   'False
            Top             =   3645
            Width           =   3030
         End
         Begin VB.TextBox Txtfields 
            Height          =   330
            Index           =   22
            Left            =   5415
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   32
            Top             =   3645
            Width           =   975
         End
         Begin VB.TextBox Txtfields 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   21
            Left            =   1650
            MaxLength       =   30
            TabIndex        =   31
            Top             =   3645
            Width           =   2565
         End
         Begin VB.TextBox Text3 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2700
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   21
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1650
            Width           =   6750
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2700
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   19
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1275
            Width           =   6750
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2700
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   17
            TabStop         =   0   'False
            Text            =   " "
            Top             =   915
            Width           =   6750
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            Height          =   330
            Index           =   2
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   16
            Top             =   900
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "brkcd"
            Height          =   330
            Index           =   3
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   18
            TabStop         =   0   'False
            Top             =   1275
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   11
            Left            =   1650
            MaxLength       =   50
            MultiLine       =   -1  'True
            TabIndex        =   28
            Top             =   3270
            Width           =   2565
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "carcode"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   9
            Left            =   5415
            MaxLength       =   4
            TabIndex        =   29
            Top             =   3270
            Width           =   975
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DATE1"
            Height          =   330
            Index           =   3
            Left            =   6165
            TabIndex        =   25
            TabStop         =   0   'False
            Top             =   2370
            Width           =   1050
            _ExtentX        =   1852
            _ExtentY        =   582
            _Version        =   393216
            BackColor       =   14737632
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
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
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "bpDATE"
            Height          =   255
            Index           =   0
            Left            =   8160
            TabIndex        =   13
            Top             =   180
            Width           =   1005
            _ExtentX        =   1773
            _ExtentY        =   450
            _Version        =   393216
            BorderStyle     =   0
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
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
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   330
            Left            =   8130
            TabIndex        =   106
            Top             =   150
            Width           =   1320
            _ExtentX        =   2328
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   154861569
            CurrentDate     =   36831
         End
         Begin FPSpreadADO.fpSpread spdVar 
            Height          =   2340
            Left            =   15
            TabIndex        =   34
            Top             =   4035
            Width           =   9660
            _Version        =   524288
            _ExtentX        =   17039
            _ExtentY        =   4128
            _StockProps     =   64
            ArrowsExitEditMode=   -1  'True
            DisplayRowHeaders=   0   'False
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
            ProcessTab      =   -1  'True
            RowHeaderDisplay=   0
            ScrollBarExtMode=   -1  'True
            SpreadDesigner  =   "RMIBalePress.frx":520E
            AppearanceStyle =   0
         End
         Begin VB.Label Label44 
            AutoSize        =   -1  'True
            Caption         =   "Document  No."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   180
            TabIndex        =   108
            Top             =   225
            Width           =   1080
         End
         Begin VB.Label Label43 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Document Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   6840
            TabIndex        =   107
            Top             =   240
            Width           =   1125
         End
         Begin VB.Label Label42 
            AutoSize        =   -1  'True
            Caption         =   "Ginner "
            Height          =   195
            Left            =   180
            TabIndex        =   105
            Top             =   2955
            Width           =   510
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   195
            TabIndex        =   104
            Top             =   645
            Width           =   630
         End
         Begin VB.Label Label41 
            AutoSize        =   -1  'True
            Caption         =   "Material Inward Date"
            Height          =   195
            Left            =   4365
            TabIndex        =   103
            Top             =   2445
            Width           =   1470
         End
         Begin VB.Label Label39 
            AutoSize        =   -1  'True
            Caption         =   "Material Inward No."
            Height          =   195
            Left            =   180
            TabIndex        =   101
            Top             =   2445
            Width           =   1380
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "L.R. No."
            Height          =   195
            Left            =   180
            TabIndex        =   59
            Top             =   3690
            Width           =   600
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Godown"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   4320
            TabIndex        =   58
            Top             =   3690
            Width           =   600
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Weighnment  by"
            Height          =   195
            Left            =   180
            TabIndex        =   57
            Top             =   2085
            Width           =   1155
         End
         Begin VB.Line Line6 
            BorderColor     =   &H00FFFFFF&
            X1              =   -15
            X2              =   9645
            Y1              =   4005
            Y2              =   4005
         End
         Begin VB.Line Line5 
            BorderColor     =   &H00808080&
            X1              =   15
            X2              =   9690
            Y1              =   4020
            Y2              =   4020
         End
         Begin VB.Line Line4 
            BorderColor     =   &H00FFFFFF&
            X1              =   15
            X2              =   9570
            Y1              =   2790
            Y2              =   2790
         End
         Begin VB.Line Line3 
            BorderColor     =   &H00808080&
            X1              =   30
            X2              =   9565
            Y1              =   2805
            Y2              =   2805
         End
         Begin VB.Line Line2 
            BorderColor     =   &H00FFFFFF&
            X1              =   75
            X2              =   9610
            Y1              =   495
            Y2              =   495
         End
         Begin VB.Line Line1 
            BorderColor     =   &H00808080&
            X1              =   0
            X2              =   9660
            Y1              =   510
            Y2              =   510
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   180
            TabIndex        =   56
            Top             =   1005
            Width           =   570
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Station"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   180
            TabIndex        =   55
            Top             =   1725
            Width           =   495
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Broker"
            Height          =   195
            Left            =   180
            TabIndex        =   54
            Top             =   1350
            Width           =   465
         End
         Begin VB.Label Label20 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Lorry No."
            Height          =   195
            Left            =   180
            TabIndex        =   53
            Top             =   3300
            Width           =   645
         End
         Begin VB.Label Label21 
            Caption         =   "Transporter Name"
            ForeColor       =   &H00FF0000&
            Height          =   420
            Left            =   4320
            TabIndex        =   52
            Top             =   3225
            Width           =   960
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   885
      TabIndex        =   36
      Top             =   1305
      Visible         =   0   'False
      Width           =   8865
      Begin KSLDESCOCX.Ksldesc Ksllist1 
         Height          =   3240
         Left            =   750
         TabIndex        =   60
         Top             =   840
         Width           =   7260
         _ExtentX        =   12806
         _ExtentY        =   5715
         ForeColor       =   -2147483635
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "RMIBalePress.frx":563F
         Height          =   615
         Left            =   3000
         Picture         =   "RMIBalePress.frx":5A25
         Style           =   1  'Graphical
         TabIndex        =   47
         Top             =   4095
         Width           =   1185
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIBalePress.frx":5DEB
         Height          =   615
         Left            =   4740
         Picture         =   "RMIBalePress.frx":61CD
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   4080
         Width           =   1185
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
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
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   45
         Top             =   120
         Width           =   8775
      End
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H80000004&
      ForeColor       =   &H80000009&
      Height          =   2430
      Left            =   990
      TabIndex        =   37
      Top             =   2340
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIBalePress.frx":65A0
         Height          =   615
         Left            =   4020
         Picture         =   "RMIBalePress.frx":6982
         Style           =   1  'Graphical
         TabIndex        =   49
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         DownPicture     =   "RMIBalePress.frx":6D55
         Height          =   615
         Left            =   2580
         Picture         =   "RMIBalePress.frx":713B
         Style           =   1  'Graphical
         TabIndex        =   48
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3705
         MaxLength       =   6
         TabIndex        =   38
         Top             =   870
         Width           =   2025
      End
      Begin VB.Label Label28 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Find "
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
         TabIndex        =   40
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Arrival  No."
         Height          =   195
         Left            =   2565
         TabIndex        =   39
         Top             =   945
         Width           =   780
      End
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4305
      Left            =   6405
      TabIndex        =   100
      Top             =   1005
      Visible         =   0   'False
      Width           =   4020
      _extentx        =   7091
      _extenty        =   7594
   End
   Begin VB.Label Label40 
      AutoSize        =   -1  'True
      Caption         =   "Weighment"
      Height          =   195
      Left            =   0
      TabIndex        =   102
      Top             =   0
      Width           =   810
   End
   Begin VB.Label Label30 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   405
      Left            =   6750
      TabIndex        =   61
      Top             =   720
      Width           =   3885
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Bale Press"
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
      Left            =   525
      TabIndex        =   35
      Top             =   615
      Width           =   1350
   End
End
Attribute VB_Name = "FrmBalePress"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim sSUPType As String
Dim rstPARAM As Recordset
Dim rstSLOTNO As Recordset
Dim Rs As Recordset
Dim rs1 As Recordset
Dim Opt As String
Dim co As Integer
Dim oText As TextBox
Dim pg1 As Integer
Dim testr As String
Dim DB As Connection
Dim oldqty As Integer
Dim oldcontno As String
Dim sInwardNo         As String
Dim sInwardDate       As String
Dim z As Integer
Dim oldcontdt As Date
Dim qty As Integer
Dim Sname As String
Dim sCode As String
Dim gCode As String
Dim sLorryNo As String
Dim sOrdNo As String
Dim gDivision As String
Dim iLenght, iString As String
Dim sDivCode As String
Dim LSNo As Integer
''For spread Grid Col position
Const IContno            As Integer = 1
Const IContdt            As Integer = 2
Const IVarcode           As Integer = 3
Const IVarName           As Integer = 4
Const Iplotno            As Integer = 5
Const IPRNO              As Integer = 6
Const Ipressmarkno       As Integer = 7
Const Iunit              As Integer = 8
Const Imixcount          As Integer = 9
Const Imixgrp            As Integer = 10
Const iAQty              As Integer = 11
Const iAGrswt            As Integer = 12
Const iATarwt            As Integer = 13
Const iANetwt            As Integer = 14
Const iQty               As Integer = 15
Const iGrswt             As Integer = 16
Const iTarwt             As Integer = 17
Const iNetwt             As Integer = 18

Dim rssarrmod As Recordset

'---------------------------------------------------------------------------------------
' Procedure : Command3_Click
' DateTime  : 07/12/2008 14:40
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

    Screen.MousePointer = 11
    Dim lotdate As String
   ' lotdate = Format(dcbdate.Text, "yyyy/mm/dd")
   
    Dim address As String
    Dim lotbale As Recordset
    Dim ADD As Recordset
    Dim brok As Recordset
    Dim area As String
    Dim PAGE As Integer
    PAGE = 0
    Set lotbale = New Recordset
    lotbale.Open "select a.lotno,a.plotno,a.supcd,a.ratecy,a.quantity as bales,a.varcode,a.brkcd,a.plotno," & _
                  "a.arrdate,a.freight,a.prno,a.contno,lorrynos,a.carcode,c.slname,d.carname,f.areaname," & _
                  "e.varname,ISNULL(GCNO,0)AS GCNO from fa_slmas c,RM_BPPRODUCTION a,po_car d,rm_var e,rm_area f where  " & _
                  " arrno='" & val(txtfields(0).Text) & "' and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-d") & "' and " & _
                  " a.divcode='" & Divcode & "'" & _
                  " and a.supcd=c.slcode and a.carcode*=d.carcode and " & _
                  " a.varcode*=e.varcode and a.areacode*=f.areacode", DB, adOpenDynamic, adLockBatchOptimistic
    Set ADD = New Recordset
        ADD.Open "SELECT DIVNAME,ADD1,ADD2,ADD3,CITY,PINCODE,PHONE1,FAX FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
        address = Trim(ADD!ADD1 & "") + Trim(ADD!add2 & "") + Trim(ADD!add3 & "") + Trim(ADD!CITY & "") + "-" + Trim(ADD!PINCODE & "") + " Ph:" + Trim(ADD!phone1 & "") + " Fax." + Trim(ADD!fax & "")
        
     Set rep = New Report.ReportView
        a = FreeFile
        Close #a
        Close
        Open "C:\CottonBaleReceipt.txt" For Output As #a
    If lotbale.RecordCount <= 0 Then
        Screen.MousePointer = 0
        MsgBox " No Records Found", vbInformation, "Cotton Bale Receipt"
        Exit Sub
    Else
      lotbale.MoveFirst
      Do While Not lotbale.EOF
        If lotbale!areaname = " " Or lotbale!areaname = Null Then
            area = Space(18)
        Else
            area = Padr(lotbale!areaname, 18, " ")
        End If
    
        Set brok = New Recordset
        brok.Open "select slname from fa_slmas where slcode='" & lotbale!brkcd & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If brok.EOF = False Then
            brokname = brok(0)
        Else
            brokname = ""
        End If
        Set GC = New Recordset
        GC.Open "select GHEAD from RM_GINNING where Gcode='" & lotbale!GCNO & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If GC.RecordCount > 0 Then
        GNAME = UCase(GC(0))
        Else
        GNAME = ""
        End If
        Print #a,
        Print #a,
        Print #a, Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27) + "F" + Chr(18)
        Print #a, 'CENTRE(address, 85, " ")
        Print #a,
        Print #a, Chr(27) + "E" + CENTRE("Raw Material Bales Receipt - Acknowledgemant", 85, " ") + Chr(27) + "F"
        Print #a,
        Print #a, Space(5) + "Arrival No.     : " + Padr(txtfields(0).Text, 18, " ") + Space(15) + "C.T.R Date: " + Padr(Format(lotbale!ArrDate, "DD/MM/YY"), 14, " ")
        Print #a, Space(5) + "P.O. NO.        : " + Padr(lotbale!ContNo, 50, " ")
        Print #a, Space(5) + "Supplier Name   : " + Padr(lotbale!sLname, 50, " ")
        Print #a, Space(5) + "Rate \ Candy    : " + Padr(INF(lotbale!RATECY, 0), 18, " ") + Space(6) + "Supplier Lot no. : " + Padr(lotbale!PlotNo, 18, " ")
        Print #a, Space(5) + "No. OF Bales    : " + Padr(lotbale!bales, 18, " ") + Space(6) + "Station          : " + area
        Print #a, Space(5) + "Variety         : " + Padr(lotbale!VarName, 20, " ")
        Print #a, Space(5) + "Bale Checked    : " + Space(18) + Space(15)
        Print #a, Space(5) + "Broker          : " + Padr(brokname, 70, " ")
        Print #a, Space(5) + "P.R. No         : " + Padr(lotbale!PRNO, 50, " ")
        Print #a, Space(5) + "Transport       : " + Padr(lotbale!carname, 18, " ")
        Print #a, Space(5) + "Lorry No.       : " + Padr(lotbale!LORRYNOS, 18, " ")
        Print #a, Space(5) + "Lorry Frieght   : " + Padr(INF(lotbale!Freight, 2), 18, " ")
        If lotbale!Freight > 0 Then
            Print #a, Space(5) + "(Rs " + Padr(Num_To_Word(lotbale!Freight), 75, " ") + ")"
        Else
            Print #a, Space(5) + "(Rs " + Space(75) + ")"
        End If
        Print #a, Space(5) & String(80, "-")
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
        'Print #a, Space(8) + "COTTON CLERK" + Space(8) + "LORRY DRIVER" + Space(8) + "CASHIER" + Space(8) + "OAI"
        If PAGE = 0 Then
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            PAGE = 1
        ElseIf PAGE = 1 Then
            PAGE = 0
            Print #a, Chr(12)
        End If
    lotbale.MoveNext
    Loop
        Close #a
        a = FreeFile
        Open "c:\CottonBaleReceipt.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "c:"
        Print #a, "cd\"
        Print #a, "type CottonBaleReceipt.txt>prn"
        Close #a
        rep.txtfile = "c:\CottonBaleReceipt.txt"
        rep.Batfile = "c:\CottonBaleReceipt.bat"
    End If
    Screen.MousePointer = 0

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_KeyDown
' DateTime  : 07/12/2008 14:40
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
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
    If Frame5.Visible = True Then
        Command3.Visible = False
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If
    If KeyCode = 13 Then SendKeys "{TAB}"
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
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Arrival"
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
gCode = ""
Select Case Index
Case 0
        If ToValidFinYear(Divcode) = False Then Exit Sub
        Set rsz = New Recordset
        rsz.Open "select max(arrdate) from RM_BPPRODUCTION where divcode='" & Divcode & "'", DB, adOpenStatic
        
        If rsz.RecordCount > 0 Then
            If IsDate(rsz(0)) = True Then
                If rsz(0) > pdate Then
                    MsgBox "Please enter valid Processing Date...!!!", vbInformation, head
                    Exit Sub
                End If
            End If
        End If


    Opt = "add"
    desc.Caption = "Addition"
    SSTab1.Visible = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select divcode,ARRNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,QUANTITY,GROSSWT,TAREWT,NETWT,BBFLAG,ARRDATE,lotno,lottype,lotdt,weignment,godown,LRNO,inwardno,inwarddate FROM RM_BPPRODUCTION WHERE 1 = 2 and divcode = '" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
    
    
    txtfields(22).Text = ""
    sCode = ""
    Sname = ""
    txtfields(0).Text = ""
    txtfields(2).Text = ""
    txtfields(11).Text = ""
    txtfields(21).Text = ""
    txtfields(22).Text = ""
    txtfields(23).Text = ""
    txtfields(30).Text = ""
    txtfields(32).Text = ""
    Text7.Text = ""
    MaskEdBox1(3).Text = "__/__/____"
    Call ENABLCONTLS
    Call bindcontls
    
    ''DB.BeginTrans
    Call SpreadAlign(0)
    Call adddelmod(BUTTON)
    txtfields(0).Locked = True
    txtfields(3).Locked = True
    MaskEdBox1(0).Text = pdate
    
    StatusBar1.Panels(2).Text = "Select Purchase Order Number from the List"
    Combo1.Locked = False
    txtfields(0).Locked = True
    txtfields(3).Locked = True
    txtfields(1).Locked = False
    txtfields(2).Locked = False
    Combo3.Text = "General"
    SSTab1.Enabled = True
    txtfields(0).Locked = True
    MaskEdBox1(0).Enabled = False
    DTPicker2.Enabled = False
    txtfields(2).Text = ""
    txtfields(2).SetFocus
    
    'to generate separate lot no for waste
    
    
    Set Rs = New Recordset
    Rs.Open "select DISTINCT CONTNO,CONTDT,isnull(Arrivaltype,'') from rm_cont a where ordqty >= isnull(recqty,0) and divcode='" & Divcode & "' UNION select DISTINCT CONTNO,CONTDT,isnull(Arrivaltype,'') from rm_cont a where ordqty >= isnull(recqty,0) and PREFIX='C'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount = 0 Then
        MsgBox "No Pending Contract Details", vbInformation, head
        Call BUTTON_Click(10)
        Exit Sub
    Else
        LookUp.Clear = True
        LookUp.query = "select catcd""Category"",catname""Category Name"" from rm_cat WHERE BALEPRESS='Y'"
        LookUp.Caption = "Category List"
        LookUp.DefCol = "Category Name"
        LookUp.ALIGN = "2000,5000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            If LookUp.Fields(0) <> "W" Then
                qry = "select DISTINCT slcode""Supplier Code"",Slname""Supplier""  from rm_cont a,fa_slmas b where ordqty>(isnull(recqty,0)+ISNULL(CANCELBALES,0)) and divcode='" & Divcode & "' and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')=''"
                Waste = "N"
            Else
                qry = "select DISTINCT slcode""Supplier Code"",Slname""Supplier""  from rm_cont a,fa_slmas b where ordqty>(isnull(recqty,0)+ISNULL(CANCELBALES,0)) and divcode='" & Divcode & "' and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')<>'' UNION select DISTINCT slcode""SupplierCode"",Slname""Supplier""  from rm_cont a,fa_slmas b where divcode='" & Divcode & "' and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')='M'"
                Waste = "Y"
            End If
            txtfields(29).Text = LookUp.Fields(0)
            Set rsc = New Recordset
            rsc.Open "SELECT * FROM RM_CAT WHERE CATCD='" & LookUp.Fields(0) & "'", DB, adOpenStatic
            If rsc.RecordCount > 0 Then
                Text9.Text = rsc("CATNAME")
            End If
        End If
    End If
    'end for separate lot no for waste
    Call Unbindcontls
Case 1, 2, 4
    If ToValidFinYear(Divcode) = False Then Exit Sub
        'Modification
    Set rsz = New Recordset
    rsz.Open "select max(bpdate) from RM_BPPRODUCTION where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter valid Processing Date...!!!", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    
    Set Rs = New Recordset
    Rs.Open "select count(*) from RM_BPPRODUCTION where divcode='" & Divcode & "'", DB
   
    If Not Rs(0) = 0 Then
        If Index = 1 Then
            Opt = "mod"
            desc.Caption = "Modification"
            Label15.Caption = "Bale Press Details"
            StatusBar1.Panels(2).Text = "Select a Bale Press Number from the List for modification"
        ElseIf Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
            Label15.Caption = "Bale Press Details"
            StatusBar1.Panels(2).Text = "Select a Bale Press Number from the List for Deletion"
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
            Label15.Caption = "Bale Press Details"
            StatusBar1.Panels(2).Text = "Select a Bale Press Number from the List for Find"
        
        End If
        LookUp.Clear = True
        'LookUp.Query = "select distinct arrno""ArrivalNumber"",arrdate""Date"",slname""Supplier"" from RM_BPPRODUCTION a,fa_slmas b,rm_var c where a.varcode=c.varcode and a.supcd=b.slcode and isnull(lotrecqty,0)=0 and divcode='" & Divcode & "'"
        If Opt = "fnd" Then
            LookUp.query = "select distinct bpno""Bale Press Number"",bpdate""Bale Press Date"",slname""Supplier Name"" from RM_BPPRODUCTION a,fa_slmas b,rm_var c where a.varcode=c.varcode and a.supcd=b.slcode and divcode='" & Divcode & "' and bpdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'"
        Else
            LookUp.query = "select distinct bpno""Bale Press Number"",bpdate""Bale Press Date"",slname""Supplier Name"" from RM_BPPRODUCTION a,fa_slmas b,rm_var c where a.varcode=c.varcode and a.supcd=b.slcode and divcode='" & Divcode & "' and bpdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' AND LOTNO IS NULL AND LOTDT IS NULL AND LOTTYPE IS NULL "
        End If
        LookUp.DefCol = "Supplier Name"
        LookUp.Caption = "Bale Press Listing"
        LookUp.ALIGN = "2000,1500,4000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
               
               Set adoPrimaryRS = New Recordset
               adoPrimaryRS.Open "select distinct bpno,bpdate,ARRNO,catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ARRDATE,weignment,LRNO,godown,inwardno,inwarddate FROM RM_BPPRODUCTION WHERE  bpNO='" & LookUp.Fields(0) & "' AND bpDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'   and  divcode='" & Divcode & "' and bpdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and bpdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by bpno", DB, adOpenStatic, adLockBatchOptimistic
               If adoPrimaryRS.RecordCount <> 0 Then
                   Set adoPrimaryRS = New Recordset
                   adoPrimaryRS.Open "select distinct bpno,bpdate, ARRNO, catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ARRDATE,weignment,LRNO,godown,inwardno,inwarddate FROM RM_BPPRODUCTION WHERE  bpNO='" & LookUp.Fields(0) & "' AND bpDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'   and  divcode='" & Divcode & "' and bpdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and bpdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by bpno", DB, adOpenStatic, adLockOptimistic
                   
                   Set rssarrmod = New Recordset
                   'rssarrmod.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,weignment FROM RM_BPPRODUCTION WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (lotno is  null or lotdt is  null or catcd is  null ) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
                   rssarrmod.Open "select bpno,bpdate,ARRNO,catcd,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,QUANTITY,GROSSWT,TAREWT,NETWT,BBFLAG,ARRDATE,godown,LRNO,weignment,inwardno,inwarddate FROM RM_BPPRODUCTION WHERE bpNO='" & LookUp.Fields(0) & "' AND bpDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and  divcode='" & Divcode & "' order by bpno ", DB, adOpenStatic, adLockOptimistic
               
                   If adoPrimaryRS.RecordCount = 0 Then
                       MsgBox "Lot/Bale Details Entered for this arrival. Hence Modification Not allowed!", vbInformation, head
                       Set adoPrimaryRS = New Recordset
                       adoPrimaryRS.Open "select distinct ARRNO, catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt FROM RM_BPPRODUCTION WHERE  arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
                       Exit Sub
                   End If
               Else
                   MsgBox "Inspection completed for this arrival. Hence Modification not allowed!", vbInformation, head
                   Set adoPrimaryRS = New Recordset
                   adoPrimaryRS.Open "select distinct ARRNO,catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt FROM RM_BPPRODUCTION WHERE  arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
                   Exit Sub
               End If
               Call ArrivalDisplay(adoPrimaryRS("bpno"), adoPrimaryRS("bpdate"))
               Call bindcontls
               Call ENABLCONTLS
               
               If Not adoPrimaryRS.EOF Then
                    txtfields(2).Text = adoPrimaryRS!SUPCD
                    txtfields(11).Text = adoPrimaryRS!LORRYNOS
                    txtfields(21).Text = adoPrimaryRS!Lrno
                    txtfields(22).Text = adoPrimaryRS!Godown
               End If
               
               Dim iIndex As Integer
               For iIndex = 0 To 25 Step 1
                  Call txtFields_Change(iIndex)
               Next
               
              
            For I = 0 To 6
                txtfields(I).Locked = True
            Next
            
            txtfields(19).Locked = True
            'txtfields(13).SetFocus
            txtfields(0).Locked = True
            txtfields(3).Locked = True
            txtfields(4).Locked = True
            txtfields(15).Locked = True
            txtfields(16).Locked = True
            txtfields(17).Locked = True
            txtfields(18).Locked = True
            txtfields(24).Locked = True
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = True
            'BUTTON(9).ToolTipText = "Modify"
            Call disablcontls
            txtfields(13).Locked = False
            txtfields(3).Locked = True
            txtfields(4).Locked = True
            txtfields(0).Locked = True
            txtfields(30).Locked = False
            
            Combo1.Locked = True
            SSTab1.Enabled = True
            If Opt = "del" Then
              Call disablcontls
              BUTTON(9).Enabled = True
              BUTTON(9).SetFocus
            End If
            If Opt = "fnd" Then
              Call disablcontls
              BUTTON(9).Enabled = False
              BUTTON(10).Enabled = True
              BUTTON(10).SetFocus
            End If
            
            
        Else
            Call BUTTON_Click(10)
        End If
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If

Case 3
        'Query
        If Record_Exists("RM_BPPRODUCTION") = False Then Exit Sub
        Dim f As New repform
        Screen.MousePointer = 11
       Set Cnn = New Connection
       
        Cnn.Provider = "MSDATASHAPE"
        Cnn.Open connectstring

    Set ResultRs = New Recordset
    ResultRs.Open "SHAPE {select a.brkcd,bpdate as recdate,a.supcd,slname,areaname,a.lorrynos,a.Quantity,a.plotno,a.varcode,a.bpno as arrno,a.arrdate ,a.lotno  from RM_BPPRODUCTION a,rm_area b,fa_slmas c,rm_lot d where a.lotno*=d.lotno and a.arrno*=d.arrno and a.bbflag*=d.bblflg and a.catcd*=d.catcd  and a.supcd=c.slcode  and a.areacode*=b.areacode and a.divcode='" & Divcode & "' and arrdate BETWEEN  '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'}  AS Command2 COMPUTE Command2 BY 'arrdate','recdate'", Cnn, adOpenStatic, adLockBatchOptimistic
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set Rs = New Recordset
    Rs.Open "select DISTINCT a.arrdate  from RM_BPPRODUCTION a,rm_area b,fa_slmas c,rm_lot d where a.lotno*=d.lotno and a.arrno*=d.arrno and a.bbflag*=d.bblflg and a.catcd*=d.catcd  and a.supcd=c.slcode  and a.areacode*=b.areacode and a.divcode='" & Divcode & "' and arrdate BETWEEN  '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by a.arrdate ", Cnn, adOpenStatic, adLockBatchOptimistic
    
    Set rptv = New Report.ReportView
    z = FreeFile
    Close
    Open "C:\arre.TXT" For Output As #z
    pg1 = 1
    co = 0
    'Print #z, Chr(15)
     'z = FreeFile
    Call arrregHeader(pg1, co, CStr(s), CStr(a), CStr(B))
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
'        Print #z,
        Rs.MoveFirst
            
        Do While Not Rs.EOF
'            If co < 58 Then
'                Print #z, Space(5) + CStr(Format(rs("ARRDATE"), "dd/mm/yy"))
'                co = co + 1
'            Else
'
'                    Print #z, Space(5) & String(145, "-")
'                    Print #z, Chr(12)
'                    pg1 = pg1 + 1
'                    co = 0
'                    Call arrregHeader(pg1, co, CStr(s), CStr(A), CStr(b))
'                    Print #z, Space(5) + CStr(Format(rs("ARRDATE"), "dd/mm/yy"))
'                    co = co + 1
'
'            End If
            Set rs1 = New Recordset
            rs1.Open "select distinct a.brkcd,arrdate as recdate,a.supcd,slname,areaname,a.lorrynos,a.Quantity,a.atlno,a.plotno,a.varcode,a.arrno,a.arrdate,case when upper(a.bbflag) = 'B' then 'Bale' else 'Bora' end as Unit,a.lotno,round(a.RATECY,0) as ratecy,round(a.GROSSWT,2) as grosswt,round(a.NETWT,2) as netwt from RM_BPPRODUCTION a,rm_area b,fa_slmas c,rm_lot d where a.lotno*=d.lotno and a.arrno*=d.arrno and a.bbflag*=d.bblflg and a.catcd*=d.catcd  and a.supcd=c.slcode  and a.areacode*=b.areacode and a.divcode='" & Divcode & "' and arrdate = '" & Format(Rs("ARRDATE"), "yyyy-mm-dd") & "' order by a.arrno,a.arrdate", Cnn, adOpenStatic, adLockBatchOptimistic
            rs1.MoveFirst
            Do While Not rs1.EOF
             
                If co > PageLen Then
                    Print #z, Space(5) & String(145, "-")
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call arrregHeader(pg1, co, CStr(s), CStr(a), CStr(B))
                End If
                                
               Set Namers = New Recordset
               Namers.Open "Select varname from rm_var where varcode='" & rs1("VARCODE") & "'", DB, adOpenStatic
               'Print #z, Padl(CStr(rs1("ARRNO")), 12, " ") + Space(2) + Padr(Format(rs1("RECDATE"), "DD/MM/YYYY"), 11, " ") + Space(2) + Padr(CStr(IIf(IsNull(rs1("LORRYNOS")), " ", rs1("lorrynos"))), 16, " ") + Space(0) + Padr(CStr(IIf(IsNull(rs1("SLNAME")), " ", rs1("SLNAME"))), 47, " ") + Space(3) + Padr(CStr(IIf(IsNull(rs1("AREANAME")), " ", rs1("AREANAME"))), 15, " ") + Space(2) + Padl(CStr(IIf(IsNull(rs1("PLOTNO")), " ", rs1("PLOTNO"))), 10, " ") + Space(3) + Padr(CStr(Namers(0)), 22, " ") + Space(1) + Padl(INF(rs1("Quantity"), 0), 13, " ") + Space(2); Padr(rs1("unit"), 5, " ") + Space(2) + Space(1); Padl(INF(rs1("ratecy"), 0), 12, " "); Padl(INF(rs1("grosswt"), 2), 14, " "); Padl(INF(rs1("netwt"), 2), 10, " ")
               Print #z, Padl(CStr(rs1("ARRNO")), 12, " ") + Space(1) + Padr(Format(rs1("RECDATE"), "DD/MM/YY"), 8, " ") + Space(2) + Padr(CStr(IIf(IsNull(rs1("LORRYNOS")), " ", rs1("lorrynos"))), 13, " ") + Space(2) + Padr(CStr(IIf(IsNull(rs1("SLNAME")), " ", rs1("SLNAME"))), 29, " ") + Space(1) + Padr(CStr(IIf(IsNull(rs1("AREANAME")), " ", rs1("AREANAME"))), 8, " ") + Space(1) + Padl(CStr(IIf(IsNull(rs1("PLOTNO")), " ", rs1("PLOTNO"))), 5, " ") + Space(1) + Padr(CStr(Namers(0)), 10, " ") + Space(1) + Padl(INF(rs1("Quantity"), 0), 11, " ") + Space(2); Padr(rs1("unit"), 4, " ") + Space(1) + Padl(INF(rs1("ratecy"), 0), 12, " "); Space(1); Padl(INF(rs1("grosswt"), 3), 12, " "); Space(1); Padl(INF(rs1("netwt"), 3), 12, " ")
                co = co + 1
                If co > PageLen Then
                    Print #z, Space(5) & String(145, "-")
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call arrregHeader(pg1, co, CStr(s), CStr(a), CStr(B))
                End If
               tot = tot + rs1("QUANTITY")
               tot78 = tot78 + rs1("netwt")
               tot2 = tot2 + rs1("netwt")
             
                rs1.MoveNext
        Loop
            Rs.MoveNext
         Print #z,
                co = co + 1
                If co > PageLen Then
                    Print #z, Space(5) & String(145, "-")
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call arrregHeader(pg1, co, CStr(s), CStr(a), CStr(B))
                End If
'                If rs.RecordCount > 1 Then
'                Print #z, Space(71) + "**  Day Total  **" + Space(7) + Padl(INF(CStr(tot), 0), 10, " ") & Space(33) & Padl(INF(CStr(tot78), 3), 12, " ")
'                   co = co + 1
'                End If
             
                If co > PageLen Then
                    Print #z, Space(5) & String(145, "-")
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call arrregHeader(pg1, co, CStr(s), CStr(a), CStr(B))
                End If
            tot1 = tot1 + tot
            tot = 0
            tot78 = 0
        Loop
Print #z, Space(5) & String(145, "-")
Print #z, Space(46) & "**   Total  **" & Space(28) & Padl(INF(CStr(tot1), 0), 17, " "); Padl(INF(CStr(tot2), 3), 45, " ")
Print #z, Space(5) & String(145, "-")
Print #z, Chr(12)
Print #z, Chr(18)
Close #z
z = FreeFile
Open "c:\arre.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type arre.TXT>prn"
Close #z
rptv.txtfile = "c:\arre.TXT"
rptv.Batfile = "c:\arre.bat"
Screen.MousePointer = 0

Case 4
        Opt = "fnd"
        desc.Caption = "Find"
        Label15.Caption = "Arrival Details"
        StatusBar1.Panels(2).Text = "Select a Arrival Number from the List for Find"
        
        LookUp.Clear = True
        LookUp.query = "select distinct arrno""ArrivalNumber"",arrdate""Date"",slname""Supplier"",contno""PurchaseOrderNo."",plotno ""SupplierLotNo."" from RM_BPPRODUCTION a,fa_slmas b,rm_var c where a.varcode=c.varcode and a.supcd=b.slcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'"
        LookUp.DefCol = "Supplier"
        LookUp.Caption = "Arrival Listing"
        LookUp.ALIGN = "1500,1500,4000,1600,1600"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Set adoPrimaryRS = New Recordset
            ''adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO FROM RM_BPPRODUCTION WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
            adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt FROM RM_BPPRODUCTION WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and  divcode='" & Divcode & "' and arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
            Set adoPrimaryRS = New Recordset
            ''adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO FROM RM_BPPRODUCTION WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (lotno is  null or lotdt is  null or catcd is  null ) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
            adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt FROM RM_BPPRODUCTION WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and  divcode='" & Divcode & "' and arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
            If adoPrimaryRS.RecordCount > 0 Then
                Set rssarrmod = New Recordset
                rssarrmod.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,Trashper FROM RM_BPPRODUCTION WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'   and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
'                 Call ArrivalDisplay
                Call bindcontls
                Call ENABLCONTLS
                If Opt = "del" Then
                  Call disablcontls
                End If
                For I = 0 To 6
                    txtfields(I).Locked = True
                Next
                Text4.Locked = True
                txtfields(19).Locked = True
                'txtfields(13).SetFocus
                txtfields(0).Locked = True
                txtfields(3).Locked = True
                txtfields(4).Locked = True
                txtfields(15).Locked = True
                txtfields(16).Locked = True
                txtfields(17).Locked = True
                txtfields(18).Locked = True
                txtfields(24).Locked = True
                BUTTON(10).Enabled = True
                Call disablcontls
                txtfields(13).Locked = False
                
                txtfields(0).Locked = True
                Combo1.Locked = True
                Call adddelmod(BUTTON)
                BUTTON(9).Enabled = False
            Else
            End If
       
        Else
            Call BUTTON_Click(10)
        End If
        
       
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        If Not adoPrimaryRS.EOF Or Not adoPrimaryRS.BOF Then adoPrimaryRS.MoveFirst
        StatusBar1.Panels(2).Text = "First Record"
        Call bindcontls
        'calling fir procedure from module
        Call FIR(BUTTON)
        Beep
        Exit Sub
GoFirstError:
        MsgBox Err.Description, vbInformation, head
Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
    
        If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition Then
            adoPrimaryRS.MoveLast
        Else
            adoPrimaryRS.MoveNext
        End If
        Call bindcontls
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
        'If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition Then
            'adoPrimaryRS.MoveFirst
        'Else
            adoPrimaryRS.MovePrevious
        'End If
        
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
        If Not adoPrimaryRS.EOF Or Not adoPrimaryRS.BOF Then adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
        Call bindcontls
        'calling las procedure from module
        Call las(BUTTON)
        Beep
        Exit Sub

GoLastError:
        MsgBox Err.Description, vbInformation, head

Case 9
        'Save
    If Opt = "add" Or Opt = "mod" Then
        
        For lr = 1 To spdVar.MaxRows
            a = iQty
            If val(GetText(spdVar, a, lr)) = 0 Then
                MsgBox "Please enter Quantity", vbInformation, head
                spdVar.Col = iQty
                spdVar.SetFocus
                Exit Sub
            End If
            B = iNetwt
            If val(GetText(spdVar, B, lr)) = 0 Then
                MsgBox "Please enter Gross Weight", vbInformation, head
                spdVar.Col = iNetwt
                spdVar.SetFocus
                Exit Sub
            End If
        Next
        
    End If

    DB.BeginTrans
    If Opt = "add" Then
        Set rsarrival = New Recordset
        rsarrival.Open "SELECT Divcode,SNO,CATCD, bpno,bpdate, ARRNO,ARRDATE,AREACODE,SUPCD,BRKCD,PLOTNO,VARCODE,PRNO,PRMARK,CARCODE,GCNO,CNTCODE,LORRYNOS,BBFLAG,QUANTITY,GROSSWT,TAREWT,NETWT,GODOWN,weignment," & _
          " inwardno,inwarddate,LRNO,GINCODE,bpQUANTITY,bpGROSSWT,bpTAREWT,bpNETWT FROM rm_bpproduction WHERE 1 = 2 and divcode = '" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
        
        For lr = 1 To spdVar.MaxRows
            rsarrival.AddNew
            rsarrival("bpNO") = MaxNo
            rsarrival("SNO") = val(lr)
            rsarrival("bpdate") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            rsarrival("ARRNO") = GetText(spdVar, IContno, lr)
            rsarrival("arrdate") = Format(GetText(spdVar, IContdt, lr), "yyyy-mm-dd")
            rsarrival("supcd") = Trim(txtfields(2).Text)
            rsarrival("brkcd") = txtfields(3).Text
            rsarrival("godown") = Trim(txtfields(22).Text)
            rsarrival("areacode") = Trim(txtfields(4).Text)
            rsarrival("Lorrynos") = Trim(txtfields(11).Text)
            rsarrival("CATCD") = Trim(txtfields(29).Text)
            rsarrival("weignment") = Trim(txtfields(13).Text)
            If txtfields(30).Text <> "" Then
            rsarrival("inwardno") = val(txtfields(30).Text)
            End If
            If MaskEdBox1(3).Text <> "__/__/____" And MaskEdBox1(3).Text <> "" Then
                rsarrival("inwarddate") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
            End If
            rsarrival("CARCODE") = CStr(txtfields(9).Text)
            rsarrival("bbflag") = GetText(spdVar, Iunit, lr)
            rsarrival("divcode") = Divcode
            rsarrival("varcode") = GetText(spdVar, IVarcode, lr)
            rsarrival("LRNO") = IIf(txtfields(21).Text = "", 0, txtfields(21).Text)
            rsarrival("GCNO") = IIf(txtfields(10).Text = "", 0, txtfields(10).Text)
            rsarrival("Gincode") = Trim(txtfields(32).Text)
            rsarrival("plotno") = GetText(spdVar, Iplotno, lr)
            rsarrival("prno") = GetText(spdVar, IPRNO, lr)
            rsarrival("prmark") = GetText(spdVar, Ipressmarkno, lr)
            rsarrival("cntcode") = GetText(spdVar, Imixcount, lr)
            rsarrival("quantity") = GetText(spdVar, iAQty, lr)
            rsarrival("Grosswt") = val(GetText(spdVar, iAGrswt, lr))
            rsarrival("tarewt") = val(GetText(spdVar, iATarwt, lr))
            rsarrival("netwt") = val(GetText(spdVar, iANetwt, lr))
            rsarrival("bpquantity") = GetText(spdVar, iQty, lr)
            rsarrival("bpGrosswt") = val(GetText(spdVar, iGrswt, lr))
            rsarrival("bptarewt") = val(GetText(spdVar, iTarwt, lr))
            rsarrival("bpnetwt") = val(GetText(spdVar, iNetwt, lr))
            
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Bale Press"
                    TrnLog("Trans_Mod") = "Add"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("catcd") = Trim(txtfields(29).Text)
                    TrnLog("slcode") = Trim(txtfields(2).Text)
                    TrnLog("areacode") = Trim(txtfields(4).Text)
                    TrnLog("godown") = Trim(txtfields(22).Text)
                    TrnLog("docno") = val(txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd hh:mm:ss.m")
                    TrnLog("varcode") = GetText(spdVar, IVarcode, lr)
                    TrnLog("Isstype") = Left(Combo1.Text, 2)
                    TrnLog("CNTCD") = Trim(txtfields(29).Text)
                    TrnLog("ordqty") = GetText(spdVar, iAQty, lr)
                    TrnLog("ordkgs") = val(GetText(spdVar, iANetwt, lr))
                    TrnLog("quantity") = GetText(spdVar, iAQty, lr)
                    TrnLog("Grosswt") = val(GetText(spdVar, iAGrswt, lr))
                    TrnLog("tarewt") = val(GetText(spdVar, iATarwt, lr))
                    TrnLog("netwt") = val(GetText(spdVar, iANetwt, lr))
                    
                    TrnLog.UpdateBatch adAffectAllChapters
            
            

        Next
            txtfields(0).Text = MaxNo
            rsarrival.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Record(s) Saved!", vbInformation, head
            MsgBox "Document No. is " & (MaxNo - 1), vbInformation, head
            Label30.Visible = False
            SSTab1.Enabled = False
            Screen.MousePointer = 0
            Opt = ""
        End If
    
    If Opt = "mod" Then
        DB.Execute ("delete from RM_BPPRODUCTION where bpno =" & Trim(txtfields(0).Text) & " and bpdate='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'")
        Set rsarrival = New Recordset
        rsarrival.Open "SELECT Divcode,SNO,CATCD, bpno,bpdate, ARRNO,ARRDATE,AREACODE,SUPCD,BRKCD,PLOTNO,VARCODE,PRNO,PRMARK,CARCODE,GCNO,CNTCODE,LORRYNOS,BBFLAG,QUANTITY,GROSSWT,TAREWT,NETWT,GODOWN,weignment," & _
          " inwardno,inwarddate,LRNO,GINCODE,bpQUANTITY,bpGROSSWT,bpTAREWT,bpNETWT FROM rm_bpproduction WHERE 1 = 2 and divcode = '" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
        
        For lr = 1 To spdVar.MaxRows
            rsarrival.AddNew
            rsarrival("bpNO") = val(txtfields(0).Text)
            rsarrival("SNO") = val(lr)
            rsarrival("bpdate") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            rsarrival("ARRNO") = GetText(spdVar, IContno, lr)
            rsarrival("arrdate") = Format(GetText(spdVar, IContdt, lr), "yyyy-mm-dd")
            rsarrival("supcd") = Trim(txtfields(2).Text)
            rsarrival("brkcd") = txtfields(3).Text
            rsarrival("godown") = Trim(txtfields(22).Text)
            rsarrival("areacode") = Trim(txtfields(4).Text)
            rsarrival("Lorrynos") = Trim(txtfields(11).Text)
            rsarrival("CATCD") = Trim(txtfields(29).Text)
            rsarrival("weignment") = Trim(txtfields(13).Text)
            If txtfields(30).Text <> "" Then
            rsarrival("inwardno") = val(txtfields(30).Text)
            End If
            If MaskEdBox1(3).Text <> "__/__/____" And MaskEdBox1(3).Text <> "" Then
                rsarrival("inwarddate") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
            End If
            rsarrival("CARCODE") = CStr(txtfields(9).Text)
            rsarrival("bbflag") = GetText(spdVar, Iunit, lr)
            rsarrival("divcode") = Divcode
            rsarrival("varcode") = GetText(spdVar, IVarcode, lr)
            rsarrival("LRNO") = IIf(txtfields(21).Text = "", 0, txtfields(21).Text)
            rsarrival("GCNO") = IIf(txtfields(10).Text = "", 0, txtfields(10).Text)
            rsarrival("Gincode") = Trim(txtfields(32).Text)
            rsarrival("plotno") = GetText(spdVar, Iplotno, lr)
            rsarrival("prno") = GetText(spdVar, IPRNO, lr)
            rsarrival("prmark") = GetText(spdVar, Ipressmarkno, lr)
            rsarrival("cntcode") = GetText(spdVar, Imixcount, lr)
            rsarrival("quantity") = GetText(spdVar, iAQty, lr)
            rsarrival("Grosswt") = val(GetText(spdVar, iAGrswt, lr))
            rsarrival("tarewt") = val(GetText(spdVar, iATarwt, lr))
            rsarrival("netwt") = val(GetText(spdVar, iANetwt, lr))
            rsarrival("bpquantity") = GetText(spdVar, iQty, lr)
            rsarrival("bpGrosswt") = val(GetText(spdVar, iGrswt, lr))
            rsarrival("bptarewt") = val(GetText(spdVar, iTarwt, lr))
            rsarrival("bpnetwt") = val(GetText(spdVar, iNetwt, lr))
            
            
            
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Bale Press"
                    TrnLog("Trans_Mod") = "Mod"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("catcd") = Trim(txtfields(29).Text)
                    TrnLog("slcode") = Trim(txtfields(2).Text)
                    TrnLog("areacode") = Trim(txtfields(4).Text)
                    TrnLog("godown") = Trim(txtfields(22).Text)
                    TrnLog("docno") = val(txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd hh:mm:ss.m")
                    TrnLog("varcode") = GetText(spdVar, IVarcode, lr)
                    TrnLog("Isstype") = Left(Combo1.Text, 2)
                    TrnLog("CNTCD") = Trim(txtfields(29).Text)
                    TrnLog("ordqty") = GetText(spdVar, iAQty, lr)
                    TrnLog("ordkgs") = val(GetText(spdVar, iANetwt, lr))
                    TrnLog("quantity") = GetText(spdVar, iAQty, lr)
                    TrnLog("Grosswt") = val(GetText(spdVar, iAGrswt, lr))
                    TrnLog("tarewt") = val(GetText(spdVar, iATarwt, lr))
                    TrnLog("netwt") = val(GetText(spdVar, iANetwt, lr))
                    
                    TrnLog.UpdateBatch adAffectAllChapters

        Next
            rsarrival.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Bale Press Record Modified!", vbInformation, head
            SSTab1.Enabled = False
            Screen.MousePointer = 0
            Opt = ""
    End If

    If Opt = "del" Then
        On Error GoTo del
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
        If msg = vbYes Then
'            DB.BeginTrans
            DB.Execute ("delete from RM_BPPRODUCTION where bpno =" & Trim(txtfields(0).Text) & " and bpdate='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'")
                    
             For lr = 1 To spdVar.MaxRows
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Bale Press"
                    TrnLog("Trans_Mod") = "Del"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("catcd") = Trim(txtfields(29).Text)
                    TrnLog("slcode") = Trim(txtfields(2).Text)
                    TrnLog("areacode") = Trim(txtfields(4).Text)
                    TrnLog("godown") = Trim(txtfields(22).Text)
                    TrnLog("docno") = val(txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd hh:mm:ss.m")
                    TrnLog("varcode") = GetText(spdVar, IVarcode, lr)
                    TrnLog("Isstype") = Left(Combo1.Text, 2)
                    TrnLog("CNTCD") = Trim(txtfields(29).Text)
                    TrnLog("ordqty") = GetText(spdVar, iAQty, lr)
                    TrnLog("ordkgs") = val(GetText(spdVar, iANetwt, lr))
                    TrnLog("quantity") = GetText(spdVar, iAQty, lr)
                    TrnLog("Grosswt") = val(GetText(spdVar, iAGrswt, lr))
                    TrnLog("tarewt") = val(GetText(spdVar, iATarwt, lr))
                    TrnLog("netwt") = val(GetText(spdVar, iANetwt, lr))
                    TrnLog.UpdateBatch adAffectAllChapters
            Next
            
            DB.CommitTrans
            MsgBox "Arrival Deleted!", vbInformation, head
            'BUTTON(9).ToolTipText = "Save"
            Opt = ""
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
       
        Call SpreadAlign(0)
        On Error Resume Next
        'Return to query mode
        Set adoPrimaryRS = New Recordset
        ''adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,LRNO,godown FROM RM_BPPRODUCTION WHERE divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "select distinct bpno,bpdate, ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ARRDATE,weignment,LRNO,godown,inwardno,inwarddate FROM RM_BPPRODUCTION WHERE  BPdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and BPdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
    
        Call bindcontls
        Call disablcontls
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM1(BUTTON, LSNo)
        adoPrimaryRS.MoveLast
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
        BUTTON(9).ToolTipText = "Save"
        GoTo gocancel
        Exit Sub
    End If

Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
        desc.Caption = "Query"
        Screen.MousePointer = 11
        Opt = ""
        
        Call SpreadAlign(0)
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select bpno,bpdate,ARRNO,catcd,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,QUANTITY,GROSSWT,TAREWT,NETWT,BBFLAG,ARRDATE,weignment,LRNO,godown,inwardno,inwarddate FROM RM_BPPRODUCTION WHERE  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' order by arrno", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Screen.MousePointer = 0
        Call disablcontls
        Call NEWFORM1(BUTTON, LSNo)
        Frame3.Visible = False
        Label30.Visible = False
            
               If Not adoPrimaryRS.EOF Then
                    txtfields(2).Text = adoPrimaryRS!SUPCD
                    txtfields(11).Text = adoPrimaryRS!LORRYNOS
                    txtfields(21).Text = adoPrimaryRS!Lrno
                    txtfields(22).Text = adoPrimaryRS!Godown
                    
               End If ' Frame1.Visible = True
       
            For iIndex = 0 To 25 Step 1
                txtFields_Change (iIndex)
            Next
       
       ' Frame2.Visible = True
Case 11
        'EXIT
       ' If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
        Unload Me
   
End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmArrival", vbInformation, head
End Sub

Private Sub Combo3_Change()
    'Combo3.ToolTipText = Combo3.Text
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

        desc.Caption = "Query"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,LRNO,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt FROM RM_BPPRODUCTION WHERE  arrno= '" & Trim(txtqry.Text) & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'   order by arrno", DB, adOpenStatic, adLockOptimistic
        'Bind the text boxes,check boxes and option buttons  to the data source
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Such Arrival No. Found", vbInformation, head
            Exit Sub
        End If
        Call bindcontls
        'calling query procedure from module
        Call query(BUTTON)
        Label30.Visible = False
        Frame6.Visible = False


Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmArrival", vbInformation, head
End Sub
Private Sub Command2_Click()
Frame6.Visible = False
End Sub

Private Sub Command5_Click()    'activex cancel
On Error GoTo Command5_Click_Error

If KslList1.listfield1 = "carcode" Then
        Frame3.Visible = False
        SSTab1.Visible = True
        Frame7.Visible = True
        txtfields(9).Text = ""
        Exit Sub
End If
If KslList1.listfield1 = "slcode" Then
        Frame3.Visible = False
        SSTab1.Visible = True
        Frame7.Visible = True
        txtfields(2).Text = testr
        txtfields(2).SetFocus
        Exit Sub
End If


        Frame3.Visible = False
        SSTab1.Visible = True
        'Frame1.Visible = True
       ' Frame2.Visible = True
        Frame7.Visible = True
       ' Frame8.Visible = True
       If txtfields(1).Text = "" Then
        Call BUTTON_Click(10)
        Label30.Visible = False
        End If
        'Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_BPPRODUCTION WHERE  divcode='" & divcode & "' order by arrno", db, adOpenStatic, adLockOptimistic
        'Call bindcontls
        'OPT = ""
        Screen.MousePointer = 0
        'Call disablcontls
        'Call cancl(BUTTON)


Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form FrmArrival", vbInformation, head
End Sub

Private Sub Command6_Click()        'activex okay
On Error GoTo Command6_Click_Error

    SSTab1.Visible = True
Select Case KslList1.listfield1
    Case "Varcode"
        txtfields(5).Text = KslList1.Code
        txtfields(20).Text = KslList1.Description
        txtfields(7).SetFocus
    Case "slcode"
        Text1.Text = KslList1.Description
        txtfields(2).Text = KslList1.Code
    Case "Gcode"
''        Txtfields(22).Text = KslList1.Code
''        Txtfields(23).Text = KslList1.description
''        Frame3.Visible = False
''        Txtfields(16).SetFocus
    Case "cast(arrno as varchar)"
        BUTTON(9).Enabled = True
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt FROM RM_BPPRODUCTION WHERE ARRNO='" & KslList1.Code & "' AND ARRDATE='" & Format(KslList1.Description, "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount <> 0 Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt FROM RM_BPPRODUCTION WHERE ARRNO='" & KslList1.Code & "' AND ARRDATE='" & Format(KslList1.Description, "yyyy-mm-dd") & "'  and (lotno is  null or lotdt is  null or catcd is  null ) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
            If adoPrimaryRS.RecordCount = 0 Then
                MsgBox "Lot/Bale Details Entered for this arrival. Hence Modification Not allowed!", vbInformation, head
                Exit Sub
            End If
        Else
            MsgBox "Inspection completed for this arrival. Hence Modification not allowed!", vbInformation, head
            Exit Sub
        End If
        oldcontno = adoPrimaryRS("contno")
        oldcontdt = adoPrimaryRS("contdt")
        oldqty = adoPrimaryRS("quantity")
        Call bindcontls
        Call ENABLCONTLS
        If Opt = "del" Then
          Call disablcontls
        End If
     For I = 0 To 6
     txtfields(I).Locked = True
     Next
     txtfields(13).Locked = True
     Text4.Locked = True
     txtfields(19).Locked = True
     txtfields(7).SetFocus
     txtfields(0).Locked = True
     txtfields(3).Locked = True
     txtfields(4).Locked = True
     txtfields(15).Locked = True
     txtfields(16).Locked = True
     txtfields(17).Locked = True
     txtfields(18).Locked = True
     txtfields(24).Locked = True
     
     Frame3.Visible = False
     
     
     
Case " CAST(Gcode as VARCHAR)"
     txtfields(10).Text = KslList1.Code
     Text6.Text = KslList1.Description
     txtfields(11).SetFocus
Case "carcode"
''    Txtfields(9).Text = KslList1.Code
''    Text7.Text = KslList1.description
''    Txtfields(12).SetFocus
''    StatusBar1.Panels(2).Text = "Enter Party Lot Number"
Case "cast(a.contno as varchar)"
''     Txtfields(1).Text = Ksllist1.Code
''     MaskEdBox1(1).Text = Format(Ksllist1.description, "dd/mm/yyyy")
''     Dim partyrs As Recordset
''     Set partyrs = New Recordset
''     partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,''),candyrate,bbflag,ordqty-ISNULL(RECQTY,0),weignment,rateunit from rm_cont where contno='" & Txtfields(1).Text & "' and contdt='" & Format(Ksllist1.description, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
''     Txtfields(2).Text = partyrs(0)
''     Txtfields(3).Text = IIf(IsNull(partyrs(1)), "", partyrs(1))
''     Txtfields(4).Text = IIf(IsNull(partyrs(2)), "", partyrs(2))
''     Txtfields(5).Text = partyrs(3)
''     Txtfields(6).Text = partyrs(4)
''     Txtfields(13).Text = IIf(IsNull(partyrs("weignment")), "", partyrs("weignment"))
''     Txtfields(15).Text = partyrs(7)
''     Txtfields(19).Text = Format(partyrs(5), "##########")
''     Label31.Caption = partyrs("rateunit")
''     If partyrs(6) = "B" Then
''     Combo1.Text = "Bale"
''     ElseIf partyrs(6) = "R" Then
''        Combo1.Text = "Borah"
''     End If
''     For i = 0 To 6
''     If i <> 4 Then Txtfields(i).Locked = True
''     Next
''     Txtfields(13).Locked = True
''     Set rsa = New Recordset
''     rsa.Open "select ordqty-isnull(recqty,0) as balqty from rm_cont where contno='" & Ksllist1.Code & "' and contdt ='" & Format(Ksllist1.description, "yyyy-mm-dd") & "' ", DB
''     If rsa.RecordCount > 0 Then
''     Label30.Caption = "Balance Quantity : " & rsa("balqty")
''
''     End If
''
''     Text4.Locked = True
''     Txtfields(19).Locked = True
''     Txtfields(0).Locked = True
''     Txtfields(0).Locked = False
''     Txtfields(2).Locked = False
''     Txtfields(24).Locked = False
''     Txtfields(0).SetFocus
Case "areacode"
     txtfields(4).Text = KslList1.Code
     Text3.Text = KslList1.Description
     Buttonframe.Enabled = True
     txtfields(13).SetFocus
End Select
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    Frame3.Visible = False


Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form FrmArrival", vbInformation, head
End Sub


Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
Dim strQry As String
LSNo = GSNO
  StatusBar1.Panels(1).Text = STBARmsg
  Call openconnection
  SSTab1.Visible = True
  DATLAB.Caption = pdate
  Set adoPrimaryRS = New Recordset
  strQry = "select top 2 bpdate,bpno,ARRNO,SUPCD,catcd,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ARRDATE,weignment,LRNO,godown, isnull(catcd,''),inwardno,inwarddate,GinCode FROM RM_BPPRODUCTION WHERE  arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno"
  adoPrimaryRS.Open strQry, DB, adOpenStatic, adLockBatchOptimistic
  If adoPrimaryRS.RecordCount <> 0 Then
  
     adoPrimaryRS.MoveLast
    
     Call bindcontls
   intervalMinutes = -1
     desc.Caption = "Query"
     DATLAB.Caption = pdate
     Call NEWFORM1(BUTTON, LSNo)
     Call disablcontls
        If Not adoPrimaryRS.EOF Then
             txtfields(2).Text = adoPrimaryRS!SUPCD
             txtfields(11).Text = adoPrimaryRS!LORRYNOS
             txtfields(21).Text = adoPrimaryRS!Lrno
             txtfields(22).Text = adoPrimaryRS!Godown
        End If
     
  Else
       MsgBox "No Records Found", vbInformation, head
       Call NEWFORM1(BUTTON, LSNo)
  End If
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmArrival", vbInformation, head
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
  Opt = ""
  Screen.MousePointer = vbDefault
  intervalMinutes = -1
End Sub

'---------------------------------------------------------------------------------------
' Procedure : adoPrimaryRS_MoveComplete
' DateTime  : 03/09/2007 16:59
' Author    : Administrator
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  'StatusBar1.Panels(2).Text = "Record: " & CStr(adoprimaryrs.AbsolutePosition)
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
On Error Resume Next
If Opt = "" Or Opt = "query" Then
    If adoPrimaryRS.RecordCount > 0 Then
        'godown name display
        gCode = adoPrimaryRS("godown")
        txtfields(22).Text = adoPrimaryRS("godown")
        txtfields(32).Text = adoPrimaryRS("gincode")
        Set rsa = New Recordset
        rsa.Open "select gname from rm_god where gcode='" & adoPrimaryRS("godown") & "'", DB
        If rsa.RecordCount > 0 Then
            txtfields(23).Text = rsa(0)
        Else
            txtfields(23).Text = ""
        End If
        'carrier display
        Set rsa = New Recordset
        rsa.Open "select carname from po_car where carcode='" & adoPrimaryRS("carcode") & "'", DB
        If rsa.RecordCount > 0 Then
            Text7.Text = rsa(0)
        Else
            Text7.Text = ""
            txtfields(9).Text = ""
        End If

       
        Call ArrivalDisplay(adoPrimaryRS("bpno"), adoPrimaryRS("bpdate"))
       
    End If
End If

End Sub

'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error GoTo bindcontls_Error

On Error Resume Next
For Each oText In Me.txtfields
    Set oText.DataSource = adoPrimaryRS
Next
MaskEdBox1(0).DataField = "bpdate"
MaskEdBox1(3).DataField = "inwarddate"
txtfields(22).Text = adoPrimaryRS("godown")
txtfields(2).Text = adoPrimaryRS("SUPCD")
txtfields(32).Text = adoPrimaryRS("Gincode")

DTPicker2.maxdate = pdate
DTPicker2.MinDate = yfdate
If IsNull(adoPrimaryRS("inwardno")) = False Or adoPrimaryRS("inwardno") = "" Then
    txtfields(30).Text = adoPrimaryRS("inwardno")
Else
    txtfields(30).Text = ""
End If

If adoPrimaryRS.EOF = False Then
    If IsNull(adoPrimaryRS("BPdate")) = False Or adoPrimaryRS("BPdate") = "" Then
        MaskEdBox1(0).Text = Format(adoPrimaryRS("BPdate"), "dd/mm/yyyy")
    End If
    
    If IsNull(adoPrimaryRS("inwarddate")) = False Then
        MaskEdBox1(3).Text = Format(adoPrimaryRS("inwarddate"), "dd/mm/yyyy")
    Else
        MaskEdBox1(3).Text = "__/__/____"
    End If
End If


Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub ENABLCONTLS()
Dim I As Integer
On Error GoTo ENABLCONTLS_Error

For I = 0 To 12
    If I <> 11 Then txtfields(I).Locked = False
Next
For I = 15 To 19
    If I <> 21 Then txtfields(I).Locked = False
Next
txtfields(30).Locked = False
txtfields(22).Locked = False
MaskEdBox1(0).Enabled = True
MaskEdBox1(2).Enabled = True
MaskEdBox1(3).Enabled = True
DTPicker2.Enabled = True
Combo1.Locked = False

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub disablcontls()
On Error GoTo disablcontls_Error

On Error Resume Next
Dim I As Integer
For I = 0 To 19
    txtfields(I).Locked = True
Next
txtfields(30).Locked = True
txtfields(11).Locked = False
txtfields(21).Locked = False
MaskEdBox1(0).Enabled = False
MaskEdBox1(1).Enabled = False
MaskEdBox1(2).Enabled = False
MaskEdBox1(3).Enabled = False
'DTPicker1.Enabled = False
Combo1.Locked = True

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    MaskEdBox1(0).BackColor = &HC0FFC0
    StatusBar1.Panels(2).Text = "Enter a Arrival Date"
End If

Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
    MaskEdBox1(0).BackColor = &HFFFFFF
    StatusBar1.Panels(2).Text = ""
End If

Select Case Index
Case 0
    If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM RM_BPPRODUCTION WHERE arrNO= " & MaxNo & "  and divcode='" & Divcode & "' AND ARRDATE=" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & " ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            MsgBox " P.O. Number already defined. Please Change the Date", vbInformation, head
            MaskEdBox1(0).SetFocus
            Exit Sub
        End If
        spdVar.Row = spdVar.ActiveRow
        spdVar.Col = 2
        If MaskEdBox1(0).Text < spdVar.Text Then
            MsgBox "Arrival Date must be after the Order Date ", vbInformation, head
            MaskEdBox1(0).Text = pdate
            Screen.MousePointer = 0
            Exit Sub
        End If
    End If
  
Case 2
    If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(2).Text)) Then
        MaskEdBox1(2).Text = "__/__/____"
    ElseIf CDate(MaskEdBox1(2).Text) > CDate(MaskEdBox1(0).Text) Then
        MsgBox "ATL Date should be before Arrival Date", vbInformation, head
        MaskEdBox1(2).Text = MaskEdBox1(0).Text
        MaskEdBox1(2).SetFocus
    End If
End If
End Select

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo MaskEdBox1_Validate_Error

If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox ("Please enter valid date"), vbInformation, head
        MaskEdBox1(0).Text = pdate
        MaskEdBox1(0).SetFocus
        Cancel = True
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
        MsgBox ("Project date must be earlier or equal to Processing date"), vbInformation, head
        MaskEdBox1(0).Text = pdate
        MaskEdBox1(0).SetFocus
        Cancel = True
    End If
End If

Exit Sub
MaskEdBox1_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_Validate of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option4_Click()
    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    Command3.Visible = True
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Command3.Visible = False
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    Command3.Visible = True

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Command3.Visible = False
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub spdVar_EditChange(ByVal Col As Long, ByVal Row As Long)
On Error GoTo spdVar_EditChange_Error

On Error GoTo spdVar_EditChange_Error

If Opt = "add" Or Opt = "mod" Then
    Select Case Col
        Case Iplotno
            With spdVar
                .Row = Row: .Col = Col
                If Len(.Text) > 10 Then
                    .Text = Mid(.Text, 1, 10)
                End If
            End With
        Case IPRNO
            With spdVar
                .Row = Row: .Col = Col
                If Len(.Text) > 20 Then
                    .Text = Mid(.Text, 1, 20)
                End If
            End With
        Case Ipressmarkno
            With spdVar
                .Row = Row: .Col = Col
                If Len(.Text) > 15 Then
                    .Text = Mid(.Text, 1, 15)
                End If
            End With
    End Select
    If Col = Iplotno Then
        Set rstPARAM = New Recordset
        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM where divcode='" & Divcode & "'", DB, adOpenStatic
        If rstPARAM!SuppLotNoReqArrival = "Y" Then
            Set rstSLOTNO = New Recordset
            rstSLOTNO.Open "Select SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO from rm_cont Where Contno = '" & val(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "' AND Divcode ='" & gDivision & "'", DB, adOpenStatic
            If rstSLOTNO.EOF = False Then
                StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO(0) & " and " & rstSLOTNO(1)
            
            End If
            
        End If
    End If

End If

Exit Sub
spdVar_EditChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_EditChange of Form FrmArrival", vbInformation, head

Exit Sub
End Sub

Private Sub spdVar_EnterRow(ByVal Row As Long, ByVal RowIsLast As Long)
On Error GoTo spdVar_EnterRow_Error

    If Col = Iplotno Then
        Set rstPARAM = New Recordset
        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM where divcode='" & Divcode & "'", DB, adOpenStatic
        If rstPARAM!SuppLotNoReqArrival = "Y" Then
            Set rstSLOTNO = New Recordset
            rstSLOTNO.Open "Select * from rm_cont Where Contno = " & val(GetText(spdVar, IContno, Row)) & " and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "' AND Divcode ='" & Divcode & "'", DB, adOpenStatic
            If rstSLOTNO.EOF Then
                StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO!SupplierFromLotNo & " and " & rstSLOTNO!SupplierFromLotNo
            
            End If
            
        End If
    End If

Exit Sub
spdVar_EnterRow_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_EnterRow of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0

End Sub



Private Sub spdVar_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo spdVar_KeyDown_Error

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
spdVar_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_KeyDown of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub spdVar_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
    If Opt = "add" Or Opt = "mod" Then
        If spdVar.Col = iNetwt And spdVar.MaxRows = spdVar.ActiveRow Then
    
            If KeyAscii = 13 Or KeyAscii = 9 Then
'                SSTab1.Tab = 1
'                Txtfields(3).SetFocus
                BUTTON(9).Enabled = True
                BUTTON(9).SetFocus
                Exit Sub
             End If
         End If
    Else
        KeyAscii = 0
    End If
End Sub

Private Sub spdVar_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
Dim dGrossWT As Double
On Error GoTo spdVar_LeaveCell_Error
intervalMinutes = -1
If (Opt = "add" Or Opt = "mod") Then
    If Col = iGrswt Or Col = iTarwt Then
        spdVar.SetText iNetwt, Row, val(GetText(spdVar, iGrswt, spdVar.ActiveRow)) - val(GetText(spdVar, iTarwt, spdVar.ActiveRow))
    End If
    If Col = iQty Then
        If val(GetText(spdVar, iQty, Row)) > val(GetText(spdVar, iAQty, Row)) Then
            spdVar.SetActiveCell Col, Row
            spdVar.SetText iQty, Row, ""
            
            MsgBox "Bale Press Quantity is greater than Arrival Quantity ", vbInformation, head
            spdVar.SetActiveCell Col, Row
            spdVar.SetText iQty, Row, ""
            Exit Sub
'        ElseIf val(GetText(spdVar, iQty, Row)) = 0 Then
'            spdVar.SetActiveCell Col, Row
'            spdVar.SetText iQty, Row, ""
'            MsgBox "Bale Press Quantity is should not Empty ", vbInformation, head
'            spdVar.SetActiveCell Col, Row
'            spdVar.SetText iQty, Row, ""
'            Exit Sub
        End If
    End If
'
    If Col = iNetwt Then
        If val(GetText(spdVar, iNetwt, Row)) > val(GetText(spdVar, iANetwt, Row)) Then
            spdVar.SetActiveCell Col, Row
            spdVar.SetText iNetwt, Row, ""
            MsgBox "Bale Press Net Weight is greater than Arrival Net Weight ", vbInformation, head
            spdVar.SetActiveCell Col, Row
            spdVar.SetText iNetwt, Row, ""
            Exit Sub
'        ElseIf val(GetText(spdVar, iNetwt, Row)) = 0 Then
'            MsgBox "Bale Press Net Weight is should not Empty ", vbInformation, head
'            spdVar.SetActiveCell Col, Row
'            spdVar.SetText iNetwt, Row, ""
'            Exit Sub
        End If
    End If
End If


Exit Sub
spdVar_LeaveCell_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_LeaveCell of Form FrmArrival"
    Exit Sub
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
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error

intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Or Opt = "fnd" Or Opt = "" Or Opt = " " Then
Select Case Index
Case 32
       Set Rs = New Recordset
       Rs.Open "SELECT * FROM RM_Ginner WHERE GinCode='" & txtfields(32).Text & "'", DB, adOpenStatic
       If Rs.EOF = False Then
           txtfields(31).Text = Rs("GinNAME")
       Else
           txtfields(31).Text = ""
       End If

Case 29
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM RM_CAT WHERE CATCD='" & txtfields(29).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
            Text9.Text = Rs("CATNAME")
        Else
            Text9.Text = ""
        End If
Case 2
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(2).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
            Text1.Text = Rs("slname")
        Else
            Text1.Text = ""
        End If

Case 3
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(3).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
            Text2.Text = Rs("slname")
        Else
            Text2.Text = ""
        End If

Case 4
        Set Rs = New Recordset
        Rs.Open "select areaname from rm_area where areacode = '" & txtfields(4).Text & "' ", DB, adOpenStatic
     If Rs.RecordCount <> 0 Then
            Text3.Text = Rs("areaname")
        Else
            Text3.Text = ""
        End If

Case 5
        Set Rs = New Recordset
        Rs.Open "Select varname from rm_var where varcode='" & txtfields(5).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
            txtfields(20).Text = Rs("varname")
        Else
           txtfields(20).Text = ""
        End If
        
 Case 13
        Set Rs = New Recordset
        Rs.Open "select wname from rm_weighnment where code='" & txtfields(13).Text & "'", DB, adOpenDynamic, adLockOptimistic
        If Rs.RecordCount <> 0 Then
            Text8.Text = Rs("wname")
        Else
            Text8.Text = ""
        End If
Case 9
        Set Rs = New Recordset
        Rs.Open "select carname from po_car where carcode='" & txtfields(9).Text & "'", DB
        If Rs.RecordCount <> 0 Then
            Text7.Text = Rs("carname")
        Else
            Text7.Text = ""
        End If
        
Case 22
        Set Rs = New Recordset
        Rs.Open "select gname from rm_god where gcode='" & txtfields(22).Text & "' AND Divcode = " & Divcode, DB
        If Rs.RecordCount <> 0 Then
            txtfields(23).Text = Rs("gname")
        Else
            txtfields(23).Text = ""
        End If
 
End Select
End If



Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form FrmArrival", vbInformation, head

End Sub

Private Sub txtfields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error


'If Index <> 23 And Index <> 89 And Index <> 90 And Index <> 91 And Index <> 95 And Index <> 25 And Index <> 26 And Index <> 27 And Index <> 28 Then
'    Txtfields(Index).BackColor = &HC0FFC0
'End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
     Case 2
          StatusBar1.Panels(2).Text = "Enter Supplier Code"
     Case 3
          StatusBar1.Panels(2).Text = "Enter Broker Code"
     Case 4
          StatusBar1.Panels(2).Text = "Enter Station Code"
     Case 5
          StatusBar1.Panels(2).Text = "Enter The variety"
     Case 7
          StatusBar1.Panels(2).Text = "Enter Maximum of 20 Characters"
     Case 9
          StatusBar1.Panels(2).Text = "Enter Maximum of 4 Characters"
     Case 10
          StatusBar1.Panels(2).Text = "Enter Maximum of 10 Characters"
     Case 12
          StatusBar1.Panels(2).Text = "Enter Maximum of 10 Characters"
     Case 6
          StatusBar1.Panels(2).Text = "Enter Count Type"
     Case 8
          StatusBar1.Panels(2).Text = "Enter Maximum of 15 Characters"
     Case 11
          StatusBar1.Panels(2).Text = "Enter Maximum of 50 Characters"
    End Select

End If




Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form FrmArrival", vbInformation, head
End Sub

Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

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
        'Call BUTTON_Click(3)    ''List
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
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error

If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 4
    ToUpCase txtfields(Index), KeyAscii
Case 7
    ToUpCase txtfields(Index), KeyAscii
    ToAlphaNumber txtfields(Index), 20, KeyAscii
Case 8
    ToUpCase txtfields(Index), KeyAscii
    ToAlphaNumber txtfields(Index), 15, KeyAscii
Case 9
    ToUpCase txtfields(Index), KeyAscii
Case 10
    ToUpCase txtfields(Index), KeyAscii
    ToAlphaNumber txtfields(Index), 10, KeyAscii
Case 11
    ToUpCase txtfields(Index), KeyAscii
    ToAlphanum txtfields(Index), 30, KeyAscii
Case 12
    ToUpCase txtfields(Index), KeyAscii
Case 13
    ToUpCase txtfields(Index), KeyAscii
Case 14
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 5, KeyAscii, 2
Case 15
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber txtfields(Index), KeyAscii
Case 16
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 txtfields(Index), 7, KeyAscii, 0
Case 17
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 txtfields(Index), 5, KeyAscii, 0
Case 18
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 txtfields(Index), 7, KeyAscii, 0
Case 21
    ToAlphanum txtfields(Index), 20, KeyAscii
End Select
End If

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
'StatusBar1.Panels(2).Text = ""
On Error GoTo txtfields_LostFocus_Error
If Index <> 23 And Index <> 89 And Index <> 90 And Index <> 91 And Index <> 95 And Index <> 25 And Index <> 26 And Index <> 27 And Index <> 28 Then
    txtfields(Index).BackColor = &HFFFFFF
End If

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0
    StatusBar1.Panels(2).Text = ""
Case 9
    Set Rs = New Recordset
    Rs.Open "select carcode,carname from po_car where carcode='" & txtfields(9).Text & "'", DB
    If Rs.RecordCount > 0 Then
        txtfields(9).Text = Rs(0)
        Text7.Text = Rs(1)
    Else
        StatusBar1.Panels(2).Text = "Select Carrier from the list"
        LookUp.Clear = True
        LookUp.query = "SELECT carcode""Transport Code"",Carname""Transport Name"" FROM PO_CAR"
        LookUp.DefCol = "Transport Name"
        LookUp.Caption = "Carrier Listing"
        LookUp.ALIGN = "1500,3500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(9).Text = LookUp.Fields(0)
            Text7.Text = LookUp.Fields(1)
            LookUp.Clear = True
            txtfields(21).SetFocus
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
Case 4
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_area", DB
    If Not rs4(0) = 0 Then
        Set Rs = New Recordset
        Rs.Open "select areacode,STATION from rm_area where areacode = '" & txtfields(4).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
           If Rs.RecordCount = 0 Then
                StatusBar1.Panels(2).Text = "Select Station Code From the List"
                LookUp.Clear = True
                LookUp.query = "SELECT areacode""Station Code"",Station""Station Name"" from RM_Area"
                LookUp.DefCol = "Station Name"
                LookUp.Caption = "Station List"
                LookUp.ALIGN = "2000,3000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(4).Text = LookUp.Fields(0)
                    Text3.Text = LookUp.Fields(1)
                    LookUp.Clear = True
                    txtfields(13).SetFocus
                    Exit Sub
                Else
                    txtfields(4).Text = ""
                    Text3.Text = ""
                    txtfields(4).SetFocus
                    Exit Sub
                End If
            End If
    Else
        MsgBox "Please define the Station Name in Set Up!", vbInformation, head
        Exit Sub
    End If
    Exit Sub
Case 13
If Trim(txtfields(4).Text) <> "" Then
Set Rs = New Recordset
    Rs.Open "select * from rm_weighnment where divcode='" & Divcode & "' and code='" & Trim(txtfields(13).Text) & "' ", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
        LookUp.Clear = True
        LookUp.query = "select code as ""Weighment Code"",wname as ""Weighment Name"" from rm_weighnment where divcode='" & Divcode & "' "
        LookUp.DefCol = "Weighment Name"
        LookUp.Caption = "Weighment Listing"
        LookUp.ALIGN = "2000,3000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(13).Text = LookUp.Fields(0)
            Text8.Text = LookUp.Fields(1)
            LookUp.Clear = True
            txtfields(14).SetFocus
        Else
            txtfields(13).Text = ""
            Text8.Text = ""
        End If
        LookUp.Clear = True
    Else
        Text8.Text = Rs("wname")
    End If
    End If
    Exit Sub
Case 14
txtfields(14).Text = Format(txtfields(14).Text, "#0.00")
Case 19
txtfields(19).Text = Format(txtfields(19).Text, "##########")
Case 16
txtfields(16).Text = Format(txtfields(16).Text, "#0.000")
Case 17
txtfields(17).Text = Format(txtfields(17).Text, "#0.000")
Case 18
txtfields(18).Text = Format(txtfields(18).Text, "#0.000")
End Select
End If


Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form FrmArrival", vbInformation, head
End Sub

Public Sub ToNum1(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
On Error GoTo tonum1_Error

     If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
    'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
    End If
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = 3 And Not (KeyAscii = 8) And Not (KeyAscii = 9) And Not (obj.SelLength = Len(obj)) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If

Exit Sub
tonum1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure tonum1 of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)

On Error GoTo txtfields_Validate_Error

'sLorryNo = Txtfields(11).Text

If Opt = "add" Or Opt = "mod" Then
Select Case Index

Case 0
       If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM RM_BPPRODUCTION WHERE arrNO= " & MaxNo & "  and divcode='" & Divcode & "' AND ARRDATE='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
         'MsgBox " Contract Number already Defined Please Change the date", vbInformation, head
         'Txtfields(0).Text = ""
         'Cancel = True
         Exit Sub
        End If
        End If
        
Case 32
    
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM Rm_ginner WHERE GinCODE='" & Trim(txtfields(32).Text) & "'", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            LookUp.Clear = True
            LookUp.query = " select Gincode""Ginner Code"",GinName""Ginner Name"" from RM_Ginner"
            LookUp.Caption = "Ginner List"
            LookUp.DefCol = "Ginner Name"
            LookUp.ALIGN = "1600,3500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(32).Text = LookUp.Fields(0)
                txtfields(31).Text = LookUp.Fields(1)
                LookUp.Clear = True
                txtfields(11).SetFocus
            Else
                txtfields(32).Text = ""
                txtfields(31).Text = ""
                txtfields(11).SetFocus
            End If
        Else
            txtfields(31).Text = Rs("ginname")
        End If
        Exit Sub
   Case 22

    If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "SELECT gcode,gname FROM rm_GOD WHERE GCODE='" & txtfields(22).Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            Label15.Caption = "Godown List"
            StatusBar1.Panels(2).Text = "Select Godown Code From the List"
            LookUp.Clear = True
            LookUp.query = "SELECT gcode""Godown Code"",gname""Godown Name"" from rm_god WHERE DIVCODE='" & Divcode & "'"
            LookUp.DefCol = "Godown Name"
            LookUp.Caption = "Godown Listing"
            LookUp.ALIGN = "1500,3500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                gCode = LookUp.Fields(0)
                txtfields(22).Text = LookUp.Fields(0)
                txtfields(23).Text = LookUp.Fields(1)
                LookUp.Clear = True
                txtfields(21).SetFocus
                spdVar.Row = spdVar.ActiveRow
                spdVar.Col = 5
                spdVar.Action = ActionActiveCell
            Else
                txtfields(22).Text = ""
                txtfields(23).Text = ""
                txtfields(22).SetFocus
            End If
        Else
            txtfields(22).Text = Rs(0)
            txtfields(23).Text = Rs(1)
            txtfields(21).SetFocus
        End If
    End If
    BUTTON(9).Enabled = True
Case 17
Case 2
    If Frame3.Visible = True Then
        Exit Sub
    End If
    testr = ""
    Set rs1 = New Recordset
    rs1.Open "Select * from masterlen", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        sup = rs1("ptypecotton") '& "%"
    Else
        sup = ""
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from FA_SLMAS WHERE left(slcode,2) in (select Items from dbo.split('" & sup & "',','))", DB
    If Not rs4(0) = 0 Then
        Set Rs = New Recordset
        ''rs.Open "select SLcode from FA_SLMAS where SLcode = '" & txtfields(2).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        Rs.Open "select  slcode from rm_cont a,fa_slmas b where  SLcode = '" & txtfields(2).Text & "' and divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select  slcode from rm_cont a,fa_slmas b where  SLcode = '" & txtfields(2).Text & "' and divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rcDKGS,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'", DB, adOpenStatic
        
        If Rs.BOF Then
            Label15.Caption = "Supplier List"
            StatusBar1.Panels(2).Text = "Select Supplier Code From the List"
            qry = "select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"" from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"" from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'" & _
                  "UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"" from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"" from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'"
            LookUp.Clear = True
            LookUp.query = qry
            LookUp.Caption = "Supplier Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "1500,3800,2000,1500"
            LookUp.Show vbModal
            
            
            If LookUp.Cancel = False Then
                txtfields(2).Text = LookUp.Fields(0)
                sCode = LookUp.Fields(0)
                Sname = LookUp.Fields(1)
                Text1.Text = LookUp.Fields(1)
                
                qry = " Select distinct a.Arrno ""Arrival No."",a.Arrdate""Arrival Date"",c.slname""Supplier"",d.catname""Category"" from rm_arrival a ,fa_slmas c,rm_cat d " & _
                      " where a.supcd=c.slcode and a.catcd=d.catcd and a.arrno not in (select arrno from rm_lot b where a.arrno =b.arrno and a.arrdate=b.arrdt and a.divcode=b.divcode " & _
                      " and a.supcd=b.supcd)  and a.arrno not in (select arrno from rm_bpproduction b where a.arrno =b.arrno and a.arrdate=b.arrdate and a.divcode=b.divcode " & _
                      " and a.supcd=b.supcd) and d.balepress='Y' AND a.supcd='" & LookUp.Fields(0) & "' group by a.Arrno,a.Arrdate,c.slname,d.catname "
                    
                    LookUp.Clear = True
                    LookUp.query = qry
                    LookUp.Caption = "Supplier Listing"
                    LookUp.DefCol = "Supplier Name"
                    LookUp.ALIGN = "1200,1200,3500,1500"
                    LookUp.Show vbModal
                    
                    If LookUp.Cancel = False Then
                        Call Arrival_Load(val(LookUp.Fields(0)), CStr(LookUp.Fields(1)))
                        txtfields(3).Locked = False
                        txtfields(4).Locked = False
                        txtfields(13).Locked = False
                        txtfields(30).Locked = False
                        txtfields(32).SetFocus
                        Exit Sub
                    Else
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
        Else
            Set rs1 = New Recordset
            rs1.Open "select slname from fa_slmas where slcode = '" & txtfields(2).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            
            If rs1.BOF Then
               Text1.Text = ""
            Else
               Text1.Text = rs1(0)
            End If
        End If
    Else
        MsgBox "Please define the Supplier in Master!", vbInformation, head
        Exit Sub
    End If


End Select
End If




Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form FrmArrival", vbInformation, head

End Sub
Public Sub arrregHeader(pg1 As Integer, co As Integer, s As String, a As String, B As String)
          Print #z, Chr(18)
          Print #z, Space(0) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) & "Arrival List " + "     " + Format(Trim(a), "DD/MM/YY") + Space(1) + "  " + Space(1) + Format(Trim(B), "DD/MM/YY") + Space(80) + Format(CStr(SR), "dd/mm/yy") + Space(6) + "Pg.: " + Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #z, Space(5) & String(145, "-")
         ' Print #z, Space(8) + "Date                                                                                                                                                                       "
          Print #z, "     Arrival Receipt   Lorry                                       Station  P.Lot Variety       Quantity  Unit       Rate/     Gross Wt.     Nett Wt."
          Print #z, "      Number Date      Number        Supplier  Name                Name       No.                                    Candy          Kgs          Kgs"
          Print #z, Space(5) & String(145, "-")
          co = co + 8
             
End Sub
Private Sub SpreadAlign(totrow As Integer)
    On Error GoTo spreadalign_Error
    SetSpreadCol spdVar, IContno, "Arrival No.", CellTypeStaticText
    SetSpreadCol spdVar, IContdt, "Arrival Date", CellTypeStaticText
    SetSpreadCol spdVar, IVarcode, "Variety Code", CellTypeStaticText
    SetSpreadCol spdVar, IVarName, "Variety Name", CellTypeStaticText
    SetSpreadCol spdVar, Iplotno, "Supplier Lot No.", CellTypeEdit
    SetSpreadCol spdVar, IPRNO, "PR No.", CellTypeEdit
    SetSpreadCol spdVar, Ipressmarkno, "PressMark No.", CellTypeEdit
    SetSpreadCol spdVar, Iunit, "Pack Type", CellTypeStaticText
    SetSpreadCol spdVar, Imixcount, "Mixing Code", CellTypeStaticText
    SetSpreadCol spdVar, Imixgrp, "Mixing Group", CellTypeStaticText
    SetSpreadCol spdVar, iAQty, "Arrival Qty", CellTypeNumber
    SetSpreadCol spdVar, iAGrswt, "Arrival Gross Wt.", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, iATarwt, "Arrival Tare Wt.", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, iAMoiwt, "Arrival Moisture Wt.", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, iANetwt, "Arrival Nett Wt.", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, iQty, "Nett Qty", CellTypeNumber
    SetSpreadCol spdVar, iGrswt, " Gross Wt.", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, iTarwt, "Tare Wt.", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, iNetwt, "    Nett Weight", CellTypeNumber, 3, 0
    
    spdVar.Col = 3
    spdVar.ColHidden = True
    
    spdVar.ColWidth(IContno) = 8
    spdVar.ColWidth(iATarwt) = 11
    spdVar.ColWidth(IVarName) = 16
    spdVar.ColWidth(iAGrswt) = 11
    spdVar.ColWidth(iAMoiwt) = 12
    spdVar.ColWidth(iANetwt) = 11
    spdVar.ColWidth(Iplotno) = 12
    spdVar.ColWidth(iNetwt) = 10
    With spdVar
         .MaxCols = 18
         .MaxRows = totrow
         .ColsFrozen = 4
         .SetActiveCell 3, 1
    End With
    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form FrmArrival"
End Sub

Private Sub ArrivalDisplay(BPNO As Integer, BPDate As String)

On Error GoTo ArrivalDisplay_Error
Dim rQry As New ADODB.Recordset

If rQry.State = adStateOpen Then rQry.Close

rQry.Open " SELECT  ARRNO,ARRDATE,AREACODE,SUPCD,BRKCD,PLOTNO,VARCODE,PRNO,PRMARK,CARCODE,GCNO,CNTCODE,LORRYNOS,BBFLAG,Quantity,Grosswt,Tarewt,Netwt,bpQuantity,bpGrosswt,bpTarewt,bpNetwt,GODOWN,weignment," & _
          " inwardno,inwarddate,LRNO,GINCODE FROM RM_bpproduction WHERE bpDATE  between '" & Format(yfdate, "YYYY/MM/DD") & "' And '" & Format(yldate, "YYYY/MM/DD") & "' And bpDATE ='" & Format(BPDate, "YYYY/MM/DD") & "' And bpno=" & val(BPNO) & " And Divcode='" & Divcode & "'", DB, adOpenStatic
          
If rQry.EOF = False Then
    txtfields(3).Text = rQry("brkcd")
    txtfields(4).Text = rQry("areacode")
    txtfields(13).Text = rQry("weignment")
    txtfields(30).Text = rQry("inwardno")
    txtfields(32).Text = rQry("gincode")
    txtfields(9).Text = rQry("Carcode")
    txtfields(11).Text = rQry("lorrynos")
    txtfields(21).Text = rQry("lrno")
    txtfields(22).Text = rQry("godown")

    GG = 1
    rQry.MoveFirst
    Call SpreadAlign(CInt(rQry.RecordCount))
    For lRow = 0 To rQry.RecordCount - 1
        spdVar.SetText IContno, GG, rQry("ARRNO")
        spdVar.SetText IContdt, GG, rQry("ARRDATE")
        spdVar.SetText IVarcode, GG, rQry("VARCODE")
        spdVar.SetText IVarName, GG, RMIMod.getMasterName1("VARNAME", "RM_VAR", "VARCODE", rQry("VARCODE"))
        spdVar.SetText Iplotno, GG, rQry("PLOTNO")
        spdVar.SetText IPRNO, GG, rQry("PRNO")
        spdVar.SetText Ipressmarkno, GG, rQry("PRMARK")
        spdVar.SetText Iunit, GG, rQry("BBFLAG")
        spdVar.SetText Imixcount, GG, rQry("CNTCODE")
        spdVar.SetText Imixgrp, GG, RMIMod.getMasterName1("MIXGRPNAME", "RM_MIXGRP", "MIXGRPCD", rQry("CNTCODE"))
        spdVar.SetText iAQty, GG, rQry("QUANTITY")
        spdVar.SetText iAGrswt, GG, rQry("GROSSWT")
        spdVar.SetText iATarwt, GG, rQry("TAREWT")
        spdVar.SetText iANetwt, GG, rQry("NETWT")
        spdVar.SetText iQty, GG, rQry("bpQUANTITY")
        spdVar.SetText iGrswt, GG, rQry("bpGROSSWT")
        spdVar.SetText iTarwt, GG, rQry("bpTAREWT")
        spdVar.SetText iNetwt, GG, rQry("bpNETWT")
        rQry.MoveNext
        GG = GG + 1
    Next
    
    rQry.Close
Else
    MsgBox "No Arrival Record(s) Found", vbInformation, head
    Exit Sub
End If


Exit Sub
ArrivalDisplay_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ArrivalDisplay of Form FrmArrival", vbInformation, head

End Sub


'---------------------------------------------------------------------------------------
' Procedure : MaxNo
' DateTime  : 07/12/2008 14:43
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Function MaxNo() As Integer
Dim rsMax As New ADODB.Recordset
Dim iMaxNo As Integer
On Error GoTo MaxNo_Error

Set rsMax = New Recordset
    
    rsMax.Open "SELECT ISNULL(MAX(bpno),0)+1 FROM RM_BPPRODUCTION WHERE  bpdate BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsMax.RecordCount > 0 Then
        MaxNo = rsMax(0)
    Else
        MaxNo = "1"
    End If

Exit Function
MaxNo_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaxNo of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Function

Public Sub Unbindcontls()
On Error GoTo bindcontls_Error

On Error Resume Next
For Each oText In Me.txtfields
    Set oText.DataSource = Nothing
Next
'MaskEdBox1(0).DataField = Nothing
'MaskEdBox1(1).DataField = Nothing
'MaskEdBox1(2).DataField = Nothing
'MaskEdBox1(3).DataField = Nothing

Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Arrival_Load(ArivalNo As Integer, ArrDate As String)
Dim rQry As New ADODB.Recordset

If rQry.State = adStateOpen Then rQry.Close

rQry.Open " SELECT top 1 ARRNO,ARRDATE,AREACODE,SUPCD,BRKCD,PLOTNO,VARCODE,CONTDT,PRNO,PRMARK,CARCODE,GCNO,CNTCODE,LORRYNOS,BBFLAG,Quantity,Grosswt,Tarewt,Netwt,GODOWN,weignment," & _
              " inwardno,inwarddate,LRNO,GINCODE FROM RM_ARRIVAL WHERE ARRDATE ='" & Format(ArrDate, "YYYY/MM/DD") & "' And Arrno=" & val(ArivalNo) & " And Divcode='" & Divcode & "'", DB, adOpenStatic


          
If rQry.EOF = False Then
    txtfields(3).Text = rQry("brkcd")
    txtfields(4).Text = rQry("areacode")
    txtfields(13).Text = rQry("weignment")
    txtfields(30).Text = IIf(IsNull(rQry("inwardno")), 0, rQry("inwardno"))
    txtfields(32).Text = rQry("gincode")
    txtfields(9).Text = rQry("Carcode")
    txtfields(11).Text = rQry("lorrynos")
    txtfields(21).Text = rQry("lrno")
    txtfields(22).Text = rQry("godown")

    GG = 1
    rQry.MoveFirst
    Call SpreadAlign(CInt(rQry.RecordCount))
    For lRow = 0 To rQry.RecordCount - 1
        spdVar.SetText IContno, GG, rQry("ARRNO")
        spdVar.SetText IContdt, GG, rQry("ARRDATE")
        spdVar.SetText IVarcode, GG, rQry("VARCODE")
        spdVar.SetText IVarName, GG, RMIMod.getMasterName1("VARNAME", "RM_VAR", "VARCODE", rQry("VARCODE"))
        spdVar.SetText Iplotno, GG, rQry("PLOTNO")
        spdVar.SetText IPRNO, GG, rQry("PRNO")
        spdVar.SetText Ipressmarkno, GG, rQry("PRMARK")
        spdVar.SetText Iunit, GG, rQry("BBFLAG")
        spdVar.SetText Imixcount, GG, rQry("CNTCODE")
        spdVar.SetText Imixgrp, GG, RMIMod.getMasterName1("MIXGRPNAME", "RM_MIXGRP", "MIXGRPCD", rQry("CNTCODE"))
        spdVar.SetText iAQty, GG, rQry("QUANTITY")
        spdVar.SetText iAGrswt, GG, rQry("GROSSWT")
        spdVar.SetText iATarwt, GG, rQry("TAREWT")
        spdVar.SetText iANetwt, GG, rQry("NETWT")
        rQry.MoveNext
        GG = GG + 1
    Next
    
    rQry.Close
Else
    MsgBox "No Arrival Record(s) Found", vbInformation, head
    Exit Sub
End If
End Sub
