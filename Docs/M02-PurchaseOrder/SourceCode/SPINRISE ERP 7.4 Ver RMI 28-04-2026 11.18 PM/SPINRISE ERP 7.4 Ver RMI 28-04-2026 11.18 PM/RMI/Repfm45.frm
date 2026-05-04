VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form repform45 
   Caption         =   "Reports"
   ClientHeight    =   6270
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7080
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   6270
   ScaleWidth      =   7080
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command7 
      Caption         =   "&Crystal Report"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6345
      TabIndex        =   98
      Top             =   7710
      Width           =   1590
   End
   Begin VB.Frame Frame6 
      Height          =   615
      Left            =   1995
      TabIndex        =   93
      Top             =   6345
      Visible         =   0   'False
      Width           =   5820
      Begin VB.OptionButton Option8 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   95
         Top             =   210
         Width           =   1260
      End
      Begin VB.OptionButton Option7 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   94
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
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
         Height          =   315
         Left            =   180
         TabIndex        =   96
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.Frame Frame4 
      Height          =   3420
      Left            =   1215
      TabIndex        =   61
      Top             =   0
      Visible         =   0   'False
      Width           =   6525
      Begin VB.OptionButton Option1 
         Caption         =   "Credit Note"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Left            =   1425
         TabIndex        =   67
         Top             =   780
         Value           =   -1  'True
         Width           =   1890
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Debit Note"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   315
         Left            =   3615
         TabIndex        =   66
         Top             =   780
         Width           =   2205
      End
      Begin VB.ComboBox Combo6 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   1440
         TabIndex        =   65
         Top             =   1995
         Width           =   4935
      End
      Begin VB.ComboBox Combo7 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   1440
         Style           =   2  'Dropdown List
         TabIndex        =   64
         Top             =   2640
         Width           =   2295
      End
      Begin VB.ListBox List1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         ItemData        =   "Repfm45.frx":0000
         Left            =   1425
         List            =   "Repfm45.frx":0002
         TabIndex        =   63
         Top             =   1440
         Width           =   1110
      End
      Begin VB.ComboBox cmbTc 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   4530
         TabIndex        =   62
         Top             =   2640
         Width           =   1845
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H80000002&
         Height          =   2955
         Left            =   90
         Top             =   450
         Width           =   6435
      End
      Begin VB.Label Label10 
         Caption         =   "Month"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   405
         Left            =   375
         TabIndex        =   72
         Top             =   1440
         Width           =   2085
      End
      Begin VB.Label Label11 
         Caption         =   "Party"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Left            =   360
         TabIndex        =   71
         Top             =   2040
         Width           =   2325
      End
      Begin VB.Label Label13 
         Caption         =   "Vocdt"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   315
         Left            =   405
         TabIndex        =   70
         Top             =   2670
         Width           =   1980
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Credit/Debit Note"
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
         Height          =   285
         Left            =   45
         TabIndex        =   69
         Top             =   120
         Width           =   6435
      End
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         Caption         =   "Vocno"
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
         Left            =   3570
         TabIndex        =   68
         Top             =   2670
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      Height          =   3210
      Left            =   915
      TabIndex        =   45
      Top             =   3120
      Width           =   7815
      Begin VB.ComboBox Combo1 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
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
         ForeColor       =   &H8000000D&
         Height          =   345
         ItemData        =   "Repfm45.frx":0004
         Left            =   2565
         List            =   "Repfm45.frx":0006
         Style           =   2  'Dropdown List
         TabIndex        =   55
         Top             =   975
         Width           =   5085
      End
      Begin VB.ComboBox Combo4 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
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
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   2580
         TabIndex        =   54
         Top             =   2580
         Visible         =   0   'False
         Width           =   5055
      End
      Begin VB.ComboBox Combo3 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
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
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   2550
         Style           =   2  'Dropdown List
         TabIndex        =   53
         Top             =   2055
         Visible         =   0   'False
         Width           =   5085
      End
      Begin VB.ListBox List2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         ItemData        =   "Repfm45.frx":0008
         Left            =   300
         List            =   "Repfm45.frx":000A
         TabIndex        =   48
         Top             =   675
         Visible         =   0   'False
         Width           =   1110
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Consolidated"
         Enabled         =   0   'False
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
         Height          =   330
         Left            =   2550
         TabIndex        =   47
         Top             =   2340
         Visible         =   0   'False
         Width           =   1770
      End
      Begin VB.ComboBox Combo2 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
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
         ForeColor       =   &H8000000D&
         Height          =   345
         ItemData        =   "Repfm45.frx":000C
         Left            =   2565
         List            =   "Repfm45.frx":000E
         Style           =   2  'Dropdown List
         TabIndex        =   46
         Top             =   1530
         Width           =   5085
      End
      Begin MSMask.MaskEdBox MaskEdBox4 
         Height          =   375
         Left            =   2550
         TabIndex        =   49
         Top             =   2565
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   661
         _Version        =   393216
         ForeColor       =   -2147483635
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSComCtl2.DTPicker DTPicker5 
         Height          =   375
         Left            =   2565
         TabIndex        =   50
         Top             =   2565
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   661
         _Version        =   393216
         Format          =   171245569
         CurrentDate     =   36636
      End
      Begin MSMask.MaskEdBox MaskEdBox3 
         Height          =   345
         Left            =   2550
         TabIndex        =   51
         Top             =   2040
         Width           =   1800
         _ExtentX        =   3175
         _ExtentY        =   609
         _Version        =   393216
         ForeColor       =   -2147483635
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSComCtl2.DTPicker DTPicker4 
         Height          =   375
         Left            =   2565
         TabIndex        =   52
         Top             =   2025
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   661
         _Version        =   393216
         Format          =   171245569
         CurrentDate     =   36636
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Label3"
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
         Left            =   165
         TabIndex        =   60
         Top             =   2055
         Visible         =   0   'False
         Width           =   675
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Label4"
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
         Left            =   165
         TabIndex        =   59
         Top             =   2580
         Visible         =   0   'False
         Width           =   675
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Label1"
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
         Left            =   165
         TabIndex        =   58
         Top             =   960
         Width           =   675
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Label2"
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
         Left            =   150
         TabIndex        =   57
         Top             =   1545
         Width           =   675
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Label14"
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
         Height          =   300
         Left            =   45
         TabIndex        =   56
         Top             =   135
         Width           =   7740
      End
      Begin VB.Shape Shape4 
         BorderColor     =   &H80000002&
         Height          =   2730
         Left            =   45
         Top             =   420
         Width           =   7740
      End
   End
   Begin VB.Frame Frame201 
      Height          =   3420
      Left            =   1470
      TabIndex        =   32
      Top             =   3630
      Visible         =   0   'False
      Width           =   7065
      Begin VB.ComboBox Combo51 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   3000
         TabIndex        =   35
         Top             =   1365
         Width           =   3480
      End
      Begin VB.TextBox Text11 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   375
         Left            =   3015
         TabIndex        =   34
         Top             =   2850
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.ListBox List21 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         ItemData        =   "Repfm45.frx":0010
         Left            =   3015
         List            =   "Repfm45.frx":0012
         TabIndex        =   33
         Top             =   1395
         Width           =   2100
      End
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   330
         Left            =   3015
         TabIndex        =   36
         Top             =   2880
         Width           =   2385
         _ExtentX        =   4207
         _ExtentY        =   582
         _Version        =   393216
         Style           =   2
         ForeColor       =   -2147483635
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   330
         Left            =   2985
         TabIndex        =   37
         Top             =   2040
         Width           =   2385
         _ExtentX        =   4207
         _ExtentY        =   582
         _Version        =   393216
         Style           =   2
         ForeColor       =   -2147483635
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label61 
         Caption         =   "Cash TC         "
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
         Height          =   375
         Left            =   390
         TabIndex        =   43
         Top             =   1365
         Width           =   1815
      End
      Begin VB.Label Label71 
         Caption         =   "From Voucher Date "
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
         Height          =   375
         Left            =   360
         TabIndex        =   42
         Top             =   2085
         Width           =   2535
      End
      Begin VB.Label Label81 
         Caption         =   "To Voucher Date   "
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
         Height          =   315
         Left            =   360
         TabIndex        =   41
         Top             =   2805
         Width           =   2535
      End
      Begin VB.Label flglac1 
         Caption         =   "From GL Account"
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
         Height          =   375
         Left            =   390
         TabIndex        =   40
         Top             =   1740
         Width           =   2175
      End
      Begin VB.Label lprty1 
         Caption         =   "Sub Ledger"
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
         Height          =   375
         Left            =   360
         TabIndex        =   39
         Top             =   2460
         Width           =   1335
      End
      Begin VB.Label Label141 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Label14"
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
         Height          =   270
         Left            =   45
         TabIndex        =   38
         Top             =   135
         Width           =   6975
      End
      Begin VB.Shape Shape21 
         BorderColor     =   &H80000002&
         Height          =   2940
         Left            =   60
         Top             =   450
         Width           =   6975
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3240
      TabIndex        =   31
      Top             =   7740
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Cancel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4770
      TabIndex        =   30
      Top             =   7725
      Width           =   1455
   End
   Begin VB.Frame Frame2 
      Height          =   3105
      Left            =   1620
      TabIndex        =   11
      Top             =   3780
      Visible         =   0   'False
      Width           =   7065
      Begin VB.TextBox Text1 
         ForeColor       =   &H8000000D&
         Height          =   375
         Left            =   2835
         TabIndex        =   22
         Top             =   1410
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.TextBox ttglac 
         ForeColor       =   &H8000000D&
         Height          =   375
         Left            =   2835
         TabIndex        =   21
         Top             =   1410
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.ComboBox Combo5 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   345
         ItemData        =   "Repfm45.frx":0014
         Left            =   2835
         List            =   "Repfm45.frx":0016
         Style           =   2  'Dropdown List
         TabIndex        =   18
         Top             =   750
         Width           =   4110
      End
      Begin VB.TextBox ftglac 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "#,##0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   375
         Left            =   2835
         TabIndex        =   17
         Top             =   735
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Consolidated"
         Enabled         =   0   'False
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
         Height          =   330
         Left            =   4860
         TabIndex        =   15
         Top             =   1800
         Visible         =   0   'False
         Width           =   1770
      End
      Begin VB.ComboBox Combo8 
         ForeColor       =   &H8000000D&
         Height          =   315
         Left            =   2850
         TabIndex        =   14
         Text            =   "Combo8"
         Top             =   780
         Width           =   1410
      End
      Begin VB.OptionButton Option5 
         Caption         =   "80 Columns"
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
         Height          =   405
         Left            =   4860
         TabIndex        =   13
         Top             =   2160
         Visible         =   0   'False
         Width           =   1515
      End
      Begin VB.OptionButton Option6 
         Caption         =   "130 Columns"
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
         Height          =   345
         Left            =   4860
         TabIndex        =   12
         Top             =   2610
         Visible         =   0   'False
         Width           =   1635
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         Height          =   375
         Left            =   2820
         TabIndex        =   16
         Top             =   1410
         Width           =   1170
         _ExtentX        =   2064
         _ExtentY        =   661
         _Version        =   393216
         ForeColor       =   -2147483635
         MaxLength       =   10
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSMask.MaskEdBox MaskEdBox2 
         Height          =   375
         Left            =   2820
         TabIndex        =   19
         Top             =   2130
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   661
         _Version        =   393216
         ForeColor       =   -2147483635
         MaxLength       =   10
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   2820
         TabIndex        =   20
         Top             =   2130
         Width           =   1410
         _ExtentX        =   2487
         _ExtentY        =   661
         _Version        =   393216
         Format          =   172949505
         CurrentDate     =   36364
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   2820
         TabIndex        =   23
         Top             =   1410
         Width           =   1410
         _ExtentX        =   2487
         _ExtentY        =   661
         _Version        =   393216
         Format          =   172949505
         CurrentDate     =   36364
      End
      Begin VB.Label Label6 
         Caption         =   "Cash TC         "
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
         Height          =   375
         Left            =   210
         TabIndex        =   29
         Top             =   720
         Width           =   1815
      End
      Begin VB.Label Label7 
         Caption         =   "From Voucher Date "
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
         Height          =   375
         Left            =   210
         TabIndex        =   28
         Top             =   1440
         Width           =   2535
      End
      Begin VB.Label Label8 
         Caption         =   "To Voucher Date   "
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
         Height          =   315
         Left            =   210
         TabIndex        =   27
         Top             =   2160
         Width           =   2535
      End
      Begin VB.Label flglac 
         Caption         =   "From GL Account"
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
         Height          =   375
         Left            =   210
         TabIndex        =   26
         Top             =   1095
         Width           =   2175
      End
      Begin VB.Label lprty 
         Caption         =   "Sub Ledger"
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
         Height          =   375
         Left            =   210
         TabIndex        =   25
         Top             =   1815
         Width           =   1335
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Label5"
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
         Height          =   300
         Left            =   30
         TabIndex        =   24
         Top             =   120
         Width           =   6990
         WordWrap        =   -1  'True
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H80000002&
         Height          =   2625
         Left            =   30
         Top             =   435
         Width           =   6990
      End
   End
   Begin VB.Frame Frame101 
      Height          =   3060
      Left            =   1680
      TabIndex        =   0
      Top             =   4050
      Visible         =   0   'False
      Width           =   7230
      Begin VB.ComboBox Combo21 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
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
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   2505
         TabIndex        =   5
         Text            =   "Combo21"
         Top             =   1275
         Width           =   4335
      End
      Begin VB.ListBox List11 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         ItemData        =   "Repfm45.frx":0018
         Left            =   2520
         List            =   "Repfm45.frx":001A
         TabIndex        =   4
         Top             =   1305
         Width           =   2000
      End
      Begin VB.ComboBox Combo31 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
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
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   2505
         TabIndex        =   3
         Text            =   "Combo31"
         Top             =   1785
         Visible         =   0   'False
         Width           =   4335
      End
      Begin VB.ComboBox Combo41 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
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
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   2505
         TabIndex        =   2
         Top             =   2310
         Visible         =   0   'False
         Width           =   4335
      End
      Begin VB.ComboBox Combo11 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
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
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   2490
         TabIndex        =   1
         Text            =   "Combo11"
         Top             =   735
         Width           =   4335
      End
      Begin VB.Label Label201 
         Caption         =   "Label2"
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
         Height          =   375
         Left            =   360
         TabIndex        =   10
         Top             =   1305
         Width           =   2655
      End
      Begin VB.Label Label101 
         Caption         =   "Label1"
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
         Height          =   375
         Left            =   360
         TabIndex        =   9
         Top             =   795
         Width           =   2655
      End
      Begin VB.Label Label401 
         Caption         =   "Label4"
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
         Left            =   345
         TabIndex        =   8
         Top             =   2325
         Visible         =   0   'False
         Width           =   2655
      End
      Begin VB.Label Label301 
         Caption         =   "Label3"
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
         Height          =   300
         Left            =   360
         TabIndex        =   7
         Top             =   1830
         Visible         =   0   'False
         Width           =   2655
      End
      Begin VB.Label Label121 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Label12"
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
         Height          =   300
         Left            =   30
         TabIndex        =   6
         Top             =   120
         Width           =   7155
      End
      Begin VB.Shape Shape31 
         BorderColor     =   &H80000002&
         FillColor       =   &H00404040&
         Height          =   2520
         Left            =   60
         Top             =   450
         Width           =   7155
      End
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   1665
      Top             =   9180
      Visible         =   0   'False
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc2"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   4665
      Top             =   9180
      Visible         =   0   'False
      Width           =   2175
      _ExtentX        =   3836
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   44
      Top             =   5970
      Width           =   7080
      _ExtentX        =   12488
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
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "18/07/2024"
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
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Frame Frame3 
      Height          =   4275
      Left            =   1215
      TabIndex        =   90
      Top             =   3570
      Visible         =   0   'False
      Width           =   7710
      Begin VB.CommandButton Command3 
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2580
         TabIndex        =   92
         Top             =   3660
         Width           =   915
      End
      Begin VB.CommandButton Command4 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4125
         TabIndex        =   91
         Top             =   3660
         Width           =   915
      End
   End
   Begin VB.Frame BFrame6 
      Height          =   2775
      Left            =   1770
      TabIndex        =   73
      Top             =   5040
      Visible         =   0   'False
      Width           =   6495
      Begin VB.ComboBox BCombo8 
         ForeColor       =   &H8000000D&
         Height          =   315
         Left            =   2160
         Style           =   2  'Dropdown List
         TabIndex        =   75
         Top             =   720
         Width           =   4215
      End
      Begin VB.CheckBox chkShowAll 
         Caption         =   "&Show All"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   4410
         TabIndex        =   74
         Top             =   2070
         Width           =   1245
      End
      Begin MSMask.MaskEdBox BMaskEdBox4 
         Height          =   375
         Left            =   2160
         TabIndex        =   76
         Top             =   2025
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   661
         _Version        =   393216
         ForeColor       =   -2147483635
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         PromptChar      =   "_"
      End
      Begin MSComCtl2.DTPicker BDTPicker4 
         Height          =   375
         Left            =   2160
         TabIndex        =   77
         Top             =   2040
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   661
         _Version        =   393216
         Format          =   172949505
         CurrentDate     =   36636
      End
      Begin MSMask.MaskEdBox BMaskEdBox3 
         Height          =   375
         Left            =   2160
         TabIndex        =   78
         Top             =   1320
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   661
         _Version        =   393216
         ForeColor       =   -2147483635
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         PromptChar      =   "_"
      End
      Begin MSComCtl2.DTPicker BDTPicker3 
         Height          =   375
         Left            =   2160
         TabIndex        =   79
         Top             =   1320
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   661
         _Version        =   393216
         Format          =   172949505
         CurrentDate     =   36636
      End
      Begin VB.Label BLabel17 
         Caption         =   "From Voc. Date"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   495
         Left            =   255
         TabIndex        =   83
         Top             =   1320
         Width           =   2655
      End
      Begin VB.Label BLabel16 
         Caption         =   "TC"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   375
         Left            =   240
         TabIndex        =   82
         Top             =   720
         Width           =   1455
      End
      Begin VB.Label BLabel18 
         Caption         =   "To  Voc. Date"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   375
         Left            =   240
         TabIndex        =   81
         Top             =   2040
         Width           =   2175
      End
      Begin VB.Label BLabel15 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "JOURNAL/(CREDIT /DEBIT NOTE)Register"
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
         Height          =   300
         Left            =   45
         TabIndex        =   80
         Top             =   120
         Width           =   6390
      End
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   8445
      TabIndex        =   97
      Top             =   2730
      Visible         =   0   'False
      Width           =   4095
      _extentx        =   7223
      _extenty        =   7646
   End
   Begin VB.Frame Frame5 
      Height          =   3990
      Left            =   1530
      TabIndex        =   84
      Top             =   4335
      Visible         =   0   'False
      Width           =   6705
      Begin VB.OptionButton Option3 
         Caption         =   "CREDIT NOTE"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   495
         Left            =   2535
         TabIndex        =   88
         Top             =   1185
         Value           =   -1  'True
         Width           =   1695
      End
      Begin VB.OptionButton Option4 
         Caption         =   "DEBIT NOTE"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Left            =   2535
         TabIndex        =   87
         Top             =   1830
         Width           =   1530
      End
      Begin VB.CommandButton Command5 
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
         Height          =   360
         Left            =   1860
         TabIndex        =   86
         Top             =   2745
         Width           =   1095
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   3690
         TabIndex        =   85
         Top             =   2745
         Width           =   1095
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H80000002&
         Height          =   3045
         Left            =   900
         Top             =   510
         Width           =   4740
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "CREDIT /DEBIT NOTE"
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
         Height          =   285
         Left            =   930
         TabIndex        =   89
         Top             =   540
         Width           =   4680
      End
   End
   Begin Crystal.CrystalReport crr 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
End
Attribute VB_Name = "repform45"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim dv1 As New DataEnvironment1
Dim f As Date
Dim f1 As Form
Dim Rs As Recordset
Dim TCN As Recordset
Dim rsHead As Recordset
Dim RSline As Recordset
Dim RScomb As Recordset
Dim YBnkCntr As Integer
Dim LB1 As RptLabel
Dim LB2 As RptLabel
Dim LB3 As RptLabel
Dim LB4 As RptLabel
Dim LB5 As RptLabel
Dim wor As String
Dim LB6 As RptLabel
Dim LB7 As RptLabel, LB8 As RptLabel, LB9 As RptLabel, LB10 As RptLabel
Dim LB11 As RptLabel, LB12 As RptLabel, LB13 As RptLabel, LB14 As RptLabel, LB15 As RptLabel
Dim tl1 As RptLabel
Dim tl2 As RptLabel
Dim tl3 As RptLabel
Dim tl4 As RptLabel
Dim t1 As RptTextBox
Dim t2 As RptTextBox
Dim t3 As RptTextBox
Dim ft As Boolean, cdn As String
Dim qrdt As String
Dim tot As Double
Dim TC As String
Dim Tcc As String
Dim Year1 As String
Dim Year_Mon As String
Dim YRNM1 As String
Dim yrnm2 As String
Dim caldebit As Double
Dim calcredit As Double
Dim labelt1, Str As String
Dim labelt2 As String
Dim Options As String
Dim opbal As Variant
Dim opbalt As Variant
Dim opbal1 As Variant
Dim colbal As Variant
Dim Trec As Variant
Dim tpay As Variant
Dim cont As Integer

Dim fla As Boolean
Dim VDT1 As Variant
Dim Tche As String, STfound As String
Dim rs111 As Recordset
Dim RS112 As Recordset
Dim dbbal1 As Double, crbal1 As Double
Dim cn As Connection
Public afl As Boolean, crnflg As String, drnflg As String
Dim VOClen As Integer
Dim SUMamt As Double
Dim RSac As Recordset
Dim REPVIEW As Report.ReportView
Dim fileno As Integer
Dim a As Integer
Dim pagein As Integer

Private Sub reports()
On Error GoTo reports_Error

If cn.State = 1 Then
    cn.Close
End If
Command1.Enabled = True
cn.Provider = "MSDATASHAPE"
cn.Open connectstring
Select Case loc_RepIndex
Case 32
    Call MIS_CC_GLDet
    Exit Sub
Case 34
    Call CCGlAbstract
    Exit Sub
Case 35
    Call GLwiseCCAbstract
    Exit Sub





Case 100         'PAYMENT COVERING LETTER

    Close #1

    Dim suparr(4) As Variant
    Dim j As Integer

    Set REPVIEW = New Report.ReportView
    fileno = FreeFile()
    'Open "C:\PAYMENT.TXT" For Output As #fileno
 Open KALFOLDERDATA & "\PAYMENT.TXT" For Output As #fileno
    Set rsHead = New Recordset
    rsHead.Open "select divcode,tc,vocno,vocdt,chqno,chqdt from fa_payhead where divcode='" & Divcode & "' and tc= cast(" & Mid(Combo11.Text, 1, 2) & " as numeric) and vocdt >= '" & Format(Trim(Mid$(Combo21.Text, InStr(Combo21.Text, "-") + 7, Len(Combo21.Text))), "YYYY-MM-DD") & "' and vocdt <= '" & Format(Trim(Mid$(Combo31.Text, InStr(Combo31.Text, "-") + 7, Len(Combo31.Text))), "YYYY-MM-DD") & "' and vocno >= '" & Trim(Mid$(Combo21.Text, 1, InStr(Combo21.Text, "-") - 1)) & "' and vocno <= '" & Trim(Mid$(Combo31.Text, 1, InStr(Combo31.Text, "-") - 1)) & "' ORDER BY vocno,vocdt,chqno,chqdt", cn, adOpenStatic, adLockBatchOptimistic
    rsHead.MoveFirst

    Do While Not rsHead.EOF

        Set RSac = New Recordset
        RSac.Open "select distinct accode from fa_payline where divcode = '" & rsHead("divcode") & "' and tc = " & rsHead("tc") & " and vocno =" & rsHead("vocno") & " and vocdt = '" & Format(rsHead("vocdt"), "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockBatchOptimistic
        RSac.MoveFirst

        Do While Not RSac.EOF

            For I = 1 To 2

                Set RSline = New Recordset
                RSline.Open "select accode,divcode,tc,vocno,vocdt,vocsno,isnull(narration1,' ')+' '+ ISNULL(narration2,' ') as narration ,(ISNULL(debit,0)-ISNULL(credit,0)) as amount from fa_payline where divcode = '" & rsHead("divcode") & "' and tc = " & rsHead("tc") & " and vocno =" & rsHead("vocno") & " and vocdt = '" & Format(rsHead("vocdt"), "YYYY-MM-DD") & "' and accode ='" & RSac("accode") & "' ORDER BY vocno,vocdt", cn, adOpenStatic, adLockBatchOptimistic

                Set Rs = New Recordset
                Rs.Open "select divname,ISNULL(ADD1,''),ISNULL(ADD2,''),ISNULL(city,''),ISNULL(PINCODE,''),ISNULL(PHONE1,''),ISNULL(GRAMS,'') from pp_divmas where divcode ='" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic

                Dim divaddress As String

                divaddress = IIf(Rs(1) <> "", Rs(1) & ",", "") & IIf(Rs(2) <> "", Rs(2) & ",", "") & IIf(Rs(3) <> "", Rs(3) & IIf(Rs(4) <> "", "-", ""), "") & Rs(4)

                Print #1, Space(5) & CENTRE(Rs("divname"), 70, " ")

'                If i = 2 Then
'                    Print #1, Space(14) & CENTRE(divaddress & Space(70 - Len(divaddress)) & "[Copy]", 70, " ")
'                Else
                    Print #1, Space(5) & CENTRE(divaddress, 70, " ")
'                End If

                If Rs(5) <> "" Or Rs(6) <> "" Then
                    Print #1, Space(5) & CENTRE(IIf(Rs(5) <> "", "Phone: " & Rs(5) & Space(4), "") & IIf(Rs(6) <> "", "Grams: " & Rs(6), ""), 70, " ")
                End If

                Print #1, Space(5) + "----------------------------------------------------------------------"

                Set Rs = New Recordset

                If IsNumeric(Mid$(RSline("accode"), 1, 1)) = False Then

                    Rs.Open "select slname,isnull(add1,''),isnull(add2,''),isnull(add3,''),isnull(city,''),isnull(pin,'0') as pin from fa_slmas where slcode ='" & RSline("accode") & "'", cn, adOpenStatic, adLockBatchOptimistic

                    suparr(1) = ""
                    suparr(2) = ""
                    suparr(3) = ""
                    suparr(4) = ""

                    j = 1

                    If Rs(1) <> "" Then
                        suparr(j) = Rs(1)
                        j = j + 1
                    End If

                    If Rs(2) <> "" Then
                        suparr(j) = Rs(2)
                        j = j + 1
                    End If

                    If Rs(3) <> "" Then
                        suparr(j) = Rs(3)
                        j = j + 1
                    End If

                    If Rs(4) <> "" Then
                        suparr(j) = Rs(4) & IIf(Rs(5) = "0", "", "-" & CStr(Rs(5)))
                        j = j + 1
                    Else
                        If Rs(5) <> "0" Then
                            suparr(j) = "PIN: " & Rs(5)
                            j = j + 1
                        End If
                    End If

                    Print #1, Space(5) & Rs("slname")
                    Print #1, Space(67) & "No.  : " & RSline("vocno")
                    Print #1, Space(5) & suparr(1)

'                    If IsNull(rs("add2")) = True Then
'                        Print #1, Space(53) & "Date : " & RSline("vocdt")
'                    Else
'                        Print #1, Space(10) & rs("add2") & Space(43 - Len(rs("add2"))) & "Date : " & RSline("vocdt")
'                        Print #1,
'                        Print #1, Space(47) & CStr(pdate) & Space(2) & CStr(Time); ""
'                    End If
                    Print #1, Space(10) & suparr(2) & Space(48 - Len(suparr(2))) & "Date : " & RSline("vocdt")
                    Print #1, Space(10) & suparr(3)
                    Print #1, Space(10) & suparr(4) '& Space(43 - Len(suparr(4))) & CStr(pdate) & Space(2) & CStr(Time); ""


                ElseIf IsNumeric(Mid$(RSline("accode"), 1, 1)) = True Then
                    Rs.Open "select glhead from fa_glmas where glcode ='" & RSline("accode") & "'", cn, adOpenStatic, adLockBatchOptimistic
                    Print #1, Space(5); CENTRE(Rs("glhead"), 70, " ")
                    Print #1, Space(58) & "No.  : "; Padl(RSline("vocno"), 10, " ")

                    Print #1, Space(5) + Space(53) & "Date : " & RSline("vocdt")
                End If

                Print #1,
                Print #1, Space(5) + "Dear Sirs,"
                Print #1,
                Print #1, Space(5) + Space(5) & "We have pleasure in enclosing our Ch/DD No : " & rsHead("chqno")
                Print #1, Space(5) + "dated " & Format(rsHead("chqdt"), "dd/mm/yyyy") & " against your following bills."

                RSline.MoveFirst

                Do While Not RSline.EOF

                    Set Rs = New Recordset
                    Rs.Open "select refvocno,refvocdt,amount from fa_apdbtl  where divcode = '" & RSline("divcode") & "' and tc = " & RSline("tc") & " and vocno =" & RSline("vocno") & " and vocdt = '" & Format(RSline("vocdt"), "YYYY-MM-DD") & "' and vocsno =" & RSline("vocsno") & "", cn, adOpenStatic, adLockBatchOptimistic

                    If Rs.RecordCount = 0 Then
                        STfound = "N"
                    Else
                        STfound = "Y"
                    End If

                    If STfound = "Y" Then
                        Exit Do
                    End If

                    If Mid(RSline("accode"), 1, 1) = "D" Then
                        STfound = "N"
                    End If

                    RSline.MoveNext
                Loop

                If STfound = "Y" Then
                    Print #1, Space(5) + String(70, "-")
                    Print #1, Space(5) + "Bill No" & Space(6) & "Bill Dt" & Space(15) & "Amount" & Space(10) & "Remarks"
                    Print #1, Space(5) + String(70, "-")
                ElseIf STfound = "N" Then
                    Print #1, Space(5) + String(70, "-")
                    Print #1, Space(5) + "Description" & Space(53) & "Amount"
                    Print #1, Space(5) + String(70, "-")
                End If

                If STfound = "Y" Then

                    RSline.MoveFirst
                    SUMamt = 0

                    Do While Not RSline.EOF

                        Set RScomb = New Recordset
                        Dim RsPy As Recordset

                        RScomb.Open "select refvocno,refvocdt,amount,REFTC from fa_apdbtl  where divcode = '" & RSline("divcode") & "' and tc = " & RSline("tc") & " and vocno =" & RSline("vocno") & " and vocdt = '" & Format(RSline("vocdt"), "YYYY-MM-DD") & "' and vocsno =" & RSline("vocsno") & "", cn, adOpenStatic, adLockBatchOptimistic

                        If RScomb.RecordCount <> 0 Then
                            RScomb.MoveFirst
                            Do While Not RScomb.EOF
                                VOClen = Len(INF(RScomb("amount"), 2))

                                Set RsPy = New Recordset
                                RsPy.Open "SELECT Billno,Billdt FROM Fa_Apaym WHERE Vocno = " & RScomb("REFVOCNO") & " AND Vocdt = '" & Format(RScomb("REFVOCDT"), "YYYY-MM-DD") & "' AND Tc = " & RScomb("REFTC"), connectstring
                                Print #1, Space(5) & RsPy("Billno") & Space(12 - Len(RsPy("Billno"))) & RsPy("Billdt") & Space(19 - Len(INF(RScomb("amount"), 2))) & INF(RScomb("amount"), 2)
                                SUMamt = SUMamt + RScomb("amount")
                                RScomb.MoveNext
                            Loop
                        End If

                        RSline.MoveNext
                    Loop

                ElseIf STfound = "N" Then

                    RSline.MoveFirst
                    SUMamt = 0

        nar1 = Mid(IIf(IsNull(RSline("narration")), "", RSline("narration")), 1, 53)
        nar2 = Mid(IIf(IsNull(RSline("narration")), "", RSline("narration")), 54, 53)
        nar3 = Mid(IIf(IsNull(RSline("narration")), "", RSline("narration")), 107, 53)
        nar4 = Mid(IIf(IsNull(RSline("narration")), "", RSline("narration")), 160, 53)

               Do While Not RSline.EOF
                 VOClen = Len(INF(RSline("amount"), 2))

          If Len(nar1) <= val(RSline("narration").DefinedSize) Then
            'Print #1, Space(5) + Mid$(RSline("narration"), 1, 53) & Space(70 - Len(Mid$(RSline("narration"), 1, 53)) - Len(INF(RSline("amount"), 2))) & INF(RSline("amount"), 2)
            Print #1, Space(5) + Padr(nar1, 53, " ") & Space(5) & Padl(INF(RSline("amount"), 2), 12, " ")
            co = co + 1

             If nar2 <> "" Then
            Print #1, Space(4) & nar2
            co = co + 1
            End If

            If nar3 <> "" Then
            Print #1, Space(5) & nar3
            co = co + 1
            End If

            If nar4 <> "" Then
            Print #1, Space(5) & nar4
            co = co + 1
            End If

            Else
                Print #z,
            End If

            SUMamt = SUMamt + RSline("amount")
                        RSline.MoveNext
                    Loop

                End If

                VOClen = Len(INF(SUMamt, 2))

                If STfound = "Y" Then
                    Print #1, Space(5) + Space(40 - Len(INF(SUMamt, 2))) & String(Len(INF(SUMamt, 2)) + 1, "-")
                    Print #1, Space(5) + Space(41 - Len(INF(SUMamt, 2))) & INF(SUMamt, 2)
                    Print #1, Space(5) + Space(40 - Len(INF(SUMamt, 2))) & String(Len(INF(SUMamt, 2)) + 1, "-")
                Else
                    Print #1, Space(5) + Space(69 - Len(INF(SUMamt, 2))) & String(Len(INF(SUMamt, 2)) + 1, "-")
                    Print #1, Space(5) + Space(70 - Len(INF(SUMamt, 2))) & INF(SUMamt, 2)
                    Print #1, Space(5) + Space(69 - Len(INF(SUMamt, 2))) & String(Len(INF(SUMamt, 2)) + 1, "-")
                End If

                Print #1,
                Print #1, Space(5) + "Please acknowledge and send your stamped receipt."
                Print #1,
                Print #1, Space(5) + Space(70 - 4 - Len(Trim(divname))) & "for " & Trim(divname)
                Print #1,
                Print #1, Space(5) + "Encl : a.a."
                Print #1,
                Print #1,


                If I = 1 Then
                    Print #1, Space(5) + String(70, "-")
                               Print #1, Chr(12)
                End If

            Next I

            Print #1, Chr(12)

            RSac.MoveNext
        Loop

        rsHead.MoveNext
    Loop

    Close #fileno

    fileno = FreeFile()
'    Open "c:\PAYMENT.bat" For Output As #fileno
'    Print #fileno, "cd\"
'    Print #fileno, "c:"
'    Print #fileno, "cd\"
'    Print #fileno, "type PAYMENT.TXT > Prn"
'    Close #fileno
'    REPVIEW.txtfile = "c:\PAYMENT.TXT"
'    REPVIEW.Batfile = "c:\PAYMENT.bat"
Call KALBATPROCESS("PAYMENT")
    Close #1

    Screen.MousePointer = 0

Case 38
Call BRSReport
Case 39
Call BRSCONS

End Select

Exit Sub
reports_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure reports of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cdprty_Click()
On Error GoTo cdprty_Click_Error

        Frame3.Visible = True
        Frame3.ZOrder
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "fa_slmas where SUBSTRING(slcode,1,2) = '" & Mid(Text2, 1, 2) & "'"
        KSLLIST1.listfield1 = "slcode"
        KSLLIST1.listfield2 = "slname"
        KSLLIST1.SetFocus
        cdn = ""

Exit Sub
cdprty_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cdprty_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub BCombo8_Click()
On Error GoTo BCombo8_Click_Error

Command1.Enabled = True
stbar.Panels(2).Text = ""

Exit Sub
BCombo8_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BCombo8_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub BCombo8_LostFocus()
Dim chers As Recordset
On Error GoTo BCombo8_LostFocus_Error

Set chers = New Recordset
chers.Open "select tc from fa_tcmas where tc=" & CInt(Mid(BCombo8.Text, 1, 2)) & "", connectstring, adOpenStatic, adLockBatchOptimistic
If chers.RecordCount <= 0 Then
    stbar.Panels(2).Text = "Please Selct a tc from Listbox"
    BCombo8.SetFocus
    Command1.Enabled = False
    Exit Sub
Else
   If chers(0).value < fjv And chers(0).value > fjv Then
      stbar.Panels(2).Text = "Please Selct a tc from Listbox"
      BCombo8.SetFocus
      Command1.Enabled = False
      Exit Sub
   Else
      stbar.Panels(2).Text = ""
   End If
End If

Exit Sub
BCombo8_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BCombo8_LostFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub BDTPicker3_CloseUp()
On Error GoTo BDTPicker3_CloseUp_Error

Command1.Enabled = True
BMaskEdBox3.Text = BDTPicker3.value
stbar.Panels(2).Text = ""

Exit Sub
BDTPicker3_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BDTPicker3_CloseUp of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BDTPicker4_CloseUp()
On Error GoTo BDTPicker4_CloseUp_Error

Command1.Enabled = True
BMaskEdBox4.Text = BDTPicker4.value
stbar.Panels(2).Text = ""

Exit Sub
BDTPicker4_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BDTPicker4_CloseUp of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BMaskEdBox3_Change()
On Error GoTo BMaskEdBox3_Change_Error

If IsDate(BMaskEdBox3.Text) = True And IsDate(BMaskEdBox4.Text) = True Then
If CDate(BMaskEdBox3.Text) > CDate(BMaskEdBox4.Text) Then
 BMaskEdBox4.Text = BMaskEdBox3.Text
 stbar.Panels(2).Text = "From date must be less than To date"
End If
End If

Exit Sub
BMaskEdBox3_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BMaskEdBox3_Change of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BMaskEdBox3_KeyPress(KeyAscii As Integer)
Command1.Enabled = True
End Sub
Private Sub BMaskEdBox3_LostFocus()
On Error GoTo BMaskEdBox3_LostFocus_Error

If Not (IsDate(BMaskEdBox3.Text)) Then
           BMaskEdBox3.Text = pdate
           BMaskEdBox4.SetFocus
           Exit Sub
ElseIf CDate(BMaskEdBox3.Text) < CDate(yfdate) Then
           stbar.Panels(2).Text = "From date must be  greater than or equal to year first date"
           BMaskEdBox3.Text = yfdate
           Command1.Enabled = False
           Exit Sub
ElseIf CDate(BMaskEdBox3.Text) > CDate(pdate) Then
           stbar.Panels(2).Text = "To date must be  less than or equal to processing date"
           BMaskEdBox3.Text = yldate
           Command1.Enabled = False
End If

Exit Sub
BMaskEdBox3_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BMaskEdBox3_LostFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BMaskEdBox4_Change()
On Error GoTo BMaskEdBox4_Change_Error

If IsDate(BMaskEdBox4.Text) = True Then
If CDate(BMaskEdBox3.Text) > CDate(BMaskEdBox4.Text) Then
 BMaskEdBox4.Text = BMaskEdBox3.Text
 stbar.Panels(2).Text = "From date must be less than To date"
End If
End If

Exit Sub
BMaskEdBox4_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BMaskEdBox4_Change of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BMaskEdBox4_KeyPress(KeyAscii As Integer)
Command1.Enabled = True
End Sub
Private Sub BMaskEdBox4_LostFocus()
On Error GoTo BMaskEdBox4_LostFocus_Error

  If Not (IsDate(BMaskEdBox4.Text)) Then
        BMaskEdBox4.Text = BMaskEdBox3.Text
        BMaskEdBox4.SetFocus
        Exit Sub
   End If
   If CDate(BMaskEdBox4.Text) < CDate(BMaskEdBox3.Text) Then
            stbar.Panels(2).Text = "To Date should not be less than From date"
            BMaskEdBox4.SetFocus
            BMaskEdBox4.Text = BMaskEdBox3.Text
   End If

Exit Sub
BMaskEdBox4_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BMaskEdBox4_LostFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub cmbTc_LostFocus()
On Error GoTo cmbTc_LostFocus_Error

Select Case rapindex
    Case 27
        Command1.SetFocus
End Select

Exit Sub
cmbTc_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmbTc_LostFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub Combo1_Click()
On Error GoTo Combo1_Click_Error

Select Case loc_RepIndex
Case 22, 24, 25
 Combo2.Enabled = True
 Combo3.Enabled = True

 Select Case loc_RepIndex
   Case 22
      Adodc2.RecordSource = "select vocno from FA_RECHEAD where divcode = '" & Divcode & "' and tc =to_number(" & Mid(Combo1.Text, 1, 2) & ")and (prtflag='N' or prtflag is null) order by vocno "
   Case 24
      Adodc2.RecordSource = "select vocno from FA_PAYHEAD where divcode = '" & Divcode & "' and tc =to_number(" & Mid(Combo1.Text, 1, 2) & ")and (prtflag='N' or prtflag is null) order by vocno "
   Case 25
      Adodc2.RecordSource = "select vocno from FA_JVHEAD where divcode = '" & Divcode & "' and tc =to_number(" & Mid(Combo1.Text, 1, 2) & ")and (prtflag='N' or prtflag is null) order by vocno "
 End Select
 Adodc2.Refresh
 If Adodc2.Recordset.RecordCount = 0 Then
         'MsgBox "No records found", vbInformation, head
         stbar.Panels(2).Text = "No records found"
         Command1.Enabled = False
         Combo2.Clear
         Combo3.Clear
         Screen.MousePointer = 0
         Exit Sub
 Else
    Command1.Enabled = True
    Adodc2.Recordset.MoveFirst
    Do While Not Adodc2.Recordset.EOF
        Combo2.AddItem "" & Adodc2.Recordset.Fields(0) & ""
        Combo3.AddItem "" & Adodc2.Recordset.Fields(0) & ""
        Adodc2.Recordset.MoveNext
    Loop
 End If
 Adodc2.Recordset.MoveFirst
 Combo2.Text = Adodc2.Recordset.Fields(0)
 Adodc2.Recordset.MoveLast
 Combo3.Text = Adodc2.Recordset.Fields(0)
Case 32, 33, 34, 35
    On Error Resume Next
    test1 = InStr(1, Combo1.Text, "-")
    test1 = Trim(Mid(Combo1.Text, 1, (CInt(test1) - 1)))
    test2 = InStr(1, Combo2.Text, "-")
    test2 = Trim(Mid(Combo2.Text, 1, (CInt(test2) - 1)))
    If test1 > test2 Then
        stbar.Panels(2).Text = "To Number must be greater than From Number"
        Combo2.ListIndex = Combo1.ListIndex
    Else
        stbar.Panels(2).Text = ""
    End If
Case 6
    Combo1.Top = 1600
End Select

Exit Sub
Combo1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Combo1_GotFocus()
SendKeys "{F4}"
End Sub

Private Sub Combo1_KeyUp(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo1_KeyUp_Error

Select Case loc_RepIndex
Case 6
    Combo1.Top = 1600
End Select

Exit Sub
Combo1_KeyUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_KeyUp of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_GotFocus()
SendKeys "{F4}"
End Sub

Private Sub Combo2_KeyUp(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo2_KeyUp_Error

Select Case loc_RepIndex
Case 7
    Combo2.Top = 1600
End Select

Exit Sub
Combo2_KeyUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_KeyUp of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo21_Click()
On Error GoTo Combo21_Click_Error

If Combo31.Text = "" Then
    Exit Sub
End If
If CDate(Right(Combo21.Text, 10)) > CDate(Right(Combo31.Text, 10)) Then
   stbar.Panels(2).Text = "To date must be greater than from Date"
   Combo31.ListIndex = Combo21.ListIndex
Else
test1 = InStr(1, Combo21.Text, "-")
test1 = Trim(Mid(Combo21.Text, 1, (CInt(test1) - 1)))
test2 = InStr(1, Combo31.Text, "-")
test2 = Trim(Mid(Combo31.Text, 1, (CInt(test2) - 1)))
If test1 > test2 And CDate(Right(Combo21.Text, 10)) = CDate(Right(Combo31.Text, 10)) Then
  stbar.Panels(2).Text = "To Voucher Number must be greater than from voucher number"
  Combo31.ListIndex = Combo21.ListIndex
Else
   stbar.Panels(2).Text = ""
End If
End If

Exit Sub
Combo21_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo21_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Combo2_Click()
On Error GoTo Combo2_Click_Error

Select Case loc_RepIndex
Case 32, 33, 34, 35
test1 = InStr(1, Combo1.Text, "-")
test1 = Trim(Mid(Combo1.Text, 1, (CInt(test1) - 1)))
test2 = InStr(1, Combo2.Text, "-")
test2 = Trim(Mid(Combo2.Text, 1, (CInt(test2) - 1)))
If test1 > test2 Then
  stbar.Panels(2).Text = "To Number must be greater than From Number"
  Combo2.ListIndex = Combo1.ListIndex
Else
   stbar.Panels(2).Text = ""
End If
Case 7, 700, 7000
    Combo2.Top = 1600
End Select

Exit Sub
Combo2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo3_GotFocus()
SendKeys "{F4}"
End Sub
Private Sub Combo31_Click()
On Error GoTo Combo31_Click_Error

If CDate(Right(Combo21.Text, 10)) > CDate(Right(Combo31.Text, 10)) Then
   stbar.Panels(2).Text = "To date must be greater than from Date"
   Combo31.ListIndex = Combo21.ListIndex
Else
test1 = InStr(1, Combo21.Text, "-")
test1 = Trim(Mid(Combo21.Text, 1, (CInt(test1) - 1)))
test2 = InStr(1, Combo31.Text, "-")
test2 = Trim(Mid(Combo31.Text, 1, (CInt(test2) - 1)))
If test1 > test2 And CDate(Right(Combo21.Text, 10)) = CDate(Right(Combo31.Text, 10)) Then
  'stbar.Panels(2).Text = "To Voucher Number must be greater than from voucher number"
  'Combo31.ListIndex = Combo21.ListIndex
Else
   stbar.Panels(2).Text = ""
End If
End If

Exit Sub
Combo31_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo31_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Combo5_Click()
On Error GoTo Combo5_Click_Error

Select Case loc_RepIndex
Case 29
   Text1.Locked = False

Case 13, 14, 15
   Adodc1.RecordSource = "select slcode from fa_slmas where SUBSTRING(slcode,1,2)='" & Mid(Combo5.Text, 1, 2) & "' order by slcode"
    Adodc1.Refresh
    If Adodc1.Recordset.RecordCount = 0 Then
'       MsgBox "No records found", vbInformation, head + " Reports"
stbar.Panels(2).Text = "No records found"
       Command1.Enabled = False
       Combo5.SetFocus
    Else
    Command1.Enabled = True
    Adodc1.Recordset.MoveFirst
    ftglac.Text = Adodc1.Recordset.Fields(0)
    Adodc1.Recordset.MoveLast
    ttglac.Text = Adodc1.Recordset.Fields(0)
    End If

End Select

Exit Sub
Combo5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo5_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Combo6_Change()

Dim qrdt As String

'If Mid(List1.Text, 1, 3) = "Jan" Or Mid(List1.Text, 1, 3) = "Feb" Or Mid(List1.Text, 1, 3) = "Mar" Then
'     qrdt = Year(yldate)
'     qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & qrdt & "%"
'  Else
'     qrdt = Year(yfdate)
'     qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & qrdt & "%"
'  End If
On Error GoTo Combo6_Change_Error

qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & Right(List1.Text, 4) & "%"

'  If Mid(List1.Text, 1, 3) = "Jan" Or Mid(List1.Text, 1, 3) = "Feb" Or Mid(List1.Text, 1, 3) = "Mar" Then
'     qrdt = Mid(Year(yldate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List1.Text, 1, 3)) & "-" & qrdt
'  Else
'     qrdt = Mid(Year(yfdate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List1.Text, 1, 3)) & "-" & qrdt
'  End If
If crnflg = "Y" Then
    Adodc2.RecordSource = "select distinct b.vocdt from fa_jvline b,fa_slmas a where b.divcode = '" & Divcode & "' and b.accode=a.slcode and a.slcode = '" & Mid(Combo6.Text, 1, 7) & "' and b.vocdt like '" & qrdt & "' and b.tc=" & TCN(0) & " "
Else
    Adodc2.RecordSource = "select  distinct b.vocdt from fa_jvline b,fa_slmas a where b.divcode = '" & Divcode & "' and b.accode=a.slcode and a.slcode = '" & Mid(Combo6.Text, 1, 7) & "' and b.vocdt like '" & qrdt & "' and b.tc=" & TCN(1) & " "
End If
'Combo6.Clear
'Combo7.Clear
Adodc2.Refresh
 If Adodc2.Recordset.RecordCount = 0 Then
'           MsgBox "No records found", vbInformation, head
        stbar.Panels(2).Text = "No records found"
         Command1.Enabled = False
         Combo7.Clear
         Screen.MousePointer = 0
         Exit Sub
 Else
    Command1.Enabled = True
    Combo7.Clear
    Adodc2.Recordset.MoveFirst
    Do While Not Adodc2.Recordset.EOF
        Combo7.AddItem "" & Adodc2.Recordset.Fields(0) & ""
        Adodc2.Recordset.MoveNext
    Loop
 End If
 Adodc2.Recordset.MoveFirst
 On Error Resume Next
 Combo7.ListIndex = 0

Exit Sub
Combo6_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo6_Change of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub


Private Sub Combo6_Click()

Dim qrdt As String
'  If Mid(List1.Text, 1, 3) = "Jan" Or Mid(List1.Text, 1, 3) = "Feb" Or Mid(List1.Text, 1, 3) = "Mar" Then
'     qrdt = Mid(Year(yldate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List1.Text, 1, 3)) & "-" & qrdt
'  Else
'     qrdt = Mid(Year(yfdate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List1.Text, 1, 3)) & "-" & qrdt
'  End If

'If Mid(List11.Text, 1, 3) = "Jan" Or Mid(List11.Text, 1, 3) = "Feb" Or Mid(List11.Text, 1, 3) = "Mar" Then
'     qrdt = Year(yldate)
'     qrdt = UCase(Mid(List11.Text, 1, 3)) & " %% " & qrdt & "%"
'  Else
'     qrdt = Year(yfdate)
'     qrdt = UCase(Mid(List11.Text, 1, 3)) & " %% " & qrdt & "%"
'  End If
On Error GoTo Combo6_Click_Error

qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & Right(List1.Text, 4) & "%"
If crnflg = "Y" Then
    'Adodc2.RecordSource = "select distinct b.vocdt from fa_jvline b,fa_slmas a,fa_param where  b.divcode = '" & Divcode & "' and b.accode=a.slcode and a.slcode = '" & Mid(Combo6.Text, 1, 7) & "' and b.vocdt like '" & qrdt & "' and b.tc = crnote "
    Adodc2.RecordSource = "select  distinct b.vocdt from fa_slmas a inner join fa_jvline b on  b.accode=a.slcode  inner join rm_lot c on c.divcode = b.divcode and  b.accode = c.supcd and c.dbno = b.vocno and c.pjdt = b.vocdt cross join fa_param where  b.divcode = '" & Divcode & "' and a.slcode = '" & Mid(Combo6.Text, 1, 7) & "' and b.vocdt like '" & qrdt & "' and b.tc= crnote"
Else
    Adodc2.RecordSource = "select  distinct b.vocdt from fa_slmas a inner join fa_jvline b on  b.accode=a.slcode  inner join rm_lot c on c.divcode = b.divcode and  b.accode = c.supcd and c.dbno = b.vocno and c.pjdt = b.vocdt cross join fa_param where  b.divcode = '" & Divcode & "' and a.slcode = '" & Mid(Combo6.Text, 1, 7) & "' and b.vocdt like '" & qrdt & "' and b.tc= drnote"
End If
'Combo6.Clear
Combo7.Clear
Adodc2.Refresh
 If Adodc2.Recordset.RecordCount = 0 Then
'           MsgBox "No records found", vbInformation, head
stbar.Panels(2).Text = "No records found"
         Command1.Enabled = False
         Combo7.Clear
         Screen.MousePointer = 0
         Exit Sub
 Else
    Command1.Enabled = True
    Adodc2.Recordset.MoveFirst
    Do While Not Adodc2.Recordset.EOF
        Combo7.AddItem "" & Adodc2.Recordset.Fields(0) & ""
        Adodc2.Recordset.MoveNext
    Loop
 End If
 Adodc2.Recordset.MoveFirst
 Combo7.Text = Adodc2.Recordset.Fields(0)

Exit Sub
Combo6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo6_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Combo7_Click()
Dim CDRs As Recordset

On Error GoTo Combo7_Click_Error

Set CDRs = New Recordset
If crnflg = "Y" Then
    CDRs.Open "select distinct b.vocno from fa_jvline b inner join fa_slmas a on a.slcode = b.accode inner join rm_lot c on c.divcode = b.divcode and  b.accode = c.supcd and c.dbno = b.vocno and c.pjdt = b.vocdt  cross join fa_param where  b.divcode = '" & Divcode & "' and a.slcode = '" & Mid(Combo6.Text, 1, 7) & "' and b.vocdt = '" & Format(Combo7.Text, "YYYY-MM-DD") & "' and b.tc = crnote ", connectstring, adOpenStatic
    'select distinct a.slcode+'--'+a.slname +'--'+isnull(a.city,'') FLD from fa_slmas a inner join fa_jvline b on  b.accode=a.slcode  inner join rm_lot c on c.divcode = b.divcode and  b.accode = a.supcd and c.dbno = b.vocno and c.pjdt = b.vocdt  where b.divcode = '01'  and b.tc=41 and year(b.vocdt) = 2014 and month(b.vocdt) = 9
Else
    'CDRs.Open "select  distinct b.vocno from fa_jvline b,fa_slmas a,fa_param where  b.divcode = '" & Divcode & "' and b.accode=a.slcode and a.slcode = '" & Mid(Combo6.Text, 1, 7) & "' and b.vocdt = '" & Format(Combo7.Text, "YYYY-MM-DD") & "' and b.tc= drnote", connectstring, adOpenStatic
    CDRs.Open "select distinct b.vocno from fa_jvline b inner join fa_slmas a on a.slcode = b.accode inner join rm_lot c on c.divcode = b.divcode and  b.accode = c.supcd and c.dbno = b.vocno and c.pjdt = b.vocdt  cross join fa_param where  b.divcode = '" & Divcode & "' and a.slcode = '" & Mid(Combo6.Text, 1, 7) & "' and b.vocdt = '" & Format(Combo7.Text, "YYYY-MM-DD") & "' and b.tc = drnote ", connectstring, adOpenStatic
    
End If
 If CDRs.RecordCount <= 0 Then
         stbar.Panels(2).Text = "No records found"
         Command1.Enabled = False
         Screen.MousePointer = 0
         
         Exit Sub
 Else
    Command1.Enabled = True
    CDRs.MoveFirst
    cmbTc.Clear
    Do While Not CDRs.EOF
        cmbTc.AddItem CDRs.Fields(0)
        CDRs.MoveNext
    Loop
    cmbTc.ListIndex = 0
 End If

Exit Sub
Combo7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo7_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub Command1_Click()

'======================= EXCLUSIVELY FOR VALIDATIONS

On Error GoTo Command1_Click_Error

Select Case loc_RepIndex
Case 619 'Transaction
    Call dailytrans1(MaskEdBox1.Text, MaskEdBox2.Text, Trim(Combo8.Text))
    Exit Sub

Case 1, 2   ' CASH BOOK
    If IsNull(Combo5.Text) Or Combo5.Text = Empty Or Not IsDate(MaskEdBox1.Text) Or Not IsDate(MaskEdBox2.Text) Then
        Exit Sub
    Else
        If IsDate(MaskEdBox1.Text) > IsDate(MaskEdBox2.Text) Then
            Exit Sub
        End If
    End If
End Select

'======================= END OF VALIDATIONS
Set cn = New Connection
cn.Open connectstring

Screen.MousePointer = 11
Dim yepd As String
If backend = "Sql Server" Then
cn.Execute "if exists (select * from sysobjects where id = object_id(N'[dbo].[numw]') and OBJECTPROPERTY(id, N'IsUserTable') = 1) drop table [dbo].[numw]"
End If
If loc_RepIndex = 27 And Combo7.Text = "" Then
   Combo7.SetFocus
   stbar.Panels(2).Text = "Please Enter Select a Date from List"
   Screen.MousePointer = 0
   Exit Sub
ElseIf loc_RepIndex = 27 Then
   Dim tenu1t As Integer
   Dim tenu11t As Integer, tenu21t As Integer
   Dim test1t As String
End If
 qrdt = UCase(Mid(List11.Text, 1, 3)) & " %% " & Right(List11.Text, 4) & "%"
    qyear = Right(List11.Text, 4)
    qmonth = Format(("01/" & Left(List11.Text, 3) & "/" & Right(List11.Text, 4)), "MM")

Dim l2 As RptLabel
Dim t1 As RptTextBox
Dim t2 As RptTextBox
'Set dv1 = New DataEnvironment1
'dv1.Connection1.ConnectionString = connectstring
Set cn = New Connection
If cn.State = 1 Then
    cn.Close
End If
Command1.Enabled = True
cn.Provider = "MSDATASHAPE"
cn.Open connectstring

Select Case loc_RepIndex

Case 1
 'Cash Book  based on Voucher date
 If Option5.value = True Then
    Call cashprint180
' Else
'    Call cashprint1
 End If
    Screen.MousePointer = 0
    Exit Sub
Case 2
 'Bank Book based on voucher date

    If loc_RepIndex = 22 Then
        Call cashprint22
    Else
        If Option5.value = True Then
            Call cashprint280  '80 COLUMN Report
        Else
            Call cashprint2   '130 COLUMN Report
        End If

    End If
    Screen.MousePointer = 0
Case 3
 'General Journal based on voucher date

Case 5

' If Mid(List2.Text, 1, 3) = "Jan" Or Mid(List2.Text, 1, 3) = "Feb" Or Mid(List2.Text, 1, 3) = "Mar" Then
'     qrdt = Year(yldate)
'     qrdt = UCase(Mid(List2.Text, 1, 3)) & " %% " & qrdt & "%"
'  Else
'     qrdt = Year(yfdate)
'     qrdt = UCase(Mid(List2.Text, 1, 3)) & " %% " & qrdt & "%"
'  End If
qrdt = UCase(Mid(List2.Text, 1, 3)) & " %% " & Right(List11.Text, 4) & "%"

'    If dv1.rsCommand5_Grouping.State = adStateOpen Then
'         dv1.rsCommand5_Grouping.Close
'    End If
       Set LB1 = purdaybook.Sections(2).Controls("List")
       LB1.Caption = "Purchase Day Book For the month of " & List2.Text & "," & IIf(List2.ListIndex < 3, Year(yldate), Year(yfdate))
       Set LB2 = purdaybook.Sections(2).Controls("pdate")
       LB2.Caption = pdate
       purdaybook.Caption = "Purchase Day Book"
       Set purdaybook.DataSource = dv1
      ' dv1.rsCommand5_Grouping.Open "SHAPE {select a.pjvdt,a.pjvno,s.slname,billno,billdt,billamt,g.glhead,narration1,qty,rate,amount from fa_purhd a,fa_purdt b,fa_slmas s,fa_glmas g where a.divcode = '" & divcode & "' and s.slcode = a.slcode and g.glcode =b.glcode and  a.pjvno=b.pjvno and a.pjvdt=b.pjvdt and a.tc=b.tc and a.tc = " & Mid(Combo1.Text, 1, 2) & " and a.pjvdt like '" & qrdt & "' order by a.pjvdt,a.pjvno} as command5 compute Command5 by 'pjvdt' ", cn
'        If dv1.rsCommand5_Grouping.RecordCount = 0 Then
'           MsgBox "No transactions for the period selected", vbInformation, head
'           Screen.MousePointer = 0
'           Exit Sub
'        Else
'           purdaybook.Show
'           Screen.MousePointer = 0
'        End If


Case 6

'    TC = Combo1.Text
'    Call YOPBalance1(TC)
Case 60

'    TC = Combo1.Text
'    Call YOPBalance2(TC)

    Exit Sub
'    Trial Balance - Year Opening Balance(GENERAL LEDGER)


Case 7, 700, 7000
    TC = Combo2.Text
    YRNM1 = fnyopym(pdate)
    yrnm2 = (Mid(YRNM1, 1, 4)) & "00"
    If Combo2.Text = "" Then
        MsgBox "Month Not Empty"
        Combo2.SetFocus
        Exit Sub
    End If
    If loc_RepIndex = 7 Then
       ' CurrentBalance1 (CStr(TC))
        Exit Sub
    ElseIf loc_RepIndex = 700 Then
      '  currentschedulebalance (CStr(TC))
        Exit Sub
    ElseIf loc_RepIndex = 7000 Then
       ' combinedbalance (CStr(TC))
        Exit Sub
    End If
 'Trial Balance - Current Balance (GENERAL LEDGER)

    If divtype = "H" And Check2.value = 1 Then
        Call Build_DivList
       ' Call repproc3(tbglcur)
    Else
        Divall = "'" + Divcode + "'"
       ' Call repproc2(tbglcur)
    End If
    If dv1.rsCommand11.State = adStateOpen Then
        dv1.rsCommand11.Close
    End If
    Dim Label3 As Long
    YRNM1 = fnyopym(pdate)
    yrnm2 = (Mid(YRNM1, 1, 4)) & "00"
    qrdt = Right(Combo2.Text, 4) & Format(("01/" & Left(Combo2.Text, 3) & "/" & Right(Combo2.Text, 4)), "MM")
    Set LB1 = tbglcur.Sections(2).Controls("LIST")
    LB1.Caption = "Trial Balance for the month ending " & Combo2.Text & ""
    If dv1.rsCommand11.State = 1 Then dv1.rsCommand11.Close
    dv1.rsCommand11.Open "SELECT g.glcode,m.glhead,SUM(ISNULL(g.debit,0)-ISNULL(g.credit,0)) AS DEBIT, NULL AS CREDIT from FA_GLBAL g ,FA_GLMAS m  where  g.divcode in (" & Divall & ") AND m.glcode=g.glcode AND ((g.yearmonth  between  " & YRNM1 & " and " & qrdt & " and  SUBSTRING(g.yearmonth,5,2)<> '00' ) or g.yearmonth = " & yrnm2 & " ) group by g.glcode,M.GLHEAD having  SUM(ISNULL(g.debit,0)-ISNULL(g.credit,0)) > 0  UNION SELECT g.glcode,m.glhead,NULL AS DEBIT, ABS(SUM(ISNULL(g.debit,0)-ISNULL(g.credit,0))) AS CREDIT from FA_GLBAL g ,FA_GLMAS m  where  g.divcode in (" & Divall & ") AND m.glcode=g.glcode AND ((g.yearmonth  between  " & YRNM1 & " and " & qrdt & " and  SUBSTRING(g.yearmonth,5,2)<> '00' ) or g.yearmonth = " & yrnm2 & " ) group by g.glcode,M.GLHEAD having  SUM(ISNULL(g.debit,0)-ISNULL(g.credit,0)) < 0  ORDER BY 1", cn
    If dv1.rsCommand11.RecordCount = 0 Then
            MsgBox "No transactions for the period selected", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
    End If
    caldebit = 0
    calcredit = 0
    dv1.rsCommand11.MoveFirst
    Do While Not (dv1.rsCommand11.EOF)
       caldebit = caldebit + IIf(IsNull(dv1.rsCommand11(2)), 0, dv1.rsCommand11(2))
       calcredit = calcredit + IIf(IsNull(dv1.rsCommand11(3)), 0, dv1.rsCommand11(3))
       dv1.rsCommand11.MoveNext
    Loop
    labelt1 = Format(caldebit, "#########0.00")
    labelt2 = Format(calcredit, "#########0.00")
    Set LB2 = tbglcur.Sections(5).Controls("label23")
    LB2.Caption = labelt1
    Set LB3 = tbglcur.Sections(5).Controls("label24")
    LB3.Caption = labelt2
    Set tbglcur.DataSource = dv1
    tbglcur.Show
    Screen.MousePointer = 0

Case 8
Case 9
Case 10

Case 11

Case 18

Case 19
Case 23
'RECEIPT PRINTING




'DEBIT NOTE


Case 22
'RECEIPT VOUCHER PRINTING


Case 24           'PAYMENT VOUCHER PRINTING

Case 25

    Call purjourn
Case 27

    'CREDIT/DEBIT NOTE REGISTER PRINTING
    If Trim(cmbTc.Text) = "" Then
    MsgBox "Please Select the Vocno", vbInformation, head: Screen.MousePointer = 0: Exit Sub
     End If
    Set REPVIEW = New Report.ReportView
    a = FreeFile()
Close
    Open KALFOLDERDATA & "\BRS.txt" For Output As #a

    Set rs2 = New Recordset
    rs2.Open "select slname ,ADD1,ADD2,'' AS ADD3,CITY,PIN from fa_slmas where slcode = '" & Mid(Combo6.Text, 1, 7) & "'", cn
    If crnflg = "Y" Or Option1.value = True Then
        Dim cnt As Recordset
        Set cm1 = New Command
        cm1.ActiveConnection = cn

        Set rs1 = New Recordset
        'cm1.CommandText = "create table numw(vocno NUMERIC(15),vocdt datetime,amt numeric(15,2),wamt varchar(150),narration1 varchar(150))"
        cm1.CommandText = "create table numw(vocno NUMERIC(15),vocdt datetime,amt numeric(15,2),wamt varchar(150),narration1 varchar(150), itemname varchar(30), quantity numeric (9,3), remark varchar(50))"
        cm1.Execute
'***        rs1.Open "select vocno,vocdt,SUM(ISNULL(credit,0)) credit,narration1 from fa_JVLINE Where divcode = '" & divcode & "' AND tc=" & TCN(0) & " and vocdt = '" & Format(Combo7.text, "YYYY-MM-DD") & "'  and ACCODE = '" & Mid(Combo6.text, 1, 6) & "' AND ISNULL(credit,0) > 0 GROUP BY vocno,vocdt,narration1", cn
        rs1.Open "select vocno,vocdt,SUM(ISNULL(credit,0)) credit from fa_JVLINE Where divcode = '" & Divcode & "' AND tc=" & TCN(0) & " and vocdt = '" & Format(Combo7.Text, "YYYY-MM-DD") & "'  and ACCODE = '" & Mid(Combo6.Text, 1, 7) & "' AND ISNULL(credit,0) > 0 GROUP BY vocno,vocdt", cn
        
        If rs1.RecordCount <= 0 Then MsgBox "No Records Found", vbInformation, "Kalsofte": Screen.MousePointer = 0: Exit Sub

        'rs1.MoveFirst
        Do While Not (rs1.EOF)
                wor = Num_To_Word(CDbl(rs1(2)))
'***                cn.Execute ("insert into numw(vocno,vocdt,amt,wamt,narration1) values (" & rs1(0).Value & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & rs1(2) & ",'" & wor & "','" & rs1("narration1") & "')")
                cn.Execute ("insert into numw(vocno,vocdt,amt,wamt) values (" & rs1(0).value & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & rs1(2) & ",'" & wor & "')")
                rs1.MoveNext
        Loop

        tot = 0
        Set Rs = New Recordset
        Rs.Open "Select distinct vocno,vocdt,amt,wamt from numw where vocno = " & cmbTc.Text, connectstring, adOpenStatic
''        Print #A, Space(5); Chr(27); "E"; CENTRE("CREDIT NOTE", 80, " "); Chr(27); "F"
''        Print #A, Chr(18)
        z = 0
        Dim CrCnt As Integer
        Dim intLoop2 As Integer

        Do While Not Rs.EOF
        For intLoop2 = 1 To 2
            Call DbCrntHeading("CREDIT NOTE", intLoop2)
            Print #a, Space(5) & "To,"
            Print #a, Space(5) & "M/s. " & Padr(rs2("slname"), 45, " ") & Space(1) & "No.  : " & Rs("vocno")
            Print #a, Space(10) & Padr(rs2("add1"), 45, " ") & Space(1) & "Date : " & Format(Rs("vocdt"), "dd/mm/yyyy")
            Print #a, Space(10) & Padr(rs2("add2"), 45, " ")
            Print #a, Space(10) & Padr(rs2("add3"), 45, " ")
            Print #a, Space(10) & Padr(rs2("city"), 45, " ")
            Print #a,
            Print #a, Space(5) & "We have credited your account as detailed here under."
            Print #a, Space(5) & String(75, "-")
            Print #a, Space(5) & "Particulars                                                          Amount"
            Print #a, Space(5) & String(75, "-")
'            Print #A, Space(5) & Padr(Mid$(rs("narration1"), 1, 60), 60, " ") & Space(1) & Padl(Format(rs("amt"), "#0.00"), 14, " ")
'            z = z + 1

            Set cnt = New Recordset
            cnt.Open "select vocno,vocdt,SUM(ISNULL(CREDIT,0)),narration1 from fa_JVLINE Where  divcode = '" & Divcode & "' and tc= " & TCN(0) & " and Vocno = " & Rs("Vocno") & " and vocdt = '" & Format(Rs("Vocdt"), "dd/mmm/yyyy") & "'  and ACCODE = '" & Mid(Combo6.Text, 1, 7) & "' AND ISNULL(Credit,0) > 0 GROUP BY vocno,vocdt,narration1", cn
            cnt.MoveFirst
            While Not cnt.EOF
                Print #a, Space(5) & Padr(cnt("narration1"), 60, " ") & Space(1) & Padl(Format(cnt(2), "#0.00"), 14, " ")
                z = z + 1
                If Len(Mid$(cnt("narration1"), 61, 12)) > 0 Then
                    Print #a, Space(5) & Padr(Mid$(cnt("narration1"), 61, 120), 60, " ")
                    z = z + 1
                End If
                tot = tot + cnt(2)
                cnt.MoveNext
            Wend
''            rs.MoveNext
''        Loop
            If z >= 5 Then
            Else
                For m = z To 6 - z
                    Print #a,
                Next
            End If
        z = 0
        CrCnt = CrCnt + 1
        Print #a, Space(5) & String(75, "-")
        Print #a, Space(45) & "  Total  " & Space(12) & Padl(Format(tot, "#0.00"), 14, " ")
        Print #a, Space(5) & String(75, "-")
        Print #a,
        wor = Num_To_Word(CDbl(tot))
        Print #a, Space(5) & Chr(27); "E" & "Rupees:" & wor; Chr(27); "F"
        Print #a, Space(5)
        Print #a,
        Print #a, Space(50) & "For "; Chr(27); "E" & Padr(Trim(divname), 30, " ") & Chr(27); "F"
        Print #a,
        Print #a,
        Print #a,
        Print #a, Space(60) & "Authorised Signatory"
        Print #a,
        If CrCnt = 2 Then
            Print #a, Chr(12)
            CrCnt = 0
        End If
        Print #a,
        rs1.MoveFirst
        tot = 0
Next intLoop2
        Rs.MoveNext
Loop
        Print #a,
End If
'        cm1.CommandText = "drop table numw"
'        cm1.Execute

    If drnflg = "Y" Or Option2.value = True Then
        Dim dnt As Recordset
        Set cm1 = New Command
        cm1.ActiveConnection = cn
        Set rs1 = New Recordset
        'cm1.CommandText = "create table numw(vocno NUMERIC(15),vocdt datetime,amt numeric(15,2),wamt varchar(150),narration1 varchar(150))"
        cm1.CommandText = "create table numw(vocno NUMERIC(15),vocdt datetime,amt numeric(15,2),wamt varchar(150),narration1 varchar(150), itemname varchar(30), quantity numeric(9,3), remark1 varchar(30))"
        cm1.Execute
'***        rs1.Open "select vocno,vocdt,SUM(ISNULL(DEBIT,0)),narration1 from fa_JVLINE Where  divcode = '" & divcode & "' and tc= " & TCN(1) & " and vocdt = '" & Format(Combo7.text, "dd/mmm/yyyy") & "'  and ACCODE = '" & Mid(Combo6.text, 1, 6) & "' AND ISNULL(debit,0) > 0 GROUP BY vocno,vocdt,narration1", cn

        'rs1.Open "select vocno,vocdt,SUM(ISNULL(DEBIT,0)) from fa_JVLINE Where  divcode = '" & divcode & "' and tc= " & TCN(1) & " and vocdt = '" & Format(Combo7.Text, "dd/mmm/yyyy") & "'  and ACCODE = '" & Mid(Combo6.Text, 1, 7) & "' AND ISNULL(debit,0) > 0 GROUP BY vocno,vocdt", cn
        Dim TmpTC As Double
        Dim tcrs As Recordset
        Set tcrs = New Recordset
        tcrs.Open "Select TC from IN_TrnHead where SlCode='" & Mid(Combo6.Text, 1, 7) & "' and docdt='" & Format(Combo7.Text, "dd/mmm/yyyy") & "' and ISNULL(DBAmt,0) >0", cn
        If tcrs.RecordCount > 0 Then
            TmpTC = 2
        Else
            TmpTC = 1
        End If
        tcrs.Close
        Set tcrs = Nothing
        
        
        
        If TmpTC = 1 Then
            'RS1.Open "select e.dbno,e.dbdt,e.dbamt,b.quantity,remark1,c.itemname,slname from in_trnhead a, in_trntail b, in_item c, fa_slmas d,IN_PJL e" & _
            " where  a.docno=b.docno and a.docdt=b.docdt and a.slcode=d.slcode and a.divcode='" & Divcode & "' and a.tc='" & TmpTC & "' and a.divcode=b.divcode and a.tc=b.tc and b.itemcode=c.itemcode " & _
            " and b.PJNO=e.PJVOCNO and b.PJDt=e.PJVOCDt " & _
            " and e.pJVOCDT='" & Format(Combo7.Text, "dd/mmm/yyyy") & "' AND ISNULL(e.dbamt,0) > 0 and a.slCODE = '" & Mid(Combo6.Text, 1, 7) & "'", Cn
            rs1.Open "SELECT dbno,DBDT,DBAMT,BALES as quantity,Remarks,a.varcode as itemname,slname,tinno,fbillno,FBILLDT,FNETWT,PLOTNO,lotdt,lotno FROM RM_LOT a,FA_SLMAS b,RM_VAR c WHERE " & _
                    "a.supcd=b.slcode AND a.VARCODE=c.VARCODE AND isnull(abs(dbamt),0)>0 AND PJdt='" & Format(Combo7.Text, "yyyy-MM-dd") & "' AND SUPCD='" & Mid(Combo6.Text, 1, 7) & "' and dbno='" & cmbTc.Text & "'", DB, adOpenStatic
        Else
            'RS1.Open "select Distinct a.dbno,a.dbdt,a.dbamt,b.quantity,remark1,c.itemname,slname from in_trnhead a, in_trntail b, in_item c, fa_slmas d,IN_PJL e" & _
            " where  a.docno=b.docno and a.docdt=b.docdt and a.slcode=d.slcode and a.divcode='" & Divcode & "' and a.tc='" & TmpTC & "' and a.divcode=b.divcode and a.tc=b.tc and b.itemcode=c.itemcode " & _
            " " & _
            " and a.docdt='" & Format(Combo7.Text, "dd/mmm/yyyy") & "' AND ISNULL(a.dbamt,0) > 0 and a.slCODE = '" & Mid(Combo6.Text, 1, 7) & "'", Cn
            rs1.Open "SELECT dbno,DBDT,DBAMT,BALES as quantity,Remarks,a.varcode as itemname,slname,tinno,fbillno,FBILLDT,FNETWT,PLOTNO,lotdt,lotno FROM RM_LOT a,FA_SLMAS b,RM_VAR c WHERE " & _
                    "a.supcd=b.slcode AND a.VARCODE=c.VARCODE AND isnull(abs(dbamt),0)>0 AND PJdt='" & Format(Combo7.Text, "yyyy-MM-dd") & "' AND SUPCD='" & Mid(Combo6.Text, 1, 7) & "' and dbno='" & cmbTc.Text & "'", DB, adOpenStatic

        End If
        
        If rs1.RecordCount <= 0 Then MsgBox "No Records Found", vbInformation, "Kalsofte": Screen.MousePointer = 0: Exit Sub
        rs1.MoveFirst
        Do While Not (rs1.EOF)
            amt = rs1(2)
            wor = Num_To_Word(CDbl(amt))
'***            cn.Execute ("insert into numw(vocno,vocdt,amt,wamt,narration1) values (" & rs1(0).Value & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & amt & ",'" & wor & "','" & rs1("narration1") & "')")
            'cn.Execute ("insert into numw(vocno,vocdt,amt,wamt) values (" & rs1(0).value & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & Amt & ",'" & wor & "')")
            cn.Execute ("insert into numw(vocno,vocdt,amt,wamt,itemname,quantity,remark1) values (" & cmbTc.Text & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & amt & ",'" & wor & "','" & Left(rs1("itemname"), 30) & "'," & val(rs1("quantity")) & ",'" & Left(rs1("remarks"), 30) & "')")
            rs1.MoveNext
        Loop

        Set Rs = New Recordset
        Rs.Open "Select distinct vocno,vocdt,amt,wamt, itemname, quantity, remark1 from numw where vocno = " & cmbTc.Text, cn
        If Rs.RecordCount <= 0 Then MsgBox "No Records Found", vbInformation, "Kalsofte": Screen.MousePointer = 0: Exit Sub
        Set rs3 = New Recordset
        rs3.Open "Select distinct vocno,vocdt,amt,wamt from numw where vocno = " & cmbTc.Text, cn
'''        Print #A, Chr(18)
'''        Print #A, Space(5); Chr(27); "E"; CENTRE("DEBIT NOTE", 80, " "); Chr(27); "F";
'''        Print #A,

        tot = 0
        Dim DbCnt As Integer
        Dim intLoop As Integer
        z = 0
        rs1.MoveFirst

'Do While Not rs.EOF
'Do While Not rs3.EOF
For intLoop = 1 To 1
        Call DbCrntHeading("DEBIT NOTE", intLoop)
        Print #a, Space(5) & "To,"
        Print #a, Space(5) & "M/s. " & Padr(rs2("slname"), 45, " ") & Space(9) & "No.  : " & Rs("vocno")
        Print #a, Space(10) & Padr(rs2("add1"), 45, " ") & Space(9) & "Date : " & Format(Rs("vocdt"), "dd/mm/yy")
        If IsNull(rs2("add2")) <> True Or rs2("add2") <> "" Then
            z1 = z1 + 1
        Else
            Print #a, Space(10) & Padr(rs2("add2"), 45, " ")
        End If
        If IsNull(rs2("add3")) <> True Or rs2("add3") <> " " Then
            z1 = z1 + 1
        Else
            Print #a, Space(10) & Padr(rs2("add3"), 45, " ")
        End If
        If (rs2("city") <> "" Or IsNull(rs2("city")) = False) Then
            Print #a, Space(10) & Padr(rs2("city") + " - " + rs2("pin") + ".", 55, " ")
        End If
        Print #a,
        Print #a, Space(5) & "TINNO        : " & Padr(rs1("tinno"), 15, " ")
        Print #a, Space(5) & "Bill No.     : " & Padr(rs1("fbillno"), 15, " ") & Space(18) & "Bill Date        : " & Padr(Format(rs1("fbilldt"), "dd/mm/yy"), 10, " ")
        Print #a, Space(5) & "Mill Lot No. : " & Padr(rs1("lotno"), 15, " ") & Space(18) & "Mill Lot Date    : " & Padr(Format(rs1("lotdt"), "dd/mm/yy"), 10, " ")
        Print #a, Space(5) & "Final Net Wt.: " & Padr(rs1("fnetwt"), 15, " ") & Space(18) & "Supplier Ref. No.: " & Padr(rs1("plotno"), 10, " ")
        If z1 >= 1 Then
            For I = 1 To z1
                Print #a,
            Next I
        End If
        Print #a, Space(5) & "We have debited your account as detailed here under."
        Print #a, Space(5) & String(75, "-")
        Print #a, Space(5) & "Particulars                                                          Amount"
        'Print #A, Space(5) & "Item Name" + Space(20) + "Qty.Return" + Space(1) + "Reason" + Space(23) + "Amount"
        Print #a, Space(5) & String(75, "-")

'**     Loop Here if more than one Debit entry in a Single Voucher

        Set dnt = New Recordset
        'dnt.Open "select vocno,vocdt,SUM(ISNULL(DEBIT,0)),narration1 from fa_JVLINE Where  divcode = '" & divcode & "' and tc= " & TCN(1) & " and Vocno = " & rs("Vocno") & " and vocdt = '" & Format(rs("Vocdt"), "dd/mmm/yyyy") & "'  and ACCODE = '" & Mid(Combo6.Text, 1, 7) & "' AND ISNULL(debit,0) > 0 GROUP BY vocno,vocdt,narration1", cn
        'dnt.Open "select vocno,vocdt,SUM(ISNULL(DEBIT,0)),narration1 from fa_JVLINE Where  divcode = '" & divcode & "' and tc= " & TCN(1) & " and Vocno = " & rs("Vocno") & " and vocdt = '" & Format(rs("Vocdt"), "dd/mmm/yyyy") & "'  and ACCODE = '" & Mid(Combo6.Text, 1, 7) & "' AND ISNULL(debit,0) > 0 GROUP BY vocno,vocdt,narration1", cn
        If TmpTC = 1 Then
            'dnt.Open "select f.dbno,f.dbdt,b.value,b.quantity,remark1,c.itemname,uom, slname, narration1,Isnull(F.dbamt,0)Dbamt from in_trnhead a, in_trntail b, in_item c, fa_slmas d, fa_JVLINE e,IN_PJL f " & _
                " where b.PJNO=f.PJVOCNO and b.PJDT=f.PJVOCDT and b.PJTC=f.FATC and a.docno=b.docno and a.docdt=b.docdt and a.slcode=d.slcode and a.divcode='" & Divcode & "' and a.tc='" & TmpTC & "' and a.divcode=b.divcode and a.tc=b.tc and b.itemcode=c.itemcode and f.dbno = " & Rs("vocno") & " and  " & _
                " F.dbdt='" & Format(Rs("vocdt"), "dd/mmm/yyyy") & "' AND ISNULL(f.dbamt,0) > 0 and a.slCODE = '" & Mid(Combo6.Text, 1, 7) & "' and" & _
                " F.dbno=e.vocno and F.dbdt=e.vocdt and a.divcode=e.divcode and a.slcode=e.accode and e.tc= " & TCN(1) & "", Cn
            dnt.Open "SELECT a.dbno,a.DBDT,a.pjamt AS value,a.BALES as quantity,Remarks AS remark1,a.varcode as itemname,bblflg,slname" & _
                    ",d.DBNarr as narration1,isnull(a.dbamt,0) AS dbamt FROM RM_LOT a,FA_SLMAS b,RM_VAR c,rm_LotAllowance d WHERE a.supcd=b.slcode AND a.VARCODE=c.VARCODE AND " & _
                    "a.lotno=d.Lotno AND a.lotdt=d.Lotdt AND a.DIVCODE=d.Divcode AND a.Asno=d.Asno AND a.adate=d.adate and isnull(abs(a.dbamt),0)>0 AND a.dbdt='" & Format(Combo7.Text, "yyyy-MM-dd") & "' AND SUPCD='" & Mid(Combo6.Text, 1, 7) & "' and a.dbno='" & cmbTc.Text & "'", DB, adOpenStatic
        Else
            'dnt.Open "select Distinct a.dbno,a.dbdt,b.value,b.quantity,remark1,c.itemname,uom, slname, narration1,isnull(B.vALUE,0)Dbamt from in_trnhead a, in_trntail b, in_item c, fa_slmas d, fa_JVLINE e " & _
            " where a.docno=b.docno and a.docdt=b.docdt and a.slcode=d.slcode and a.divcode='" & Divcode & "' and a.tc='" & TmpTC & "' and a.divcode=b.divcode and a.tc=b.tc and b.itemcode=c.itemcode and a.dbno = " & Rs("vocno") & " and  " & _
            " a.dbdt='" & Format(Rs("vocdt"), "dd/mmm/yyyy") & "' AND ISNULL(a.dbamt,0) > 0 and a.slCODE = '" & Mid(Combo6.Text, 1, 7) & "' and" & _
            " a.dbno=e.vocno and a.dbdt=e.vocdt and a.divcode=e.divcode and a.slcode=e.accode and e.tc= " & TCN(1) & "", Cn
            dnt.Open "SELECT a.dbno,a.DBDT,a.pjamt AS value,a.BALES as quantity,Remarks AS remark1,a.varcode as itemname,bblflg,slname" & _
                    ",d.DBNarr as narration1,isnull(a.dbamt,0) AS dbamt FROM RM_LOT a,FA_SLMAS b,RM_VAR c,rm_LotAllowance d WHERE a.supcd=b.slcode AND a.VARCODE=c.VARCODE AND " & _
                    "a.lotno=d.Lotno AND a.lotdt=d.Lotdt AND a.DIVCODE=d.Divcode AND a.Asno=d.Asno AND a.Adate=d.Adate and isnull(abs(a.dbamt),0)>0 AND a.dbdt='" & Format(Combo7.Text, "yyyy-MM-dd") & "' AND SUPCD='" & Mid(Combo6.Text, 1, 7) & "'  and a.dbno='" & cmbTc.Text & "'", DB, adOpenStatic
            
        End If
        
        slno = 0
        If dnt.RecordCount = 0 Then
            MsgBox "No Record found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        dnt.MoveFirst
        While Not dnt.EOF
            slno = slno + 1
            If slno = 1 Then
            'Print #A, Space(5) & Padr(dnt("narration1"), 60, " ") & Space(1) & Padl(Format(dnt(2), "#0.00"), 14, " ")
            'Print #a, Space(5) & Padr(dnt("narration1"), 60, " ") '& Space(1) & Padl(Format(dnt(2), "#0.00"), 14, " ")
            If TmpTC = 1 Then
                Pos1 = InStr(1, dnt("narration1"), "-") + 1
                Pos2 = InStr(Pos1, dnt("narration1"), "")
                
                TmpNarr1 = Mid(dnt("Narration1"), 1, Pos1)
                TmpNarr2 = " -  " & Mid(dnt("Narration1"), Pos1, Pos2 - Pos1)
                TmpNarr3 = " -  " & Mid(dnt("Narration1"), Pos2, Len(dnt("Narration1")) + 2 - Pos2)
                
                Print #a, Space(5) & Padr(TmpNarr1, 60, " ")
                If Len(TmpNarr1) > 62 Then
                    Print #a, Space(5) & Padr(Mid$(TmpNarr1, 61, 120), 60, " ")
                    z = z + 1
                End If
    
                Print #a, Space(5) & Padr(TmpNarr2, 60, " ")
                If Len(TmpNarr2) > 62 Then
                    Print #a, Space(5) & Padr(Mid$(TmpNarr2, 61, 120), 60, " ")
                    z = z + 1
                End If
    
                Print #a, Space(5) & Padr(TmpNarr3, 60, " ")
                If Len(TmpNarr3) > 62 Then
                    Print #a, Space(5) & Padr(Mid$(TmpNarr3, 61, 120), 60, " ")
                    z = z + 1
                End If
                z = z + 3
            Else
                Print #a, Space(5) & Padr(dnt("Narration1"), 60, " ")
                z = z + 1
            End If
                
    
'            For i = 1 To Len(Trim(dnt("narration1"))) Step 60
'                If Len(Mid$(dnt("narration1"), i, 12)) > 0 Then
'                    Print #a, Space(5) & Padr(Mid$(dnt("narration1"), i, 60), 60, " ")
'                    Z = Z + 1
'                End If
'            Next
            End If
            tempstr11 = dnt("itemname") + " - Qty: " + CStr(Format(dnt("quantity"), "#0.000")) + Space(1) + dnt("bblflg")
            tempstr12 = dnt("remark1")
            ''Print #a, Space(5) & Padr(tempstr11, 60, " ") & Space(1) & Padl(Format(dnt(2), "#0.00"), 14, " ")
            Print #a, Space(5) & Padr(tempstr11, 60, " ") & Space(1) & Padl(Format(dnt("dbamt"), "#0.00"), 14, " ")
            Print #a, Space(5) & Padr(tempstr12, 60, " ")
            'Print #A, Space(5) & Padr(dnt("itemname"), 26, " ") & Space(1) & Padl(Format(dnt("quantity"), "#0.000"), 12, " ") & Space(1) & Padr(dnt("remark1"), 21, " ") & Padl(Format(dnt(2), "#0.00"), 14, " ")
            z = z + 2
''            If Len(Mid$(dnt("narration1"), 61, 12)) > 0 Then
''                Print #A, Space(5) & Padr(Mid$(dnt("narration1"), 61, 120), 60, " ")
''                Z = Z + 1
''            End If
            If Len(Mid$(tempstr12, 61, 12)) > 0 Then
                Print #a, Space(5) & Padr(Mid$(tempstr12, 61, 120), 60, " ")
                z = z + 1
            End If


            tot = tot + dnt("dbamt")
            dnt.MoveNext
        Wend
'***        rs.MoveNext
'***Loop
        If z >= 5 Then
        Else
            For m = z To 4 - z
                Print #a,
            Next
        End If
        z = 0
        DbCnt = DbCnt + 1
        Print #a, Space(5) & String(75, "-")
        Print #a, Space(50) & "  Total  " & Space(7) & Padl(Format(tot, "#0.00"), 14, " ")
        Print #a, Space(5) & String(75, "-")
        wor = Num_To_Word(CDbl(Abs(tot)))
        Print #a, Space(5) & Chr(27); "E" & "" & wor & Chr(27); "F"
        Print #a, Space(5)
        'Print #A, Space(43) & Chr(27); "E" & "For" & Space(1) & Trim(divname) & Chr(27); "F"
        Set dnt2 = New Recordset
        'dnt2.Open "Select distinct vocno,vocdt,amt,wamt, itemname, quantity, remark1 from numw where vocno = " & cmbTc.Text, cn
        dnt2.Open "select compname from compmas a, pp_divmas b where b.divcode='" & Divcode & "' and a.compcode=b.compcode", cn
        'Print #A, Space(30) + Chr(27); "E" + Padl("For" & Space(1) & Trim(divname), 50, " ") & Chr(27); "F"
        Print #a, Space(30) + Chr(27); "E" + Padl("For" & Space(1) & Trim(dnt2("compname")), 50, " ") & Chr(27); "F"
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        'Print #a, Space(60) & "Authorised Signatory"
        Call footermod(CInt(a), UserFooter1.SelectedStr, 80)
        Print #a,

        If DbCnt = 2 Then
            Print #a, Chr(12)
            DbCnt = 0
        End If

        Print #a,
        rs1.MoveFirst
        tot = 0
Next intLoop
        'rs.MoveNext
        'rs3.MoveNext
'Loop

End If
        cm1.CommandText = "drop table numw"
        cm1.Execute

Close #a
a = FreeFile()
Call KALBATPROCESS("brs")
'Open "c:\BRSbat.bat" For Output As #A
'Print #A, "cd\"
'Print #A, "c:"
'Print #A, "cd\"
'Print #A, "c:\type BRS.txt > Prn"
'Close #A'
'REPVIEW.txtfile = "c:\BRS.txt"
'REPVIEW.Batfile = "c:\BRSbat.bat"
Screen.MousePointer = 0
Exit Sub
    Screen.MousePointer = 0
    Frame4.Visible = True
    Frame4.ZOrder
Case 29
    'CONFIRMATION OF BALANCE
Case 30
Case Else
    Call reports
End Select

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_LostFocus()
On Error GoTo Command1_LostFocus_Error

Select Case rapindex
    Case 27
        Command2.SetFocus
End Select

Exit Sub
Command1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_LostFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Unload Me
Screen.MousePointer = 0

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_LostFocus()
On Error GoTo Command2_LostFocus_Error

Select Case rapindex
    Case 27
        List1.SetFocus
End Select

Exit Sub
Command2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_LostFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

If ft = True Then
ftglac.Text = KSLLIST1.Code
Else
ttglac.Text = KSLLIST1.Code
End If
If cdn = "Y" Then
    Text2 = KSLLIST1.Code & "--" & KSLLIST1.Description
End If
Select Case KSLLIST1.listfield1
   Case "slcode"

         Text1.Text = KSLLIST1.Code & KSLLIST1.Description
         If cdn = "" Then
            cdprty = KSLLIST1.Code & "--" & KSLLIST1.Description
            Set rs1 = New Recordset
            Adodc1.RecordSource = "select vocdt vdt from fa_jvline where accode = '" & Mid(cdprty, 1, 6) & "'"
            Adodc1.Refresh
            If Adodc1.Recordset.RecordCount >= 1 Then
                Adodc1.Recordset.MoveFirst
                Set DataCombo1.RowSource = Adodc1
                DataCombo1.ListField = "vdt"
                DataCombo1.Text = Adodc1.Recordset.Fields(0)
            Else
                MsgBox "No transactions for the party selected"
                Screen.MousePointer = 0
                Exit Sub
            End If
         End If
  End Select
Frame3.Visible = False
Text1.Locked = True
Screen.MousePointer = 0

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

  Frame3.Visible = False
  Screen.MousePointer = 0

Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command6_Click()
On Error GoTo Command6_Click_Error

    Unload Me
    Screen.MousePointer = 0

Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker3_CloseUp()
On Error GoTo DTPicker3_CloseUp_Error

    MaskEdBox3.Text = DTPicker3.value

Exit Sub
DTPicker3_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker3_CloseUp of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command7_Click()
On Error GoTo Command7_Click_Error

Set rs2 = New Recordset
    rs2.Open "select slname ,ADD1,ADD2,'' AS ADD3,CITY,PIN from fa_slmas where slcode = '" & Mid(Combo6.Text, 1, 7) & "'", DB, adOpenStatic

If crnflg = "Y" Or Option1.value = True Then
        Dim cnt As Recordset
        Set cm1 = New Command
        cm1.ActiveConnection = DB

 Set rs3 = New Recordset
        rs3.Open "select * from sysobjects where name like 'numw1%'", DB, adOpenStatic
        If rs3.RecordCount >= 1 Then
        cm1.CommandText = "drop table numw1"
        cm1.Execute
        End If
       
        Set rs1 = New Recordset
'        cm1.CommandText = "create table numw(vocno NUMERIC(15),vocdt datetime,Crdt numeric(15,2),narration varchar(150))"
'        cm1.Execute
'        cm1.CommandText = ""
        cm1.CommandText = "create table numw1(vocno NUMERIC(15),vocdt datetime,amt numeric(15,2),wamt varchar(150),narration1 varchar(150), itemname varchar(30), quantity numeric (9,3), remark varchar(50))"
        cm1.Execute
'***        rs1.Open "select vocno,vocdt,SUM(ISNULL(credit,0)) credit,narration1 from fa_JVLINE Where divcode = '" & divcode & "' AND tc=" & TCN(0) & " and vocdt = '" & Format(Combo7.text, "YYYY-MM-DD") & "'  and ACCODE = '" & Mid(Combo6.text, 1, 6) & "' AND ISNULL(credit,0) > 0 GROUP BY vocno,vocdt,narration1", cn
        rs1.Open "select vocno,vocdt,SUM(ISNULL(credit,0)) credit from fa_JVLINE Where divcode = '" & Divcode & "' AND tc=" & TCN(0) & " and vocdt = '" & Format(Combo7.Text, "YYYY-MM-DD") & "'  and ACCODE = '" & Mid(Combo6.Text, 1, 7) & "' AND ISNULL(credit,0) > 0 GROUP BY vocno,vocdt", DB
        
        If rs1.RecordCount > 0 Then MsgBox "No Records Found", vbInformation, "Kalsofte": Screen.MousePointer = 0: Exit Sub

        'rs1.MoveFirst
        Do While Not (rs1.EOF)
                wor = Num_To_Word(CDbl(Abs(rs1(2))))
'***                cn.Execute ("insert into numw(vocno,vocdt,amt,wamt,narration1) values (" & rs1(0).Value & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & rs1(2) & ",'" & wor & "','" & rs1("narration1") & "')")
                DB.Execute ("insert into numw1(vocno,vocdt,amt,wamt) values (" & rs1(0).value & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & rs1(2) & ",'" & wor & "')")
                rs1.MoveNext
        Loop
        
        If Trim(cmbTc.Text) = "" Then
            MsgBox "Voucher No Should not be Empty !!!", vbInformation, head
            Exit Sub
        End If
     
        

      
      crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\rmi\CreditNote.rpt"
crr.RetrieveDataFiles
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring


    crr.StoredProcParam(0) = rs2(0)
    crr.StoredProcParam(1) = IIf(IsNull(rs2(1)), "", rs2(1))
    crr.StoredProcParam(2) = rs2(4)
    crr.StoredProcParam(3) = rs2(5)
    crr.StoredProcParam(4) = wor
    
    

    crr.PrinterCopies = 1
    crr.WindowState = crptMaximized

    SendKeys "{ENTER}"
    crr.Action = 1

    cn.Close


      


Else
If (Option2.value = True) Then

If drnflg = "Y" Then
        Dim dnt As Recordset
        Set cm1 = New Command
        cm1.ActiveConnection = DB
        Set rs1 = New Recordset
        Set rs3 = New Recordset
        rs3.Open "select * from sysobjects where name like 'numw%'", DB, adOpenStatic
        If rs3.RecordCount >= 1 Then
        If Table_Exists("numw") = True Then
            cm1.CommandText = "drop table numw"
            cm1.Execute
        End If
        End If
        
        cm1.CommandText = ""
        'cm1.CommandText = "create table numw(vocno NUMERIC(15),vocdt datetime,amt numeric(15,2),wamt varchar(150),narration1 varchar(150))"
        cm1.CommandText = "Create table numw(dbno numeric(15),dbdt datetime,bales numeric(9,3),Remarks varchar(50),varcode varchar(30),slname varchar(50),tinno varchar(20),billno varchar(20),billdt datetime,netwt numeric(9,3),plotno varchar(20),lotdt datetime,lotno numeric(5),dbamt numeric(9,3))"
        cm1.Execute
'***        rs1.Open "select vocno,vocdt,SUM(ISNULL(DEBIT,0)),narration1 from fa_JVLINE Where  divcode = '" & divcode & "' and tc= " & TCN(1) & " and vocdt = '" & Format(Combo7.text, "dd/mmm/yyyy") & "'  and ACCODE = '" & Mid(Combo6.text, 1, 6) & "' AND ISNULL(debit,0) > 0 GROUP BY vocno,vocdt,narration1", cn

        'rs1.Open "select vocno,vocdt,SUM(ISNULL(DEBIT,0)) from fa_JVLINE Where  divcode = '" & divcode & "' and tc= " & TCN(1) & " and vocdt = '" & Format(Combo7.Text, "dd/mmm/yyyy") & "'  and ACCODE = '" & Mid(Combo6.Text, 1, 7) & "' AND ISNULL(debit,0) > 0 GROUP BY vocno,vocdt", cn
        Dim TmpTC As Double
        Dim tcrs As Recordset
        Set tcrs = New Recordset
        tcrs.Open "Select TC from IN_TrnHead where SlCode='" & Mid(Combo6.Text, 1, 7) & "' and docdt='" & Format(Combo7.Text, "dd/mmm/yyyy") & "' and ISNULL(DBAmt,0) >0", DB
        If tcrs.RecordCount > 0 Then
            TmpTC = 2
        Else
            TmpTC = 1
        End If
        tcrs.Close
        Set tcrs = Nothing
        
        
        
        If TmpTC = 1 Then
            'RS1.Open "select e.dbno,e.dbdt,e.dbamt,b.quantity,remark1,c.itemname,slname from in_trnhead a, in_trntail b, in_item c, fa_slmas d,IN_PJL e" & _
            " where  a.docno=b.docno and a.docdt=b.docdt and a.slcode=d.slcode and a.divcode='" & Divcode & "' and a.tc='" & TmpTC & "' and a.divcode=b.divcode and a.tc=b.tc and b.itemcode=c.itemcode " & _
            " and b.PJNO=e.PJVOCNO and b.PJDt=e.PJVOCDt " & _
            " and e.pJVOCDT='" & Format(Combo7.Text, "dd/mmm/yyyy") & "' AND ISNULL(e.dbamt,0) > 0 and a.slCODE = '" & Mid(Combo6.Text, 1, 7) & "'", Cn
            rs1.Open "SELECT d.dbno,d.DBDT,a.BALES as quantity,Remarks,a.varcode as itemname,b.slname,b.tinno,a.fbillno,FBILLDT,FNETWT,PLOTNO,a.lotdt,a.lotno,isnull(a.dbamt,0) AS dbamt FROM RM_LOT a,FA_SLMAS b,RM_VAR c,rm_LotAllowance d WHERE a.supcd=b.slcode AND a.VARCODE=c.VARCODE AND a.lotno=d.Lotno AND a.lotdt=d.Lotdt AND a.DIVCODE=d.Divcode AND a.DBNO=d.Dbno AND a.DBDT=d.DBdt and isnull(abs(d.dbamt),0)>0 AND " & _
                    " a.PJdt='" & Format(Combo7.Text, "yyyy-MM-dd") & "' AND SUPCD='" & Mid(Combo6.Text, 1, 7) & "' and d.dbno='" & val(cmbTc.Text) & "'", DB, adOpenStatic
        Else
            'RS1.Open "select Distinct a.dbno,a.dbdt,a.dbamt,b.quantity,remark1,c.itemname,slname from in_trnhead a, in_trntail b, in_item c, fa_slmas d,IN_PJL e" & _
            " where  a.docno=b.docno and a.docdt=b.docdt and a.slcode=d.slcode and a.divcode='" & Divcode & "' and a.tc='" & TmpTC & "' and a.divcode=b.divcode and a.tc=b.tc and b.itemcode=c.itemcode " & _
            " " & _
            " and a.docdt='" & Format(Combo7.Text, "dd/mmm/yyyy") & "' AND ISNULL(a.dbamt,0) > 0 and a.slCODE = '" & Mid(Combo6.Text, 1, 7) & "'", Cn
            rs1.Open "SELECT d.dbno,d.DBDT,a.BALES as quantity,Remarks,a.varcode as itemname,b.slname,b.tinno,a.fbillno,FBILLDT,FNETWT,PLOTNO,a.lotdt,a.lotno,isnull(a.dbamt,0) AS dbamt FROM RM_LOT a,FA_SLMAS b,RM_VAR c,rm_LotAllowance d WHERE a.supcd=b.slcode AND a.VARCODE=c.VARCODE AND a.lotno=d.Lotno AND a.lotdt=d.Lotdt AND a.DIVCODE=d.Divcode AND a.DBNO=d.Dbno AND a.DBDT=d.DBdt and isnull(abs(d.dbamt),0)>0 AND " & _
                    " a.PJdt='" & Format(Combo7.Text, "yyyy-MM-dd") & "' AND SUPCD='" & Mid(Combo6.Text, 1, 7) & "' and d.dbno='" & val(cmbTc.Text) & "'", DB, adOpenStatic

        End If
        
        If rs1.RecordCount <= 0 Then MsgBox "No Records Found", vbInformation, "Kalsofte": Screen.MousePointer = 0: Exit Sub
        rs1.MoveFirst
        Do While Not (rs1.EOF)
            amt = rs1(13)
            wor = Num_To_Word(CDbl(Abs(amt)))
            SqlStr = "insert into numw(dbno,dbdt,bales,Remarks,varcode,slname,tinno,billno,billdt,netwt,plotno,lotdt,lotno,dbamt) values (" & rs1(0) & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & rs1(2) & ",'" & " " & "','" & rs1(4) & "','" & rs1(5) & "','" & rs1(6) & "','" & rs1(7) & "','" & Format(rs1(8), "yyyy-mm-dd") & "','" & rs1(9) & "','" & rs1(10) & "','" & Format(rs1(11), "yyyy-mm-dd") & " ','" & rs1(12) & "','" & rs1(13) & "')"
            DB.Execute ("insert into numw(dbno,dbdt,bales,Remarks,varcode,slname,tinno,billno,billdt,netwt,plotno,lotdt,lotno,dbamt) values (" & rs1(0) & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & rs1(2) & ",'" & " " & "','" & rs1(4) & "','" & rs1(5) & "','" & rs1(6) & "','" & rs1(7) & "','" & Format(rs1(8), "yyyy-mm-dd") & "','" & rs1(9) & "','" & rs1(10) & "','" & Format(rs1(11), "yyyy-mm-dd") & " ','" & rs1(12) & "','" & rs1(13) & "')")
            rs1.MoveNext
        Loop
        End If
             
        Set dnt2 = New Recordset
        dnt2.Open "select compname from compmas a, pp_divmas b where b.divcode='" & Divcode & "' and a.compcode=b.compcode", DB
        'Print #A, Space(30) + Chr(27); "E" + Padl("For" & Space(1) & Trim(divname), 50, " ") & Chr(27); "F"
        rs1.MoveFirst
        tot = 0
        
crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\DebitNote.rpt"
crr.RetrieveDataFiles
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring


    crr.Connect = connectstring
    crr.ParameterFields(0) = "@Rupees;" & Num_To_Word(CDbl(Abs(rs1(13))))
    crr.ParameterFields(1) = "@slname;" & rs2(0)
    crr.ParameterFields(2) = "@Add1;" & rs2(1)
    crr.ParameterFields(3) = "@City;" & rs2(4)
    crr.ParameterFields(4) = "@PinCode;" & rs2(5)
    crr.ParameterFields(5) = "@Rs;" & wor
    crr.ParameterFields(6) = "@dbdt;" & Format(Combo7.Text, "yyyy-MM-dd")
    crr.ParameterFields(7) = "@supcd;" & Mid(Combo6.Text, 1, 7)
    crr.ParameterFields(8) = "@dbno;" & cmbTc.Text

    crr.PrinterCopies = 1
    crr.WindowState = crptMaximized

    SendKeys "{ENTER}"
    crr.Action = 1

    cn.Close

        Screen.MousePointer = 0
        Exit Sub
    Screen.MousePointer = 0
    Frame4.Visible = True
    Frame4.ZOrder
    End If
    End If

Exit Sub
Command7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command7_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set dv1 = New DataEnvironment1
dv1.Connection1.ConnectionString = connectstring
Adodc1.ConnectionString = connectstring
Adodc2.ConnectionString = connectstring
Set cn = New Connection
cn.Open connectstring
loc_RepIndex = Repindex
DTPicker1.maxdate = pdate
DTPicker2.maxdate = pdate
DTPicker1.MinDate = yfdate
DTPicker2.MinDate = yfdate
DTPicker4.Visible = False
DTPicker5.Visible = False
MaskEdBox3.Visible = False
MaskEdBox4.Visible = False
MaskEdBox1.Text = CDate(MONTH(pdate) & " " & Year(pdate))
MaskEdBox2.Text = pdate
Label5.Visible = True
List11.Visible = False
Command1.Visible = True
Command2.Visible = True
Command1.Default = True
Combo8.Visible = False
Call Build_DivList

' CASH or BANK BOOK
If (loc_RepIndex = 1 Or loc_RepIndex = 2 Or loc_RepIndex = 22) And divtype = "H" Then
    Check1.Enabled = True
    Check1.Visible = True
Else
    Check1.Enabled = False
    Check1.Visible = False
End If
  Dim MON1 As Integer
  Dim DATEA As String
  MON1 = DateDiff("M", yfdate, yldate) + 1
  DATEA = yfdate
  List21.Width = List21.Width + 100
  For I = 1 To MON1
    List2.AddItem Format(DATEA, "MMMM") & " - " & Format(DATEA, "YYYY")
    List11.AddItem Format(DATEA, "MMMM") & " - " & Format(DATEA, "YYYY")
    List21.AddItem Format(DATEA, "MMMM") & " - " & Format(DATEA, "YYYY")
    List1.AddItem Format(DATEA, "MMMM") & " - " & Format(DATEA, "YYYY")
    DATEA = DateAdd("M", 1, DATEA)
  Next I

Select Case loc_RepIndex
Case 619 'Transaction
    Frame1.Visible = False
    Frame2.Visible = True
    Frame2.Top = 1450
    Command1.Top = 4500
    Command1.Left = 3600
    Command2.Top = 4500
    Command2.Left = 5200
    Label5.Caption = "Transaction"
    Check1.Visible = False
    Label7.Caption = "From Entry Date"
    Label8.Caption = "To Entry Date"
    Label6.Caption = "User Type"
    Label6.Visible = False
    flglac.Visible = False
    lprty.Visible = False
    Combo5.Visible = False
    Combo8.Top = 875
    Label6.Top = Combo8.Top
    Frame2.Height = 2900
    Shape3.Height = 2410
    Set UserRs = New Recordset
    UserRs.Open "select distinct entusrid from fa_jvhead a where entusrid is not null union select distinct entusrid from fa_purhd b where entusrid is not null union select distinct entusrid from fa_rechead c where entusrid is not null union select distinct entusrid from fa_payhead d where entusrid is not null", cn
    Combo8.Clear
    counting = 0
    Do While Not UserRs.EOF
        Combo8.AddItem IIf(IsNull(UserRs(0)), " ", UserRs(0))
        UserRs.MoveNext
        counting = counting + 1
    Loop
    If counting > 0 Then
        Combo8.AddItem "All"
        UserRs.MoveFirst
        Combo8.Text = IIf(IsNull(UserRs(0)), " ", UserRs(0))
    End If
    If UserRs.EOF = True Then Command1.Enabled = False
    DTPicker1.value = Format(MaskEdBox1.Text, "dd/mm/yyyy")
    DTPicker2.value = Format(MaskEdBox2.Text, "dd/mm/yyyy")

Case 1
'PERIODICAL - CASH BOOK DATEWISE
    Frame1.Visible = False
    Frame2.Visible = True
    Frame2.Left = 1500
    Frame2.Top = 1500
    Frame3.Visible = False
    lprty.Visible = False
    flglac.Visible = False
    Text1.Visible = False
    Option6.value = True
    Option5.Visible = True
    Option6.Visible = True
    Command1.Top = 5000
    Command2.Top = 5000
    Command1.Left = 3200
    Command2.Left = 5000
    MaskEdBox1.Left = 2450
    MaskEdBox2.Left = 2450
    DTPicker1.Left = 2450
    DTPicker2.Left = 2450
    Combo5.Left = 2450
    Label5.Caption = "Cash Book"
    Adodc1.RecordSource = "select TC,TCHEAD from FA_TCMAS,FA_PARAM WHERE TC between fromcashtc and tocashtc AND FA_TCMAS.DIVCODE = '" & Divcode & "'"
    Adodc1.Refresh
    If Adodc1.Recordset.RecordCount > 0 Then
    Adodc1.Recordset.MoveFirst
    Combo5.Clear
    Do While Not Adodc1.Recordset.EOF
       Combo5.AddItem "" & Adodc1.Recordset.Fields(0) & "  " & "------- " & Adodc1.Recordset.Fields(1) & ""
       Adodc1.Recordset.MoveNext
    Loop
    Else
        MsgBox "No Records found", vbInformation, head
        Frame2.Enabled = False
        Command1.Enabled = False
        Exit Sub
    End If
    Adodc1.Recordset.MoveFirst
    Combo5.Text = Adodc1.Recordset.Fields(0) & "  " & "------- " & Adodc1.Recordset.Fields(1)


Case 27
                Command1.Top = 5000
                Command2.Top = 5000
                Command1.Left = 2700
                Command2.Left = 4500
                Command7.Top = 5000
                Frame4.Visible = True
                Frame4.Top = 1200
                Frame4.Left = 1500
                Option1.value = True
                crnflg = "Y"
                drnflg = ""
                List1.Width = 2250
                Combo7.Width = 1500
                Label5 = ""
                Frame5.Visible = False
                Frame1.Visible = False
                Frame2.Visible = False
                List1.Text = CStr(Format(pdate, "mmmm"))
                
                    Me.Caption = "Debit/Credit Note"
                    Label12.Caption = "Debit/Credit Note"
                    Option1.tabIndex = 0
                    Option2.tabIndex = 1
                    List1.tabIndex = 2
                    Combo6.tabIndex = 3
                    Combo7.tabIndex = 4
                    cmbTc.tabIndex = 5
                    Command1.tabIndex = 6
                    Command2.tabIndex = 7
                
                
                If qmonth >= 0 And qmonth <= 12 Then
                    List11.Text = List11.List(List11.TopIndex)
                End If
                qyear = Right(List11.Text, 4)
                qmonth = Format(("01/" & Left(List11.Text, 3) & "/" & Right(List11.Text, 4)), "MM")
                qrdt = UCase(Mid(List11.Text, 1, 3)) & " %% " & Right(List11.Text, 4) & "%"
                Set TCN = New Recordset
                TCN.Open "select crnote,drnote from fa_param", cn
                Set Rs = New Recordset
'                Rs.Open "Select top 1 vocdt,vocno,a.tc,tchead from fa_jvhead a inner join fa_tcmas b on  a.tc = b.tc where a.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and (a.tc=" & val(TCN(0)) & " or a.tc=" & val(TCN(1)) & ") order by  vocno desc ,vocdt desc", Cn
                
                Rs.Open "Select top 1 vocdt,vocno,a.tc,tchead from fa_jvhead a  inner join fa_tcmas b on  a.tc = b.tc inner join rm_lot  c on  a.divcode = b.divcode and a.vocno = c.dbno and c.dbamt > 0  where  c.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and   a.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND (a.tc=" & val(TCN(0)) & " or a.tc=" & val(TCN(1)) & ") order by  vocno desc ,vocdt desc", DB

                If Not Rs.EOF Then
                    List1.Text = Format(Rs(0), "mmmm") & " - " & Format(Rs(0), "yyyy")
                    qrdt = Rs(0)
                If Rs(2) = TCN(0) Then Option1.value = True
                    If Rs(2) = TCN(1) Then Option2.value = True
                End If
                If TCN.RecordCount = 0 Then
                    MsgBox "Credit Note TC not defined in parameter", vbInformation, head
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                If crnflg = "Y" Then
                    Adodc2.RecordSource = "select distinct a.slcode,a.slname ,a.city FLD from fa_slmas a,fa_jvline b where b.divcode = '" & Divcode & "' and b.accode=a.slcode and b.tc = " & TCN(0) & " and b.vocdt  like '" & qrdt & "' and b.divcode = '" & Divcode & "'"
                Else
                    Adodc2.RecordSource = "select distinct a.slcode,a.slname,a.city FLD from fa_slmas a,fa_jvline b where b.divcode = '" & Divcode & "' and b.accode=a.slcode and b.tc= " & TCN(1) & " and b.vocdt  like '" & qrdt & "' and b.divcode = '" & Divcode & "'"
                End If
                Combo6.Clear
                Adodc2.Refresh
                If Adodc2.Recordset.RecordCount <= 0 Then
                    MsgBox "No Credit Note found", vbInformation, head
                    Exit Sub
                End If
                If Adodc2.Recordset.EOF = False And Adodc2.Recordset.BOF = False Then
                    Adodc2.Recordset.MoveFirst
                    Combo6.Clear
                    Do While Not Adodc2.Recordset.EOF
                        Combo6.AddItem "" & Adodc2.Recordset.Fields(0) & "  " & "--- " & Adodc2.Recordset.Fields(1) & " " & "---" & Adodc2.Recordset.Fields(2) & ""
                        Adodc2.Recordset.MoveNext
                    Loop
                    Adodc2.Recordset.MoveFirst
                    Combo6.Text = Adodc2.Recordset.Fields(0) & "  " & "--- " & Adodc2.Recordset.Fields(1) & " " & "---" & Adodc2.Recordset.Fields(2) & " "
                    If crnflg = "Y" Then
                        Adodc2.RecordSource = "select distinct b.vocdt from fa_jvline b,fa_slmas a where b.accode=a.slcode and a.slcode = '" & Mid(Combo6.Text, 1, 7) & "' and b.vocdt like '" & qrdt & "' and b.tc=" & TCN(0) & " and b.divcode = '" & Divcode & "'"
                    Else
                        Adodc2.RecordSource = "select distinct b.vocdt from fa_jvline b,fa_slmas a where b.accode=a.slcode and a.slcode = '" & Mid(Combo6.Text, 1, 7) & "' and b.vocdt like '" & qrdt & "' and b.tc=" & TCN(1) & " and b.divcode = '" & Divcode & "' "
                    End If
                    Combo7.Clear
                    Adodc2.Refresh
                    If Adodc2.Recordset.RecordCount = 0 Then
                        MsgBox "No records found", vbInformation, head
                        Command1.Enabled = False
                        Combo7.Clear
                        Screen.MousePointer = 0
                        Exit Sub
                    Else
                    Command1.Enabled = True
                    Adodc2.Recordset.MoveFirst
                    Do While Not Adodc2.Recordset.EOF
                        Combo7.AddItem "" & Adodc2.Recordset.Fields(0) & ""
                        Adodc2.Recordset.MoveNext
                    Loop
                    End If
                        Adodc2.Recordset.MoveFirst
                        Combo7.Text = Adodc2.Recordset.Fields(0)
                    Else
                        stbar.Panels(2).Text = "No Records found for this month"
                        Command1.Enabled = False
                        Combo7.Clear
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                    Frame6.Visible = True
                    UserFooter1.Visible = True
                    Option8.value = True

'Case 127
''CREDIT/DEBIT NOTE PRINTING
'    Frame1.Visible = False
'    Frame2.Visible = False
'    Frame5.Visible = True
'    Frame5.ZOrder
'    If Option3.Value = True Then
'        crnflg = "Y"
'        drnflg = ""
'    ElseIf Option4.Value = True Then
'        drnflg = "Y"
'        crnflg = ""
'    End If
'    Label5 = ""


Case 29
 'CONFIRMATION OF BALANCE
                Frame1.Visible = False
                Frame2.Visible = True
                DTPicker1.Visible = False
                MaskEdBox1.Visible = False
                Text1.Visible = True
                Text1.Locked = True
                lprty.Visible = False
                flglac.Visible = False
                Label1.Top = 480
                Label6.Caption = "Party Type "
                Label2.Top = 1155
                Label3.Top = 1845
                Label3.Visible = True
                Label7.Caption = " Party"
                Label8.Caption = "Date:"
                Adodc1.RecordSource = "select PRTYTYP,PRTYHEAD from FA_PRTY"
                Adodc1.Refresh
                Adodc1.Recordset.MoveFirst
                Combo5.Clear
                Do While Not Adodc1.Recordset.EOF
                    Combo5.AddItem "" & Adodc1.Recordset.Fields(0) & "  " & "------- " & Adodc1.Recordset.Fields(1) & ""
                    Adodc1.Recordset.MoveNext
                Loop
                Adodc1.Recordset.MoveFirst
                Combo5.Text = Adodc1.Recordset.Fields(0) & "  " & "------- " & Adodc1.Recordset.Fields(1)
                Combo5.Width = 3900
                Combo5.Left = 2000
                MaskEdBox2.Left = 2000
                DTPicker2.Left = 2125
                Text1.Left = 2000
                Label5.Caption = "CONFIRMATION OF BALANCE"
Case 30
    BFrame6.Visible = True
    BFrame6.Top = 2300
    Command1.Top = 4800
    Command2.Top = 4800
    Command1.Left = 3200
    Command2.Left = 5500
    Label12.Visible = False
    BFrame6.Left = 1800
    BFrame6.Top = 1500
    Frame1.Visible = False
    Frame2.Visible = False
    Frame3.Visible = False
    Frame4.Visible = False
    Frame5.Visible = False
    Label5.Visible = False


    Adodc1.RecordSource = "select tc,tchead from fa_tcmas where tc between  '" & fjv & "' and '" & tjv & "'"
    Adodc1.Refresh
    If Adodc1.Recordset.RecordCount = 0 Then
      MsgBox "No records found", vbInformation, head
      BFrame6.Enabled = False
      Command1.Enabled = False
      Exit Sub
    End If

   BCombo8.Clear
    Adodc1.Recordset.MoveFirst
    Do While Not Adodc1.Recordset.EOF
       BCombo8.AddItem "" & Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1) & ""
       Adodc1.Recordset.MoveNext
    Loop
    Adodc1.Recordset.MoveFirst
    BCombo8.Text = Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1)
    BDTPicker3.maxdate = pdate
    BDTPicker4.maxdate = pdate
    BDTPicker3.MinDate = yfdate
    BDTPicker4.MinDate = yfdate
    BMaskEdBox3.Text = CDate(MONTH(pdate) & " " & Year(pdate))
    BMaskEdBox4.Text = pdate

Case 32
   Frame1.Visible = True
   Frame1.Top = 1500
   Command1.Top = 5000
   Command2.Top = 5000
   Command1.Left = 3000
   Command2.Left = 5000
   Label12.Visible = False
   Frame1.Left = 850
   'Frame1.Visible = False
   Frame2.Visible = False
   Frame3.Visible = False
   Frame4.Visible = False
   Frame5.Visible = False
   Label5.Visible = False
   Label1.Caption = "From CostCentre Code"
   Label2.Caption = "To CostCentre Code"
   Label3.Visible = True
   Label4.Visible = True
   Label3.Caption = "From Date"
   Label4.Caption = "To Date"
   Label14.Caption = "CostCentrewise - GL Details"
   DTPicker4.Visible = True
   DTPicker5.Visible = True
   MaskEdBox3.Visible = True
   MaskEdBox4.Visible = True

   Adodc1.RecordSource = "select cccode,cchead from fa_ccmas order by cccode"
     Adodc1.Refresh
     If Adodc1.Recordset.RecordCount <= 0 Then
        MsgBox "No records found", vbInformation, head
        Exit Sub
     End If
     Adodc1.Recordset.MoveFirst
     Combo1.Clear
     Combo2.Clear
     Do While Not Adodc1.Recordset.EOF
        Combo1.AddItem "" & Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1) & ""
        Combo2.AddItem "" & Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1) & ""
        Adodc1.Recordset.MoveNext
     Loop
     Adodc1.Recordset.MoveFirst
     Combo1.Text = Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1)
     Adodc1.Recordset.MoveLast
     Combo2.Text = Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1)
     DTPicker4.maxdate = pdate
     DTPicker5.maxdate = pdate
     DTPicker4.MinDate = yfdate
     DTPicker5.MinDate = yfdate
     MaskEdBox3.Text = yfdate
     MaskEdBox4.Text = pdate
Case 33
   Frame1.Visible = True
   Frame1.Top = 1500
   Command1.Top = 5000
   Command2.Top = 5000
   Command1.Left = 3000
   Command2.Left = 5000
   Label12.Visible = False
   Frame1.Left = 850
   'Frame1.Visible = False
   Frame2.Visible = False
   Frame3.Visible = False
   Frame4.Visible = False
   Frame5.Visible = False
   Label5.Visible = False
   Label1.Caption = "From GL"
   Label2.Caption = "To GL"
   Label3.Visible = True
   Label4.Visible = True
   Label3.Caption = "From Date"
   Label4.Caption = "To Date"
   Label14.Caption = "GLwise - CostCentre Details"
   DTPicker4.Visible = True
   DTPicker5.Visible = True
   MaskEdBox3.Visible = True
   MaskEdBox4.Visible = True

   Adodc1.RecordSource = "select glcode,glhead from fa_glmas order by glcode"
     Adodc1.Refresh
     If Adodc1.Recordset.RecordCount <= 0 Then
        MsgBox "No records found", vbInformation, head
        Exit Sub
     End If
     Adodc1.Recordset.MoveFirst
     Combo1.Clear
     Combo2.Clear
     Do While Not Adodc1.Recordset.EOF
        Combo1.AddItem "" & Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1) & ""
        Combo2.AddItem "" & Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1) & ""
        Adodc1.Recordset.MoveNext
     Loop
     Adodc1.Recordset.MoveFirst
     Combo1.Text = Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1)
     Adodc1.Recordset.MoveLast
     Combo2.Text = Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1)
     DTPicker4.maxdate = pdate
     DTPicker5.maxdate = pdate
     DTPicker4.MinDate = yfdate
     DTPicker5.MinDate = yfdate
     MaskEdBox3.Text = yfdate
     MaskEdBox4.Text = pdate
Case 34
   Frame1.Visible = True
   Frame1.Top = 1500
   Command1.Top = 5000
   Command2.Top = 5000
   Command1.Left = 3000
   Command2.Left = 5000
   Label12.Visible = False
   Frame1.Left = 850
   'Frame1.Visible = False
   Frame2.Visible = False
   Frame3.Visible = False
   Frame4.Visible = False
   Frame5.Visible = False
   Label5.Visible = False
   Label1.Caption = "From CostCentre"
   Label2.Caption = "To CostCentre"
   Label3.Visible = True
   Label4.Visible = True
   Label3.Caption = "From Date"
   Label4.Caption = "To Date"
   Label14.Caption = "CostCentrewise - GL Abstract"
   DTPicker4.Visible = True
   DTPicker5.Visible = True
   MaskEdBox3.Visible = True
   MaskEdBox4.Visible = True

   Adodc1.RecordSource = "select cccode,cchead from fa_ccmas order by cccode"
     Adodc1.Refresh
     If Adodc1.Recordset.RecordCount <= 0 Then
        MsgBox "No records found", vbInformation, head
        Exit Sub
     End If
     Adodc1.Recordset.MoveFirst
     Combo1.Clear
     Combo2.Clear
     Do While Not Adodc1.Recordset.EOF
        Combo1.AddItem "" & Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1) & ""
        Combo2.AddItem "" & Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1) & ""
        Adodc1.Recordset.MoveNext
     Loop
     Adodc1.Recordset.MoveFirst
     Combo1.Text = Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1)
     Adodc1.Recordset.MoveLast
     Combo2.Text = Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1)
     DTPicker4.maxdate = pdate
     DTPicker5.maxdate = pdate
     DTPicker4.MinDate = yfdate
     DTPicker5.MinDate = yfdate
     MaskEdBox3.Text = yfdate
     MaskEdBox4.Text = pdate
Case 35
   Frame1.Visible = True
   Frame1.Top = 1500
   Command1.Top = 5000
   Command2.Top = 5000
   Command1.Left = 3000
   Command2.Left = 5000
   Label12.Visible = False
   Frame1.Left = 850
   'Frame1.Visible = False
   Frame2.Visible = False
   Frame3.Visible = False
   Frame4.Visible = False
   Frame5.Visible = False
   Label5.Visible = False
   Label1.Caption = "From GL"
   Label2.Caption = "To GL"
   Label3.Visible = True
   Label4.Visible = True
   Label3.Caption = "From Date"
   Label4.Caption = "To Date"
   Label14.Caption = "GLwise - CostCentre Abstract"
   DTPicker4.Visible = True
   DTPicker5.Visible = True
   MaskEdBox3.Visible = True
   MaskEdBox4.Visible = True

   Adodc1.RecordSource = "select glcode,glhead from fa_glmas order by glcode "
     Adodc1.Refresh
     If Adodc1.Recordset.RecordCount <= 0 Then
        MsgBox "No records found", vbInformation, head
        Exit Sub
     End If
     Combo1.Clear
     Combo2.Clear
     Adodc1.Recordset.MoveFirst
     Do While Not Adodc1.Recordset.EOF
        Combo1.AddItem "" & Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1) & ""
        Combo2.AddItem "" & Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1) & ""
        Adodc1.Recordset.MoveNext
     Loop
     Adodc1.Recordset.MoveFirst
     Combo1.Text = Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1)
     Adodc1.Recordset.MoveLast
     Combo2.Text = Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1)
     DTPicker4.maxdate = pdate
     DTPicker5.maxdate = pdate
     DTPicker4.MinDate = yfdate
     DTPicker5.MinDate = yfdate
     MaskEdBox3.Text = yfdate
     MaskEdBox4.Text = pdate

Case 100            'Payment Covering Letter

  Frame1.Visible = False
  Combo21.Enabled = True
  Combo31.Enabled = True
   lprty.Visible = False
  flglac.Visible = False
  Frame101.Visible = True
  Frame101.Left = 1500
  Frame101.Top = 1200
  Frame1.Visible = False
  Frame101.Width = 6670
  Label121.Width = 6600
  Shape31.Width = 6600
  Frame201.Visible = False
  Label121.Caption = "Payment Covering Letter"
  Label4.Visible = False
  Label5.Visible = False
  Label101.Caption = "TC "

  Combo11.Top = 735
  List11.Top = 1305
  Combo21.Top = 1800
  Combo31.Top = 2385

  Label101.Top = 735
  Label401.Top = 1305
  Label201.Top = 1800
  Label301.Top = 2385

  Label401.Caption = "Month"

  Combo11.Width = 3700
  Combo21.Width = 2275
  Combo31.Width = 2275
  Label201.Caption = "From Voucher No."
  Label301.Visible = True
  Label301.Caption = "To Voucher No."
  Combo31.Visible = True
  Command1.Left = 3150
  Command1.Top = 5000
  Command2.Left = 5000
  Command2.Top = 5000
  Label401.Visible = True
  List11.Visible = True

  Adodc1.RecordSource = "select TC,TCHEAD from FA_TCMAS,FA_PARAM WHERE TC BETWEEN FROMCASHTC AND TOBANKTC AND fa_tcmas.divcode = '" & Divcode & "'"
  Adodc1.Refresh
  If Adodc1.Recordset.RecordCount = 0 Then
    MsgBox "No Records found", vbInformation, head
    Command1.Enabled = False
    Frame101.Enabled = False
    Exit Sub
  End If
  Combo11.Clear
  Adodc1.Recordset.MoveFirst
  Do While Not Adodc1.Recordset.EOF
     Combo11.AddItem "" & Adodc1.Recordset.Fields(0) & "  " & "------- " & Adodc1.Recordset.Fields(1) & ""
     Adodc1.Recordset.MoveNext
  Loop
  Adodc1.Recordset.MoveFirst
  Combo11.Text = Adodc1.Recordset.Fields(0) & "  " & "------- " & Adodc1.Recordset.Fields(1)
 Set Rs = New Recordset
 Rs.Open " select top 1 vocdt,vocno from fa_payhead where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null)  order by vocno desc ", cn, adOpenStatic
    If Rs.RecordCount > 0 Then
    List11.Text = Format(Rs(0), "mmmm") & " - " & Format(Rs(0), "yyyy")
    List21.Text = Format(Rs(0), "mmmm") & " - " & Format(Rs(0), "yyyy")
    Else
        MsgBox " No Records Found", vbInformation, head
        Exit Sub
    End If

qrdt = UCase(Mid(List11.Text, 1, 3)) & " %% " & Right(List11.Text, 4) & "%"
    '------
     Adodc1.RecordSource = "select distinct vocno,vocdt from FA_PAYHEAD where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and vocdt like '" & qrdt & "' order by vocno "
     Adodc1.Refresh
    If Adodc1.Recordset.RecordCount = 0 Then
         stbar.Panels(2).Text = "No records found found for the month " & List11.Text
         Command1.Enabled = False
         Combo21.Clear
         Combo31.Clear
         Screen.MousePointer = 0
         Exit Sub
  Else
    Command1.Enabled = True
    stbar.Panels(2).Text = ""
    Combo21.Clear
    Combo31.Clear
    Do While Not Adodc1.Recordset.EOF
     Combo21.AddItem "" & Adodc1.Recordset.Fields(0) & "  " & "------- " & Adodc1.Recordset.Fields(1) & ""
     Combo31.AddItem "" & Adodc1.Recordset.Fields(0) & "  " & "------- " & Adodc1.Recordset.Fields(1) & ""
     Adodc1.Recordset.MoveNext
   Loop
   End If
      Adodc1.Recordset.MoveFirst
     Combo21.Text = Adodc1.Recordset.Fields(0) & "  " & "------- " & Adodc1.Recordset.Fields(1)
      Adodc1.Recordset.MoveLast
     Combo31.Text = Adodc1.Recordset.Fields(0) & "  " & "------- " & Adodc1.Recordset.Fields(1)
   Exit Sub
Case 38, 39
Frame1.Visible = True
   Frame1.Top = 2000
   Command1.Top = 5000
   Command2.Top = 5000
   Command1.Left = 3200
   Command2.Left = 5000
   Frame1.Top = 1000
   Frame1.Left = 1000
   Label12.Visible = False
   MaskEdBox4.Top = 2200
   DTPicker5.Top = 2200
   Label4.Top = 2200

   Frame2.Visible = False
   Frame3.Visible = False
   Frame4.Visible = False
   Frame5.Visible = False
   Label5.Visible = False
   Label1.Caption = "Bank"
   Label1.Left = Label1.Left + 100
   'Label2.Caption = "To TC Code"
   Label2.Visible = False
   Label4.Visible = True
   Label4.Caption = "Date"
   Label4.Left = Label1.Left
   Label14.Caption = IIf(Repindex = 39, "CONSOLIDATED ", "") + "Bank Reconciliation Statement"
   DTPicker4.Visible = False
   DTPicker5.Visible = True
   MaskEdBox3.Visible = False
   MaskEdBox4.Visible = True

   Adodc1.RecordSource = "select a.tc,a.tchead from fa_tcmas a,fa_param b where a.tc between b.frombanktc and b.tobanktc and a.divcode = '" & Divcode & "' order by a.tc"
     Adodc1.Refresh
     If Adodc1.Recordset.RecordCount = 0 Then
        MsgBox "No Records found", vbInformation, head
        Frame1.Enabled = False
        Command1.Enabled = False
        Exit Sub
      End If
      Combo1.Clear
     Adodc1.Recordset.MoveFirst
     Do While Not Adodc1.Recordset.EOF
        Combo1.AddItem "" & Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1) & ""
        'Combo2.AddItem "" & Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1) & ""
        Adodc1.Recordset.MoveNext
     Loop
     Adodc1.Recordset.MoveFirst
     Combo1.Text = Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1)
     'Adodc1.Recordset.MoveLast
     'Combo2.Text = Adodc1.Recordset.Fields(0) & "---" & Adodc1.Recordset.Fields(1)
     DTPicker5.maxdate = pdate
     DTPicker5.MinDate = yfdate
     MaskEdBox4.Text = pdate
     Combo2.Visible = False
End Select

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

MaskEdBox1.Text = DTPicker1.value

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker1_LostFocus()
On Error GoTo DTPicker1_LostFocus_Error

    If Not (IsDate(MaskEdBox1.Text)) Then
        MsgBox "Invalid date", vbInformation, head
        MaskEdBox1.SetFocus
    End If

Exit Sub
DTPicker1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_LostFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker4_CloseUp()
On Error GoTo DTPicker4_CloseUp_Error

MaskEdBox3.Text = DTPicker4.value

Exit Sub
DTPicker4_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker4_CloseUp of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker4_LostFocus()
On Error GoTo DTPicker4_LostFocus_Error

    If Not (IsDate(MaskEdBox3.Text)) Then
        MsgBox "Invalid date", vbInformation, head
        MaskEdBox3.SetFocus
    End If

Exit Sub
DTPicker4_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker4_LostFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker5_CloseUp()
On Error GoTo DTPicker5_CloseUp_Error

MaskEdBox4.Text = DTPicker5.value

Exit Sub
DTPicker5_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker5_CloseUp of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker5_LostFocus()
On Error GoTo DTPicker5_LostFocus_Error

    If loc_RepIndex = 38 Then
If Not (IsDate(MaskEdBox4.Text)) Then
        MsgBox "Invalid date", vbInformation, head
        MaskEdBox4.SetFocus
End If
Else
    On Error Resume Next
    If Not (IsDate(MaskEdBox4.Text)) Then
        MsgBox "Invalid date", vbInformation, head
        MaskEdBox4.SetFocus

    ElseIf CDate(MaskEdBox4.Text) < CDate(MaskEdBox3.Text) Then
            MsgBox "To Date should not be less than From date", vbCritical, head + " - Invalid Date"
            MaskEdBox4.SetFocus
    End If
End If

Exit Sub
DTPicker5_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker5_LostFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BRSHead()
On Error GoTo BRSHead_Error

pagein = pagein + 1
Print #fileno, ""
cont = 0
If divtype = "H" Then
Print #fileno, Space(Round((89 - 2 * Len(CompName)) / 2)) + Chr(27) + "E" + CompName + Space(Round((89 - 2 * Len(CompName)) / 2)) + Chr(27) + "F"
Else
Print #fileno, Space(Round((89 - 2 * Len(divname)) / 2)) + Chr(27) + "E" + divname + Space(Round((89 - 2 * Len(divname)) / 2)) + Chr(27) + "F"
End If
cont = cont + 1
Print #fileno,
cont = cont + 1
If Repindex = 39 Then
    Print #fileno, "CONSOLIDATED"
End If
Print #fileno, "BANK RECONCILIATION STATEMENT AS ON " + Space(1) + MaskEdBox4.Text + Space(15) + "Dt. :" + CStr(pdate) + Space(2) + "Pg.No :" + Space(3 - (Len(CStr(Trim(pagein))))) + CStr(pagein)
cont = cont + 1

Exit Sub
BRSHead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BRSHead of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub BRSReport()

Dim rs1 As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim rs0 As Recordset
Dim accode As String
Dim achead As String
Dim slcity As String
Dim pagein As Integer
Dim chqtot, PayAmt, recamt
Dim clamt, balamt1, balamt2
Dim balamt3, balamt4

On Error GoTo BRSReport_Error

chqtot = 0
PayAmt = 0
recamt = 0
clamt = 0
balamt1 = 0
balamt2 = 0
balamt3 = 0
balamt4 = 0
pagein = 0

Dim BTc1, BTc2 As String
BTc1 = Mid(Combo1.Text, 1, (InStr(Combo1.Text, "-") - 1))

Set REPVIEW = New Report.ReportView
fileno = FreeFile()
Close
'Open "c:\BRS.txt" For Output As #fileno
 Open KALFOLDERDATA & "\BRS.TXT" For Output As #fileno
Call BRSHead

Set Rs = New Recordset
Set rs1 = New Recordset

Rs.Open "select a.tc,a.tchead from fa_tcmas a,fa_param b where a.tc = " & val(BTc1) & "  order by a.tc", cn, adOpenStatic, adLockReadOnly

If Rs.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Close #fileno
    Kill ("c:\BRS.txt")
    Screen.MousePointer = 0
    Exit Sub
End If

Rs.MoveFirst

Set rs1 = New Recordset
rs1.Open " select SUM(isnull(a.credit,0)-isnull(a.debit,0)) chqamt from" & _
        " fa_recline a, fa_rechead b " & _
        " where a.divcode = '" & Divcode & "' and a.tc = " & Rs("TC") & " and a.divcode = b.divcode and a.tc = b.tc and" & _
        " a.vocno = b.vocno and a.vocdt = b.vocdt and b.chqno is not null and " & _
        " (b.colldate is null  or b.colldate > '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "') and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' and A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and (b.chqflag = 'L' or b.chqflag = 'O') ", cn, adOpenStatic, adLockReadOnly

Set rs2 = New Recordset
rs2.Open " select  sum(isnull(a.debit,0)-isnull(a.credit,0)) chqamt from fa_payline a, fa_payhead b  " & _
        " where a.divcode = '" & Divcode & "' and a.tc = '" & Rs("TC") & "' and a.divcode = b.divcode and a.tc = b.tc and " & _
        " a.vocno = b.vocno and a.vocdt = b.vocdt and b.chqno is not null and " & _
        " (b.colldate is null  or b.colldate > '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "') and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' and A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and (b.chqflag = 'L' or b.chqflag = 'O')", cn, adOpenStatic, adLockBatchOptimistic

Set rs3 = New Recordset
rs3.Open " SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0) AS totrec, ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay," & _
        "(ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ " & _
        " ISNULL(H.crctot,0)) AS clbal FROM " & _
        " ( SELECT SUM(op.openbal) openbal FROM  (SELECT 0 AS openbal UNION " & _
        " SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
        " WHERE divcode = '" & Divcode & "' AND yearmonth =  '" & Format(yfdate, "yyyy") & "00" & "'   AND " & _
        " glcode = (SELECT glcode FROM fa_tcmas " & _
        " WHERE tc=" & Rs("tc") & ")) op ) A, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot " & _
        " FROM FA_RECHEAD a,FA_RECLINE B WHERE B.DIVCODE = '" & Divcode & "' AND B.TC=" & Rs("tc") & " AND " & _
        " B.VOCDT < '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt AND a.VOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND a.VOCDT < '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "')B, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot " & _
        " FROM FA_PAYHEAD A,FA_PAYLINE B  WHERE B.DIVCODE ='" & Divcode & "' AND B.TC=" & Rs("tc") & " AND " & _
        " B.VOCDT < '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt AND a.VOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND a.VOCDT < '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "')C,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot " & _
        " FROM FA_RECHEAD a,FA_RECLINE B WHERE B.DIVCODE = '" & Divcode & "' AND B.TC <> " & Rs("tc") & " AND B.VOCDT < '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND " & _
        " B.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = " & Rs("tc") & ") AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt AND a.VOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND a.VOCDT < '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "')D, (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot " & _
        " From FA_PAYHEAD A,FA_PAYLINE B WHERE B.DIVCODE = '" & Divcode & "' AND B.TC <> " & Rs("tc") & " AND B.VOCDT < '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND " & _
        " B.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = " & Rs("tc") & ") AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt AND a.VOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND a.VOCDT < '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "')E,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot From FA_RECHEAD a,FA_RECLINE B" & _
        " WHERE B.DIVCODE = '" & Divcode & "' AND B.TC=" & Rs("tc") & " AND B.VOCDT = '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "'  AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt) F,(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot " & _
        " FROM FA_PAYHEAD A,FA_PAYLINE B WHERE B.DIVCODE = '" & Divcode & "' AND B.TC=" & Rs("tc") & " AND B.VOCDT = '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt )G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot  From FA_RECHEAD a,FA_RECLINE B " & _
        " WHERE B.DIVCODE = '" & Divcode & "' AND B.TC <>" & Rs("tc") & "  AND B.VOCDT = '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND  B.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc =" & Rs("tc") & ")  AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt )H, " & _
        " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYHEAD A,FA_PAYLINE B WHERE B.DIVCODE = '" & Divcode & "' AND B.TC <> " & Rs("tc") & "   AND B.VOCDT = '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND B.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = '" & Rs("tc") & "') AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt) I ", cn, adOpenStatic, adLockBatchOptimistic

If rs3.RecordCount > 0 Then
    If IsNull(rs3("clbal")) = False Then
        clamt = CDbl(rs3("clbal"))
        balamt1 = clamt
        balamt2 = clamt
    End If
End If

If rs2.RecordCount > 0 Then
    If IsNull(rs2("chqamt")) = False Then
        balamt1 = balamt1 + CDbl(rs2("chqamt"))
        balamt2 = balamt2 + CDbl(rs2("chqamt"))
    End If
End If

If rs1.RecordCount > 0 Then
    If IsNull(rs1("chqamt")) = False Then
        balamt2 = balamt2 - CDbl(rs1("chqamt"))
    End If
End If

If rs3.RecordCount > 0 Then

    If IsNull(rs3("clbal")) = False Then
'***        clamt = Val(IIf(CStr(INF(rs3("clbal"), 2)) = ".00", 0, CStr(INF(rs3("clbal"), 2))))  'INF(rs3("clbal"), 2) '
        clamt = IIf(CStr(INF(rs3("clbal"), 2)) = ".00", 0, CStr(INF(rs3("clbal"), 2)))
    Else
        clamt = 0
    End If
End If

If rs2.RecordCount > 0 Then
    If IsNull(rs2("chqamt")) = False Then
        PayAmt = IIf(CStr(INF(Trim(rs2("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs2("chqamt")), 2)))
    Else
        PayAmt = 0
    End If
End If

If rs1.RecordCount > 0 Then
    If IsNull(rs1("chqamt")) = False Then
        recamt = IIf(IIf(CStr(INF(Trim(rs1("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs1("chqamt")), 2))) = "", 0, IIf(CStr(INF(Trim(rs1("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs1("chqamt")), 2))))
    Else
        recamt = 0
    End If
End If


Call BRSNextPage

Print #fileno, Trim(CStr(Rs("TC"))) & " - " & Trim(CStr(Rs("TcHEAD")))
cont = cont + 1
Print #fileno, "-----------------------------------------------------------------------------------------"
cont = cont + 1
Print #fileno, "            Description                                               Amount"
cont = cont + 1
Print #fileno, "-----------------------------------------------------------------------------------------"
cont = cont + 1
Print #fileno, ""
cont = cont + 1

If clamt >= 0 Then
    Print #fileno, "            BALANCE AS PER OUR BANK BOOK  ==>" + Space(10) + Space(19 - Len(IIf(CStr(INF(Trim(clamt), 2)) = ".00", "0.00", CStr(INF(Trim(clamt), 2))))) + IIf(CStr(INF(Trim(clamt), 2)) = ".00", "0.00", CStr(INF(Trim(clamt), 2)))
Else
    Print #fileno, "            BALANCE AS PER OUR BANK BOOK  ==>" + Space(10) + Space(19 - Len(IIf(CStr(INF(Trim(Abs(clamt)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(clamt)), 2))))) + IIf(CStr(INF(Trim(Abs(clamt)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(clamt)), 2))) & " CR"
End If

cont = cont + 1
Print #fileno, ""
cont = cont + 1

If PayAmt <> 0 Then
    Print #fileno, "            ADD: CHEQUES ISSUED BUT NOT YET CLEARED" + Space(4) + Space(19 - Len(IIf(CStr(INF(Trim(PayAmt), 2)) = ".00", "", CStr(INF(Trim(PayAmt), 2))))) + IIf(CStr(INF(Trim(PayAmt), 2)) = ".00", "", CStr(INF(Trim(PayAmt), 2)))
    cont = cont + 1
End If

Print #fileno, "                                                          ----------------"

cont = cont + 1

If recamt <> 0 And PayAmt <> 0 Then
    If balamt1 >= 0 Then
        Print #fileno, Space(55) + Space(19 - Len(Trim(IIf(CStr(INF(Trim(balamt1), 2)) = ".00", "0.00", CStr(INF(Trim(balamt1), 2)))))) + IIf(CStr(INF(Trim(balamt1), 2)) = ".00", "0.00", CStr(INF(Trim(balamt1), 2)))
    Else
        Print #fileno, Space(55) + Space(19 - Len(Trim(IIf(CStr(INF(Trim(Abs(balamt1)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(balamt1)), 2))) & " CR"))) + IIf(CStr(INF(Trim(Abs(balamt1)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(balamt1)), 2))) & " CR"
    End If
    cont = cont + 1
End If

If recamt <> 0 Then
    Print #fileno, "            LESS: CHEQUES DEPOSITED BUT NOT YET"
    cont = cont + 1
    Print #fileno, "                  REALISED" + Space(29) + Space(19 - Len(IIf(CStr(INF(Trim(recamt), 2)) = ".00", "", CStr(INF(Trim(recamt), 2))))) + IIf(CStr(INF(Trim(recamt), 2)) = ".00", "", CStr(INF(Trim(recamt), 2)))
    cont = cont + 1
    Print #fileno, "                                                          ----------------"
    cont = cont + 1
End If

If Not (IsNull(balamt2) = True Or balamt2 = 0) Then
    If balamt2 >= 0 Then
        Print #fileno, Space(55) + Space(19 - Len(IIf(CStr(INF(Trim(balamt2), 2)) = ".00", "0.00", CStr(Format(Trim(balamt2), "##,##,##,###.00"))))) + IIf(CStr(Format(Trim(balamt2), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(balamt2), "##,##,##,###.00")))
    Else
        Print #fileno, Space(55) + Space(19 - Len(IIf(CStr(Format(Trim(Abs(balamt2)), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(Abs(balamt2)), "##,##,##,###.00"))))) + IIf(CStr(Format(Trim(Abs(balamt2)), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(Abs(balamt2)), "##,##,##,###.00"))) & " CR"
    End If
    cont = cont + 1
End If

Set rs4 = New Recordset
rs4.Open "Select isnull(sum(Credit),0) from fa_bktrn where divcode='" & Divcode & "' and tc=" & BTc1 & " and trndt <= '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "' and (isnull(Accounted,'N') <> 'Y' or isnull(Accounted,'N') <> 'y')   ", cn

Set rs5 = New Recordset
rs5.Open "Select isnull(sum(debit),0)  from fa_bktrn where divcode='" & Divcode & "' and tc=" & BTc1 & " and trndt <= '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "' and (isnull(Accounted,'N') <> 'Y' or isnull(Accounted,'N') <> 'y')   ", cn

balamt3 = IIf(IsNull(balamt2), 0, balamt2) + IIf(IsNull(rs4(0)), 0, rs4(0))
balamt4 = IIf(IsNull(balamt3), 0, balamt3) - IIf(IsNull(rs5(0)), 0, rs5(0))

If rs4(0) <> 0 Then
    Print #fileno, "             ADD: INTEREST ETC. CREDITED BY BANK"
    cont = cont + 1
    Print #fileno, "                  BUT NOT ACCOUNTED BY US" + Space(18) + Space(15 - Len(IIf(CStr(Format(Trim(rs4(0)), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(rs4(0)), "##,##,##,###.00"))))) + IIf(CStr(Format(Trim(rs4(0)), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(rs4(0)), "##,##,##,###.00")))
    cont = cont + 1
    Print #fileno, "                                                          ----------------"
    cont = cont + 1

    If balamt3 >= 0 Then
        Print #fileno, Space(55) + Space(19 - Len(Trim(IIf(CStr(Format(Trim(balamt3), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(balamt3), "##,##,##,###.00")))))) + IIf(CStr(Format(Trim(balamt3), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(balamt3), "##,##,##,###.00")))
    Else
        Print #fileno, Space(55) + Space(19 - Len(Trim(IIf(CStr(Format(Trim(Abs(balamt3)), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(Abs(balamt3)), "##,##,##,###.00"))) & " CR"))) + IIf(CStr(Format(Trim(Abs(balamt3)), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(Abs(balamt3)), "##,##,##,###.00"))) & " CR"
    End If

    cont = cont + 1
End If

If rs5(0) <> 0 Then
    Print #fileno, "            LESS: BANK CHARGES, INTEREST ETC. DEBITED"
    cont = cont + 1
    'RS5(0) SPACE WAS 15 CHANGED TO 16
    'DO NOT GIVE LESS THAN 16 MIN LEN OF RS5(0) IS 16
    Print #fileno, "                  BY BANK BUT NOT ACCOUNTED BY US" + Space(10) + Space(16 - Len(IIf(CStr(Format(Trim(rs5(0)), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(rs5(0)), "##,##,##,###.00"))))) + IIf(CStr(Format(Trim(rs5(0)), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(rs5(0)), "##,##,##,###.00")))
    cont = cont + 1
    Print #fileno, "                                                          ----------------"
    cont = cont + 1
End If

If balamt4 >= 0 Then
    Print #fileno, "            BALANCE AS PER BANK" + Space(24) + Space(19 - Len(IIf(CStr(Format(Trim(balamt4), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(balamt4), "##,##,##,###.00"))))) + IIf(CStr(Format(Trim(balamt4), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(balamt4), "##,##,##,###.00")))
Else
    Print #fileno, "            BALANCE AS PER BANK" + Space(24) + Space(19 - Len(IIf(CStr(Format(Trim(Abs(balamt4)), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(Abs(balamt4)), "##,##,##,###.00"))))) + IIf(CStr(Format(Trim(Abs(balamt4)), "##,##,##,###.00")) = ".00", "0.00", CStr(Format(Trim(Abs(balamt4)), "##,##,##,###.00"))) & " CR"
End If

cont = cont + 1

Print #fileno, "                                                          ----------------"
cont = cont + 1

Print #fileno, ""
cont = cont + 1

Print #fileno, "-----------------------------------------------------------------------------------------"
cont = cont + 1

Print #fileno, ""
cont = cont + 1

Print #fileno, ""
cont = cont + 1

Call BRSNextPage

'======================== BREAKUP PRINTING

chqtot = 0

Set rs2 = New Recordset
'RS2.Open " select   a.accode, a.debit chqamt, c.slname,c.city, b.chqno, b.chqdt, null as bank, null as branch from fa_payline a, fa_payhead b, fa_slmas c  " & _
        " where a.divcode = '" & divcode & "' and a.tc = '" & rs("TC") & "' and a.divcode = b.divcode and a.tc = b.tc and " & _
        " a.vocno = b.vocno and a.vocdt = b.vocdt and a.accode = c.slcode and " & _
        " b.colldate is null and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' and A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and (b.chqflag = 'L' or b.chqflag = 'O') AND A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockBatchOptimistic

rs2.Open "select b.vocno, b.vocdt, b.chqno, b.chqdt, sum(isnull(a.debit,0)-isnull(a.credit,0)) chqamt, count(*) totrecs from fa_payline a, fa_payhead b " & _
    "where a.divcode = '" & Divcode & "' and a.tc = " & Rs("TC") & " and a.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt and " & _
    " (b.colldate is null or b.colldate > '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "') and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "'  and b.chqno is not null and " & _
    "(b.chqflag = 'L' or b.chqflag = 'O') AND A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' " & _
    "group by b.vocno, b.vocdt, b.chqno, b.chqdt", cn, adOpenStatic, adLockReadOnly

If rs2.RecordCount > 0 Then

    rs2.MoveFirst

    Call BRSNextPage

    Print #fileno, "CHEQUES ISSUED BUT NOT YET CLEARED"
    cont = cont + 1
    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1
    Print #fileno, "CHEQUE NO.    CHEQ. DATE  PARTY NAME                                       CHEQUE AMOUNT"
    cont = cont + 1
    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Do While Not rs2.EOF

        achead = Space(27)
        accode = Space(6)
        slcity = Space(11)

        Set rs0 = New Recordset

        If rs2("TOTRECS") = 1 Then
            rs0.Open "SELECT accode FROM fa_payline WHERE divcode = '" & Divcode & "' and tc = " & Rs("TC") & " and vocno = " & rs2("VOCNO") & " and vocdt = '" & Format(rs2("VOCDT"), "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockReadOnly
            If rs0.RecordCount > 0 Then
                accode = rs0(0)
                If IsNumeric(Mid(rs0(0), 1, 1)) Then
                    rs0.Close
                    rs0.Open "SELECT isnull(glhead,'* Unknown *') FROM fa_glmas WHERE glcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 40)
                    End If
                Else
                    rs0.Close
                    rs0.Open "SELECT isnull(slname,'* Unknown *'),isnull(city,'') FROM fa_slmas WHERE slcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0) + IIf(rs0(1) = "", "", "," + rs0(1)), 1, 40)
                    End If
                End If
            End If
            rs0.Close
        Else
            rs0.Open "SELECT accode FROM fa_payline WHERE divcode = '" & Divcode & "' and tc = " & Rs("TC") & " and vocno = " & rs2("VOCNO") & " and vocdt = '" & Format(rs2("vocdt"), "YYYY-MM-DD") & "' and vocsno = 1", cn, adOpenStatic, adLockReadOnly
            If rs0.RecordCount > 0 Then
                accode = rs0(0)
                If IsNumeric(Mid(rs0(0), 1, 1)) Then
                    rs0.Close
                    rs0.Open "SELECT isnull(glhead,'* Unknown *') FROM fa_glmas WHERE glcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 40)
                    End If
                Else
                    rs0.Close
                    rs0.Open "SELECT isnull(slname,'* Unknown *'),isnull(city,'') FROM fa_slmas WHERE slcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0) + IIf(rs0(1) = "", "", "," + rs0(1)), 1, 40)
                    End If
                End If
            End If
            rs0.Close
        End If

        If Not IsNull(rs2("chqdt")) Then
            Print #fileno, CStr(Trim(rs2("chqno"))) + Space(14 - Len(CStr(Trim(rs2("chqno"))))) + CStr(rs2("chqdt")) + Space(2) + CStr(achead) + Space(42 - Len(CStr(achead))) + Space(5) + Space(16 - Len(IIf(CStr(INF(Trim(rs2("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs2("chqamt")), 2))))) + IIf(CStr(INF(Trim(rs2("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs2("chqamt")), 2)))
        Else
            Print #fileno, CStr(Trim(rs2("chqno"))) + Space(14 - Len(CStr(Trim(rs2("chqno"))))) + Space(10) + Space(2) + CStr(achead) + Space(42 - Len(CStr(achead))) + Space(5) + Space(16 - Len(IIf(CStr(INF(Trim(rs2("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs2("chqamt")), 2))))) + IIf(CStr(INF(Trim(rs2("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs2("chqamt")), 2)))
        End If

        'Print #FILENO, CStr(Trim(RS2("chqno"))) + Space(14 - Len(CStr(Trim(RS2("chqno"))))) + CStr(RS2("chqdt")) + Space(2) + CStr(achead) + Space(42 - Len(CStr(achead))) + Space(5) + Space(16 - Len(IIf(CStr(Format(Trim(RS2("chqamt")), "##,##,##,###.00")) = ".00", 0, CStr(Format(Trim(RS2("chqamt")), "##,##,##,###.00"))))) + IIf(CStr(Format(Trim(RS2("chqamt")), "##,##,##,###.00")) = ".00", 0, CStr(Format(Trim(RS2("chqamt")), "##,##,##,###.00")))
        cont = cont + 1
        Call BRSNextPage
        chqtot = CDbl(rs2("chqamt")) + CDbl(chqtot)
        rs2.MoveNext
    Loop

    Call BRSNextPage

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    Print #fileno, Space(70) + Space(19 - Len(IIf(CStr(INF(Trim(chqtot), 2)) = ".00", 0, CStr(INF(Trim(chqtot), 2))))) + IIf(CStr(INF(Trim(chqtot), 2)) = ".00", 0, CStr(INF(Trim(chqtot), 2)))
    cont = cont + 1

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Print #fileno, ""
    cont = cont + 1

    Print #fileno, ""
    cont = cont + 1

    Call BRSNextPage

End If

chqtot = 0

Set rs3 = New Recordset
'RS3.Open " select a.accode, a.credit chqamt, SUBSTRING(c.slname,1,26) SLNAME, b.chqno, b.chqdt, b.bank,b.branch from" & _
            " fa_recline a, fa_rechead b, fa_slmas c " & _
            " where a.divcode = '" & divcode & "' and a.tc = '" & rs("TC") & "' and a.divcode = b.divcode and a.tc = b.tc and" & _
            " a.vocno = b.vocno and a.vocdt = b.vocdt and a.accode = c.slcode and " & _
            " b.colldate is null and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' and (b.chqflag = 'L' or b.chqflag = 'O') AND A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockBatchOptimistic

rs3.Open "select b.vocno, b.vocdt, b.chqno, b.chqdt, b.bank, b.branch, sum(isnull(a.credit,0)-isnull(a.debit,0)) chqamt, count(*) totrecs from fa_recline a, fa_rechead b " & _
    "where a.divcode = '" & Divcode & "' and a.tc = " & Rs("TC") & " and a.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt  and b.chqno is not null and " & _
    " (b.colldate is null or b.colldate > '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "') and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' and " & _
    "(b.chqflag = 'L' or b.chqflag = 'O') AND A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' " & _
    "group by b.vocno, b.vocdt, b.chqno, b.chqdt,b.bank,b.branch", cn, adOpenStatic, adLockReadOnly

If rs3.RecordCount > 0 Then

    rs3.MoveFirst

    Call BRSNextPage

    Print #fileno, "CHEQUES DEPOSITED BUT NOT YET REALISED"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Print #fileno, "CHEQUE NO.    CHEQ. DATE  PARTY NAME                                        CHEQUE AMOUNT"
    cont = cont + 1

    Print #fileno, "                          NAME OF THE BANK AND BRANCH"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1


    Do While Not rs3.EOF

        achead = Space(27)
        accode = Space(6)

        Set rs0 = New Recordset

        If rs3("TOTRECS") = 1 Then
            rs0.Open "SELECT accode FROM fa_recline WHERE divcode = '" & Divcode & "' and tc = " & Rs("TC") & " and vocno = " & rs3("VOCNO") & " and vocdt = '" & Format(rs3("VOCDT"), "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockReadOnly
            If rs0.RecordCount > 0 Then
                accode = rs0(0)
                If IsNumeric(Mid(rs0(0), 1, 1)) Then
                    rs0.Close
                    rs0.Open "SELECT isnull(glhead,'* Unknown *') FROM fa_glmas WHERE glcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 35)
                    End If
                Else
                    rs0.Close
                    rs0.Open "SELECT isnull(slname,'* Unknown *') FROM fa_slmas WHERE slcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 35)
                    End If
                End If
            End If
            rs0.Close
        Else
            rs0.Open "SELECT accode FROM fa_recline WHERE divcode = '" & Divcode & "' and tc = " & Rs("TC") & " and vocno = " & rs3("VOCNO") & " and vocdt = '" & Format(rs3("vocdt"), "YYYY-MM-DD") & "' and vocsno = 1", cn, adOpenStatic, adLockReadOnly
            If rs0.RecordCount > 0 Then
                accode = rs0(0)
                If IsNumeric(Mid(rs0(0), 1, 1)) Then
                    rs0.Close
                    rs0.Open "SELECT isnull(glhead,'* Unknown *') FROM fa_glmas WHERE glcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 35)
                    End If
                Else
                    rs0.Close
                    rs0.Open "SELECT isnull(slname,'* Unknown *') FROM fa_slmas WHERE slcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 35)
                    End If
                End If
            End If
            rs0.Close
        End If

        Print #fileno, CStr(Trim(rs3("chqno"))) + Space(14 - Len(CStr(Trim(rs3("chqno"))))) + CStr(rs3("chqdt")) + Space(2) + achead + Space(37 - Len(achead)) + Space(26 - Len(IIf(CStr(INF(Trim(rs3("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs3("chqamt")), 2))))) + IIf(CStr(INF(Trim(rs3("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs3("chqamt")), 2)))
        If Trim(rs3("BANK")) <> "" Or Trim(rs3("BRANCH")) <> "" Then
            Print #fileno, Space(26) + Mid$(CStr(Trim(rs3("bank"))) + IIf((rs3("BRANCH") = ""), "", ",") + CStr(Trim(rs3("branch"))), 1, 46) + Space(46 - Len(Mid$(CStr(Trim(rs3("bank"))) + IIf((rs3("BRANCH") = ""), "", ",") + CStr(Trim(rs3("branch"))), 1, 46)))
        End If
        cont = cont + 1
        Call BRSNextPage
        chqtot = CDbl(rs3("chqamt")) + CDbl(chqtot)
        rs3.MoveNext
    Loop

    If val(chqtot) <> 0 Then
        Call BRSNextPage
        Print #fileno, Space(73) + "----------------"
        cont = cont + 1
        Print #fileno, Space(70) + Space(19 - Len(IIf(CStr(INF(Trim(chqtot), 2)) = ".00", "0", CStr(INF(Trim(chqtot), 2))))) + IIf(CStr(INF(Trim(chqtot), 2)) = ".00", "0", CStr(INF(Trim(chqtot), 2)))
        cont = cont + 1
        Print #fileno, Space(73) + "----------------"
        cont = cont + 1
        Print #fileno, "-----------------------------------------------------------------------------------------"
        cont = cont + 1
        Print #fileno, ""
        cont = cont + 1
        Print #fileno, ""
        cont = cont + 1

        Call BRSNextPage

    End If

End If

chqtot = 0

Set rs2 = New Recordset
rs2.Open " select    TRNDT,GLHEAD,NARRATION,credit from fa_BKTRN a, fa_GLMAS b  " & _
        " where a.divcode = '" & Divcode & "' and a.glcode = b.glcode AND A.tc= " & BTc1 & " And " & _
        " trndt <= '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "' and (credit is not null or credit > 0) AND (accounted is null or accounted='N') and trndt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockBatchOptimistic

If rs2.RecordCount > 0 Then

    rs2.MoveFirst

    Call BRSNextPage

    Print #fileno, "INTEREST ETC. CREDITED BY BANK BUT NOT ACCOUNTED BY US"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Print #fileno, "  DATE       GLHEAD                                 NARRATION                      AMOUNT"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Do While Not rs2.EOF
        Print #fileno, Format(rs2(0), "dd/mm/yyyy") + Space(3) + Mid$(rs2(1), 1, 35) + Space(39 - Len(Mid$(rs2(1), 1, 35))) + Mid$(rs2(2), 1, 25) + Space(27 - Len(Mid$(rs2(2), 1, 25))) + Space(10 - Len(INF(rs2(3), 2))) + INF(rs2(3), 2)
        cont = cont + 1
        Call BRSNextPage
        chqtot = CDbl(rs2(3)) + CDbl(chqtot)
        rs2.MoveNext
    Loop

    Call BRSNextPage

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    Print #fileno, Space(74) + Space(15 - Len(IIf(CStr(INF(Trim(chqtot), 2)) = ".00", 0, CStr(INF(Trim(chqtot), 2))))) + IIf(CStr(INF(Trim(chqtot), 2)) = ".00", 0, CStr(INF(Trim(chqtot), 2)))
    cont = cont + 1

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Print #fileno, ""
    cont = cont + 1

    Print #fileno, ""
    cont = cont + 1

    Call BRSNextPage

End If

chqtot = 0

Set rs2 = New Recordset
rs2.Open " select    TRNDT,GLHEAD,ISNULL(NARRATION,''),ISNULL(debit,0) from fa_BKTRN a, fa_GLMAS b  " & _
        " where a.divcode = '" & Divcode & "'  AND A.glcode=B.glcode and a.tc= " & BTc1 & " And " & _
        " trndt <= '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "' and (debit is not null or debit > 0) AND (accounted is null or accounted='N') and trndt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockBatchOptimistic

If rs2.RecordCount > 0 Then

    rs2.MoveFirst

    Call BRSNextPage

    Print #fileno, "BANK CHARGES, INTEREST ETC. DEBITED BY BANK BUT NOT ACCOUNTED BY US"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Print #fileno, "  DATE       GLHEAD                                 NARRATION                      AMOUNT"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Do While Not rs2.EOF
        'Print #FILENO, Format(RS2(0), "dd/mm/yyyy") + Space(3) + Mid$(RS2(1), 1, 18) + Space(22 - Len(Mid$(RS2(1), 1, 18))) + Mid$(RS2(2), 1, 45) + Space(44 - Len(Mid$(RS2(2), 1, 45))) + Space(10 - Len(Format(RS2(3), "##,##,##0.00"))) + Format(RS2(3), "##,##,##0.00")

        'IMPORTANT
        '===================================================
        'RS2(3) SPACE WAS 10 CHANGED TO 16
        'DO NOT GIVE LESS THAN 16. MIN LEN OF RS2(3) IS 16
        '==================================================

        Print #fileno, Format(rs2(0), "dd/mm/yyyy") + Space(3) + Mid$(rs2(1), 1, 35) + Space(39 - Len(Mid$(rs2(1), 1, 35))) + Mid$(rs2(2), 1, 25) + Space(27 - Len(Mid$(rs2(2), 1, 25))) + Space(16 - Len(INF(rs2(3), 2))) + INF(rs2(3), 2)
        cont = cont + 1
        Call BRSNextPage
        chqtot = CDbl(rs2(3)) + CDbl(chqtot)
        rs2.MoveNext
    Loop

    Call BRSNextPage

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    'IMPORTANT
    '===================================================
    'chqtot SPACE WAS 15 CHANGED TO 16
    'DO NOT GIVE LESS THAN 16  MIN LEN OF RS2(3) IS 16
    '===================================================



    Print #fileno, Space(74) + Space(16 - Len(IIf(CStr(Format(Trim(chqtot), "##,##,##,###.00")) = ".00", 0, CStr(Format(Trim(chqtot), "##,##,##,###.00"))))) + IIf(CStr(Format(Trim(chqtot), "##,##,##,###.00")) = ".00", 0, CStr(Format(Trim(chqtot), "##,##,##,###.00")))
    cont = cont + 1

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Call BRSNextPage

End If

Print #fileno, ""
Print #fileno, Space(36) & " * End of Report *"
'Print #FILENO, Space(36) & "    Cyber Korp   "
Print #fileno, Chr(12)
Close #fileno

fileno = FreeFile()

'Open "c:\BRSbat.bat" For Output As #fileno
'Print #fileno, "cd\"
'Print #fileno, "c:"
'Print #fileno, "cd\"
'Print #fileno, "c:\type BRS.txt > Prn"
'Close #fileno
'REPVIEW.txtfile = "c:\BRS.txt"
'REPVIEW.Batfile = "c:\BRSbat.bat"
Call KALBATPROCESS("BRSbat")
Screen.MousePointer = 0

Exit Sub
BRSReport_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BRSReport of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub BRSNextPage()
On Error GoTo BRSNextPage_Error

If cont > 54 Then
    Print #fileno, String(89, "-")
    Print #fileno, Chr$(12)
    cont = 0
    Call BRSHead
    Print #fileno, String(89, "-")
End If

Exit Sub
BRSNextPage_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BRSNextPage of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker2_CloseUp()
On Error GoTo DTPicker2_CloseUp_Error

MaskEdBox2.Text = DTPicker2.value

Exit Sub
DTPicker2_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_CloseUp of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker2_LostFocus()
On Error GoTo DTPicker2_LostFocus_Error

    If Not (IsDate(MaskEdBox2.Text)) Then
        MsgBox "Invalid date", vbInformation, head
        MaskEdBox2.SetFocus
    ElseIf CDate(MaskEdBox2.Text) < CDate(MaskEdBox1.Text) Then
            MsgBox "To Date should not be less than From date", vbCritical, head + " - Invalid Date"
            MaskEdBox2.SetFocus
    End If

Exit Sub
DTPicker2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_LostFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub invisctrls()
On Error GoTo invisctrls_Error

 Frame1.Visible = False
 Frame2.Visible = False
 Label5.Visible = False
 Command1.Visible = False
 Command2.Visible = False

Exit Sub
invisctrls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure invisctrls of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub List1_MouseUp(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
On Error GoTo List1_MouseUp_Error

stbar.Panels(2).Text = ""
Combo6.Clear
Combo7.Clear

Dim qrdt As String
'If Mid(List1.Text, 1, 3) = "Jan" Or Mid(List1.Text, 1, 3) = "Feb" Or Mid(List1.Text, 1, 3) = "Mar" Then
'     qrdt = Year(yldate)
'     qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & qrdt & "%"
'  Else
'     qrdt = Year(yfdate)
'     qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & qrdt & "%"
'  End If
qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & Right(List1.Text, 4) & "%"
'  If Mid(List1.Text, 1, 3) = "Jan" Or Mid(List1.Text, 1, 3) = "Feb" Or Mid(List1.Text, 1, 3) = "Mar" Then
'     qrdt = Mid(Year(yldate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List1.Text, 1, 3)) & "-" & qrdt
'  Else
'     qrdt = Mid(Year(yfdate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List1.Text, 1, 3)) & "-" & qrdt
'  End If
If Option1.value = True Then
Adodc2.RecordSource = "select distinct a.slcode+'--'+a.slname +'--'+isnull(a.city,'') FLD from fa_slmas a,fa_jvline b where b.accode=a.slcode and b.tc=" & TCN(0) & " and b.vocdt  like '" & qrdt & "'"
Else
Adodc2.RecordSource = "select distinct a.slcode+'--'+a.slname +'--'+isnull(a.city,'') FLD from fa_slmas a,fa_jvline b where b.accode=a.slcode and b.tc=" & TCN(1) & " and b.vocdt  like '" & qrdt & "'"
End If

Adodc2.Refresh
 If Adodc2.Recordset.RecordCount = 0 Then
        stbar.Panels(2).Text = "No records found"
         Command1.Enabled = False
         Combo6.Clear
         Screen.MousePointer = 0
         Exit Sub
 Else
    Command1.Enabled = True
    Adodc2.Recordset.MoveFirst
    Do While Not Adodc2.Recordset.EOF
        Combo6.AddItem "" & Adodc2.Recordset.Fields(0) & ""
        Adodc2.Recordset.MoveNext
    Loop
 End If
 Adodc2.Recordset.MoveFirst
Combo6.Text = Adodc2.Recordset.Fields(0)

Exit Sub
List1_MouseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure List1_MouseUp of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub List1_Scroll()
On Error GoTo List1_Scroll_Error

stbar.Panels(2).Text = ""
Combo6.Clear
Combo7.Clear

Dim qyear As Integer, qmonth As Integer

'    If List1.TopIndex > 2 Then
'        Qyear = Year(yfdate)
'    Else
'        Qyear = Year(yldate)
'    End If
'
'    Qmonth = List1.TopIndex + 1
    If qmonth >= 0 And qmonth <= 12 Then
        List1.Text = List1.List(List1.TopIndex)
    End If
    qyear = Right(List1.Text, 4)
    qmonth = Format(("01/" & Left(List1.Text, 3) & "/" & Right(List1.Text, 4)), "MM")
    qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & Right(List1.Text, 4) & "%"

'If Mid(List1.Text, 1, 3) = "Jan" Or Mid(List1.Text, 1, 3) = "Feb" Or Mid(List1.Text, 1, 3) = "Mar" Then
'     qrdt = Year(yldate)
'     qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & qrdt & "%"
'  Else
'     qrdt = Year(yfdate)
'     qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & qrdt & "%"
'  End If
'  If Mid(List1.Text, 1, 3) = "Jan" Or Mid(List1.Text, 1, 3) = "Feb" Or Mid(List1.Text, 1, 3) = "Mar" Then
'     qrdt = Mid(Year(yldate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List1.Text, 1, 3)) & "-" & qrdt
'  Else
'     qrdt = Mid(Year(yfdate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List1.Text, 1, 3)) & "-" & qrdt
'  End If
If Option1.value = True Then
    Adodc2.RecordSource = "select distinct a.slcode+'--'+a.slname +'--'+isnull(a.city,'') FLD from fa_slmas a inner join fa_jvline b on  b.accode=a.slcode  inner join rm_lot c on c.divcode = b.divcode and  b.accode = c.supcd and c.dbno = b.vocno and c.pjdt = b.vocdt  where b.divcode = '" & Divcode & "'  and b.tc=" & TCN(0) & " and year(b.vocdt) = " & qyear & " and month(b.vocdt) = " & qmonth & " "
Else
    'Adodc2.RecordSource = "select distinct a.slcode+'--'+a.slname +'--'+isnull(a.city,'') FLD from fa_slmas a,fa_jvline b where b.divcode = '" & Divcode & "' and  b.accode=a.slcode and b.tc=" & TCN(1) & " and year(b.vocdt) = " & qyear & " and month(b.vocdt) = " & qmonth & " "
    Adodc2.RecordSource = "select distinct a.slcode+'--'+a.slname +'--'+isnull(a.city,'') FLD from fa_slmas a inner join fa_jvline b on  b.accode=a.slcode  inner join rm_lot c on c.divcode = b.divcode and  b.accode = c.supcd and c.dbno = b.vocno and c.pjdt = b.vocdt  where b.divcode = '" & Divcode & "'  and b.tc=" & TCN(1) & " and year(b.vocdt) = " & qyear & " and month(b.vocdt) = " & qmonth & " "
End If

Adodc2.Refresh
 If Adodc2.Recordset.RecordCount = 0 Then
        stbar.Panels(2).Text = "No records found"
         Command1.Enabled = False
         Combo6.Clear
         Screen.MousePointer = 0
         Exit Sub
 Else
    Command1.Enabled = True
    Adodc2.Recordset.MoveFirst
    Do While Not Adodc2.Recordset.EOF
        Combo6.AddItem "" & Adodc2.Recordset.Fields(0) & ""
        Adodc2.Recordset.MoveNext
    Loop
 End If
 Adodc2.Recordset.MoveFirst
Combo6.Text = Adodc2.Recordset.Fields(0)

Exit Sub
List1_Scroll_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure List1_Scroll of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub List11_MouseUp(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
Dim qrdt As String
'  If Mid(List11.Text, 1, 3) = "Jan" Or Mid(List11.Text, 1, 3) = "Feb" Or Mid(List11.Text, 1, 3) = "Mar" Then
'     qrdt = Mid(Year(yldate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List11.Text, 1, 3)) & "-" & qrdt
'  Else
'     qrdt = Mid(Year(yfdate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List11.Text, 1, 3)) & "-" & qrdt
'  End If

'If Mid(List11.Text, 1, 3) = "Jan" Or Mid(List11.Text, 1, 3) = "Feb" Or Mid(List11.Text, 1, 3) = "Mar" Then
'     qrdt = Year(yldate)
'     qrdt = UCase(Mid(List11.Text, 1, 3)) & " %% " & qrdt & "%"
'  Else
'     qrdt = Year(yfdate)
'     qrdt = UCase(Mid(List11.Text, 1, 3)) & " %% " & qrdt & "%"
'  End If
' Combo2.Enabled = True
' Combo3.Enabled = True
' Combo2.clear
' Combo2.clear
'
' Select Case loc_RepIndex
' Case 22
'  Adodc2.RecordSource = "select distinct vocno,vocdt from FA_RECHEAD where divcode = '" & divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and vocdt like '" & qrdt & "' order by vocno "
' Case 24
' Adodc2.RecordSource = "select distinct vocno,vocdt from FA_PAYHEAD where divcode = '" & divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and vocdt like '" & qrdt & "' order by vocno "
' Case 25
' Adodc2.RecordSource = "select distinct vocno,vocdt from FA_jvHEAD where divcode = '" & divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and vocdt like '" & qrdt & "' order by vocno "
' Case 26
' Adodc2.RecordSource = "select distinct pjvno,pjvdt from FA_purhd where divcode = '" & divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric) and pjvdt like '" & qrdt & "' order by pjvno "
'Case 100
' Adodc2.RecordSource = "select distinct vocno,vocdt from FA_PAYHEAD where divcode = '" & divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric) and vocdt like '" & qrdt & "' order by vocno "
'End Select
' Adodc2.Refresh
' If Adodc2.Recordset.RecordCount = 0 Then
'         stbar.Panels(2).Text = "No records found for the TC " & Mid(Combo1.Text, 12, 30) & "  For the month of " & List11.Text
'         Command1.Enabled = False
'         Combo21.clear
'         Combo31.clear
'         Screen.MousePointer = 0
'         Exit Sub
' Else
'    Command1.Enabled = True
'    stbar.Panels(2).Text = ""
'    Adodc2.Recordset.MoveFirst
'    Do While Not Adodc2.Recordset.EOF
'        Combo21.AddItem "" & Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1) & ""
'        Combo31.AddItem "" & Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1) & ""
'        Adodc2.Recordset.MoveNext
'    Loop
' End If
' Adodc2.Recordset.MoveFirst
' Combo21.Text = Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1)
' Adodc2.Recordset.MoveLast
' Combo31.Text = Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1)
On Error GoTo List11_MouseUp_Error

    

Exit Sub
List11_MouseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure List11_MouseUp of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub List11_Scroll()

    Dim qyear As Integer, qmonth As Integer
On Error GoTo List11_Scroll_Error

     If qmonth >= 0 And qmonth <= 12 Then
        List11.Text = List11.List(List11.TopIndex)
    End If
    qyear = Right(List11.Text, 4)
    qmonth = Format(("01/" & Left(List11.Text, 3) & "/" & Right(List11.Text, 4)), "MM")

qrdt = UCase(Mid(List11.Text, 1, 3)) & " %% " & Right(List11.Text, 4) & "%"
 Combo2.Enabled = True
 Combo3.Enabled = True
 Combo2.Clear
 'Combo2.clear

 Combo21.Clear
 Combo31.Clear


 Select Case loc_RepIndex
 Case 22
  Adodc2.RecordSource = "select distinct vocno,vocdt from FA_RECHEAD where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and year(vocdt) = " & qyear & " and month(vocdt) = " & qmonth & " order by vocno "
 Case 24
 Adodc2.RecordSource = "select distinct vocno,vocdt from FA_PAYHEAD where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and year(vocdt) = " & qyear & " and month(vocdt) = " & qmonth & " order by vocno "
 Case 25
 Adodc2.RecordSource = "select distinct vocno,vocdt from FA_jvHEAD where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and year(vocdt) = " & qyear & " and month(vocdt) = " & qmonth & " order by vocno "
 Case 26
 Adodc2.RecordSource = "select distinct pjvno,pjvdt from FA_purhd where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric) and year(pjvdt) = " & qyear & " and month(pjvdt) = " & qmonth & " order by pjvno "
Case 100
 Adodc2.RecordSource = "select distinct vocno,vocdt from FA_PAYHEAD where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric) and year(vocdt) = " & qyear & " and month(vocdt) = " & qmonth & " order by vocno "
End Select
 Adodc2.Refresh
 If Adodc2.Recordset.RecordCount = 0 Then
         stbar.Panels(2).Text = "No records found for the TC " & Mid(Combo1.Text, 12, 30) & "  For the month of " & List11.Text
         Command1.Enabled = False
         Combo21.Clear
         Combo31.Clear
         Screen.MousePointer = 0
         Exit Sub
 Else
    Command1.Enabled = True
    stbar.Panels(2).Text = ""
    Adodc2.Recordset.MoveFirst
    Combo21.Clear
    Combo31.Clear
    Do While Not Adodc2.Recordset.EOF
        Combo21.AddItem "" & Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1) & ""
        Combo31.AddItem "" & Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1) & ""
        Adodc2.Recordset.MoveNext
    Loop
 End If
 Adodc2.Recordset.MoveFirst
 Combo21.Text = Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1)
 Adodc2.Recordset.MoveLast
 Combo31.Text = Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1)

Exit Sub
List11_Scroll_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure List11_Scroll of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub list21_MouseUp(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'    Dim qrdt As String
'If Mid(List21.Text, 1, 3) = "Jan" Or Mid(List21.Text, 1, 3) = "Feb" Or Mid(List21.Text, 1, 3) = "Mar" Then
'    qrdt = Year(yldate)
'    qrdt = UCase(Mid(List21.Text, 1, 3)) & " %% " & qrdt & "%"
'Else
'    qrdt = Year(yfdate)
'    qrdt = UCase(Mid(List21.Text, 1, 3)) & " %% " & qrdt & "%"
'End If
'
'    If List21.TopIndex > 2 Then
'        Qyear = Year(yfdate)
'    Else
'        Qyear = Year(yldate)
'    End If
'
'    Qmonth = List11.TopIndex + 1
'
'Set rs1 = New Recordset
'Adodc1.RecordSource = "select distinct vocdt from FA_RECHEAD where divcode = '" & divcode & "' and (prtflag='N' or prtflag is null) and  year(vocdt) = " & Qyear & " and month(vocdt) = " & Qmonth & " order by vocdt "
'Adodc1.Refresh
'If Adodc1.Recordset.RecordCount >= 1 Then
'    stbar.Panels(2).Text = ""
'    Command1.Enabled = True
'    Adodc1.Recordset.MoveFirst
'    Set DataCombo2.RowSource = Adodc1
'    DataCombo2.ListField = "vocdt"
'    DataCombo2.Text = Adodc1.Recordset.Fields(0)
'    Adodc1.Recordset.MoveLast
'    Set DataCombo3.RowSource = Adodc1
'    DataCombo3.ListField = "vocdt"
'    DataCombo3.Text = Adodc1.Recordset.Fields(0)
'Else
'    stbar.Panels(2).Text = "No records found for the month " & List21.Text
'    Command1.Enabled = False
'    DataCombo2.Text = ""
'    DataCombo3.Text = ""
'End If
On Error GoTo list21_MouseUp_Error

    

Exit Sub
list21_MouseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure list21_MouseUp of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Combo11_Click()
   Dim qrdt As String
'  If Mid(List11.Text, 1, 3) = "Jan" Or Mid(List11.Text, 1, 3) = "Feb" Or Mid(List11.Text, 1, 3) = "Mar" Then
'     qrdt = Year(yldate)
'     qrdt = UCase(Mid(List11.Text, 1, 3)) & " %% " & qrdt & "%"
'  Else
'     qrdt = Year(yfdate)
'     qrdt = UCase(Mid(List11.Text, 1, 3)) & " %% " & qrdt & "%"
'  End If
On Error GoTo Combo11_Click_Error

  qrdt = UCase(Mid(List11.Text, 1, 3)) & " %% " & Right(List11.Text, 4) & "%"
 Combo21.Enabled = True
 Combo31.Enabled = True
 Combo21.Clear
 Combo21.Clear

Select Case loc_RepIndex
 Case 22
  'Adodc2.RecordSource = "select distinct vocno,vocdt from FA_RECHEAD where divcode = '" & divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null)  order by vocno "
  Adodc2.RecordSource = "select distinct vocno,vocdt from FA_RECHEAD where divcode = '" & Divcode & "' and (prtflag='N' or prtflag is null)  order by vocno "
  '--
  Set Rs = New Recordset
         'rs.Open "Select top 1 vocdt,vocno,a.tc,tchead from fa_rechead a,fa_tcmas b where a.tc = b.tc and a.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by  vocno desc ,vocdt desc", db
         Rs.Open "select top 1  vocdt,vocno from fa_rechead where divcode = '" & Divcode & "' and (prtflag='N' or prtflag is null)  order by vocno ", cn
 If Rs.RecordCount > 0 Then
          List11.Enabled = True

         List11.Text = Format(Rs(0), "mmmm") & " - " & Format(Rs(0), "yyyy")

        If Not Rs.EOF Then
         List11.Text = Format(Rs(0), "mmmm") & " - " & Format(Rs(0), "yyyy")

        End If
 End If
  '--
 Case 23
  Adodc2.RecordSource = "select distinct vocno,vocdt from FA_RECHEAD where divcode = '" & Divcode & "' and tc =CAST(" & Mid(Combo11.Text, 1, 2) & " AS NUMERIC)and (prtflag='N' or prtflag is null) and vocdt like '" & qrdt & "' order by vocno "
 Case 24
' Adodc2.RecordSource = "select distinct vocno,vocdt from FA_PAYHEAD where divcode = '" & divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and vocdt like '" & qrdt & "' order by vocno "
 Adodc2.RecordSource = "select distinct vocno,vocdt from FA_PAYHEAD where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by vocno  "
  Dim RecSet As New Recordset
  Set RecSet = New Recordset
  RecSet.Open "select distinct vocdt from FA_PAYHEAD where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  order by vocdt", cn
'  For i = 1 To recset.RecordCount
   List1.Clear
   List11.Clear
   List21.Clear
   List2.Clear
  Do While Not RecSet.EOF
  List2.AddItem Format(RecSet(0), "MMMM") & " - " & Format(RecSet(0), "yyyy")
  List11.AddItem Format(RecSet(0), "MMMM") & " - " & Format(RecSet(0), "yyyy")
  List21.AddItem Format(RecSet(0), "MMMM") & " - " & Format(RecSet(0), "yyyy")
  List1.AddItem Format(RecSet(0), "MMMM") & " - " & Format(RecSet(0), "yyyy")
'  DATEA = DateAdd("M", 1, DATEA)
  RecSet.MoveNext
  Loop
'  Next i
List11.Clear

Set rs1 = New Recordset
rs1.Open "select distinct MONTH(VOCDT) from FA_PAYHEAD where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ORDER BY (MONTH(VOCDT))  ", cn, adOpenStatic
Do While Not rs1.EOF
    List11.AddItem MonthName(rs1(0)) & " - " & Year(pdate)
rs1.MoveNext
Loop



 Case 25
 Adodc2.RecordSource = "select distinct vocno,vocdt from FA_jvHEAD where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)and (prtflag='N' or prtflag is null) and vocdt like '" & qrdt & "' order by vocno "
 Case 26
 Adodc2.RecordSource = "select distinct pjvno,pjvdt from FA_purhd where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric) and pjvdt like '" & qrdt & "' order by pjvno "
 Case 100
 Adodc2.RecordSource = "select distinct vocno,vocdt from FA_PAYHEAD where divcode = '" & Divcode & "' and tc =cast(" & Mid(Combo11.Text, 1, 2) & " as numeric) and vocdt like '" & qrdt & "' order by vocno "
 End Select
On Error Resume Next
Adodc2.Refresh
 Combo21.Clear
 Combo31.Clear
 If Adodc2.Recordset.RecordCount = 0 Then
         stbar.Panels(2).Text = "No records found for the  " & Mid(Combo11.Text, 12, 30) & "  for the month " & List11.Text
         Command1.Enabled = False
         Combo21.Clear
         Combo31.Clear
         Screen.MousePointer = 0
         Exit Sub
 Else
    Command1.Enabled = True
    stbar.Panels(2).Text = ""
    Adodc2.Recordset.MoveFirst
    Combo21.Clear
    Combo31.Clear
    Do While Not Adodc2.Recordset.EOF
        Combo21.AddItem "" & Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1) & ""
        Combo31.AddItem "" & Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1) & ""
        Adodc2.Recordset.MoveNext
    Loop
 End If
 Adodc2.Recordset.MoveFirst
 Combo21.Text = Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1)
 Adodc2.Recordset.MoveLast
 Combo31.Text = Adodc2.Recordset.Fields(0) & "  " & "------- " & Adodc2.Recordset.Fields(1)

Exit Sub
Combo11_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo11_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo11_GotFocus()
'SendKeys "{F4}"
On Error GoTo Combo11_GotFocus_Error

    

Exit Sub
Combo11_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo11_GotFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo21_GotFocus()
'SendKeys "{F4}"
On Error GoTo Combo21_GotFocus_Error

    

Exit Sub
Combo21_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo21_GotFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo31_GotFocus()
'SendKeys "{F4}"
End Sub

Private Sub List21_Scroll()
On Error GoTo List21_Scroll_Error

     If qmonth >= 0 And qmonth <= 12 Then
        List21.Text = List21.List(List21.TopIndex)
    End If
    Dim qrdt As String
If Mid(List21.Text, 1, 3) = "Jan" Or Mid(List21.Text, 1, 3) = "Feb" Or Mid(List21.Text, 1, 3) = "Mar" Then
    qrdt = Year(yldate)
    qrdt = UCase(Mid(List21.Text, 1, 3)) & " %% " & qrdt & "%"
Else
    qrdt = Year(yfdate)
    qrdt = UCase(Mid(List21.Text, 1, 3)) & " %% " & qrdt & "%"
End If
    qrdt = UCase(Mid(List21.Text, 1, 3)) & " %% " & Right(List21.Text, 4) & "%"
    If List21.TopIndex < 9 Then
        qyear = Year(yfdate)
    Else
        qyear = Year(yldate)
    End If

    qmonth = Format(CStr("01/" & UCase(Mid(List21.Text, 1, 3)) & "/" & qyear), "mm") 'List21.TopIndex + 1

Dim rs1 As New Recordset
Set rs1 = New Recordset
Adodc1.RecordSource = "select distinct a.vocdt from FA_RECHEAD a,fa_slmas b,fa_recline c where a.divcode = c.divcode and a.tc = c.tc and a.vocno = c.vocno and a.vocdt = c.vocdt and a.divcode = '" & Divcode & "' and (prtflag='N' or prtflag is null) and year(a.vocdt) = " & qyear & " and month(a.vocdt) = " & val(qmonth) & " and b.slcode = c.accode order by a.vocdt "
'Adodc1.RecordSource = "select distinct vocdt from FA_RECHEAD where divcode = '" & divcode & "' and (prtflag='N' or prtflag is null) and  year(vocdt) = " & Qyear & " and month(vocdt) = " & Qmonth & " order by vocdt "
Adodc1.Refresh
If Adodc1.Recordset.RecordCount > 0 Then
    stbar.Panels(2).Text = ""
    Command1.Enabled = True
    Adodc1.Recordset.MoveFirst
    Set DataCombo2.RowSource = Adodc1
    DataCombo2.ListField = "vocdt"
    DataCombo2.Text = Adodc1.Recordset.Fields(0)
    Adodc1.Recordset.MoveLast
    Set DataCombo3.RowSource = Adodc1
    DataCombo3.ListField = "vocdt"
    DataCombo3.Text = Adodc1.Recordset.Fields(0)
Else
    stbar.Panels(2).Text = "No records found for the month " & List21.Text
    Command1.Enabled = False
    DataCombo2.Text = ""
    DataCombo3.Text = ""
End If

Exit Sub
List21_Scroll_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure List21_Scroll of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub MaskEdBox1_Change()
On Error GoTo MaskEdBox1_Change_Error

If IsDate(MaskEdBox1.Text) Then
    If CDate(MaskEdBox1.Text) < yfdate Then
        MaskEdBox1.Text = yfdate
        stbar.Panels(2).Text = "From Voucher date cannot be earlier than Year Opening date"
    ElseIf CDate(MaskEdBox1.Text) > pdate Then
        MaskEdBox1.Text = pdate
        stbar.Panels(2).Text = "From Voucher date cannot be greater than Processing date"
    ElseIf IsDate(MaskEdBox2.Text) Then
        If CDate(MaskEdBox1.Text) > CDate(MaskEdBox2.Text) Then
            MaskEdBox2.Text = MaskEdBox1.Text
            stbar.Panels(2).Text = "From Voucher date cannot be greater than To Voucher date"
        Else
            stbar.Panels(2).Text = ""
        End If
    End If
End If

Exit Sub
MaskEdBox1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_Change of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub MaskEdBox2_Change()
On Error GoTo MaskEdBox2_Change_Error

If IsDate(MaskEdBox2.Text) Then
    If CDate(MaskEdBox2.Text) > yldate Or CDate(MaskEdBox2.Text) > pdate Then
        MaskEdBox2.Text = pdate
        stbar.Panels(2).Text = "Voucher date cannot be greater than processing Date"
    ElseIf IsDate(MaskEdBox1.Text) And CDate(MaskEdBox1.Text) > CDate(MaskEdBox2.Text) Then
        MaskEdBox2.Text = MaskEdBox1.Text
        stbar.Panels(2).Text = "To Voucher Date cannot be less than From voucher Date"
    Else
        stbar.Panels(2).Text = ""
    End If
End If

Exit Sub
MaskEdBox2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox2_Change of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub MaskEdBox3_Change()
On Error GoTo MaskEdBox3_Change_Error

If IsDate(MaskEdBox3.Text) = True Then
    If CDate(MaskEdBox3.Text) < yfdate Then
        MaskEdBox3.Text = yfdate
        stbar.Panels(2).Text = "From Date cannot be greater than Year Starting Date"
    ElseIf CDate(MaskEdBox3.Text) > pdate Then
        MaskEdBox3.Text = pdate
        stbar.Panels(2).Text = "From Date cannot be greater than Processing date"
    ElseIf MaskEdBox4.Text <> "" And repform.Visible = True Then
        If IsDate(MaskEdBox3.Text) And IsDate(MaskEdBox4.Text) Then
            If CDate(MaskEdBox3.Text) > CDate(MaskEdBox4.Text) Then
                MaskEdBox4.Text = MaskEdBox3.Text
                stbar.Panels(2).Text = ""
                stbar.Panels(2).Text = "From Date cannot be greater than To Date"
            Else
                stbar.Panels(2).Text = ""
            End If
        End If
    End If
End If

Exit Sub
MaskEdBox3_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox3_Change of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub MaskEdBox4_Change()
On Error GoTo MaskEdBox4_Change_Error

If loc_RepIndex = 38 Or loc_RepIndex = 39 Then
    If IsDate(MaskEdBox4.Text) Then
        If CDate(MaskEdBox4.Text) > yldate Or CDate(MaskEdBox4.Text) > pdate Then
            MaskEdBox4.Text = pdate
            stbar.Panels(2).Text = "Date cannot be greater than processing Date"
        End If
    End If
Else
If IsDate(MaskEdBox4.Text) Then
If CDate(MaskEdBox4.Text) > yldate Or CDate(MaskEdBox4.Text) > pdate Then
   MaskEdBox4.Text = pdate
   stbar.Panels(2).Text = "Date cannot be greater than processing Date"
   On Error Resume Next
ElseIf CDate(MaskEdBox3.Text) > CDate(MaskEdBox4.Text) Then
   MaskEdBox4.Text = MaskEdBox3.Text
   stbar.Panels(2).Text = ""
   stbar.Panels(2).Text = "To Date cannot be less than From Date"
Else
   stbar.Panels(2).Text = ""
End If
End If
End If

Exit Sub
MaskEdBox4_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox4_Change of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Option1_Click()
On Error GoTo Option1_Click_Error

stbar.Panels(2).Text = " "
Combo6.Clear
Combo7.Clear
crnflg = "Y"
drnflg = ""
If List1.Text <> "" Then

Dim qrdt As String

' If List1.TopIndex > 2 Then
'        Qyear = Year(yfdate)
'    Else
'        Qyear = Year(yldate)
'    End If
'
'    Qmonth = List1.TopIndex + 1
'qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & Right(List1, 4) & "%"
Set Rs = New Recordset
Rs.Open "Select top 1 vocdt,vocno,a.tc,tchead from fa_jvhead a  inner join fa_tcmas b on  a.tc = b.tc inner join rm_lot  c on  a.divcode = b.divcode and a.vocno = c.dbno and c.dbamt > 0  where  c.lotdt    between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and   a.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.tc=" & val(TCN(1)) & " order by  vocno desc ,vocdt desc", DB
If Not Rs.EOF Then
qmonth = Format(Rs(0), "mm")
End If

qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & Right(List1.Text, 4) & "%"

qyear = Right(List1, 4)

    qmonth = Format(("01/" & Left(List1.Text, 3) & "/" & Right(List1.Text, 4)), "MM")
'If Mid(List1.Text, 1, 3) = "Jan" Or Mid(List1.Text, 1, 3) = "Feb" Or Mid(List1.Text, 1, 3) = "Mar" Then
'     qrdt = Year(yldate)
'     qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & qrdt & "%"
'  Else
'     qrdt = Year(yfdate)
'     qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & qrdt & "%"
'  End If
If TCN.RecordCount = 0 Then
   MsgBox "Credit Note not TC defined in parameter", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If

Adodc2.RecordSource = "select distinct a.slcode+'--'+a.slname +'--'+isnull(a.city,'') FLD from fa_slmas a,fa_jvline b where  b.divcode = '" & Divcode & "' and b.accode=a.slcode and b.tc=" & TCN(0) & " and year(b.vocdt) = " & qyear & " and month(b.vocdt)= " & qmonth & ""
Combo6.Clear
Adodc2.Refresh

  If Adodc2.Recordset.RecordCount = 0 Then
     stbar.Panels(2).Text = "No records found"
     Command1.Enabled = False
     Combo6.Clear
     Screen.MousePointer = 0
     Exit Sub
 Else
    Command1.Enabled = True
    Adodc2.Recordset.MoveFirst
    Do While Not Adodc2.Recordset.EOF
        Combo6.AddItem "" & Adodc2.Recordset.Fields(0) & ""
        Adodc2.Recordset.MoveNext
    Loop
 End If
 Adodc2.Recordset.MoveFirst
 Combo6.Text = Adodc2.Recordset.Fields(0)

Adodc2.RecordSource = "select distinct b.vocdt from fa_jvline b,fa_slmas a where b.accode=a.slcode and a.slcode = '" & Mid(Combo6.Text, 1, 7) & "' and b.vocdt like '" & qrdt & "' and b.tc=" & TCN(0) & " "
Combo7.Clear
Adodc2.Refresh
 If Adodc2.Recordset.RecordCount = 0 Then
         'MsgBox "No records found", vbInformation, head
         stbar.Panels(2).Text = "No records found"
         Command1.Enabled = False
         Combo7.Clear
         Screen.MousePointer = 0
         Exit Sub
 Else
    Command1.Enabled = True
    Adodc2.Recordset.MoveFirst
    Do While Not Adodc2.Recordset.EOF
        Combo7.AddItem "" & Adodc2.Recordset.Fields(0) & ""
        Adodc2.Recordset.MoveNext
    Loop
 End If
 Adodc2.Recordset.MoveFirst
 Combo7.Text = Adodc2.Recordset.Fields(0)
 End If

Exit Sub
Option1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option1_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Option2_Click()
On Error GoTo Option2_Click_Error

Combo6.Clear
Combo7.Clear
crnflg = ""
drnflg = "Y"
If List1.Text <> "" Then

' If List1.TopIndex > 2 Then
'        Qyear = Year(yfdate)
'    Else
'        Qyear = Year(yldate)
'    End If
'
'    Qmonth = List1.TopIndex + 1

Set Rs = New Recordset
'Rs.Open "Select top 1 vocdt,vocno,a.tc,tchead from fa_jvhead a,fa_tcmas b where a.tc = b.tc and a.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.tc= " & val(TCN(0)) & " order by  vocno desc ,vocdt desc", DB
Rs.Open "Select top 1 vocdt,vocno,a.tc,tchead from fa_jvhead a  inner join fa_tcmas b on  a.tc = b.tc inner join rm_lot  c on  a.divcode = b.divcode and a.vocno = c.dbno and c.dbamt > 0  where  c.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and   a.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND (a.tc=" & val(TCN(0)) & " or a.tc=" & val(TCN(1)) & ") order by  vocno desc ,vocdt desc", DB
If Not Rs.EOF Then
'qmonth = Format(rs(0), "mm")

End If
qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & Right(List1.Text, 4) & "%"
qyear = Right(List1, 4)
'qmonth = Month(List1)
    qmonth = Format(("01/" & Left(List1.Text, 3) & "/" & Right(List1.Text, 4)), "MM")

'Dim qrdt As String

'If Mid(List1.Text, 1, 3) = "Jan" Or Mid(List1.Text, 1, 3) = "Feb" Or Mid(List1.Text, 1, 3) = "Mar" Then
'     qrdt = Year(yldate)
'     qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & qrdt & "%"
'  Else
'     qrdt = Year(yfdate)
'     qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & qrdt & "%"
'  End If
'qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & Right(List1.Text, 4) & "%"

'  If Mid(List1.Text, 1, 3) = "Jan" Or Mid(List1.Text, 1, 3) = "Feb" Or Mid(List1.Text, 1, 3) = "Mar" Then
'     qrdt = Mid(Year(yldate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List1.Text, 1, 3)) & "-" & qrdt
'  Else
'     qrdt = Mid(Year(yfdate), 3, 2)
'     qrdt = "%%" & "-" & UCase(Mid(List1.Text, 1, 3)) & "-" & qrdt
'  End If
If TCN.RecordCount = 0 Then
   MsgBox "Debit Note TC not defined in parameter", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If


Adodc2.ConnectionString = connectstring

Adodc2.RecordSource = "select distinct a.slcode+'--'+a.slname +'--'+isnull(a.city,'') FLD from fa_slmas a,fa_jvline b where  b.divcode = '" & Divcode & "' and b.accode=a.slcode and b.tc= " & TCN(1) & " and year(b.vocdt) = " & qyear & " and month(b.vocdt) = " & qmonth & " "
Combo6.Clear
Adodc2.Refresh
  If Adodc2.Recordset.RecordCount = 0 Then
         'MsgBox "No records found", vbInformation, head
         stbar.Panels(2).Text = "No records found"
         Command1.Enabled = False
         Combo6.Clear
         Screen.MousePointer = 0
         Exit Sub
 Else
   stbar.Panels(2).Text = ""
    Command1.Enabled = True
    Adodc2.Recordset.MoveFirst
    Do While Not Adodc2.Recordset.EOF
        Combo6.AddItem "" & Adodc2.Recordset.Fields(0) & ""
        Adodc2.Recordset.MoveNext
    Loop
 End If
 Adodc2.Recordset.MoveFirst
 Combo6.Text = Adodc2.Recordset.Fields(0)

Adodc2.RecordSource = "select distinct b.vocdt from fa_jvline b,fa_slmas a,fa_param where b.divcode = '" & Divcode & "' and b.accode=a.slcode and b.vocdt like '" & qrdt & "' and b.tc=drnote "
Combo7.Clear
Adodc2.Refresh
 If Adodc2.Recordset.RecordCount = 0 Then
         'MsgBox "No records found", vbInformation, head
         stbar.Panels(2).Text = "No records found"
         Command1.Enabled = False
         Combo7.Clear
         Screen.MousePointer = 0
         Exit Sub
 Else
    Command1.Enabled = True
    Adodc2.Recordset.MoveFirst
    Do While Not Adodc2.Recordset.EOF
        Combo7.AddItem "" & Adodc2.Recordset.Fields(0) & ""
        Adodc2.Recordset.MoveNext
    Loop
 End If
 Adodc2.Recordset.MoveFirst
 Combo7.Text = Adodc2.Recordset.Fields(0)
 End If

Exit Sub
Option2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option2_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Option3_Click()
On Error GoTo Option3_Click_Error

crnflg = "Y"
drnflg = ""

Exit Sub
Option3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option3_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

drnflg = "Y"
crnflg = ""

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option7_Click()
On Error GoTo Option7_Click_Error

UserFooter1.ClearFooter

Exit Sub
Option7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option7_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option8_Click()
On Error GoTo Option8_Click_Error

UserFooter1.Load

Exit Sub
Option8_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option8_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text1_GotFocus()
On Error GoTo Text1_GotFocus_Error

   Frame3.Visible = True
   Frame3.ZOrder
   KSLLIST1.conn = connectstring
   KSLLIST1.Table = "FA_SLMAS where SUBSTRING(slcode,1,2)='" & Mid(Combo5.Text, 1, 2) & "'"
   KSLLIST1.listfield1 = "slcode"
   KSLLIST1.listfield2 = "slname"
   KSLLIST1.SetFocus

Exit Sub
Text1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_GotFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub ftglac_GotFocus()
On Error GoTo ftglac_GotFocus_Error

        ft = True
        Frame3.Visible = True
        KSLLIST1.conn = connectstring
        If loc_RepIndex = 12 Or loc_RepIndex = 16 Then
        KSLLIST1.Table = "fa_glmas"
        KSLLIST1.listfield1 = "glcode"
        KSLLIST1.listfield2 = "glhead"
        KSLLIST1.SetFocus
        ElseIf loc_RepIndex = 13 Or loc_RepIndex = 14 Or loc_RepIndex = 15 Then
        KSLLIST1.Table = "fa_slmas where SUBSTRING(slcode,1,2)='" & Mid(Combo5.Text, 1, 2) & "'"
        KSLLIST1.listfield1 = "slcode"
        KSLLIST1.listfield2 = "slname"
        KSLLIST1.SetFocus
        ElseIf loc_RepIndex = 17 Then
        KSLLIST1.Table = "fa_slmas"
        KSLLIST1.listfield1 = "slcode"
        KSLLIST1.listfield2 = "slname"
        KSLLIST1.SetFocus
        End If

Exit Sub
ftglac_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ftglac_GotFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text2_Click()
On Error GoTo Text2_Click_Error

        Frame3.Visible = True
        Frame3.ZOrder
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "fa_prty"
        KSLLIST1.listfield1 = "prtytyp"
        KSLLIST1.listfield2 = "prtyhead"
        KSLLIST1.SetFocus
        cdn = "Y"

Exit Sub
Text2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text2_Click of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ttglac_GotFocus()
On Error GoTo ttglac_GotFocus_Error

        ft = False
        Frame3.Visible = True
        Frame3.ZOrder
        KSLLIST1.conn = connectstring
        If loc_RepIndex = 12 Then
        KSLLIST1.Table = "fa_glmas where CAST(glcode AS NUMERIC) >= '" & CDbl(ftglac.Text) & "'"
        KSLLIST1.listfield1 = "glcode"
        KSLLIST1.listfield2 = "glhead"
        KSLLIST1.SetFocus
        Else
        KSLLIST1.Table = "fa_slmas where SUBSTRING(slcode,1,2)='" & Mid(Combo5.Text, 1, 2) & "' and slcode >= '" & ftglac.Text & "'"
        KSLLIST1.listfield1 = "slcode"
        KSLLIST1.listfield2 = "slname"
        KSLLIST1.SetFocus
        End If

Exit Sub
ttglac_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ttglac_GotFocus of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub form_res()
On Error GoTo form_res_Error

If loc_RepIndex = 6 Then
    repform.Top = 1000
    repform.Left = 1000
    Frame2.Left = 700
    Frame2.Top = 900
    Command1.Top = 3600
    Command1.Left = 2265
    Command2.Top = 3600
    Command2.Left = 4565
End If

Exit Sub
form_res_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure form_res of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub tbres()
On Error GoTo tbres_Error

On Error GoTo tbres_Error

    Frame1.Height = 2255
    Frame1.Width = 6000
    Label1.Top = 1000
    Combo1.Top = 1000

Exit Sub
tbres_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure tbres of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub prnhead()


On Error GoTo prnhead_Error

    On Error GoTo Err1

    pagein = pagein + 1

    If pagein > 1 Then

        co = co + 1
        'VDT1 = CStr(rs111(3))
        VDT1 = "          "
        I = 1
        'Print #1, Chr(12)
    End If
    Print #1,
    cont = 0
    If Check1.value = 1 Then
       Print #1, Chr(18) & Space(2) & CENTRE(Chr(27) & "E" & Trim(divname) & Chr(27) & "F", 133, " ")
    Else
           Print #1, Chr(18) & Space(2) & CENTRE(Chr(27) & "E" & Trim(divname) & Chr(27) & "F", 50, " ")
    End If
    cont = cont + 1
    Print #1,
    cont = cont + 1
 If loc_RepIndex = 1 Then

            If Check1.value = 0 Then
                Print #1, Space(2) & Chr(27) + "E" + " CASH DAY BOOK - " + Padr(Tche + " - " + MaskEdBox1.Text + " TO " + MaskEdBox2.Text, 104, " ") & Chr(27) + "F" & "Page :" + Padl(CStr(pagein), 2, " ")
             Else
             Print #1, Space(2) & Chr(27) + "E" + Padr("CONSOLIDATED " + Tche + " BOOK FROM " + MaskEdBox1.Text + " TO " + MaskEdBox2.Text, 121, " ") + Chr(27) + "F" + "Page :" + Padl(CStr(pagein), 4, " ")
            End If
    End If
     cont = cont + 1

        If loc_RepIndex = 2 Then
            If Check1.value = 0 Then
'''                 Print #1, Chr(27) + "E" & Space(2) & Padr(Tche + " BOOK FROM " + MaskEdBox1.Text + "  TO  " + MaskEdBox2.Text, 65, " ") & Chr(27); "F" & Space(37) & "Dt. : " & CStr(pdate) + Space(4) & "Pg.No :" + Padl(CStr(PAGEIN), 2, " ")
                    Print #1, Chr(27) + "E" & Space(2) & "BANK DAY BOOK  - " & Padr(Tche + " -SPG. -CC  - " + MaskEdBox1.Text + "  TO  " + MaskEdBox2.Text, 65, " ") & Chr(27); "F" & Space(37) & "Page :" + Padl(CStr(pagein), 2, " ")
             Else
                    Print #1, Chr(27) + "E" & Space(2) & Padr("CONSOLIDATED " + Tche + " BOOK FROM " + MaskEdBox1.Text + " TO " + MaskEdBox2.Text & Space(2), 122, " "); Chr(27); "F" & Space(1) & "Page :  " + Padl(CStr(pagein), 4, " ")
            End If
        cont = cont + 1
    End If
 Print #1, Space(2) & String(133, "-")
    cont = cont + 1
    If loc_RepIndex = 1 Then
    If Check1.value = False Then
'        Print #1, Space(2) & "Code" + Space(3) + "Description"
        Print #1, Space(2) & "Voc Date" + Space(5) & "V.No" + Space(2) + "A/C Head" & Space(27) & "Description" & Space(33) + "Chq.No" & Space(2) + "    Receipts" + Space(2) + "    Payments"
        Print #1, Space(2) & String(133, "-")
    Else
'        Print #1, Space(5) & Space(2) + "Date" + Space(3) + "Voc-No" + Space(1) + "Code" + Space(3) + "Description" & Space(46) + "Chq/ref-No"; Space(3) + Space(9) + "Receipts" + Space(11) + "Payments"
'        Print #1, Space(2) & "Code" + Space(3) + "Description"
        Print #1, Space(2) & "Date" + Space(5) & "Voc-No" + Space(2) + "Account Head" & Space(24) & "Narration" & Space(33) + "Chq/ref-No" & Space(2) + "    Receipts" + Space(2) + "    Payments"
        Print #1, Space(2) & String(133, "-")
    End If
Else
If Check1.value = False Then

        Print #1, Space(2) & "Vou Date" + Space(3) & "V.No" + Space(8) + "A/C Head" & Space(22) & "Description" & Space(35) + "Chq.No" & Space(0) + "    Receipts" + Space(2) + "    Payments"

        Print #1, Space(2) & String(133, "-")

    Else

        Print #1, Space(2) & "Code" + Space(3) + "Description"
        Print #1, Space(2) & "Date" + Space(5) & "Voc-No" + Space(2) + "Account Head" & Space(24) & "Narration" & Space(33) + "Chq/ref-No" & Space(2) + "    Receipts" + Space(2) + "    Payments"
        Print #1, Space(2) & String(133, "-")

    End If

End If

    cont = cont + 3


Err1:


Exit Sub
prnhead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure prnhead of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub recprin()

   ' Call ReceiptsReport1(DataCombo2.Text, DataCombo3.Text)
On Error GoTo recprin_Error

    Exit Sub
    Dim trs As Recordset
    Dim rs1 As Recordset
    Dim cn As Connection

    Set dv1 = New DataEnvironment1
    dv1.Connection1.ConnectionString = connectstring

    Set cn = New Connection

    If cn.State = 1 Then
        cn.Close
    End If

    Command1.Enabled = True
    cn.Provider = "MSDATASHAPE"
    cn.Open connectstring

    Set cm1 = New Command
    cm1.ActiveConnection = cn

    If CDate(DataCombo2.Text) > CDate(DataCombo3.Text) Then
        MsgBox ("FROM  DATE SHOULD NOT BE GREATER THAN TO DATE")
        Screen.MousePointer = 0
        MaskEdBox2.SetFocus
    Else

        Set l1 = reptprint.Sections(3).Controls.Item("label10")
        Set LB1 = reptprint.Sections(3).Controls("lblreal")
        Set LB2 = reptprint.Sections(3).Controls.Item("label10")
        Set LB3 = reptprint.Sections(3).Controls.Item("label29")
        LB3.Caption = "for " & divname
        l1.Caption = pdate
        reptprint.Title = divname

        Set trs = New Recordset
        trs.Open "select divname,isnull(add1,''),isnull(add2,''),isnull(city,''),isnull(pincode,''),isnull(phone1,''),isnull(phone2,'') from pp_divmas WHERE divcode = '" & Divcode & "'", cn

        Set tl1 = reptprint.Sections(3).Controls("title1")
        tl1.Caption = trs(0)
        Set tl2 = reptprint.Sections(3).Controls("add1")
        tl2.Caption = IIf(trs(1) <> "", trs(1) & ",", "") & IIf(trs(2) <> "", trs(2) & ",", "") & IIf(trs(3) <> "", trs(3) & IIf(trs(4) <> "", "-", ""), "") & trs(4)
        Set tl3 = reptprint.Sections(3).Controls("pho")

        If trs(5) <> "" Or trs(6) <> "" Then
            tl3.Caption = "Phone: " & IIf(trs(5) <> "", trs(5) & IIf(trs(6) <> "", ",", ""), "") & trs(6)
        Else
            tl3.Caption = " "
        End If

        Set cm1 = New Command
        cm1.ActiveConnection = cn
        cm1.CommandText = "create table numw(vocsno numeric(2),vocno NUMERIC(15),vocdt datetime,amt numeric(15,2),wamt varchar(150),tc numeric(2))"
        cm1.Execute

        Set rs1 = New Recordset
        rs1.Open "select distinct r.vocsno,b.vocno,b.vocdt,(isnull(r.credit,0)+isnull(r.debit,0)) fnm,b.tc  from fa_recline r ,fa_slmas s ,fa_rechead b where b.vocdt BETWEEN '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' AND '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and r.accode=s.slcode and b.divcode=r.divcode and b.tc=r.tc and b.vocno=r.vocno and b.vocdt=r.vocdt", cn

        If rs1.RecordCount <> 0 Then

            rs1.MoveFirst
            Do While Not (rs1.EOF)
                wor = Num_To_Word(rs1(3))
                cn.Execute ("insert into numw(vocsno,vocno,vocdt,amt,wamt,tc) values (" & rs1(0) & "," & rs1(1) & ",'" & Format(rs1(2), "yyyy-mm-dd") & "'," & rs1(3) & ",'" & wor & "'," & rs1(4) & ")")
                rs1.MoveNext
            Loop
        End If

 End If
 Set reptprint.DataSource = dv1
 reptprint.Show
 Screen.MousePointer = 0

Exit Sub
recprin_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure recprin of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub purjourn()

    Dim trs As Recordset
    Dim rs1 As Recordset
    Dim cn As Connection

On Error GoTo purjourn_Error

    Set dv1 = New DataEnvironment1
    dv1.Connection1.ConnectionString = connectstring

    Set cn = New Connection

    If cn.State = 1 Then
        cn.Close
    End If

    Command1.Enabled = True
    cn.Provider = "MSDATASHAPE"
    cn.Open connectstring

    Set cm1 = New Command
    cm1.ActiveConnection = cn

    Set trs = New Recordset
    'trs.Open "select divname,add1,',' + add2,',' + city,'-' + pincode from pp_divmas", cn
    trs.Open "select divname,isnull(add1,''),isnull(add2,''),isnull(city,''), isnull(pincode,'') from pp_divmas WHERE divcode = '" & Divcode & "'", cn
    Set tl1 = Pjnlvouc.Sections(3).Controls("title1")
    tl1.Caption = trs(0)

    Set tl2 = Pjnlvouc.Sections(3).Controls("add1")
    'tl2.Caption = trs(1) & trs(2) & trs(3) & trs(4)
    tl2.Caption = IIf(trs(1) <> "", trs(1) & ",", "") & IIf(trs(2) <> "", trs(2) & ",", "") & IIf(trs(3) <> "", trs(3) & IIf(trs(4) <> "", "-", ""), "") & trs(4)

    If dv1.rsCommand1.State = adStateOpen Then
        dv1.rsCommand1.Close
    End If

    test1 = Trim(Mid(Combo21.Text, 1, CInt(InStr(1, Combo21.Text, "-")) - 1))
    test2 = Trim(Mid(Combo31.Text, 1, CInt(InStr(1, Combo21.Text, "-")) - 1))

    Set cm1 = New Command
    cm1.ActiveConnection = cn

    Set rs1 = New Recordset

    cm1.CommandText = "create table numw(pjvno NUMERIC(15),pjvdt datetime,amt numeric(15,2),wamt varchar(150))"
    cm1.Execute

    rs1.Open "SELECT distinct h.pjvno,h.pjvdt,h.billamt from fa_purhd h where H.divcode = '" & Divcode & "' and h.tc=cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)  and h.pjvno between " & test1 & " and " & test2 & "  AND H.pjvdt LIKE '" & qrdt & "' order by h.pjvno ", cn
    If rs1.RecordCount > 0 Then
        rs1.MoveFirst
    End If
    Do While Not (rs1.EOF)
       wor = Num_To_Word(rs1(2))
       cn.Execute ("insert into numw(pjvno,pjvdt,amt,wamt) values (" & rs1(0) & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & rs1(2) & ",'" & wor & "')")
       rs1.MoveNext
    Loop
   'sridhar changed this for incorprating billno,billdt,and duedt
'    dv1.rsCommand1.Open "SHAPE {SELECT distinct h.pjvno,h.pjvdt,wamt from fa_purdt r,fa_purhd h,numw n" & _
'        " where h.pjvno = n.pjvno and h.pjvdt = n.pjvdt and H.divcode = '" & divcode & "' and h.tc=cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)  and h.pjvno between " & test1 & " and " & test2 & " and h.tc=r.tc and h.pjvno=r.pjvno and h.pjvdt=r.pjvdt AND H.pjvdt LIKE '" & qrdt & "' order by h.pjvno }" & _
'        " AS Command1 APPEND ({select r.tc,r.pjvno,r.pjvdt,r.slcode,r.slname,r.credit,r.debit,r.narration1  from ((SELECT tc,pjvno,pjvdt,a.slcode,slname,billamt credit,debit = null,narration1 = null from fa_purhd a,fa_slmas b where b.slcode = a.slcode and a.divcode = '" & divcode & "' and a.tc=cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)  and a.pjvno between " & test1 & " and " & test2 & ") " & _
'        " union all (select tc,pjvno,pjvdt,a.glcode,glhead,credit = null,amount debit,narration1  from fa_purdt a,fa_glmas b where b.glcode = a.glcode and a.divcode = '" & divcode & "' and a.tc=cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)  and a.pjvno between " & test1 & " and " & test2 & ")) r,fa_purhd h  where H.divcode = '" & divcode & "' and h.tc=cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)  and h.pjvno between " & test1 & " and " & test2 & " and h.tc=r.tc and h.pjvno=r.pjvno and h.pjvdt=r.pjvdt AND H.pjvdt LIKE '" & qrdt & "'}  AS Command4 RELATE 'PJVNO' TO 'PJVNO','PJVDT' TO 'PJVDT') AS Command4 ", cn
        dv1.rsCommand1.Open "SHAPE {SELECT distinct h.pjvno,h.pjvdt,wamt,h.billno,h.billdt,h.duedt from fa_purdt r,fa_purhd h,numw n" & _
        " where h.pjvno = n.pjvno and h.pjvdt = n.pjvdt and H.divcode = '" & Divcode & "' and h.tc=cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)  and h.pjvno between " & test1 & " and " & test2 & " and h.tc=r.tc and h.pjvno=r.pjvno and h.pjvdt=r.pjvdt AND H.pjvdt LIKE '" & qrdt & "' order by h.pjvno }" & _
        " AS Command1 APPEND ({select r.tc,r.pjvno,r.pjvdt,r.slcode,r.slname,r.credit,r.debit,r.narration1  from ((SELECT tc,pjvno,pjvdt,a.slcode,slname,billamt credit,debit = null,narration1 = null from fa_purhd a,fa_slmas b where b.slcode = a.slcode and a.divcode = '" & Divcode & "' and a.tc=cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)  and a.pjvno between " & test1 & " and " & test2 & ") " & _
        " union all (select tc,pjvno,pjvdt,a.glcode,glhead,credit = null,amount debit,narration1  from fa_purdt a,fa_glmas b where b.glcode = a.glcode and a.divcode = '" & Divcode & "' and a.tc=cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)  and a.pjvno between " & test1 & " and " & test2 & ")) r,fa_purhd h  where H.divcode = '" & Divcode & "' and h.tc=cast(" & Mid(Combo11.Text, 1, 2) & " as numeric)  and h.pjvno between " & test1 & " and " & test2 & " and h.tc=r.tc and h.pjvno=r.pjvno and h.pjvdt=r.pjvdt AND H.pjvdt LIKE '" & qrdt & "'}  AS Command4 RELATE 'PJVNO' TO 'PJVNO','PJVDT' TO 'PJVDT') AS Command4 ", cn



    cm1.CommandText = "drop table numw"
    cm1.Execute

    If dv1.rsCommand1.RecordCount = 0 Then
        stbar.Panels(2).Text = "No transactions for the period selected"
        Command1.Enabled = False
        Screen.MousePointer = 0
        Exit Sub
    Else
        stbar.Panels(2).Text = ""
        Command1.Enabled = True
    End If

    Set Pjnlvouc.DataSource = dv1

    Pjnlvouc.Show
    Screen.MousePointer = 0

Exit Sub
purjourn_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure purjourn of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub BRSCONS()
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim rs0 As Recordset
Dim accode As String
Dim achead As String
Dim slcity As String
Dim pagein As Integer
Dim chqtot As Double, PayAmt As Double, recamt As Double
Dim clamt As Double, balamt1 As Double, balamt2 As Double
Dim balamt3 As Double, balamt4 As Double

On Error GoTo BRSCONS_Error

pagein = 0
chqtot = 0
PayAmt = 0
recamt = 0
clamt = 0
balamt1 = 0
balamt2 = 0
balamt3 = 0
balamt4 = 0


Dim BTc1, BTc2 As String
BTc1 = Mid(Combo1.Text, 1, (InStr(Combo1.Text, "-") - 1))

Set REPVIEW = New Report.ReportView
fileno = FreeFile()
'Open "c:\CBRS.txt" For Output As #fileno
Open KALFOLDERDATA & "\CBRS.TXT" For Output As #fileno

Call BRSHead

Set Rs = New Recordset
Set rs1 = New Recordset

Rs.Open "select a.tc,a.tchead from fa_tcmas a,fa_param b where a.tc = " & val(BTc1) & "  order by a.tc", cn, adOpenStatic, adLockReadOnly

If Rs.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Close #fileno
    Kill ("c:\CBRS.txt")
    Screen.MousePointer = 0
    Exit Sub
End If

Rs.MoveFirst

Set rs1 = New Recordset
rs1.Open " select SUM(isnull(a.credit,0)-isnull(a.debit,0)) chqamt from" & _
        " fa_recline a, fa_rechead b " & _
        " where a.tc = " & Rs("TC") & " and a.divcode = b.divcode and a.tc = b.tc and" & _
        " a.vocno = b.vocno and a.vocdt = b.vocdt and b.chqno is not null and " & _
        " (b.colldate is null  or b.colldate > '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "') and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' and A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and (b.chqflag = 'L' or b.chqflag = 'O') ", cn, adOpenStatic, adLockReadOnly

Set rs2 = New Recordset
rs2.Open " select  sum(isnull(a.debit,0)-isnull(a.credit,0)) chqamt from fa_payline a, fa_payhead b  " & _
        " where a.tc = '" & Rs("TC") & "' and a.divcode = b.divcode and a.tc = b.tc and " & _
        " a.vocno = b.vocno and a.vocdt = b.vocdt and b.chqno is not null and " & _
        " (b.colldate is null  or b.colldate > '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "') and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' and A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and (b.chqflag = 'L' or b.chqflag = 'O')", cn, adOpenStatic, adLockBatchOptimistic

Set rs3 = New Recordset
rs3.Open " SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0) AS totrec, ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay," & _
        "(ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ " & _
        " ISNULL(H.crctot,0)) AS clbal FROM " & _
        " ( SELECT SUM(op.openbal) openbal FROM  (SELECT 0 AS openbal UNION " & _
        " SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
        " WHERE yearmonth =  '" & Format(yfdate, "yyyy") & "00" & "'   AND " & _
        " glcode = (SELECT glcode FROM fa_tcmas " & _
        " WHERE tc=" & Rs("tc") & ")) op ) A, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot " & _
        " FROM FA_RECHEAD a,FA_RECLINE B WHERE B.TC=" & Rs("tc") & " AND " & _
        " B.VOCDT < '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt AND a.VOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND a.VOCDT < '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "')B, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot " & _
        " FROM FA_PAYHEAD A,FA_PAYLINE B  WHERE B.TC=" & Rs("tc") & " AND " & _
        " B.VOCDT < '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt AND a.VOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND a.VOCDT < '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "')C,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot " & _
        " FROM FA_RECHEAD a,FA_RECLINE B WHERE B.TC <> " & Rs("tc") & " AND B.VOCDT < '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND " & _
        " B.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = " & Rs("tc") & ") AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt AND a.VOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND a.VOCDT < '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "')D, (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot " & _
        " From FA_PAYHEAD A,FA_PAYLINE B WHERE B.TC <> " & Rs("tc") & " AND B.VOCDT < '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND " & _
        " B.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = " & Rs("tc") & ") AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt AND a.VOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND a.VOCDT < '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "')E,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot From FA_RECHEAD a,FA_RECLINE B" & _
        " WHERE B.TC=" & Rs("tc") & " AND B.VOCDT = '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "'  AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt) F,(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot " & _
        " FROM FA_PAYHEAD A,FA_PAYLINE B WHERE B.TC=" & Rs("tc") & " AND B.VOCDT = '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt )G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot  From FA_RECHEAD a,FA_RECLINE B " & _
        " WHERE B.TC <>" & Rs("tc") & "  AND B.VOCDT = '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND  B.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc =" & Rs("tc") & ")  AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt )H, " & _
        " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYHEAD A,FA_PAYLINE B WHERE B.TC <> " & Rs("tc") & "   AND B.VOCDT = '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' AND B.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = '" & Rs("tc") & "') AND A.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt) I ", cn, adOpenStatic, adLockBatchOptimistic

If rs3.RecordCount > 0 Then
    If IsNull(rs3("clbal")) = False Then
        clamt = CDbl(rs3("clbal"))
        balamt1 = clamt
        balamt2 = clamt
    End If
End If

If rs2.RecordCount > 0 Then
    If IsNull(rs2("chqamt")) = False Then
        balamt1 = balamt1 + CDbl(rs2("chqamt"))
        balamt2 = balamt2 + CDbl(rs2("chqamt"))
    End If
End If

If rs1.RecordCount > 0 Then
    If IsNull(rs1("chqamt")) = False Then
        balamt2 = balamt2 - CDbl(rs1("chqamt"))
    End If
End If

If rs3.RecordCount > 0 Then
    If IsNull(rs3("clbal")) = False Then
        clamt = IIf(CStr(INF(Trim(rs3("clbal")), 2)) = ".00", 0, CStr(INF(Trim(rs3("clbal")), 2)))
    Else
        clamt = 0
    End If
End If

If rs2.RecordCount > 0 Then
    If IsNull(rs2("chqamt")) = False Then
        PayAmt = IIf(CStr(INF(Trim(rs2("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs2("chqamt")), 2)))
    Else
        PayAmt = 0
    End If
End If

If rs1.RecordCount > 0 Then
    If IsNull(rs1("chqamt")) = False Then
        recamt = IIf(IIf(CStr(INF(Trim(rs1("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs1("chqamt")), 2))) = "", 0, IIf(CStr(INF(Trim(rs1("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs1("chqamt")), 2))))
    Else
        recamt = 0
    End If
End If


Call BRSNextPage

Print #fileno, Trim(CStr(Rs("TC"))) & " - " & Trim(CStr(Rs("TcHEAD")))
cont = cont + 1
Print #fileno, "-----------------------------------------------------------------------------------------"
cont = cont + 1
Print #fileno, "            Description                                             Amount"
cont = cont + 1
Print #fileno, "-----------------------------------------------------------------------------------------"
cont = cont + 1
Print #fileno, ""
cont = cont + 1

If clamt >= 0 Then
    Print #fileno, "            BALANCE AS PER OUR BANK BOOK  ==>" + Space(10) + Space(19 - Len(IIf(CStr(INF(Trim(clamt), 2)) = ".00", "0.00", CStr(INF(Trim(clamt), 2))))) + IIf(CStr(INF(Trim(clamt), 2)) = ".00", "0.00", CStr(INF(Trim(clamt), 2)))
Else
    Print #fileno, "            BALANCE AS PER OUR BANK BOOK  ==>" + Space(10) + Space(19 - Len(IIf(CStr(INF(Trim(Abs(clamt)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(clamt)), 2))))) + IIf(CStr(INF(Trim(Abs(clamt)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(clamt)), 2))) & " CR"
End If

cont = cont + 1
Print #fileno, ""
cont = cont + 1

If PayAmt <> 0 Then
    Print #fileno, "            ADD: CHEQUES ISSUED BUT NOT YET CLEARED" + Space(4) + Space(19 - Len(IIf(CStr(INF(Trim(PayAmt), 2)) = ".00", "", CStr(INF(Trim(PayAmt), 2))))) + IIf(CStr(INF(Trim(PayAmt), 2)) = ".00", "", CStr(INF(Trim(PayAmt), 2)))
    cont = cont + 1
End If

Print #fileno, "                                                          ----------------"

cont = cont + 1

If recamt <> 0 And PayAmt <> 0 Then
    If balamt1 >= 0 Then
        Print #fileno, Space(55) + Space(19 - Len(Trim(IIf(CStr(INF(Trim(balamt1), 2)) = ".00", "0.00", CStr(INF(Trim(balamt1), 2)))))) + IIf(CStr(INF(Trim(balamt1), 2)) = ".00", "0.00", CStr(INF(Trim(balamt1), 2)))
    Else
        Print #fileno, Space(55) + Space(19 - Len(Trim(IIf(CStr(INF(Trim(Abs(balamt1)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(balamt1)), 2))) & " CR"))) + IIf(CStr(INF(Trim(Abs(balamt1)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(balamt1)), 2))) & " CR"
    End If
    cont = cont + 1
End If

If recamt <> 0 Then
    Print #fileno, "            LESS: CHEQUES DEPOSITED BUT NOT YET"
    cont = cont + 1
    Print #fileno, "                  REALISED" + Space(29) + Space(19 - Len(IIf(CStr(INF(Trim(recamt), 2)) = ".00", "", CStr(INF(Trim(recamt), 2))))) + IIf(CStr(INF(Trim(recamt), 2)) = ".00", "", CStr(INF(Trim(recamt), 2)))
    cont = cont + 1
    Print #fileno, "                                                          ----------------"
    cont = cont + 1
End If

If Not (IsNull(balamt2) = True Or balamt2 = 0) Then
    If balamt2 >= 0 Then
        Print #fileno, Space(55) + Space(19 - Len(IIf(CStr(INF(Trim(balamt2), 2)) = ".00", "0.00", CStr(INF(Trim(balamt2), 2))))) + IIf(CStr(INF(Trim(balamt2), 2)) = ".00", "0.00", CStr(INF(Trim(balamt2), 2)))
    Else
        Print #fileno, Space(55) + Space(19 - Len(IIf(CStr(INF(Trim(Abs(balamt2)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(balamt2)), 2))))) + IIf(CStr(INF(Trim(Abs(balamt2)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(balamt2)), 2))) & " CR"
    End If
    cont = cont + 1
End If

Set rs4 = New Recordset
rs4.Open "Select isnull(sum(Credit),0) from fa_bktrn where tc=" & BTc1 & " and trndt <= '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "' and (isnull(Accounted,'N') <> 'Y' or isnull(Accounted,'N') <> 'y')   ", cn

Set rs5 = New Recordset
rs5.Open "Select isnull(sum(debit),0)  from fa_bktrn where tc=" & BTc1 & " and trndt <= '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "' and (isnull(Accounted,'N') <> 'Y' or isnull(Accounted,'N') <> 'y')   ", cn

balamt3 = IIf(IsNull(balamt2), 0, balamt2) + IIf(IsNull(rs4(0)), 0, rs4(0))
balamt4 = IIf(IsNull(balamt3), 0, balamt3) - IIf(IsNull(rs5(0)), 0, rs5(0))

If rs4(0) <> 0 Then
    Print #fileno, "             ADD: INTEREST ETC. CREDITED BY BANK"
    cont = cont + 1
    Print #fileno, "                  BUT NOT ACCOUNTED BY US" + Space(18) + Space(15 - Len(IIf(CStr(INF(Trim(rs4(0)), 2)) = ".00", "0.00", CStr(INF(Trim(rs4(0)), 2))))) + IIf(CStr(INF(Trim(rs4(0)), 2)) = ".00", "0.00", CStr(INF(Trim(rs4(0)), 2)))
    cont = cont + 1
    Print #fileno, "                                                          ----------------"
    cont = cont + 1

    If balamt3 >= 0 Then
        Print #fileno, Space(55) + Space(19 - Len(Trim(IIf(CStr(INF(Trim(balamt3), 2)) = ".00", "0.00", CStr(INF(Trim(balamt3), 2)))))) + IIf(CStr(INF(Trim(balamt3), 2)) = ".00", "0.00", CStr(INF(Trim(balamt3), 2)))
    Else
        Print #fileno, Space(55) + Space(19 - Len(Trim(IIf(CStr(INF(Trim(Abs(balamt3)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(balamt3)), 2))) & " CR"))) + IIf(CStr(INF(Trim(Abs(balamt3)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(balamt3)), 2))) & " CR"
    End If

    cont = cont + 1
End If

If rs5(0) <> 0 Then
    Print #fileno, "            LESS: BANK CHARGES, INTEREST ETC. DEBITED"
    cont = cont + 1
    Print #fileno, "                  BY BANK BUT NOT ACCOUNTED BY US" + Space(10) + Space(15 - Len(IIf(CStr(INF(Trim(rs5(0)), 2)) = ".00", "0.00", CStr(INF(Trim(rs5(0)), 2))))) + IIf(CStr(INF(Trim(rs5(0)), 2)) = ".00", "0.00", CStr(INF(Trim(rs5(0)), 2)))
    cont = cont + 1
    Print #fileno, "                                                          ----------------"
    cont = cont + 1
End If

If balamt4 >= 0 Then
    Print #fileno, "            BALANCE AS PER BANK" + Space(24) + Space(19 - Len(IIf(CStr(INF(Trim(balamt4), 2)) = ".00", "0.00", CStr(INF(Trim(balamt4), 2))))) + IIf(CStr(INF(Trim(balamt4), 2)) = ".00", "0.00", CStr(INF(Trim(balamt4), 2)))
Else
    Print #fileno, "            BALANCE AS PER BANK" + Space(24) + Space(19 - Len(IIf(CStr(INF(Trim(Abs(balamt4)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(balamt4)), 2))))) + IIf(CStr(INF(Trim(Abs(balamt4)), 2)) = ".00", "0.00", CStr(INF(Trim(Abs(balamt4)), 2))) & " CR"
End If

cont = cont + 1

Print #fileno, "                                                          ----------------"
cont = cont + 1

Print #fileno, ""
cont = cont + 1

Print #fileno, "-----------------------------------------------------------------------------------------"
cont = cont + 1

Print #fileno, ""
cont = cont + 1

Print #fileno, ""
cont = cont + 1

Call BRSNextPage

'======================== BREAKUP PRINTING

chqtot = 0

Set rs2 = New Recordset
'RS2.Open " select   a.accode, a.debit chqamt, c.slname,c.city, b.chqno, b.chqdt, null as bank, null as branch from fa_payline a, fa_payhead b, fa_slmas c  " & _
        " where a.tc = '" & rs("TC") & "' and a.divcode = b.divcode and a.tc = b.tc and " & _
        " a.vocno = b.vocno and a.vocdt = b.vocdt and a.accode = c.slcode and " & _
        " b.colldate is null and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' and A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and (b.chqflag = 'L' or b.chqflag = 'O') AND A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockBatchOptimistic

rs2.Open "select b.divcode,b.vocno, b.vocdt, b.chqno, b.chqdt, sum(isnull(a.debit,0)-isnull(a.credit,0)) chqamt, count(*) totrecs from fa_payline a, fa_payhead b " & _
    "where a.tc = " & Rs("TC") & " and a.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt and " & _
    " (b.colldate is null or b.colldate > '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "') and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "'  and b.chqno is not null and " & _
    "(b.chqflag = 'L' or b.chqflag = 'O') AND A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' " & _
    "group by b.divcode,b.vocno, b.vocdt, b.chqno, b.chqdt", cn, adOpenStatic, adLockReadOnly

If rs2.RecordCount > 0 Then

    rs2.MoveFirst

    Call BRSNextPage

    Print #fileno, "CHEQUES ISSUED BUT NOT YET CLEARED"
    cont = cont + 1
    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1
    Print #fileno, "CHEQUE NO.    CHEQ. DATE  PARTY NAME                                       CHEQUE AMOUNT"
    cont = cont + 1
    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Do While Not rs2.EOF

        achead = Space(27)
        accode = Space(6)
        slcity = Space(11)

        Set rs0 = New Recordset

        If rs2("TOTRECS") = 1 Then
            rs0.Open "SELECT accode FROM fa_payline WHERE divcode = '" & rs2("divcode") & "' and tc = " & Rs("TC") & " and vocno = " & rs2("VOCNO") & " and vocdt = '" & Format(rs2("VOCDT"), "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockReadOnly
            If rs0.RecordCount > 0 Then
                accode = rs0(0)
                If IsNumeric(Mid(rs0(0), 1, 1)) Then
                    rs0.Close
                    rs0.Open "SELECT isnull(glhead,'* Unknown *') FROM fa_glmas WHERE glcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 40)
                    End If
                Else
                    rs0.Close
                    rs0.Open "SELECT isnull(slname,'* Unknown *'),isnull(city,'') FROM fa_slmas WHERE slcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0) + IIf(rs0(1) = "", "", "," + rs0(1)), 1, 40)
                    End If
                End If
            End If
            rs0.Close
        Else
            rs0.Open "SELECT accode FROM fa_payline WHERE divcode = '" & rs2("divcode") & "' and tc = " & Rs("TC") & " and vocno = " & rs2("VOCNO") & " and vocdt = '" & Format(rs2("vocdt"), "YYYY-MM-DD") & "' and vocsno = 1", cn, adOpenStatic, adLockReadOnly
            If rs0.RecordCount > 0 Then
                accode = rs0(0)
                If IsNumeric(Mid(rs0(0), 1, 1)) Then
                    rs0.Close
                    rs0.Open "SELECT isnull(glhead,'* Unknown *') FROM fa_glmas WHERE glcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 40)
                    End If
                Else
                    rs0.Close
                    rs0.Open "SELECT isnull(slname,'* Unknown *'),isnull(city,'') FROM fa_slmas WHERE slcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0) + IIf(rs0(1) = "", "", "," + rs0(1)), 1, 40)
                    End If
                End If
            End If
            rs0.Close
        End If
        If Not IsNull(rs2("chqdt")) Then
            Print #fileno, CStr(Trim(rs2("chqno"))) + Space(14 - Len(CStr(Trim(rs2("chqno"))))) + CStr(rs2("chqdt")) + Space(2) + CStr(achead) + Space(42 - Len(CStr(achead))) + Space(5) + Space(16 - Len(IIf(CStr(INF(Trim(rs2("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs2("chqamt")), 2))))) + IIf(CStr(INF(Trim(rs2("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs2("chqamt")), 2)))
        Else
            Print #fileno, CStr(Trim(rs2("chqno"))) + Space(14 - Len(CStr(Trim(rs2("chqno"))))) + Space(10) + Space(2) + CStr(achead) + Space(42 - Len(CStr(achead))) + Space(5) + Space(16 - Len(IIf(CStr(INF(Trim(rs2("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs2("chqamt")), 2))))) + IIf(CStr(INF(Trim(rs2("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs2("chqamt")), 2)))
        End If

        cont = cont + 1
        Call BRSNextPage
        chqtot = CDbl(rs2("chqamt")) + CDbl(chqtot)
        rs2.MoveNext
    Loop

    Call BRSNextPage

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    Print #fileno, Space(70) + Space(19 - Len(IIf(CStr(INF(Trim(chqtot), 2)) = ".00", 0, CStr(INF(Trim(chqtot), 2))))) + IIf(CStr(INF(Trim(chqtot), 2)) = ".00", 0, CStr(INF(Trim(chqtot), 2)))
    cont = cont + 1

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Print #fileno, ""
    cont = cont + 1

    Print #fileno, ""
    cont = cont + 1

    Call BRSNextPage

End If

chqtot = 0

Set rs3 = New Recordset
'RS3.Open " select a.accode, a.credit chqamt, SUBSTRING(c.slname,1,26) SLNAME, b.chqno, b.chqdt, b.bank,b.branch from" & _
            " fa_recline a, fa_rechead b, fa_slmas c " & _
            " where a.tc = '" & rs("TC") & "' and a.divcode = b.divcode and a.tc = b.tc and" & _
            " a.vocno = b.vocno and a.vocdt = b.vocdt and a.accode = c.slcode and " & _
            " b.colldate is null and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' and (b.chqflag = 'L' or b.chqflag = 'O') AND A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockBatchOptimistic

rs3.Open "select b.divcode,b.vocno, b.vocdt, b.chqno, b.chqdt, b.bank, b.branch, sum(isnull(a.credit,0)-isnull(a.debit,0)) chqamt, count(*) totrecs from fa_recline a, fa_rechead b " & _
    "where a.tc = " & Rs("TC") & " and a.divcode = b.divcode and a.tc = b.tc and a.vocno = b.vocno and a.vocdt = b.vocdt  and b.chqno is not null and " & _
    " (b.colldate is null or b.colldate > '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "') and a.vocdt <= '" & Format(MaskEdBox4.Text, "YYYY-MM-DD") & "' and " & _
    "(b.chqflag = 'L' or b.chqflag = 'O') AND A.VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' " & _
    "group by b.divcode,b.vocno, b.vocdt, b.chqno, b.chqdt,b.bank,b.branch", cn, adOpenStatic, adLockReadOnly

If rs3.RecordCount > 0 Then

    rs3.MoveFirst

    Call BRSNextPage

    Print #fileno, "CHEQUES DEPOSITED BUT NOT YET REALISED"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Print #fileno, "CHEQUE NO.    CHEQ. DATE  PARTY NAME                                        CHEQUE AMOUNT"
    cont = cont + 1
    Print #fileno, "                          NAME OF THE BANK AND BRANCH"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1


    Do While Not rs3.EOF

        achead = Space(27)
        accode = Space(6)

        Set rs0 = New Recordset

        If rs3("TOTRECS") = 1 Then
            rs0.Open "SELECT accode FROM fa_recline WHERE divcode = '" & rs3("divcode") & "' and tc = " & Rs("TC") & " and vocno = " & rs3("VOCNO") & " and vocdt = '" & Format(rs3("VOCDT"), "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockReadOnly
            If rs0.RecordCount > 0 Then
                accode = rs0(0)
                If IsNumeric(Mid(rs0(0), 1, 1)) Then
                    rs0.Close
                    rs0.Open "SELECT isnull(glhead,'* Unknown *') FROM fa_glmas WHERE glcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 35)
                    End If
                Else
                    rs0.Close
                    rs0.Open "SELECT isnull(slname,'* Unknown *') FROM fa_slmas WHERE slcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 35)
                    End If
                End If
            End If
            rs0.Close
        Else
            rs0.Open "SELECT accode FROM fa_recline WHERE divcode = '" & rs3("divcode") & "' and tc = " & Rs("TC") & " and vocno = " & rs3("VOCNO") & " and vocdt = '" & Format(rs3("vocdt"), "YYYY-MM-DD") & "' and vocsno = 1", cn, adOpenStatic, adLockReadOnly
            If rs0.RecordCount > 0 Then
                accode = rs0(0)
                If IsNumeric(Mid(rs0(0), 1, 1)) Then
                    rs0.Close
                    rs0.Open "SELECT isnull(glhead,'* Unknown *') FROM fa_glmas WHERE glcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 35)
                    End If
                Else
                    rs0.Close
                    rs0.Open "SELECT isnull(slname,'* Unknown *') FROM fa_slmas WHERE slcode = '" & accode & "'", cn, adOpenStatic, adLockReadOnly
                    If rs0.RecordCount > 0 Then
                        achead = Mid(rs0(0), 1, 35)
                    End If
                End If
            End If
            rs0.Close
        End If

        Print #fileno, CStr(Trim(rs3("chqno"))) + Space(14 - Len(CStr(Trim(rs3("chqno"))))) + CStr(rs3("chqdt")) + Space(2) + achead + Space(37 - Len(achead)) + Space(26 - Len(IIf(CStr(INF(Trim(rs3("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs3("chqamt")), 2))))) + IIf(CStr(INF(Trim(rs3("chqamt")), 2)) = ".00", 0, CStr(INF(Trim(rs3("chqamt")), 2)))
        If Trim(rs3("BANK")) <> "" Or Trim(rs3("BRANCH")) <> "" Then
            Print #fileno, Space(26) + Mid$(CStr(Trim(rs3("bank"))) + IIf((rs3("BRANCH") = ""), "", ",") + CStr(Trim(rs3("branch"))), 1, 46) + Space(46 - Len(Mid$(CStr(Trim(rs3("bank"))) + IIf((rs3("BRANCH") = ""), "", ",") + CStr(Trim(rs3("branch"))), 1, 46)))
        End If
        'Print #FILENO, CStr(Trim(RS3("chqno"))) + Space(14 - Len(CStr(Trim(RS3("chqno"))))) + CStr(RS3("chqdt")) + Space(2) + achead + Space(37 - Len(achead)) + Mid$(CStr(Trim(RS3("bank"))) + IIf((RS3("BRANCH") = ""), "", ",") + CStr(Trim(RS3("branch"))), 1, 10) + Space(10 - Len(Mid$(CStr(Trim(RS3("bank"))) + IIf((RS3("BRANCH") = ""), "", ",") + CStr(Trim(RS3("branch"))), 1, 10))) + Space(16 - Len(IIf(CStr(Format(Trim(RS3("chqamt")), "##,##,##,###.00")) = ".00", 0, CStr(Format(Trim(RS3("chqamt")), "##,##,##,###.00"))))) + IIf(CStr(Format(Trim(RS3("chqamt")), "##,##,##,###.00")) = ".00", 0, CStr(Format(Trim(RS3("chqamt")), "##,##,##,###.00")))
        cont = cont + 1
        Call BRSNextPage
        chqtot = CDbl(rs3("chqamt")) + CDbl(chqtot)
        rs3.MoveNext
    Loop

    If val(chqtot) <> 0 Then
        Call BRSNextPage
        Print #fileno, Space(73) + "----------------"
        cont = cont + 1
        Print #fileno, Space(70) + Space(19 - Len(IIf(CStr(INF(Trim(chqtot), 2)) = ".00", "0", CStr(INF(Trim(chqtot), 2))))) + IIf(CStr(INF(Trim(chqtot), 2)) = ".00", "0", CStr(INF(Trim(chqtot), 2)))
        cont = cont + 1
        Print #fileno, Space(73) + "----------------"
        cont = cont + 1
        Print #fileno, "-----------------------------------------------------------------------------------------"
        cont = cont + 1
        Print #fileno, ""
        cont = cont + 1
        Print #fileno, ""
        cont = cont + 1

        Call BRSNextPage

    End If

End If

chqtot = 0

Set rs2 = New Recordset
rs2.Open " select TRNDT,GLHEAD,NARRATION,credit from fa_BKTRN a, fa_GLMAS b  " & _
        " where a.glcode = b.glcode AND A.tc= " & BTc1 & " And " & _
        " trndt <= '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "' and (credit is not null or credit > 0) AND (accounted is null or accounted='N') and trndt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockBatchOptimistic

If rs2.RecordCount > 0 Then

    rs2.MoveFirst

    Call BRSNextPage

    Print #fileno, "INTEREST ETC. CREDITED BY BANK BUT NOT ACCOUNTED BY US"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Print #fileno, "  DATE       GLHEAD                                 NARRATION                      AMOUNT"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Do While Not rs2.EOF
        Print #fileno, Format(rs2(0), "dd/mm/yyyy") + Space(3) + Mid$(rs2(1), 1, 35) + Space(39 - Len(Mid$(rs2(1), 1, 35))) + Mid$(rs2(2), 1, 25) + Space(27 - Len(Mid$(rs2(2), 1, 25))) + Space(10 - Len(INF(rs2(3), 2))) + INF(rs2(3), 2)
        cont = cont + 1
        Call BRSNextPage
        chqtot = CDbl(rs2(3)) + CDbl(chqtot)
        rs2.MoveNext
    Loop

    Call BRSNextPage

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    Print #fileno, Space(74) + Space(15 - Len(IIf(CStr(INF(Trim(chqtot), 2)) = ".00", 0, CStr(INF(Trim(chqtot), 2))))) + IIf(CStr(INF(Trim(chqtot), 2)) = ".00", 0, CStr(INF(Trim(chqtot), 2)))
    cont = cont + 1

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Print #fileno, ""
    cont = cont + 1

    Print #fileno, ""
    cont = cont + 1

    Call BRSNextPage

End If

chqtot = 0

Set rs2 = New Recordset
rs2.Open " select    TRNDT,GLHEAD,ISNULL(NARRATION,''),ISNULL(debit,0) from fa_BKTRN a, fa_GLMAS b  " & _
        " where A.glcode=B.glcode and a.tc= " & BTc1 & " And " & _
        " trndt <= '" & Format(MaskEdBox4.Text, "yyyy-mm-dd") & "' and (debit is not null or debit > 0) AND (accounted is null or accounted='N') and trndt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", cn, adOpenStatic, adLockBatchOptimistic

If rs2.RecordCount > 0 Then

    rs2.MoveFirst

    Call BRSNextPage

    Print #fileno, "BANK CHARGES, INTEREST ETC. DEBITED BY BANK BUT NOT ACCOUNTED BY US"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Print #fileno, "  DATE       GLHEAD                                 NARRATION                      AMOUNT"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Do While Not rs2.EOF
        'Print #FILENO, Format(RS2(0), "dd/mm/yyyy") + Space(3) + Mid$(RS2(1), 1, 18) + Space(22 - Len(Mid$(RS2(1), 1, 18))) + Mid$(RS2(2), 1, 45) + Space(44 - Len(Mid$(RS2(2), 1, 45))) + Space(10 - Len(Format(RS2(3), "##,##,##0.00"))) + Format(RS2(3), "##,##,##0.00")
        Print #fileno, Format(rs2(0), "dd/mm/yyyy") + Space(3) + Mid$(rs2(1), 1, 35) + Space(39 - Len(Mid$(rs2(1), 1, 35))) + Mid$(rs2(2), 1, 25) + Space(27 - Len(Mid$(rs2(2), 1, 25))) + Space(10 - Len(INF(rs2(3), 2))) + INF(rs2(3), 2)
        cont = cont + 1
        Call BRSNextPage
        chqtot = CDbl(rs2(3)) + CDbl(chqtot)
        rs2.MoveNext
    Loop

    Call BRSNextPage

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    Print #fileno, Space(74) + Space(15 - Len(IIf(CStr(INF(Trim(chqtot), 2)) = ".00", 0, CStr(INF(Trim(chqtot), 2))))) + IIf(CStr(INF(Trim(chqtot), 2)) = ".00", 0, CStr(INF(Trim(chqtot), 2)))
    cont = cont + 1

    Print #fileno, Space(73) + "----------------"
    cont = cont + 1

    Print #fileno, "-----------------------------------------------------------------------------------------"
    cont = cont + 1

    Call BRSNextPage

End If

Print #fileno, ""
Print #fileno, Space(36) & " * End of Report *"
'Print #FILENO, Space(36) & "    Cyber Korp   "
Print #fileno, Chr(12)

Close #fileno

fileno = FreeFile()

'Open "c:\CBRS.bat" For Output As #fileno
'Print #fileno, "cd\"
'Print #fileno, "c:"
'Print #fileno, "cd\"
'Print #fileno, "c:\type CBRS.txt > Prn"
'Close #fileno
'REPVIEW.txtfile = "c:\CBRS.txt"
'REPVIEW.Batfile = "c:\CBRS.bat"
Call KALBATPROCESS("CBRS")

Screen.MousePointer = 0

Exit Sub
BRSCONS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BRSCONS of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub
'procedure- reports(repfrom)


Public Sub MIS_CC_GLDet()
On Error GoTo MIS_CC_GLDet_Error

Screen.MousePointer = vbHourglass
    'Call ccwiseglabs2(MaskEdBox3.Text, MaskEdBox4.Text, Combo1.Text, Combo2.Text)
    Screen.MousePointer = 0
    Exit Sub
    'CCwise GLwise Detail
    If Not IsDate(MaskEdBox3.Text) Then
      MsgBox "Enter a valid (From date) or select from the Calender option", vbInformation, head
      Screen.MousePointer = 0
      Exit Sub
    ElseIf Not IsDate(MaskEdBox4.Text) Then
      MsgBox "Enter a valid (To date) or select from the Calender option", vbInformation, head
      Screen.MousePointer = 0
      Exit Sub
    End If
'    If dv1.rsCommand8.State = 1 Then
'        dv1.rsCommand8.Close
'    End If
    Set LB4 = CCGLdet.Sections(2).Controls("list")
    Set LB5 = CCGLdet.Sections(2).Controls("TITLE1")
    Set LB1 = CCGLdet.Sections(9).Controls("DEBIT")
    Set LB2 = CCGLdet.Sections(9).Controls("CREDIT")
    LB4.Caption = "CostCentrewise - GL Transaction from " & MaskEdBox3.Text & " To " & MaskEdBox4.Text
    LB5.Caption = divname
Screen.MousePointer = 0

Exit Sub
MIS_CC_GLDet_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MIS_CC_GLDet of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub CCGlAbstract()

    'CCwise GLwise Abstract
   ' Call ccwiseglabs2(MaskEdBox3.Text, MaskEdBox4.Text, Combo1.Text, Combo2.Text)
On Error GoTo CCGlAbstract_Error

    Screen.MousePointer = 0
    Exit Sub

    If Not IsDate(MaskEdBox3.Text) Then
      MsgBox "Enter a valid (From date) or select from the Calender option", vbInformation, head
      Screen.MousePointer = 0
      Exit Sub
    ElseIf Not IsDate(MaskEdBox4.Text) Then
      MsgBox "Enter a valid (To date) or select from the Calender option", vbInformation, head
      Screen.MousePointer = 0
      Exit Sub
    End If

    Set LB4 = CSGLabs.Sections(2).Controls("list")
    Set LB5 = CSGLabs.Sections(2).Controls("TITLE1")
    Set LB1 = CSGLabs.Sections(7).Controls("DEBIT")
    Set LB2 = CSGLabs.Sections(7).Controls("CREDIT")
    LB4.Caption = "CostCentrewise - GL Abstract from " & MaskEdBox3.Text & " To " & MaskEdBox4.Text
    LB5.Caption = divname

Screen.MousePointer = 0

Exit Sub
CCGlAbstract_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CCGlAbstract of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub GLwiseCCDet()
   'GLwise CCwise Detail

On Error GoTo GLwiseCCDet_Error

    If Not IsDate(MaskEdBox3.Text) Then
      MsgBox "Enter a valid (From date) or select from the Calender option", vbInformation, head
      Screen.MousePointer = 0
      Exit Sub
    ElseIf Not IsDate(MaskEdBox4.Text) Then
      MsgBox "Enter a valid (To date) or select from the Calender option", vbInformation, head
      Screen.MousePointer = 0
      Exit Sub
    End If
    Set LB5 = GLCCdet.Sections(2).Controls("TITLE1")
    Set LB1 = GLCCdet.Sections(9).Controls("DEBIT")
    Set LB2 = GLCCdet.Sections(9).Controls("CREDIT")
    LB4.Caption = "GLwise - CostCentre Transaction from " & MaskEdBox3.Text & " To " & MaskEdBox4.Text
    LB5.Caption = divname
'    dv1.rsCommand8.Open "SHAPE {SELECT a.accode, c.glhead, sum(a.debit),sum(a.credit) FROM (SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2,ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE,'RCPT' AS trndes, 1 AS trntype FROM fa_recline " & _
''                         " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "' " & _
'                         " Union SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2,ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE,'PYMT' AS trndes, 2 AS trntype FROM fa_payline " & _
'                         " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "' " & _
'                         " Union SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2,ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE,'JRNL' AS trndes, 3 AS trntype FROM fa_recline " & _
                         " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "' " & _
                         " Union SELECT TC, pjvno AS VOCNO, pjvdt AS VOCDT, pjvsno AS VOCSNO,GLCODE AS ACCODE, NARRATION1, NARRATION2, ISNULL(AMOUNT,'') AS DEBIT,00000000.00 AS CREDIT, CCCODE, 'PURC' AS trndes, 4 AS trntype From fa_purdt " & _
                         " WHERE divcode = '" & divcode & "' AND pjvdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND pjvdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND glcode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND glcode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "') A, " & _
                         " fa_ccmas B, fa_glmas C, fa_tcmas D Where a.cccode = B.cccode And a.accode = c.GLCODE And a.TC = d.TC group by a.accode, c.glhead ORDER BY a.accode, c.glhead}  AS Command8 APPEND (( SHAPE {SELECT a.cccode,a.accode,b.cchead,sum(a.debit),sum(a.credit) FROM ( SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2,ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE, 'RCPT' AS trndes, 1 AS trntype FROM fa_recline " & _
                         " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "' " & _
                         " Union SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2,ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE,'PYMT' AS trndes, 2 AS trntype FROM fa_payline " & _
                         " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "'" & _
                         " Union SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2,ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE,'JRNL' AS trndes, 3 AS trntype FROM fa_recline " & _
                         " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "'" & _
                         " Union SELECT TC, pjvno AS VOCNO, pjvdt AS VOCDT, pjvsno AS VOCSNO,GLCODE AS ACCODE, NARRATION1, NARRATION2, ISNULL(AMOUNT,'') AS DEBIT,00000000.00 AS CREDIT, CCCODE, 'PURC' AS trndes, 4 AS trntype From fa_purdt " & _
                         " WHERE divcode = '" & divcode & "' AND pjvdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND pjvdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND glcode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND glcode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "') A, " & _
                         " fa_ccmas B, fa_glmas C, fa_tcmas D Where a.cccode = B.cccode And a.accode = c.GLCODE And a.TC = d.TC group by a.cccode,a.accode,b.cchead ORDER BY a.cccode,a.accode,b.cchead }  AS Command15 APPEND ({SELECT a.cccode, b.cchead, a.accode, c.glhead, a.trntype, a.trndes, a.tc, d.tcabbr, a.vocno, a.vocdt, a.vocsno, a.narration1, a.narration2, a.debit, a.credit From( SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2,ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE,'RCPT' AS trndes, 1 AS trntype FROM fa_recline " & _
                         " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "' " & _
                         " Union SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2, ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE,'PYMT' AS trndes, 2 AS trntype FROM fa_payline " & _
                         " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "' " & _
                         " Union SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2,ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE,'JRNL' AS trndes, 3 AS trntype FROM fa_recline " & _
                         " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "' AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "'" & _
                         " Union SELECT TC, pjvno AS VOCNO, pjvdt AS VOCDT, pjvsno AS VOCSNO,GLCODE AS ACCODE, NARRATION1, NARRATION2, ISNULL(AMOUNT,'') AS DEBIT,00000000.00 AS CREDIT, CCCODE, 'PURC' AS trndes, 4 AS trntype From fa_purdt " & _
                         " WHERE divcode = '" & divcode & "' AND pjvdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND pjvdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND glcode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND glcode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "') A," & _
                         " fa_ccmas B, fa_glmas C, fa_tcmas D Where a.cccode = B.cccode And a.accode = c.GLCODE And a.TC = d.TC ORDER BY a.cccode, a.accode, a.vocdt, a.trntype, a.tc, a.vocno, a.vocsno }  AS Command16 RELATE 'CCCODE' TO 'CCCODE','ACCODE' TO 'ACCODE','CCHEAD' TO 'CCHEAD') AS Command16) AS Command15 RELATE 'ACCODE' TO 'ACCODE') AS Command15", cn
'   If dv1.rsCommand8.RecordCount = 0 Then
'      stbar.Panels(2).Text = "No Transaction for the selected period"
'      Screen.MousePointer = 0
'    Else
'      Set rs = New Recordset
'      rs.Open " SELECT sum(a.debit),sum(a.credit) FROM (SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2,ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE,'RCPT' AS trndes, 1 AS trntype FROM fa_recline " & _
'              " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "' " & _
'              " Union SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2,ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE,'PYMT' AS trndes, 2 AS trntype FROM fa_payline " & _
'              " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "' " & _
'              " Union SELECT TC, VOCNO, VOCDT, VOCSNO, ACCODE, NARRATION1, NARRATION2,ISNULL(DEBIT,0) AS debit, ISNULL(CREDIT,0) AS credit, CCCODE,'JRNL' AS trndes, 3 AS trntype FROM fa_recline " & _
'              " WHERE divcode = '" & divcode & "' AND vocdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND vocdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND accode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND accode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "' " & _
'              " Union SELECT TC, pjvno AS VOCNO, pjvdt AS VOCDT, pjvsno AS VOCSNO,GLCODE AS ACCODE, NARRATION1, NARRATION2, ISNULL(AMOUNT,0) AS DEBIT,00000000.00 AS CREDIT, CCCODE, 'PURC' AS trndes, 4 AS trntype From fa_purdt " & _
'              " WHERE divcode = '" & divcode & "' AND pjvdt >= '" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' AND pjvdt <= '" & Format(MaskEdBox4.Text, "yyyy/mm/dd") & "'AND glcode >= '" & Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1) & "' AND glcode <= '" & Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1) & "') A, " & _
'              " fa_ccmas B, fa_glmas C, fa_tcmas D Where a.cccode = B.cccode And a.accode = c.GLCODE And a.TC = d.TC ", cn
'      LB1.Caption = Format(rs(0), "#,#0.00")
'      LB2.Caption = Format(rs(1), "#,#0.00")
'      stbar.Panels(2).Text = ""
'      Command1.Enabled = True
'      GLCCdet.Show
'      Screen.MousePointer = 0
'     End If
Screen.MousePointer = 0

Exit Sub
GLwiseCCDet_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GLwiseCCDet of Form repform45", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub GLwiseCCAbstract()
    'GLwise CCwise Abstract

On Error GoTo GLwiseCCAbstract_Error

    If Not IsDate(MaskEdBox3.Text) Then
      MsgBox "Enter a valid (From date) or select from the Calender option", vbInformation, head
      Screen.MousePointer = 0
      Exit Sub
    ElseIf Not IsDate(MaskEdBox4.Text) Then
      MsgBox "Enter a valid (To date) or select from the Calender option", vbInformation, head
      Screen.MousePointer = 0
      Exit Sub
    End If

'    If dv1.rsCommand17.State = 1 Then
'        dv1.rsCommand17.Close
'    End If
    Set LB4 = GLCCabs.Sections(2).Controls("list")
    Set LB5 = GLCCabs.Sections(2).Controls("TITLE1")
    Set LB1 = GLCCabs.Sections(7).Controls("dEBIT")
    Set LB2 = GLCCabs.Sections(7).Controls("CREDIT")
    LB4.Caption = "GLwise - CostCentre Abstract from " & MaskEdBox3.Text & " To " & MaskEdBox4.Text
    LB5.Caption = divname

    b1 = Combo1.Text
    b2 = Combo2.Text
    b3 = MaskEdBox3.Text
    b4 = MaskEdBox4.Text
 '   Call subu1(CStr(b1), CStr(b2), CStr(b3), CStr(b4))
    Exit Sub


Exit Sub
GLwiseCCAbstract_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GLwiseCCAbstract of Form repform45", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub cashprint2()

    Dim yesno As String
    Dim cOutputFilename As String
    Dim cBatchFileName As String

    'yesno = MsgBox("Do you want to Print?", vbYesNo, head)

    If Check1.value = False Then

        If loc_RepIndex = 1 Then 'Cash Book
            cOutputFilename = "C:\CASHBOOK.TXT"
        Else
            cOutputFilename = "C:\BANKBOOK.TXT"
        End If

        cBatchFileName = "C:\CASHBANK.BAT"

    Else

        If loc_RepIndex = 1 Then 'Cash Book
            cOutputFilename = "C:\CCSHBOOK.TXT"
        Else
            cOutputFilename = "C:\CBNKBOOK.TXT"
        End If

        cBatchFileName = "C:\CCSHBANK.BAT"

    End If
On Error Resume Next
Close #1
    Open cOutputFilename For Output As #1

    Dim DB As New Connection
    Set DB = New Connection
    DB.Open connectstring

    Set rs111 = New Recordset
    Set RS112 = New Recordset

    '------ DIVISION WISE

    If Check1.value = False Then

        If loc_RepIndex = 2 Then

            '---- Bank Book

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0) AS totrec, ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, " & _
                "(ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ " & _
                " ISNULL(H.crctot,0)) AS clbal FROM (SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE divcode = '" & Divcode & "' AND yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = (SELECT glcode FROM fa_tcmas WHERE tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) op) A, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc =CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I", DB, adOpenStatic, adLockBatchOptimistic


        Else

            '-----Cash Print

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0)  AS totrec, " & _
                " ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ " & _
                " ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ ISNULL(H.crctot,0) ) AS clbal FROM " & _
                " ( SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE divcode = '" & Divcode & "' AND yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = " & _
                "(SELECT glcode FROM fa_tcmas WHERE tc=CONVERT(varchar," & Mid(Combo5.Text, 1, 2) & ")))op ) A,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I ", DB, adOpenStatic, adLockReadOnly
        End If

    Else

        ' CONSOLIDATED BOOKS

        If loc_RepIndex = 2 Then

            '---- Bank Book

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0) AS totrec, ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, " & _
                "(ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ " & _
                " ISNULL(H.crctot,0)) AS clbal FROM (SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = (SELECT glcode FROM fa_tcmas WHERE tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) op) A, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc =CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I", DB, adOpenStatic, adLockBatchOptimistic


        Else

            '-----Cash Print

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0)  AS totrec, " & _
                " ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ " & _
                " ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ ISNULL(H.crctot,0) ) AS clbal FROM " & _
                " ( SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = " & _
                "(SELECT glcode FROM fa_tcmas WHERE tc=CONVERT(varchar," & Mid(Combo5.Text, 1, 2) & ")))op ) A,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I ", DB, adOpenStatic, adLockBatchOptimistic
        End If

    End If

    Dim Calc As Variant
    Dim rec As Variant
    Dim Dayopre As Variant
    Dim Dayoppa As Variant
    Dim pay As Variant
    Dim narr1a As String
    Dim narr2a As String
    Dim narr3a As String
    Dim narr4a As String
    Dim narr5a As String
    Dim narr6a As String
    Dim narr1b As String
    Dim narr2b As String
    Dim narr3b As String
    Dim narr4b As String
    Dim name1 As String
    Dim name2 As String
    Dim cqno As String
    Dim cqdt As String
    Dim vdt As String
    Dim Vno As String
    Dim acco As String
    Dim f As Boolean

    pagein = 0

    If rs111.BOF Then
        Close #1
        Screen.MousePointer = 0
        MsgBox "No records found", vbInformation, head
        Exit Sub
    End If

    opbal = rs111(0)
    opbalt = rs111(0)
    opbal1 = rs111(0)
    clobal = rs111(3)
    Trec = rs111(1)
    tpay = rs111(2)

    cont = 0

    Set RS112 = New Recordset
    RS112.Open "select tchead,glcode from fa_tcmas where tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) ", DB, adOpenStatic, adLockBatchOptimistic
    Tche = RS112(0)

    '=======================================
    ' START PRINTING
    '=======================================

    Call prnhead
    Print #1,
    cont = cont + 1
    If opbal < 0 Then
        oppay = Abs(opbal)
        opbal1 = ""
    Else
        oppay = ""
    End If

    If IsNull(RS112(1)) = True Then Glco = "      " Else Glco = RS112(1)
    Tche = RS112(0)

    ' Opening Balance Printing

    'Print #1, Space(5) & Space(16) + Glco + Space(3) & Padr(Tche, 35, " ") & Space(30) + "** Opening Balance **" + Space(2) + Space(19 - (Len(INF(CStr(opbal1), 2)))) + INF(CStr(opbal1), 2) + Space(19 - Len(INF(CStr(oppay), 2))) + INF(CStr(oppay), 2)

    'modified
    '''---- Print #1, Space(5) & Space(14) + Glco + Space(3) & Padr(Tche, 35, " ") & Space(12) + "** Opening Balance **" + Space(1) + Chr(27) + "E" + Space(19 - (Len(INF(CStr(opbal1), 2)))) + INF(CStr(opbal1), 2) + Chr(27) + "F" + Space(19 - Len(INF(CStr(oppay), 2))) + INF(CStr(oppay), 2)
    Print #1, Space(2) + Padr(Glco, 6, " ") + Space(1) & Padr(Tche, 35, " ") & Space(15) + "** Opening Balance **" + Space(25) + Space(12 - (Len(INF(CStr(opbal1), 2)))) + INF(CStr(opbal1), 2) & Space(2) + Space(16 - Len(INF(CStr(oppay), 2))) + INF(CStr(oppay), 2)
    'Print #1, Space(5) & Space(14) + Glco + Space(3) & Padr(Tche, 35, " ") & Space(12) + "** Opening Balance **" + Space(1) + Space(19 - (Len(INF(CStr(opbal1), 2)))) + INF(CStr(opbal1), 2) + Space(19 - Len(INF(CStr(oppay), 2))) + INF(CStr(oppay), 2)
    cont = cont + 1
    Print #1, Space(133)
    cont = cont + 1

    Set rs111 = New Recordset
    ' DIVISION WISE

    If Check1.value = False Then

        If loc_RepIndex <> 1 Then

            '-------Bank Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS INTEGER) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All " & _
                "SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, vocsno", DB, adOpenStatic, adLockBatchOptimistic

        Else

            '-------Cash Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, a.vocsno", DB, adOpenStatic, adLockBatchOptimistic
        End If
    Else
        'CONSOLIDATED
        If loc_RepIndex <> 1 Then

            '-------Bank Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS INTEGER) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All " & _
                "SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, vocsno", DB, adOpenStatic, adLockBatchOptimistic

        Else

            '-------Cash Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT FROM FA_PAYLINE a,fa_payhead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, a.vocsno", DB, adOpenStatic, adLockBatchOptimistic
        End If
    End If

    fla = True
    f = True

    If rs111.RecordCount > 0 Then
        rs111.MoveFirst
    End If

Do While Not rs111.EOF

    If cont >= PageLen Then
            Print #1, Space(2) & String(133, "-")
            Print #1, Chr(12)
            Call prnhead
            '--------------------------------
            If Not rs111.EOF Then
                Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                'Print #1,
                cont = cont + 1
            End If
            '----------------------------------
        End If


        If rs111.EOF = True Then f = False

        vdt = Trim(rs111(3))

        If fla = True Then VDT1 = CStr(rs111(3))

        Vno = Trim(rs111(2))
        acc = Trim(rs111(5))

        '--- Splitting Account Head

        If Len(Trim(rs111(6))) > 150 Then
            name1 = Mid$(rs111(6), 1, 78)
            name2 = "- " + Mid$(rs111(6), 79, 78)
        Else
            name1 = IIf(IsNull(rs111(6)), "", rs111(6))
        End If

        '--- Splitting Narration 1
     narration = IIf(IsNull(rs111(7)), "", rs111(7))
     startpt = IIf(InStrRev(Left(narration, 75), " ") = 0, 75, InStrRev(Left(narration, 75), " "))
     If Len(narration) > 75 Then narr1a = Mid$(narration, 1, startpt) Else narr1a = narration
     If Len(narration) > 75 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
     startpt = IIf(InStrRev(Left(narration, 75), " ") = 0, 75, InStrRev(Left(narration, 75), " "))
     If Len(narration) > 75 Then narr2a = Mid$(narration, 1, startpt) Else narr2a = narration
'     If Len(narration) > 27 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
'     startpt = IIf(InStrRev(Left(narration, 27), " ") = 0, 27, InStrRev(Left(narration, 27), " "))
'     If Len(narration) > 27 Then narr3a = Mid$(narration, 1, startpt) Else narr3a = narration
'     If Len(narration) > 27 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
'     startpt = IIf(InStrRev(Left(narration, 27), " ") = 0, 27, InStrRev(Left(narration, 27), " "))
'     If Len(narration) > 27 Then narr4a = Mid$(narration, 1, startpt) Else narr4a = narration
'     If Len(narration) > 27 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
'     startpt = IIf(InStrRev(Left(narration, 27), " ") = 0, 27, InStrRev(Left(narration, 27), " "))
'     If Len(narration) > 27 Then narr5a = Mid$(narration, 1, startpt) Else narr5a = narration
'     If Len(narration) > 27 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
'     narr6a = Padr(narration, 25, " ")
narr1a = Mid(Trim(narr1a), 1, 35)
narr2a = ""
'narr3a = Trim(narr3a)
'narr4a = Trim(narr4a)
'narr5a = Trim(narr5a)
'narr6a = Trim(narr6a)


'
'                    narr1a = Mid$(rs111(7), 1, 75)
'                    narr2a = Mid$(rs111(7), 76, 75)
'                    'narr3a = Mid$(rs111(7), 111, 55)
                    If IsNull(rs111(8)) Then
                        narr1b = 0
                    Else
                       narr1b = IIf(IsNull(rs111(8)), 0, Mid$(rs111(8), 1, 78))
                    End If

        If IsNull(rs111(9)) = True Then cqno = "" Else cqno = Trim(rs111(9))
'        iif(isnull(rs111(9) )," ",rs111(9))
      If IsNull(rs111(10)) = True Then cqdt = "" Else cqdt = rs111(10)

        rec = rs111(11)

        If IsNull(rs111(12)) = True Then pay = 0 Else pay = rs111(12)
        If IsNull(rec) = True Or rec = 0 Then rec = "" Else pay = ""

        '--- Detail Printing

        If cont >= PageLen Then
            Print #1, Space(2) & String(133, "-")
            Print #1, Chr(12)
            Call prnhead
            '--------------------------------
            If Not rs111.EOF Then
                Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                'Print #1,
                cont = cont + 1
            End If
            '----------------------------------
        End If

        '--- CS 31/07/2001

        'Print #1, VDT1 + Space(7 - (Len(CStr(vno)))) + CStr(vno) + Space(1) + CStr(acc) + Space(1) + name1 + Space(30 - (Len(name1))) + narr1a + Space(37 - (Len(narr1a)) - (Len(cqno))) + CStr(cqno) + Space(20 - (Len(Format((CStr(Trim(rec))), "##,##,##,##,#00.00")))) + Format((CStr(rec)), "##,##,##,##,#00.00") + Space(19 - Len(Format((CStr(pay)), "##,##,##,##,#00.00"))) + Format((CStr(pay)), "##,##,##,##,#00.00")
        'Print #1, Space(5) & VDT1 + Space(7 - (Len(CStr(vno)))) + CStr(vno) + Space(1) + CStr(acc) + Space(1) + name1 + Space(30 - (Len(name1))) + narr1a + Space(27 - Len(narr1a)) + CStr(cqno) + Space(12 - Len(cqno)) + Space(18 - (Len(INF((CStr(Trim(rec))), 2)))) + INF((CStr(rec)), 2) + Space(19 - Len(INF((CStr(pay)), 2))) + INF((CStr(pay)), 2)

        'source
        'Print #1, Space(5) & VDT1 + Space(7 - (Len(CStr(vno)))) + CStr(vno) + Space(8) + Padr(name1, 40, " ") & Space(37) + CStr(cqno) + Space(12 - Len(cqno)) + Space(18 - (Len(INF((CStr(Trim(rec))), 2)))) + INF((CStr(rec)), 2) + Space(19 - Len(INF((CStr(pay)), 2))) + INF((CStr(pay)), 2)
        'Modified
        If cqno = 0 Then
            cqno = ""
        Else
            cqno = cqno
        End If

        If narr1a <> "" Then
            nar = narr1a
        Else
            nar = " "
        End If
                '---------Print #1, Space(5) & Format(VDT1, "dd/mm/yy") + Space(7 - (Len(CStr(vno)))) + CStr(vno) + Space(8) + Padr(name1, 40, " ") & Space(20) + CStr(cqno) + Space(12 - Len(cqno)) + Space(16 - (Len(INF((CStr(Trim(rec))), 2)))) + INF((CStr(rec)), 2) + Space(19 - Len(INF((CStr(pay)), 2))) + INF((CStr(pay)), 2)
                Print #1, Space(2) & Format(VDT1, "dd/mm/yy") & Space(1) + Padl(Vno, 6, " ") + Space(2) + Padr(name1, 35, " ") & Space(1) & Padr(nar, 41, " ") & Space(1) + Padl(cqno, 10, " ") & Space(2) + Padl(INF((CStr(rec)), 2), 12, " ") & Space(2) + Padl(INF((CStr(pay)), 2), 12, " ")
                cont = cont + 1
        If cont >= PageLen Then
            Print #1, Space(2) & String(133, "-")
            Print #1, Chr(12)
            Call prnhead
            '--------------------------------
            If Not rs111.EOF Then
                Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                'Print #1,
                cont = cont + 1
            End If
            '----------------------------------
        End If

'''''----        If narr1a <> "" Then
''''''            Print #1, Space(30) & narr1a
''''''modified
'''''             Print #1, Space(28) & narr1a
'''''            cont = cont + 1
'''''        End If
'''''         If cont >= pagelen Then
'''''            Print #1, Space(5) & String(130, "-")
'''''            Print #1, Chr(12)
'''''            Call Prnhead
'''''        End If

        name1 = ""
        narr1a = ""
        '--- Cangrow printing for Narration and Account Head

        If Len(name2) > 1 Then
            If cont >= PageLen Then
                Print #1, Space(2) & String(133, "-")
                Print #1, Chr(12)
                Call prnhead
                '--------------------------------
                If Not rs111.EOF Then
                    Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                    'Print #1,
                    cont = cont + 1
                End If
                '----------------------------------
            End If
            If Len(narr2a) > 1 Then
'                Print #1, Space(5) & Space(25) + name2 + Space(30 - Len(name2)) + narr2a
''--------       Print #1, Space(5) & Space(25) + name2 + Space(30 - Len(name2)) + narr2a
                Print #1, Space(2) & Space(14) + Padr(name2, 35, " ") & Space(1) + Padr(narr2a, 41, " ")
            Else
'                Print #1, Space(5) & Space(25) + name2
''------         Print #1, Space(5) & Space(23) + name2
                 Print #1, Space(2) & Space(14) + Padr(name2, 35, " ")
            End If
            cont = cont + 1
            If cont >= PageLen Then
                Print #1, Space(2) & String(133, "-")
                Print #1, Chr(12)
                Call prnhead
                '--------------------------------
                If Not rs111.EOF Then
                    Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                    'Print #1,
                    cont = cont + 1
                End If
                '----------------------------------
            End If
            name2 = ""
            narr2a = ""
        Else
            If Len(narr2a) > 1 Then
                If cont >= PageLen Then
                    Print #1, Space(2) & String(133, "-")
                    Print #1, Chr(12)
                    Call prnhead
                    '--------------------------------
                    If Not rs111.EOF Then
                        Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                        'Print #1,
                        cont = cont + 1
                    End If
                    '----------------------------------
                Else
''-------       If narr2a <> "" Then Print #1, Space(30) + narr2a
                If narr2a <> "" Then Print #1, Space(2) + Space(50) + Padr(narr2a, 41, " ")
                    cont = cont + 1
                    narr2a = ""
                End If
            End If
        End If


        If Len(name3) > 1 Then
            If cont >= PageLen Then
                Print #1, Space(2) & String(133, "-")
                Print #1, Chr(12)
                Call prnhead
                '--------------------------------
                If Not rs111.EOF Then
                    Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                    'Print #1,
                    cont = cont + 1
                End If
                '----------------------------------
            End If
            If Len(narr3a) > 1 Then
''-----           Print #1, Space(5) & Space(25) + name3
''                If narr3a <> "" Then Print #1, Space(30) + narr3a
                  Print #1, Space(2) & Space(14) + Padr(name3, 35, " ")
                  If narr3a <> "" Then Print #1, Space(2) & Space(50) + Padr(narr3a, 41, " ")
            Else
''---                Print #1, Space(5) & Space(25) + name3
                     Print #1, Space(2) & Space(14) + Padr(name3, 35, " ")
            End If

            cont = cont + 1

        Else
            If Len(narr3a) > 1 Then
                If cont >= PageLen Then
                    Print #1, Space(2) & String(133, "-")
                    Print #1, Chr(12)
                    Call prnhead
                    '--------------------------------
                    If Not rs111.EOF Then
                        Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                        'Print #1,
                        cont = cont + 1
                    End If
                    '----------------------------------
                Else
''---               If narr3a <> "" Then Print #1, Space(30) + narr3a
                    If narr3a <> "" Then Print #1, Space(2) & Space(50) + Padr(narr3a, 41, " ")
                    cont = cont + 1

                End If
            End If

        End If




        If Len(narr1b) > 1 Then
            If cont >= PageLen Then
                Print #1, Space(2) & String(133, "-")
                Print #1, Chr(12)
                Call prnhead
                '--------------------------------
                If Not rs111.EOF Then
                    Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                    'Print #1,
                    cont = cont + 1
                End If
                '----------------------------------
            End If
           If narr1b <> "" Then
'' ---          Print #1, Space(5) & Space(25) + narr1b
                Print #1, Space(2) & Space(50) + Padr(narr1b, 41, " ")
                cont = cont + 1
            End If
        End If
        If cont >= PageLen Then
            Print #1, Space(2) & String(133, "-")
            Print #1, Chr(12)
            Call prnhead
            '--------------------------------
            If Not rs111.EOF Then
                Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                'Print #1,
                cont = cont + 1
            End If
            '----------------------------------
        End If

       ' Print #1,
        'cont = cont + 1
''''----------        If cont >= pagelen Then
''''            Print #1, Space(5) & String(130, "-")
''''            Print #1, Chr(12)
''''            Call Prnhead
''''        End If

        VDT1 = "        "
        fla = False

        If rec = "" Or IsNull(rec) = True Then rec = 0 Else pay = 0

        '--- Calculating Day Total and Day Closing Balance

        dRec = dRec + rec
        dpay = IIf(dpay = "", 0, dpay) + pay
        opbal = opbal + rec - pay

        If f = True Then
            rs111.MoveNext
            If rs111.EOF = True Then
                rs111.MoveLast
                vdt = "12:00:00"
            End If
        Else
        End If

        '--- Day Closing Printing

        If Not vdt = rs111(3) Then

            If cont >= PageLen Then
                Print #1, Space(2) & String(133, "-")
                Print #1, Chr(12)
                I = 0
                For I = 1 To 5
                    Print #1, Space(133)
                    cont = cont + 1
                Next

                Call prnhead
                '--------------------------------
                If Not rs111.EOF Then
                    Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                    'Print #1,
                    cont = cont + 1
                End If
                '----------------------------------
            End If

            Print #1, Space(133)
            cont = cont + 1
           If cont >= PageLen Then
            Print #1, Space(2) & String(133, "-")
            Print #1, Chr(12)
            Call prnhead
            '--------------------------------
            If Not rs111.EOF Then
                Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                'Print #1,
                cont = cont + 1
            End If
            '----------------------------------
        End If


            If dRec = 0 Then dRec = ""
            If dpay = 0 Then dpay = ""

''----       Print #1, Space(5) & Space(75) + "** Day Total **" + Space(2) + Space(19 - (Len(INF(drec, 2)))) + CStr(INF(drec, 2)) + Space(19 - Len(INF(DPAY, 2))) + CStr(INF(DPAY, 2))
            Print #1, Space(2) & Space(74) + "  DAYS TOTAL   " + Space(2) + Space(16) + Padl(INF(dRec, 2), 12, " ") + Space(2) + Padl(INF(dpay, 2), 12, " ")
            cont = cont + 1
            If cont >= PageLen Then
                Print #1, Space(2) & String(133, "-")
                Print #1, Chr(12)
                Call prnhead
                '--------------------------------
                If Not rs111.EOF Then
                    Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                    'Print #1,
                    cont = cont + 1
                End If
                '----------------------------------
            End If
            Print #1, Space(133)
            cont = cont + 1
            If opbal < 0 Then
                Dayopre = ""
                Dayoppa = Abs(opbal)
            Else
                Dayoppa = ""
                Dayopre = opbal
            End If
            If cont >= PageLen Then
                Print #1, Space(2) & String(133, "-")
                Print #1, Chr(12)
                Call prnhead
                '--------------------------------
                If Not rs111.EOF Then
                    Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                    'Print #1,
                    cont = cont + 1
                End If
                '----------------------------------
            End If
''---       Print #1, Space(5) & Space(66) + "** Day Closing Balance **" + Space(3) + Chr(27); "E" + Space(17 - Len(CStr(INF(Dayopre, 2)))) + CStr(INF(Dayopre, 2)) + Chr(27); "F" + Space(21 - Len(INF(CStr(Dayoppa), 2))) + INF(CStr(Dayoppa), 2)
            Print #1, Space(2) & Space(65) + "       Closing Balance   " + Space(1) + Space(14) + Padl(INF(Dayopre, 2), 12, " ") + Space(2) + Padl(INF(Dayoppa, 2), 14, " ")
            cont = cont + 1
            If cont >= PageLen Then
                Print #1, Space(2) & String(133, "-")
                Print #1, Chr(12)
                Call prnhead
                '--------------------------------
                If Not rs111.EOF Then
                    Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                    'Print #1,
                    cont = cont + 1
                End If
                '----------------------------------
            End If
            Print #1, Space(132)
            cont = cont + 1
            If cont >= PageLen Then
                Print #1, Space(2) & String(133, "-")
                Print #1, Chr(12)
                Call prnhead
                '--------------------------------
                If Not rs111.EOF Then
                    Print #1, Space(2) & Format(rs111(3), "dd/mm/yy")
                    'Print #1,
                    cont = cont + 1
                End If
                '----------------------------------
            End If
            dRec = 0
            dpay = 0
            fla = True

            If CStr(vdt) = "12:00:00" Then rs111.MoveNext

        End If

Loop

    '--- Last Total Printing

    If cont > PageLen Then
        Print #1, Space(2) & String(133, "-")
        Print #1, Chr(12)
        I = 0
        For I = 1 To 20
            Print #1, Space(133)
            cont = cont + 1
        Next
        Call prnhead
    End If
    Print #1, Space(133)
    cont = cont + 1
    If cont >= PageLen Then
        Print #1, Space(2) & String(133, "-")
        Print #1, Chr(12)
        Call prnhead
    End If
'----    Print #1, Space(5) & String(130, "-")
'        cont = cont + 1
    If cont >= PageLen Then
        Print #1, Space(2) & String(133, "-")
        Print #1, Chr(12)
        Call prnhead
    End If
''---   Print #1, Space(5) & Space(72) + "** Grand Total **" + Chr(27); "E" + Space(22 - Len(INF(Trec, 2))) + CStr(INF(Trec, 2)) + Space(1) + Space(19 - Len(INF(tpay, 2))) + CStr(INF(tpay, 2)) + Chr(27); "F"
        Print #1, Space(2) & Space(71) + "** Grand Total **" + Space(3) + Space(16) + Padl(INF(Trec, 2), 12, " ") + Space(2) + Padl(INF(tpay, 2), 12, " ")
        cont = cont + 1
    If cont >= PageLen Then
        Print #1, Space(2) & String(133, "-")
        Print #1, Chr(12)
        Call prnhead
    End If
    'Print #1, Space(74) + "** Grand Total **" + Padl(Trec)
    Print #1, Space(2) & String(133, "-")
        cont = cont + 1
    If cont >= PageLen Then
        Print #1, Space(2) & String(133, "-")
        Print #1, Chr(12)
        Call prnhead
    End If
    Print #1, Space(132)
        cont = cont + 1
    If cont >= PageLen Then
        Print #1, Space(2) & String(133, "-")
        Print #1, Chr(12)
        Call prnhead
    End If


    Dim ocr As String
    Dim ccr As String

    If opbalt < 0 Then
        ocr = "CR"
    Else
        ocr = ""
    End If

    If clobal < 0 Then
        ccr = "CR"
    Else
        ccr = ""
    End If

'   The Below line is Commented by YOGANAND.
'   Print #1, Space(2) & Space(75) + Chr(27) + "E" + "** CONTROL TOTAL **" + Chr(27) + "F"
    Print #1,
    Print #1,
    Print #1, Space(2) & String(133, "-")
    Print #1, Space(5) & Trim(divname)
    Print #1, Chr(27) + "E" & Space(2) & "BANK DAY BOOK  -  " & Padr(Tche + " - SPG. - CC  - " + MaskEdBox1.Text + "  TO  " + MaskEdBox2.Text, 65, " ")
    Print #1, Space(2) & String(133, "-")
    '   --------------------------------------------------------------------------------------
    Print #1, Space(2)
    Print #1, Space(2) & Space(20) + "Opening Balance          :" + Space(18 - Len(INF(Abs(opbalt), 2))) + CStr(INF(Abs(opbalt), 2)) + ocr
    Print #1,
    Print #1, Space(2) & Space(20) + "Total Receipts           :" + Space(18 - Len(INF(Trec, 2))) + CStr(INF(Trec, 2))
    Print #1,
    Print #1, Space(2) & Space(20) + "Total payments           :" + Space(18 - Len(INF(tpay, 2))) + CStr(INF(tpay, 2))
    Print #1,
    Print #1, Space(2) & Space(20) + "Closing Balance          :" + Space(18 - Len(INF(Abs(clobal), 2))) + CStr(INF(Abs(clobal), 2)) + ccr
    Print #1,
    Print #1, Space(2) & String(133, "-")
'   Print #1, Space(2) & Space(77) + " * End of Report *"
    Print #1, Chr(12)
    ocr = ""
    ccr = ""

    Close #1
'
'    Open cBatchFileName For Output As #1
'
'    Print #1, "@ECHO OFF"
'    Print #1, "CD\"
'    Print #1, "C:"
'    Print #1, "CD\"
'    Print #1, "type " & cOutputFilename & ">prn"
'    Print #1, "CLS"
'
'    Close #1
'
'    Set csrep = New Report.ReportView
'    csrep.txtfile = cOutputFilename
'    csrep.Batfile = cBatchFileName

    Exit Sub

Err1:

End Sub
Public Sub dailytrans1(dt1 As Date, dt2 As Date, usr As String) 'Lyndon Dec2002
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim nare As String
Dim lnc As Integer
Dim tvalp As Integer
Dim VALP As Integer
Dim MFLG As String
Dim pflg As String
Dim chdt As Date
Dim c As Integer
Dim j As Integer
Dim chval As Integer
Dim f As Integer
Dim gt1 As Double
Dim gt2 As Double
Dim tot1 As Double
Dim tot2 As Double
Dim valc As Integer
Dim cnt As Integer
Dim pg As Integer
Dim rep As Report.ReportView
Dim mrs As Recordset
Dim SRS As Recordset
Dim Con As Connection
Set Con = New Connection
Con.Provider = "msdatashape"
Con.Open connectstring
'06\11\04-----------/
Screen.MousePointer = 11
Gtcr = 0 'grant tot Cr.
gtdr = 0 'grant tot Dr.
gtdt = " " 'date
gx = 1

'----------------------------------Receipt & Payment----------------------------------------------------------
Set mrs = New Recordset
 mrs.Open "select distinct a.TC,a.TCHEAD,a.TCABBR,b.vocdt from FA_TCMAS a,FA_PAyline b WHERE a.TC between '" & fcash & "' and '" & tbank & "'and a.tc=b.tc and b.vocdt between '" & Format(dt1, "yyyy-mm-dd") & "' and '" & Format(dt2, "yyyy-mm-dd") & "' order by 4", Con, adOpenStatic
If mrs.EOF Then
    MsgBox "No Record(s) Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
mrs.MoveFirst
Close
MFLG = "N"
tvalp = 0
f = 1
pg = 0
cnt = 0
valc = 0
VALP = 0
pflg = "N"
tot1 = 0
tot2 = 0
gt1 = 0
gt2 = 0
chdt = "12:00 AM"
'Open "c:\dlytrans.txt" For Output As #f
 Open KALFOLDERDATA & "\dlytrans.TXT" For Output As #f
While Not mrs.EOF
            Set SRS = New Recordset
            SRS.Open "SELECT 'Rcpt' AS ttype, a.TC,a.vOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(select x.slname from fa_slmas x where x.slcode=a.accode) as head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE b.vocdt ='" & Format(mrs(3), "yyyy-mm-dd") & "' and a.DIVCODE = '" & Divcode & "' AND a.TC=cast(" & mrs(0).value & " as integer) AND " & _
                "a.divcode=b.divcode and a.docno=b.docno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'Pymt' AS ttype, a.TC,a.vOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(select x.slname from fa_slmas x where x.slcode=a.accode) as head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT FROM FA_PAYLINE a,fa_payhead b WHERE b.vocdt ='" & Format(mrs(3), "yyyy-mm-dd") & "' and a.DIVCODE = '" & Divcode & "' AND a.TC=cast(" & mrs(0).value & " as integer) AND " & _
                "a.divcode=b.divcode and a.docno=b.docno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'RCon' AS ttype, a.TC,a.vOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(select x.slname from fa_slmas x where x.slcode=a.accode) as head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> cast(" & mrs(0).value & " as integer) AND " & _
                "a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE b.vocdt ='" & Format(mrs(3), "yyyy-mm-dd") & "'and tc = cast(" & mrs(0).value & " as integer)) and a.divcode=b.divcode and a.docno=b.docno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'PCon' AS ttype, a.TC,a.DOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(select x.slname from fa_slmas x where x.slcode=a.accode) as head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> cast(" & mrs(0).value & " as integer) AND " & _
                "a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE b.vocdt='" & Format(mrs(3), "yyyy-mm-dd") & "' and tc = cast(" & mrs(0).value & " as integer) and a.divcode=b.divcode and a.docno=b.docno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC ) " & _
                "ORDER BY 4,3", Con, adOpenStatic

If gx <> 1 Then
If SRS(3) <> gtdt Then
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f,
        Print #f, Space(41) & "      ** Day Total **" & Space(15) & Padl(INF(Gtcr, 2), 18, " ") & Space(1) & Padl(INF(gtdr, 2), 18, " ")
        Print #f,
        cnt = cnt + 3
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Gtcr = 0
        gtdr = 0

End If
End If

If SRS.RecordCount <> 0 Then
        VALP = VALP + 1
        If pflg = "N" Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, tvalp)
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f,
        cnt = cnt + 1
        SRS.MoveFirst
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f, Space(5) & Chr(27); "E" & mrs(1).value & " - " & mrs(2).value & Chr(27); "F"
        'cnt = cnt + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f,
        cnt = cnt + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f, Space(5) & IIf(IsNull(SRS(3).value), Space(10), Format(SRS(3).value, "dd/mm/yyyy"));
        'cnt = cnt + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        chdt = Format(SRS(3).value, "dd/mm/yyyy")

End If
While Not SRS.EOF
        If SRS.AbsolutePosition = 1 Then
        If IsNumeric(SRS(5)) = True Then
                Set RSNAME = New Recordset
                RSNAME.Open "Select glhead from fa_glmas where glcode=" & SRS(5) & "", connectstring, adOpenStatic
                abc = RSNAME(0)
        Else
            abc = SRS(6)
        End If
         If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
            If SRS(9) = 0 Then
                chq = " "
            Else
                chq = SRS(9)
            End If
            Print #f, " " & Padl(IIf(IsNull(SRS(2).value), " ", SRS(2).value), 6, " ") & " " & Padr(IIf(IsNull(abc), " ", abc), 40, " ") & " " & Padr(IIf(IsNull(SRS(9).value), " ", chq), 12, " ") & " " & Padl(IIf(IsNull(SRS(11).value), " ", INF(SRS(11).value, 2)), 18, " ") & " " & Padl(IIf(IsNull(SRS(12).value), " ", INF(SRS(12).value, 2)), 18, " ") & " " & Padr(IIf(IsNull(SRS(7).value), " ", SRS(7).value), 34, " ")
            cnt = cnt + 1
            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Else
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
            If chdt <> Format(SRS(3).value, "dd/mm/yyyy") Then

            If IsNumeric(SRS(5)) = True Then
                Set RSNAME = New Recordset
                RSNAME.Open "Select glhead from fa_glmas where glcode=" & SRS(5) & "", connectstring, adOpenStatic
                abc = RSNAME(0)
            Else
                abc = SRS(6)
            End If
                            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                Print #f, Space(5) & IIf(IsNull(SRS(3).value), Space(10), Format(SRS(3).value, "dd/mm/yyyy"));
                           'cnt = cnt + 1
                            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
            If SRS(9) = 0 Then
                chq = " "
            Else
                chq = SRS(9)
            End If
                Print #f, " " & Padl(IIf(IsNull(SRS(2).value), " ", SRS(2).value), 6, " ") & " " & Padr(IIf(IsNull(abc), " ", abc), 40, " ") & " " & Padr(IIf(IsNull(SRS(9).value), " ", chq), 12, " ") & " " & Padl(IIf(IsNull(SRS(11).value), " ", INF(SRS(11).value, 2)), 18, " ") & " " & Padl(IIf(IsNull(SRS(12).value), " ", INF(SRS(12).value, 2)), 18, " ") & " " & Padr(IIf(IsNull(SRS(7).value), " ", SRS(7).value), 34, " ")
                cnt = cnt + 1
                chdt = Format(SRS(3).value, "dd/mm/yyyy")
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
            Else

            If IsNumeric(SRS(5)) = True Then
                Set RSNAME = New Recordset
                RSNAME.Open "Select glhead from fa_glmas where glcode=" & SRS(5) & "", connectstring, adOpenStatic
                abc = RSNAME(0)
            Else
                abc = SRS(6)
            End If
            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                If SRS(9) = 0 Then
                    chq = " "
                Else
                    chq = SRS(9)
                End If
                Print #f, Space(15) & " " & Padl(IIf(IsNull(SRS(2).value), " ", SRS(2).value), 6, " ") & " " & Padr(IIf(IsNull(abc), " ", abc), 40, " ") & " " & Padr(IIf(IsNull(SRS(9)), " ", chq), 12, " ") & " " & Padl(IIf(IsNull(SRS(11).value), " ", INF(SRS(11).value, 2)), 18, " ") & " " & Padl(IIf(IsNull(SRS(12).value), " ", INF(SRS(12).value, 2)), 18, " ") & " " & Padr(IIf(IsNull(SRS(7).value), " ", SRS(7).value), 34, " ")
                cnt = cnt + 1
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
            End If
        End If
        gt1 = gt1 + IIf(IsNull(SRS(11).value), 0, SRS(11).value)
        gt2 = gt2 + IIf(IsNull(SRS(12).value), 0, SRS(12).value)
        tot1 = tot1 + IIf(IsNull(SRS(11).value), 0, SRS(11).value)
        tot2 = tot2 + IIf(IsNull(SRS(12).value), 0, SRS(12).value)
        Gtcr = Gtcr + IIf(IsNull(SRS(11).value), 0, SRS(11).value)
        gtdr = gtdr + IIf(IsNull(SRS(12).value), 0, SRS(12).value)
        gtdt = SRS(3)

            If Len(SRS(7).value) > 34 Then
            If ((Len(SRS(7).value) / 34) - 1) = Fix(((Len(SRS(7).value) / 34) - 1)) Then
                c = Fix((Len(SRS(7).value) / 34) - 1)
            Else
                c = Fix((Len(SRS(7).value) / 34) - 1) + 1
            End If
            j = 35
            c = 1 + c
            For I = 2 To c
            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                Print #f, Space(115) & Padr(Mid$(SRS(7).value, j, Len(SRS(7).value)), 34, " ")
                cnt = cnt + 1
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                j = (I * 34) + 1
            Next I
        End If
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f,
        cnt = cnt + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        SRS.MoveNext
        gx = 0
Wend
    If SRS.RecordCount > 0 Then
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f, Space(45) & "      ** Total **" & Space(15) & Padl(INF(gt1, 2), 18, " ") & Space(1) & Padl(INF(gt2, 2), 18, " ")
        cnt = cnt + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        gt1 = 0
        gt2 = 0
    End If
    mrs.MoveNext
Wend
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f,
        Print #f, Space(41) & "      ** Day Total **" & Space(15) & Padl(INF(Gtcr, 2), 18, " ") & Space(1) & Padl(INF(gtdr, 2), 18, " ")
        Print #f,
        cnt = cnt + 3
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Gtcr = 0
        gtdr = 0

'------------------------------------------------Journal------------------------------------------
If VALP <> 0 Then
If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
'    Print #f, Space(5) & String(144, "-")
'    cnt = cnt + 1
'    If cnt >= pagelen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
End If
Set mrs = New Recordset
cnt = 1
valc = 0
tvalp = VALP + tvalp
VALP = 0
pflg = "N"
tot1 = 0
tot2 = 0
gt1 = 0
gt2 = 0
c = 0
chdt = "12:00 AM"
    'If usr = "All" Then
        mrs.Open "select distinct a.tc,a.tchead,a.tcabbr from fa_tcmas a,fa_jvhead b where a.tc=b.tc and ((a.tc between '" & fjv & "' and '" & tjv & "') or (a.tc between '" & fsal & "' and  '" & tsal & "' )) and b.divcode = '" & Divcode & "' order by 1", Con, adOpenStatic
    'Else
    '    mrs.Open "select distinct a.tc,a.tchead,a.tcabbr from fa_tcmas a,fa_jvhead b where a.tc=b.tc and ((a.tc between '" & fjv & "' and '" & tjv & "') or (a.tc between '" & fsal & "' and  '" & tsal & "' )) and b.divcode = '" & divcode & "' and b.entusrid='" & usr & "' order by 1", con, adOpenStatic
    'End If

While Not mrs.EOF
    Set SRS = New Recordset
        SRS.Open "SELECT a.VOCDT,a.VOCNO,a.VOCSNO,a.ACCODE,(select x.slname from fa_slmas x where x.slcode=a.accode) as head," & _
        "a.NARRATION1,a.NARRATION2,a.CREDIT,a.DEBIT,null as refno FROM FA_JVLINE a,FA_JVHEAD b where b.vocdt between '" & Format(dt1, "yyyy-mm-dd") & "' and '" & Format(dt2, "yyyy-mm-dd") & "' and a.vocdt=b.vocdt and a.tc=b.tc and a.vocno=b.vocno and a.divcode=b.divcode and a.tc='" & mrs(0).value & "' and a.divcode = '" & Divcode & "' group by a.vocdt,a.vocno,vocsno,accode,NARRATION1,NARRATION2,credit,debit order by a.vocdt,a.vocno", Con, adOpenStatic

    If SRS.RecordCount <> 0 Then
        VALP = VALP + 1
        If pflg = "N" Then Call hedr(pg, cnt, f, dt1, dt2, 1, pflg, tvalp)
         If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f,
        cnt = cnt + 1
        SRS.MoveFirst
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f, Space(5) & Chr(27) & "E" & mrs(1).value & " - " & mrs(2).value & Chr(27) & "F"
        cnt = cnt + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f,
        cnt = cnt + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f, Space(5) & IIf(IsNull(SRS(0).value), Space(10), Format(SRS(0).value, "dd/mm/yyyy"));
        'cnt = cnt + 1
        chdt = Format(SRS(0).value, "dd/mm/yyyy")
        chval = SRS(1).value

    End If
    While Not SRS.EOF
        If SRS.AbsolutePosition = 1 Then
         If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
            acname = ""
            If IsNull(SRS(4).value) = True Then
                Set rp = New Recordset
                rp.Open "select glhead from fa_glmas where glcode='" & SRS(3).value & "'", Con, adOpenStatic
                If rp.RecordCount > 0 Then
                    acname = rp(0)
                Else
                    acname = ""
                End If
             End If
             If acname = "" Then
                Print #f, " " & Padl(IIf(IsNull(SRS(1).value), " ", SRS(1).value), 6, " ") & " " & Padr(IIf(IsNull(SRS(4).value), " ", SRS(4).value), 40, " ") & "   " & Padr(IIf(IsNull(SRS("refno").value), " ", SRS("refno").value), 12, " ") & " " & " " & Padl(IIf(IsNull(SRS(7).value), " ", INF(SRS(7).value, 2)), 15, " ") & " " & Padl(IIf(IsNull(SRS(8).value), " ", INF(SRS(8).value, 2)), 18, " ") & " " & Padr(IIf(IsNull(SRS(5).value), " ", SRS(5).value), 47, " ")
             Else
                Print #f, " " & Padl(IIf(IsNull(SRS(1).value), " ", SRS(1).value), 6, " ") & " " & Padr(IIf(IsNull(acname), " ", acname), 40, " ") & "   " & Padr(IIf(IsNull(SRS("refno").value), " ", SRS("refno").value), 12, " ") & " " & " " & Padl(IIf(IsNull(SRS(7).value), " ", INF(SRS(7).value, 2)), 15, " ") & " " & Padl(IIf(IsNull(SRS(8).value), " ", INF(SRS(8).value, 2)), 18, " ") & " " & Padr(IIf(IsNull(SRS(5).value), " ", SRS(5).value), 47, " ")
             End If
            cnt = cnt + 1
            chdt = Format(SRS(0).value, "dd/mm/yyyy")
            chval = SRS(1).value
            lnc = 1
         Else
            If chdt <> Format(SRS(0).value, "dd/mm/yyyy") Then
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                Print #f,
                cnt = cnt + 1
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                Print #f, Space(5) & IIf(IsNull(SRS(0).value), Space(10), Format(SRS(0).value, "dd/mm/yyyy"));
                'cnt = cnt + 1
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
            '---------------------------/
            acname = ""
            If IsNull(SRS(4).value) = True Then
                Set rp = New Recordset
                    rp.Open "select glhead from fa_glmas where glcode='" & SRS(3).value & "'", Con, adOpenStatic
                If rp.RecordCount > 0 Then
                    acname = rp(0)
                Else
                    acname = ""
                End If
             End If
             If acname = "" Then
                '
                Print #f, " " & Padl(IIf(IsNull(SRS(1).value), " ", SRS(1).value), 6, " ") & " " & Padr(IIf(IsNull(SRS(4).value), " ", SRS(4).value), 40, " ") & "   " & Padr(IIf(IsNull(SRS("refno").value), " ", SRS("refno").value), 12, " ") & " " & " " & Padl(IIf(IsNull(SRS(7).value), " ", INF(SRS(7).value, 2)), 15, " ") & " " & Padl(IIf(IsNull(SRS(8).value), " ", INF(SRS(8).value, 2)), 18, " ") & " " & Padr(IIf(IsNull(SRS(5).value), " ", SRS(5).value), 47, " ")
             Else
                Print #f, " " & Padl(IIf(IsNull(SRS(1).value), " ", SRS(1).value), 6, " ") & " " & Padr(IIf(IsNull(acname), " ", acname), 40, " ") & "   " & Padr(IIf(IsNull(SRS("refno").value), " ", SRS("refno").value), 12, " ") & " " & " " & Padl(IIf(IsNull(SRS(7).value), " ", INF(SRS(7).value, 2)), 15, " ") & " " & Padl(IIf(IsNull(SRS(8).value), " ", INF(SRS(8).value, 2)), 18, " ") & " " & Padr(IIf(IsNull(SRS(5).value), " ", SRS(5).value), 47, " ")
             End If
             '----------------------\
                cnt = cnt + 1
                chdt = Format(SRS(0).value, "dd/mm/yyyy")
                chval = SRS(1).value
                lnc = 1
            Else
                If chval = SRS(1).value Then
                 If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                '---------------------/
                acname = ""
                If IsNull(SRS(4).value) = True Then
                Set rp = New Recordset
                    rp.Open "select glhead from fa_glmas where glcode='" & SRS(3).value & "'", Con, adOpenStatic
                If rp.RecordCount > 0 Then
                    acname = rp(0)
                Else
                    acname = ""
                End If
                End If
                If acname = "" Then
                '
                Print #f, Space(15) & " " & Padl(IIf(IsNull(" "), " ", " "), 6, " ") & " " & Padr(IIf(IsNull(SRS(4).value), " ", SRS(4).value), 40, " ") & "   " & Padr(IIf(IsNull(SRS("refno").value), " ", SRS("refno").value), 12, " ") & "  " & Padl(IIf(IsNull(SRS(7).value), " ", INF(SRS(7).value, 2)), 15, " ") & " " & Padl(IIf(IsNull(SRS(8).value), " ", INF(SRS(8).value, 2)), 18, " ") & " ";  ' & Padr(IIf(IsNull(srs(5).Value), " ", srs(5).Value), 47, " ")
                    'cnt = cnt + 1
                Else
                Print #f, Space(15) & " " & Padl(IIf(IsNull(" "), " ", " "), 6, " ") & " " & Padr(IIf(IsNull(acname), " ", acname), 40, " ") & "   " & Padr(IIf(IsNull(SRS("refno").value), " ", SRS("refno").value), 12, " ") & "  " & Padl(IIf(IsNull(SRS(7).value), " ", INF(SRS(7).value, 2)), 15, " ") & " " & Padl(IIf(IsNull(SRS(8).value), " ", INF(SRS(8).value, 2)), 18, " ") & " ";  ' & Padr(IIf(IsNull(srs(5).Value), " ", srs(5).Value), 47, " ")
                End If
                '--------------------------\
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                    If Len(SRS(5).value) > ((lnc) * 40) Then
                        For I = lnc To lnc
                            j = ((lnc) * 40) + 1
                            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                             Print #f, Padr(Mid$(SRS(5).value, j, Len(SRS(5).value)), 40, " ")
                             cnt = cnt + 1
                             If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                             lnc = lnc + 1
                        Next I
                    Else
                    If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                        Print #f,
                        cnt = cnt + 1
                        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                    End If
                Else
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                    Print #f,
                    cnt = cnt + 1
                    If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                    '---------------------/
                       acname = ""
                       If IsNull(SRS(4).value) = True Then
                       Set rp = New Recordset
                           rp.Open "select glhead from fa_glmas where glcode='" & SRS(3).value & "'", Con, adOpenStatic
                       If rp.RecordCount > 0 Then
                           acname = rp(0)
                       Else
                           acname = ""
                       End If
                    End If
                    If acname = "" Then
                     '
                        Print #f, Space(15) & " " & Padl(IIf(IsNull(SRS(1).value), " ", SRS(1).value), 6, " ") & " " & Padr(IIf(IsNull(SRS(4).value), " ", SRS(4).value), 40, " ") & "  " & Padr(IIf(IsNull(SRS("refno").value), " ", SRS("refno").value), 12, " ") & "  " & " " & Padl(IIf(IsNull(SRS(7).value), " ", INF(SRS(7).value, 2)), 15, " ") & " " & Padl(IIf(IsNull(SRS(8).value), " ", INF(SRS(8).value, 2)), 18, " ") & " " & Padr(IIf(IsNull(SRS(5).value), " ", SRS(5).value), 40, " ")
                    Else
                        Print #f, Space(15) & " " & Padl(IIf(IsNull(SRS(1).value), " ", SRS(1).value), 6, " ") & " " & Padr(IIf(IsNull(acname), " ", acname), 40, " ") & "  " & Padr(IIf(IsNull(SRS("refno").value), " ", SRS("refno").value), 12, " ") & "  " & " " & Padl(IIf(IsNull(SRS(7).value), " ", INF(SRS(7).value, 2)), 15, " ") & " " & Padl(IIf(IsNull(SRS(8).value), " ", INF(SRS(8).value, 2)), 18, " ") & " " & Padr(IIf(IsNull(SRS(5).value), " ", SRS(5).value), 40, " ")
                    End If
                   '----------------------\
                    cnt = cnt + 1
                    If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                    chval = SRS(1).value
                End If
            End If
        End If
        gt1 = gt1 + IIf(IsNull(SRS(7).value), 0, SRS(7).value)
        gt2 = gt2 + IIf(IsNull(SRS(8).value), 0, SRS(8).value)
        tot1 = tot1 + IIf(IsNull(SRS(7).value), 0, SRS(7).value)
        tot2 = tot2 + IIf(IsNull(SRS(8).value), 0, SRS(8).value)
        valc = valc + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 1, pflg, tvalp)
        nare = SRS(5).value
        SRS.MoveNext
        If SRS.EOF = True Then
            MFLG = "Y"
            SRS.MovePrevious
            chval = 0
            chdt = "12:00 AM"
        End If
        If chval <> SRS(1).value Or chdt <> Format(SRS(0).value, "dd/mm/yyyy") Then
            If ((Len(nare) / 40) - 1) = Fix(((Len(nare) / 40) - 1)) Then
                c = Fix((Len(nare) / 40))
            Else
                c = Fix((Len(nare) / 40)) + 1
            End If
            If c > lnc Then
                For I = lnc To c - 1
                     j = (I * 40) + 1
         If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                     Print #f, Space(102) & Padr(Mid$(nare, j, Len(nare)), 40, " ")
                     cnt = cnt + 1
                     If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
                Next I
            End If
        End If
        If MFLG = "Y" Then
            SRS.MoveNext
            MFLG = "N"
        End If
    Wend
    If SRS.RecordCount > 0 Then
    If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f,
        cnt = cnt + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        Print #f, Space(45) & "      ** Total ** " & Space(17) & Padl(INF(gt1, 2), 15, " ") & Space(1) & Padl(INF(gt2, 2), 18, " ")
        cnt = cnt + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 0, pflg, VALP)
        gt1 = 0
        gt2 = 0
    End If
    mrs.MoveNext
Wend

    If SRS.RecordCount <> 0 Then
        VALP = VALP + 1
        If pflg = "N" Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, tvalp)
        Set rs1 = New Recordset
        Set rs1.DataSource = SRS("command52").UnderlyingValue
        Set rs2 = New Recordset
        Set rs2.DataSource = rs1("command53").UnderlyingValue
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
        Print #f,
        cnt = cnt + 1
        SRS.MoveFirst
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
        Print #f, Space(5) & Chr(14) & mrs(1).value & " - " & mrs(2).value & Chr(14)
        cnt = cnt + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
        Print #f,
        cnt = cnt + 1
    End If
    While Not SRS.EOF
        If Not rs1.EOF Then
            rs1.MoveFirst
            chdt = SRS("pjvdt")
            MFLG = "Y"
        End If
    While Not rs1.EOF
        If rs1.AbsolutePosition = 1 Then
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
           Print #f, Space(5) & SRS("pjvdt") & Space(1) & Padr(rs1("slname"), 40, " ") & " " & Padr(rs1("billno"), 10, " ") & " " & Padl(INF(rs2("qty"), 3), 12, " ") & " " & Padl(CStr(INF(rs2("rate"), 2)), 12, " ") & " " & Padl(CStr(INF(rs2("amount"), 2)), 12, " ") & " " & Padr(rs2("narration1"), 42, " ")
           cnt = cnt + 1
        Else
            If chdt <> SRS("pjvdt") Then
            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
                Print #f, Space(5) & SRS("pjvdt") & Space(1) & Padr(rs1("slname"), 40, " ") & " " & Padr(rs1("billno"), 10, " ") & " " & Padl(INF(rs2("qty"), 3), 12, " ") & " " & Padl(CStr(INF(rs2("rate"), 2)), 12, " ") & " " & Padl(CStr(INF(rs2("amount"), 2)), 12, " ") & " " & Padr(rs2("narration1"), 42, " ")
                cnt = cnt + 1
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
                chdt = SRS("pjvdt")
                MFLG = "Y"
            Else
            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
                Print #f, Space(9) & Padl(rs1("docno"), 6, " ") & Space(1) & Padr(rs1("slname"), 40, " ") & " " & Padr(rs1("billno"), 10, " ") & " " & Padl(INF(rs2("qty"), 3), 12, " ") & " " & Padl(CStr(INF(rs2("rate"), 2)), 12, " ") & " " & Padl(CStr(INF(rs2("amount"), 2)), 12, " ") & " " & Padr(rs2("narration1"), 42, " ")
                cnt = cnt + 1
            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
            End If
        End If
        If MFLG = "Y" Then
            If Len(rs2("narration1")) > 42 Then
            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
                Print #f, Space(5) & Space(4) & Padl(rs1("docno"), 6, " ") & " " & Padr(rs2("glhead"), 35, " ") & Space(3) & Format(rs1("billdt"), "dd/mm/yyyy") & Space(43) & Padr(Mid$(rs2("narration1"), 43, Len(rs2("narration1"))), 42, " ")
                cnt = cnt + 1
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
            Else
            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
                Print #f, Space(5) & Space(4) & Padl(rs1("docno"), 6, " ") & " " & Padr(rs2("glhead"), 35, " ") & Space(3) & Format(rs1("billdt"), "dd/mm/yyyy")
                cnt = cnt + 1
            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
            End If
            MFLG = "N"
        Else
            If Len(rs2("narration1")) > 42 Then
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
                Print #f, Space(5) & Space(4) & Padl(" ", 6, " ") & " " & Padr(rs2("glhead"), 35, " ") & Space(3) & Format(rs1("billdt"), "dd/mm/yyyy") & Space(43) & Padr(Mid$(rs2("narration1"), 43, Len(rs2("narration1"))), 42, " ")
                cnt = cnt + 1
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
            Else
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
                    Print #f, Space(5) & Space(4) & Padl(" ", 6, " ") & " " & Padr(rs2("glhead"), 35, " ") & Space(3) & Format(rs1("billdt"), "dd/mm/yyyy")
                    cnt = cnt + 1
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
            End If
        End If
        If Len(rs2("narration1")) > 85 Then
            If ((Len(rs2("narration1")) / 42) - 2) = Fix(((Len(rs2("narration1")) / 42) - 2)) Then
                c = Fix((Len(rs2("narration1")) / 42) - 2)
            Else
                c = Fix((Len(rs2("narration1")) / 42) - 2) + 1
            End If
            j = 85
            c = 2 + c
            For I = 3 To c
            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
                Print #f, Space(107) & Padr(Mid$(rs2("narration1"), j, Len(rs2("narration1"))), 42, " ")
                j = (I * 42) + 1
                cnt = cnt + 1
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
            Next I
        End If
                gt1 = gt1 + INF(rs2("amount"), 2)
                If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
            Print #f,
            cnt = cnt + 1
            If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
            rs1.MoveNext
        Wend
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, tvalp)
        If SRS.AbsolutePosition <> SRS.RecordCount Then
            Print #f,
            cnt = cnt + 1
        End If
        SRS.MoveNext
    Wend
    If SRS.RecordCount > 0 Then
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
        Print #f, Space(45) & "      ** Total **" & Space(26) & Padl(INF(gt1, 2), 18, " ") '& Space(1) & Padl(INF(gt2, 2), 18, " ")
        cnt = cnt + 1
        If cnt >= PageLen Then Call hedr(pg, cnt, f, dt1, dt2, 2, pflg, VALP)
        gt1 = 0
    End If
    mrs.MoveNext
'Wend
If VALP <> 0 Then Print #f, Space(5) & String(144, "-")
tvalp = VALP + tvalp
If tvalp = 0 Then
    MsgBox "No Record(s) Found.", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
Close #f
'Open "c:\dlytrans.bat" For Output As #f
'Print #f, "type c:\dlytrans.txt > prn"
'Close #f
'Set Rep = New Report.ReportView
'Rep.txtfile = "c:\dlytrans.txt"
'Rep.Batfile = "c:\dlytrans.bat"

f = FreeFile
Call KALBATPROCESS("dlytrans")
Screen.MousePointer = 0
Screen.MousePointer = 0
End Sub
Public Sub hedr(pg As Integer, cnt As Integer, f As Integer, dt1 As Date, dt2 As Date, Opt As String, pflg As String, tvalp As Integer)
pflg = "Y"
pg = pg + 1
If cnt <> 0 And tvalp <> 0 Then
    Print #f, Space(5) & String(144, "-")
    Print #f, Chr(12)
End If
Print #f, Chr(18)
Print #f, Space(5) & CENTRE(Chr(27) & "E" & Trim(divname) & Chr(27) & "F", 80, " ")
Print #f, Chr(15)
If CDate(dt1) = CDate(dt2) Then
    Print #f, Space(5) & "TRANSACTIONS ENTERED  On " & Format(dt1, "dd/mm/yy") & Space(85) & "Dt. :" & Format(Date, "dd/mm/yy") & "  Pg.No : " & Padl(pg, 3, " ")
Else
    Print #f, Space(5) & "TRANSACTIONS FROM " & Format(dt1, "dd/mm/yy") & " TO " & Format(dt2, "dd/mm/yy") & Space(80) & "Dt. :" & Format(Date, "dd/mm/yy") & "  Pg.No : " & Padl(pg, 3, " ")
End If
Print #f, Space(5) & String(144, "-")
If Opt = "1" Then
    'insert Refno heading at this postion                                              . if necessary
    Print #f, Space(5) & "Date       Voc-No  Account Head                                                     Credit              Debit Narration                            "
ElseIf Opt = "2" Then
    Print #f, Space(5) & "Date       Supplier Name                            BillNo         Quantity         Rate        Value Narration                                          "
    Print #f, Space(4) & "      Pj No Account Head                          Date"
Else
    Print #f, Space(5) & "Date       Voc-No Account Head                             Chq/Ref-No             Receipts           Payments Narration                            "
End If
Print #f, Space(5) & String(144, "-")
cnt = 7
If Opt = "2" Then cnt = cnt + 1
End Sub


Private Sub prnhead1()


    On Error GoTo Err1

    pagein = pagein + 1

    If pagein > 1 Then

        co = co + 1
        'VDT1 = CStr(rs111(3))
        VDT1 = " "
        I = 1
        'Print #1, Chr(12)
    End If
    Print #1,
    cont = 0
    If Check1.value = 1 Then
       Print #1, Chr(18); Space(5) & CENTRE(Chr(27) & "E" & Trim(divname) & Chr(27) & "F", 83, " ")
    Else
        Print #1, Chr(18) & Space(5) & CENTRE(Chr(27) & "E" & Trim(divname) & Chr(27) & "F", 83, " ")
    End If
    cont = cont + 1
    Print #1,
    cont = cont + 1
    If loc_RepIndex = 1 Then

            If Check1.value = 0 Then
             Print #1, Chr(27) + "E" + Space(5) & Padr(Tche + " BOOK FROM " + MaskEdBox1.Text + " TO " + MaskEdBox2.Text, 120, " ") + Chr(27) + "F" + Space(37) + "Dt. : " & CStr(pdate) + Space(4); "Pg. :" + Padl(CStr(pagein), 2, " ")
             Else
             Print #1, Chr(27) + "E" + Space(5) & Padr("CONSOLIDATED " + Tche + " BOOK FROM " + MaskEdBox1.Text + " TO " + MaskEdBox2.Text, 121, " ") + Chr(27) + "F" + "Dt. : " & CStr(pdate) + Space(1); "Pg. :" + Padl(CStr(pagein), 4, " ")
            End If
    End If
     cont = cont + 1

        If loc_RepIndex = 2 Then
            If Check1.value = 0 Then
                 Print #1, Chr(27) + "E" + Space(5) & Padr(Tche + " BOOK FROM " + MaskEdBox1.Text + "  TO  " + MaskEdBox2.Text, 120, " ") + Chr(27) + "F" + Space(37) & "Dt. : " & CStr(pdate) + Space(4) & "Pg. :" + Padl(CStr(pagein), 2, " ")
             Else
                Print #1, Chr(27) + "E" + Space(5) & Padr("CONSOLIDATED " + Tche + " BOOK FROM " + MaskEdBox1.Text + " TO " + MaskEdBox2.Text & Space(2), 123, " ") + Chr(27) + "F" + "Dt. : " & CStr(pdate) + Space(1) & "Pg. :  " + Padl(CStr(pagein), 4, " ")
            End If
        cont = cont + 1
    End If
    Print #1, Space(5) & String(130, "-")
    cont = cont + 1
    If loc_RepIndex = 1 Then
    If Check1.value = False Then
        Print #1, Space(5) & "Date" + Space(2) + Space(5) + "Voc-No" + Space(1) + "Code" + Space(3) + "Description" + Space(66) + "Chq/ref-No"; Space(3) + Space(9) + "Receipts" + Space(11) + "Payments"
        Print #1, Space(5) & String(130, "-")
    Else
        Print #1, Space(5) & Space(2) + "Date" + Space(5) + "Voc-No" + Space(1) + "Code" + Space(3) + "Description" & Space(66) + "Chq/ref-No"; Space(3) + Space(9) + "Receipts" + Space(11) + "Payments"
        Print #1, Space(5) & String(130, "-")
    End If
Else
If Check1.value = False Then

    Print #1, Space(5) & Space(2) + "Date" + Space(3) + "Voc-No" + Space(1) + "Code" + Space(3) + "Description" + Space(46) + "Chq/ref-No"; Space(3) + Space(9) + "Receipts" + Space(11) + "Payments"
    Print #1, Space(5) & String(130, "-")

    Else
    Print #1, Space(5) & Space(2) + "Date" + Space(3) + "Voc-No" + Space(1) + "Code" + Space(3) + "Description" & Space(66) + "Chq/ref-No"; Space(3) + Space(9) + "Receipts" + Space(11) + "Payments"
    Print #1, Space(5) & String(130, "-")

    End If

End If

    cont = cont + 2


Err1:

End Sub


Private Sub cashprint22()
    Dim yesno As String
    Dim cOutputFilename As String
    Dim cBatchFileName As String

    'yesno = MsgBox("Do you want to Print?", vbYesNo, head)

    If Check1.value = False Then

        If loc_RepIndex = 1 Then 'Cash Book
            cOutputFilename = "C:\CASHBOOK.TXT"
        Else
            cOutputFilename = "C:\BANKBOOK.TXT"
        End If

        cBatchFileName = "C:\CASHBANK.BAT"

    Else

        If loc_RepIndex = 1 Then 'Cash Book
            cOutputFilename = "C:\CCSHBOOK.TXT"
        Else
            cOutputFilename = "C:\CBNKBOOK.TXT"
        End If

        cBatchFileName = "C:\CCSHBANK.BAT"

    End If

    Open cOutputFilename For Output As #1

    Dim DB As New Connection
    Set DB = New Connection
    DB.Open connectstring

    Set rs111 = New Recordset
    Set RS112 = New Recordset

    '------ DIVISION WISE

    If Check1.value = False Then

        If loc_RepIndex = 2 Then

            '---- Bank Book

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0) AS totrec, ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, " & _
                "(ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ " & _
                " ISNULL(H.crctot,0)) AS clbal FROM (SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE divcode = '" & Divcode & "' AND yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = (SELECT glcode FROM fa_tcmas WHERE tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) op) A, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc =CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I", DB, adOpenStatic, adLockBatchOptimistic


        Else

            '-----Cash Print

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0)  AS totrec, " & _
                " ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ " & _
                " ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ ISNULL(H.crctot,0) ) AS clbal FROM " & _
                " ( SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE divcode = '" & Divcode & "' AND yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = " & _
                "(SELECT glcode FROM fa_tcmas WHERE tc=CONVERT(varchar," & Mid(Combo5.Text, 1, 2) & ")))op ) A,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I ", DB, adOpenStatic, adLockBatchOptimistic
        End If

    Else

        ' CONSOLIDATED BOOKS

        If loc_RepIndex = 2 Then

            '---- Bank Book

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0) AS totrec, ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, " & _
                "(ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ " & _
                " ISNULL(H.crctot,0)) AS clbal FROM (SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = (SELECT glcode FROM fa_tcmas WHERE tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) op) A, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc =CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I", DB, adOpenStatic, adLockBatchOptimistic


        Else

            '-----Cash Print

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0)  AS totrec, " & _
                " ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ " & _
                " ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ ISNULL(H.crctot,0) ) AS clbal FROM " & _
                " ( SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = " & _
                "(SELECT glcode FROM fa_tcmas WHERE tc=CONVERT(varchar," & Mid(Combo5.Text, 1, 2) & ")))op ) A,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I ", DB, adOpenStatic, adLockBatchOptimistic
        End If

    End If

    Dim Calc As Variant
    Dim rec As Variant
    Dim Dayopre As Variant
    Dim Dayoppa As Variant
    Dim pay As Variant
    Dim narr1a As String
    Dim narr2a As String
    Dim narr3a As String
    Dim narr4a As String
    Dim narr5a As String
    Dim narr6a As String
    Dim narr1b As String
    Dim narr2b As String
    Dim narr3b As String
    Dim narr4b As String
    Dim name1 As String
    Dim name2 As String
    Dim cqno As String
    Dim cqdt As String
    Dim vdt As Date
    Dim Vno As String
    Dim acco As String
    Dim f As Boolean

    pagein = 0

    If rs111.BOF Then
        Close #1
        Screen.MousePointer = 0
        MsgBox "No records found", vbInformation, head
        Exit Sub
    End If

    opbal = rs111(0)
    opbalt = rs111(0)
    opbal1 = rs111(0)
    clobal = rs111(3)
    Trec = rs111(1)
    tpay = rs111(2)

    cont = 0

    Set RS112 = New Recordset
    RS112.Open "select tchead,glcode from fa_tcmas where tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) ", DB, adOpenStatic, adLockBatchOptimistic
    Tche = RS112(0)

    '=======================================
    ' START PRINTING
    '=======================================

    Call prnhead1

    Print #1,
    cont = cont + 1

    If opbal < 0 Then
        oppay = Abs(opbal)
        opbal1 = ""
    Else
        oppay = ""
    End If

    If IsNull(RS112(1)) = True Then Glco = "      " Else Glco = RS112(1)
    Tche = RS112(0)

    ' Opening Balance Printing


    Print #1, Space(5) & Space(18) + Glco + Space(1) + Padr(Tche, 45, " ") & Space(20) & "** Opening Balance **" + Space(2) + Space(19 - (Len(INF(CStr(opbal1), 2)))) + INF(CStr(opbal1), 2) + Space(19 - Len(INF(CStr(oppay), 2))) + INF(CStr(oppay), 2)

    cont = cont + 1

    Print #1, Space(132)
    cont = cont + 1

    Set rs111 = New Recordset
    ' DIVISION WISE

    If Check1.value = False Then

        If loc_RepIndex <> 1 Then

            '-------Bank Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS INTEGER) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All " & _
                "SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, vocsno", DB, adOpenStatic, adLockBatchOptimistic

        Else

            '-------Cash Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, a.vocsno", DB, adOpenStatic, adLockBatchOptimistic
        End If
    Else
        'CONSOLIDATED
        If loc_RepIndex <> 1 Then

            '-------Bank Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS INTEGER) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All " & _
                "SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, vocsno", DB, adOpenStatic, adLockBatchOptimistic

        Else

            '-------Cash Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT FROM FA_PAYLINE a,fa_payhead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, a.vocsno", DB, adOpenStatic, adLockBatchOptimistic
        End If
    End If

    fla = True
    f = True

    If rs111.RecordCount > 0 Then
        rs111.MoveFirst
    End If

    Do While Not rs111.EOF

    If cont >= PageLen Then
            Print #1, Space(5) & String(151, "-")
            Print #1, Chr(12)
            Call prnhead1
    End If


        If rs111.EOF = True Then f = False

        vdt = Trim(rs111(3))

        If fla = True Then VDT1 = CStr(rs111(3))

        Vno = Trim(rs111(2))
        acc = Trim(rs111(5))

        '--- Splitting Account Head

        If Len(Trim(rs111(6))) > 29 Then
            name1 = Mid$(rs111(6), 1, 75)
            'name2 = "- " + Mid$(rs111(6), 30, 40)
        Else
            name1 = IIf(IsNull(rs111(6)), "", rs111(6))
        End If

        '--- Splitting Narration 1
                    narr1a = Mid$(rs111(7), 1, 75)
                    narr2a = Mid$(rs111(7), 75, 75)
                    'narr3a = Mid$(rs111(7), 111, 55)
        '--- Spliting Narration 2



                   If Not IsNull(rs111(8)) Then narr1b = Mid$(rs111(8), 1, 50) Else narr1b = ""




        If IsNull(rs111(9)) = True Then cqno = "" Else cqno = Trim(rs111(9))
        If IsNull(rs111(10)) = True Then cqdt = "" Else cqdt = rs111(10)

        rec = rs111(11)

        If IsNull(rs111(12)) = True Then pay = 0 Else pay = rs111(12)
        If IsNull(rec) = True Or rec = 0 Then rec = "" Else pay = ""

        '--- Detail Printing

        If cont >= PageLen Then
            Print #1, Space(5) & String(151, "-")
            Print #1, Chr(12)
            Call prnhead1
        End If

        '--- CS 31/07/2001

        'Print #1, VDT1 + Space(7 - (Len(CStr(vno)))) + CStr(vno) + Space(1) + CStr(acc) + Space(1) + name1 + Space(30 - (Len(name1))) + narr1a + Space(37 - (Len(narr1a)) - (Len(cqno))) + CStr(cqno) + Space(20 - (Len(Format((CStr(Trim(rec))), "##,##,##,##,#00.00")))) + Format((CStr(rec)), "##,##,##,##,#00.00") + Space(19 - Len(Format((CStr(pay)), "##,##,##,##,#00.00"))) + Format((CStr(pay)), "##,##,##,##,#00.00")
        Print #1, Space(5) & VDT1 + Space(7 - (Len(CStr(Vno)))) + CStr(Vno) + Space(8) + Padr(name1, 75, " ") & Space(2) & Padr(IIf(IsNull(cqno), "", cqno), 12, " ") & Space(18 - (Len(INF((CStr(Trim(rec))), 2)))) + INF((CStr(rec)), 2) + Space(19 - Len(INF((CStr(pay)), 2))) + INF((CStr(pay)), 2)
        If narr1a <> "" Then
            Print #1, Space(30) & narr1a 'CStr(acc) +
            cont = cont + 1
          If cont >= PageLen Then
            Print #1, Space(5) & String(151, "-")
            Print #1, Chr(12)
            Call prnhead1
    End If

        End If

        'Print #1, Space(5) & VDT1 + Space(7 - (Len(CStr(vno)))) + CStr(vno) + Space(8) + name1 + Space(19) & Space(27 - Len(narr1a)) + CStr(cqno) + Space(12 - Len(cqno)) + Space(18 - (Len(INF((CStr(Trim(rec))), 2)))) + INF((CStr(rec)), 2) + Space(19 - Len(INF((CStr(pay)), 2))) + INF((CStr(pay)), 2)

    cont = cont + 1
    If cont >= PageLen Then
            Print #1, Space(5) & String(151, "-")
            Print #1, Chr(12)
            Call prnhead1
    End If


        name1 = ""
        'narr1a = ""

        '--- Cangrow printing for Narration and Account Head

        If Len(narr2a) > 1 Then
            If Len(narr2a) > 1 Then
                If narr2a <> "" Then Print #1, Space(30) + narr2a
            Else
                'Print #1, Space(5) & Space(25) + name2
            End If

            cont = cont + 1
            name2 = ""
            narr2a = ""
        Else
            If Len(narr2a) > 1 Then
                If cont > PageLen Then
                    Print #1, Space(5) & String(151, "-")
                    Print #1, Chr(12)
                    Call prnhead1
                Else
                    If narr2a <> "" Then Print #1, Space(30) + narr2a
                    cont = cont + 1

                End If
            End If

        End If


        If Len(name3) > 1 Then
            If cont > PageLen Then
                Print #1, Space(5) & String(151, "-")
                Print #1, Chr(12)
                Call prnhead1
            End If
            If Len(narr3a) > 1 Then
                Print #1, Space(5) & Space(25) + name3
                If narr3a <> "" Then Print #1, Space(30) + narr3a
            Else
                Print #1, Space(5) & Space(25) + name3

            End If

            cont = cont + 1
             If cont >= PageLen Then
                 Print #1, Space(5) & String(151, "-")
                 Print #1, Chr(12)
                 Call prnhead1
            End If
        Else
            If Len(narr3a) > 1 Then
                If cont > PageLen Then
                    Print #1, Space(5) & String(151, "-")
                    Print #1, Chr(12)
                    Call prnhead1
                Else
                    If narr3a <> "" Then Print #1, Space(30) + narr3a
                        cont = cont + 1
                        If cont >= PageLen Then
                            Print #1, Space(5) & String(151, "-")
                            Print #1, Chr(12)
                            Call prnhead1
                       End If

                End If
            End If

        End If



        If Len(narr1b) > 1 Then
            If cont >= PageLen Then
                Print #1, Space(5) & String(151, "-")
                Print #1, Chr(12)
                Call prnhead1
            End If
            If narr1b <> "" Then Print #1, Space(5) & Space(25) + narr1b
            cont = cont + 1
             If cont >= PageLen Then
                Print #1, Space(5) & String(151, "-")
                 Print #1, Chr(12)
                 Call prnhead1
            End If
        End If




        Print #1,
        cont = cont + 1
        VDT1 = "          "
        fla = False

        If rec = "" Or IsNull(rec) = True Then rec = 0 Else pay = 0

        '--- Calculating Day Total and Day Closing Balance

        dRec = dRec + rec
        dpay = IIf(dpay = "", 0, dpay) + pay
        opbal = opbal + rec - pay

        If f = True Then
            rs111.MoveNext
            If rs111.EOF = True Then
                rs111.MoveLast
                vdt = "12:00:00"
            End If
        Else
        End If

        '--- Day Closing Printing

        If Not vdt = rs111(3) Then

            If cont > PageLen Then
                Print #1, Chr(12)
                I = 0
                For I = 1 To 5
                    Print #1, Space(132)
                    cont = cont + 1
                Next
                Call prnhead1
            End If

            Print #1, Space(132)
            cont = cont + 1

            If dRec = 0 Then dRec = ""
            If dpay = 0 Then dpay = ""

            Print #1, Space(5) & Space(96) + "** Day Total **" + Space(2) + Space(19 - (Len(INF(dRec, 2)))) + CStr(INF(dRec, 2)) + Space(19 - Len(INF(dpay, 2))) + CStr(INF(dpay, 2))
            cont = cont + 1
             If cont >= PageLen Then
                Print #1, Space(5) & String(151, "-")
                 Print #1, Chr(12)
                 Call prnhead1
            End If

            Print #1, Space(132)
            cont = cont + 1
             If cont >= PageLen Then
                Print #1, Space(5) & String(151, "-")
                 Print #1, Chr(12)
                 Call prnhead1
            End If
            If opbal < 0 Then
                Dayopre = ""
                Dayoppa = Abs(opbal)
            Else
                Dayoppa = ""
                Dayopre = opbal
            End If
            Print #1, Space(5) & Space(86) + "** Day Closing Balance **" + Space(2) + Space(19 - Len(CStr(INF(Dayopre, 2)))) + CStr(INF(Dayopre, 2)) + Space(19 - Len(INF(CStr(Dayoppa), 2))) + INF(CStr(Dayoppa), 2)
            Print #1, Space(132)
            cont = cont + 2
             If cont >= PageLen Then
                Print #1, Space(5) & String(151, "-")
                 Print #1, Chr(12)
                 Call prnhead1
            End If
            dRec = 0
            dpay = 0
            fla = True

            If CStr(vdt) = "12:00:00 PM" Then rs111.MoveNext

        End If

    Loop

    '--- Last Total Printing

    If cont >= PageLen Then
        Print #1, Chr(12)
        I = 0
        For I = 1 To 20
            Print #1, Space(132)
            cont = cont + 1
        Next
        Call prnhead1
    End If

    Print #1, Space(132)

    Print #1, Space(5) & String(151, "-")
    Print #1, Space(5) & Space(94) + "** Grand Total **" + Space(21 - Len(INF(Trec, 2))) + CStr(INF(Trec, 2)) + Space(19 - Len(INF(tpay, 2))) + CStr(INF(tpay, 2))
    'Print #1, Space(74) + "** Grand Total **" + Padl(Trec)
    Print #1, Space(5) & String(151, "-")


    Print #1, Space(132)


    Dim ocr As String
    Dim ccr As String

    If opbalt < 0 Then
        ocr = "CR"
    Else
        ocr = ""
    End If

    If clobal < 0 Then
        ccr = "CR"
    Else
        ccr = ""
    End If

    Print #1, Space(5) & Space(65) + Chr(27) + "E" + "** CONTROL TOTAL **" + Chr(27) + "F"
    Print #1, Space(5) & Space(65) + "-------------------"
    Print #1, Space(5) & Space(132)
    Print #1, Space(5) & Space(50) + "Opening Balance          :" + Space(18 - Len(INF(Abs(opbalt), 2))) + CStr(INF(Abs(opbalt), 2)) + ocr
    Print #1, Space(5) & Space(50) + "Total Receipts           :" + Space(18 - Len(INF(Trec, 2))) + CStr(INF(Trec, 2))
    Print #1, Space(5) & Space(50) + "Total payments           :" + Space(18 - Len(INF(tpay, 2))) + CStr(INF(tpay, 2))
    Print #1, Space(5) & Space(50) + "Closing Balance          :" + Space(18 - Len(INF(Abs(clobal), 2))) + CStr(INF(Abs(clobal), 2)) + ccr
    Print #1, Space(5) & Space(67) + " * End of Report *"

    'Print #1, Space(57) + "     Cyber Korp    "
    Print #1, Chr(12)
    ocr = ""
    ccr = ""

    Close #1

    Open cBatchFileName For Output As #1

    Print #1, "@ECHO OFF"
    Print #1, "CD\"
    Print #1, "C:"
    Print #1, "CD\"
    Print #1, "type " & cOutputFilename & ">prn"
    Print #1, "CLS"

    Close #1

    Set csrep = New Report.ReportView
    csrep.txtfile = cOutputFilename
    csrep.Batfile = cBatchFileName

    Exit Sub

Err1:

End Sub
'20/10/04---------------------cashbook 80 cols---------------------------
Private Sub cashprint180()
    Dim yCshCntr As Integer
    Dim yesno As String
    Dim cOutputFilename As String
    Dim cBatchFileName As String

    'yesno = MsgBox("Do you want to Print?", vbYesNo, head)

    If Check1.value = False Then

        If loc_RepIndex = 1 Then 'Cash Book
            cOutputFilename = "C:\CASHBOOK.TXT"
        Else
            cOutputFilename = "C:\BANKBOOK.TXT"
        End If

        cBatchFileName = "C:\CASHBANK.BAT"

    Else

        If loc_RepIndex = 1 Then 'Cash Book
            cOutputFilename = "C:\CCSHBOOK.TXT"
        Else
            cOutputFilename = "C:\CBNKBOOK.TXT"
        End If

        cBatchFileName = "C:\CCSHBANK.BAT"

    End If
On Error Resume Next
Close #1
    Open cOutputFilename For Output As #1

    Dim DB As New Connection
    Set DB = New Connection
    DB.Open connectstring

    Set rs111 = New Recordset
    Set RS112 = New Recordset

    '------ DIVISION WISE

    If Check1.value = False Then

        If loc_RepIndex = 2 Then

            '---- Bank Book

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0) AS totrec, ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, " & _
                "(ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ " & _
                " ISNULL(H.crctot,0)) AS clbal FROM (SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE divcode = '" & Divcode & "' AND yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = (SELECT glcode FROM fa_tcmas WHERE tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) op) A, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc =CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I", DB, adOpenStatic, adLockBatchOptimistic


        Else

            '-----Cash Print

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0)  AS totrec, " & _
                " ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ " & _
                " ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ ISNULL(H.crctot,0) ) AS clbal FROM " & _
                " ( SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE divcode = '" & Divcode & "' AND yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = " & _
                "(SELECT glcode FROM fa_tcmas WHERE tc=CONVERT(varchar," & Mid(Combo5.Text, 1, 2) & ")))op ) A,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I ", DB, adOpenStatic, adLockReadOnly
        End If

    Else

        ' CONSOLIDATED BOOKS

        If loc_RepIndex = 2 Then

            '---- Bank Book

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0) AS totrec, ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, " & _
                "(ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ " & _
                " ISNULL(H.crctot,0)) AS clbal FROM (SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = (SELECT glcode FROM fa_tcmas WHERE tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) op) A, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc =CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I", DB, adOpenStatic, adLockBatchOptimistic


        Else

            '-----Cash Print

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0)  AS totrec, " & _
                " ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ " & _
                " ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ ISNULL(H.crctot,0) ) AS clbal FROM " & _
                " ( SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = " & _
                "(SELECT glcode FROM fa_tcmas WHERE tc=CONVERT(varchar," & Mid(Combo5.Text, 1, 2) & ")))op ) A,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I ", DB, adOpenStatic, adLockBatchOptimistic
        End If

    End If

    Dim Calc As Variant
    Dim rec As Variant
    Dim Dayopre As Variant
    Dim Dayoppa As Variant
    Dim pay As Variant
    Dim narr1a As String
    Dim narr2a As String
    Dim narr3a As String
    Dim narr4a As String
    Dim narr5a As String
    Dim narr6a As String
    Dim narr1b As String
    Dim narr2b As String
    Dim narr3b As String
    Dim narr4b As String
    Dim name1 As String
    Dim name2 As String
    Dim cqno As String
    Dim cqdt As String
    Dim vdt As String
    Dim Vno As String
    Dim acco As String
    Dim f As Boolean

    pagein = 0

    If rs111.BOF Then
        Close #1
        Screen.MousePointer = 0
        MsgBox "No records found", vbInformation, head
        Exit Sub
    End If

    opbal = rs111(0)
    opbalt = rs111(0)
    opbal1 = rs111(0)
    clobal = rs111(3)
    Trec = rs111(1)
    tpay = rs111(2)

    cont = 0

    Set RS112 = New Recordset
    RS112.Open "select tchead,glcode from fa_tcmas where tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) ", DB, adOpenStatic, adLockBatchOptimistic
    Tche = RS112(0)

    '=======================================
    ' START PRINTING
    '=======================================

    Call Prnhead80
    Print #1,
    cont = cont + 1
    If opbal < 0 Then
        oppay = Abs(opbal)
        opbal1 = ""
    Else
        oppay = ""
    End If

    If IsNull(RS112(1)) = True Then Glco = "      " Else Glco = RS112(1)
    Tche = RS112(0)

    ' Opening Balance Printing

    'Print #1, Space(5) & Space(16) + Glco + Space(3) & Padr(Tche, 35, " ") & Space(30) + "** Opening Balance **" + Space(2) + Space(19 - (Len(INF(CStr(opbal1), 2)))) + INF(CStr(opbal1), 2) + Space(19 - Len(INF(CStr(oppay), 2))) + INF(CStr(oppay), 2)

    'modified
     Print #1, Space(3) & Padr(Glco, 6, " ") + Space(2) & Padr(Tche, 24, " ") & "** Opening Balance **" + Space(4) + Padl(INF(CStr(opbal1), 2), 14, " ") & Space(3) & Padl(INF(CStr(oppay), 2), 13, " ")
        cont = cont + 1
        Print #1,
        cont = cont + 1


    Set rs111 = New Recordset
    ' DIVISION WISE

    If Check1.value = False Then

        If loc_RepIndex <> 1 Then

            '-------Bank Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS INTEGER) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All " & _
                "SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, vocsno", DB, adOpenStatic, adLockBatchOptimistic

        Else

            '-------Cash Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, a.vocsno", DB, adOpenStatic, adLockBatchOptimistic
        End If
    Else
        'CONSOLIDATED
        If loc_RepIndex <> 1 Then

            '-------Bank Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS INTEGER) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All " & _
                "SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, vocsno", DB, adOpenStatic, adLockBatchOptimistic

        Else

            '-------Cash Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT FROM FA_PAYLINE a,fa_payhead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, a.vocsno", DB, adOpenStatic, adLockBatchOptimistic
        End If
    End If

    fla = True
    f = True

    If rs111.RecordCount > 0 Then
        rs111.MoveFirst
    End If

    Dim CshRec
    Dim CshPay

    Do While Not rs111.EOF
            If cont >= (PageLen + 3) Then
                Print #1, Space(3) & String(86, "-")
                Print #1, Chr(12)
                Call Prnhead80
                VDT1 = CStr(rs111(3))
                Print #1, Space(3) & Format(VDT1, "dd/mm/yy"); ' + Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
                dateflg = True
        End If

  '      MsgBox CStr(rs111(3))

        If rs111.EOF = True Then f = False

        vdt = Trim(rs111(3))

        If fla = True Then VDT1 = CStr(rs111(3))

        Vno = Trim(rs111(2))
        acc = Trim(rs111(5))

        '--- Splitting Account Head

        If Len(Trim(rs111(6))) > 150 Then
            name1 = Mid$(rs111(6), 1, 78)
            name2 = "- " + Mid$(rs111(6), 79, 78)
        Else
            name1 = IIf(IsNull(rs111(6)), "", rs111(6))
        End If

        '--- Splitting Narration 1
     narration = IIf(IsNull(rs111(7)), "", rs111(7))
     startpt = IIf(InStrRev(Left(narration, 75), " ") = 0, 75, InStrRev(Left(narration, 75), " "))
     If Len(narration) > 30 Then narr1a = Mid$(narration, 1, 30) Else narr1a = narration
     If Len(narration) > 30 Then narration = Trim(Right(narration, Len(narration) - 30)) Else narration = ""
     startpt = IIf(InStrRev(Left(narration, 75), " ") = 0, 75, InStrRev(Left(narration, 75), " "))
     If Len(narration) > 30 Then narr2a = Mid$(narration, 1, 30) Else narr2a = narration
'     If Len(narration) > 27 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
'     startpt = IIf(InStrRev(Left(narration, 27), " ") = 0, 27, InStrRev(Left(narration, 27), " "))
'     If Len(narration) > 27 Then narr3a = Mid$(narration, 1, startpt) Else narr3a = narration
'     If Len(narration) > 27 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
'     startpt = IIf(InStrRev(Left(narration, 27), " ") = 0, 27, InStrRev(Left(narration, 27), " "))
'     If Len(narration) > 27 Then narr4a = Mid$(narration, 1, startpt) Else narr4a = narration
'     If Len(narration) > 27 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
'     startpt = IIf(InStrRev(Left(narration, 27), " ") = 0, 27, InStrRev(Left(narration, 27), " "))
'     If Len(narration) > 27 Then narr5a = Mid$(narration, 1, startpt) Else narr5a = narration
'     If Len(narration) > 27 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
'     narr6a = Padr(narration, 25, " ")
    narr1a = Mid(Trim(narr1a), 1, 35)
    narr2a = ""
    'narr3a = Trim(narr3a)
    'narr4a = Trim(narr4a)
    'narr5a = Trim(narr5a)
    'narr6a = Trim(narr6a)


        If IsNull(rs111(8)) Then
            narr1b = 0
        Else
           narr1b = IIf(IsNull(rs111(8)), 0, Mid$(rs111(8), 1, 78))
        End If

        If IsNull(rs111(9)) = True Then cqno = "" Else cqno = Trim(rs111(9))
        If IsNull(rs111(10)) = True Then cqdt = "" Else cqdt = rs111(10)

        rec = rs111(11)

        If IsNull(rs111(12)) = True Then pay = 0 Else pay = rs111(12)
        If IsNull(rec) = True Or rec = 0 Then rec = "" Else pay = ""

        '--- Detail Printing

        If cont >= (PageLen + 3) Then
            Print #1, Space(3) & String(86, "-")
            Print #1, Chr(12)
            Call Prnhead80
            VDT1 = Format(CStr(rs111(3)), "DD/MM/YY")
            Print #1, Space(3) & VDT1; ' + Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
            dateflg = True
        End If


        'Modified
        If cqno = 0 Then
            cqno = ""
        Else
            cqno = cqno
        End If
'         If vdt = "17/06/2005" Then MsgBox vno

        If dateflg = True Then
            VDT1 = ""
            If dflg2 = True Then
                    Print #1, Space(11) & Format(Trim(VDT1), "dd/mm/yy") + Space(4) & Padl(CStr(Vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
            Else
                    Print #1, Space(0) & Format(Trim(VDT1), "dd/mm/yy") + Space(4) & Padl(CStr(Vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
            End If
            dflg2 = False
        Else
            Print #1, Space(3) & Padl(Format(VDT1, "dd/mm/yy"), 8, " ") + Space(4) & Padl(CStr(Vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
        End If

        '***  Print #1, Space(5) & Format(VDT1, "dd/mm/yy") + Space(7 - (Len(CStr(vno)))) + CStr(vno) + Space(8) + Padr(name1, 40, " ") & Space(20) + CStr(cqno) + Space(12 - Len(cqno)) + Space(16 - (Len(INF((CStr(Trim(rec))), 2)))) + INF((CStr(rec)), 2) + Space(19 - Len(INF((CStr(pay)), 2))) + INF((CStr(pay)), 2)

        cont = cont + 1
        dateflg = False

        If cont >= (PageLen + 3) Then
            Print #1, Space(3) & String(86, "-")
            Print #1, Chr(12)
            Call Prnhead80
            VDT1 = CStr(rs111(3))
            Print #1, Space(3) & Format(VDT1, "dd/mm/yy"); ' + Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
            dateflg = True
        End If

        If narr1a <> "" Then
            If dateflg = True Then
                    Print #1, Space(8) & narr1a
                    dflg2 = True
            Else
                    Print #1, Space(19) & narr1a
                    dflg2 = False
            End If
            cont = cont + 1
        End If

         If cont >= (PageLen + 3) Then
            Print #1, Space(3) & String(86, "-")
            Print #1, Chr(12)
            Call Prnhead80
            VDT1 = CStr(rs111(3))
            Print #1, Space(3) & Format(VDT1, "dd/mm/yy"); '+ Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
            dateflg = True
         End If

        name1 = ""
        narr1a = ""
        '--- Cangrow printing for Narration and Account Head

        If Len(name2) > 1 Then
            If cont >= (PageLen + 3) Then
                Print #1, Space(3) & String(86, "-")
                Print #1, Chr(12)
                Call Prnhead80
                VDT1 = CStr(rs111(3))
                Print #1, Space(3) & Format(VDT1, "dd/mm/yy"); '+ Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
                dateflg = True
            End If


            If cont >= (PageLen + 3) Then
                Print #1, Space(3) & String(86, "-")
                Print #1, Chr(12)
                Call Prnhead80
                VDT1 = CStr(rs111(3))
                Print #1, Space(3) & Format(VDT1, "dd/mm/yy"); ' + Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
                dateflg = True
            End If
            name2 = ""
            narr2a = ""
        Else
            If Len(narr2a) > 1 Then
                If cont >= (PageLen + 3) Then
                    Print #1, Space(3) & String(86, "-")
                    Print #1, Chr(12)
                    Call Prnhead80
                    VDT1 = CStr(rs111(3))
                    Print #1, Space(3) & Format(VDT1, "dd/mm/yy"); ' + Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
                    dateflg = True
                Else
                If narr2a <> "" Then Print #1, Space(9) + narr2a
                    cont = cont + 1
                    narr2a = ""
                End If
            End If
        End If

        If cont >= (PageLen + 3) Then
            Print #1, Space(3) & String(86, "-")
            Print #1, Chr(12)
            Call Prnhead80
            VDT1 = CStr(rs111(3))
            Print #1, Space(3) & Format(VDT1, "dd/mm/yy"); ' + Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
            dateflg = True
        End If


        VDT1 = "        "
        fla = False

        If rec = "" Or IsNull(rec) = True Then rec = 0 Else pay = 0

        '--- Calculating Day Total and Day Closing Balance

        dRec = dRec + rec
        dpay = IIf(dpay = "", 0, dpay) + pay
        opbal = opbal + rec - pay

        If f = True Then
            rs111.MoveNext
            If rs111.EOF = True Then
                rs111.MoveLast
                vdt = "12:00:00"
            End If
        Else
        End If

        '--- Day Closing Printing

        If Not vdt = rs111(3) Then
            If cont >= (PageLen + 3) Then
                Print #1, Space(3) & String(86, "-")
                Print #1, Chr(12)
                I = 0
                For I = 1 To 5
                    Print #1,
                    cont = cont + 1
                Next
                Call Prnhead80
                VDT1 = CStr(rs111(3))
                Print #1, Space(3) & Format(VDT1, "dd/mm/yy"); ' + Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
                dateflg = True
            End If

           If cont >= (PageLen + 3) Then
                Print #1, Space(3) & String(86, "-")
                Print #1, Chr(12)
                Call Prnhead80
                VDT1 = CStr(rs111(3))
                Print #1, Space(3) & Format(VDT1, "dd/mm/yy"); ' + Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
                dateflg = True
           End If

            CshRec = CshRec + dRec
            CshPay = CshPay + dpay

            If dRec = 0 Then dRec = ""
            If dpay = 0 Then dpay = ""

            '*** Print #1, Space(5) & Space(15) + "** Day Total **" + Space(15) + Space(19 - (Len(INF(drec, 2)))) + CStr(INF(drec, 2)) + Space(19 - Len(INF(DPAY, 2))) + CStr(INF(DPAY, 2))

            If dateflg = True Then
                Print #1, Space(3) & Space(21) + "** Day Total **" + Space(10) & Chr(27) & "E" + Padl(INF(dRec, 2), 14, " ") + Space(1) & Padl(INF(dpay, 2), 13, " ") & Chr(27) & "F"
                dateflg = False
            Else
                Print #1, Space(3) & Space(32) + "** Day Total **" + Space(10) & Chr(27) & "E" & Padl(INF(dRec, 2), 14, " ") + Space(1) & Padl(INF(dpay, 2), 13, " ") & Chr(27) & "F"
            End If

'***Day Closing
            If opbal < 0 Then
                Dayopre = ""
                Dayoppa = Abs(opbal)
            Else
                Dayoppa = ""
                Dayopre = opbal
            End If

            Print #1, Space(3) & Space(32) + "** Day Closing Balance **" + Space(0) + Chr(27) & "E" & Padl(CStr(INF(Dayopre, 2)), 14, " ") & Padl(INF(CStr(Dayoppa), 2), 14, " ") & Chr(27) & "F"


            cont = cont + 2
            Print #1,
            cont = cont + 1

            If cont >= (PageLen + 3) Then
                Print #1, Space(3) & String(86, "-")
                Print #1, Chr(12)
                Call Prnhead80
                VDT1 = CStr(rs111(3))
                Print #1, Space(3) & Format(VDT1, "dd/mm/yy"); ' + Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
                dateflg = True
            End If


            If cont >= (PageLen + 3) Then
                Print #1, Space(3) & String(86, "-")
                Print #1, Chr(12)
                Call Prnhead80
                VDT1 = CStr(rs111(3))
                Print #1, Space(3) & Format(VDT1, "dd/mm/yy"); ' + Space(4) & Padl(CStr(vno), 3, " ") + Space(1) + Padr(name1, 35, " ") & Space(0) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
                dateflg = True
            End If

            dRec = 0
            dpay = 0
            fla = True
            If CStr(vdt) = "12:00:00" Then rs111.MoveNext
        End If
    Loop


    If cont >= (PageLen + 3) Then
        Print #1, Space(3) & String(86, "-")
        Print #1, Chr(12)
        Call Prnhead80
    End If

    Print #1, Space(3) & String(86, "-")
    cont = cont + 1
    If cont >= (PageLen + 3) Then
        Print #1, Space(3) & String(86, "-")
        Print #1, Chr(12)
        Call Prnhead80
    End If

    '***Print #1, Space(5) & Space(72) + "** Grand Total **" + Chr(27); "E" + Space(22 - Len(INF(Trec, 2))) + CStr(INF(Trec, 2)) + Space(1) + Space(19 - Len(INF(tpay, 2))) + CStr(INF(tpay, 2)) + Chr(27); "F"
    Print #1, Space(3) & Space(32) + "** Grand Total **" + Space(8) & Chr(27) & "E" & Padl(INF(CshRec, 2), 14, " ") & Space(0) + Padl(INF(CshPay, 2), 14, " ") & Chr(27) & "F"
    cont = cont + 1

    Print #1, Space(3) & String(86, "-")
    cont = cont + 1

    Dim ocr As String
    Dim ccr As String

    If opbalt < 0 Then
        ocr = "CR"
    Else
        ocr = ""
    End If

    If clobal < 0 Then
        ccr = "CR"
    Else
        ccr = ""
    End If

       Print #1, Chr(12)
       Print #1, Chr(18); Space(5) & CENTRE(Chr(27) & "E" & divname & Chr(27) & "F", 85, " ")
       Print #1,
       Print #1,
       Print #1,
       Print #1, Space(35) & Chr(27) & "E" & "** CONTROL TOTAL ** " & Chr(27) & "F"
       Print #1, Space(35) & "------------------- "
       Print #1, Space(26) & "Opening Balance          :" & Chr(27) & "E" + Space(18 - Len(INF(Abs(opbalt), 2))) + CStr(INF(Abs(opbalt), 2)) + ocr & Chr(27) & "F"
       Print #1, Space(26) & "Total Receipts           :" & Chr(27) & "E" + Space(18 - Len(INF(CshRec, 2))) + CStr(INF(CshRec, 2)) & Chr(27) & "F"
       Print #1, Space(26) & "Total payments           :" & Chr(27) & "E" + Space(18 - Len(INF(CshPay, 2))) + CStr(INF(CshPay, 2)) & Chr(27) & "F"
       Print #1, Space(26) & "Closing Balance          :" & Chr(27) & "E" + Space(18 - Len(INF(Abs(clobal), 2))) + CStr(INF(Abs(clobal), 2)) + ccr & Chr(27) & "F"
       Print #1, Space(35) & " * End of Report *"
       Print #1, Chr(12)

    ocr = ""
    ccr = ""

    Close #1




    Open cBatchFileName For Output As #1

    Print #1, "@ECHO OFF"
    Print #1, "CD\"
    Print #1, "C:"
    Print #1, "CD\"
    Print #1, "type " & cOutputFilename & ">prn"
    Print #1, "CLS"

    Close #1

    Set csrep = New Report.ReportView
    csrep.txtfile = cOutputFilename
    csrep.Batfile = cBatchFileName

    Exit Sub

Err1:

End Sub

'-----------------------------report header 80 cols -----20/10/04
Private Sub Prnhead80()

    On Error GoTo Err1

    pagein = pagein + 1

    If pagein > 1 Then
        co = co + 1
        VDT1 = "          "
        I = 1
    End If
    Print #1, Chr(18)
    cont = 0
    If Check1.value = 1 Then
       Print #1, Chr(18); Space(5) & CENTRE(Chr(27) & "E" & divname & Chr(27) & "F", 85, " ")
    Else
        Print #1, Chr(18) & Space(5) & CENTRE(Chr(27) & "E" & divname & Chr(27) & "F", 85, " ")
    End If
    cont = cont + 1
    Print #1, Chr(18)
    cont = cont + 1

 If loc_RepIndex = 1 Then
        If Check1.value = 0 Then
''**             Print #1, Space(5) & Chr(27) + "E" + Padr(Tche + " BOOK FROM " + MaskEdBox1.Text + " TO " + MaskEdBox2.Text, 103, " ") & Chr(27) + "F" & "Dt. : " & CStr(pdate) + Space(2); "Pg. :" + Padl(CStr(PAGEIN), 2, " ")
            Print #1, Space(3) & Padr("CASH DAY BOOK    FROM " + Format(MaskEdBox1.Text, "DD/MM/YY") + " TO " + Format(MaskEdBox2.Text, "DD/MM/YY"), 66, " ") & Space(9) & "Pg.No :" + Padl(CStr(pagein), 3, " ")
            cont = cont + 1
        Else
''**             Print #1, Space(5) & Chr(27) + "E" + Padr("CONSOLIDATED " + Tche + " BOOK FROM " + MaskEdBox1.Text + " TO " + MaskEdBox2.Text, 120, " ") + Chr(27) + "F" & "Dt. : " & CStr(pdate) + Space(4); "Pg. :" + Padl(CStr(PAGEIN), 4, " ")
            Print #1, Space(5) & Padr("CONSOLIDATED " + Tche + " BOOK FROM " + Format(MaskEdBox1.Text, "DD/MM/YY") + " TO " + Format(MaskEdBox2.Text, "DD/MM/YY"), 50, " ") & "Dt. : " & Format(CStr(pdate), "DD/MM/YY") + Space(4); "Pg. :" + Padl(CStr(pagein), 3, " ")
            cont = cont + 1
        End If
    End If


    If loc_RepIndex = 2 Then
        If Check1.value = 0 Then
'***                Print #1, Space(5) & Padr(Tche + " BOOK FROM " + Format(MaskEdBox1.Text, "DD/MM/YY") + "  TO  " + Format(MaskEdBox2.Text, "DD/MM/YY"), 50, " ") & Space(6) & "Dt. : " & Format(CStr(pdate), "DD/MM/YY") + Space(4) & "Pg. :" + Padl(CStr(PAGEIN), 3, " ")
           Print #1, Space(3) & Padr(Tche + " BOOK FROM " + Format(MaskEdBox1.Text, "DD/MM/YY") + "  TO  " + Format(MaskEdBox2.Text, "DD/MM/YY"), 68, " ") & Space(2) & Space(4) & "Pg.No :" + Padl(CStr(pagein), 3, " ")
        Else
           Print #1, Space(5) & Padr("CONSOLIDATED " + Tche + " BOOK FROM " + Format(MaskEdBox1.Text, "DD/MM/YY") + " TO " + Format(MaskEdBox2.Text, "DD/MM/YY") & Space(2), 50, " ") & "Dt. : " & Format(CStr(pdate), "DD/MM/YY") + Space(1) & "Pg. :  " + Padl(CStr(pagein), 4, " ")
        End If
    cont = cont + 1
    End If


    If loc_RepIndex = 1 Then
    If Check1.value = False Then
        Print #1, Space(3) & String(86, "-")
'***        Print #1, Space(5) & "Date" + Space(2) + Space(3) + "Voc-No" + Space(1) + "Code" + Space(3) + "Description" + Space(46) + "Chq/ref-No"; Space(3) + Space(9) + "Receipts" + Space(11) + "Payments"
        Print #1, Space(3) & "Code" + Space(4) & "Account Head"
        Print #1, Space(3) & "Date" + Space(4) & "Voc.No." + Space(1) + "Narrations" + Space(21) + "Chq/Ref-No" & Space(6) & "Receipts" & Space(6) & "Payments"
        Print #1, Space(3) & String(86, "-")
    Else
        Print #1, Space(5) & String(130, "-")
        Print #1, Space(5) & Space(2) + "Date" + Space(3) + "Voc-No" + Space(1) + "Code" + Space(3) + "Description" & Space(46) + "Chq/ref-No"; Space(3) + Space(9) + "Receipts" + Space(11) + "Payments"
        Print #1, Space(5) & String(130, "-")
    End If
Else
If Check1.value = False Then
    Print #1, Space(3) & String(86, "-")
'**    Print #1, Space(5) & Space(2) + "Date" + Space(5) + "Voc-No" + Space(1) + "Code" + Space(3) + "Description" + Space(46) + "Chq/ref-No"; Space(3) + Space(9) + "Receipts" + Space(10) + "Payments"
        Print #1, Space(3) & "Code  " + Space(10) & "Account Head"
        Print #1, Space(3) & "Date" + Space(4) & "Voc.No." + Space(1) + "Narration" + Space(22) + "Chq/Ref-No" & Space(6) & "Receipts" & Space(6) & "Payments"
        Print #1, Space(3) & String(86, "-")
Else
    Print #1, Space(5) & String(130, "-")
    Print #1, Space(5) & Space(2) + "Date" + Space(5) + "Voc-No" + Space(1) + "Code" + Space(3) + "Description" & Space(46) + "Chq/ref-No"; Space(3) + Space(9) + "Receipts" + Space(10) + "Payments"
    Print #1, Space(5) & String(130, "-")
End If

End If
    cont = cont + 3

Err1:

End Sub



'----------20/10/04-----------------bankbook-------80 cols

Private Sub cashprint280()

    Dim yesno As String
    Dim cOutputFilename As String
    Dim cBatchFileName As String
    YBnkCntr = 0
    'yesno = MsgBox("Do you want to Print?", vbYesNo, head)

    If Check1.value = False Then

        If loc_RepIndex = 1 Then 'Cash Book
            cOutputFilename = "C:\CASHBOOK.TXT"
        Else
            cOutputFilename = "C:\BANKBOOK.TXT"
        End If

        cBatchFileName = "C:\CASHBANK.BAT"

    Else

        If loc_RepIndex = 1 Then 'Cash Book
            cOutputFilename = "C:\CCSHBOOK.TXT"
        Else
            cOutputFilename = "C:\CBNKBOOK.TXT"
        End If

        cBatchFileName = "C:\CCSHBANK.BAT"

    End If

    Open cOutputFilename For Output As #1

    Dim DB As New Connection
    Set DB = New Connection
    DB.Open connectstring

    Set rs111 = New Recordset
    Set RS112 = New Recordset

    '------ DIVISION WISE

    If Check1.value = False Then

        If loc_RepIndex = 2 Then

            '---- Bank Book

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0) AS totrec, ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, " & _
                "(ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ " & _
                " ISNULL(H.crctot,0)) AS clbal FROM (SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE divcode = '" & Divcode & "' AND yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = (SELECT glcode FROM fa_tcmas WHERE tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) op) A, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc =CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I", DB, adOpenStatic, adLockBatchOptimistic


        Else

            '-----Cash Print

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0)  AS totrec, " & _
                " ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ " & _
                " ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ ISNULL(H.crctot,0) ) AS clbal FROM " & _
                " ( SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE divcode = '" & Divcode & "' AND yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = " & _
                "(SELECT glcode FROM fa_tcmas WHERE tc=CONVERT(varchar," & Mid(Combo5.Text, 1, 2) & ")))op ) A,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE DIVCODE = '" & Divcode & "' AND TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE DIVCODE = '" & Divcode & "' AND TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I ", DB, adOpenStatic, adLockBatchOptimistic
        End If

    Else

        ' CONSOLIDATED BOOKS

        If loc_RepIndex = 2 Then

            '---- Bank Book

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0) AS totrec, ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, " & _
                "(ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ " & _
                " ISNULL(H.crctot,0)) AS clbal FROM (SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = (SELECT glcode FROM fa_tcmas WHERE tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) op) A, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "'  AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc =CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I", DB, adOpenStatic, adLockBatchOptimistic


        Else

            '-----Cash Print

            rs111.Open "SELECT (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+  ISNULL(e.ppctot,0) ) AS opbal,ISNULL(f.crtot,0)+ISNULL(I.cpctot,0)  AS totrec, " & _
                " ABS((ISNULL(g.cptot,0)+ISNULL(H.crctot,0))) AS totpay, (ISNULL(a.openbal,0)+ISNULL(b.prtot,0)+ISNULL(c.pptot,0)+ISNULL(d.prctot,0)+ " & _
                " ISNULL(e.ppctot,0)+ISNULL(f.crtot,0)+ISNULL(g.cptot,0)+ISNULL(I.cpctot,0)+ ISNULL(H.crctot,0) ) AS clbal FROM " & _
                " ( SELECT SUM(op.openbal) openbal FROM (SELECT 0 AS openbal UNION SELECT ISNULL(debit,0)-ISNULL(credit,0) AS openbal FROM fa_glbal " & _
                " WHERE yearmonth = '" & Format(yfdate, "yyyy") & "00" & "' AND glcode = " & _
                "(SELECT glcode FROM fa_tcmas WHERE tc=CONVERT(varchar," & Mid(Combo5.Text, 1, 2) & ")))op ) A,  (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS prtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') B, " & _
                " (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS pptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "') C, " & _
                " (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS prctot FROM FA_RECLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) D,  (SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS ppctot FROM FA_PAYLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(yfdate, "DD-MMM-YYYY") & "' AND VOCDT < '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) E, (SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS crtot FROM FA_RECLINE " & _
                " WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') F, " & _
                "(SELECT SUM(ISNULL(CREDIT,0)-ISNULL(DEBIT,0)) AS cptot FROM FA_PAYLINE  WHERE TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "') G,(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS crctot FROM FA_RECLINE " & _
                " WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND  ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) H," & _
                "(SELECT SUM(ISNULL(DEBIT,0)-ISNULL(CREDIT,0)) AS cpctot FROM FA_PAYLINE WHERE TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "'  AND VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND " & _
                " ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC))) I ", DB, adOpenStatic, adLockBatchOptimistic
        End If

    End If

    Dim Calc As Variant
    Dim rec As Variant
    Dim Dayopre As Variant
    Dim Dayoppa As Variant
    Dim pay As Variant
    Dim narr1a As String
    Dim narr2a As String
    Dim narr3a As String
    Dim narr4a As String
    Dim narr5a As String
    Dim narr6a As String
    Dim narr1b As String
    Dim narr2b As String
    Dim narr3b As String
    Dim narr4b As String
    Dim name1 As String
    Dim name2 As String
    Dim cqno As String
    Dim cqdt As String
    Dim vdt As String
    Dim Vno As String
    Dim acco As String
    Dim f As Boolean

    pagein = 0

    If rs111.BOF Then
        Close #1
        Screen.MousePointer = 0
        MsgBox "No records found", vbInformation, head
        Exit Sub
    End If

    opbal = rs111(0)
    opbalt = rs111(0)
    opbal1 = rs111(0)
    clobal = rs111(3)
    Trec = rs111(1)
    tpay = rs111(2)

    cont = 0

    Set RS112 = New Recordset
    RS112.Open "select tchead,glcode from fa_tcmas where tc=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) ", DB, adOpenStatic, adLockBatchOptimistic
    Tche = RS112(0)

    '=======================================
    ' START PRINTING
    '=======================================
 'Bank Book Yoganand
    Call Prnhead80



    If opbal < 0 Then
        oppay = Abs(opbal)
        opbal1 = ""
    Else
        oppay = ""
    End If

    If IsNull(RS112(1)) = True Then Glco = "      " Else Glco = RS112(1)
    Tche = RS112(0)

    ' Opening Balance Printing

    Print #1, Space(3) & Glco + Space(2) & Padr(Tche, 22, " ") & Space(3) & "** Opening Balance **" + Space(3) + Padl(INF(CStr(opbal1), 2), 14, " ") & Space(0) & Padl(INF(CStr(oppay), 2), 14, " ")
    cont = cont + 1
    Print #1,
    cont = cont + 1

    'Print #1, Space(5) & Space(11) + Glco + Space(8) + Padr(Tche, 45, " ") & Space(2) & "** Opening Balance **" + Space(4) + Chr(27); "E" + Space(21 - (Len(INF(CStr(opbal1), 2)))) + INF(CStr(opbal1), 2) + Space(19 - Len(INF(CStr(oppay), 2))) + INF(CStr(oppay), 2)

    Set rs111 = New Recordset
    ' DIVISION WISE

    If Check1.value = False Then

        If loc_RepIndex <> 1 Then

            '-------Bank Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS INTEGER) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All " & _
                "SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, vocsno", DB, adOpenStatic, adLockBatchOptimistic

        Else

            '-------Cash Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.DIVCODE = '" & Divcode & "' AND a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, a.vocsno", DB, adOpenStatic, adLockBatchOptimistic
        End If
    Else
        'CONSOLIDATED
        If loc_RepIndex <> 1 Then

            '-------Bank Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS INTEGER) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All " & _
                "SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All " & _
                "SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, vocsno", DB, adOpenStatic, adLockBatchOptimistic

        Else

            '-------Cash Book

            rs111.Open "SELECT 'Rcpt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'Pymt' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.CREDIT AS RECEIPT,a.DEBIT AS PAYMENT FROM FA_PAYLINE a,fa_payhead b WHERE a.TC=CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "'  and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC " & _
                "Union All SELECT 'RCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_RECLINE a,fa_rechead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC)) and a.divcode=b.divcode and a.vocno=b.vocno and  " & _
                "a.vocdt = B.vocdt And a.TC = B.TC  " & _
                "Union All SELECT 'PCon' AS ttype, a.TC,a.VOCNO,a.VOCDT,a.VOCSNO,a.ACCODE,(case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) head,a.NARRATION1,a.NARRATION2, " & _
                "b.chqno,b.chqdt,a.DEBIT AS RECEIPT,a.CREDIT AS PAYMENT " & _
                "FROM FA_PAYLINE a,fa_payhead b WHERE a.TC <> CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) AND a.VOCDT >= '" & Format(MaskEdBox1.Text, "dd-mmm-yyyy") & "' " & _
                "AND a.VOCDT <= '" & Format(MaskEdBox2.Text, "dd-mmm-yyyy") & "' AND a.ACCODE = (SELECT glcode FROM fa_tcmas WHERE tc = CAST(" & Mid(Combo5.Text, 1, 2) & " AS NUMERIC) and a.divcode=b.divcode and a.vocno=b.vocno and " & _
                "a.vocdt = B.vocdt And a.TC = B.TC) " & _
                "ORDER BY a.vocdt, ttype, a.vocno, a.vocsno", DB, adOpenStatic, adLockBatchOptimistic
        End If
    End If

    fla = True
    f = True

    If rs111.RecordCount > 0 Then
        rs111.MoveFirst
    End If

    Dim BnkRec
    Dim BnkPay

    Do While Not rs111.EOF

        If cont >= (PageLen + 2) Then
                Print #1, Space(3) & String(86, "-")
                Print #1, Chr(12)
                Call Prnhead80
                VDT1 = CStr(rs111(3))
                Print #1, Space(3) & Padr(Format(VDT1, "dd/mm/yy"), 8, " ");
                datflg = True
        End If

        If rs111.EOF = True Then f = False

        vdt = Trim(rs111(3))

        If fla = True Then VDT1 = CStr(rs111(3))

        Vno = Trim(rs111(2))
        acc = Trim(rs111(5))

        '--- Splitting Account Head

        If Len(Trim(rs111(6))) > 29 Then
            name1 = Mid$(rs111(6), 1, 30)
            'name2 = "- " + Mid$(rs111(6), 30, 40)
        Else
            name1 = IIf(IsNull(rs111(6)), "", rs111(6))
        End If

        '--- Splitting Narration 1
                    narr1a = Mid$(rs111(7), 1, 35)
                   ' narr2a = Mid$(rs111(7), 31, 70)
                    'narr3a = Mid$(rs111(7), 111, 55)
        '--- Spliting Narration 2

        If Not IsNull(rs111(8)) Then narr1b = Mid$(rs111(8), 1, 50) Else narr1b = ""
        narr1b = ""
        If IsNull(rs111(9)) = True Then cqno = "" Else cqno = Trim(rs111(9))
        If IsNull(rs111(10)) = True Then cqdt = "" Else cqdt = rs111(10)

        rec = rs111(11)

        If IsNull(rs111(12)) = True Then pay = 0 Else pay = rs111(12)
        If IsNull(rec) = True Or rec = 0 Then rec = "" Else pay = ""

        '--- Detail Printing

        If cont >= (PageLen + 2) Then
            Print #1, Space(3) & String(86, "-")
            Print #1, Chr(12)
            Call Prnhead80
            VDT1 = CStr(rs111(3))
            Print #1, Space(3) & Padr(Format(VDT1, "dd/mm/yy"), 8, " ");
            datflg = True
        End If

        '--- CS 31/07/2001

        If cqno = "0" Then
            cqno = ""
        Else
        cqno = cqno
       End If


            If datflg = True Then
                VDT1 = ""
                Print #1, Space(4) & Padl(CStr(Vno), 3, " ") + Space(1) + Padr(name1, 30, " ") & Space(5) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
                cont = cont + 1
            Else
                Print #1, Space(3) & Padr(Format(VDT1, "dd/mm/yy"), 8, " ") & Space(4) & Padl(CStr(Vno), 3, " ") + Space(1) + Padr(name1, 30, " ") & Space(5) + Padl(CStr(cqno), 6, " ") + Space(1) + Padl(INF(CStr(Trim(rec)), 2), 13, " ") + Space(1) & Padl(INF((CStr(pay)), 2), 13, " ")
                cont = cont + 1
            End If

            datflg = False

        If narr1a <> "" Then
            Print #1, Space(19) & narr1a 'CStr(acc) +
            cont = cont + 1
          If cont >= (PageLen + 2) Then
            Print #1, Space(3) & String(86, "-")
            Print #1, Chr(12)
            Call Prnhead80
            VDT1 = CStr(rs111(3))
            Print #1, Space(3) & Padr(Format(VDT1, "dd/mm/yy"), 8, " ");
            datflg = True
          End If
        End If


        name1 = ""
        'narr1a = ""

        VDT1 = "          "
        fla = False

        If rec = "" Or IsNull(rec) = True Then rec = 0 Else pay = 0

        '--- Calculating Day Total and Day Closing Balance

        dRec = dRec + rec
        dpay = IIf(dpay = "", 0, dpay) + pay
        opbal = opbal + rec - pay

        If f = True Then
            rs111.MoveNext
            If rs111.EOF = True Then
                rs111.MoveLast
                vdt = "12:00:00"
            End If
        End If

        '--- Day Closing Printing

        If Not vdt = rs111(3) Then

            BnkRec = BnkRec + dRec
            BnkPay = BnkPay + dpay

            If dRec = 0 Then dRec = ""
            If dpay = 0 Then dpay = ""
'***        Print #1, Space(5) & Space(76) + "** Day Total **" + Space(21 - (Len(INF(drec, 2)))) + CStr(INF(drec, 2)) + Space(20 - Len(INF(DPAY, 2)) - 2) + CStr(INF(DPAY, 2))

            If datflg = True Then
                Print #1, Space(3) & Space(19) + "   **  Day Total  **   " + Space(4) & Chr(27) & "E" + Padl(INF(dRec, 2), 14, " ") + Space(1) & Padl(INF(dpay, 2), 13, " ") & Chr(27) & "F"
                datflg = False
            Else
                Print #1, Space(3) & Space(30) + "   **  Day Total  **   " + Space(4) & Chr(27) & "E" + Padl(INF(dRec, 2), 14, " ") + Space(1) & Padl(INF(dpay, 2), 13, " ") & Chr(27) & "F"
            End If

            If opbal < 0 Then
                Dayopre = ""
                Dayoppa = Abs(opbal)
            Else
                Dayoppa = ""
                Dayopre = opbal
            End If
'***            Day Closing
            Print #1, Space(3) & Space(33) + "** Day Closing Balance **" + Space(0) & Chr(27) & "E" + Padl(CStr(INF(Dayopre, 2)), 13, " ") & Space(1) & Padl(INF(CStr(Dayoppa), 2), 13, " ") & Chr(27) & "F"
            cont = cont + 2
            Print #1,

             If cont >= (PageLen + 2) Then
                Print #1, Space(3) & String(86, "-")
                 Print #1, Chr(12)
                 Call Prnhead80
'                 VDT1 = CStr(rs111(3))
'                 Print #1, Space(3) & Padr(Format(VDT1, "dd/mm/yy"), 8, " ");
'                 DatFlg = True
            End If

            dRec = 0
            dpay = 0
            fla = True

            If CStr(vdt) = "12:00:00" Then rs111.MoveNext

        End If
    Loop


    If cont >= (PageLen + 2) Then
        Print #1, Chr(12)
        I = 0
        For I = 1 To 20
            Print #1,
            cont = cont + 1
        Next
        Call Prnhead80
    End If

    Print #1, Space(3) & String(86, "-")
'***    Print #1, Space(5) & Space(75) + "** Grand Total **" + Chr(27) + "E" + Space(20 - Len(INF(Trec, 2))) + CStr(INF(Trec, 2)) + Space(20 - Len(INF(tpay, 2))) + CStr(INF(tpay, 2)) + Chr(27) + "F"
    Print #1, Space(3) & Space(33) + "** Grand Total **" + Space(7) & Chr(27) & "E" & Padl(INF(BnkRec, 2), 14, " ") & Space(0) + Padl(INF(BnkPay, 2), 14, " ") & Chr(27) & "F"
    Print #1, Space(3) & String(86, "-")


    Dim ocr As String
    Dim ccr As String

    If opbalt < 0 Then
        ocr = " CR"
    Else
        ocr = ""
    End If

    If clobal < 0 Then
        ccr = " CR"
    Else
        ccr = ""
    End If

'    Print #1, Space(5) & Space(65) + Chr(27) + "E" + "** CONTROL TOTAL **" + Chr(27) + "F"
'    Print #1, Space(5) & Space(65) + "-------------------"
'    Print #1, Space(5) & Space(132)
'    Print #1, Space(5) & Space(50) + "Opening Balance          :" + Space(18 - Len(INF(Abs(opbalt), 2))) + CStr(INF(Abs(opbalt), 2)) + ocr
'    Print #1, Space(5) & Space(50) + "Total Receipts           :" + Space(18 - Len(INF(Trec, 2))) + CStr(INF(Trec, 2))
'    Print #1, Space(5) & Space(50) + "Total payments           :" + Space(18 - Len(INF(tpay, 2))) + CStr(INF(tpay, 2))
'    Print #1, Space(5) & Space(50) + "Closing Balance          :" + Space(18 - Len(INF(Abs(clobal), 2))) + CStr(INF(Abs(clobal), 2)) + ccr
'    Print #1, Space(5) & Space(67) + " * End of Report *"
        Print #1, Chr(12)
        Print #1, Chr(18); Space(5) & CENTRE(Chr(27) & "E" & divname & Chr(27) & "F", 85, " ")
        Print #1, Space(3) & String(86, "-")
        Print #1, Space(3) & Padr(Tche + " BOOK FROM " + Format(MaskEdBox1.Text, "DD/MM/YY") + "  TO  " + Format(MaskEdBox2.Text, "DD/MM/YY"), 68, " ") '& Space(2) & Space(4) & "Pg.No :" + Padl(CStr(PAGEIN), 3, " ")
        Print #1, Space(3) & String(86, "-")
        Print #1,
        Print #1,
        Print #1, Space(38) & "** CONTROL TOTAL **"
        Print #1, Space(38) & "-------------------"
        Print #1, Space(27) & "Opening Balance          : " & Chr(27) & "E" + Space(18 - Len(INF(Abs(opbalt), 2))) + CStr(INF(Abs(opbalt), 2)) + ocr & Chr(27) & "F"
        Print #1, Space(27) & "Total Receipts           : " & Chr(27) & "E" + Space(18 - Len(INF(BnkRec, 2))) + CStr(INF(BnkRec, 2)) & Chr(27) & "F"
        Print #1, Space(27) & "Total payments           : " & Chr(27) & "E" + Space(18 - Len(INF(BnkPay, 2))) + CStr(INF(BnkPay, 2)) & Chr(27) & "F"
        Print #1, Space(27) & "Closing Balance          : " & Chr(27) & "E" + Space(18 - Len(INF(Abs(clobal), 2))) + CStr(INF(Abs(clobal), 2)) + ccr & Chr(27) & "F"
        Print #1, Space(38) & " * End of Report *"
        Print #1, Chr(12)
    ocr = ""
    ccr = ""

    Close #1


    Open cBatchFileName For Output As #1

    Print #1, "@ECHO OFF"
    Print #1, "CD\"
    Print #1, "C:"
    Print #1, "CD\"
    Print #1, "type " & cOutputFilename & ">prn"
    Print #1, "CLS"

    Close #1

    Set csrep = New Report.ReportView
    csrep.txtfile = cOutputFilename
    csrep.Batfile = cBatchFileName
    Exit Sub
Err1:
End Sub

Private Sub DbCrntHeading(dch As String, intN As Integer)
      Print #a,
      Set trs = New Recordset
      trs.Open "select divname,isnull(add1,''),isnull(add2,''),isnull(city,''),isnull(pincode,''),isnull(phone1,''),isnull(phone2,'') from pp_divmas WHERE divcode = '" & Divcode & "'", cn
      Print #a, Chr(18) + Chr(27); "E"; CENTRE(Trim(divname), 80, " "); Chr(27); "F"
      Print #a, Space(5) + CENTRE(IIf(trs(1) <> "", trs(1) & ",", "") & IIf(trs(2) <> "", trs(2) & ",", "") & IIf(trs(3) <> "", trs(3) & IIf(trs(4) <> "", "-", ""), "") & trs(4), 75, " ")
      If trs(5) <> "" Or trs(6) <> "" Then
        Print #a, Space(5) + CENTRE("Phone: " & IIf(trs(5) <> "", trs(5) & IIf(trs(6) <> "", ",", ""), "") & trs(6), 75, " ");
      Else
        Print #a, ;
      End If
      If intN = 1 Then Print #a, "  "
      Print #a,
      Print #a, Chr(18)
      Print #a, Space(5); Chr(27); "E"; CENTRE(dch, 80, " "); Chr(27); "F";
      Print #a,
End Sub
Public Sub Build_DivList()
    '----------- Build Division List

    Dim MyConn As Connection
    Set MyConn = New Connection
    MyConn.CursorLocation = adUseClient
    MyConn.Open "Provider=MSDASQL;" & connectstring

    Divall = ""

    If divtype <> "H" Then
        Divall = "'" & Divcode & "'"
    Else
        Dim temprs As Recordset
        Set temprs = New Recordset

        temprs.Open "select divcode from pp_divmas where compcode = '" & CompCode & "' ", MyConn, adOpenStatic, adLockReadOnly

        If temprs.RecordCount > 0 Then

            Do While Not temprs.EOF
                If Divall = "" Then
                    Divall = "'" & temprs(0) & "'"
                Else
                    Divall = Divall & ",'" & temprs(0) & "'"
                End If
                temprs.MoveNext
            Loop
        Else
            Divall = "'" & Divcode & "'"
        End If
        temprs.Close
    End If
    MyConn.Close
End Sub

