VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_IMRMIArrival 
   Caption         =   "Arrival"
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11880
   ForeColor       =   &H80000009&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame14 
      Height          =   4755
      Left            =   1875
      TabIndex        =   134
      Top             =   1230
      Visible         =   0   'False
      Width           =   12660
      Begin MSComctlLib.ListView ListPO 
         Height          =   3690
         Left            =   30
         TabIndex        =   147
         Top             =   450
         Width           =   12570
         _ExtentX        =   22172
         _ExtentY        =   6509
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   1
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.ListBox LstPO 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   780
         ItemData        =   "Frm_IMRMIArrival.frx":0000
         Left            =   30
         List            =   "Frm_IMRMIArrival.frx":0002
         Style           =   1  'Checkbox
         TabIndex        =   135
         Top             =   675
         Visible         =   0   'False
         Width           =   11130
      End
      Begin VB.CommandButton StockOk 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   4950
         TabIndex        =   136
         Top             =   4215
         Width           =   945
      End
      Begin VB.CommandButton StockClose 
         Cancel          =   -1  'True
         Caption         =   "&Close"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   6510
         TabIndex        =   137
         Top             =   4230
         Width           =   945
      End
      Begin VB.Label lblLabels 
         BackColor       =   &H00800000&
         Caption         =   "         No Date        Variety Name                  Balance Qty       Rate  Unit          Division                  "
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   210
         Index           =   10
         Left            =   30
         TabIndex        =   139
         Top             =   435
         Visible         =   0   'False
         Width           =   11145
      End
      Begin VB.Label Label107 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Order Listing"
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
         Left            =   30
         TabIndex        =   138
         Top             =   105
         Width           =   12585
      End
   End
   Begin VB.PictureBox UserFooter1 
      Height          =   4305
      Left            =   10410
      ScaleHeight     =   4245
      ScaleWidth      =   3960
      TabIndex        =   125
      Top             =   1020
      Visible         =   0   'False
      Width           =   4020
   End
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
   Begin VB.Frame Frame5 
      Height          =   480
      Left            =   4980
      TabIndex        =   124
      Top             =   510
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton Command3 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   315
         Left            =   4080
         TabIndex        =   130
         Top             =   120
         Visible         =   0   'False
         Width           =   1260
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3120
         TabIndex        =   123
         Top             =   150
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   122
         Top             =   135
         Width           =   1260
      End
      Begin VB.Label Label37 
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
         Left            =   180
         TabIndex        =   120
         Top             =   165
         Width           =   1425
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Removed  Fields"
      Height          =   5265
      Left            =   10950
      TabIndex        =   73
      Top             =   1380
      Visible         =   0   'False
      Width           =   10620
      Begin VB.TextBox Txtfields 
         Height          =   330
         Index           =   1
         Left            =   2115
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   116
         TabStop         =   0   'False
         Top             =   4305
         Width           =   990
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "Frm_IMRMIArrival.frx":0004
         Left            =   1260
         List            =   "Frm_IMRMIArrival.frx":0014
         TabIndex        =   106
         Top             =   1515
         Visible         =   0   'False
         Width           =   1970
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "Frm_IMRMIArrival.frx":003B
         Left            =   3975
         List            =   "Frm_IMRMIArrival.frx":0048
         Locked          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   97
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
         TabIndex        =   96
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
         TabIndex        =   95
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
         TabIndex        =   94
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
         TabIndex        =   93
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
         TabIndex        =   92
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
         TabIndex        =   91
         Top             =   2655
         Width           =   1065
      End
      Begin VB.TextBox Text6 
         Height          =   315
         Left            =   2400
         TabIndex        =   87
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
         TabIndex        =   86
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
         TabIndex        =   80
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
         TabIndex        =   79
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
         TabIndex        =   78
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
         TabIndex        =   77
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
         TabIndex        =   76
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
         TabIndex        =   75
         TabStop         =   0   'False
         Top             =   330
         Width           =   3285
      End
      Begin VB.TextBox Text5 
         BackColor       =   &H00E0E0E0&
         Height          =   330
         Left            =   5970
         Locked          =   -1  'True
         TabIndex        =   74
         TabStop         =   0   'False
         Top             =   705
         Width           =   3285
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         Height          =   330
         Index           =   2
         Left            =   1830
         TabIndex        =   89
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
         TabIndex        =   117
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
         TabIndex        =   119
         Top             =   4365
         Width           =   1410
      End
      Begin VB.Label Label16 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "P.O.Date"
         Height          =   195
         Left            =   5250
         TabIndex        =   118
         Top             =   4320
         Width           =   660
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Unit"
         Height          =   195
         Index           =   1
         Left            =   3210
         TabIndex        =   105
         Top             =   3585
         Width           =   285
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "Rate/"
         Height          =   195
         Left            =   1440
         TabIndex        =   104
         Top             =   2835
         Width           =   450
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         Caption         =   "Nett Weight"
         Height          =   195
         Left            =   6930
         TabIndex        =   103
         Top             =   435
         Width           =   855
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Gross Weight"
         Height          =   195
         Index           =   0
         Left            =   540
         TabIndex        =   102
         Top             =   3090
         Width           =   960
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         Caption         =   "Tare Weight"
         Height          =   195
         Left            =   2655
         TabIndex        =   101
         Top             =   3075
         Width           =   885
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Quantity"
         Height          =   195
         Left            =   5520
         TabIndex        =   100
         Top             =   3255
         Width           =   585
      End
      Begin VB.Label Label29 
         AutoSize        =   -1  'True
         Caption         =   "Moisture"
         Height          =   195
         Left            =   4680
         TabIndex        =   99
         Top             =   3225
         Width           =   600
      End
      Begin VB.Label Label31 
         AutoSize        =   -1  'True
         Caption         =   "unit"
         ForeColor       =   &H000000FF&
         Height          =   195
         Left            =   1725
         TabIndex        =   98
         Top             =   3090
         Width           =   255
      End
      Begin VB.Label Label26 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Date"
         Height          =   195
         Left            =   840
         TabIndex        =   90
         Top             =   1980
         Visible         =   0   'False
         Width           =   345
      End
      Begin VB.Label Label23 
         AutoSize        =   -1  'True
         Caption         =   "Ginning Name"
         Height          =   195
         Left            =   135
         TabIndex        =   88
         Top             =   1515
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.Label Label24 
         AutoSize        =   -1  'True
         Caption         =   "Party Lot No."
         Height          =   195
         Left            =   15
         TabIndex        =   85
         Top             =   375
         Width           =   930
      End
      Begin VB.Label Label19 
         AutoSize        =   -1  'True
         Caption         =   "PR Number"
         Height          =   195
         Left            =   0
         TabIndex        =   84
         Top             =   1080
         Width           =   825
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "PR Mark"
         Height          =   195
         Left            =   0
         TabIndex        =   83
         Top             =   735
         Width           =   630
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Variety"
         Height          =   195
         Left            =   3750
         TabIndex        =   82
         Top             =   3210
         Width           =   960
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Mixing Group"
         Height          =   195
         Left            =   3765
         TabIndex        =   81
         Top             =   750
         Width           =   1110
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   41
      Top             =   -120
      Width           =   11310
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5190
         Picture         =   "Frm_IMRMIArrival.frx":005C
         Style           =   1  'Graphical
         TabIndex        =   126
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   105
         Width           =   585
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_IMRMIArrival.frx":049E
         Height          =   510
         Index           =   4
         Left            =   1620
         Picture         =   "Frm_IMRMIArrival.frx":07A8
         Style           =   1  'Graphical
         TabIndex        =   121
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   7425
         Picture         =   "Frm_IMRMIArrival.frx":0B3D
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Arrival Receipt Report Print  (Ctrl P)"
         Top             =   120
         Visible         =   0   'False
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_IMRMIArrival.frx":0F7F
         Height          =   510
         Index           =   11
         Left            =   5775
         Picture         =   "Frm_IMRMIArrival.frx":13C9
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit  (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_IMRMIArrival.frx":175E
         Height          =   510
         Index           =   10
         Left            =   4710
         Picture         =   "Frm_IMRMIArrival.frx":1A68
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel   (Ctrl BackSpace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_IMRMIArrival.frx":1DE4
         Height          =   510
         Index           =   9
         Left            =   4185
         Picture         =   "Frm_IMRMIArrival.frx":20EE
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save  (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_IMRMIArrival.frx":2490
         Height          =   510
         Index           =   8
         Left            =   3660
         Picture         =   "Frm_IMRMIArrival.frx":28DA
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record  (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_IMRMIArrival.frx":2C3C
         Height          =   510
         Index           =   7
         Left            =   3135
         Picture         =   "Frm_IMRMIArrival.frx":3086
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record  (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_IMRMIArrival.frx":33D6
         Height          =   510
         Index           =   6
         Left            =   2610
         Picture         =   "Frm_IMRMIArrival.frx":3820
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record  (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_IMRMIArrival.frx":3B6D
         Height          =   510
         Index           =   5
         Left            =   2085
         Picture         =   "Frm_IMRMIArrival.frx":3FB7
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record  (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   8730
         Picture         =   "Frm_IMRMIArrival.frx":431C
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List  (Ctrl L)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_IMRMIArrival.frx":46B3
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
         Picture         =   "Frm_IMRMIArrival.frx":49BD
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete  (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_IMRMIArrival.frx":4D59
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Frm_IMRMIArrival.frx":5063
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_IMRMIArrival.frx":53DD
         Height          =   510
         Index           =   0
         Left            =   60
         Picture         =   "Frm_IMRMIArrival.frx":56E7
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
         TabIndex        =   43
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
         TabIndex        =   42
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   40
      Top             =   8190
      Width           =   11880
      _ExtentX        =   20955
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
            TextSave        =   "26/07/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "08:26 PM"
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
      Height          =   7845
      Left            =   480
      TabIndex        =   49
      Top             =   870
      Width           =   9915
      _ExtentX        =   17489
      _ExtentY        =   13838
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "         "
      TabPicture(0)   =   "Frm_IMRMIArrival.frx":5A7A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame7 
         Height          =   7740
         Left            =   120
         TabIndex        =   50
         Top             =   0
         Width           =   9690
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "OcDocNo"
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
            Index           =   38
            Left            =   840
            MaxLength       =   25
            TabIndex        =   162
            Top             =   6960
            Width           =   645
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "CpySno"
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
            Index           =   37
            Left            =   7320
            MaxLength       =   10
            TabIndex        =   161
            Top             =   4800
            Width           =   405
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "Cpyno"
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
            Index           =   36
            Left            =   6480
            MaxLength       =   10
            TabIndex        =   157
            Top             =   4800
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "OcNo"
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
            Index           =   35
            Left            =   1635
            MaxLength       =   25
            TabIndex        =   153
            Top             =   4800
            Width           =   1725
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "Line_No"
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
            Index           =   34
            Left            =   6495
            MaxLength       =   30
            TabIndex        =   151
            Top             =   4455
            Width           =   3045
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "plcode"
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
            Index           =   33
            Left            =   1635
            MaxLength       =   4
            TabIndex        =   149
            Top             =   4455
            Width           =   975
         End
         Begin VB.TextBox Text10 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2655
            Locked          =   -1  'True
            TabIndex        =   148
            TabStop         =   0   'False
            Top             =   4455
            Width           =   2805
         End
         Begin MSComCtl2.DTPicker dtpLorryinDt 
            Height          =   285
            Left            =   1650
            TabIndex        =   142
            Top             =   4110
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   503
            _Version        =   393216
            Format          =   398786561
            CurrentDate     =   41060
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "Gincode"
            Height          =   330
            Index           =   32
            Left            =   1650
            MaxLength       =   100
            TabIndex        =   25
            Top             =   3045
            Width           =   975
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
            Left            =   2640
            Locked          =   -1  'True
            MaxLength       =   30
            TabIndex        =   26
            TabStop         =   0   'False
            Top             =   3045
            Width           =   6930
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
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
            Left            =   1635
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   132
            Top             =   495
            Width           =   1020
         End
         Begin VB.TextBox Text9 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2685
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   131
            TabStop         =   0   'False
            Text            =   " "
            Top             =   495
            Width           =   4500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
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
            TabIndex        =   23
            Top             =   2640
            Width           =   1725
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "freight"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#,##0.00"
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
            Height          =   330
            Index           =   14
            Left            =   8085
            TabIndex        =   22
            Top             =   2295
            Width           =   1470
         End
         Begin VB.TextBox Text8 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2685
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   21
            TabStop         =   0   'False
            Text            =   " "
            Top             =   2295
            Width           =   4515
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "areacode"
            Height          =   330
            Index           =   4
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   18
            Top             =   1950
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "weignment"
            Height          =   330
            Index           =   13
            Left            =   1650
            MaxLength       =   100
            TabIndex        =   19
            Top             =   2295
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
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
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   28
            Left            =   8430
            MaxLength       =   10
            TabIndex        =   114
            TabStop         =   0   'False
            Top             =   7215
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
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
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   27
            Left            =   7035
            MaxLength       =   10
            TabIndex        =   112
            TabStop         =   0   'False
            Top             =   7215
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
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
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   26
            Left            =   5610
            MaxLength       =   10
            TabIndex        =   110
            TabStop         =   0   'False
            Top             =   7215
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
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
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   25
            Left            =   4230
            MaxLength       =   10
            TabIndex        =   107
            TabStop         =   0   'False
            Top             =   7215
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   89
            Left            =   1650
            MaxLength       =   10
            TabIndex        =   68
            TabStop         =   0   'False
            Top             =   855
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   90
            Left            =   3570
            MaxLength       =   10
            TabIndex        =   67
            TabStop         =   0   'False
            Top             =   855
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   91
            Left            =   8070
            MaxLength       =   10
            TabIndex        =   66
            TabStop         =   0   'False
            Top             =   840
            Width           =   1470
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   95
            Left            =   5880
            MaxLength       =   10
            TabIndex        =   65
            TabStop         =   0   'False
            Top             =   855
            Width           =   1305
         End
         Begin VB.TextBox Text7 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   6420
            Locked          =   -1  'True
            TabIndex        =   29
            TabStop         =   0   'False
            Top             =   3390
            Width           =   3150
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
            Left            =   6420
            Locked          =   -1  'True
            MaxLength       =   30
            TabIndex        =   32
            TabStop         =   0   'False
            Top             =   3735
            Width           =   3150
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "godown"
            Height          =   330
            Index           =   22
            Left            =   5415
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   31
            Top             =   3735
            Width           =   975
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "lrno"
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
            TabIndex        =   30
            Top             =   3735
            Width           =   2565
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "arrno"
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
            Left            =   1635
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   12
            Top             =   135
            Width           =   1020
         End
         Begin VB.TextBox Text3 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2685
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   20
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1950
            Width           =   6870
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2685
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   17
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1605
            Width           =   6870
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2685
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   15
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1260
            Width           =   6870
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "supcd"
            Height          =   330
            Index           =   2
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   14
            Top             =   1260
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "brkcd"
            Height          =   330
            Index           =   3
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   16
            Top             =   1605
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "lorrynos"
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
            TabIndex        =   27
            Top             =   3390
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
            TabIndex        =   28
            Top             =   3390
            Width           =   975
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ARRDATE"
            Height          =   255
            Index           =   0
            Left            =   5880
            TabIndex        =   13
            Top             =   195
            Width           =   1035
            _ExtentX        =   1826
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
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Left            =   5865
            TabIndex        =   51
            Top             =   150
            Width           =   1320
            _ExtentX        =   2328
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   171704321
            CurrentDate     =   36831
         End
         Begin VB.TextBox Text4 
            BackColor       =   &H00E0E0E0&
            Height          =   345
            Left            =   8100
            Locked          =   -1  'True
            TabIndex        =   33
            TabStop         =   0   'False
            Text            =   " "
            Top             =   2295
            Visible         =   0   'False
            Width           =   1320
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DATE1"
            Height          =   330
            Index           =   3
            Left            =   5085
            TabIndex        =   24
            Top             =   2640
            Width           =   1050
            _ExtentX        =   1852
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
         Begin MSComCtl2.DTPicker dtpLorryinTime 
            Height          =   285
            Left            =   3000
            TabIndex        =   143
            Top             =   4110
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   503
            _Version        =   393216
            Format          =   171704322
            CurrentDate     =   41060
         End
         Begin MSComCtl2.DTPicker dtpLorryOutDt 
            Height          =   285
            Left            =   5400
            TabIndex        =   145
            Top             =   4140
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   503
            _Version        =   393216
            Format          =   171704321
            CurrentDate     =   41060
         End
         Begin MSComCtl2.DTPicker dtpLorryOutTime 
            Height          =   285
            Left            =   6750
            TabIndex        =   146
            Top             =   4140
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   503
            _Version        =   393216
            Format          =   171704322
            CurrentDate     =   41060
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "OcDate"
            Height          =   330
            Index           =   4
            Left            =   4440
            TabIndex        =   154
            Top             =   4800
            Width           =   1050
            _ExtentX        =   1852
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
            DataField       =   "CpyDate"
            Height          =   330
            Index           =   5
            Left            =   8520
            TabIndex        =   158
            Top             =   4800
            Width           =   1050
            _ExtentX        =   1852
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
            DataField       =   "OcDocDate"
            Height          =   330
            Index           =   6
            Left            =   2400
            TabIndex        =   163
            Top             =   6960
            Width           =   1050
            _ExtentX        =   1852
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
         Begin FPSpreadADO.fpSpread spdVar 
            Height          =   1635
            Left            =   120
            TabIndex        =   166
            Top             =   5280
            Width           =   9375
            _Version        =   524288
            _ExtentX        =   16536
            _ExtentY        =   2884
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
            SpreadDesigner  =   "Frm_IMRMIArrival.frx":5A96
            AppearanceStyle =   0
         End
         Begin VB.Label Label52 
            AutoSize        =   -1  'True
            Caption         =   "OC Date"
            Height          =   195
            Left            =   1680
            TabIndex        =   165
            Top             =   7035
            Width           =   615
         End
         Begin VB.Label Label51 
            AutoSize        =   -1  'True
            Caption         =   "OC No."
            Height          =   195
            Left            =   120
            TabIndex        =   164
            Top             =   7035
            Width           =   525
         End
         Begin VB.Label Label50 
            AutoSize        =   -1  'True
            Caption         =   "Recipt No."
            Height          =   195
            Left            =   5520
            TabIndex        =   160
            Top             =   4875
            Width           =   765
         End
         Begin VB.Label Label49 
            AutoSize        =   -1  'True
            Caption         =   "Rec. Date"
            Height          =   195
            Left            =   7760
            TabIndex        =   159
            Top             =   4875
            Width           =   735
         End
         Begin VB.Label Label48 
            AutoSize        =   -1  'True
            Caption         =   "OC No."
            Height          =   195
            Left            =   240
            TabIndex        =   156
            Top             =   4875
            Width           =   525
         End
         Begin VB.Label Label47 
            AutoSize        =   -1  'True
            Caption         =   "OC Date"
            Height          =   195
            Left            =   3465
            TabIndex        =   155
            Top             =   4875
            Width           =   615
         End
         Begin VB.Label Label46 
            AutoSize        =   -1  'True
            Caption         =   "Line No."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   5520
            TabIndex        =   152
            Top             =   4500
            Width           =   600
         End
         Begin VB.Label Label45 
            Caption         =   "Plant Name"
            ForeColor       =   &H00FF0000&
            Height          =   285
            Left            =   195
            TabIndex        =   150
            Top             =   4515
            Width           =   1410
         End
         Begin VB.Label Label44 
            AutoSize        =   -1  'True
            Caption         =   "Lorry Out Date"
            Height          =   195
            Left            =   4320
            TabIndex        =   144
            Top             =   4170
            Width           =   1035
         End
         Begin VB.Label Label43 
            AutoSize        =   -1  'True
            Caption         =   "Lorry In Date"
            Height          =   195
            Left            =   180
            TabIndex        =   141
            Top             =   4170
            Width           =   915
         End
         Begin VB.Label Label42 
            AutoSize        =   -1  'True
            Caption         =   "Ginner "
            Height          =   195
            Left            =   180
            TabIndex        =   140
            Top             =   3105
            Width           =   510
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   165
            TabIndex        =   133
            Top             =   555
            Width           =   630
         End
         Begin VB.Label Label41 
            AutoSize        =   -1  'True
            Caption         =   "Material Inward Date"
            Height          =   195
            Left            =   3525
            TabIndex        =   129
            Top             =   2715
            Width           =   1470
         End
         Begin VB.Label Label39 
            AutoSize        =   -1  'True
            Caption         =   "Material Inward No."
            Height          =   195
            Left            =   180
            TabIndex        =   127
            Top             =   2715
            Width           =   1380
         End
         Begin VB.Label Label22 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Freight"
            Height          =   195
            Left            =   7200
            TabIndex        =   54
            Top             =   2370
            Width           =   600
         End
         Begin VB.Label Label36 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Nett Wt."
            ForeColor       =   &H000000FF&
            Height          =   225
            Left            =   8475
            TabIndex        =   115
            Top             =   6960
            Width           =   945
         End
         Begin VB.Label Label35 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Excess Moisture"
            ForeColor       =   &H000000FF&
            Height          =   225
            Left            =   6750
            TabIndex        =   113
            Top             =   6960
            Width           =   1305
         End
         Begin VB.Label Label34 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Tare Wt."
            ForeColor       =   &H000000FF&
            Height          =   225
            Left            =   5595
            TabIndex        =   111
            Top             =   6960
            Width           =   945
         End
         Begin VB.Label Label33 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Gross Wt."
            ForeColor       =   &H000000FF&
            Height          =   225
            Left            =   4230
            TabIndex        =   109
            Top             =   6960
            Width           =   1020
         End
         Begin VB.Label Label32 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Total"
            ForeColor       =   &H000000FF&
            Height          =   225
            Left            =   3420
            TabIndex        =   108
            Top             =   7290
            Width           =   480
         End
         Begin VB.Label lblcontract 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Ordered"
            ForeColor       =   &H00000000&
            Height          =   225
            Left            =   180
            TabIndex        =   72
            Top             =   915
            Width           =   1035
         End
         Begin VB.Label lblarrived 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Arrived"
            ForeColor       =   &H00000000&
            Height          =   225
            Left            =   2745
            TabIndex        =   71
            Top             =   930
            Width           =   765
         End
         Begin VB.Label lblbalance 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Balance"
            ForeColor       =   &H00000000&
            Height          =   225
            Left            =   7320
            TabIndex        =   70
            Top             =   915
            Width           =   900
         End
         Begin VB.Label Label94 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Cancelled"
            ForeColor       =   &H00000000&
            Height          =   225
            Left            =   4815
            TabIndex        =   69
            Top             =   930
            Width           =   795
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "L.R. No."
            Height          =   195
            Left            =   180
            TabIndex        =   62
            Top             =   3810
            Width           =   600
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Godown"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   4320
            TabIndex        =   61
            Top             =   3810
            Width           =   600
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Weighnment  by"
            Height          =   195
            Left            =   180
            TabIndex        =   60
            Top             =   2355
            Width           =   1155
         End
         Begin VB.Line Line6 
            BorderColor     =   &H00FFFFFF&
            X1              =   -15
            X2              =   9645
            Y1              =   5175
            Y2              =   5175
         End
         Begin VB.Line Line5 
            BorderColor     =   &H00808080&
            X1              =   15
            X2              =   9690
            Y1              =   5160
            Y2              =   5160
         End
         Begin VB.Line Line4 
            BorderColor     =   &H00FFFFFF&
            X1              =   15
            X2              =   9570
            Y1              =   3000
            Y2              =   3000
         End
         Begin VB.Line Line3 
            BorderColor     =   &H00808080&
            X1              =   120
            X2              =   9655
            Y1              =   3015
            Y2              =   3015
         End
         Begin VB.Line Line2 
            BorderColor     =   &H00FFFFFF&
            X1              =   30
            X2              =   9565
            Y1              =   1215
            Y2              =   1215
         End
         Begin VB.Line Line1 
            BorderColor     =   &H00808080&
            X1              =   0
            X2              =   9660
            Y1              =   1230
            Y2              =   1230
         End
         Begin VB.Label Label18 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Arrival Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   4845
            TabIndex        =   59
            Top             =   225
            Width           =   825
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Arrival No."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   180
            TabIndex        =   58
            Top             =   195
            Width           =   735
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   180
            TabIndex        =   57
            Top             =   1335
            Width           =   570
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Station"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   180
            TabIndex        =   56
            Top             =   2025
            Width           =   495
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Broker"
            Height          =   195
            Left            =   180
            TabIndex        =   55
            Top             =   1650
            Width           =   465
         End
         Begin VB.Label Label20 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Container No."
            Height          =   195
            Left            =   210
            TabIndex        =   53
            Top             =   3450
            Width           =   975
         End
         Begin VB.Label Label21 
            Caption         =   "Transporter Name"
            ForeColor       =   &H00FF0000&
            Height          =   420
            Left            =   4320
            TabIndex        =   52
            Top             =   3375
            Width           =   960
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   885
      TabIndex        =   35
      Top             =   1305
      Visible         =   0   'False
      Width           =   8865
      Begin KSLDESCOCX.Ksldesc Ksllist1 
         Height          =   3240
         Left            =   750
         TabIndex        =   63
         Top             =   840
         Width           =   7260
         _ExtentX        =   12806
         _ExtentY        =   5715
         ForeColor       =   -2147483635
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "Frm_IMRMIArrival.frx":5F30
         Height          =   615
         Left            =   3000
         Picture         =   "Frm_IMRMIArrival.frx":6316
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   4095
         Width           =   1185
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "Frm_IMRMIArrival.frx":66DC
         Height          =   615
         Left            =   4740
         Picture         =   "Frm_IMRMIArrival.frx":6ABE
         Style           =   1  'Graphical
         TabIndex        =   45
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
         TabIndex        =   44
         Top             =   120
         Width           =   8775
      End
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H80000004&
      ForeColor       =   &H80000009&
      Height          =   2430
      Left            =   990
      TabIndex        =   36
      Top             =   2340
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         DownPicture     =   "Frm_IMRMIArrival.frx":6E91
         Height          =   615
         Left            =   4020
         Picture         =   "Frm_IMRMIArrival.frx":7273
         Style           =   1  'Graphical
         TabIndex        =   48
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         DownPicture     =   "Frm_IMRMIArrival.frx":7646
         Height          =   615
         Left            =   2580
         Picture         =   "Frm_IMRMIArrival.frx":7A2C
         Style           =   1  'Graphical
         TabIndex        =   47
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3705
         MaxLength       =   6
         TabIndex        =   37
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
         TabIndex        =   39
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Arrival  No."
         Height          =   195
         Left            =   2565
         TabIndex        =   38
         Top             =   945
         Width           =   780
      End
   End
   Begin VB.Label Label40 
      AutoSize        =   -1  'True
      Caption         =   "Weighment"
      Height          =   195
      Left            =   0
      TabIndex        =   128
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
      TabIndex        =   64
      Top             =   720
      Width           =   3885
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Import Arrival"
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
      TabIndex        =   34
      Top             =   540
      Width           =   1845
   End
End
Attribute VB_Name = "Frm_IMRMIArrival"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
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
Dim QTY As Integer
Dim Sname As String
Dim sCode As String
Dim gCode As String
Dim sLorryNo As String
Dim sOrdNo As String
Dim gDivision As String
Dim iLenght, iString As String
Dim STATEFLAG, SuppType As String
Dim sDivCode As String
Dim StrAppQry As String
''For spread Grid Col position
Const IContno As Integer = 1
Const IContdt As Integer = 2
Const IVarcode As Integer = 3
Const IVarName As Integer = 4
Const Iplotno As Integer = 5
Const Iprno As Integer = 6
Const Ipressmarkno As Integer = 7
Const Iunit As Integer = 8
Const Imixcount As Integer = 9
Const Imixgrp As Integer = 10
'Const iGinner As Integer = 11
Const Icandyrate As Integer = 11
Const Ibalqty As Integer = 12
Const IFullTruckWt As Integer = 13
Const IEmptyTruckWt As Integer = 14
Const Igrosswt As Integer = 15
Const Itarewt As Integer = 16

' Is seperated for Season Debit Calsluation
Dim iTrashPer As Integer
Dim iMoitureper As Integer
Dim iMoiturewt As Integer
Dim iNetwt As Integer

'Const Inetwt As Integer = 19
Dim rssarrmod As Recordset

'====Freight amt fa posting=================================
    Dim iJVTc As Integer
    Dim sSLcode As String
    Dim sSLName As String
    Dim sGLCode As String
    Dim iVocno As Integer
    Dim iVocdt As String
'=======================================
  
'---------------------------------------------------------------------------------------
' Procedure : Command3_Click
' DateTime  : 07/12/2008 14:40
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------

'
'Private Sub Command3_Click()
'On Error GoTo Command3_Click_Error
'
'    Screen.MousePointer = 11
'    Dim lotdate As String
'   ' lotdate = Format(dcbdate.Text, "yyyy/mm/dd")
'
'    Dim address As String
'    Dim lotbale As Recordset
'    Dim add As Recordset
'    Dim brok As Recordset
'    Dim area As String
'    Dim page As Integer
'    page = 0
'    Set lotbale = New Recordset
'    lotbale.Open "select a.lotno,a.plotno,a.supcd,a.ratecy,a.quantity as bales,a.varcode,a.brkcd,a.plotno," & _
'                  "a.arrdate,a.freight,a.prno,a.contno,lorrynos,a.carcode,c.slname,d.carname,f.areaname," & _
'                  "e.varname,ISNULL(GCNO,0)AS GCNO from fa_slmas c,rm_arrival a,po_car d,rm_var e,rm_area f where  " & _
'                  " arrno='" & Val(Txtfields(0).Text) & "' and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-d") & "' and " & _
'                  " a.divcode='" & divcode & "'" & _
'                  " and a.supcd=c.slcode and a.carcode*=d.carcode and " & _
'                  " a.varcode*=e.varcode and a.areacode*=f.areacode", DB, adOpenDynamic, adLockBatchOptimistic
'    Set add = New Recordset
'        add.Open "SELECT DIVNAME,ADD1,ADD2,ADD3,CITY,PINCODE,PHONE1,FAX FROM PP_DIVMAS WHERE DIVCODE='" & divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
'        address = Trim(add!add1 & "") + Trim(add!add2 & "") + Trim(add!add3 & "") + Trim(add!CITY & "") + "-" + Trim(add!PINCODE & "") + " Ph:" + Trim(add!phone1 & "") + " Fax." + Trim(add!fax & "")
'
'     Set REP = New Report.ReportView
'        a = FreeFile
'        Close #a
'        Close
'        'Open "C:\CottonBaleReceipt.txt" For Output As #a
'         Open KALFOLDERDATA & "\CottonBaleReceipt.TXT" For Output As #a
'    If lotbale.RecordCount <= 0 Then
'        Screen.MousePointer = 0
'        MsgBox " No Records Found", vbInformation, "Cotton Bale Receipt"
'        Exit Sub
'    Else
'      lotbale.MoveFirst
'      Do While Not lotbale.EOF
'        If lotbale!areaname = " " Or lotbale!areaname = Null Then
'            area = Space(18)
'        Else
'            area = Padr(lotbale!areaname, 18, " ")
'        End If
'
'        Set brok = New Recordset
'        brok.Open "select slname from fa_slmas where slcode='" & lotbale!brkcd & "'", DB, adOpenDynamic, adLockBatchOptimistic
'        If brok.EOF = False Then
'            brokname = brok(0)
'        Else
'            brokname = ""
'        End If
'        Set GC = New Recordset
'        GC.Open "select GHEAD from RM_GINNING where Gcode='" & lotbale!GCNO & "'", DB, adOpenDynamic, adLockBatchOptimistic
'        If GC.RecordCount > 0 Then
'        GNAME = UCase(GC(0))
'        Else
'        GNAME = ""
'        End If
'        Print #a,
'        Print #a,
'        Print #a, Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27) + "F" + Chr(18)
'        Print #a, 'CENTRE(address, 85, " ")
'        Print #a,
'        Print #a, Chr(27) + "E" + CENTRE("Raw Material Bales Receipt - Acknowledgemant", 85, " ") + Chr(27) + "F"
'        Print #a,
'        Print #a, Space(5) + "Arrival No.     : " + Padr(Txtfields(0).Text, 18, " ") + Space(15) + "C.T.R Date: " + Padr(Format(lotbale!ArrDate, "DD/MM/YY"), 14, " ")
'        Print #a, Space(5) + "P.O. NO.        : " + Padr(lotbale!contno, 50, " ")
'        Print #a, Space(5) + "Supplier Name   : " + Padr(lotbale!Slname, 50, " ")
'        Print #a, Space(5) + "Rate \ Candy    : " + Padr(INF(lotbale!RATECY, 0), 18, " ") + Space(6) + "Supplier Lot no. : " + Padr(lotbale!PlotNo, 18, " ")
'        Print #a, Space(5) + "No. OF Bales    : " + Padr(lotbale!bales, 18, " ") + Space(6) + "Station          : " + area
'        Print #a, Space(5) + "Variety         : " + Padr(lotbale!VarName, 20, " ")
'        Print #a, Space(5) + "Bale Checked    : " + Space(18) + Space(15)
'        Print #a, Space(5) + "Broker          : " + Padr(brokname, 70, " ")
'        Print #a, Space(5) + "P.R. No         : " + Padr(lotbale!PRNO, 50, " ")
'        Print #a, Space(5) + "Transport       : " + Padr(lotbale!carname, 18, " ")
'        Print #a, Space(5) + "Lorry No.       : " + Padr(lotbale!LORRYNOS, 18, " ")
'        Print #a, Space(5) + "Lorry Frieght   : " + Padr(INF(lotbale!Freight, 2), 18, " ")
'        If lotbale!Freight > 0 Then
'            Print #a, Space(5) + "(Rs " + Padr(Num_To_Word(lotbale!Freight), 75, " ") + ")"
'        Else
'            Print #a, Space(5) + "(Rs " + Space(75) + ")"
'        End If
'        Print #a, Space(5) & String(80, "-")
'        Print #a,
'        Print #a,
'        Print #a,
'        Print #a,
'        Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
'        'Print #a, Space(8) + "COTTON CLERK" + Space(8) + "LORRY DRIVER" + Space(8) + "CASHIER" + Space(8) + "OAI"
'        If page = 0 Then
'            Print #a,
'            Print #a,
'            Print #a,
'            Print #a,
'            page = 1
'        ElseIf page = 1 Then
'            page = 0
'            Print #a, Chr(12)
'        End If
'    lotbale.MoveNext
'    Loop
'        Close #a
'        a = FreeFile
''        Open "c:\CottonBaleReceipt.bat" For Output As #a
''        Print #a, "cd\"
''        Print #a, "c:"
''        Print #a, "cd\"
''        Print #a, "type CottonBaleReceipt.txt>prn"
''        Close #a
''        Rep.txtfile = "c:\CottonBaleReceipt.txt"
''        Rep.Batfile = "c:\CottonBaleReceipt.bat"
'        Call KALBATPROCESS("CottonBaleReceipt")
'    End If
'    Screen.MousePointer = 0
'
'Exit Sub
'Command3_Click_Error:
'    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command3_Click of Form FrmArrival", vbInformation, head
'Screen.MousePointer = 0
'End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_KeyDown
' DateTime  : 07/12/2008 14:40
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------

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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If
If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Command3.Visible = False
      '  UserFooter1.Visible = False
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
intervalMinutes = -1
On Error GoTo BUTTON_Click_Error
gCode = ""
Select Case Index
Case 0
         
 If ToValidFinYear(Divcode) = False Then Exit Sub
    Set rsz = New Recordset
    rsz.Open "select max(arrdate) from rm_arrival where divcode='" & Divcode & "'", DB, adOpenStatic
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
    adoPrimaryRS.Open "select divcode,ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,lotno,lottype,lotdt,weignment,godown,LRNO,MOITURE,moisture_per,moisture_et,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE 1 = 2 and divcode = '" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
    
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Text4.Text = ""
    Text10.Text = ""
    Txtfields(22).Text = ""
    Txtfields(14).Text = ""
    sCode = ""
    Sname = ""
    Txtfields(2).Text = ""
    Txtfields(25).Text = ""
    Txtfields(11).Text = ""
    Txtfields(21).Text = ""
    Txtfields(26).Text = ""
    Txtfields(22).Text = ""
    Txtfields(27).Text = ""
    Txtfields(28).Text = ""
    Txtfields(89).Text = ""
    Txtfields(90).Text = ""
    Txtfields(95).Text = ""
    Txtfields(91).Text = ""
    Txtfields(23).Text = ""
    Txtfields(30).Text = ""
    Txtfields(35).Text = ""
    Txtfields(36).Text = ""
    Txtfields(37).Text = ""
    Txtfields(38).Text = ""
    Text7.Text = ""
    MaskEdBox1(3).Text = "__/__/____"
    MaskEdBox1(4).Text = "__/__/____"
    MaskEdBox1(5).Text = "__/__/____"
    MaskEdBox1(6).Text = "__/__/____"
    Call ENABLCONTLS
    Call bindcontls
    
'    Set rs = New Recordset
'    rs.Open "SELECT ISNULL(MAX(ARRNO),0)+1 FROM rm_arrival WHERE  ARRdAtE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", db, adOpenStatic
'    adoPrimaryRS.AddNew
'    If rs.RecordCount > 0 Then
'        txtFields(0).Text = rs(0)
'    Else
'        txtFields(0).Text = "1"
'    End If
    
    ''DB.BeginTrans
    Call SpreadAlign(0)
    Call adddelmod(BUTTON)
    'BUTTON(9).ToolTipText = "Add Record"
    Txtfields(0).Locked = True
    Txtfields(3).Locked = True
'    txtFields(4).Locked = True
    MaskEdBox1(0).Text = pdate
    
    StatusBar1.Panels(2).Text = "Select Purchase Order Number from the List"
    'txtfields(0).SetFocus
    Combo1.Locked = False
    Txtfields(0).Locked = True
    Txtfields(3).Locked = True
'    txtFields(4).Locked = True
    Txtfields(1).Locked = False
    Txtfields(2).Locked = False
    'DTPicker1.MinDate = yfdate
    Combo3.Text = "General"
    SSTab1.Enabled = True
    Txtfields(0).Locked = True
    MaskEdBox1(0).Enabled = False
    DTPicker1.Enabled = False
    Txtfields(2).Text = ""
    Txtfields(2).SetFocus
    
    'to generate separate lot no for waste
    
    
    Set Rs = New Recordset
    If globalarrivalorder = "C" Then
        Rs.Open "select DISTINCT CONTNO,CONTDT,isnull(Arrivaltype,'') from rm_cont a where ordqty >= isnull(recqty,0)  UNION select DISTINCT CONTNO,CONTDT,isnull(Arrivaltype,'') from rm_cont a where ordqty >= isnull(recqty,0) and PREFIX='C' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic, adLockBatchOptimistic
    Else
         Rs.Open "select DISTINCT CONTNO,CONTDT,isnull(Arrivaltype,'') from rm_cont a where ordqty >= isnull(recqty,0) and divcode='" & Divcode & "' UNION select DISTINCT CONTNO,CONTDT,isnull(Arrivaltype,'') from rm_cont a where ordqty >= isnull(recqty,0) and PREFIX='C'", DB, adOpenStatic, adLockBatchOptimistic
    End If
    
    If Rs.RecordCount = 0 Then
        MsgBox "No Pending Contract Details", vbInformation, head
        Call BUTTON_Click(10)
        Exit Sub
    Else
        LookUp.Clear = True
        LookUp.query = "select catcd""Category"",catname""Category Name"" from rm_cat"
        LookUp.Caption = "Category List"
        LookUp.DefCol = "Category Name"
        LookUp.ALIGN = "2000,3000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
          If globalarrivalorder = "C" Then
            If LookUp.Fields(0) <> "W" Then
                qry = "select DISTINCT slcode""Supplier Code"",Slname""Supplier""  from rm_cont a,fa_slmas b where ordqty>(isnull(recqty,0)+ISNULL(CANCELBALES,0)) and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')='' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
                Waste = "N"
            Else
                qry = "select DISTINCT slcode""Supplier Code"",Slname""Supplier""  from rm_cont a,fa_slmas b where ordqty>(isnull(recqty,0)+ISNULL(CANCELBALES,0))  and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')<>'' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION select DISTINCT slcode""SupplierCode"",Slname""Supplier""  from rm_cont a,fa_slmas b where  a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')='M' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))"
                Waste = "Y"
            End If
            Else
            If LookUp.Fields(0) <> "W" Then
                qry = "select DISTINCT slcode""Supplier Code"",Slname""Supplier""  from rm_cont a,fa_slmas b where ordqty>(isnull(recqty,0)+ISNULL(CANCELBALES,0)) and divcode='" & Divcode & "' and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')=''"
                Waste = "N"
            Else
                qry = "select DISTINCT slcode""Supplier Code"",Slname""Supplier""  from rm_cont a,fa_slmas b where ordqty>(isnull(recqty,0)+ISNULL(CANCELBALES,0)) and divcode='" & Divcode & "' and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')<>'' UNION select DISTINCT slcode""SupplierCode"",Slname""Supplier""  from rm_cont a,fa_slmas b where divcode='" & Divcode & "' and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')='M'"
                Waste = "Y"
            End If
         End If
            Txtfields(29).Text = LookUp.Fields(0)
            Set rsc = New Recordset
            rsc.Open "SELECT * FROM RM_CAT WHERE CATCD='" & LookUp.Fields(0) & "'", DB, adOpenStatic
            If rsc.RecordCount > 0 Then
                Text9.Text = rsc("CATNAME")
            End If
        End If
    End If
    'end for separate lot no for waste
    Call Unbindcontls
Case 1
If ToValidFinYear(Divcode) = False Then Exit Sub
        'Modification
    Set rsz = New Recordset
    rsz.Open "select max(arrdate) from rm_arrival where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter valid Processing Date...!!!", vbInformation, head
                Exit Sub
            End If
        End If
    End If

    
    
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_arrival where divcode='" & Divcode & "' and isnull(lotrecqty,0)=0", DB
        
    Txtfields(25).Text = ""
    Txtfields(26).Text = ""
    Txtfields(27).Text = ""
    Txtfields(28).Text = ""
    Txtfields(89).Text = ""
    Txtfields(90).Text = ""
    Txtfields(95).Text = ""
    Txtfields(91).Text = ""
    If Not Rs(0) = 0 Then
        Opt = "mod"
        desc.Caption = "Modification"
        Label15.Caption = "Arrival Details"
        StatusBar1.Panels(2).Text = "Select a Arrival Number from the List for modification"
        
        LookUp.Clear = True
        'LookUp.Query = "select distinct arrno""ArrivalNumber"",arrdate""Date"",slname""Supplier"" from rm_arrival a,fa_slmas b,rm_var c where a.varcode=c.varcode and a.supcd=b.slcode and isnull(lotrecqty,0)=0 and divcode='" & Divcode & "'"
        
        LookUp.query = "select distinct arrno""Arrival Number"",arrdate""Arrival Date"",slname""Supplier Name"" from rm_arrival a,fa_slmas b,rm_var c where a.varcode=c.varcode and a.supcd=b.slcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and OcNo is not null"
        LookUp.DefCol = "Supplier"
        LookUp.Caption = "Arrival Listing"
        LookUp.ALIGN = "1500,1500,4000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
               
               Set adoPrimaryRS = New Recordset
               ''adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,MOITURE FROM RM_ARRIVAL WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
               
               'adoPrimaryRS.Open "select distinct ARRNO, catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime FROM RM_ARRIVAL WHERE  ARRNO='" & Lookup.Fields(0) & "' AND ARRDATE='" & Format(Lookup.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' and arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", db, adOpenStatic, adLockBatchOptimistic
               '13/08/12
               adoPrimaryRS.Open "select distinct ARRNO, catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime ,Line_No,PlCode ,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
               
               
               If adoPrimaryRS.RecordCount <> 0 Then
                   Set adoPrimaryRS = New Recordset
                   ''adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,MOITURE FROM RM_ARRIVAL WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (lotno is  null or lotdt is  null or catcd is  null ) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
                   
                   'adoPrimaryRS.Open "select distinct ARRNO, catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime FROM RM_ARRIVAL WHERE  ARRNO='" & Lookup.Fields(0) & "' AND ARRDATE='" & Format(Lookup.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' and arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", db, adOpenStatic, adLockOptimistic
                   
                   '13/08/12
                   adoPrimaryRS.Open "select distinct ARRNO, catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
                   
                   
                   Set rssarrmod = New Recordset
                   'rssarrmod.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,MOITURE,weignment FROM RM_ARRIVAL WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (lotno is  null or lotdt is  null or catcd is  null ) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
                   rssarrmod.Open "select ARRNO,catcd,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,MOITURE,weignment,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,Trashper,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,PlCode,Line_No,Globaldiv,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
               
                   If adoPrimaryRS.RecordCount = 0 Then
                       MsgBox "Lot/Bale Details Entered for this arrival. Hence Modification Not allowed!", vbInformation, head
                       Set adoPrimaryRS = New Recordset
                       'adoPrimaryRS.Open "select distinct ARRNO, catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime FROM RM_ARRIVAL WHERE  arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", db, adOpenStatic, adLockBatchOptimistic
                       '13/08/12
                       adoPrimaryRS.Open "select distinct ARRNO, catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,Globaldiv,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE  arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
                       
                       Exit Sub
                   End If
               Else
                   MsgBox "Inspection completed for this arrival. Hence Modification not allowed!", vbInformation, head
                   Set adoPrimaryRS = New Recordset
                   'adoPrimaryRS.Open "select distinct ARRNO,catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime FROM RM_ARRIVAL WHERE  arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", db, adOpenStatic, adLockBatchOptimistic
                   '13/08/12
                   adoPrimaryRS.Open "select distinct ARRNO,catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime ,Line_No,PlCode,Globaldiv,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE  arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
                   
                   Exit Sub
               End If
               Call ArrivalDisplay
               Call bindcontls
               Call ENABLCONTLS
               
               If Not adoPrimaryRS.EOF Then
                    Txtfields(2).Text = adoPrimaryRS!SUPCD
                    Txtfields(11).Text = adoPrimaryRS!LORRYNOS
                    Txtfields(21).Text = adoPrimaryRS!Lrno
                    Txtfields(22).Text = adoPrimaryRS!Godown
                    Txtfields(14).Text = adoPrimaryRS!Freight
               End If
               
               Dim iIndex As Integer
               For iIndex = 0 To 25 Step 1
                  Call txtFields_Change(iIndex)
               Next
               
               If Opt = "del" Then
                 Call disablcontls
               End If
            For I = 0 To 6
                Txtfields(I).Locked = True
            Next
            Text4.Locked = True
            Txtfields(19).Locked = True
            'txtfields(13).SetFocus
            Txtfields(0).Locked = True
            Txtfields(3).Locked = True
            Txtfields(4).Locked = True
            Txtfields(15).Locked = True
            Txtfields(16).Locked = True
            Txtfields(17).Locked = True
            Txtfields(18).Locked = True
            Txtfields(24).Locked = True
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = True
            'BUTTON(9).ToolTipText = "Modify"
            Call disablcontls
            Txtfields(13).Locked = False
            Txtfields(3).Locked = True
            Txtfields(4).Locked = True
            Txtfields(0).Locked = True
            Txtfields(30).Locked = False
            Txtfields(14).Locked = False
            Combo1.Locked = True
            SSTab1.Enabled = True
''            Set rsg = New Recordset
''            rsg.Open "select rateunit,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)),isnull(cancelbales,0) as cancelbales,ordqty,recqty from rm_cont where contno=" & adoPrimaryRS("contno") & "  and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
''            If rsg.RecordCount > 0 Then
''                Label31.Caption = rsg("rateunit")
''                Txtfields(89).Text = CStr(IIf(IsNull(rsg("ordqty")) = True, 0, rsg("ordqty")))
''                Txtfields(90).Text = CStr(IIf(IsNull(rsg("RECQTY")) = True, 0, rsg("RECQTY")))
''                Txtfields(91).Text = CStr(val(rsg(1)))
''                Txtfields(95).Text = CStr(rsg("cancelbales"))
''            End If
            
            FreightAmtPosting "mod", "mod"
            
        Else
            Call BUTTON_Click(10)
        End If
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 2
        'Deletion
        If ToValidFinYear(Divcode) = False Then Exit Sub
        Set rsz = New Recordset
        rsz.Open "select max(arrdate) from rm_arrival where divcode='" & Divcode & "'", DB, adOpenStatic
        
        If rsz.RecordCount > 0 Then
            If IsDate(rsz(0)) = True Then
                If rsz(0) > pdate Then
                    MsgBox "Please enter valid Processing Date...!!!", vbInformation, head
                    Exit Sub
                End If
            End If
        End If

      Call DelFunction
Case 3
        'Query
        If Record_Exists("rm_arrival") = False Then Exit Sub
        Dim f As New repform
        Screen.MousePointer = 11
       Set Cnn = New Connection
       
        Cnn.Provider = "MSDATASHAPE"
        Cnn.Open connectstring

    Set ResultRs = New Recordset
    ResultRs.Open "SHAPE {select a.brkcd,arrdate as recdate,a.supcd,slname,areaname,a.lorrynos,a.Quantity,a.atlno,a.plotno,a.varcode,a.arrno,a.arrdate,a.lotno  from rm_arrival a,rm_area b,fa_slmas c,rm_lot d where a.lotno*=d.lotno and a.arrno*=d.arrno and a.bbflag*=d.bblflg and a.catcd*=d.catcd  and a.supcd=c.slcode  and a.areacode*=b.areacode and a.divcode='" & Divcode & "' and arrdate BETWEEN  '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'}  AS Command2 COMPUTE Command2 BY 'arrdate','recdate'", Cnn, adOpenStatic, adLockBatchOptimistic
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set Rs = New Recordset
    Rs.Open "select DISTINCT a.arrdate  from rm_arrival a,rm_area b,fa_slmas c,rm_lot d where a.lotno*=d.lotno and a.arrno*=d.arrno and a.bbflag*=d.bblflg and a.catcd*=d.catcd  and a.supcd=c.slcode  and a.areacode*=b.areacode and a.divcode='" & Divcode & "' and arrdate BETWEEN  '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by a.arrdate ", Cnn, adOpenStatic, adLockBatchOptimistic
    
    Set rptv = New Report.ReportView
    z = FreeFile
    Close
    'Open "C:\arre.TXT" For Output As #z
     Open KALFOLDERDATA & "\arre.TXT" For Output As #z

    pg1 = 1
    co = 0
    'Print #z, Chr(15)
     'z = FreeFile
    Call arrregHeader(pg1, co, CStr(s), CStr(a), CStr(b))
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
            rs1.Open "select distinct a.brkcd,arrdate as recdate,a.supcd,slname,areaname,a.lorrynos,a.Quantity,a.atlno,a.plotno,a.varcode,a.arrno,a.arrdate,case when upper(a.bbflag) = 'B' then 'Bale' else 'Bora' end as Unit,a.lotno,round(a.RATECY,0) as ratecy,round(a.GROSSWT,2) as grosswt,round(a.NETWT,2) as netwt from rm_arrival a,rm_area b,fa_slmas c,rm_lot d where a.lotno*=d.lotno and a.arrno*=d.arrno and a.bbflag*=d.bblflg and a.catcd*=d.catcd  and a.supcd=c.slcode  and a.areacode*=b.areacode and a.divcode='" & Divcode & "' and arrdate = '" & Format(Rs("ARRDATE"), "yyyy-mm-dd") & "' order by a.arrno,a.arrdate", Cnn, adOpenStatic, adLockBatchOptimistic
            rs1.MoveFirst
            Do While Not rs1.EOF
             
                If co > PageLen Then
                    Print #z, Space(5) & String(145, "-")
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call arrregHeader(pg1, co, CStr(s), CStr(a), CStr(b))
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
                    Call arrregHeader(pg1, co, CStr(s), CStr(a), CStr(b))
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
                    Call arrregHeader(pg1, co, CStr(s), CStr(a), CStr(b))
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
                    Call arrregHeader(pg1, co, CStr(s), CStr(a), CStr(b))
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
'Open "c:\arre.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type arre.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\arre.TXT"
'RPTV.Batfile = "c:\arre.bat"
Call KALBATPROCESS("arre")
Screen.MousePointer = 0

Case 4

        Opt = "fnd"
        desc.Caption = "Find"
        Label15.Caption = "Arrival Details"
        StatusBar1.Panels(2).Text = "Select a Arrival Number from the List for Find"
        
        LookUp.Clear = True
        LookUp.query = "select distinct arrno""ArrivalNumber"",arrdate""Date"",slname""Supplier"",contno""PurchaseOrderNo."",plotno ""SupplierLotNo."" from rm_arrival a,fa_slmas b,rm_var c where a.varcode=c.varcode and a.supcd=b.slcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'"
        LookUp.DefCol = "Supplier"
        LookUp.Caption = "Arrival Listing"
        LookUp.ALIGN = "1500,1500,4000,1600,1600"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
          '  Set adoPrimaryRS = New Recordset
            
           ' adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime FROM RM_ARRIVAL WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
            
            Set adoPrimaryRS = New Recordset
            
            adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,isnull(gincode,'') gincode,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
            
            
            If adoPrimaryRS.RecordCount > 0 Then
                Set rssarrmod = New Recordset
                rssarrmod.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,MOITURE,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,Trashper,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'   and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
                 Call ArrivalDisplay
                Call ENABLCONTLS
                Call bindcontls
                If Opt = "del" Then
                  Call disablcontls
                End If
                For I = 0 To 6
                    Txtfields(I).Locked = True
                Next
                Text4.Locked = True
                Txtfields(19).Locked = True
                'txtfields(13).SetFocus
                Txtfields(0).Locked = True
                Txtfields(3).Locked = True
                Txtfields(4).Locked = True
                Txtfields(15).Locked = True
                Txtfields(16).Locked = True
                Txtfields(17).Locked = True
                Txtfields(18).Locked = True
                Txtfields(24).Locked = True
                BUTTON(10).Enabled = True
                Call disablcontls
                Txtfields(13).Locked = False
                
                Txtfields(0).Locked = True
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
        Call navi(BUTTON)
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
        Call navi(BUTTON)
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
        Call navi(BUTTON)
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
        Call navi(BUTTON)
        Call las(BUTTON)
        Beep
        Exit Sub

GoLastError:
        MsgBox Err.Description, vbInformation, head

Case 9
        'Save
    If Opt = "add" Or Opt = "mod" Then
        
        For lr = 1 To spdVar.MaxRows
            a = Ibalqty
            If val(GetText(spdVar, a, lr)) = 0 Then
                MsgBox "Please enter Quantity", vbInformation, head
                Exit Sub
            End If
            b = Igrosswt
            If val(GetText(spdVar, b, lr)) = 0 Then
                MsgBox "Please enter Gross Weight", vbInformation, head
                spdVar.Col = b
                spdVar.SetFocus
                Exit Sub
            End If
        Next
        If Trim(Txtfields(9).Text) = "" Then
            MsgBox "Please Enter Carrier", vbInformation, head
            Txtfields(9).SetFocus
            Exit Sub
        End If
        If Trim(Txtfields(4).Text) = "" Then
            MsgBox "Please enter Area Code", vbInformation, head
            Txtfields(4).SetFocus
            Exit Sub
        End If
    End If
'    testr = Txtfields(22).Text
    
'    Dim rsm As New ADODB.Recordset
'    Dim iMaxNo As Integer
'    Set rsm = New Recordset
'
'    rsm.Open "SELECT ISNULL(MAX(ARRNO),0)+1 FROM rm_arrival WHERE  ARRdAtE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", db, adOpenStatic
'    adoPrimaryRS.AddNew
'    If rs.RecordCount > 0 Then
'        Txtfields(0).Text = rs(0)
'    Else
'        Txtfields(0).Text = "1"
'    End If
    
    
   ' db.CommitTrans
    
    DB.BeginTrans
    
    
    If Opt = "add" Then
        Txtfields(0).Text = MaxNo
        Set rsarrival = New Recordset
        rsarrival.Open "select divcode,ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK," & _
                    " CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG," & _
                    " ARRDATE,CONTDT,PLOTDT,lotno,lottype,lotdt,weignment,godown,LRNO,MOITURE,moisture_per," & _
                    " moisture_et,catcd,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,trashper,GinCode,CarJV_TC," & _
                    " CarJV_VocNo,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,Globaldiv,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE 1 = 2 and divcode = '" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
        
        For lr = 1 To spdVar.MaxRows
            
            rsarrival.AddNew
            rsarrival("ARRNO") = MaxNo
            rsarrival("arrdate") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            rsarrival("supcd") = Trim(Txtfields(2).Text)
            rsarrival("brkcd") = Txtfields(3).Text
            rsarrival("godown") = Trim(Txtfields(22).Text)
            rsarrival("areacode") = Trim(Txtfields(4).Text)
            rsarrival("Lorrynos") = Trim(Txtfields(11).Text)
            rsarrival("freight") = val(Txtfields(14).Text)
            rsarrival("weignment") = Trim(Txtfields(13).Text)
            
            
            rsarrival("cpyno") = val(Txtfields(36).Text)
            rsarrival("cpysno") = val(Txtfields(37).Text)
            rsarrival("ocno") = Trim(Txtfields(35).Text)
            If MaskEdBox1(4).Text <> "__/__/____" And MaskEdBox1(4).Text <> "" Then
                rsarrival("Ocdate") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            End If
               If MaskEdBox1(5).Text <> "__/__/____" And MaskEdBox1(5).Text <> "" Then
                rsarrival("cpydate") = Format(MaskEdBox1(5).Text, "yyyy-mm-dd")
            End If
            
            rsarrival("OcDocNo") = val(Txtfields(38).Text)
            If MaskEdBox1(6).Text <> "__/__/____" And MaskEdBox1(6).Text <> "" Then
                rsarrival("OcDocdate") = Format(MaskEdBox1(6).Text, "yyyy-mm-dd")
            End If
            
            DB.Execute "update  IM_RECCOPYdt1 set recflg ='Y' where divcode='" & Divcode & "' and docno='" & val(Txtfields(36).Text) & "' and docdt='" & Format(MaskEdBox1(5).Text, "yyyy-mm-dd") & "' and docsno='" & val(Txtfields(37).Text) & "' and itemcode='" & GetText(spdVar, 3, lr) & "'"
            
            If Txtfields(30).Text <> "" Then
            rsarrival("inwardno") = val(Txtfields(30).Text)
            End If
            If MaskEdBox1(3).Text <> "__/__/____" And MaskEdBox1(3).Text <> "" Then
                rsarrival("inwarddate") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
            End If
            'rsarrival("catcd") = Trim(txtfields(29).Text)
            
            Set rsVar = New Recordset
            rsVar.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & GetText(spdVar, 3, lr) & "'", DB, adOpenStatic
            If rsVar.RecordCount > 0 Then
                rsarrival("CATCD") = rsVar("CATCD")
            End If
            a = IContno
            rsarrival("contno") = GetText(spdVar, a, lr)
            a = IContdt
            rsarrival("contdt") = Format(GetText(spdVar, a, lr), "yyyy-mm-dd")
            rsarrival("lotno") = Null
            rsarrival("lotdt") = Null
            rsarrival("lottype") = "a"
            rsarrival("CARCODE") = CStr(Txtfields(9).Text)
            
            rsarrival("plotdt") = Null
            a = Iunit
            If GetText(spdVar, a, lr) = "Bale" Then
                rsarrival("bbflag") = "B"
            ElseIf GetText(spdVar, a, lr) = "Borah" Then
                rsarrival("bbflag") = "R"
            Else
                rsarrival("bbflag") = "H"
            End If
            
            rsarrival("divcode") = Divcode
            a = IVarcode
            rsarrival("varcode") = GetText(spdVar, a, lr)
            rsarrival("LRNO") = IIf(Txtfields(21).Text = "", 0, Txtfields(21).Text)
            rsarrival("GCNO") = IIf(Txtfields(10).Text = "", 0, Txtfields(10).Text)
            
            
            rsarrival("PlCode") = Trim(Txtfields(33).Text)
            rsarrival("Line_No") = Trim(Txtfields(34).Text)
            
            rsarrival("LR_InDt") = Format(dtpLorryinDt.value, "yyyy-MM-dd")
            rsarrival("LR_InTime") = Format(dtpLorryinTime.value, "yyyy-MM-dd hh:mm:ss")
            rsarrival("LR_OutDt") = Format(dtpLorryOutDt.value, "yyyy-MM-dd")
            rsarrival("LR_OutTime") = Format(dtpLorryOutTime.value, "yyyy-MM-dd hh:mm:ss")
            
            a = iGinner
            rsarrival("Gincode") = Trim(Txtfields(32).Text)
            
            a = iMoiturewt
            rsarrival("moiture") = GetText(spdVar, a, lr)
            
            a = Iplotno
            rsarrival("plotno") = GetText(spdVar, a, lr)
            
            a = Iprno
            rsarrival("prno") = GetText(spdVar, a, lr)
            
            a = Ipressmarkno
            rsarrival("prmark") = GetText(spdVar, a, lr)
            
            rsarrival("Globaldiv") = gDivision
            Set RsH = New Recordset
            If globalarrivalorder = "C" Then
                RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            Else
                RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic
            End If
            ARRIVALTYPE = "P"
            If RsH.RecordCount > 0 Then
                ARRIVALTYPE = RsH(0)
            End If
            
            a = Ibalqty
            
            
            rsarrival("quantity") = GetText(spdVar, a, lr)
            
            If ARRIVALTYPE = "P" Then
                If globalarrivalorder = "C" Then
                    DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0)+" & GetText(spdVar, a, lr) & "  where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))  ")
                Else
                    DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0)+" & GetText(spdVar, a, lr) & "  where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'")
                End If
            End If
                        
            a = Imixcount
            rsarrival("cntcode") = GetText(spdVar, a, lr)
            
            a = IFullTruckWt
            rsarrival("FullTruckWgt") = val(GetText(spdVar, a, lr))
            
            a = IEmptyTruckWt
            rsarrival("EmptyTruckWgt") = val(GetText(spdVar, a, lr))
            
            a = Igrosswt
            rsarrival("Grosswt") = val(GetText(spdVar, a, lr))
                   
'            If ARRIVALTYPE = "K" Then
'                DB.Execute ("update rm_cont set RCDKGS=ISNULL(RCDKGS,0)+" & GetText(spdVar, a, LR) & "  where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'")
'            End If
            
            a = Itarewt
            rsarrival("tarewt") = val(GetText(spdVar, a, lr))
            
            a = iTrashPer
            rsarrival("Trashper") = val(GetText(spdVar, a, lr))
            
            a = iMoitureper
            rsarrival("moisture_per") = val(GetText(spdVar, a, lr))
            
            a = iMoiturewt
            rsarrival("moisture_et") = val(GetText(spdVar, a, lr))
            
            a = iNetwt
            rsarrival("netwt") = val(GetText(spdVar, a, lr))
            If ARRIVALTYPE = "K" Then
                If globalarrivalorder = "C" Then
                    DB.Execute ("update rm_cont set RCDKGS=ISNULL(RCDKGS,0)+" & GetText(spdVar, a, lr) & "  where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and supcd='" & rsarrival("supcd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ")
                Else
                    DB.Execute ("update rm_cont set RCDKGS=ISNULL(RCDKGS,0)+" & GetText(spdVar, a, lr) & "  where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'")
                End If
            End If
            a = Icandyrate
            rsarrival("ratecy") = val(GetText(spdVar, a, lr))
            
            
            

        Next
        Call SaveLog
        
''            Set rs = New Recordset
''            rs.Open "select isnull(recqty,0) from rm_cont where contno='" & Txtfields(1).Text & "' and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB
''            DB.Execute ("update rm_cont set supcd='" & Txtfields(2).Text & "' ,varcode='" & Txtfields(5).Text & "',recqty =" & rs(0) & " + " & val(Txtfields(15).Text) & " where contno='" & Txtfields(1).Text & "' and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")
            Txtfields(0).Text = MaxNo
           rsarrival.UpdateBatch adAffectAllChapters
           '' adoPrimaryRS.UpdateBatch adAffectAllChapters
           
            If MaskEdBox1(3).Text <> "__/__/____" And MaskEdBox1(3).Text <> "" Then
               DB.Execute "Update io_materialInward set po_flg ='Y' where divcode='" & Divcode & "' and sno=" & val(Txtfields(30).Text) & " and date1 = '" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "'"
            End If
          
       

           Set Rs = New Recordset
           Dim strNo As String
'           Dim i As Integer
           strNo = ""
            If spdVar.MaxRows = 1 Then
                strNo = GetText(spdVar, 1, 1)
            Else
                For I = 1 To spdVar.MaxRows Step 1
                    strNo = strNo + ", " + GetText(spdVar, 1, I)
                Next
                strNo = Mid(strNo, 2)
            End If
            
            Rs.Open "UPDATE rm_arrival set ReceivedNo = '" & Trim(strNo) & "' where ARRno=" & val(Txtfields(0).Text) & " and Arrdate ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and supcd ='" & Trim(Txtfields(2).Text) & "'", DB, adOpenStatic
           
            
            For I = 1 To spdVar.MaxRows Step 1
                Set Rs = New Recordset
                Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                If globalarrivalorder = "C" Then
                     If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'Y' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " AND  CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'Y' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'  and (DIVCODE='" & Divcode & "' or contno in ((select contno from rm_cont where DIVCODE='" & globalimportpo & "' and im_ind='I' and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' ))) "
                    End If
                Else
                    If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'Y' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " AND  CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'Y' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
                    End If
                End If
            Next
            
            Dim n As Integer
            Dim iLOT As Integer
            Dim STRlOT As String
            STRlOT = "0"
            iLOT = 0
            
            For I = 1 To spdVar.MaxRows Step 1
                Set Rs = New Recordset
                Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
            If globalarrivalorder = "C" Then
                If Rs(0) = "Y" Then
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
               Else
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and  (DIVCODE='" & Divcode & "' or contno in ((select contno from RM_CONT where cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and DIVCODE='" & globalimportpo & "' and im_ind='I')))   ", DB, adOpenStatic
               End If
            Else
               If Rs(0) = "Y" Then
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
               Else
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and DIVCODE = '" & Divcode & "'", DB, adOpenStatic
               End If
           End If
               If Rs.EOF = False Then
               
               If Rs.RecordCount > 1 Then
               Do While Not Rs.EOF
                   iLOT = Rs!sLotno
                   If Rs!recflg <> "Y" Then STRlOT = STRlOT & "," & iLOT
                   iLOT = iLOT + 1
                   Rs.MoveNext
               Loop
                    
                    Set Rs = New Recordset
                    Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                    If globalarrivalorder = "C" Then
                        If Rs(0) = "Y" Then
                            Set Rs = New Recordset
                            Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
                        Else
                            Set Rs = New Recordset
                            Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and  (DIVCODE='" & Divcode & "' or contno in ((select contno from RM_CONT where cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and DIVCODE='02' and im_ind='I')))  ", DB, adOpenStatic
                        End If
                    Else
                        If Rs(0) = "Y" Then
                            Set Rs = New Recordset
                            Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
                        Else
                            Set Rs = New Recordset
                            Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and DIVCODE = '" & Divcode & "'", DB, adOpenStatic
                        End If
                    End If
             If globalarrivalorder = "C" Then
                If Rs.EOF = False Then
                       
                        s = Right(STRlOT, Len(STRlOT) - 1)
    '                    if Right(STRlOT, Len(STRlOT) - 1)
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
                            DB.Execute strSQL
                        End If

                   Else
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'  and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
                            DB.Execute strSQL
                        End If
                    End If
             Else
                   If Rs.EOF = False Then
                        s = Right(STRlOT, Len(STRlOT) - 1)
    '                    if Right(STRlOT, Len(STRlOT) - 1)
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND dIVCODE ='" & Divcode & "'"
                            DB.Execute strSQL
                        End If
                   
                   Else
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND dIVCODE ='" & Divcode & "'"
                            DB.Execute strSQL
                        End If
                    End If
               End If
               Else
                    If globalarrivalorder = "C" Then
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' "
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
                            DB.Execute strSQL
                        End If
                    Else
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND dIVCODE ='" & Divcode & "'"
                            DB.Execute strSQL
                        End If
                    End If
               End If
               End If
            
            Next
            
            DB.CommitTrans
            
            Call FreightAmtPosting("add")
            
            MsgBox "Arrival Saved!. Arrival No. is " & (Txtfields(0).Text), vbInformation, head
            'MsgBox "Arrival No. is " & (MaxNo - 1), vbInformation, head
            Label30.Visible = False
            SSTab1.Enabled = False
            Screen.MousePointer = 0
            Opt = ""
        End If
    
    If Opt = "mod" Then

        For lr = 1 To spdVar.MaxRows

            rssarrmod("ARRNO") = Txtfields(0).Text
            rssarrmod("arrdate") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            rssarrmod("supcd") = Trim(Txtfields(2).Text)
            rssarrmod("brkcd") = Txtfields(3).Text
            rssarrmod("godown") = Trim(Txtfields(22).Text)
            rssarrmod("areacode") = Trim(Txtfields(4).Text)
            rssarrmod("Lorrynos") = Txtfields(11).Text
            rssarrmod("freight") = val(Txtfields(14).Text)
            rssarrmod("weignment") = Trim(Txtfields(13).Text)
            rssarrmod("cpyno") = val(Txtfields(36).Text)
            rssarrmod("cpysno") = val(Txtfields(37).Text)
            rssarrmod("ocno") = Trim(Txtfields(35).Text)
            If MaskEdBox1(4).Text <> "__/__/____" And MaskEdBox1(4).Text <> "" Then
                rssarrmod("Ocdate") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            End If
            If MaskEdBox1(5).Text <> "__/__/____" And MaskEdBox1(5).Text <> "" Then
                rssarrmod("cpydate") = Format(MaskEdBox1(5).Text, "yyyy-mm-dd")
            End If
                rssarrmod("OcDocNo") = val(Txtfields(38).Text)
            If MaskEdBox1(6).Text <> "__/__/____" And MaskEdBox1(6).Text <> "" Then
                rssarrmod("OcDocdate") = Format(MaskEdBox1(6).Text, "yyyy-mm-dd")
            End If
            
            
            
            If Txtfields(30).Text <> "" Then
            rssarrmod("inwardno") = Trim(Txtfields(30).Text)
            End If
            If MaskEdBox1(3).Text <> "__/__/____" And MaskEdBox1(3).Text <> "" Then
                rssarrmod("inwarddate") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
            End If
            a = IContno
            rssarrmod("contno") = GetText(spdVar, a, lr)
            a = IContdt
            rssarrmod("contdt") = Format(GetText(spdVar, a, lr), "yyyy-mm-dd")
           ' rssarrmod("lotno") = Null
           ' rssarrmod("lotdt") = Null
            'rssarrmod("lottype") = "a"
            
            rssarrmod("PlCode") = Trim(Txtfields(33).Text)
            rssarrmod("Line_No") = Trim(Txtfields(34).Text)
            rssarrmod("Globaldiv") = gDivision
            rssarrmod("LR_InDt") = Format(dtpLorryinDt.value, "yyyy-MM-dd")
            rssarrmod("LR_InTime") = Format(dtpLorryinTime.value, "yyyy-MM-dd hh:mm:ss")
            rssarrmod("LR_OutDt") = Format(dtpLorryOutDt.value, "yyyy-MM-dd")
            rssarrmod("LR_OutTime") = Format(dtpLorryOutTime.value, "yyyy-MM-dd hh:mm:ss")
            
            rssarrmod("plotdt") = Null
            a = Iunit
            If GetText(spdVar, a, lr) = "Bale" Then
                rssarrmod("bbflag") = "B"
            ElseIf GetText(spdVar, a, lr) = "Borah" Then
                rssarrmod("bbflag") = "R"
            Else
                rssarrmod("bbflag") = "H"
            End If
            rssarrmod("CARCODE") = CStr(Txtfields(9).Text)
           '' rssarrmod("divcode") = Divcode
            a = IVarcode
            rssarrmod("varcode") = GetText(spdVar, a, lr)
            
            rssarrmod("LRNO") = IIf(Txtfields(21).Text = "", 0, Txtfields(21).Text)
            rssarrmod("GCNO") = IIf(Txtfields(10).Text = "", 0, Txtfields(10).Text)
            a = iMoiturewt
            rssarrmod("moiture") = GetText(spdVar, a, lr)
            
            a = Iplotno
            rssarrmod("plotno") = GetText(spdVar, a, lr)
            
            a = Iprno
            rssarrmod("prno") = GetText(spdVar, a, lr)
            
            a = Ipressmarkno
            rssarrmod("prmark") = GetText(spdVar, a, lr)
            
            a = Ibalqty
            rssarrmod("quantity") = GetText(spdVar, a, lr)
            
            Set rst = New Recordset
            rst.Open "select quantity,GROSSWT from rm_arrival where supcd='" & Txtfields(2).Text & "' and varcode='" & rssarrmod("varcode") & "' and arrno=" & adoPrimaryRS("arrno") & " and arrdate='" & Format(adoPrimaryRS("arrdate"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic
            
            Set RsH = New Recordset
            If globalarrivalorder = "C" Then
                RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
            Else
                RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic
            End If
            
            ARRIVALTYPE = "P"
            If RsH.RecordCount > 0 Then
                ARRIVALTYPE = RsH(0)
            End If
            If globalarrivalorder = "C" Then
                If ARRIVALTYPE = "P" Then
                    If Not rst.EOF Then DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0)+" & val(GetText(spdVar, a, lr)) - val(rst("quantity")) & " where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))")
                End If
            Else
                If ARRIVALTYPE = "P" Then
                   If Not rst.EOF Then DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0)+" & val(GetText(spdVar, a, lr)) - val(rst("quantity")) & " where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'")
                End If
            End If
            a = Imixcount
            rssarrmod("cntcode") = GetText(spdVar, a, lr)
            
            a = Igrosswt
            rssarrmod("Grosswt") = val(GetText(spdVar, a, lr))
            
           
            
            
            a = Itarewt
            rssarrmod("tarewt") = val(GetText(spdVar, a, lr))
            
            a = iTrashPer
            rssarrmod("Trashper") = val(GetText(spdVar, a, lr))
          
            
            a = iNetwt
            rssarrmod("netwt") = val(GetText(spdVar, a, lr))
            If globalarrivalorder = "C" Then
                If ARRIVALTYPE = "K" Then
                    DB.Execute ("update rm_cont set RCDKGS =ISNULL(rcDKGS,0)+" & GetText(spdVar, a, lr) - rssarrmod("netwt") & " where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ")
                End If
            Else
                If ARRIVALTYPE = "K" Then
                   DB.Execute ("update rm_cont set RCDKGS =ISNULL(rcDKGS,0)+" & GetText(spdVar, a, lr) - rssarrmod("netwt") & " where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")
                End If
            End If
            a = Icandyrate
            rssarrmod("ratecy") = val(GetText(spdVar, a, lr))
            
             Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
           ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Arrival(IM)"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss.m")
            TrnLog("plcode") = Trim(Txtfields(33).Text)
            TrnLog("Line_No") = Trim(Txtfields(34).Text)
            TrnLog("docno") = Trim(Txtfields(0).Text)
            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
            TrnLog("arrno") = Trim(Txtfields(0).Text)
            TrnLog("arrdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
            TrnLog("contno") = rssarrmod("contno")
            TrnLog("CONTDT") = Format(rssarrmod("contdt"), "yyyy-mm-dd")
            TrnLog("slcode") = Txtfields(2).Text
            TrnLog("catcd") = Trim(Txtfields(29).Text)
            TrnLog("areacode") = IIf(Trim(Txtfields(4).Text) = "", Null, Txtfields(4).Text)
            TrnLog("Agent_code") = IIf(Trim(Txtfields(3).Text) = "", Null, Txtfields(3).Text)
            TrnLog("godown") = Trim(Txtfields(22).Text)
            TrnLog("LorryNo") = Trim(Txtfields(11).Text)
            TrnLog("Frg_Amt") = val(Txtfields(14).Text)
            TrnLog("varcode") = rssarrmod("varcode")
            TrnLog("ordqty") = rssarrmod("quantity")
            TrnLog("Grosswt") = rssarrmod("Grosswt")
            TrnLog("tarewt") = rssarrmod("tarewt")
            TrnLog("netwt") = rssarrmod("netwt")
            TrnLog("cntcode") = rssarrmod("cntcode")
            TrnLog("RateCY") = rssarrmod("ratecy")
            TrnLog("LR_INDate") = Format(dtpLorryinDt, "yyyy-mm-dd") & " " & Format(dtpLorryinTime.value, "hh:mm:ss")
            TrnLog("LR_OutDate") = Format(dtpLorryOutDt, "yyyy-mm-dd") & " " & Format(dtpLorryOutTime.value, "hh:mm:ss")
           
            TrnLog.UpdateBatch adAffectAllChapters
            
            
            
            rssarrmod.MoveNext
        Next


''        adoPrimaryRS("godown") = CStr(testr)
''        adoPrimaryRS("arrdate") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
''        adoPrimaryRS("contdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
''        If IsNull(MaskEdBox1(2).Text) = False Then
''            adoPrimaryRS("plotdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
''        Else
''            adoPrimaryRS("plotdt") = Null
''        End If
''        If Combo1.Text = "Bale" Then
''            adoPrimaryRS("bbflag") = "B"
''        Else
''            adoPrimaryRS("bbflag") = "R"
''        End If
''        adoPrimaryRS("GCNO") = IIf(Txtfields(10).Text = "", 0, Txtfields(10).Text)
''
''        If oldcontno = Txtfields(1).Text And oldcontdt = Format(MaskEdBox1(1).Text, "yyyy-mm-dd") Then
''            Set rs = New Recordset
''            rs.Open "select isnull(recqty,0) from rm_cont where contno='" & Txtfields(1).Text & "' and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB
''            DB.Execute ("update rm_cont set recqty = " & rs(0) & " - " & oldqty & " where contno= '" & oldcontno & "' and contdt='" & Format(oldcontdt, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")
''            QTY1 = rs(0) - oldqty
''            DB.Execute ("update rm_cont set recqty =" & QTY1 & " + " & val(Txtfields(15).Text) & "  where contno= '" & Txtfields(1).Text & "' and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ")
''        Else
''            Set rs = New Recordset
''            rs.Open "select isnull(recqty,0) from rm_cont where contno='" & oldcontno & "' and contdt='" & Format(oldcontdt, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB
''            DB.Execute ("update rm_cont set recqty = " & rs(0) & " - " & oldqty & " where contno= '" & oldcontno & "' and contdt='" & Format(oldcontdt, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ")
''            Set RS1 = New Recordset
''            RS1.Open "select isnull(recqty,0) from rm_cont where contno='" & Txtfields(1).Text & "' and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB
''            DB.Execute ("update rm_cont set recqty =" & RS1(0) & " + " & val(Txtfields(15).Text) & "  where contno= '" & Txtfields(1).Text & "' and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ")
''        End If
''            DB.Execute ("update rm_cont set supcd='" & Txtfields(2).Text & "' ,varcode='" & Txtfields(5).Text & "',recqty =" & rs(0) & " + " & val(Txtfields(15).Text) & " where contno='" & Txtfields(1).Text & "' and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")

            rssarrmod.UpdateBatch adAffectAllChapters
''          adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            
            FreightAmtPosting "mod"
            
            MsgBox "Arrival Modified!", vbInformation, head
            SSTab1.Enabled = False
            Screen.MousePointer = 0
            Opt = ""
    End If

    If Opt = "del" Then
        On Error GoTo del
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
        If msg = vbYes Then
        ''Set rs = New Recordset
        ''rs.Open "select isnull(recqty,0) from rm_cont where contno='" & Txtfields(1).Text & "' and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB
            
            '==========JV Freight amt ============================
            FreightAmtPosting "del"
            '=====================================================
            
            For I = 1 To spdVar.MaxRows
                a = IContno
                b = IContdt
               
                d = IVarcode
                Set TrnLog = New Recordset
                 TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                 TrnLog.AddNew
                 TrnLog("DIVCODE") = Divcode
                 TrnLog("moduleNo") = ModuleNo
                 TrnLog("Trans_Name") = "Arrival(IM)"
                 TrnLog("Trans_Mod") = "del"
                 TrnLog("Trans_IPADD") = LocalIP
                 TrnLog("Trans_Host") = LocalHost
                 TrnLog("Trans_UserId") = usrid
                 Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                 TrnLog("plcode") = Trim(Txtfields(33).Text)
                 TrnLog("Line_No") = Trim(Txtfields(34).Text)
                 TrnLog("contno") = val(GetText(spdVar, IContno, I))
                 TrnLog("CONTDT") = Format(Trim(GetText(spdVar, IContdt, I)), "yyyy-mm-dd")
                 TrnLog("slcode") = Txtfields(2).Text
                 TrnLog("areacode") = IIf(Trim(Txtfields(4).Text) = "", Null, Txtfields(4).Text)
                 TrnLog("Agent_code") = IIf(Trim(Txtfields(3).Text) = "", Null, Txtfields(3).Text)
                 TrnLog("godown") = Trim(Txtfields(22).Text)
                 TrnLog("LorryNo") = Trim(Txtfields(11).Text)
                 TrnLog("Frg_Amt") = val(Txtfields(14).Text)
                 TrnLog("varcode") = GetText(spdVar, IVarcode, I)
                 TrnLog("catcd") = Trim(Txtfields(29).Text)
                 TrnLog("ordqty") = val(GetText(spdVar, Ibalqty, I))
                 TrnLog("arrno") = Trim(Txtfields(0).Text)
                TrnLog("arrdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
                TrnLog("docno") = Trim(Txtfields(0).Text)
                TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")

                 TrnLog("netwt") = val(GetText(spdVar, iNetwt, I))

                 TrnLog("RateCY") = val(GetText(spdVar, Icandyrate, I))
'                 TrnLog("LR_INDate") = Format(dtpLorryinDt, "yyyy-mm-dd") & " " & Format(dtpLorryinTime.value, "hh:mm:ss")
'                 TrnLog("LR_OutDate") = Format(dtpLorryOutDt, "yyyy-mm-dd") & " " & Format(dtpLorryOutTime.value, "hh:mm:ss")
'
                 TrnLog.UpdateBatch adAffectAllChapters
                
                
                Set RsH = New Recordset
                RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,pREFIX from rm_cont where  VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, b, I), "yyyy-mm-dd") & "'", DB, adOpenStatic
                ARRIVALTYPE = "P"
                If RsH.RecordCount > 0 Then
                    ARRIVALTYPE = RsH(0)
                End If
                
                If globalarrivalorder = "C" Then
                    If RsH!Prefix = "C" Then
                    If ARRIVALTYPE = "P" Then
                            c = Ibalqty
                            DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, b, I), "yyyy-mm-dd") & "'")
                        Else
                            c = iNetwt
                            DB.Execute ("update rm_cont set rcDKGS =ISNULL(rCDKGS,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, b, I), "yyyy-mm-dd") & "'")
                        End If
                    Else
                        If ARRIVALTYPE = "P" Then
                            c = Ibalqty
                            DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, b, I), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ")
                        Else
                            c = iNetwt
                            DB.Execute ("update rm_cont set rcDKGS =ISNULL(rCDKGS,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, b, I), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ")
                        End If
                    End If
                Else
                If RsH!Prefix = "C" Then
                    If ARRIVALTYPE = "P" Then
                        c = Ibalqty
                        DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, b, I), "yyyy-mm-dd") & "'")
                    Else
                        c = iNetwt
                        DB.Execute ("update rm_cont set rcDKGS =ISNULL(rCDKGS,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, b, I), "yyyy-mm-dd") & "'")
                    End If
                Else
                    If ARRIVALTYPE = "P" Then
                        c = Ibalqty
                        DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, b, I), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")
                    Else
                        c = iNetwt
                        DB.Execute ("update rm_cont set rcDKGS =ISNULL(rCDKGS,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, b, I), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")
                    End If
                End If
             End If
            Next
            DB.Execute ("delete from rm_arrival where arrno =" & Trim(Txtfields(0).Text) & " and arrdate='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'")
            
            For I = 1 To spdVar.MaxRows Step 1
                Set Rs = New Recordset
                Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                If globalarrivalorder = "C" Then
                    If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'N' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " AND  CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'N' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "'  or contno in ((select contno from rm_cont where DIVCODE='" & globalimportpo & "' and im_ind='I' and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' ))) "
                    End If
                Else
                    If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'N' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " AND  CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'N' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
                    End If
                End If
            Next
'
'            Dim N As Integer
'            Dim iLOT As Integer
'            Dim STRlOT As String
            
            Set Rs = New Recordset
            Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
            For I = 1 To spdVar.MaxRows Step 1
            If globalarrivalorder = "C" Then
                If Rs(0) = "Y" Then
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
        
               Else
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "' or contno in ((select contno from rm_cont where DIVCODE='" & globalimportpo & "' and im_ind='I' and cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'))) ", DB, adOpenStatic
               End If
            Else
               If Rs(0) = "Y" Then
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
        
               Else
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and DIVCODE = '" & Divcode & "'", DB, adOpenStatic
               End If
            End If
               Do While Not Rs.EOF
                   iLOT = Rs!sLotno
                   If Rs!recflg <> "Y" Then STRlOT = STRlOT & "," & iLOT
                   iLOT = iLOT + 1
                   Rs.MoveNext
               Loop
               
               Set Rs = New Recordset
               Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
               If globalarrivalorder = "C" Then
                    If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
                    End If
               Else
                    If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND dIVCODE ='" & Divcode & "'"
                    End If
               End If
               
               
            Next
 
            
              DB.Execute "update  IM_RECCOPYdt1 set recflg ='N' where divcode='" & Divcode & "' and docno='" & val(Txtfields(36).Text) & "' and docdt='" & Format(MaskEdBox1(5).Text, "yyyy-mm-dd") & "' and docsno='" & val(Txtfields(37).Text) & "' and CONTAINERNO='" & Trim(Txtfields(11).Text) & "'"
            DB.CommitTrans
            MsgBox "Arrival Deleted!", vbInformation, head
            'BUTTON(9).ToolTipText = "Save"
            Opt = ""
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
        Txtfields(25).Text = ""
        Txtfields(26).Text = ""
        Txtfields(27).Text = ""
        Txtfields(28).Text = ""
        Txtfields(89).Text = ""
        Txtfields(90).Text = ""
        Txtfields(95).Text = ""
        Txtfields(91).Text = ""
        Call SpreadAlign(0)
        On Error Resume Next
        'Return to query mode
        Set adoPrimaryRS = New Recordset
        ''adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,LRNO,godown,MOITURE FROM RM_ARRIVAL WHERE divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
        
        'adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime FROM RM_ARRIVAL WHERE  arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", db, adOpenStatic, adLockBatchOptimistic
        
        adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE  arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
        
        Call bindcontls
        Call disablcontls
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM1(BUTTON, GSNO)
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
        
        Txtfields(25).Text = ""
        Txtfields(26).Text = ""
        Txtfields(27).Text = ""
        Txtfields(28).Text = ""
        Txtfields(89).Text = ""
        Txtfields(90).Text = ""
        Txtfields(95).Text = ""
        Txtfields(91).Text = ""
        Call SpreadAlign(0)
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,catcd,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,weignment,LRNO,godown,MOITURE,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime ,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' order by arrno", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Screen.MousePointer = 0
        Call disablcontls
        'procedure unique to this form  to set grid headings
        'calling cancl procedure from module
        'Call cancl(BUTTON)
     '   Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
        Frame3.Visible = False
        Label30.Visible = False
            
               If Not adoPrimaryRS.EOF Then
                    Txtfields(2).Text = adoPrimaryRS!SUPCD
                    Txtfields(11).Text = adoPrimaryRS!LORRYNOS
                    Txtfields(21).Text = adoPrimaryRS!Lrno
                    Txtfields(22).Text = adoPrimaryRS!Godown
                    Txtfields(14).Text = adoPrimaryRS!Freight
               End If ' Frame1.Visible = True
       
            For iIndex = 0 To 25 Step 1
                txtFields_Change (iIndex)
            Next
       
       ' Frame2.Visible = True
Case 11
        'EXIT
       ' If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
        Unload Me
   
Case 12
       Call reportvisible
Case 13
     Call CrystalReport
End Select
intervalMinutes = -1

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmArrival", vbInformation, head
End Sub

Private Sub Combo3_Change()
    'Combo3.ToolTipText = Combo3.Text
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
        intervalMinutes = -1
        desc.Caption = "Query"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,LRNO,MOITURE,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE  arrno= '" & Trim(txtqry.Text) & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'   order by arrno", DB, adOpenStatic, adLockOptimistic
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

intervalMinutes = -1
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmArrival", vbInformation, head
End Sub
Private Sub Command2_Click()
Frame6.Visible = False
End Sub

Private Sub Command5_Click()    'activex cancel
On Error GoTo Command5_Click_Error

If Ksllist1.listfield1 = "carcode" Then
        Frame3.Visible = False
        SSTab1.Visible = True
        Frame7.Visible = True
        Txtfields(9).Text = ""
        Exit Sub
End If
If Ksllist1.listfield1 = "slcode" Then
        Frame3.Visible = False
        SSTab1.Visible = True
        Frame7.Visible = True
        Txtfields(2).Text = testr
        Txtfields(2).SetFocus
        Exit Sub
End If


        Frame3.Visible = False
        SSTab1.Visible = True
        'Frame1.Visible = True
       ' Frame2.Visible = True
        Frame7.Visible = True
       ' Frame8.Visible = True
       If Txtfields(1).Text = "" Then
        Call BUTTON_Click(10)
        Label30.Visible = False
        End If
        'Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_ARRIVAL WHERE  divcode='" & divcode & "' order by arrno", db, adOpenStatic, adLockOptimistic
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
Select Case Ksllist1.listfield1
    Case "Varcode"
        Txtfields(5).Text = Ksllist1.Code
        Txtfields(20).Text = Ksllist1.Description
        Txtfields(7).SetFocus
    Case "slcode"
        Text1.Text = Ksllist1.Description
        Txtfields(2).Text = Ksllist1.Code
    Case "Gcode"
''        Txtfields(22).Text = KslList1.Code
''        Txtfields(23).Text = KslList1.description
''        Frame3.Visible = False
''        Txtfields(16).SetFocus
    Case "cast(arrno as varchar)"
        BUTTON(9).Enabled = True
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,MOITURE,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE ARRNO='" & Ksllist1.Code & "' AND ARRDATE='" & Format(Ksllist1.Description, "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount <> 0 Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,MOITURE,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,Line_No,PlCode ,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE ARRNO='" & Ksllist1.Code & "' AND ARRDATE='" & Format(Ksllist1.Description, "yyyy-mm-dd") & "'  and (lotno is  null or lotdt is  null or catcd is  null ) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
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
     Txtfields(I).Locked = True
     Next
     Txtfields(13).Locked = True
     Text4.Locked = True
     Txtfields(19).Locked = True
     Txtfields(7).SetFocus
     Txtfields(0).Locked = True
     Txtfields(3).Locked = True
     Txtfields(4).Locked = True
     Txtfields(15).Locked = True
     Txtfields(16).Locked = True
     Txtfields(17).Locked = True
     Txtfields(18).Locked = True
     Txtfields(24).Locked = True
     
     Frame3.Visible = False
     
     
     
Case " CAST(Gcode as VARCHAR)"
     Txtfields(10).Text = Ksllist1.Code
     Text6.Text = Ksllist1.Description
     Txtfields(11).SetFocus
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
     Txtfields(4).Text = Ksllist1.Code
     Text3.Text = Ksllist1.Description
     Buttonframe.Enabled = True
     Txtfields(13).SetFocus
End Select
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    Frame3.Visible = False


Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form FrmArrival", vbInformation, head
End Sub

Private Sub DTPicker1_CloseUp()
MaskEdBox1(0).Text = DTPicker1.value
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
Dim strQry As String
  StatusBar1.Panels(1).Text = STBARmsg
  Call openconnection
  SSTab1.Visible = True
  DATLAB.Caption = pdate
  
    Set Rs = New Recordset
    Rs.Open "Select SeasonCalcReq From rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
        iTrashPer = 17
        iMoitureper = 18
        iMoiturewt = 19
        iNetwt = 20
    Else
        iMoitureper = 17
        iMoiturewt = 18
        iNetwt = 19
    End If
  
  
  
  'TabStrip1.Tabs.Clear
  Set adoPrimaryRS = New Recordset
'''  strQry = "select distinct ARRNO,SUPCD,catcd,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown, isnull(catcd,''),inwardno,inwarddate FROM RM_ARRIVAL WHERE  arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno"
  
  'strQry = "select TOP 1 ARRNO,SUPCD,catcd,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown, isnull(catcd,''),inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,Trashper,GinCode,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime FROM RM_ARRIVAL WHERE  arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno Desc"
  
  '13/08/12
  strQry = "select top 10 ARRNO,SUPCD,catcd,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown, isnull(catcd,''),inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,Trashper,GinCode,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE  arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno asc"
  
  
  ''adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,weignment,LRNO,godown,MOITURE FROM RM_ARRIVAL WHERE  arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
  
  adoPrimaryRS.Open strQry, DB, adOpenStatic, adLockBatchOptimistic
   
   ''CONTNO,VARCODE,CNTCODE,PRNO,PRMARK,PLOTNO,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,moisture_per,moisture_et
  If adoPrimaryRS.RecordCount <> 0 Then
  
     adoPrimaryRS.MoveLast
     'Bind the text boxes,check boxes and option buttons to the data source
    
     Call bindcontls
   
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
     Call NEWFORM1(BUTTON, GSNO)
     Call disablcontls
     'Exit Sub
        If Not adoPrimaryRS.EOF Then
             Txtfields(2).Text = adoPrimaryRS!SUPCD
             Txtfields(11).Text = adoPrimaryRS!LORRYNOS
             Txtfields(21).Text = adoPrimaryRS!Lrno
             Txtfields(22).Text = adoPrimaryRS!Godown
             Txtfields(14).Text = adoPrimaryRS!Freight
        End If
     
  Else
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
       'TabStrip1.Visible = True
  End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmArrival", vbInformation, head
End Sub

Private Sub Form_Unload(Cancel As Integer)
  Opt = ""
  Screen.MousePointer = vbDefault
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
If adoPrimaryRS.BOF = False Then
    If adoPrimaryRS.RecordCount > 0 Then
        'godown name display
        
        gCode = adoPrimaryRS("godown")
        Txtfields(22).Text = adoPrimaryRS("godown")
        Txtfields(32).Text = adoPrimaryRS("gincode")
        Set rsa = New Recordset
        rsa.Open "select gname from rm_god where gcode='" & adoPrimaryRS("godown") & "'", DB
        If rsa.RecordCount > 0 Then
            Txtfields(23).Text = rsa(0)
        Else
            Txtfields(23).Text = ""
            
        End If
        'carrier display
        Set rsa = New Recordset
        rsa.Open "select carname from po_car where carcode='" & adoPrimaryRS("carcode") & "'", DB
        If rsa.RecordCount > 0 Then
            Text7.Text = rsa(0)
        Else
            Text7.Text = ""
            Txtfields(9).Text = ""
        End If

        ''For Rate unit
''        Set rsg = New Recordset
''        rsg.Open "select rateunit,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)),isnull(cancelbales,0) as cancelbales,ordqty,recqty from rm_cont where contno=" & adoPrimaryRS("contno") & "  and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
''        If rsg.RecordCount > 0 Then
''            txtfields(89).Text = CStr(IIf(IsNull(rsg("ordqty")) = True, 0, rsg("ordqty")))
''            txtfields(90).Text = CStr(IIf(IsNull(rsg("RECQTY")) = True, 0, rsg("RECQTY")))
''            txtfields(91).Text = CStr(val(rsg(1)))
''            txtfields(95).Text = CStr(rsg("cancelbales"))
''        End If
       
            Call ArrivalDisplay
       End If
    End If
End If

End Sub

'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error GoTo bindcontls_Error

On Error Resume Next
For Each oText In Me.Txtfields
    Set oText.DataSource = adoPrimaryRS
Next
MaskEdBox1(0).DataField = "arrdate"
MaskEdBox1(1).DataField = "contdt"
MaskEdBox1(2).DataField = "plotdt"
MaskEdBox1(3).DataField = "inwarddate"
Txtfields(22).Text = adoPrimaryRS("godown")
Txtfields(2).Text = adoPrimaryRS("SUPCD")
Txtfields(32).Text = adoPrimaryRS("Gincode")

DTPicker1.maxdate = pdate
DTPicker1.MinDate = yfdate

If Not IsNull(adoPrimaryRS("LR_InDt")) Then
    If Opt = "add" Then
       'adoPrimaryRS details commented on 27-06-18 by mariyaiya
       dtpLorryinDt.value = pdate 'adoPrimaryRS("LR_InDt")
       dtpLorryinTime.value = Time 'adoPrimaryRS("LR_InTime")
       dtpLorryOutDt.value = pdate 'adoPrimaryRS("LR_OutDt")
       dtpLorryOutTime.value = Time 'adoPrimaryRS("LR_OutTime")
    Else
        dtpLorryinDt.value = adoPrimaryRS("LR_InDt")
       dtpLorryinTime.value = adoPrimaryRS("LR_InTime")
       dtpLorryOutDt.value = adoPrimaryRS("LR_OutDt")
       dtpLorryOutTime.value = adoPrimaryRS("LR_OutTime")
    End If
Else
    dtpLorryinDt.value = pdate
    dtpLorryinTime.value = 0
    dtpLorryOutDt.value = pdate
    dtpLorryOutTime.value = 0
End If

If IsNull(adoPrimaryRS("inwardno")) = False Or adoPrimaryRS("inwardno") = "" Then
Txtfields(30).Text = adoPrimaryRS("inwardno")
Else
Txtfields(30).Text = ""
End If
If adoPrimaryRS.EOF = False Then
If IsNull(adoPrimaryRS("arrdate")) = False Or adoPrimaryRS("arrdate") = "" Then
    MaskEdBox1(0).Text = Format(adoPrimaryRS("arrdate"), "dd/mm/yyyy")
End If
If IsNull(adoPrimaryRS("contdt")) = False Or adoPrimaryRS("contdt") = "" Then
    MaskEdBox1(1).Text = Format(adoPrimaryRS("contdt"), "dd/mm/yyyy")
End If
If IsNull(adoPrimaryRS("plotdt")) = False Then
    MaskEdBox1(2).Text = Format(adoPrimaryRS("plotdt"), "dd/mm/yyyy")
Else
    MaskEdBox1(2).Text = "__/__/____"
End If
If IsNull(adoPrimaryRS("inwarddate")) = False Then
    MaskEdBox1(3).Text = Format(adoPrimaryRS("inwarddate"), "dd/mm/yyyy")
Else
    MaskEdBox1(3).Text = "__/__/____"
End If
If IsNull(adoPrimaryRS("OcDate")) = False Or adoPrimaryRS("OcDate") = "" Then
    MaskEdBox1(4).Text = Format(adoPrimaryRS("OcDate"), "dd/mm/yyyy")
Else
    MaskEdBox1(4).Text = "__/__/____"
End If
If IsNull(adoPrimaryRS("CpyDate")) = False Or adoPrimaryRS("CpyDate") = "" Then
    MaskEdBox1(5).Text = Format(adoPrimaryRS("CpyDate"), "dd/mm/yyyy")
Else
    MaskEdBox1(5).Text = "__/__/____"
End If

If IsNull(adoPrimaryRS("OcDocDate")) = False Or adoPrimaryRS("OcDocDate") = "" Then
    MaskEdBox1(6).Text = Format(adoPrimaryRS("OcDocDate"), "dd/mm/yyyy")
Else
    MaskEdBox1(6).Text = "__/__/____"
End If

End If
If Txtfields(24).Text = "" Then
Txtfields(24).Text = Format(0, "0.000")
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
    If I <> 11 Then Txtfields(I).Locked = False
Next
For I = 14 To 19
    If I <> 21 Then Txtfields(I).Locked = False
Next
Txtfields(30).Locked = False
Txtfields(22).Locked = False
MaskEdBox1(0).Enabled = True
MaskEdBox1(2).Enabled = True
MaskEdBox1(3).Enabled = True
DTPicker1.Enabled = True
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

    Txtfields(I).Locked = True
Next
Txtfields(30).Locked = True
Txtfields(11).Locked = False
Txtfields(21).Locked = False
MaskEdBox1(0).Enabled = False
MaskEdBox1(1).Enabled = False
MaskEdBox1(2).Enabled = False
MaskEdBox1(3).Enabled = False
DTPicker1.Enabled = False
Combo1.Locked = True

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub ListPO_BeforeLabelEdit(Cancel As Integer)
    ListPO.SelectedItem.EnsureVisible
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
        Rs.Open "SELECT * FROM rm_arrival WHERE arrNO= " & MaxNo & "  and divcode='" & Divcode & "' AND ARRDATE=" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & " ", DB, adOpenStatic
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
'    UserFooter1.ClearFooter
'    UserFooter1.Visible = True
'    UserFooter1.Load
   
    Command3.Visible = True
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Command3.Visible = False
      '  UserFooter1.Visible = False
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

  '  UserFooter1.ClearFooter
  '  UserFooter1.Visible = False
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
      '  UserFooter1.Visible = False
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

Private Sub spdVar_Change(ByVal Col As Long, ByVal Row As Long)
Dim iRow As Integer
Dim dblTareWg As Double
Dim dblMoisWg As Double
Dim dblNetWg As Double

On Error GoTo spdVar_Change_Error

dblTareWg = 0
dblMoisWg = 0
dblNetWg = 0

For iRow = 1 To spdVar.MaxRows
    dblTareWg = dblTareWg + val(GetText(spdVar, Itarewt, iRow))
    dblMoisWg = dblMoisWg + val(GetText(spdVar, iMoiturewt, iRow))
    dblNetWg = dblNetWg + val(GetText(spdVar, iNetwt, iRow))
        Next

Txtfields(26).Text = Format(dblTareWg, "0.000")
Txtfields(27).Text = Format(dblMoisWg, "0.000")

Set Rs = New Recordset
Rs.Open "Select SeasonCalcReq from rm_param", DB, adOpenStatic
If Rs(0) = "Y" Then
    Txtfields(28).Text = Format(val(Txtfields(25).Text) - (val(Txtfields(26).Text)), "0.000")
Else
    Txtfields(28).Text = Format(val(Txtfields(25).Text) - (val(Txtfields(26).Text) + val(Txtfields(27).Text)), "0.000")
End If

Exit Sub
spdVar_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_Change of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub spdVar_Click(ByVal Col As Long, ByVal Row As Long)


On Error GoTo spdVar_Click_Error
On Error Resume Next
        a = IContno
        b = IContdt
        c = IVarcode
        gcontno = GetText(spdVar, a, spdVar.ActiveRow)
        Set rsbal = New Recordset
        If globalarrivalorder = "C" Then
            rsbal.Open "select rateunit,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)) AS BALQTY,isnull(cancelbales,0) as cancelbales,ordqty,recqty from rm_cont where VARCODE='" & GetText(spdVar, c, spdVar.ActiveRow) & "' AND contno='" & GetText(spdVar, a, spdVar.ActiveRow) & "'  and contdt='" & Format(GetText(spdVar, b, spdVar.ActiveRow), "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL select rateunit,ordKGS-ISNULL(RCDKGS,0) AS BALQTY,0 AS CANCELBALES,ordKGS""ORDQTY"",rCDKGS""RECQTY"" from rm_cont where VARCODE='" & GetText(spdVar, c, spdVar.ActiveRow) & "' AND contno='" & GetText(spdVar, a, spdVar.ActiveRow) & "'  and contdt='" & Format(GetText(spdVar, b, spdVar.ActiveRow), "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
        Else
            rsbal.Open "select rateunit,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)) AS BALQTY,isnull(cancelbales,0) as cancelbales,ordqty,recqty from rm_cont where VARCODE='" & GetText(spdVar, c, spdVar.ActiveRow) & "' AND contno='" & GetText(spdVar, a, spdVar.ActiveRow) & "'  and contdt='" & Format(GetText(spdVar, b, spdVar.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL select rateunit,ordKGS-ISNULL(RCDKGS,0) AS BALQTY,0 AS CANCELBALES,ordKGS""ORDQTY"",rCDKGS""RECQTY"" from rm_cont where VARCODE='" & GetText(spdVar, c, spdVar.ActiveRow) & "' AND contno='" & GetText(spdVar, a, spdVar.ActiveRow) & "'  and contdt='" & Format(GetText(spdVar, b, spdVar.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND ISNULL(ARRIVALTYPE,'P')='K'", DB, adOpenStatic
        End If
        If rsbal.RecordCount > 0 Then
            Txtfields(89).Text = CStr(IIf(IsNull(rsbal("ordqty")) = True, 0, rsbal("ordqty")))
            Txtfields(90).Text = CStr(IIf(IsNull(rsbal("RECQTY")) = True, 0, rsbal("RECQTY")))
            Txtfields(91).Text = CStr(val(rsbal("BALQTY")))
            Txtfields(95).Text = CStr(rsbal("cancelbales"))
        End If

Exit Sub
spdVar_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_Click of Form FrmArrival", vbInformation, head
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
                If Len(.Text) > 15 Then
                    .Text = Mid(.Text, 1, 15)
                End If
            End With
        Case Iprno
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
        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
        If rstPARAM!SuppLotNoReqArrival = "Y" Then
            Set rstSLOTNO = New Recordset
            If globalarrivalorder = "C" Then
                 rstSLOTNO.Open "Select SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO from rm_cont Where Contno = '" & val(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "' and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
            Else
                rstSLOTNO.Open "Select SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO from rm_cont Where Contno = '" & val(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "' AND Divcode ='" & gDivision & "'", DB, adOpenStatic
            End If
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
        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
        If rstPARAM!SuppLotNoReqArrival = "Y" Then
            Set rstSLOTNO = New Recordset
            If globalarrivalorder = "C" Then
                rstSLOTNO.Open "Select * from rm_cont Where Contno = " & val(GetText(spdVar, IContno, Row)) & " and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
            Else
                rstSLOTNO.Open "Select * from rm_cont Where Contno = " & val(GetText(spdVar, IContno, Row)) & " and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "' AND Divcode ='" & Divcode & "'", DB, adOpenStatic
            End If
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

Private Sub spdVar_GotFocus()
On Error GoTo spdVar_GotFocus_Error

''    If Col = Iplotno Then
'        Set rstPARAM = New Recordset
'        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
'        If rstPARAM!SuppLotNoReqArrival = "Y" Then
'            Set rstSLOTNO = New Recordset
'            rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row + 1)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row + 1), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtFields(2).Text) & "'", DB, adOpenStatic
'            If rstSLOTNO.EOF = False Then
'                If rstSLOTNO!prefix = "C" Then
'                    Set rstSLOTNO = New Recordset
'                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row + 1)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row + 1), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtFields(2).Text) & "'", DB, adOpenStatic
'                Else
'                    Set rstSLOTNO = New Recordset
'                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row + 1)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row + 1), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtFields(2).Text) & "' AND Divcode ='" & Divcode & "'", DB, adOpenStatic
'                End If
'            End If
'            If rstSLOTNO.EOF = False Then
'                StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO!SUPPLIERLOTNOFROM & " and " & rstSLOTNO!SUPPLIERLOTNOTO
'            End If
'
'        End If
'        End If

Exit Sub
spdVar_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_GotFocus of Form FrmArrival", vbInformation, head
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
On Error GoTo spdVar_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then '
'   If Col = Iplotno Then
        Set rstPARAM = New Recordset
        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
        If rstPARAM!SuppLotNoReqArrival = "Y" Then
            Set rstSLOTNO = New Recordset
            
            rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, spdVar.Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, spdVar.Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "'", DB, adOpenStatic
            If rstSLOTNO.EOF = False Then
              If globalarrivalorder = "C" Then
                 If rstSLOTNO!Prefix = "C" Then
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, spdVar.Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, spdVar.Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "'", DB, adOpenStatic
                Else
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, spdVar.Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, spdVar.Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
                End If
              Else
                If rstSLOTNO!Prefix = "C" Then
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, spdVar.Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, spdVar.Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "'", DB, adOpenStatic
                Else
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, spdVar.Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, spdVar.Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "' AND Divcode ='" & Divcode & "'", DB, adOpenStatic
                End If
              End If
            End If
            If rstSLOTNO.EOF = False Then
                StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO!SUPPLIERLOTNOFROM & " and " & rstSLOTNO!SUPPLIERLOTNOTO
            End If
                
        Else
            StatusBar1.Panels(2).Text = ""
        End If
        
'    End If


Else
    KeyAscii = 0
End If

Exit Sub
spdVar_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_KeyPress of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub spdVar_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NEWROW As Long, Cancel As Boolean)
On Error GoTo spdVar_LeaveCell_Error
Dim dGrossWT As Double
On Error GoTo spdVar_LeaveCell_Error
If (Opt = "add" Or Opt = "mod") And Row <> 0 Then
'
'    If Col = iGinner Then
'        Set Rs = New Recordset
'        Rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & GetText(spdVar, iGinner, Row) & "'", DB, adOpenStatic
'        If Rs.RecordCount = 0 Then
'            LookUp.clear = True
'            LookUp.Query = " select Gincode""Ginner Code"",GinName""Ginner Name"" from RM_Ginner"
'            LookUp.Caption = "Ginner List"
'            LookUp.DefCol = "Ginner Name"
'            LookUp.ALIGN = "1600,3500"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'                Unbindcontls
'                spdVar.SetText iGinner, Row, CStr(LookUp.Fields(1))
'                LookUp.clear = True
'                spdVar.SetActiveCell Icandyrate, Row
'            Else
'                spdVar.SetText iGinner, Row, CStr("")
'                spdVar.SetActiveCell Icandyrate, Row
'            End If
'       End If
'
'    End If

   If Opt = "mod" And val(GetText(spdVar, IFullTruckWt, Row)) <> 0 And val(GetText(spdVar, IEmptyTruckWt, Row)) <> 0 Then
    If Col = IFullTruckWt Then
        dGrossWT = val(GetText(spdVar, IFullTruckWt, Row)) - val(GetText(spdVar, IEmptyTruckWt, Row))
        spdVar.SetText Igrosswt, Row, dGrossWT
    End If
    End If
    If Col = IEmptyTruckWt Then
        If val(GetText(spdVar, IEmptyTruckWt, Row)) > val(GetText(spdVar, IFullTruckWt, Row)) Then
            spdVar.SetText IEmptyTruckWt, Row, 0#
            MsgBox "Empty Truck Weight must be less than Full Truck Weight", vbInformation, head
            ''spdVar.SetActiveCell Ibalqty, row
            Exit Sub
        End If
        If Opt = "mod" And val(GetText(spdVar, IFullTruckWt, Row)) <> 0 And val(GetText(spdVar, IEmptyTruckWt, Row)) <> 0 Then
            dGrossWT = val(GetText(spdVar, IFullTruckWt, Row)) - val(GetText(spdVar, IEmptyTruckWt, Row))
            spdVar.SetText Igrosswt, Row, dGrossWT
        End If
    End If
    
    If Col = Iplotno Then
        Set rstPARAM = New Recordset
        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
        If rstPARAM!SuppLotNoReqArrival = "Y" Then
            Set rstSLOTNO = New Recordset
            rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "'", DB, adOpenStatic
            If rstSLOTNO.EOF = False Then
                If rstSLOTNO!Prefix = "C" Then
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "'and SUPPLIERLOTNOFROM < = " & val(GetText(spdVar, Iplotno, Row)) & " and SUPPLIERLOTNOTO >= " & val(GetText(spdVar, Iplotno, Row)), DB, adOpenStatic
                Else
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "' AND Divcode ='" & Divcode & "' and SUPPLIERLOTNOFROM < = " & val(GetText(spdVar, Iplotno, Row)) & " and SUPPLIERLOTNOTO >= " & val(GetText(spdVar, Iplotno, Row)), DB, adOpenStatic
                End If
            End If
'            If rstSLOTNO.EOF = False Then
'                StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO!SUPPLIERLOTNOFROM & " and " & rstSLOTNO!SUPPLIERLOTNOTO
'            End If
                If rstSLOTNO.EOF = True Then
'                    StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO!SUPPLIERLOTNOFROM & " and " & rstSLOTNO!SUPPLIERLOTNOTO
                    spdVar.SetActiveCell Col, Row
                    spdVar.SetText Iplotno, Row, ""
                    Exit Sub
                Else
                    StatusBar1.Panels(2).Text = ""
                End If
                

        End If
        End If

'      Set rstPARAM = New Recordset
'        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
'        If rstPARAM!SuppLotNoReqArrival = "Y" Then
'            Set rstSLOTNO = New Recordset
'            rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "' AND Divcode ='" & gDivision & "' and SUPPLIERLOTNOFROM < = " & val(GetText(spdVar, Iplotno, Row)) & " and SUPPLIERLOTNOTO >= " & val(GetText(spdVar, Iplotno, Row)), DB, adOpenStatic
'            If rstSLOTNO.EOF = True Then
'                Set rstSLOTNO = New Recordset
'                rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & val(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "' AND Divcode ='" & gDivision & "'", DB, adOpenStatic
'                If rstSLOTNO.EOF = False Then StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO!SUPPLIERLOTNOFROM & " and " & rstSLOTNO!SUPPLIERLOTNOTO
'
'                spdVar.SetActiveCell Col, Row
'                spdVar.SetText Iplotno, Row, ""
'                Exit Sub
'            End If
'            StatusBar1.Panels(2).Text = ""
'        End If
'    End If
    Set rstSLOTNO = New Recordset
    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "'", DB, adOpenStatic
    If rstSLOTNO.EOF = False Then
        If rstSLOTNO!Prefix = "C" Then
            Set RsH = New Recordset
            RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where varcode='" & GetText(spdVar, IVarcode, Row) & "' and contno='" & GetText(spdVar, IContno, Row) & "' and contdt='" & Format(GetText(spdVar, IContdt, Row), "yyyy-mm-dd") & "'", DB, adOpenStatic
            ARRIVALTYPE = "P"
            If RsH.RecordCount > 0 Then
                ARRIVALTYPE = RsH("ARRIVALTYPE")
            End If
        
            If Col = Ibalqty And ARRIVALTYPE = "P" Then
                    a = IContno
                    b = IContdt
                    c = IVarcode
                    Set rsg = New Recordset
                    rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal from rm_cont where varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, b, Row), "yyyy-mm-dd") & "'", DB, adOpenStatic
                    
                    If Opt = "mod" Then
                        Set rsbal = New Recordset
                        rsbal.Open "select quantity from rm_arrival where arrno=" & Txtfields(0) & " and arrdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, b, Row), "yyyy-mm-dd") & "'", DB, adOpenStatic
                        bal = rsbal("quantity")
                    End If
                    If rsg.RecordCount <> 0 Then
                    bal = bal + val(rsg(0))
                    End If
                    d = Ibalqty
                    If val(GetText(spdVar, d, Row)) > bal Then
                        spdVar.SetText Ibalqty, Row, bal
                        MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
                        ''spdVar.SetActiveCell Ibalqty, row
                        Exit Sub
                    End If
            End If
            
            If Col = Igrosswt And ARRIVALTYPE = "K" Then
                    a = IContno
                    b = IContdt
                    c = IVarcode
                    Set rsg = New Recordset
                    If globalarrivalorder = "C" Then
                        rsg.Open "select (ordKGS -  isnull(rCDKGS,0)) as bal from rm_cont where varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, b, Row), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
                    Else
                        rsg.Open "select (ordKGS -  isnull(rCDKGS,0)) as bal from rm_cont where varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, b, Row), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                    End If
                    bal = 0
                    If Opt = "mod" Then
                        Set rsbal = New Recordset
                        rsbal.Open "select grosswt from rm_arrival where arrno=" & Txtfields(0) & " and arrdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, b, Row), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic
                        bal = rsbal("grosswt")
                    End If
                    d = Igrosswt
                    bal = bal + rsg(0)
                    If val(GetText(spdVar, d, Row)) > bal Then
                        spdVar.SetText Igrosswt, Row, bal
                        MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
        '                spdVar.SetActiveCell Ibalqty, Row
                        Exit Sub
                    End If
            End If

    Else
    If globalarrivalorder = "C" Then
        Set RsH = New Recordset
        RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where varcode='" & GetText(spdVar, IVarcode, Row) & "' and contno='" & GetText(spdVar, IContno, Row) & "' and contdt='" & Format(GetText(spdVar, IContdt, Row), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
    Else
        Set RsH = New Recordset
        RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where varcode='" & GetText(spdVar, IVarcode, Row) & "' and contno='" & GetText(spdVar, IContno, Row) & "' and contdt='" & Format(GetText(spdVar, IContdt, Row), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
    End If
    
    ARRIVALTYPE = "P"
    If RsH.RecordCount > 0 Then
        ARRIVALTYPE = RsH("ARRIVALTYPE")
    End If

       If Col = Ibalqty And ARRIVALTYPE = "P" Then
            a = IContno
            b = IContdt
            c = IVarcode
            Set rsg = New Recordset
            If globalarrivalorder = "C" Then
                rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal from rm_cont where varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, b, Row), "yyyy-mm-dd") & "'  and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            Else
                rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal from rm_cont where varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, b, Row), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            End If
            
            If Opt = "mod" Then
                Set rsbal = New Recordset
                rsbal.Open "select quantity from rm_arrival where arrno=" & Txtfields(0) & " and arrdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, b, Row), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                bal = rsbal("quantity")
            End If
            If rsg.RecordCount <> 0 Then
            bal = bal + val(rsg(0))
            End If
            d = Ibalqty
            If val(GetText(spdVar, d, Row)) > bal Then
                spdVar.SetText Ibalqty, Row, bal
                MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
                ''spdVar.SetActiveCell Ibalqty, row
                Exit Sub
            End If
        End If
    
    If Col = Igrosswt And ARRIVALTYPE = "K" Then
            a = IContno
            b = IContdt
            c = IVarcode
            Dim V_WtToleranceper As Integer
            
            Set rsg = New Recordset
            If globalarrivalorder = "C" Then
                rsg.Open "select  (ordKGS -  isnull(rCDKGS,0)) as bal,isnull(ORDKGS,0)ORDKGS,isnull(RcdKgs,0)RcdKgs " & _
                     " from rm_cont " & _
                     " where varcode='" & GetText(spdVar, c, Row) & "'" & _
                     " and contno='" & GetText(spdVar, a, Row) & "'" & _
                     " and contdt='" & Format(GetText(spdVar, b, Row), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            Else
                
                rsg.Open "select  (ordKGS -  isnull(rCDKGS,0)) as bal,isnull(ORDKGS,0)ORDKGS,isnull(RcdKgs,0)RcdKgs " & _
                         " from rm_cont " & _
                         " where varcode='" & GetText(spdVar, c, Row) & "'" & _
                         " and contno='" & GetText(spdVar, a, Row) & "'" & _
                         " and contdt='" & Format(GetText(spdVar, b, Row), "yyyy-mm-dd") & "'" & _
                         " and divcode='" & Divcode & "'", DB, adOpenStatic
            End If
            bal = 0
            If Opt = "mod" Then
                Set rsbal = New Recordset
                rsbal.Open "select grosswt from rm_arrival where arrno=" & Txtfields(0) & " and arrdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, b, Row), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic
                bal = rsbal("grosswt")
            End If
            
            Set rsa = New Recordset
            rsa.Open "select POWtTolerance from rm_param ", DB, adOpenStatic
            If Not rsa.EOF > 0 Then
                V_WtToleranceper = val(NULLCHECKFields(rsa("POWtTolerance")))
            Else
                V_WtToleranceper = 0
            End If
            d = Igrosswt
            ''bal = bal + rsg(0)
            bal = bal + Round((val(NULLCHECKFields(rsg("ORDKGS"))) + (val(NULLCHECKFields(rsg("ORDKGS"))) * V_WtToleranceper / 100)) - val(NULLCHECKFields(rsg("RcdKgs"))), 2)
            
            If val(GetText(spdVar, d, Row)) > bal Then
                spdVar.SetText Igrosswt, Row, bal
                MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
'                spdVar.SetActiveCell Ibalqty, Row
                Exit Sub
            End If
    End If
    End If
    End If
'    If Col = Inetwt And spdVar.MaxRows = spdVar.ActiveRow Then
'        BUTTON(9).SetFocus
'        Exit Sub
'    End If

    Set Rs = New Recordset
    Rs.Open "select SeasoncalcReq from rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
    If Col = Igrosswt Then
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then
            'MsgBox "Please enter Gross Weight", vbInformation, head
            spdVar.Col = 13
            spdVar.SetFocus
            Exit Sub
        Else
            If val(GetText(spdVar, Igrosswt, Row)) <= val(GetText(spdVar, Itarewt, Row)) Then
                spdVar.SetText Itarewt, Row, "0.000"
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row))
                MsgBox "Gross weight must be greater than Tare weight", vbInformation, head
                spdVar.SetText iNetwt, Row, netwt
                Exit Sub
            End If
            
            netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row))
            
            If netwt <= 0 Then
                spdVar.SetText Itarewt, Row, "0.000"
                spdVar.SetText iMoiturewt, Row, "0.000"
                spdVar.SetText Igrosswt, Row, "0.000"
                spdVar.SetText iNetwt, Row, "0.000"
                spdVar.SetActiveCell Col, Row
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row))
                MsgBox "Nett Weight must be greater than zero"
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If


    If Col = Itarewt Then
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then
        Else
            If val(GetText(spdVar, Itarewt, Row)) > val(GetText(spdVar, Igrosswt, Row)) Then
                spdVar.SetText Itarewt, Row, "0.000"
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row))
                spdVar.SetText iNetwt, Row, netwt
                spdVar.SetActiveCell Itarewt, Row
                MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
                Exit Sub
            End If
            netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row))
            If netwt <= 0 Then
                spdVar.SetText Itarewt, Row, "0.000"
                spdVar.SetText iNetwt, Row, netwt
                MsgBox "Nett Weight must be greater than zero"
                spdVar.SetActiveCell Itarewt, Row
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If
    
    
    If Col = iMoitureper Then
    
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then
        Else
            a = Igrosswt
            b = Itarewt
            c = iMoitureper
            te = iTrashPer
            d = iMoiturewt
            If Col = iMoitureper Or Col = iTrashPer Then
                gwt = val(GetText(spdVar, a, Row))
                If gwt > 0 Then
                    mwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, b, Row))
                    mwt = mwt * (val(GetText(spdVar, c, Row)) + val(GetText(spdVar, te, Row))) / 100
                    
                    spdVar.SetText iMoiturewt, Row, mwt
                End If
            End If
            netwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, b, Row))
            If netwt <= 0 Then
                spdVar.SetText Col, Row, "0.000"
                netwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, b, Row))
                spdVar.SetText iNetwt, Row, netwt
                spdVar.SetActiveCell Col, Row
                MsgBox "Nett Weight must be greater than zero", vbInformation, head
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If
Else
If Col = Igrosswt Then
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then
            'MsgBox "Please enter Gross Weight", vbInformation, head
            spdVar.Col = 13
            spdVar.SetFocus
            Exit Sub
        Else
            If val(GetText(spdVar, Igrosswt, Row)) <= val(GetText(spdVar, Itarewt, Row)) Then
                spdVar.SetText Itarewt, Row, "0.000"
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row)) - val(GetText(spdVar, iMoiturewt, Row))
                MsgBox "Gross weight must be greater than Tare weight", vbInformation, head
                spdVar.SetText iNetwt, Row, netwt
                Exit Sub
            End If
            
            netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row)) - val(GetText(spdVar, iMoiturewt, Row))
            
            If netwt <= 0 Then
                spdVar.SetText Itarewt, Row, "0.000"
                spdVar.SetText iMoiturewt, Row, "0.000"
                spdVar.SetText Igrosswt, Row, "0.000"
                spdVar.SetText iNetwt, Row, "0.000"
                spdVar.SetActiveCell Col, Row
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row)) - val(GetText(spdVar, iMoiturewt, Row))
                MsgBox "Nett Weight must be greater than zero"
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If


    If Col = Itarewt Then
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then
        Else
            If val(GetText(spdVar, Itarewt, Row)) > val(GetText(spdVar, Igrosswt, Row)) Then
                spdVar.SetText Itarewt, Row, "0.000"
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row)) - val(GetText(spdVar, iMoiturewt, Row))
                spdVar.SetText iNetwt, Row, netwt
                spdVar.SetActiveCell Itarewt, Row
                MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
                Exit Sub
            End If
            netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row)) - val(GetText(spdVar, iMoiturewt, Row))
            If netwt <= 0 Then
                spdVar.SetText Itarewt, Row, "0.000"
                spdVar.SetText iNetwt, Row, netwt
                MsgBox "Nett Weight must be greater than zero"
                spdVar.SetActiveCell Itarewt, Row
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If
    
    
    If Col = iMoitureper Then
    
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then
        Else
            a = Igrosswt
            b = Itarewt
            c = iMoitureper
            d = iMoiturewt
            
            If Col = iMoitureper Then
                gwt = val(GetText(spdVar, a, Row))
                If gwt > 0 Then
                    mwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, b, Row))
                    mwt = mwt * val(GetText(spdVar, c, Row)) / 100
                    spdVar.SetText iMoiturewt, Row, mwt
                End If
            End If
            netwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, b, Row)) - val(GetText(spdVar, d, Row))
            
            If netwt <= 0 Then
                spdVar.SetText Col, Row, "0.000"
                netwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, b, Row)) - val(GetText(spdVar, d, Row))
                spdVar.SetText iNetwt, Row, netwt
                spdVar.SetActiveCell Col, Row
                MsgBox "Nett Weight must be greater than zero", vbInformation, head
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If
End If
End If


If Opt = "add" Or Opt = "mod" Then

        If Row = spdVar.MaxRows And Col = 18 Then
            BUTTON(9).SetFocus
            Exit Sub
        Else
            spdVar.Col = 11
        End If
        'Else
'            spdVar.Col = 11
'            spdVar.SetFocus
        'End If
End If


Dim iRow As Integer
Dim dblTareWg As Double
Dim dblMoisWg As Double
Dim dblNetWg As Double

dblTareWg = 0
dblMoisWg = 0
dblNetWg = 0

For iRow = 1 To spdVar.MaxRows
    dblTareWg = dblTareWg + val(GetText(spdVar, Itarewt, iRow))
    dblMoisWg = dblMoisWg + val(GetText(spdVar, iMoiturewt, iRow))
    dblNetWg = dblNetWg + val(GetText(spdVar, Igrosswt, iRow))
Next
Txtfields(25).Text = Format(dblNetWg, "0.000")
Txtfields(26).Text = Format(dblTareWg, "0.000")
Txtfields(27).Text = Format(dblMoisWg, "0.000")


Set Rs = New Recordset
Rs.Open "Select SeasonCalcReq from rm_param", DB, adOpenStatic
If Rs(0) = "Y" Then
    Txtfields(28).Text = Format(val(Txtfields(25).Text) - (val(Txtfields(26).Text)), "0.000")
Else
    Txtfields(28).Text = Format(val(Txtfields(25).Text) - (val(Txtfields(26).Text) + val(Txtfields(27).Text)), "0.000")
End If


Exit Sub

spdVar_LeaveCell_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_LeaveCell of Form FrmArrival"

Exit Sub
End Sub

Private Sub SpdVar1_Advance(ByVal AdvanceNext As Boolean)

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

Private Sub StockClose_Click()
On Error GoTo StockClose_Click_Error

Frame14.Visible = False
'txtfields(2).SetFocus
'txtFields(2).Text = ""
Text3.Text = ""
Call BUTTON_Click(10)

Exit Sub
StockClose_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockClose_Click of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub StockOk_Click()
On Error GoTo StockOk_Click_Error

Dim dblGrWt As Double
sInwardNo = ""
sInwardDate = ""

    intervalMinutes = -1
    
''    If LstPO.SelCount = 0 Then
''        MsgBox "Select Order from the list", vbInformation, head
''        Screen.MousePointer = 0
''        Exit Sub
''    End If
    If ListPO.ListItems.Count = 0 Then
        MsgBox "Select Order from the list", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    totrow = 0
    For lRow = 1 To ListPO.ListItems.Count
        If ListPO.ListItems.Item(lRow).Checked = True Then
            totrow = totrow + 1
        End If
    Next
    gcontno = ""
    gcontdt = ""
    gvarcode = ""
    gVarName = ""
    Gbalqty = 0
    dblGrWt = 0
    
    If totrow = 0 Then
        MsgBox "Select Any Order from the list", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    Frame14.Visible = False
    GG = 1
''    For lRow = 0 To LstPO.ListCount - 1
''        If LstPO.Selected(lRow) = True Then
''            totrow = totrow + 1
''        End If
''    Next
        
    Call SpreadAlign(CInt(totrow))
    
    ''For lRow = 0 To LstPO.ListCount - 1
     For lRow = 1 To ListPO.ListItems.Count
        ''If LstPO.Selected(lRow) = True Then
        If ListPO.ListItems.Item(lRow).Checked = True Then
            
            '      No   Date       varcode                varname     balqty   rate  unit
            ''     1-8  10-19      21-30                  32-71       73-82    83-92 94-103
            sOrdNo = ListPO.ListItems.Item(lRow).Tag      'Left(Trim(Mid(LstPO.List(lRow), 1, 8)), 1)
            
            iLenght = Len(Trim(sOrdNo)) '' Len(Trim(Mid(LstPO.List(lRow), 1, 8)))
            
            gcontno = sOrdNo  'Trim(Mid(LstPO.List(lRow), 1, 8))

            gcontdt = ListPO.ListItems.Item(lRow).SubItems(1)    ''Trim(Mid(LstPO.List(lRow), 10, 10))
            gvarcode = ListPO.ListItems.Item(lRow).SubItems(2)   ''Trim(Mid(LstPO.List(lRow), 22, 11))
            gVarName = ListPO.ListItems.Item(lRow).SubItems(3)   '' Trim(Mid(LstPO.List(lRow), 30, 20))
            Gbalqty = val(ListPO.ListItems.Item(lRow).SubItems(4))    ''val(Mid(LstPO.List(lRow), 51, 13))
            gDivision = ListPO.ListItems.Item(lRow).SubItems(7)   ''Trim(Mid(LstPO.List(lRow), 90, 2))
            
'
'            If sOrdNo = "C" Then
'                spdVar.SetText IContno, GG, "C" & gcontno
'            Else
                spdVar.SetText IContno, GG, gcontno
'            End If
            
            spdVar.SetText IContdt, GG, gcontdt
            spdVar.SetText IVarcode, GG, gvarcode
            spdVar.SetText IVarName, GG, gVarName
           
            
            Set partyrs = New Recordset
            If globalarrivalorder = "C" Then
                partyrs.Open "select distinct supcd,brkcd,areacode,isnull(cntcode,'')as count,bbflag,weignment,COLORCODE,CARCODE,rateunit,dlytype,RATEUNIT,prno,pressmarkno,plotno,CANDYRATE,ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,ORDKGS,ISNULL(RCDKGS,0)RCDKGS,isnull(sno,'0') SNO,isnull(PLCode,'') PLCode,isnull(line_no,'') line_no,OCDocNo,OCDocDate ,OcNo,Ocdate from rm_cont where varcode='" & gvarcode & "' and contno='" & gcontno & "' and contdt='" & Format(gcontdt, "yyyy-mm-dd") & "'  and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic, adLockBatchOptimistic
            Else
                partyrs.Open "select distinct supcd,brkcd,areacode,isnull(cntcode,'')as count,bbflag,weignment,COLORCODE,CARCODE,rateunit,dlytype,RATEUNIT,prno,pressmarkno,plotno,CANDYRATE,ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,ORDKGS,ISNULL(RCDKGS,0)RCDKGS,isnull(sno,'0') SNO,isnull(PLCode,'') PLCode,isnull(line_no,'') line_no,OCDocNo,OCDocDate ,OcNo,Ocdate from rm_cont where varcode='" & gvarcode & "' and contno='" & gcontno & "' and contdt='" & Format(gcontdt, "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic, adLockBatchOptimistic
            End If
            
            Txtfields(33).Text = partyrs("Plcode")
            Txtfields(34).Text = partyrs("line_no")
            
            Txtfields(38).Text = partyrs("OCDocNo")
            MaskEdBox1(6).Text = partyrs("OCDocDate")
            
            Txtfields(35).Text = partyrs("OcNo")
            MaskEdBox1(4).Text = partyrs("Ocdate")
            
            If partyrs("ARRIVALTYPE") = "P" Then
                spdVar.SetText Ibalqty, GG, Gbalqty
            Else
                spdVar.SetText Igrosswt, GG, Gbalqty
                spdVar.SetText iNetwt, GG, Gbalqty
                dblGrWt = dblGrWt + Gbalqty
            End If
            
            
            
            Set RSV = New Recordset
            RSV.Open "select isnull(plotno,'')plotno,isnull(prno,'')prno,isnull(pressmarkno,'')pressmarkno FROM rm_sample where sno=" & partyrs("SNO") & " and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
        
            If RSV.RecordCount > 0 Then
              spdVar.SetText Iplotno, GG, RSV("plotno")
              Else
                spdVar.SetText Iplotno, GG, partyrs("plotno")
            
            End If
            Set Rs = New Recordset
            Rs.Open "SELECT GMSINSTALL FROM rm_param", DB, adOpenStatic
            
            If Rs(0) = "Y" Then
                Set Rs = New Recordset
                Rs.Open " SELECT a.Sno, a.Date1,a.veh_code,a.lrno,a.veh_courier FROM IO_materialinward a, IO_materialinwarddt b " & _
                        " WHERE a.divcode=b.divcode AND a.sno= b.sno and  a.slcode LIKE 'C1%'" & _
                        " AND a.slcode ='" & Trim(Txtfields(2).Text) & "' AND pordno='" & gcontno & "' AND porddt ='" & Format(gcontdt, "YYYY-MM-DD") & "'  and a.sno not in(select inwardno from rm_arrival where divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and inwardno is not null)", DB, adOpenStatic
                If Rs.EOF = False Then
                    Txtfields(30).Text = IIf(IsNull(Rs(0)), "", Rs(0))
                    MaskEdBox1(3).Text = Format(Rs(1), "DD/MM/YYYY")
                    Txtfields(11).Text = IIf(IsNull(Rs(2)), "", Rs(2))
                    Txtfields(21).Text = IIf(IsNull(Rs(3)), "", Rs(3))
                    Txtfields(9).Text = IIf(IsNull(Rs(4)), "", Rs(4))
                Else
                    Txtfields(30).Text = ""
                    MaskEdBox1(3).Text = "__/__/____"
                    Txtfields(11).Text = ""
                    Txtfields(21).Text = ""
                    Txtfields(9).Text = ""
                End If
            End If
             

            If IsNull(partyrs("bbflAg")) = False Then
                If partyrs("bbflAg") = "B" Then
                 spdVar.SetText Iunit, GG, "Bale"
                ElseIf partyrs("bbflAg") = "R" Then
                 spdVar.SetText Iunit, GG, "Borah"
                ElseIf partyrs("bbflAg") = "H" Then
                 spdVar.SetText Iunit, GG, "HalfPressBale"
                End If
            End If
            
                       

          
            
            spdVar.SetText Iprno, GG, partyrs("prno")
            spdVar.SetText Ipressmarkno, GG, partyrs("pressmarkno")
            spdVar.SetText Imixcount, GG, partyrs("Count")

            Set Rs = New Recordset
            Rs.Open "select * from rm_MIXGRP where MIXGRPCD = '" & partyrs("Count") & "'", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
                spdVar.SetText Imixgrp, GG, Rs("mixgrpname")
            Else
                spdVar.SetText Imixcount, GG, ""
                spdVar.SetText Imixgrp, GG, ""
            End If
            spdVar.SetText Icandyrate, GG, partyrs("CANDYRATE")
            Txtfields(3).Text = IIf(IsNull(partyrs("brkcd")), "", partyrs("brkcd"))
            Set rsbrk = New Recordset
            rsbrk.Open "select * from fa_slmas where slcode='" & partyrs("brkcd") & "'", DB, adOpenStatic
            If rsbrk.RecordCount > 0 Then
                Text2.Text = rsbrk("slname")
            Else
                Text2.Text = ""
                
            End If
            
            



            Txtfields(4).Text = IIf(IsNull(partyrs("areacode")), "", partyrs("areacode"))
            Txtfields(13).Text = IIf(IsNull(partyrs("weignment")), "", partyrs("weignment"))
           
            Set Rs = New Recordset
            Rs.Open "select areaname from rm_area where areacode = '" & Txtfields(4).Text & "'", DB, adOpenStatic
            If Rs.RecordCount <> 0 Then
              Text3.Text = Rs("areaname")
            Else
              Text3.Text = " "
            End If

            
            GG = GG + 1
        End If
    Next
    Txtfields(3).Locked = True
'    txtFields(4).Locked = True
    Txtfields(25).Text = Format(dblGrWt, "0.000")
    Txtfields(28).Text = Format(dblGrWt, "0.000")
    
'    Set rsd = New Recordset
'    rsd.Open "SELECT ISNULL(MAX(ARRNO),0)+1 AS ARRNO FROM RM_ARRIVAL WHERE LOTTYPE='A' AND ARRdAtE between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db, adOpenStatic
'    If rsd.RecordCount > 0 Then
'        txtFields(0).Text = rsd("ARRNO")
'    Else
'        txtFields(28).Text = "1"
'    End If
    SSTab1.Enabled = True
    Txtfields(13).Text = ""
    Txtfields(13).Locked = False
    Txtfields(13).SetFocus
''    spdVar.col = 6

''    spdVar.TypeComboBoxString = "Bale"
''    spdVar.TypeComboBoxString = "Borah"
''    spdVar.TypeComboBoxString = "HalfPressBale"


Exit Sub
StockOk_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockOk_Click of Form FrmArrival", vbInformation, head

Exit Sub
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo Txtfields_Change_Error
intervalMinutes = -1

If Opt = "add" Or Opt = "mod" Or Opt = "" Or Opt = " " Or Opt = "fnd" Then
Select Case Index

 Case 33
    Set rs2 = New Recordset
    rs2.Open "select plname from rm_plant where plcode='" & Txtfields(33).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
    If rs2.RecordCount = 0 Then
        Text10.Text = ""
        Exit Sub
    Else
        Text10.Text = rs2(0)
    End If

Case 32
       Set Rs = New Recordset
       Rs.Open "SELECT * FROM RM_Ginner WHERE GinCode='" & Txtfields(32).Text & "'", DB, adOpenStatic
       If Rs.EOF = False Then
           Txtfields(31).Text = Rs("GinNAME")
       Else
           Txtfields(31).Text = ""
       End If

Case 29
        Set Rs = New Recordset
            Rs.Open "SELECT * FROM RM_CAT WHERE CATCD='" & Txtfields(29).Text & "'", DB, adOpenStatic
            If Rs.RecordCount <> 0 Then
                Text9.Text = Rs("CATNAME")
            End If
Case 2
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(2).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
'            TXTFIELDS(2).Text = rs("SUPCD")
            Text1.Text = Rs("slname")
        Else
          Text1.Text = ""
        End If

Case 3
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(3).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
              Text2.Text = Rs("slname")
        Else
            Text2.Text = ""
        End If

Case 4
        Set Rs = New Recordset
        Rs.Open "select areaname from rm_area where areacode = '" & Txtfields(4).Text & "' ", DB, adOpenStatic
     If Rs.RecordCount <> 0 Then
            Text3.Text = Rs("areaname")
        Else
            Text3.Text = ""
        End If

Case 5
        Set Rs = New Recordset
        Rs.Open "Select varname from rm_var where varcode='" & Txtfields(5).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
            Txtfields(20).Text = Rs("varname")
        Else
           Txtfields(20).Text = ""
        End If
        
 Case 13
        Set Rs = New Recordset
        Rs.Open "select wname from rm_weighnment where code='" & Txtfields(13).Text & "'", DB, adOpenDynamic, adLockOptimistic
        If Rs.RecordCount <> 0 Then
            Text8.Text = Rs("wname")
        Else
            Text8.Text = ""
        End If
Case 9
        Set Rs = New Recordset
        Rs.Open "select carname from po_car where carcode='" & Txtfields(9).Text & "'", DB
        If Rs.RecordCount <> 0 Then
            Text7.Text = Rs("carname")
        Else
            Text7.Text = ""
        End If
Case 22
        Set rs1 = New Recordset
        'txtFields(22).Text = gCode
        If rs1.State = 1 Then
            rs1.Close
            Set rs1 = New Recordset
        End If
        rs1.Open "select gname from rm_god where gcode='" & Txtfields(22).Text & "' AND Divcode = " & Divcode, DB
        If rs1.RecordCount <> 0 Then
            Txtfields(23).Text = rs1("gname")
        Else
            Txtfields(23).Text = ""
        End If
        'txtFields(22).Text = gCode
End Select
End If

If Opt = "" Or Opt = " " Then
    Select Case Index
    
    Case 14
            Txtfields(14).Text = Format(Txtfields(14).Text, "#0.00")
    Case 19
            Txtfields(19).Text = Format(Txtfields(19).Text, "###########")
    Case 16
            Txtfields(16).Text = Format(Txtfields(16).Text, "#0.000")
    Case 17
            Txtfields(17).Text = Format(Txtfields(17).Text, "#0.000")
    Case 18
            Txtfields(18).Text = Format(Txtfields(18).Text, "#0.000")
    End Select
End If

'Txtfields(11).Text = sLorryNo


Exit Sub
Txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form FrmArrival", vbInformation, head

End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error
    If Index <> 23 And Index <> 89 And Index <> 90 And Index <> 91 And Index <> 95 And Index <> 25 And Index <> 26 And Index <> 27 And Index <> 28 Then
    Txtfields(Index).BackColor = &HC0FFC0
    End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
     Case 0
          StatusBar1.Panels(2).Text = "Enter Arrival Number"
     Case 1
          StatusBar1.Panels(2).Text = "Enter Purchase Order No. "
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
     Case 13
          StatusBar1.Panels(2).Text = "Enter ATL Number"
     Case 6
          StatusBar1.Panels(2).Text = "Enter Count Type"
     Case 8
          StatusBar1.Panels(2).Text = "Enter Maximum of 15 Characters"
     Case 11
          StatusBar1.Panels(2).Text = "Enter Maximum of 50 Characters"
     Case 14
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers with 2 Decimal Places"
     Case 16
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 3 Decimal Places"
     Case 18
          'StatusBar1.Panels(2).Text = "Enter Net Weight"
     Case 15
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers "
     Case 17
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers with 3 Decimal Places"
     Case 19
          'StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 2 Decimal Places"
          End Select

End If
'If opt = "add" Or opt = "mod" Then
'Select Case Index
'    Case 0
'        statusbar1.Panels(2).Text = "Enter Three Charecter Division Code "
'    Case 1
'        statusbar1.Panels(2).Text = "Enter 4 Digit Arrival Number"
'    Case 2
'       statusbar1.Panels(2).Text = "Enter a Valid Date"
'    Case 3
'        statusbar1.Panels(2).Text = "Enter 4 Digit Contract Number"
'End Select
'End If

Select Case Index
Case 1
If Opt = "add" Then
If Txtfields(1).Text = "" Then
   Set Rs = New Recordset
   ''rs.Open "select * from rm_cont a where ordqty>isnull(recqty,0) and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
   If globalarrivalorder = "C" Then
        Rs.Open "select contno""OrderNo"",contdt""Date"",Slname""Supplier"",Varname""Variety"" from rm_cont a,fa_slmas b,rm_var c where a.supcd=b.slcode and  a.varcode=c.varcode and ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and  contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic, adLockBatchOptimistic
   Else
        Rs.Open "select contno""OrderNo"",contdt""Date"",Slname""Supplier"",Varname""Variety"" from rm_cont a,fa_slmas b,rm_var c where a.supcd=b.slcode and  a.varcode=c.varcode and ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And Divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
   End If
   
   If Rs.RecordCount = 0 Then
        MsgBox "First enter Details in Order Transaction", vbInformation, head
        Call BUTTON_Click(10)
   Else
      Label15.Caption = "Purchase Order Details"
      StatusBar1.Panels(2).Text = "Select Purchase Order number from the list"
      LookUp.Clear = True
      If globalarrivalorder = "C" Then
            LookUp.query = "select contno""OrderNo"",contdt""Date"",Slname""SupplierName"",Varname""VarietyName"" from rm_cont a,fa_slmas b,rm_var c where a.supcd=b.slcode and  a.varcode=c.varcode and ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
      Else
            LookUp.query = "select contno""OrderNo"",contdt""Date"",Slname""SupplierName"",Varname""VarietyName"" from rm_cont a,fa_slmas b,rm_var c where a.supcd=b.slcode and  a.varcode=c.varcode and ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And Divcode = '" & Divcode & "'"
      End If
      
      LookUp.DefCol = "OrderNo"
      LookUp.Caption = "Purchase Order Listing"
      LookUp.ALIGN = "1000,1500,2500,2500"
      LookUp.Show vbModal
      If LookUp.Cancel = False Then
            Txtfields(1).Text = LookUp.Fields(0)
            MaskEdBox1(1).Text = Format(LookUp.Fields(1), "dd/mm/yyyy")
            Dim partyrs As Recordset
            Set partyrs = New Recordset
            If globalarrivalorder = "C" Then
                partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,''),candyrate,bbflag,ordqty-(isnull(recqty,0)+isnull(cancelbales,0)) ,weignment,rateunit,ISNULL(PLOTNO,'')PLOTNO,ISNULL(PRNO,'')PRNO,ISNULL(PRESSMARKNO,'')PRESSMARKNO from rm_cont where contno='" & Txtfields(1).Text & "' and contdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic, adLockBatchOptimistic
            Else
                partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,''),candyrate,bbflag,ordqty-(isnull(recqty,0)+isnull(cancelbales,0)) ,weignment,rateunit,ISNULL(PLOTNO,'')PLOTNO,ISNULL(PRNO,'')PRNO,ISNULL(PRESSMARKNO,'')PRESSMARKNO from rm_cont where contno='" & Txtfields(1).Text & "' and contdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
            End If
            
            Txtfields(2).Text = partyrs(0)
            Txtfields(3).Text = IIf(IsNull(partyrs(1)), "", partyrs(1))
            Txtfields(4).Text = IIf(IsNull(partyrs(2)), "", partyrs(2))
            Txtfields(5).Text = partyrs(3)
            Txtfields(6).Text = partyrs(4)
            Txtfields(13).Text = IIf(IsNull(partyrs("weignment")), "", partyrs("weignment"))
            Txtfields(15).Text = partyrs(7)
            Txtfields(19).Text = Format(partyrs(5), "##########")
            Label31.Caption = partyrs("rateunit")
            Txtfields(12).Text = partyrs("pLOTNO")
            Txtfields(8).Text = partyrs("PRESSMARKNO")
            Txtfields(7).Text = partyrs("PRNO")
            If partyrs(6) = "B" Then
                Combo1.Text = "Bale"
            ElseIf partyrs(6) = "R" Then
               Combo1.Text = "Borah"
            End If
            For I = 0 To 6
            If I <> 4 Then Txtfields(I).Locked = True
            Next
            Txtfields(13).Locked = True
            Set rsa = New Recordset
            rsa.Open "select ordqty-(isnull(recqty,0)+isnull(cancelbales,0)) as balqty,ordqty,recqty,cancelbales from rm_cont where contno='" & LookUp.Fields(0) & "' and contdt ='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' ", DB
''            If rsa.RecordCount > 0 Then
''                Label30.Caption = "Balance Quantity : " & rsa("balqty")
''                Label30.Visible = False
''            End If
            Text4.Locked = True
            Txtfields(19).Locked = True
            Txtfields(0).Locked = True
            Txtfields(0).Locked = False
            Txtfields(2).Locked = False
            Txtfields(24).Locked = False
            Txtfields(23).Text = ""
            Text7.Text = ""
            LookUp.Clear = True
           
            
            Txtfields(89).Text = CStr(IIf(IsNull(rsa("ordqty")) = True, 0, rsa("ordqty")))
            Txtfields(90).Text = CStr(IIf(IsNull(rsa("RECQTY")) = True, 0, rsa("RECQTY")))
            Txtfields(91).Text = CStr(val(rsa(0)))
            Txtfields(95).Text = CStr(IIf(IsNull(rsa("cancelbales")) = True, 0, rsa("cancelbales")))

            Txtfields(12).SetFocus
      Else
        Call BUTTON_Click(10)
      End If
  End If
End If
End If

If Opt = "mod" Then
      Label15.Caption = "Purchase Order Details"
      SSTab1.Visible = False
      Ksllist1.conn = connectstring
      If globalarrivalorder = "C" Then
        Ksllist1.Table = "rm_cont a  where and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
      Else
         Ksllist1.Table = "rm_cont a where divcode='" & Divcode & "' "
      End If
      Ksllist1.listfield1 = "cast(a.contno as varchar)"
      Ksllist1.listfield2 = "convert(varchar,contdt,103)"
      Frame3.Visible = True
      Frame3.ZOrder
End If
End Select


Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form FrmArrival", vbInformation, head
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
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

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtfields_KeyPress_Error
intervalMinutes = -1
If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 4
    ToUpCase Txtfields(Index), KeyAscii
Case 7
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 20, KeyAscii
Case 8
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 15, KeyAscii
Case 9
    ToUpCase Txtfields(Index), KeyAscii
Case 10
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 10, KeyAscii
Case 11
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphanum Txtfields(Index), 30, KeyAscii
Case 12
    ToUpCase Txtfields(Index), KeyAscii
Case 13
    ToUpCase Txtfields(Index), KeyAscii
Case 14
    If KeyAscii = 45 Then KeyAscii = 0
   ' ToNumbernew txtfields(Index), 9, KeyAscii, 9, 2
Case 15
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber Txtfields(Index), 9, KeyAscii
Case 16
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 Txtfields(Index), 7, KeyAscii, 0
Case 17
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 Txtfields(Index), 5, KeyAscii, 0
Case 18
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 Txtfields(Index), 7, KeyAscii, 0
Case 21
    ToAlphanum Txtfields(Index), 20, KeyAscii
End Select
End If
'If opt = "add" Or opt = "mod" Then
'Select Case Index
'     Case 0
'          statusbar1.Panels(2).Text = "Enter Arrival Number"
'     Case 1
'          statusbar1.Panels(2).Text = "Enter Contract "
'     Case 2
'          statusbar1.Panels(2).Text = "Enter Party Code"
'     Case 3
'          statusbar1.Panels(2).Text = "Enter Broker Code"
'     Case 4
'          statusbar1.Panels(2).Text = "Enter Area Code"
'     Case 5
'          statusbar1.Panels(2).Text = "Enter The variety"
'     Case 7
'          statusbar1.Panels(2).Text = "Enter PR Number"
'     Case 9
'          statusbar1.Panels(2).Text = "Enter Transaction Name"
'     Case 10
'          statusbar1.Panels(2).Text = "Enter GC Number"
'     Case 12
'          statusbar1.Panels(2).Text = "Enter Party Lot Number"
'     Case 13
'          statusbar1.Panels(2).Text = "Enter ATL Number"
'     Case 6
'          statusbar1.Panels(2).Text = "Enter Count Type"
'     Case 8
'          statusbar1.Panels(2).Text = "Enter PR Mark"
'     Case 11
'          statusbar1.Panels(2).Text = "Enter Lorry Number"
'     Case 14
'          statusbar1.Panels(2).Text = "Enter Freight"
'     Case 16
'          statusbar1.Panels(2).Text = "Enter Gross Weight"
'     Case 18
'          statusbar1.Panels(2).Text = "Enter Net Weight"
'     Case 15
'          statusbar1.Panels(2).Text = "Enter Number of Bales"
'     Case 17
'          statusbar1.Panels(2).Text = "Enter Tare Weight"
'     Case 19
'          statusbar1.Panels(2).Text = "Enter Rate/Candy"
'          End Select
'
'End If

Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
'StatusBar1.Panels(2).Text = ""
On Error GoTo txtfields_LostFocus_Error
    If Index <> 23 And Index <> 89 And Index <> 90 And Index <> 91 And Index <> 95 And Index <> 25 And Index <> 26 And Index <> 27 And Index <> 28 Then
        Txtfields(Index).BackColor = &HFFFFFF
    End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 30
    Dim rstChk As Recordset
    Set frs = New Recordset
    frs.Open "select gmsinstall from rm_param", DB
    If frs(0) = "Y" Then
        If Opt = "add" Or Opt = "mod" Then
            Set Rs = New Recordset
            Rs.Open "SELECT sno,Date1 FROM io_materialinward WHERE sno='" & val(Txtfields(30).Text) & "' AND DIVCODE='" & Divcode & "' and date1 between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic
            Set rstChk = New Recordset
            
            rstChk.Open "SELECT sno""Inward No"",Date1""Inward Date"" from io_materialinward WHERE DIVCODE='" & Divcode & "'and date1 between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and sno not in(select inwardno from rm_arrival where divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and inwardno is not null)", DB, adOpenStatic
            If Not rstChk.EOF Then
            
            If Rs.RecordCount = 0 Then
                Label15.Caption = "Material Inward List"
                StatusBar1.Panels(2).Text = "Select Material Inward No. From the List"
                LookUp.Clear = True
                
                Set frs = New Recordset
                frs.Open "select ptypeCotton from Masterlen", DB
                
                
                LookUp.query = "SELECT Distinct a.sno""Inward No."",Date1""Inward Date"",SLNAME ""Supplier Name"",pordno""Purchase Order No."" FROM IO_MATERIALINWARD A ," & _
                               " IO_MATERIALINWARDDT B, fa_slmas C WHERE A.SNO =B.SNO AND A.DIVCODE =B.DIVCODE AND A.SLCODE=C.SLCODE AND " & _
                               " a.slcode like '" & frs(0) & "%' and  a.DIVCODE='" & Divcode & "'and date1 between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & _
                               "' and a.sno not in(select inwardno from rm_arrival where divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and inwardno is not null)"
                               
                               
                LookUp.DefCol = "Inward No"
                LookUp.Caption = "Material Inward Listing"
                LookUp.ALIGN = "1200,1200,4000,1750"
               LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    Txtfields(30).Text = LookUp.Fields(0)
                    MaskEdBox1(3).Text = LookUp.Fields(1)
                    LookUp.Clear = True
                    Txtfields(32).SetFocus
                Else
                    Txtfields(30).Text = ""
                    'MaskEdBox1(3).Text = ""
                    Txtfields(32).SetFocus
                End If
            Else
                Txtfields(30).Text = Rs(0)
                MaskEdBox1(3).Text = Rs(1)
                Txtfields(32).SetFocus
            End If
            Else
                MsgBox "No Details in List", vbInformation, head
                Txtfields(32).SetFocus
            End If
        End If
    End If
    Exit Sub
Case 32
    
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM Rm_ginner WHERE GinCODE='" & Trim(Txtfields(32).Text) & "'", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            LookUp.Clear = True
            LookUp.query = " select Gincode""Ginner Code"",GinName""Ginner Name"" from RM_Ginner"
            LookUp.Caption = "Ginner List"
            LookUp.DefCol = "Ginner Name"
            LookUp.ALIGN = "1600,3500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Txtfields(32).Text = LookUp.Fields(0)
                Txtfields(31).Text = LookUp.Fields(1)
                LookUp.Clear = True
                Txtfields(11).SetFocus
            Else
                Txtfields(32).Text = ""
                Txtfields(31).Text = ""
                Txtfields(11).SetFocus
            End If
        Else
            Txtfields(31).Text = Rs("ginname")
        End If
        Exit Sub
   


Case 24

If Txtfields(24).Text <> "" Then
If val(Txtfields(24).Text) >= val(Txtfields(16).Text) Then
    
    MsgBox "Moisture Weight must be less than Gross Weight ", vbInformation, head
    Txtfields(24).Text = ""
    Txtfields(24).SetFocus
ElseIf Trim(Txtfields(16).Text) <> "" And Txtfields(24).Text <> "" Then
    Txtfields(18).Text = Format(val(Txtfields(16).Text) - val(Txtfields(17).Text) - val(Txtfields(24).Text), "0.000")
    Txtfields(18).Locked = True
   ' txtfields(24).Locked = True
End If
End If
Case 22
    Set rstSLOTNO = New Recordset
    spdVar.Row = 2
    If globalarrivalorder = "C" Then
        rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & val(GetText(spdVar, IContno, 1)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, 1), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))  ", DB, adOpenStatic
    Else
        rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & val(GetText(spdVar, IContno, 1)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, 1), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(Txtfields(2).Text) & "' AND Divcode ='" & Divcode & "'", DB, adOpenStatic
    End If
    
    If rstSLOTNO.EOF = False Then StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO!SUPPLIERLOTNOFROM & " and " & rstSLOTNO!SUPPLIERLOTNOTO



Case 15
If Opt = "add" Then
    Dim CNTRS As Recordset
    If Trim(Txtfields(15).Text) = "" Then
      MsgBox "Arrived Please enter Quantity", vbInformation, head
      Txtfields(15).SetFocus
      Exit Sub
    End If
    
    Set CNTRS = New Recordset
    If globalarrivalorder = "C" Then
        CNTRS.Open "select ordqty-isnull(recqty,0) from rm_cont where contno='" & iMaxNo & "'  and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic, adLockBatchOptimistic
    Else
        CNTRS.Open "select ordqty-isnull(recqty,0) from rm_cont where contno='" & iMaxNo & "'  and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    End If
    
    If val(Txtfields(15).Text) > CNTRS(0) Then
    Txtfields(15).Text = CNTRS(0)
    MsgBox "Arrived Quantity must be less than or equal to Ordered Quantity" & -CNTRS(0), vbInformation, head
    Txtfields(15).SetFocus
    Exit Sub
    End If
    
ElseIf Opt = "mod" Then
    Dim modrs As Recordset
    Set modrs = New Recordset
    If globalarrivalorder = "C" Then
        modrs.Open "select ordqty,recqty,ordqty-isnull(recqty,0) from rm_cont  where contno='" & Txtfields(1).Text & "'  and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic, adLockBatchOptimistic
    Else
        modrs.Open "select ordqty,recqty,ordqty-isnull(recqty,0) from rm_cont  where contno='" & Txtfields(1).Text & "'  and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "'and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
    End If
    
    Dim arrs As Recordset
    If modrs(2) <> 0 Then
    If val(Txtfields(15).Text) > modrs(2) + oldqty Then
        Txtfields(15).Text = modrs(2) + oldqty
        MsgBox "Arrived Quantity must be less than or equal to Ordered Quantity" & modrs(2) + oldqty, vbInformation, head
        Txtfields(15).SetFocus
        Exit Sub
    End If
    ElseIf modrs(2) = 0 Then
        OLDQTY1 = modrs(1)
        If val(Txtfields(15).Text) > OLDQTY1 Then
        Txtfields(15).Text = OLDQTY1
        MsgBox "Arrived Quantity must be less than or equal to Ordered Quantity  " & OLDQTY1, vbInformation, head
        Txtfields(15).SetFocus
        Exit Sub
    End If
    
        
    End If
End If
Case 17
'If Format(Trim(Txtfields(17).Text), "#####.000") = "" Then
'        MsgBox "Please enter Tare Weight", vbInformation, head
'
'        Txtfields(17).SetFocus
'
'        Exit Sub
'End If
If Txtfields(16).Text <> "" Then
If val(Txtfields(17).Text) >= val(Txtfields(16).Text) Then
    
    MsgBox "Tare weight must be less than Gross Weight ", vbInformation, head
    Txtfields(17).Text = ""
    Txtfields(17).SetFocus
ElseIf Trim(Txtfields(16).Text) <> "" And Txtfields(17).Text <> "" Then
    Txtfields(18).Text = Format(val(Txtfields(16).Text) - val(Txtfields(17).Text) - val(Txtfields(24).Text), "0.000")
    Txtfields(18).Locked = True
    Txtfields(19).Locked = True
End If
End If
Case 16
     If Trim(Txtfields(16).Text) = "" Then
        MsgBox "Please enter Gross Weight", vbInformation, head
        Txtfields(16).Locked = False
        Txtfields(16).SetFocus
        Exit Sub
     End If
Case 6
     If Trim(Txtfields(6).Text) = "" Then
       MsgBox "Please enter Count Code", vbInformation, head
        Txtfields(16).SetFocus
        Exit Sub
     End If
      
End Select
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0
    StatusBar1.Panels(2).Text = ""
Case 9
    If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "select carcode,carname from po_car where carcode='" & Txtfields(9).Text & "'", DB
        If Rs.RecordCount > 0 Then
            Txtfields(9).Text = Rs(0)
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
                Txtfields(9).Text = LookUp.Fields(0)
                Text7.Text = LookUp.Fields(1)
                LookUp.Clear = True
                Txtfields(21).SetFocus
            Else
'                txtfields(9).Text = ""
'                Text7.Text = ""
'                txtfields(9).SetFocus
                Call BUTTON_Click(10)
                Exit Sub
            End If
        End If
    End If
     BUTTON(9).Enabled = True

Case 4
'    If Frame3.Visible = True Then
'        Exit Sub
'    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_area", DB
    If Not rs4(0) = 0 Then
        Set Rs = New Recordset
        Rs.Open "select areacode,STATION from rm_area where areacode = '" & Txtfields(4).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        
            If Rs.RecordCount = 0 Then
                StatusBar1.Panels(2).Text = "Select Station Code From the List"
                LookUp.Clear = True
                LookUp.query = "SELECT areacode""Station Code"",Station""Station Name"" from RM_Area"
                LookUp.DefCol = "Station Name"
                LookUp.Caption = "Station List"
                LookUp.ALIGN = "2000,3000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    Txtfields(4).Text = LookUp.Fields(0)
                    Text3.Text = LookUp.Fields(1)
                    LookUp.Clear = True
                    Txtfields(13).SetFocus
                    Exit Sub
                Else
                    Txtfields(4).Text = ""
                    Text3.Text = ""
                    Txtfields(4).SetFocus
                    Exit Sub
                End If
            End If
    Else
        MsgBox "Please define the Station Name in Set Up!", vbInformation, head
        Exit Sub
    End If
    Exit Sub
Case 13
If Trim(Txtfields(4).Text) <> "" Then
Set Rs = New Recordset
    Rs.Open "select * from rm_weighnment where divcode='" & Divcode & "' and code='" & Trim(Txtfields(13).Text) & "' ", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
        LookUp.Clear = True
        LookUp.query = "select code as ""Weighment Code"",wname as ""Weighment Name"" from rm_weighnment where divcode='" & Divcode & "' "
        LookUp.DefCol = "Weighment Name"
        LookUp.Caption = "Weighment Listing"
        LookUp.ALIGN = "2000,3000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Txtfields(13).Text = LookUp.Fields(0)
            Text8.Text = LookUp.Fields(1)
            LookUp.Clear = True
            Txtfields(14).SetFocus
        Else
            Txtfields(13).Text = ""
            Text8.Text = ""
        End If
        LookUp.Clear = True
    Else
        Text8.Text = Rs("wname")
    End If
    End If
    Exit Sub
Case 14
Txtfields(14).Text = Format(Txtfields(14).Text, "#0.00")
Case 19
Txtfields(19).Text = Format(Txtfields(19).Text, "##########")
Case 16
Txtfields(16).Text = Format(Txtfields(16).Text, "#0.000")
Case 17
Txtfields(17).Text = Format(Txtfields(17).Text, "#0.000")
Case 18
Txtfields(18).Text = Format(Txtfields(18).Text, "#0.000")
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

Case 11
   If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "select a.Docno,b.DOCDT ,c.varname 'Item Description',a.CONTAINERNO 'CONTAINER NO.',a.Bales,a.GrossWt ,a.Quantity,  a.ITEMCODE from IM_RECCOPYdt1 a inner join rm_var c on c.varcode=a.itemcode inner join IM_RECCOPYhd b on a.docno=b.docno and a.docdt=b.docdt and a.divcode=b.divcode where ISNULL(RecFlg,'N')<>'Y' and a.DivCode='" & Divcode & "' and OCNO ='" & val(Txtfields(38).Text) & "' and OCDate='" & Format(Trim(MaskEdBox1(6).Text), "yyyy-mm-dd") & "' and a.CONTAINERNO='" & Txtfields(11).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            'Label15.Caption = "Godown List"
            StatusBar1.Panels(2).Text = "Select Container From the List"
            LookUp.Clear = True
            LookUp.query = "select c.varname 'Item Description',a.CONTAINERNO 'Container No.',a.Docno 'Doc. No.',b.DOCDT 'Doc. Date',a.Bales,a.GrossWt 'Gross Wt.',a.Quantity 'Net Wt.',  a.ITEMCODE,a.DocSno 'Doc. SNo.' from IM_RECCOPYdt1 a inner join rm_var c on c.varcode=a.itemcode inner join IM_RECCOPYhd b on a.docno=b.docno and a.docdt=b.docdt and a.divcode=b.divcode where ISNULL(RecFlg,'N')<>'Y' and a.DivCode='" & Divcode & "' and OCNO ='" & val(Txtfields(38).Text) & "' and OCDate='" & Format(Trim(MaskEdBox1(6).Text), "yyyy-mm-dd") & "' "
            LookUp.DefCol = "CONTAINER NO."
            LookUp.Caption = "Container Listing"
            LookUp.ALIGN = "2200,1500,1500,1000,1000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                gCode = LookUp.Fields(0)
                Txtfields(11).Text = LookUp.Fields("Container No.")
         
                
                Txtfields(36).Text = LookUp.Fields("Doc. No.")
                Txtfields(37).Text = LookUp.Fields("Doc. SNo.")
                MaskEdBox1(5).Text = LookUp.Fields("Doc. Date")
               
                Txtfields(21).SetFocus
                spdVar.Row = spdVar.ActiveRow
               
                spdVar.Col = 5
                
                spdVar.Action = ActionActiveCell
'                SpdVar.SetText Ibalqty, SpdVar.ActiveRow, LookUp.Fields("Bales")
'                SpdVar.SetText IFullTruckWt, SpdVar.ActiveRow, LookUp.Fields("Gross Wt.")
'                SpdVar.SetText iNetwt, SpdVar.ActiveRow, LookUp.Fields("Net Wt.")
                 LookUp.Clear = True
                
                
                 
            Else
                
                Txtfields(11).Text = ""
                Txtfields(11).SetFocus
            End If
        Else
            Txtfields(11).Text = Rs(2)
           
            Txtfields(21).SetFocus
        End If
    End If
    BUTTON(9).Enabled = True

Case 0
       If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_arrival WHERE arrNO= " & MaxNo & "  and divcode='" & Divcode & "' AND ARRDATE='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
         'MsgBox " Contract Number already Defined Please Change the date", vbInformation, head
         'Txtfields(0).Text = ""
         'Cancel = True
         Exit Sub
        End If
        End If
        
'Case 9
'    If txtFields(9).Text = "" Then
'        txtFields(9).Locked = False
'        txtFields(9).SetFocus
'        Exit Sub
'    End If
Case 22

    If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "SELECT gcode,gname FROM rm_GOD WHERE GCODE='" & Txtfields(22).Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
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
                Txtfields(22).Text = LookUp.Fields(0)
                Txtfields(23).Text = LookUp.Fields(1)
                LookUp.Clear = True
                Txtfields(21).SetFocus
                spdVar.Row = spdVar.ActiveRow
                spdVar.Col = 5
                spdVar.Action = ActionActiveCell
            Else
                Txtfields(22).Text = ""
                Txtfields(23).Text = ""
                Txtfields(22).SetFocus
            End If
        Else
            Txtfields(22).Text = Rs(0)
            Txtfields(23).Text = Rs(1)
            Txtfields(21).SetFocus
        End If
    End If
    BUTTON(9).Enabled = True
Case 5
    If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_VAR WHERE VARCODE= '" & Txtfields(5).Text & "'  ", DB, adOpenStatic
        If Rs.RecordCount = 0 Then

            Label15.Caption = "Variety List"
            StatusBar1.Panels(2).Text = "Select Variety Code From the List"
            Frame3.Visible = True
            Frame3.ZOrder
            '''Buttonframe.Enabled = False
            Ksllist1.conn = connectstring
            Ksllist1.Table = "rm_var"
            Ksllist1.listfield1 = "Varcode"
            Ksllist1.listfield2 = "varname"
    End If

    End If
Case 10

    If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_GINNING WHERE GCODE= " & val(Txtfields(10).Text) & "  ", DB, adOpenStatic
        If Rs.RecordCount = 0 Then

            Label15.Caption = "Ginning List"
            StatusBar1.Panels(2).Text = "Select Ginning Code From the List"
            Frame3.Visible = True
            Frame3.ZOrder
            '''Buttonframe.Enabled = False
            Ksllist1.conn = connectstring
            Ksllist1.Table = "rm_Ginning"
            Ksllist1.listfield1 = " CAST(Gcode as VARCHAR)"
            Ksllist1.listfield2 = "GHead"
    End If
    End If
Case 17
If Format(Trim(Txtfields(17).Text), "#####.000") = "" Then
        MsgBox "Please enter Tare Weight", vbInformation, head

        Cancel = True

        Exit Sub
End If
Case 2
    Dim itmX As ListItem
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
    intervalMinutes = -1
    Set rs4 = New Recordset
    rs4.Open "select count(*) from FA_SLMAS WHERE left(slcode,2) in (select Items from dbo.split('" & sup & "',','))", DB
    If Not rs4(0) = 0 Then
        Set Rs = New Recordset
        ''rs.Open "select SLcode from FA_SLMAS where SLcode = '" & txtfields(2).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If globalarrivalorder = "C" Then
            Rs.Open "select  slcode,isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  SLcode = '" & Txtfields(2).Text & "'  and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select  slcode,GROUPCODE from rm_cont a,fa_slmas b where  SLcode = '" & Txtfields(2).Text & "'  and a.supcd=b.slcode and (ordKGS>isnull(rcDKGS,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and isnull(OCNo,'')<>'' ", DB, adOpenStatic
        Else
            Rs.Open "select  slcode,isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  SLcode = '" & Txtfields(2).Text & "' and divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select  slcode,GROUPCODE from rm_cont a,fa_slmas b where  SLcode = '" & Txtfields(2).Text & "' and divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rcDKGS,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and isnull(OCNo,'')<>''", DB, adOpenStatic
        End If
        
        If Rs.BOF Then
            Label15.Caption = "Supplier List"
            StatusBar1.Panels(2).Text = "Select Supplier Code From the List"
            If globalarrivalorder = "C" Then
                qry = "select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where    a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where   a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and isnull(OCNo,'')<>'' " & _
                  "UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'') GROUPCODE from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and isnull(OCNo,'')<>''"
            Else
                qry = "select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and isnull(OCNo,'')<>''" & _
                  "UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'') GROUPCODE from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and isnull(OCNo,'')<>''"
            End If
            
            Set rsnew = New Recordset
            If globalarrivalorder = "C" Then
                rsnew.Open " select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where   a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where   a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and isnull(OCNo,'')<>''" & _
                           " UNION select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and isnull(OCNo,'')<>''", DB, adOpenStatic
            Else
                rsnew.Open " select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and isnull(OCNo,'')<>''" & _
                           " UNION select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and isnull(OCNo,'')<>''", DB, adOpenStatic
            End If
            grpcode = ""
            If rsnew.RecordCount > 0 Then
                grpcode = rsnew("GROUPCODE")
            End If
            
            StrAppQry = ""
            If POApproval = True Then
                StrAppQry = " and isnull(a.Appflg,'N')='Y' "
            End If
            
            LookUp.Clear = True

            If globalarrivalorder = "C" Then
            If grpcode = "" Then
                LookUp.query = " select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where   (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where   a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and isnull(OCNo,'')<>'' " & StrAppQry & "" & _
                           " UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO ,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and isnull(OCNo,'')<>'' " & StrAppQry & ""
            Else
                LookUp.query = " select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where    (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE ,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' and isnull(OCNo,'')<>'' " & _
                                " AND ISNULL(ARRIVALTYPE,'P')='K'  " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ")" & _
                           " UNION select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  A.prefix='C' and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  a.Prefix='C' and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") and isnull(OCNo,'')<>''"
            End If

            Else
            
            If grpcode = "" Then
                LookUp.query = " select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " and isnull(OCNo,'')<>'' " & _
                           " UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO ,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'" & StrAppQry & " and isnull(OCNo,'')<>''"
            Else
                LookUp.query = " select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE ,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") and isnull(OCNo,'')<>'' " & _
                           " UNION select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  A.prefix='C' and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  a.Prefix='C' and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") and isnull(OCNo,'')<>''"
            End If
            
            End If
            
            LookUp.Caption = "Supplier Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "1500,3800,2000,1500,0"
            LookUp.Show vbModal
            
            If LookUp.Cancel = False Then
                SuppType = LookUp.Fields("Supptype")
                Set Rs = New Recordset
                Rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields(0) & "'", DB
                If Not Rs.EOF Then
                       STATEFLAG = Rs(0)
                End If
                
                 If STATEFLAG <> "F" And SuppType = "R" Then
          
                    If Trim(LookUp.Fields("GSTINNO")) = "" Then
                        MsgBox "PLEASE ENTER GST NO IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                
                    If LookUp.Fields("GSTSTATECODE") = "0" Then
                        MsgBox "PLEASE ENTER GST STATE CODE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                   End If
            
                Txtfields(2).Text = LookUp.Fields(0)
                sCode = LookUp.Fields(0)
                Sname = LookUp.Fields(1)
                Text1.Text = LookUp.Fields(1)
                custgrp = LookUp.Fields(4)
                intervalMinutes = -1
'                Qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
'                      " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND supcd='" & Lookup.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P'" & _
'                      " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and divcode='" & Divcode & "' AND supcd='" & Lookup.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & _
'                      " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & Lookup.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & _
'                      " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND supcd='" & Lookup.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K')X order by cast(contno as VARCHAR(10)) "
 
                    If globalarrivalorder = "C" Then
                     If custgrp = "" Then
                        qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype,OCNO 'OCNO' " & _
                          " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype , isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and isnull(OCNo,'')<>'' " & _
                          " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0  AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and isnull(OCNo,'')<>''" & _
                          " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' and isnull(OCNo,'')<>'' " & _
                          " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' and isnull(OCNo,'')<>'' )X order by cast(contno as VARCHAR(10)) "
                    Else
                        qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype,OCNO 'OCNO' " & _
                          " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and isnull(OCNo,'')<>''" & _
                          " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0  AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and isnull(OCNo,'')<>''" & _
                          " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and isnull(OCNo,'')<>'' " & _
                          " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & "  AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and isnull(OCNo,'')<>'' )X order by cast(contno as VARCHAR(10)) "
                    End If

                Else

                
                If custgrp = "" Then
                    qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype ,OCNO 'OCNO' " & _
                      " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' and isnull(OCNo,'')<>''" & _
                      " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and divcode='" & Divcode & "' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' and isnull(OCNo,'')<>''  " & _
                      " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' and isnull(OCNo,'')<>'' " & _
                      " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' and isnull(OCNo,'')<>'')X order by cast(contno as VARCHAR(10)) "
                Else
                    qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype,OCNO 'OCNO' " & _
                      " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltyp, isnull(OCNo,'') OCNOe from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and isnull(OCNo,'')<>'' " & _
                      " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and divcode='" & Divcode & "' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and isnull(OCNo,'')<>'' " & _
                      " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and isnull(OCNo,'')<>'' " & _
                      " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype, isnull(OCNo,'') OCNO from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & "  AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and isnull(OCNo,'')<>'' )X order by cast(contno as VARCHAR(10)) "
                End If
                End If
                Set Lrs = New Recordset
                Lrs.Open qry, DB, adOpenStatic
                LstPO.Clear
                ListPO.ListItems.Clear
                ListPO.ColumnHeaders.Clear
                 
                ListPO.ColumnHeaders.ADD , , "PO No.", 1300, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "PO Date", 1800, lvwColumnCenter
                ListPO.ColumnHeaders.ADD , , "Variety Code", 1400, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Variety Name", 1400, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Quantity", 1400, lvwColumnRight
                ListPO.ColumnHeaders.ADD , , "Candy Rate", 1400, lvwColumnRight
                ListPO.ColumnHeaders.ADD , , "Rate per Unit", 1400, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "DivCode", 1000, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "OC No.", 1400, lvwColumnLeft
                Do Until Lrs.EOF
                    ''LstPO.AddItem Padl(Lrs("Contno"), 8, " ") & Space(1) & Padl(Format(Lrs("contdt"), "dd/mm/yyyy"), 10, " ") & Space(2) & Padr(Lrs("Varcode"), 11, " ") & Space(1) & Padr(Lrs("Varname"), 17, " ") & Space(1) & Padl(Lrs("BalQty"), 10, " ") & Space(2) & Padl(Lrs("candyrate"), 10, " ") & Space(2) & Padr(Lrs("Rateunit"), 10, " ") & Space(4) & Padr(Lrs!Divcode & "-" & getMasterName("ABBR", "PP_DIVMAS", "DIVCODE", Lrs!Divcode), 20, " ")
                    Set itmX = ListPO.ListItems.ADD(, , Lrs("Contno"))
                    itmX.Tag = Lrs("Contno")
                    itmX.SubItems(1) = Format(Lrs("contdt"), "dd/mm/yyyy")
                    itmX.SubItems(2) = Lrs("Varcode")
                    itmX.SubItems(3) = Lrs("Varname")
                    itmX.SubItems(4) = Lrs("BalQty")
                    itmX.SubItems(5) = Lrs("candyrate")
                    itmX.SubItems(6) = Lrs("Rateunit")
                    itmX.SubItems(7) = Lrs!Divcode ''& "-" & getMasterName("ABBR", "PP_DIVMAS", "DIVCODE", Lrs!Divcode)
                    itmX.SubItems(8) = Lrs("ocno")
                    Lrs.MoveNext
                Loop
                intervalMinutes = -1
                Frame14.Visible = True
                Frame14.ZOrder
                SSTab1.Enabled = False
                ''LstPO.SetFocus
                ListPO.SetFocus
                Exit Sub
'                Txtfields(2).Text = sCode
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
        Else
            Set rs1 = New Recordset
            rs1.Open "select slname,isnull(GROUPCODE,'') as GROUPCODE from fa_slmas where slcode = '" & Txtfields(2).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            
            If rs1.BOF Then
               Text1.Text = ""
            Else
               Text1.Text = rs1(0)
            End If
            custgrp = rs1(1)
        End If
    Else
        MsgBox "Please define the Supplier in Master!", vbInformation, head
        Exit Sub
    End If

Case 13
    If Txtfields(13).Text = "" Then
        Txtfields(13).Locked = False
        Txtfields(13).SetFocus
    Else
        Txtfields(14).SetFocus
    End If
    
 Case 33
         If Record_Exists("RM_Plant") = False Then Exit Sub
            If Txtfields(33).Text = "" Then
               LookUp.Clear = True
               LookUp.query = "SELECT plcode ""Plant Code"",PLName ""Description"" FROM RM_Plant "
               LookUp.ALIGN = "900,3000"
               LookUp.Caption = "Plant Listing"
               LookUp.DefCol = "Plant Description"
               LookUp.Show vbModal
               If LookUp.Cancel = False Then
                       Txtfields(33).Text = LookUp.Fields(0)
                       Text10.Text = LookUp.Fields(1)
               Else
                       Cancel = True
                       Txtfields(33).SetFocus
               End If
          End If

End Select
End If

If Index = 15 Then
    If val(Txtfields(15).Text) > 0 Then
     Set rsa = New Recordset
     rsa.Open "select ordqty-isnull(recqty,0)+isnull(CANCELBALES,0) as balqty from rm_cont where contno='" & Txtfields(1).Text & "' and contdt ='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' ", DB
        If rsa.RecordCount > 0 Then
            Label30.Caption = "Balance Quantity : " & rsa(0) - val(Txtfields(15).Text)
            Label30.Visible = False
        End If
    End If
End If
        

intervalMinutes = -1

Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form FrmArrival", vbInformation, head

End Sub
Public Sub arrregHeader(pg1 As Integer, co As Integer, s As String, a As String, b As String)
          Print #z, Chr(18)
          Print #z, Space(0) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) & "Arrival List " + "     " + Format(Trim(a), "DD/MM/YY") + Space(1) + "  " + Space(1) + Format(Trim(b), "DD/MM/YY") + Space(80) + Format(CStr(SR), "dd/mm/yy") + Space(6) + "Pg.: " + Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #z, Space(5) & String(145, "-")
         ' Print #z, Space(8) + "Date                                                                                                                                                                       "
          Print #z, "     Arrival Receipt   Lorry                                       Station  P.Lot Variety       Quantity  Unit       Rate/     Gross Wt.     Nett Wt."
          Print #z, "      Number Date      Number        Supplier  Name                Name       No.                                    Candy          Kgs          Kgs"
          Print #z, Space(5) & String(145, "-")
          co = co + 8
             
End Sub
Private Sub SpreadAlign(totrow As Integer)
    On Error GoTo spreadalign_Error
    intervalMinutes = -1
      'SetSpreadCol spdVar, IContno, "DivCode", CellTypeStaticText, 8
  SetSpreadCol_RMI1 spdVar, IContno, "Indent No.", CellTypeStaticText, 8
    SetSpreadCol_RMI1 spdVar, IContno, "Order No.", CellTypeStaticText
    SetSpreadCol_RMI1 spdVar, IContdt, "Order Date", CellTypeStaticText
    SetSpreadCol_RMI1 spdVar, IVarcode, "Variety Code", CellTypeStaticText
    SetSpreadCol_RMI1 spdVar, IVarName, "Variety Name", CellTypeStaticText
    SetSpreadCol_RMI1 spdVar, Iplotno, "Supplier Lot No.", CellTypeEdit, 8, False, False
    SetSpreadCol_RMI1 spdVar, Iprno, "PR No.", CellTypeEdit
    SetSpreadCol_RMI1 spdVar, Ipressmarkno, "PressMark No.", CellTypeEdit
    SetSpreadCol_RMI1 spdVar, Iunit, "Pack Type", CellTypeStaticText
    SetSpreadCol_RMI1 spdVar, Imixcount, "Mixing Code", CellTypeStaticText
    SetSpreadCol_RMI1 spdVar, Imixgrp, "Mixing Group", CellTypeStaticText
'    SetSpreadCol spdVar, iGinner, "Ginner                     ", CellTypeStaticText
    SetSpreadCol_RMI1 spdVar, Icandyrate, "        Rate", CellTypeNumber, 7, 0
    SetSpreadCol_RMI1 spdVar, Ibalqty, "Quantity", CellTypeNumber, 0, 0
    SetSpreadCol_RMI1 spdVar, IFullTruckWt, "Full Truck Wt.", CellTypeNumber, 3, 0
    SetSpreadCol_RMI1 spdVar, IEmptyTruckWt, "Empty Truck Wt.", CellTypeNumber, 3, 0
    SetSpreadCol_RMI1 spdVar, Igrosswt, "   Gross Wt.", CellTypeNumber, 3, 0
    SetSpreadCol_RMI1 spdVar, Itarewt, " Tare Wt.", CellTypeNumber, 3, 0
    'SetSpreadCol spdVar, iTrashPer, "Moisture %.", CellTypeNumber, 2, 0, 99.99
    SetSpreadCol_RMI1 spdVar, iMoitureper, "Moisture %.", CellTypeNumber, 2, 0, 99.99
    SetSpreadCol_RMI1 spdVar, iMoiturewt, "Excess Moisture", CellTypeNumber, 3, 0
    SetSpreadCol_RMI1 spdVar, iNetwt, "       Nett Wt.", CellTypeNumber, 3, 0
    
    spdVar.Col = 3
    spdVar.ColHidden = True
    
    spdVar.Col = Icandyrate
    spdVar.Lock = True
    
    
    spdVar.ColWidth(4) = 20
    spdVar.ColWidth(Itarewt) = 7
    spdVar.ColWidth(iMoitureper) = 7
    spdVar.ColWidth(iMoiturewt) = 10
    spdVar.ColWidth(Iplotno) = 12
'    spdVar.ColWidth(iGinner) = 12
    spdVar.ColWidth(IFullTruckWt) = 10
    spdVar.ColWidth(IEmptyTruckWt) = 11

    Set Rs = New Recordset
    Rs.Open "Select SeasonCalcReq from rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
        SetSpreadCol spdVar, iTrashPer, "Trash %.", CellTypeNumber, 2, 0, 99.99
        With spdVar
            .MaxCols = 20
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 3, 1
        End With
    Else
        
        With spdVar
            .MaxCols = 19
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 3, 1
        End With
    End If
    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form FrmArrival"
End Sub

Private Sub ArrivalDisplay()

On Error GoTo ArrivalDisplay_Error

Set rsarr = New Recordset
rsarr.Open "select contno ,contdt, varcode, cntcode, PRNO, PRMARK, PlotNo,LORRYNOS,lrno, Quantity, GROSSWT, TAREWT, netwt, Ratecy, BBFLAG, isnull(moisture_per,0)moisture_per,isnull(moisture_et,0)moisture_et, isnull(catcd,''), freight,FullTruckWgt,EmptyTruckWgt,TRashper,GinCode,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate from rm_arrival where arrno=" & adoPrimaryRS("arrno") & " and arrdate='" & Format(adoPrimaryRS("arrdate"), "yyyy-mm-dd") & "' and divcode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic

Txtfields(11).Text = ""
Txtfields(21).Text = ""
Txtfields(14).Text = ""
totgroswt = 0
TotTareWt = 0
totmoiwt = 0
TotNetWT = 0
Call SpreadAlign(rsarr.RecordCount)

For I = 1 To rsarr.RecordCount
    
    spdVar.SetText IContno, I, rsarr("contno")
    spdVar.SetText IContdt, I, rsarr("contdt")
    spdVar.SetText IVarcode, I, rsarr("varcode")
    
    Set RSV = New Recordset
    RSV.Open "select * from rm_var where varcode='" & rsarr("varcode") & "'", DB, adOpenStatic
    
    spdVar.SetText IVarName, I, RSV("varname")
    spdVar.SetText Iplotno, I, rsarr("plotno")
    spdVar.SetText Iprno, I, rsarr("prno")
    spdVar.SetText Ipressmarkno, I, rsarr("prmark")
    spdVar.SetText Imixcount, I, rsarr("cntcode")
    
    spdVar.SetText iGinner, 1, getMasterName("Ginname", "RM_GInner", "Gincode", IIf(IsNull(rsarr("Gincode")), "", rsarr("Gincode")))
    
    Set RSV = New Recordset
    RSV.Open "select * from rm_mixgrp where mixgrpcd='" & CStr(rsarr("cntcode")) & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
    If RSV.RecordCount > 0 Then
        grpname = RSV("mixgrpname")
    Else
        grpname = ""
    End If
    
    If Not rsarr.EOF Then
        Txtfields(11).Text = rsarr("LORRYNOS")
        Txtfields(21).Text = rsarr("LRNO")
        Txtfields(14).Text = rsarr!Freight
    End If
    
    spdVar.SetText Imixgrp, I, grpname
    spdVar.SetText Ibalqty, I, rsarr("quantity")
    spdVar.SetText Icandyrate, I, rsarr("ratecy")
    spdVar.SetText IFullTruckWt, I, rsarr("FullTruckWgt")
    spdVar.SetText IEmptyTruckWt, I, rsarr("EmptyTruckWgt")
    spdVar.SetText Igrosswt, I, rsarr("grosswt")
    spdVar.SetText iTrashPer, I, rsarr("Trashper")
    
    spdVar.SetText Itarewt, I, rsarr("tarewt")
    spdVar.SetText iMoitureper, I, rsarr("moisture_per")
    spdVar.SetText iMoiturewt, I, rsarr("moisture_et")
    spdVar.SetText iNetwt, I, rsarr("netwt")
    totgroswt = totgroswt + rsarr("grosswt")
    TotTareWt = TotTareWt + rsarr("tarewt")
    totmoiwt = totmoiwt + rsarr("moisture_et")
    TotNetWT = TotNetWT + rsarr("netwt")
    
    If IsNull(rsarr("bbflAg")) = False Then
        If rsarr("bbflAg") = "B" Then
         spdVar.SetText Iunit, I, "Bale"
        ElseIf rsarr("bbflAg") = "R" Then
         spdVar.SetText Iunit, I, "Borah"
        ElseIf rsarr("bbflAg") = "H" Then
         spdVar.SetText Iunit, I, "HalfPressBale"
        End If
    End If
    
    rsarr.MoveNext
Next
    Txtfields(25).Text = Format(CStr(totgroswt), "######0.000")
    Txtfields(26).Text = Format(CStr(TotTareWt), "#####0.000")
    Txtfields(27).Text = Format(CStr(totmoiwt), "#####0.000")
    Txtfields(28).Text = Format(CStr(TotNetWT), "#####0.000")
    Call spdVar_Click(1, 1)
Exit Sub


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
    
    rsMax.Open "SELECT ISNULL(MAX(ARRNO),0)+1 FROM rm_arrival WHERE  ARRdAtE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
    
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
For Each oText In Me.Txtfields
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

Private Sub FreightAmtPosting(sOpt As String, Optional mode As String)
'SAKTHI
    If sOpt = "mod" Or sOpt = "del" Then
    
        Set rstPARAM = New Recordset
        rstPARAM.Open "SELECT isnull(CarJV_TC,0) as CarJV_TC,isnull(CarJV_VocNo,0) as CarJV_VocNo " & _
                      " FROM RM_ARRIVAL  WHERE Divcode='" & Divcode & "' and ArrNo=" & val(Txtfields(0).Text) & "" & _
                      " And ArrDate='" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockOptimistic
                      
        If rstPARAM.RecordCount > 0 Then
            iJVTc = rstPARAM("CarJV_TC")
            iVocno = rstPARAM("CarJV_VocNo")
            iVocdt = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
        Else
            iJVTc = 0
            iVocno = 0
        End If
        
        If (mode = "mod" Or mode = "del") And iJVTc > 0 And iVocno > 0 Then
            
            Set rstPARAM = New Recordset
            rstPARAM.Open "SELECT ISNULL(App_userid,'') from Fa_Jvhead Where ISNULL(App_userid,'')='' AND Divcode='" & Divcode & "' AND Tc='" & val(iJVTc) & "' AND VocNo='" & val(iVocno) & "' AND VocDt='" & Format(iVocdt, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockOptimistic
            If rstPARAM.EOF Then
                MsgBox "Transport Charge already approved, So do not change.", vbCritical, head
            End If
                
            Exit Sub
        ElseIf mode = "mod" Or mode = "del" Then
            Exit Sub
        End If
        
        If iJVTc > 0 And iVocno > 0 Then
            DB.Execute "Delete From Fa_Jvhead Where Divcode='" & Divcode & "' AND Tc='" & val(iJVTc) & "' AND VocNo='" & val(iVocno) & "' AND VocDt='" & Format(iVocdt, "yyyy-MM-dd") & "'"
            DB.Execute "Delete From FA_JVLINE Where Divcode='" & Divcode & "' AND Tc='" & val(iJVTc) & "' AND VocNo='" & val(iVocno) & "' AND VocDt='" & Format(iVocdt, "yyyy-MM-dd") & "'"
        End If
        
    End If
    
    If sOpt = "add" Or sOpt = "mod" Then
        
        If sOpt = "add" Or (iJVTc <= 0 And sOpt = "mod") Then
            Set rstPARAM = New Recordset
            rstPARAM.Open "SELECT isnull(FROMJVTC,0) as jvTc  FROM fa_param ", DB, adOpenDynamic, adLockOptimistic
            If rstPARAM.RecordCount > 0 Then
                iJVTc = rstPARAM(0)
            Else
                iJVTc = 0
            End If
        End If
        
        Set rstPARAM = New Recordset
        rstPARAM.Open "SELECT isnull(a.slcode,'') as Slcode,b.slname ,isnull(a.ccode,'') as ccode FROM po_car a,fa_slmas b WHERE a.slcode=b.slcode and a.carcode = '" & Trim(Txtfields(9).Text) & "'", DB, adOpenDynamic, adLockOptimistic
        If rstPARAM.RecordCount > 0 Then
            sSLcode = rstPARAM(0)
            sSLName = rstPARAM(1)
            Sccode = rstPARAM(2)
        Else
            sSLcode = ""
            sSLName = ""
              Sccode = ""
        End If
        
        Set rstPARAM = New Recordset
        rstPARAM.Open "SELECT isnull(CarrierGL,'') as Slcode FROM RM_PARAM ", DB, adOpenDynamic, adLockOptimistic
        If rstPARAM.RecordCount > 0 Then
            sGLCode = rstPARAM(0)
        Else
            sGLCode = ""
        End If
        
        If Trim(sSLcode) <> "" And Trim(sGLCode) <> "" And val(iJVTc) > 0 And val(Txtfields(14).Text) > 0 Then
            
            If sOpt = "add" Or (iVocno <= 0 And sOpt = "mod") Then
                Set rstPARAM = New Recordset
                rstPARAM.Open "SELECT isnull(MAX(Vocno),0) FROM Fa_Jvhead WHERE Tc = '" & iJVTc & "' AND Divcode = '" & Divcode & "' and Vocdt between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockOptimistic
                If rstPARAM.RecordCount > 0 Then
                    iVocno = IIf(IsNull(rstPARAM(0)), 1, rstPARAM(0) + 1)
                Else
                    iVocno = 1
                End If
            End If
            
            Narr = "Cotton Arrival Freight Amount for Arr. No. " & val(Txtfields(0).Text) & " Dt. " & Format(MaskEdBox1(0).Text, "dd/MM/yy") & " and Transporter - " & sSLName & ""
            
            DB.Execute "INSERT INTO Fa_Jvhead " & _
            "(divcode,tc,vocno,vocdt) VALUES ('" & _
            Divcode & "','" & iJVTc & "'," & iVocno & ",'" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "')"
            
            DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,amtdue,cccode) VALUES ('" & _
                        Divcode & "','" & iJVTc & "'," & iVocno & ",'" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "',1,'" & _
                        Trim(sGLCode) & "','" & Narr & "'," & Abs(val(Txtfields(14).Text)) & "," & val(Txtfields(14).Text) & ",'" & Sccode & "')"
            
            DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit,cccode) VALUES ('" & _
                        Divcode & "','" & iJVTc & "'," & iVocno & ",'" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "',2,'" & _
                        sSLcode & "','" & Narr & "'," & Abs(val(Txtfields(14).Text)) & ",'" & Sccode & "')"
            
            DB.Execute "UPDATE RM_ARRIVAL SET CarJV_TC=" & val(iJVTc) & ",CarJV_VocNo=" & val(iVocno) & "" & _
                       " WHERE Divcode='" & Divcode & "' and ArrNo=" & val(Txtfields(0).Text) & " and ArrDate='" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'"
            
        End If
    End If
                     
                     
End Sub
Public Function GetText(Spd As fpSpread, ByVal iCOL As Integer, ByVal iRow As Integer) As String
On Error GoTo GetText_Error
   With Spd
        .Col = iCOL: .Row = iRow: GetText = .Text
   End With
Exit Function
GetText_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetText of Module RMIMod"
End Function
Public Sub SetSpreadCol_RMI1(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal DecWth As Integer = 0, Optional MinVal As Double = 0, Optional Maxval As Double = 9999999.99)
On Error GoTo SetSpreadCol_Error
    With Spd
        .Row = -1: .Col = Col: .celltype = celltype:


        .TypeNumberDecPlaces = DecWth


        If celltype = CellTypeNumber Then
            .TypeNumberMin = MinVal
            .TypeNumberMax = Maxval
        End If

        .ColHeaderRows = 1
        .SetText Col, 0, head
    End With
Exit Sub
SetSpreadCol_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetSpreadCol of Module RMIMod"
End Sub
Private Sub SaveLog()
On Error Resume Next
For lr = 1 To spdVar.MaxRows
           Set TrnLog = New Recordset
           TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
           ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Arrival(IM)"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss.m")
            TrnLog("plcode") = Trim(Txtfields(33).Text)
            TrnLog("Line_No") = Trim(Txtfields(34).Text)
           
            TrnLog("docno") = val(Txtfields(0).Text)
            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
            
            TrnLog("arrno") = val(Txtfields(0).Text)
            TrnLog("arrdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
            TrnLog("contno") = val(GetText(spdVar, IContno, lr))
            TrnLog("CONTDT") = Format(Trim(GetText(spdVar, IContdt, lr)), "yyyy-mm-dd")
            TrnLog("slcode") = Txtfields(2).Text
            TrnLog("areacode") = IIf(Trim(Txtfields(4).Text) = "", Null, Txtfields(4).Text)
            TrnLog("Agent_code") = IIf(Trim(Txtfields(3).Text) = "", Null, Txtfields(3).Text)
            TrnLog("godown") = Trim(Txtfields(22).Text)
            TrnLog("LorryNo") = Trim(Txtfields(11).Text)
            TrnLog("Frg_Amt") = val(Txtfields(14).Text)
            TrnLog("varcode") = val(GetText(spdVar, IVarcode, lr))
            TrnLog("catcd") = Trim(Txtfields(29).Text)
            TrnLog("ordqty") = val(GetText(spdVar, Ibalqty, lr))
            TrnLog("Grosswt") = val(GetText(spdVar, Igrosswt, lr))
            TrnLog("tarewt") = val(GetText(spdVar, Itarewt, lr))
            TrnLog("netwt") = val(GetText(spdVar, iNetwt, lr))
            TrnLog("cntcode") = val(GetText(spdVar, Imixcount, lr))
            TrnLog("RateCY") = val(GetText(spdVar, Icandyrate, lr))
            TrnLog("LR_INDate") = Format(dtpLorryinDt, "yyyy-mm-dd") & " " & Format(dtpLorryinTime.value, "hh:mm:ss")
            TrnLog("LR_OutDate") = Format(dtpLorryOutDt, "yyyy-mm-dd") & " " & Format(dtpLorryOutTime.value, "hh:mm:ss")
'            TrnLog("purtype") = Trim(txtfields(42).Text)
           ' TrnLog("IRNo") = rsarrival("prno")
            
            TrnLog.UpdateBatch adAffectAllChapters
           Next
End Sub

Private Sub CrystalReport()
 Set rs3 = New Recordset
    rs3.Open "select * from pp_divmas", DB, adOpenDynamic, adLockOptimistic
    With crr
    .Reset
    .Connect = connectstring
    
    Dim clsCryRpt As New clsCrystal
    Set clsCryRpt.cryRept = ArrivalConfirmation
    clsCryRpt.CrystalPrint
                
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepImport.rpt"

    crr.ParameterFields(0) = "@arrno;" & Txtfields(0).Text & ""
    crr.ParameterFields(1) = "@arrdate;" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & ""
    crr.ParameterFields(2) = "@divcode;" & Divcode & ""
    crr.ParameterFields(3) = "@slname;" & Text2.Text & ""

    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 1
    crr.PrinterCopies = 1

    End With

End Sub


Private Sub reportvisible()
  Frame5.Visible = True
        Frame5.ZOrder 0
        Option5.value = True
        Option5.SetFocus
        SSTab1.Enabled = False
'        UserFooter1.Visible = True
'        UserFooter1.Load
       ' UserFooter1.ClearFooter
        Command3.Visible = True
        Buttonframe.Enabled = False
End Sub

Private Sub DelFunction()
  
        
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_arrival where divcode='" & Divcode & "' and isnull(lotrecqty,0)=0", DB
        
    Txtfields(25).Text = ""
    Txtfields(26).Text = ""
    Txtfields(27).Text = ""
    Txtfields(28).Text = ""
    Txtfields(89).Text = ""
    Txtfields(90).Text = ""
    Txtfields(95).Text = ""
    Txtfields(91).Text = ""
    If Not Rs(0) = 0 Then
        Opt = "del"
        desc.Caption = "Deletion"
        
        Label15.Caption = "Arrival Details"
        StatusBar1.Panels(2).Text = "Select a Arrival Number from the List for Deletion"
        
        LookUp.Clear = True
        'LookUp.Query = "select DISTINCT arrno""ArrivalNumber"",arrdate""Date"",slname""Supplier""  from rm_arrival a,fa_slmas b where a.supcd=b.slcode and isnull(lotrecqty,0)=0 and divcode='" & Divcode & "'"
        LookUp.query = "select DISTINCT arrno""Arrival Number"",arrdate""Arrival Date"",slname""Supplier Name""  from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and OcNo is not null"
        LookUp.DefCol = "Supplier"
        LookUp.Caption = "Arrival Listing"
        LookUp.ALIGN = "1500,1500,4000"
         LookUp.Show vbModal
        If LookUp.Cancel = False Then
               BUTTON(9).Enabled = True
               Set adoPrimaryRS = New Recordset
               ''adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,MOITURE FROM RM_ARRIVAL WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
               
               'adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime FROM RM_ARRIVAL WHERE  ARRNO='" & Lookup.Fields(0) & "' AND ARRDATE='" & Format(Lookup.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' and arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", db, adOpenStatic, adLockBatchOptimistic
               
               adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
               
               If adoPrimaryRS.RecordCount <> 0 Then
                   Set adoPrimaryRS = New Recordset
                   ''adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,MOITURE FROM RM_ARRIVAL WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (lotno is  null or lotdt is  null or catcd is  null ) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
                   
                   'adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime FROM RM_ARRIVAL WHERE  ARRNO='" & Lookup.Fields(0) & "' AND ARRDATE='" & Format(Lookup.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' and arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", db, adOpenStatic, adLockBatchOptimistic
                   
                   adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,OcNo,Ocdate,cpyno,cpysno,cpydate,OcDocNo,OcDocdate FROM RM_ARRIVAL WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
                   
                   
                   If adoPrimaryRS.RecordCount = 0 Then
                       MsgBox "Lot/Bale Details Entered for this arrival. Hence Modification Not allowed!", vbInformation, head
                       Exit Sub
                   End If
                   
               Else
                   MsgBox "Inspection completed for this arrival. Hence Modification not allowed!", vbInformation, head
                   Exit Sub
               End If
               Call ArrivalDisplay
               Call bindcontls
               Call ENABLCONTLS
               If Opt = "del" Then
                 Call disablcontls
               End If
            For I = 0 To 6
            Txtfields(I).Locked = True
            Next
            Txtfields(13).Locked = True
            Text4.Locked = True
            Txtfields(19).Locked = True
           
            Txtfields(0).Locked = True
            Txtfields(3).Locked = True
            Txtfields(4).Locked = True
            Txtfields(15).Locked = True
            Txtfields(16).Locked = True
            Txtfields(17).Locked = True
            Txtfields(18).Locked = True
            Txtfields(24).Locked = True
            Call adddelmod(BUTTON)
            Call disablcontls
            'BUTTON(9).ToolTipText = "Deletion"
            Txtfields(0).Locked = True
            Combo1.Locked = True
''            Set rsg = New Recordset
''            rsg.Open "select rateunit,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)),isnull(cancelbales,0) as cancelbales,ordqty,recqty from rm_cont where contno=" & adoPrimaryRS("contno") & "  and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
''            If rsg.RecordCount > 0 Then
''                Label31.Caption = rsg("rateunit")
''                Txtfields(89).Text = CStr(IIf(IsNull(rsg("ordqty")) = True, 0, rsg("ordqty")))
''                Txtfields(90).Text = CStr(IIf(IsNull(rsg("RECQTY")) = True, 0, rsg("RECQTY")))
''                Txtfields(91).Text = CStr(val(rsg(1)))
''                Txtfields(95).Text = CStr(rsg("cancelbales"))
''            End If
            
            
        Else
            Call BUTTON_Click(10)
        End If
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If

End Sub


Public Function NULLCHECKFields(TextVal)
  If IsNull(TextVal) = True Then
    NULLCHECKFields = vbNullString
  ElseIf IsNull(TextVal) = False Then
    NULLCHECKFields = Trim$(TextVal)
  End If
End Function


Public Sub ToNumber(obj As Object, maxlen As Integer, KeyAscii As Integer)
 On Error Resume Next
    If Not (((KeyAscii >= 48 And KeyAscii <= 57) Or _
             KeyAscii = 8) Or KeyAscii = 9) Then
        KeyAscii = 0
    ElseIf Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
        KeyAscii = 0
    End If
End Sub
