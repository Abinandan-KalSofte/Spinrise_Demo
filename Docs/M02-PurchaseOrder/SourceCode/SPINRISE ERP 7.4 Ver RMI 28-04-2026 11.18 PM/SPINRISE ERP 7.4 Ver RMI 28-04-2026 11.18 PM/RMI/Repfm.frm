VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form repform 
   ClientHeight    =   7245
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9600
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   7245
   ScaleWidth      =   9600
   WindowState     =   2  'Maximized
   Begin VB.CommandButton CmdAbstract 
      Caption         =   "&Abstract"
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
      Left            =   5040
      TabIndex        =   67
      Top             =   5880
      Visible         =   0   'False
      Width           =   1440
   End
   Begin VB.CheckBox Check2 
      Caption         =   "All"
      Height          =   195
      Left            =   9360
      TabIndex        =   66
      Top             =   3120
      Visible         =   0   'False
      Width           =   525
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      Height          =   405
      Left            =   10080
      TabIndex        =   63
      Top             =   1920
      Visible         =   0   'False
      Width           =   6435
   End
   Begin VB.CommandButton Command6 
      Caption         =   "&Excel"
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
      Left            =   5040
      TabIndex        =   62
      Top             =   6240
      Visible         =   0   'False
      Width           =   1440
   End
   Begin VB.CommandButton Command4 
      Caption         =   "OK"
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
      Left            =   4080
      TabIndex        =   61
      Top             =   11400
      Visible         =   0   'False
      Width           =   960
   End
   Begin VB.CommandButton Command3 
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
      Left            =   3480
      TabIndex        =   52
      Top             =   6240
      Visible         =   0   'False
      Width           =   1440
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1980
      TabIndex        =   38
      Top             =   5310
      Visible         =   0   'False
      Width           =   5820
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   40
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   39
         Top             =   210
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
         Height          =   315
         Left            =   180
         TabIndex        =   41
         Top             =   240
         Width           =   1425
      End
   End
   Begin Crystal.CrystalReport Crr 
      Left            =   180
      Top             =   4500
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   345
      Left            =   -30
      TabIndex        =   23
      Top             =   6930
      Visible         =   0   'False
      Width           =   11565
      _ExtentX        =   20399
      _ExtentY        =   609
      _Version        =   393216
      Appearance      =   0
      Max             =   10000
   End
   Begin VB.CommandButton Command2 
      Caption         =   "E&xit"
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
      Left            =   6600
      TabIndex        =   11
      Top             =   6240
      Width           =   1440
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
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
      Left            =   1920
      TabIndex        =   10
      Top             =   6240
      Width           =   1440
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   3015
      TabIndex        =   37
      Top             =   6840
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
   Begin VB.Frame Frame3 
      Height          =   1560
      Left            =   2790
      TabIndex        =   6
      Top             =   2520
      Visible         =   0   'False
      Width           =   4215
      Begin VB.ComboBox Combo2 
         Height          =   315
         ItemData        =   "Repfm.frx":0000
         Left            =   1080
         List            =   "Repfm.frx":0002
         Style           =   2  'Dropdown List
         TabIndex        =   19
         Top             =   1140
         Visible         =   0   'False
         Width           =   1905
      End
      Begin MSDataListLib.DataCombo DataCombo13 
         Height          =   315
         Left            =   1080
         TabIndex        =   7
         Top             =   690
         Width           =   1920
         _ExtentX        =   3387
         _ExtentY        =   556
         _Version        =   393216
         Style           =   2
         ForeColor       =   8388608
         Text            =   ""
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   315
         Left            =   1500
         TabIndex        =   14
         Top             =   2970
         Visible         =   0   'False
         Width           =   1920
         _ExtentX        =   3387
         _ExtentY        =   556
         _Version        =   393216
         Format          =   172490753
         CurrentDate     =   37602
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "Repfm.frx":0004
         Left            =   1080
         List            =   "Repfm.frx":0006
         Style           =   2  'Dropdown List
         TabIndex        =   13
         Top             =   690
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.Label Label3 
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   240
         TabIndex        =   18
         Top             =   1170
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.Label Label17 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Caption"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   9
         Top             =   120
         Width           =   4185
      End
      Begin VB.Label Label15 
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   240
         TabIndex        =   8
         Top             =   720
         Width           =   615
      End
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Command3"
      Height          =   1710
      Left            =   2730
      TabIndex        =   5
      Top             =   2400
      Visible         =   0   'False
      Width           =   4290
   End
   Begin VB.Frame Frame4 
      Height          =   3165
      Left            =   1470
      TabIndex        =   42
      Top             =   1935
      Visible         =   0   'False
      Width           =   7200
      Begin VB.Frame Frame6 
         Height          =   585
         Left            =   3015
         TabIndex        =   56
         Top             =   2160
         Visible         =   0   'False
         Width           =   3750
         Begin VB.OptionButton optDetail 
            Caption         =   "Detailed"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   1920
            TabIndex        =   58
            Top             =   225
            Width           =   1665
         End
         Begin VB.OptionButton optAbstract 
            Caption         =   "Abstract"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   285
            TabIndex        =   57
            Top             =   225
            Width           =   1230
         End
      End
      Begin VB.ComboBox Combo5 
         Height          =   315
         Left            =   3015
         TabIndex        =   44
         Top             =   1755
         Width           =   3735
      End
      Begin VB.ComboBox Combo4 
         Height          =   315
         ItemData        =   "Repfm.frx":0008
         Left            =   3000
         List            =   "Repfm.frx":000A
         TabIndex        =   43
         Text            =   "Combo1"
         Top             =   570
         Width           =   3735
      End
      Begin MSDataListLib.DataCombo DataCombo7 
         Height          =   315
         Left            =   3015
         TabIndex        =   45
         Top             =   2340
         Width           =   3735
         _ExtentX        =   6588
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo7"
      End
      Begin MSDataListLib.DataCombo DataCombo8 
         Height          =   315
         Left            =   3030
         TabIndex        =   46
         Top             =   1170
         Visible         =   0   'False
         Width           =   3735
         _ExtentX        =   6588
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo7"
      End
      Begin VB.Label Label8 
         Caption         =   "Option"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   150
         TabIndex        =   55
         Top             =   2340
         Visible         =   0   'False
         Width           =   2145
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Vat Report"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   375
         Left            =   15
         TabIndex        =   51
         Top             =   105
         Width           =   7155
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "For Month"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   150
         TabIndex        =   50
         Top             =   720
         Width           =   1035
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         Caption         =   "Vat Category"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   150
         TabIndex        =   49
         Top             =   2340
         Width           =   1365
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         Caption         =   "Vat %"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   150
         TabIndex        =   48
         Top             =   1215
         Width           =   615
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         Caption         =   "Within State/Others"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   150
         TabIndex        =   47
         Top             =   1755
         Width           =   1995
      End
   End
   Begin VB.Frame Frame2 
      Height          =   2880
      Left            =   2205
      TabIndex        =   24
      Top             =   2145
      Visible         =   0   'False
      Width           =   5565
      Begin VB.OptionButton OptMixCnt 
         Caption         =   "Mix Count wise"
         Height          =   345
         Left            =   2835
         TabIndex        =   32
         Top             =   2430
         Width           =   1800
      End
      Begin VB.OptionButton OptMixGrp 
         Caption         =   "Mix Group wise"
         Height          =   345
         Left            =   1185
         TabIndex        =   31
         Top             =   2430
         Value           =   -1  'True
         Width           =   1545
      End
      Begin VB.ComboBox CboCategory 
         Height          =   315
         Left            =   1215
         TabIndex        =   29
         Text            =   "Combo4"
         Top             =   1980
         Width           =   2805
      End
      Begin MSComCtl2.DTPicker DTPicker4 
         Height          =   390
         Left            =   1245
         TabIndex        =   27
         Top             =   1530
         Width           =   1320
         _ExtentX        =   2328
         _ExtentY        =   688
         _Version        =   393216
         Format          =   172490753
         CurrentDate     =   39428
      End
      Begin RMI.KslCompanySelection Kslcmpsel 
         Height          =   780
         Left            =   75
         TabIndex        =   25
         Top             =   675
         Width           =   5415
         _ExtentX        =   9551
         _ExtentY        =   1376
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
      Begin VB.Label LblCategory 
         Caption         =   "Category"
         Height          =   300
         Left            =   165
         TabIndex        =   30
         Top             =   2010
         Width           =   840
      End
      Begin VB.Label Label7 
         Caption         =   "Date"
         Height          =   300
         Left            =   180
         TabIndex        =   28
         Top             =   1605
         Width           =   840
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Mix Group Varietywise Stock Report"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   465
         Left            =   -30
         TabIndex        =   26
         Top             =   105
         Width           =   5535
      End
   End
   Begin VB.Frame Frame1 
      Height          =   2970
      Left            =   2205
      TabIndex        =   0
      Top             =   2025
      Visible         =   0   'False
      Width           =   5670
      Begin VB.ComboBox Combo6 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         ItemData        =   "Repfm.frx":000C
         Left            =   1590
         List            =   "Repfm.frx":001C
         Style           =   2  'Dropdown List
         TabIndex        =   53
         Top             =   2280
         Visible         =   0   'False
         Width           =   3795
      End
      Begin VB.ComboBox CmbRecType 
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
         ItemData        =   "Repfm.frx":0040
         Left            =   1575
         List            =   "Repfm.frx":0042
         Style           =   2  'Dropdown List
         TabIndex        =   34
         Top             =   2295
         Visible         =   0   'False
         Width           =   3015
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Category"
         Height          =   195
         Left            =   3960
         TabIndex        =   33
         Top             =   1440
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         Left            =   1560
         TabIndex        =   21
         Text            =   "Combo3"
         Top             =   1800
         Visible         =   0   'False
         Width           =   3015
      End
      Begin MSComCtl2.DTPicker DTPicker3 
         Height          =   360
         Left            =   1575
         TabIndex        =   17
         Top             =   1290
         Visible         =   0   'False
         Width           =   2220
         _ExtentX        =   3916
         _ExtentY        =   635
         _Version        =   393216
         Format          =   172490753
         CurrentDate     =   37043
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         Height          =   315
         Left            =   1560
         TabIndex        =   15
         Top             =   780
         Visible         =   0   'False
         Width           =   1125
         _ExtentX        =   1984
         _ExtentY        =   556
         _Version        =   393216
         MaxLength       =   10
         Format          =   "dd/mm/yyyy"
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   360
         Left            =   1560
         TabIndex        =   16
         Top             =   750
         Visible         =   0   'False
         Width           =   2265
         _ExtentX        =   3995
         _ExtentY        =   635
         _Version        =   393216
         Format          =   172490753
         CurrentDate     =   37043
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   1560
         TabIndex        =   2
         Top             =   1290
         Width           =   2265
         _ExtentX        =   3995
         _ExtentY        =   635
         _Version        =   393216
         ForeColor       =   8388608
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   360
         Left            =   1590
         TabIndex        =   1
         Top             =   735
         Width           =   2265
         _ExtentX        =   3995
         _ExtentY        =   635
         _Version        =   393216
         ForeColor       =   8388608
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   315
         Left            =   1560
         TabIndex        =   22
         Top             =   1800
         Visible         =   0   'False
         Width           =   3015
         _ExtentX        =   5318
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo3"
      End
      Begin MSComctlLib.ListView Lv_PType 
         Height          =   1935
         Left            =   2415
         TabIndex        =   60
         Top             =   1440
         Visible         =   0   'False
         Width           =   4695
         _ExtentX        =   8281
         _ExtentY        =   3413
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
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Count Name"
            Object.Width           =   5292
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   1235
         EndProperty
      End
      Begin VB.Label Label16 
         Caption         =   "Type "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   495
         TabIndex        =   54
         Top             =   2295
         Visible         =   0   'False
         Width           =   1515
      End
      Begin VB.Label LblRecType 
         AutoSize        =   -1  'True
         Caption         =   "Type"
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
         Left            =   450
         TabIndex        =   35
         Top             =   2355
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.Label Label4 
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   210
         TabIndex        =   20
         Top             =   1845
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Caption"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   12
         Top             =   120
         Width           =   5580
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Date"
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
         Left            =   180
         TabIndex        =   4
         Top             =   765
         Width           =   885
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "To Date"
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
         Left            =   180
         TabIndex        =   3
         Top             =   1290
         Width           =   705
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3120
      Left            =   2085
      TabIndex        =   36
      Top             =   1995
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   5503
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "Repfm.frx":0044
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin TabDlg.SSTab SSTab2 
      Height          =   3360
      Left            =   1335
      TabIndex        =   59
      Top             =   1845
      Visible         =   0   'False
      Width           =   7440
      _ExtentX        =   13123
      _ExtentY        =   5927
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "Repfm.frx":0060
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin MSComctlLib.ListView List_div 
      Height          =   2325
      Left            =   10080
      TabIndex        =   64
      Top             =   2400
      Visible         =   0   'False
      Width           =   6435
      _ExtentX        =   11351
      _ExtentY        =   4101
      View            =   3
      LabelEdit       =   1
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
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   3
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Division Name"
         Object.Width           =   6174
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Division Code"
         Object.Width           =   2646
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Abbreviation"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      Caption         =   "Division"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Left            =   9120
      TabIndex        =   65
      Top             =   2400
      Visible         =   0   'False
      Width           =   735
   End
End
Attribute VB_Name = "repform"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim pogrp As String
Dim date1 As String, date2 As String, code As String
Dim Oprs As Recordset
Dim MON1 As Integer
Dim Namers As Recordset
Dim VarName As String
Dim datae As Integer
Dim totoprecbale As Double
Dim Openkg As Double
Dim Receiptkg As Double
Dim Consumption As Double
Dim TOkg As Double
Dim balance As Double
Dim totoprecborah As Double
Dim totoprectot As Double
Dim totoprectotkg As Double
Dim RecRs As Recordset
Dim issrs As Recordset
Dim a As String, B As String
Dim bolTYPEAll As Boolean
Dim W As String
Dim I As Long, j As Long, f As Integer
Dim PROJNO As Long, PORDNO As Long, porddt As String
Dim Rs As New Recordset, rs1 As New Recordset, RS2 As New Recordset, rs3 As New Recordset
Dim LB() As RptLabel, LB2 As RptLabel, LB3 As RptLabel, LB4 As RptLabel, LB5 As RptLabel, LB6 As RptLabel, LB7 As RptLabel, LB8 As RptLabel, LB9 As RptLabel, LB10 As RptLabel, LB11 As RptLabel, LB12 As RptLabel
Dim opnbaletot As Integer, opnborahtot As Integer, ordbaletot1 As Integer, ordbaletot2 As Integer, ordbaletot3 As Integer
Dim ordborahtot1 As Integer, ordborahtot2 As Integer, ordborahtot3 As Integer, ordborahtot4 As Integer, ordborahtot5 As Integer, ordborahtot6 As Integer
Dim ordbaletot4 As Integer, ordbaletot5 As Integer, ordbaletot6 As Integer, recbaletot As Integer, clobaletot1 As Integer, cloborahtot1 As Integer
Dim Str As String
Dim SNO As Integer
Dim prev As Integer
Dim ova_stkbal As Double
Dim ova_stkratcandy As Double
Dim ova_stkratlak As Double
Dim tot_stkbal As Double
Dim tot_stkratcandy As Double
Dim tot_stkratlak As Double
Dim fst_stkbal As Double
Dim fst_stkratcandy As Double
Dim fst_stkratlak As Double
Dim sec_stkbal As Double
Dim sec_stkratcandy As Double
Dim sec_stkratlak As Double
Dim thr_stkbal As Double
Dim thr_stkratcandy As Double
Dim thr_stkratlak As Double
Dim fou_stkbal As Double
Dim fou_stkratcandy As Double
Dim fou_stkratlak As Double
Dim strCategory As String
Dim chk As Integer
Dim Category As String
Dim sdr As String
Dim zz As String
Dim pg As Integer


Private Sub Check1_Click()
On Error GoTo Check1_Click_Error

If Check1.value = 1 Then
        Combo3.Visible = True
        Label4.Visible = True
        Dim RstCat As Recordset
        Set RstCat = New Recordset
        RstCat.Open "Select * from rm_Cat order by catcd", cn, adOpenStatic
        Combo3.Clear
        Do While Not RstCat.EOF
            Combo3.AddItem RstCat("CatCd") & " - " & RstCat("Catname")
            RstCat.MoveNext
        Loop
        Combo3.AddItem "A - ALL"
        Combo3.ListIndex = 0
Else
    Combo3.Visible = False
    Label4.Visible = False
End If

Exit Sub
Check1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Check1_Click of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub New_Vat_Rep_TNVATCST(fs As String, ts As String, Divcode As String, va As String, p As String, st As String, MON1 As String)

Dim v1, v2, pg1, supTotRec, supRec, SNO As Integer
Dim grandTotTax, supTotTax, grandTotVal, supTotVal As Double
Dim rptv As Report.ReportView
Dim SR As String
Dim Cnn As Connection
On Error GoTo New_Vat_Rep_TNVATCST_Error

Set Cnn = New Connection
Cnn.Open connectstring
v1 = 0
v2 = 0
per = val(p)
If st <> "A" Then
    Set Rs = New Recordset
    If st = "W" Then
        Rs.Open "select distinct a.lotdt,a.billno,a.billdt,a.supcd,b.slname,a.tax_code,b.tinno,isnull(a.vatamt,0) as vatamt,isnull(a.cstamt,0) as cstamt,a.vatper, " & _
                "sum(a.assvalue) assvalue,a.divcode,e.catname,c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d, " & _
                "rm_cat e,rm_arrival f where a.lotno=f.lotno and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=f.supcd and a.arrno=f.arrno and a.supcd=b.slcode and a.divcode=c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code=   " & _
                "(select state_code from pp_divmas where divcode='" & Divcode & "')and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' " & _
                "and a.vatper=" & per & " AND OPFLG<>'Y' and pjno is not null group by a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.vatamt,a.cstamt,a.pjamt,a.tax_code", DB, adOpenStatic
    ElseIf st = "O" Then
        Rs.Open "select distinct a.lotdt,a.billno,a.billdt,a.tax_code,a.supcd,b.slname,b.tinno,isnull(a.vatamt,0) as vatamt,isnull(a.cstamt,0) as cstamt,a.vatper, " & _
                "a.assvalue,a.divcode,e.catname,c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d, " & _
                "rm_cat e,rm_arrival f where a.lotno=f.lotno and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=f.supcd and a.arrno=f.arrno and a.supcd=b.slcode and a.divcode=c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code not in   " & _
                "(select state_code from pp_divmas where divcode='" & Divcode & "')and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' " & _
                "and a.vatper=" & per & " AND OPFLG<>'Y'  and pjno is not null group by a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.vatamt,a.cstamt,a.pjamt,a.tax_code,a.assvalue ", DB, adOpenStatic
    Else
        Rs.Open "select distinct a.lotdt,a.billno,a.billdt,a.tax_code,a.supcd,b.slname,b.tinno,isnull(a.vatamt,0) as vatamt," & _
                "isnull(a.cstamt,0) as cstamt,a.vatper, a.assvalue,a.divcode,e.catname,c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b, " & _
                "pp_divmas c,rm_var d, rm_cat e where a.supcd=b.slcode and a.divcode=c.divcode and a.varcode=d.varcode and " & _
                "d.catcd=e.catcd AND OPFLG<>'Y' and lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and vatper is not null and vatper<>0  and pjno is not null group by " & _
                "a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.vatamt, " & _
                "a.CStamt , a.pjamt, a.tax_code,a.assvalue ", DB, adOpenStatic

    End If
    If per = 0 Then
        MsgBox "Select Tax% from the list", vbInformation, head
        Exit Sub
    End If
    If Rs.RecordCount = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
        Set rptv = New Report.ReportView
        a = FreeFile
        Close
       'Open "c:\vatreprot.TXT" For Output As #a
        Open KALFOLDERDATA & "\vatreprot.TXT" For Output As #a
        I = 0
        pg1 = 0
        taxcode = Rs("tax_code")
        Call PurRegHead1_TNVATCST(CStr(fs), CStr(ts), CInt(pg1), CStr(MON1), CStr(va), CStr(p), CStr(taxcode))
        I = 4
        grandTotVal = 0
        supTotVal = 0
        grandTotTax = 0
        supTotTax = 0
        SNO = 1
        slno = 1
        Dim srr As String
        supTotRec = 0
        supTotTax = 0
        supTotVal = 0
        valuetotal1 = 0
        vattotal1 = 0
        csttotal1 = 0
        tmpslname = ""
        tmplotdt = ""
        Do While Not Rs.EOF
            If tmplotdt <> Rs("lotdt") Then
                Print #a, Space(3) & Padr(Format(Rs("LOTDT"), "dd/MM/yy"), 8, " ") & Space(1);
            Else
                Print #a, Space(3) & Padr("", 8, " ") & Space(1);
            End If
            If tmplotdt <> Rs("lotdt") Or tmpslname <> Rs("slname") Then
                Print #a, Padr(Rs("slname"), 40, " ") + Space(1);
            Else
                Print #a, Padr("", 40, " ") + Space(1);
            End If
            Print #a, Padl(Rs("billno"), 8, " ") & Space(1) & Padr(Format(Rs("billdt"), "dd/MM/yy"), 8, " ") & Space(1) & Padr(Rs("tinno"), 13, " ") & Space(1) & Padr(Rs("comm_code"), 9, " ") & Space(1) & Padl(INF(Rs("assvalue"), 2), 17, " ") & Space(1) & Padl(INF(Rs("vatper"), 2), 6, " ") & Space(0) & Padl(INF(Rs("vatamt") + Rs("cstamt"), 2), 11, " ") + Space(2) + Padr(Rs("vcatcd"), 3, " ")
            grandTotVal = grandTotVal + Rs("assvalue")
            grandTotTax = grandTotTax + Rs("vatamt") + Rs("cstamt")
            tmpslname = Rs("slname")
            tmplotdt = Rs("lotdt")
            I = I + 2
            If I >= 57 Then
                Print #a, Chr(12)
                I = 0
                Call PurRegHead1_TNVATCST(CStr(fs), CStr(ts), CInt(pg1), CStr(MON1), CStr(va), CStr(p), CStr(TAX_CODE))
                I = I + 5
            End If
            Rs.MoveNext
        Loop
        If I >= 57 Then
            Print #a, Chr(12)
            I = 0
            Call PurRegHead1_TNVATCST(CStr(fs), CStr(ts), CInt(pg1), CStr(MON1), CStr(va), CStr(p), CStr(TAX_CODE))
            I = I + 5
        End If
        Print #a, Space(3) + String(132, "-")
        Print #a, Chr(27) & "E" & Space(3) + Padr("", 8, " ") & Space(1) + Padr("", 40, " ") + Space(1) & Padl("", 8, " ") & Space(1) & Padr("", 8, " ") & Space(1) & Padr("", 13, " ") & Space(1) & Padl("TOTAL", 9, " ") & Space(1) & Padl(INF(grandTotVal, 2), 17, " ") & Space(3) & Padl("", 3, " ") & Space(0) & Padl(INF(grandTotTax, 2), 11, " ") & Chr(27) & "F"
        Print #a, Space(3) + String(132, "-")
        Print #a,
        Print #a,
        I = I + 5
End If
            Set RSS = New Recordset
            RSS.Open "select * from ig_tax where tax_code='" & taxcode & "'", Cnn, adOpenStatic
            Print #a, Chr(27) & "E" & Space(3) + Padr(RSS("description") & " ABSTRACT ", 111, " ") & Chr(27) & "F"
            Print #a, Space(3) + String(132, "-")
            Print #a, Chr(27) & "E" & Space(3) + "S.No Name of the Seller                       Seller's        Commodity  Purchase/Receipt  Rate of       VAT / CST Category Division" & Chr(27) & "F"
            Print #a, Chr(27) & "E" & Space(3) + "                                               TIN NO.        Code              Value(Rs)      Tax        Paid(Rs)                  " & Chr(27) & "F"
            Print #a, Space(3) + String(132, "-")
            I = I + 5
            Set RSV = New Recordset
            If st = "W" Then
                'RSV.Open "select distinct c.slcode,c.slname ,sum(bvalue) as val1,SUM(btaxamt) as Tax_Amt,c.TINNO,Div.Abbr as Division,IG.Comm_Code as Commodity from in_pjh a,in_pjl b,fa_slmas c,in_item i ,in_vcat cc,PP_Divmas Div,In_Grp IG  " & _
                     "Where a.billno is not null and A.pjvOCNO = B.pjvOCNO  And A.SLCODE = c.SLCODE and i.itemcode=b.itemcode and b.vcat=vcatcode and a.Divcode=Div.Divcode and Left(I.ItemCode,4)=Ig.GrpCode " & _
                     "and c.state_code=(select state_code from pp_divmas where divcode ='" & divcode & "' )   " & _
                     "AND A.pjvOCDT=B.pjvOCDT and a.fatc=b.fatc and b.pjvocdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode = '" & divcode & "' AND bTAXPER = " & per & " AND B.VCAT = '" & va & "'  group by c.slcode,c.slname,c.TINNO,Div.Abbr,IG.Comm_Code order by c.slcode", cnn, adOpenStatic
                RSV.Open "select distinct a.supcd,b.slname,a.tax_code,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                            ",a.vatper,isnull(sum(a.assvalue),0) as pjamt,a.divcode,e.catname," & _
                            "c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e,rm_arrival f where a.lotno=f.lotno and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=f.supcd and a.arrno=f.arrno and a.supcd=b.slcode and a.divcode=c.divcode " & _
                            "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code=(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                            "AND OPFLG<>'Y' and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                            "group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.tax_code", Cnn, adOpenStatic
            ElseIf st = "O" Then
                'RSV.Open "select distinct c.slcode,c.slname ,sum(bvalue) as val1,SUM(btaxamt) as Tax_Amt,c.TINNO,Div.Abbr as Division,IG.Comm_Code as Commodity from in_pjh a,in_pjl b,fa_slmas c,in_item i ,in_vcat cc,PP_Divmas Div,In_Grp IG  " & _
                     "Where a.billno is not null and A.pjvOCNO = B.pjvOCNO  And A.SLCODE = c.SLCODE and i.itemcode=b.itemcode and b.vcat=vcatcode and a.Divcode=Div.Divcode and Left(i.ItemCode,4)=IG.GrpCode " & _
                     "and c.state_code not in (select state_code from pp_divmas where divcode ='" & divcode & "' )  " & _
                     "AND A.pjvOCDT=B.pjvOCDT  and a.fatc=b.fatc and b.pjvocdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode = '" & divcode & "' AND bTAXPER = " & per & " AND B.VCAT = '" & va & "'  group by c.slcode,c.slname,c.TINNO,Div.Abbr,IG.Comm_Code order by c.slcode", cnn, adOpenStatic
                RSV.Open "select distinct a.supcd,b.slname,b.tinno,a.tax_code,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                            ",a.vatper,isnull(sum(a.assvalue),0) as pjamt,a.divcode,e.catname," & _
                            "c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e,rm_arrival f where a.lotno=f.lotno and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=f.supcd and a.arrno=f.arrno and a.supcd=b.slcode and a.divcode=c.divcode " & _
                            "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code not in(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                            "AND OPFLG<>'Y' and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                            "group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.tax_code", Cnn, adOpenStatic
            Else
                RSV.Open "select distinct a.lotdt,a.billno,a.billdt,a.tax_code,a.supcd,b.slname,b.tinno,isnull(a.vatamt,0) as vatamt," & _
                        "isnull(a.cstamt,0) as cstamt,a.vatper, isnull(sum(a.assvalue),0) as assvalue,a.divcode,e.catname,c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b, " & _
                        "pp_divmas c,rm_var d, rm_cat e where a.supcd=b.slcode and a.divcode=c.divcode and a.varcode=d.varcode and " & _
                        "d.catcd=e.catcd AND OPFLG<>'Y' and lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and vatper is not null and vatper<>0  and pjno is not null group by " & _
                        "a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.vatamt, " & _
                        "a.CStamt , a.pjamt, a.tax_code", DB, adOpenStatic
            End If
            SlCnt = 1
            tmpslname = ""
            valuetotal = 0
            vattotal = 0
            If RSV.RecordCount = 0 Then
                MsgBox "No record Found", vbInformation, head
                Exit Sub
            End If
            If RSV.RecordCount > 0 Then
                Do While Not RSV.EOF
                    If tmpslname <> RSV("slname") Then
                        'Print #a, Space(3) & Padl(SlCnt, 4, " ") & Space(1) + Padr(RSV("slname"), 30, " ") + Space(0) & Padr(RSV("Tinno"), 15, " ") & Space(1) & Padr(RSV("comm_code"), 15, " ") & Space(1) & Padl(INF(RSV("pjamt"), 2), 15, " ") & Space(1) & Padl(INF(per, 2), 8, " ") & Space(1) & Padl(INF(RSV("vatamt") + RSV("cstamt"), 2), 15, " ") & Space(3) & Padr(RSV("catname"), 13, " ") & Space(1) & Padr(RSV("abbr"), 8, " ")
                        Print #a, Space(3) & Padl(SlCnt, 4, " ") & Space(1) + Padr(RSV("slname"), 40, " ") + Space(1) & Padr(RSV("Tinno"), 15, " ") & Space(1) & Padr(RSV("comm_code"), 11, " ") & Space(1) & Padl(INF(RSV("pjamt"), 2), 15, " ") & Space(1) & Padl(INF(per, 2), 8, " ") & Space(1) & Padl(INF(RSV("vatamt") + RSV("cstamt"), 2), 15, " ") & Space(1) & Padr(RSV("vcatcd"), 8, " ") & Space(1) & Padr(RSV("abbr"), 8, " ")
                        Print #a,
                        I = I + 2
                        tmpslname = RSV("slname")
                        SlCnt = SlCnt + 1
                    Else
                        'Print #a, Space(3) & Padl(SlCnt, 4, " ") & Space(1) + Space(30) + Space(0) & Space(15) & Space(1) & Padr(RSV("comm_code"), 15, " ") & Space(1) & Padl(INF(RSV("pjamt"), 2), 15, " ") & Space(1) & Padl(INF(per, 2), 8, " ") & Space(1) & Padl(INF(RSV("vatamt") + RSV("cstamt"), 2), 15, " ") & Space(3) & Padr(RSV("catname"), 13, " ") & Space(1) & Padr(RSV("abbr"), 8, " ")
                        Print #a, Space(3) & Padl(SlCnt, 4, " ") & Space(1) + Space(40) + Space(1) & Space(15) & Space(1) & Padr(RSV("comm_code"), 11, " ") & Space(1) & Padl(INF(RSV("pjamt"), 2), 15, " ") & Space(1) & Padl(INF(per, 2), 8, " ") & Space(1) & Padl(INF(RSV("vatamt") + RSV("cstamt"), 2), 15, " ") & Space(1) & Padr(RSV("vcatcd"), 8, " ") & Space(1) & Padr(RSV("abbr"), 8, " ")
                        Print #a,
                        I = I + 2
                        SlCnt = SlCnt + 1
                    End If
                    valuetotal = valuetotal + val(RSV("pjamt"))
                    vattotal = vattotal + val(RSV("vatamt")) + val(RSV("cstamt"))
                    If I >= 57 Then
                        Print #a, Chr(12)
                        I = 0
                        Print #a,
                        Print #a, Space(3) & Chr(27) & "E" & CENTRE(divname, 130, "  ") & Chr(27) & "F"
                        Print #a,
                        Print #a, Chr(27) & "E" & Space(3) + Padr(RSS("description") & " ABSTRACT ", 111, " ") & Chr(27) & "F"
                        Print #a, Space(3) + String(132, "-")
                        Print #a, Chr(27) & "E" & Space(3) + "S.No Name of the Seller                       Seller's        Commodity  Purchase/Receipt  Rate of       VAT / CST Category Division" & Chr(27) & "F"
                        Print #a, Chr(27) & "E" & Space(3) + "                                               TIN NO.        Code              Value(Rs)      Tax        Paid(Rs)                  " & Chr(27) & "F"
                        Print #a, Space(3) + String(132, "-")
                        I = I + 8
                    End If
                RSV.MoveNext
                Loop
            End If
            
            Print #a, Space(3) + String(132, "-")
            Print #a, Chr(27) & "E" & Space(3) & Space(3) & Space(1) + Space(37) + Space(1) & Space(15) & Space(1) & Space(7) & Space(1) & "Total : " & Padl(INF(valuetotal, 2), 15, " ") & Space(10) & Padl(INF(vattotal, 2), 15, " ") & Chr(27) & "F"
            Print #a, Space(3) + String(132, "-")
            Print #a,
            Print #a,
            Print #a, Chr(27) & "E" & Space(23) + Padr("CATEGORY ABSTRACT", 85, " ") & Chr(27) & "F"
            Print #a, Space(23) + String(85, "-")
            Print #a, Chr(27) & "E" & Space(23) + "Category            Purchase / Receipt value             VAT Paid            CST Paid" & Chr(27) & "F"
            Print #a, Space(23) + String(85, "-")
            Set RSV = New Recordset
            If st = "W" Then
                'RSV.Open "select distinct c.slcode,c.slname ,sum(bvalue) as val1,SUM(btaxamt) as Tax_Amt,c.TINNO,Div.Abbr as Division,IG.Comm_Code as Commodity from in_pjh a,in_pjl b,fa_slmas c,in_item i ,in_vcat cc,PP_Divmas Div,In_Grp IG  " & _
                     "Where a.billno is not null and A.pjvOCNO = B.pjvOCNO  And A.SLCODE = c.SLCODE and i.itemcode=b.itemcode and b.vcat=vcatcode and a.Divcode=Div.Divcode and Left(I.ItemCode,4)=Ig.GrpCode " & _
                     "and c.state_code=(select state_code from pp_divmas where divcode ='" & divcode & "' )   " & _
                     "AND A.pjvOCDT=B.pjvOCDT and a.fatc=b.fatc and b.pjvocdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode = '" & divcode & "' AND bTAXPER = " & per & " AND B.VCAT = '" & va & "'  group by c.slcode,c.slname,c.TINNO,Div.Abbr,IG.Comm_Code order by c.slcode", cnn, adOpenStatic
                RSV.Open "select distinct isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                            ",a.vatper,sum(a.pjamt) as pjamt,a.divcode," & _
                            "c.abbr,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e,rm_arrival f where a.lotno=f.lotno and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=f.supcd and a.arrno=f.arrno and a.supcd=b.slcode and a.divcode=c.divcode " & _
                            "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code=(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                            "AND OPFLG<>'Y' and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                            "group by a.vatper,a.divcode,c.abbr,a.vcatcd", Cnn, adOpenStatic
            Else
                'RSV.Open "select distinct c.slcode,c.slname ,sum(bvalue) as val1,SUM(btaxamt) as Tax_Amt,c.TINNO,Div.Abbr as Division,IG.Comm_Code as Commodity from in_pjh a,in_pjl b,fa_slmas c,in_item i ,in_vcat cc,PP_Divmas Div,In_Grp IG  " & _
                     "Where a.billno is not null and A.pjvOCNO = B.pjvOCNO  And A.SLCODE = c.SLCODE and i.itemcode=b.itemcode and b.vcat=vcatcode and a.Divcode=Div.Divcode and Left(i.ItemCode,4)=IG.GrpCode " & _
                     "and c.state_code not in (select state_code from pp_divmas where divcode ='" & divcode & "' )  " & _
                     "AND A.pjvOCDT=B.pjvOCDT  and a.fatc=b.fatc and b.pjvocdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode = '" & divcode & "' AND bTAXPER = " & per & " AND B.VCAT = '" & va & "'  group by c.slcode,c.slname,c.TINNO,Div.Abbr,IG.Comm_Code order by c.slcode", cnn, adOpenStatic
                RSV.Open "select distinct isnull(sum(a.vatamt),0) as cstamt,isnull(sum(a.cstamt),0) as vatamt" & _
                            ",a.vatper,sum(a.pjamt) as pjamt,a.divcode," & _
                            "c.abbr,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e,rm_arrival f where a.lotno=f.lotno and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=f.supcd and a.arrno=f.arrno and a.supcd=b.slcode and a.divcode=c.divcode " & _
                            "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code not in(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                            "AND OPFLG<>'Y' and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                            "group by a.vatper,a.divcode,c.abbr,a.vcatcd", Cnn, adOpenStatic
            End If
            Do While Not RSV.EOF
                Print #a, Space(23) & Padr(RSV("vcatcd"), 13, " ") & Space(1) & Padl(INF(RSV("pjamt"), 2), 30, " ") & Space(1) & Padl(INF(RSV("vatamt"), 2), 20, " ") & Space(3) & Padl(INF(RSV("cstamt"), 2), 17, " ")
                Print #a,
            valuetotal1 = valuetotal1 + val(RSV("pjamt"))
            vattotal1 = vattotal1 + val(RSV("vatamt"))
            csttotal1 = csttotal1 + val(RSV("cstamt"))
            RSV.MoveNext
            Loop

            Print #a, Space(23) + String(85, "-")
            Print #a, Chr(27) & "E" & Space(23) & Padr("Total:", 13, " ") & Space(1) & Padl(INF(valuetotal1, 2), 30, " ") & Space(1) & Padl(INF(vattotal1, 2), 20, " ") & Space(3) & Padl(INF(csttotal1, 2), 17, " ") & Chr(27) & "F"
            Print #a, Space(23) + String(85, "-")
            Print #a, Chr(12)
            Close #a
'            Open "c:\vatreprot.bat" For Output As #a
'                Print #a, "cd\"
'                Print #a, "c:"
'                Print #a, "type vatreport.txt>prn"
'            Close #a
'            Set RPTV = New Report.ReportView
'            RPTV.txtfile = "c:\vatreprot.TXT"
'            RPTV.Batfile = "c:\vatreprot.bat"
            a = FreeFile
            Call KALBATPROCESS("vatreprot")

Exit Sub
New_Vat_Rep_TNVATCST_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure New_Vat_Rep_TNVATCST of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub New_Vat_Report_Detailed(fs As String, ts As String, Divcode As String, va As String, p As String, st As String, MON1 As String)

Dim v1, v2, pg1, supTotRec, supRec, SNO As Integer
Dim grandTotTax, supTotTax, grandTotVal, supTotVal As Double
Dim rptv As Report.ReportView
Dim SR As String
Dim Cnn As Connection
On Error GoTo New_Vat_Report_Detailed_Error

Set Cnn = New Connection
Cnn.Open connectstring
v1 = 0
v2 = 0
per = val(p)
        Set rptv = New Report.ReportView
        a = FreeFile
        Close
        'Open "c:\vatreprot.TXT" For Output As #a
         Open KALFOLDERDATA & "\vatreprot.TXT" For Output As #a
        I = 0
        pg1 = 0
        'taxcode = rs("tax_code")
        Call PurRegHead1_TNVATCST1(CStr(fs), CStr(ts), CInt(pg1), CStr(MON1), CStr(va), CStr(p), CStr(taxcode))
        I = 4
        grandTotVal = 0
        supTotVal = 0
        grandTotTax = 0
        supTotTax = 0
        SNO = 1
        slno = 1
        cnt = 0
        Dim srr As String
        Dim strDate As String
        supTotRec = 0
        supTotTax = 0
        supTotVal = 0
        valuetotal1 = 0
        vattotal1 = 0
        csttotal1 = 0
        tmpslname = ""
        tmplotdt = ""
'            Set Rss = New Recordset
'            Rss.Open "select * from ig_tax where tax_code='" & taxcode & "'", cnn, adOpenStatic
'            Print #a, Chr(27) & "E" & CENTRE("ANNEXURE - 1 : RAW MATERIAL", 132, " ") & Chr(27) & "F"
'            Print #a,
            pg1 = pg1 + 1
            Set RSV = New Recordset
            If st = "W" Then
                RSV.Open " select distinct a.PJDT,a.BILLNO,a.billdt,a.supcd,b.slname,b.city,b.tinno,a.tax_code,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                            " ,a.vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,isnull(sum(a.PJAMT),0) AS puramt,a.divcode,e.catname," & _
                            " c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e ,rm_arrival f " & _
                            " Where a.LOTNO = f.LOTNO And a.LOTDT = f.LOTDT And a.Divcode = f.Divcode And a.supcd = f.supcd And a.arrno = f.arrno and a.supcd=b.slcode and a.divcode=c.divcode " & _
                            "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code=(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                            "AND OPFLG<>'Y' and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                            "group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd,a.pjdt,b.city,a.BILLNO,a.BILLDT,a.tax_code,e.catname", Cnn, adOpenStatic
            ElseIf st = "O" Then
               RSV.Open "select distinct a.PJDT,a.BILLNO,a.billdt,a.supcd,b.slname,b.city,b.tinno,a.tax_code,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                            ",a.vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,isnull(sum(a.PJAMT),0) AS puramt,a.divcode,e.catname," & _
                            "c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e ,rm_arrival f " & _
                            " Where a.LOTNO = f.LOTNO And a.LOTDT = f.LOTDT And a.Divcode = f.Divcode And a.supcd = f.supcd And a.arrno = f.arrno and a.supcd=b.slcode and a.divcode=c.divcode " & _
                            "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code not in(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                            "AND OPFLG<>'Y' and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                            "group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd,a.pjdt,b.city,a.BILLNO,a.BILLDT,a.tax_code,e.catname", Cnn, adOpenStatic
            Else
                RSV.Open "select distinct a.PJDT,a.BILLNO,a.billdt,a.supcd,b.slname,b.city,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt," & _
                        "isnull(a.vatper,0) as vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,isnull(sum(a.PJAMT),0) AS puramt,a.divcode,c.abbr," & _
                        "e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e,rm_arrival f where a.lotno=f.lotno " & _
                        "and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=b.slcode and a.divcode= " & _
                        "c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and  a.LOTDT Between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode=" & _
                        "'" & Divcode & "' AND OPFLG<>'Y'  and pjno is not null group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd,a.pjdt,b.city,a.BILLNO,a.BILLDT", DB, adOpenStatic
            End If
            SlCnt = 1
            tmpslname = ""
            tmpdate = ""
            tmpvat = ""
            TMPCAT = ""
            valuetotal = 0
            vattotal = 0
            dblAssTotal = 0
            If st <> "A" Then
            If per = 0 Then
                MsgBox "Select Tax% from the list", vbInformation, head
                Exit Sub
            End If
            End If
            
            If RSV.RecordCount = 0 Then
                MsgBox "No record Found", vbInformation, head
                Exit Sub
            End If
            
            
            
            If st <> "A" Then
            taxcode = RSV!TAX_CODE
                Set Cnn = New Connection
                Cnn.Open connectstring
        
                Set RSS = New Recordset
                RSS.Open "select * from ig_tax where tax_code='" & taxcode & "'", Cnn, adOpenStatic
                Print #a, Space(3) + Chr(27) + "E" + Padr("Raw Material Receipts / " & RSS("description") & " Report For " & MON1, 112, " ") & Chr(27) + "F" + Space(2) + Format(CStr(pdate), "dd/mm/yy") + Space(1) & "Pg.: " + Space(1) + Padl(pg1, 3, " ")
            Else
                Print #a, Chr(27) & "E" & Space(3) + Padr("Details of Purchases / Receipts during the month " & MON1, 108, " ") & Format(pdate, "dd/MM/yy") & Space(3) & "Pg. No.:" & Padl(pg1, 3, " ") & Chr(27) & "F"
            End If
            Print #a, Space(3) + String(132, "-")
            Print #a, Chr(27) & "E" & Space(3) + "Voucher   Name of the Seller                Seller's      Seller's      Invoice   Invoice        Assesable        Tax         Total" & Chr(27) & "F"
            Print #a, Chr(27) & "E" & Space(3) + "Date                                        City          TIN No.       No.       Date               Value      Value         Value" & Chr(27) & "F"
            Print #a, Space(3) + String(132, "-")
            I = I + 5

            
            
            
            
            
            
            
            
            If RSV.RecordCount > 0 Then
                
                Do While Not RSV.EOF
                    Dim dblVat, dblCst As Double
                    
                    dblVat = IIf(IsNull(RSV!Vatamt), 0, RSV!Vatamt)
                    dblCst = IIf(IsNull(RSV!CStamt), 0, RSV!CStamt)

                    If tmpslname <> RSV("slname") Or tmpdate <> Format(RSV!pjdt, "dd/MM/yy") Then
                        Print #a, Space(1) & Padl(Format(RSV!pjdt, "dd/MM/YY"), 10, " ") & Space(2) + Padr(RSV("slname"), 32, " ") + Space(2) & Padr(RSV!CITY, 12, "") & Space(2) + Padr(RSV("Tinno"), 12, " ") & Space(2) & Padr(RSV!BillNo, 8, "") & Space(2) & Padr(Format(RSV!BILLDT, "dd/MM/yy"), 10, "") & Space(2) & Padl(INF(Round(RSV("pjamt"), 0), 2), 12, " ") & Space(2) + Padl(INF(dblVat + dblCst, 2), 9, "") & Space(2) & Padl(INF((Round(RSV("pjamt"), 0) + dblVat + dblCst), 2), 12, " ")
                        tmpslname = RSV!sLname
                        tmpdate = Format(RSV!pjdt, "dd/MM/yy")
                    Else
                        Print #a, Space(1) & Space(72) + Space(2) & Padr(RSV!BillNo, 8, "") & Space(2) & Padr(Format(RSV!BILLDT, "dd/MM/yy"), 10, "") & Space(2) & Padl(INF(Round(RSV("pjamt"), 0), 2), 12, " ") & Space(2) + Padl(INF(dblVat + dblCst, 2), 9, "") & Space(2) & Padl(INF((Round(RSV("pjamt"), 0) + dblVat + dblCst), 2), 12, " ")
                    End If
                    valuetotal = valuetotal + Round(val(RSV("pjamt")), 0)
                    vattotal = vattotal + val(RSV("vatamt")) + val(RSV("cstamt"))
                    valuetotal1 = valuetotal1 + val(Round(RSV("pjamt"), 0)) + val(RSV("vatamt")) + val(RSV("cstamt"))
                    If I >= 57 Then
                        Print #a, Space(3) + String(132, "-")
                        Print #a, Chr(12)
                        I = 0
                        Print #a,
                        Print #a, Space(3) & Chr(27) & "E" & CENTRE(divname, 130, "  ") & Chr(27) & "F"
                        Print #a,
                        Print #a, Chr(27) & "E" & CENTRE("ANNEXURE - 1 : RAW MATERIAL", 132, " ") & Chr(27) & "F"
                        Print #a,
                        pg1 = pg1 + 1
                        If st <> "A" Then
                        taxcode = RSV!TAX_CODE
                            Set Cnn = New Connection
                            Cnn.Open connectstring
                    
                            Set RSS = New Recordset
                            RSS.Open "select * from ig_tax where tax_code='" & taxcode & "'", Cnn, adOpenStatic
                            Print #a, Space(3) + Chr(27) + "E" + Padr("Raw Material Receipts / " & RSS("description") & " Report For " & MON1, 112, " ") & Chr(27) + "F" + Space(2) + Format(CStr(pdate), "dd/mm/yy") + Space(1) & "Pg.: " + Space(1) + Padl(pg1, 3, " ")
                        Else
                            Print #a, Chr(27) & "E" & Space(3) + Padr("Details of Purchases / Receipts during the month " & MON1, 108, " ") & Format(pdate, "dd/MM/yy") & Space(3) & "Pg. No.:" & Padl(pg1, 3, " ") & Chr(27) & "F"
                        End If
                        Print #a, Space(3) + String(132, "-")
                        Print #a, Chr(27) & "E" & Space(3) + "Voucher   Name of the Seller                Seller's      Seller's      Invoice   Invoice        Assesable        Tax         Total" & Chr(27) & "F"
                        Print #a, Chr(27) & "E" & Space(3) + "Date                                        City          TIN No.       No.       Date               Value      Value         Value" & Chr(27) & "F"
                        Print #a, Space(3) + String(132, "-")
                        I = I + 10
                    End If
                RSV.MoveNext
                Loop
            End If

            Print #a, Space(3) + String(132, "-")
            Print #a, Chr(27) & "E" & Space(59) & Padr(" *** Grand Total *** ", 19, " ") & Space(1) & Padl(INF(valuetotal, 2), 30, " ") & Space(0) & Padl(INF(valuetotal1, 2), 25, " ") & Chr(27) & "F"
            Print #a, Chr(27) & "E" & Space(98) & Padl(INF(vattotal, 2), 22, " ") & Chr(27) & "F"
            Print #a, Space(3) + String(132, "-")
            Print #a, Chr(12)
            Close #a
'            Open "c:\vatreprot.bat" For Output As #a
'                Print #a, "cd\"
'                Print #a, "c:"
'                Print #a, "type vatreport.txt>prn"
'            Close #a
'            Set RPTV = New Report.ReportView
'            RPTV.txtfile = "c:\vatreprot.TXT"
'            RPTV.Batfile = "c:\vatreprot.bat"

            a = FreeFile
            Call KALBATPROCESS("vatreprot")

Exit Sub
New_Vat_Report_Detailed_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure New_Vat_Report_Detailed of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub New_Vat_Rep_TNVATCST1(fs As String, ts As String, Divcode As String, va As String, p As String, st As String, MON1 As String)

Dim v1, v2, pg1, supTotRec, supRec, SNO As Integer
Dim grandTotTax, supTotTax, grandTotVal, supTotVal As Double
Dim rptv As Report.ReportView
Dim SR As String
Dim Cnn As Connection
On Error GoTo New_Vat_Rep_TNVATCST1_Error

Set Cnn = New Connection
Cnn.Open connectstring
v1 = 0
v2 = 0
per = val(p)
        Set rptv = New Report.ReportView
        a = FreeFile
        Close
        'Open "c:\vatreprot.TXT" For Output As #a
         Open KALFOLDERDATA & "\vatreprot.TXT" For Output As #a
        I = 0
        pg1 = 0
        'taxcode = rs("tax_code")
        Call PurRegHead1_TNVATCST1(CStr(fs), CStr(ts), CInt(pg1), CStr(MON1), CStr(va), CStr(p), CStr(taxcode))
        I = 4
        grandTotVal = 0
        supTotVal = 0
        grandTotTax = 0
        supTotTax = 0
        SNO = 1
        slno = 1
        cnt = 0
        Dim srr As String
        supTotRec = 0
        supTotTax = 0
        supTotVal = 0
        valuetotal1 = 0
        vattotal1 = 0
        csttotal1 = 0
        tmpslname = ""
        tmplotdt = ""
            Set RSS = New Recordset
            RSS.Open "select * from ig_tax where tax_code='" & taxcode & "'", Cnn, adOpenStatic
            Print #a, Chr(27) & "E" & CENTRE("ANNEXURE - 1 : RAW MATERIAL", 132, " ") & Chr(27) & "F"
            Print #a,
            pg1 = pg1 + 1
            Print #a, Chr(27) & "E" & Space(3) + Padr("Details of Purchases / Receipts during the month " & MON1, 108, " ") & Format(pdate, "dd/MM/yyyy") & Space(3) & "Pg. No.:" & Padl(pg1, 3, " ") & Chr(27) & "F"
            Print #a, Space(3) + String(132, "-")
            Print #a, Chr(27) & "E" & Space(3) + "S.No Name of the Seller                       Seller's        Commodity  Purchase/Receipt  Rate of       VAT / CST Category Division" & Chr(27) & "F"
            Print #a, Chr(27) & "E" & Space(3) + "                                               TIN NO.        Code              Value(Rs)      Tax        Paid(Rs)                  " & Chr(27) & "F"
            Print #a, Space(3) + String(132, "-")
            I = I + 5
            Set RSV = New Recordset
            If st = "W" Then
                'RSV.Open "select distinct c.slcode,c.slname ,sum(bvalue) as val1,SUM(btaxamt) as Tax_Amt,c.TINNO,Div.Abbr as Division,IG.Comm_Code as Commodity from in_pjh a,in_pjl b,fa_slmas c,in_item i ,in_vcat cc,PP_Divmas Div,In_Grp IG  " & _
                     "Where a.billno is not null and A.pjvOCNO = B.pjvOCNO  And A.SLCODE = c.SLCODE and i.itemcode=b.itemcode and b.vcat=vcatcode and a.Divcode=Div.Divcode and Left(I.ItemCode,4)=Ig.GrpCode " & _
                     "and c.state_code=(select state_code from pp_divmas where divcode ='" & divcode & "' )   " & _
                     "AND A.pjvOCDT=B.pjvOCDT and a.fatc=b.fatc and b.pjvocdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode = '" & divcode & "' AND bTAXPER = " & per & " AND B.VCAT = '" & va & "'  group by c.slcode,c.slname,c.TINNO,Div.Abbr,IG.Comm_Code order by c.slcode", cnn, adOpenStatic
                RSV.Open "select distinct a.supcd,b.slname,a.tax_code,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                            ",a.vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode,e.catname," & _
                            "c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e where a.supcd=b.slcode and a.divcode=c.divcode " & _
                            "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code=(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                            "AND OPFLG<>'Y' and lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                            "group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.tax_code", Cnn, adOpenStatic
            ElseIf st = "O" Then
                'RSV.Open "select distinct c.slcode,c.slname ,sum(bvalue) as val1,SUM(btaxamt) as Tax_Amt,c.TINNO,Div.Abbr as Division,IG.Comm_Code as Commodity from in_pjh a,in_pjl b,fa_slmas c,in_item i ,in_vcat cc,PP_Divmas Div,In_Grp IG  " & _
                     "Where a.billno is not null and A.pjvOCNO = B.pjvOCNO  And A.SLCODE = c.SLCODE and i.itemcode=b.itemcode and b.vcat=vcatcode and a.Divcode=Div.Divcode and Left(i.ItemCode,4)=IG.GrpCode " & _
                     "and c.state_code not in (select state_code from pp_divmas where divcode ='" & divcode & "' )  " & _
                     "AND A.pjvOCDT=B.pjvOCDT  and a.fatc=b.fatc and b.pjvocdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode = '" & divcode & "' AND bTAXPER = " & per & " AND B.VCAT = '" & va & "'  group by c.slcode,c.slname,c.TINNO,Div.Abbr,IG.Comm_Code order by c.slcode", cnn, adOpenStatic
                RSV.Open "select distinct a.supcd,b.slname,b.tinno,a.tax_code,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                            ",a.vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode,e.catname," & _
                            "c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e where a.supcd=b.slcode and a.divcode=c.divcode " & _
                            "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code not in(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                            "AND OPFLG<>'Y' and lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                            "group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.tax_code", Cnn, adOpenStatic
            Else
                RSV.Open "select distinct a.supcd,b.slname,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt," & _
                        "isnull(a.vatper,0) as vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode,c.abbr," & _
                        "e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e,rm_arrival f where a.lotno=f.lotno " & _
                        "and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=b.slcode and a.divcode= " & _
                        "c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and  a.LOTDT Between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode=" & _
                        "'" & Divcode & "' AND OPFLG<>'Y'  and pjno is not null group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd order by " & _
                        "a.vcatcd,a.vatper,b.slname", DB, adOpenStatic
                'RSV.Open "select distinct a.supcd,b.slname,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt," & _
                         "isnull(a.vatper,0) as vatper,sum(a.pjamt) as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode,e.catname,c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas " & _
                         "c,rm_var d,rm_cat e where a.supcd=b.slcode and a.divcode=c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and " & _
                        " LOTDT Between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' " & _
                        "and a.divcode='" & Divcode & "' AND OPFLG<>'Y' group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname," & _
                        "a.vcatcd order by a.vcatcd,a.vatper,b.slname ", DB, adOpenStatic
            End If
            SlCnt = 1
            tmpslname = ""
            tmpvat = ""
            TMPCAT = ""
            valuetotal = 0
            vattotal = 0
            If RSV.RecordCount = 0 Then
                MsgBox "No record Found", vbInformation, head
                Exit Sub
            End If
            If RSV.RecordCount > 0 Then
                Do While Not RSV.EOF
                    If tmpvat <> "" Or TMPCAT <> "" Then
                        If tmpvat <> RSV("vatper") Or TMPCAT <> RSV("vcatcd") Then
                            If cnt > 1 Then
                                Print #a,
                                Print #a, Chr(27) & "E" & Space(3) & Space(3) & Space(1) + Space(37) + Space(1) & Space(15) & Space(1) & "**  Sub Total : " & Padl(INF(valuetotal, 2), 15, " ") & Space(10);
                                If vattotal > 0 Then
                                    Print #a, Padl(INF(vattotal, 2), 15, " ") & Chr(27) & "F"
                                Else
                                    Print #a, Padl(Format(vattotal, "0.00"), 15, " ") & Chr(27) & "F"
                                End If
                                Print #a,
                                valuetotal = 0
                                vattotal = 0
                            End If
                        End If
                    End If
                    If tmpslname <> RSV("slname") Then
                        'Print #a, Space(3) & Padl(SlCnt, 4, " ") & Space(1) + Padr(RSV("slname"), 30, " ") + Space(0) & Padr(RSV("Tinno"), 15, " ") & Space(1) & Padr(RSV("comm_code"), 15, " ") & Space(1) & Padl(INF(RSV("pjamt"), 2), 15, " ") & Space(1) & Padl(INF(per, 2), 8, " ") & Space(1) & Padl(INF(RSV("vatamt") + RSV("cstamt"), 2), 15, " ") & Space(3) & Padr(RSV("catname"), 13, " ") & Space(1) & Padr(RSV("abbr"), 8, " ")
                        Print #a, Space(3) & Padl(SlCnt, 4, " ") & Space(1) + Padr(RSV("slname"), 40, " ") + Space(1) & Padr(RSV("Tinno"), 15, " ") & Space(1) & Padr(RSV("comm_code"), 11, " ") & Space(1) & Padl(INF(RSV("pjamt"), 2), 15, " ") & Space(1);
                        If RSV("vatper") > 0 Then
                            Print #a, Padl(INF(RSV("vatper"), 2), 8, " ") & Space(1);
                        Else
                            Print #a, Padl(Format(RSV("vatper"), "0.00"), 8, " ") & Space(1);
                        End If
                        If RSV("vatamt") > 0 Or RSV("cstamt") > 0 Then
                            Print #a, Padl(INF(RSV("vatamt") + RSV("cstamt"), 2), 15, " ") & Space(1);
                        Else
                            Print #a, Padl(Format(RSV("vatamt") + RSV("cstamt"), "0.00"), 15, " ") & Space(1);
                        End If
                        
                        Print #a, Padr(RSV("vcatcd"), 8, " ") & Space(1) & Padr(RSV("abbr"), 8, " ")
                        'Print #a,
                        I = I + 1
                        tmpslname = RSV("slname")
                        tmpvat = RSV("vatper")
                        TMPCAT = RSV("vcatcd")
                        SlCnt = SlCnt + 1
                        cnt = cnt + 1
                    Else
                        'Print #a, Space(3) & Padl(SlCnt, 4, " ") & Space(1) + Space(30) + Space(0) & Space(15) & Space(1) & Padr(RSV("comm_code"), 15, " ") & Space(1) & Padl(INF(RSV("pjamt"), 2), 15, " ") & Space(1) & Padl(INF(per, 2), 8, " ") & Space(1) & Padl(INF(RSV("vatamt") + RSV("cstamt"), 2), 15, " ") & Space(3) & Padr(RSV("catname"), 13, " ") & Space(1) & Padr(RSV("abbr"), 8, " ")
                        Print #a, Space(3) & Padl(SlCnt, 4, " ") & Space(1) + Padr("", 40, " ") + Space(1) & Padr("", 15, " ") & Space(1) & Padr(RSV("comm_code"), 11, " ") & Space(1) & Padl(INF(RSV("pjamt"), 2), 15, " ") & Space(1);
                        If RSV("vatper") > 0 Then
                            Print #a, Padl(INF(RSV("vatper"), 2), 8, " ") & Space(1);
                        Else
                            Print #a, Padl(Format(RSV("vatper"), "0.00"), 8, " ") & Space(1);
                        End If
                        If RSV("vatamt") > 0 And RSV("cstamt") > 0 Then
                            Print #a, Padl(INF(RSV("vatamt") + RSV("cstamt"), 2), 15, " ") & Space(1);
                        Else
                            Print #a, Padl(Format(RSV("vatamt") + RSV("cstamt"), "0.00"), 15, " ") & Space(1);
                        End If
                        
                        Print #a, Padr(RSV("vcatcd"), 8, " ") & Space(1) & Padr(RSV("abbr"), 8, " ")
                        'Print #a,
                        I = I + 1
                        tmpvat = RSV("vatper")
                        TMPCAT = RSV("vcatcd")
                        SlCnt = SlCnt + 1
                    End If
                    valuetotal = valuetotal + val(RSV("pjamt"))
                    vattotal = vattotal + val(RSV("vatamt")) + val(RSV("cstamt"))
                    valuetotal1 = valuetotal1 + val(RSV("pjamt"))
                    vattotal1 = vattotal1 + val(RSV("vatamt")) + val(RSV("cstamt"))
                    If I >= 57 Then
                        Print #a, Space(3) + String(132, "-")
                        Print #a, Chr(12)
                        I = 0
                        Print #a,
                        Print #a, Space(3) & Chr(27) & "E" & CENTRE(divname, 130, "  ") & Chr(27) & "F"
                        Print #a,
                        Print #a, Chr(27) & "E" & CENTRE("ANNEXURE - 1 : RAW MATERIAL", 132, " ") & Chr(27) & "F"
                        Print #a,
                        pg1 = pg1 + 1
                        Print #a, Chr(27) & "E" & Space(3) + Padr("Details of Purchases / Receipts during the month " & MON1, 108, " ") & Format(pdate, "dd/MM/yyyy") & Space(3) & "Pg. No.:" & Padl(pg1, 3, " ") & Chr(27) & "F"
                        Print #a, Space(3) + String(132, "-")
                        Print #a, Chr(27) & "E" & Space(3) + "S.No Name of the Seller                       Seller's        Commodity  Purchase/Receipt  Rate of       VAT / CST Category Division" & Chr(27) & "F"
                        Print #a, Chr(27) & "E" & Space(3) + "                                               TIN NO.        Code              Value(Rs)      Tax        Paid(Rs)                  " & Chr(27) & "F"
                        Print #a, Space(3) + String(132, "-")
                        I = I + 10
                    End If
                RSV.MoveNext
                Loop
            End If
'            Print #a,
'            Print #a,
'            Print #a,
'            Print #a,
'            Print #a,
            
            Print #a,
            If cnt > 1 Then
                Print #a, Chr(27) & "E" & Space(3) & Space(3) & Space(1) + Space(37) + Space(1) & Space(15) & Space(1) & "**  Sub Total : " & Padl(INF(valuetotal, 2), 15, " ") & Space(10);
                If vattotal > 0 Then
                    Print #a, Padl(INF(vattotal, 2), 15, " ") & Chr(27) & "F"
                Else
                    Print #a, Padl(Format(vattotal, "0.00"), 15, " ") & Chr(27) & "F"
                End If
            End If
            Print #a, Space(3) + String(132, "-")
            'Print #a, Space(3) + String(132, "-")
            Print #a, Chr(27) & "E" & Space(3) & Space(3) & Space(1) + Space(37) + Space(1) & Space(15) & Space(1) & Space(7) & Space(1) & "Total : " & Padl(INF(valuetotal1, 2), 15, " ") & Space(10);
            If vattotal1 > 0 Then
                Print #a, Padl(INF(vattotal1, 2), 15, " ") & Chr(27) & "F"
            Else
                Print #a, Padl(Format(vattotal1, "0.00"), 15, " ") & Chr(27) & "F"
            End If
            Print #a, Space(3) + String(132, "-")
            valuetotal1 = 0
            vattotal1 = 0
            Print #a,
            Print #a,
            Print #a, Chr(27) & "E" & Space(23) + Padr("CATEGORY ABSTRACT", 85, " ") & Chr(27) & "F"
            Print #a, Space(23) + String(91, "-")
            Print #a, Chr(27) & "E" & Space(23) + "S.NO Category Tax %       Purchase / Receipt Value             VAT Paid            CST Paid" & Chr(27) & "F"
            Print #a, Space(23) + String(91, "-")
            I = I + 14
            Set RSV = New Recordset
            If st = "W" Then
                'RSV.Open "select distinct c.slcode,c.slname ,sum(bvalue) as val1,SUM(btaxamt) as Tax_Amt,c.TINNO,Div.Abbr as Division,IG.Comm_Code as Commodity from in_pjh a,in_pjl b,fa_slmas c,in_item i ,in_vcat cc,PP_Divmas Div,In_Grp IG  " & _
                     "Where a.billno is not null and A.pjvOCNO = B.pjvOCNO  And A.SLCODE = c.SLCODE and i.itemcode=b.itemcode and b.vcat=vcatcode and a.Divcode=Div.Divcode and Left(I.ItemCode,4)=Ig.GrpCode " & _
                     "and c.state_code=(select state_code from pp_divmas where divcode ='" & divcode & "' )   " & _
                     "AND A.pjvOCDT=B.pjvOCDT and a.fatc=b.fatc and b.pjvocdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode = '" & divcode & "' AND bTAXPER = " & per & " AND B.VCAT = '" & va & "'  group by c.slcode,c.slname,c.TINNO,Div.Abbr,IG.Comm_Code order by c.slcode", cnn, adOpenStatic
                RSV.Open "select distinct isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                            ",a.vatper,sum(a.assvalue) as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode," & _
                            "c.abbr,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e where a.supcd=b.slcode and a.divcode=c.divcode " & _
                            "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code=(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                            "AND OPFLG<>'Y' and lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                            "group by a.vatper,a.divcode,c.abbr,a.vcatcd", Cnn, adOpenStatic
            ElseIf st = "O" Then
                'RSV.Open "select distinct c.slcode,c.slname ,sum(bvalue) as val1,SUM(btaxamt) as Tax_Amt,c.TINNO,Div.Abbr as Division,IG.Comm_Code as Commodity from in_pjh a,in_pjl b,fa_slmas c,in_item i ,in_vcat cc,PP_Divmas Div,In_Grp IG  " & _
                     "Where a.billno is not null and A.pjvOCNO = B.pjvOCNO  And A.SLCODE = c.SLCODE and i.itemcode=b.itemcode and b.vcat=vcatcode and a.Divcode=Div.Divcode and Left(i.ItemCode,4)=IG.GrpCode " & _
                     "and c.state_code not in (select state_code from pp_divmas where divcode ='" & divcode & "' )  " & _
                     "AND A.pjvOCDT=B.pjvOCDT  and a.fatc=b.fatc and b.pjvocdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode = '" & divcode & "' AND bTAXPER = " & per & " AND B.VCAT = '" & va & "'  group by c.slcode,c.slname,c.TINNO,Div.Abbr,IG.Comm_Code order by c.slcode", cnn, adOpenStatic
                RSV.Open "select distinct isnull(sum(a.vatamt),0) as cstamt,isnull(sum(a.cstamt),0) as vatamt" & _
                            ",a.vatper,sum(a.assvalue) as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode," & _
                            "c.abbr,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e where a.supcd=b.slcode and a.divcode=c.divcode " & _
                            "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code not in(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                            "AND OPFLG<>'Y' and lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                            "group by a.vatper,a.divcode,c.abbr,a.vcatcd", Cnn, adOpenStatic
            Else
                RSV.Open "select distinct case vcatcd when 'R' then isnull(sum(a.vatamt),0) else 0 end as vatamt, " & _
                            "case vcatcd when 'O' then isnull(sum(a.vatamt),0) else 0 end as cstamt" & _
                            ",isnull(a.vatper,0) as vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.vcatcd " & _
                            "from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e,rm_arrival f where a.lotno=f.lotno and a.lotdt=f.lotdt and a.divcode=f.divcode and a.arrno=f.arrno and a.supcd=b.slcode and a.divcode=c.divcode " & _
                            "and a.varcode=d.varcode and d.catcd=e.catcd " & _
                            "AND OPFLG<>'Y' and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "'  and pjno is not null " & _
                            "group by a.vatper,a.vcatcd order by a.vcatcd,a.vatper", Cnn, adOpenStatic
            End If
            SlCnt = 0
            Do While Not RSV.EOF
                SlCnt = SlCnt + 1
                Print #a, Space(23) & Padl(SlCnt, 4, " ") & Space(1) & Padr(RSV("vcatcd"), 8, " ") & Space(1);
                If RSV("vatper") > 0 Then
                    Print #a, Padl(INF(RSV("vatper"), 2), 5, " ") & Space(1);
                Else
                    Print #a, Padl(Format(RSV("vatper"), "0.00"), 5, " ") & Space(1);
                End If
                Print #a, Padl(INF(RSV("pjamt"), 2), 30, " ") & Space(1);
                If RSV("vatamt") > 0 Then
                    Print #a, Padl(INF(RSV("vatamt"), 2), 20, " ") & Space(3);
                Else
                    Print #a, Padl(Format(RSV("vatamt"), "0.00"), 20, " ") & Space(3);
                End If
                If RSV("cstamt") > 0 Then
                    Print #a, Padl(INF(RSV("cstamt"), 2), 17, " ")
                Else
                    Print #a, Padl(Format(RSV("cstamt"), "0.00"), 17, " ")
                End If
                Print #a,
                I = I + 2
                If I >= 57 Then
                        Print #a, Space(3) + String(132, "-")
                        Print #a, Chr(12)
                        I = 0
                        Print #a,
                        Print #a, Space(3) & Chr(27) & "E" & CENTRE(divname, 130, "  ") & Chr(27) & "F"
                        Print #a,
                        Print #a, Chr(27) & "E" & CENTRE("ANNEXURE - 1 : RAW MATERIAL", 132, " ") & Chr(27) & "F"
                        Print #a,
                        pg1 = pg1 + 1
                        Print #a, Chr(27) & "E" & Space(23) + Padr("CATEGORY ABSTRACT", 85, " ") & Chr(27) & "F"
                        Print #a, Space(23) + String(91, "-")
                        Print #a, Chr(27) & "E" & Space(23) + "S.NO Category Tax %       Purchase / Receipt Value             VAT Paid            CST Paid" & Chr(27) & "F"
                        Print #a, Space(23) + String(91, "-")
                        I = I + 9
                    End If
            valuetotal1 = valuetotal1 + val(RSV("pjamt"))
            vattotal1 = vattotal1 + val(RSV("vatamt"))
            csttotal1 = csttotal1 + val(RSV("cstamt"))
            RSV.MoveNext
            Loop

            Print #a, Space(23) + String(91, "-")
            Print #a, Chr(27) & "E" & Space(23) & Padr("Total:", 19, " ") & Space(1) & Padl(INF(valuetotal1, 2), 30, " ") & Space(1) & Padl(INF(vattotal1, 2), 20, " ") & Space(3) & Padl(INF(csttotal1, 2), 17, " ") & Chr(27) & "F"
            Print #a, Space(23) + String(91, "-")
            Print #a, Chr(12)
            Close #a
'            Open "c:\vatreprot.bat" For Output As #a
'                Print #a, "cd\"
'                Print #a, "c:"
'                Print #a, "type vatreport.txt>prn"
'            Close #a
'            Set RPTV = New Report.ReportView
'            RPTV.txtfile = "c:\vatreprot.TXT"
'            RPTV.Batfile = "c:\vatreprot.bat"
            a = FreeFile
            Call KALBATPROCESS("vatreprot")

Exit Sub
New_Vat_Rep_TNVATCST1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure New_Vat_Rep_TNVATCST1 of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub monthadd1()
Dim C_Month As Integer
Dim diff As Integer
On Error GoTo monthadd1_Error

Combo4.AddItem "April - " & Year(yfdate)
Combo4.ItemData(0) = 4
Combo4.AddItem "May - " & Year(yfdate)
Combo4.ItemData(1) = 5
Combo4.AddItem "June - " & Year(yfdate)
Combo4.ItemData(2) = 6
Combo4.AddItem "July - " & Year(yfdate)
Combo4.ItemData(3) = 7
Combo4.AddItem "August - " & Year(yfdate)
Combo4.ItemData(4) = 8
Combo4.AddItem "September - " & Year(yfdate)
Combo4.ItemData(5) = 9
Combo4.AddItem "October - " & Year(yfdate)
Combo4.ItemData(6) = 10
Combo4.AddItem "November - " & Year(yfdate)
Combo4.ItemData(7) = 11
Combo4.AddItem "December - " & Year(yfdate)
Combo4.ItemData(8) = 12
Combo4.AddItem "January - " & Year(yldate)
Combo4.ItemData(9) = 1
Combo4.AddItem "February - " & Year(yldate)
Combo4.ItemData(10) = 2
Combo4.AddItem "March - " & Year(yldate)
Combo4.ItemData(11) = 3

Combo4.ListIndex = 0


C_Month = MONTH(pdate)
If C_Month > 3 Then
    Combo4.ListIndex = C_Month - 4
Else
    Combo4.ListIndex = C_Month + 8
End If

Exit Sub
monthadd1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure monthadd1 of Form repform", vbInformation, head
Screen.MousePointer = 0

End Sub


Public Sub monthadd(xx As String)
On Error GoTo monthadd_Error

If xx = "April" Then
   zz = "04"
ElseIf xx = "May" Then
   zz = "05"
ElseIf xx = "June" Then
   zz = "06"
ElseIf xx = "July" Then
   zz = "07"
ElseIf xx = "August" Then
   zz = "08"
ElseIf xx = "September" Then
   zz = "09"
ElseIf xx = "October" Then
   zz = "10"
ElseIf xx = "November" Then
   zz = "11"
ElseIf xx = "December" Then
   zz = "12"
ElseIf xx = "January" Then
   zz = "01"
ElseIf xx = "February" Then
   zz = "02"
ElseIf xx = "March" Then
   zz = "03"
End If

Exit Sub
monthadd_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure monthadd of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub PurRegHead1_TNVATCST(fs As String, ts As String, pg1 As Integer, MON1 As String, va As String, p As String, taxcode As String)
On Error GoTo PurRegHead1_TNVATCST_Error

    pg1 = pg1 + 1
    Print #a, Chr(18)
    Print #a, Space(3) & Chr(27) & "E" & CENTRE(divname, 130, "  ") & Chr(27) & "F"
    Print #a,
    Print #a,
    Set Cnn = New Connection
    Cnn.Open connectstring

    Set RSS = New Recordset
    RSS.Open "select * from ig_tax where tax_code='" & taxcode & "'", Cnn, adOpenStatic
    Print #a, Space(3) + Chr(27) + "E" + Padr("Raw Material Receipts / " & RSS("description") & " Report For " & MON1, 112, " ") & Chr(27) + "F" + Space(2) + Format(CStr(pdate), "dd/mm/yy") + Space(1) & "Pg.: " + Space(1) + Padl(pg1, 3, " ")
    Print #a, Space(3) + String(132, "-")
    Print #a, Space(3) + Chr(27) + "E" + "Date     Name of the Seller                       Bill.No. Bill.Dt. Seller's      Commidity  Purchase/Receipt   Rate   VAT/CST   CAT" & Chr(27) & "F"
    Print #a, Space(3) + Chr(27) + "E" + "                                                                     TIN NO.      Code              Value(Rs) of Tax  Paid(Rs)      " & Chr(27) & "F"
    Print #a, Space(3) + String(132, "-")

Exit Sub
PurRegHead1_TNVATCST_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure PurRegHead1_TNVATCST of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub PurRegHead1_TNVATCST1(fs As String, ts As String, pg1 As Integer, MON1 As String, va As String, p As String, taxcode As String)
On Error GoTo PurRegHead1_TNVATCST1_Error

    pg1 = pg1 + 1
    Print #a, Chr(18)
    Print #a, Space(3) & Chr(27) & "E" & CENTRE(divname, 130, "  ") & Chr(27) & "F"
    Print #a,
    Print #a,
    Set Cnn = New Connection
    Cnn.Open connectstring

'    Set Rss = New Recordset
'    Rss.Open "select * from ig_tax where tax_code='" & taxcode & "'", cnn, adOpenStatic
'    Print #a, Space(3) + Chr(27) + "E" + Padr("Cotton Receipts / " & Rss("description") & " Report For " & MON1, 112, " ") & Chr(27) + "F" + Space(2) + Format(CStr(pdate), "dd/mm/yy") + Space(1) & "Pg.: " + Space(1) + Padl(pg1, 3, " ")
'    Print #a, Space(3) + String(132, "-")
'    Print #a, Space(3) + Chr(27) + "E" + "Date     Name of the Seller                       Bill.No. Bill.Dt. Seller's      Commidity  Purchase/Receipt   Rate   VAT/CST   CAT" & Chr(27) & "F"
'    Print #a, Space(3) + Chr(27) + "E" + "                                                                     TIN NO.           Code         Value(Rs) of Tax  Paid(Rs)      " & Chr(27) & "F"
'    Print #a, Space(3) + String(132, "-")

Exit Sub
PurRegHead1_TNVATCST1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure PurRegHead1_TNVATCST1 of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Check2_Click()
If Check2.value = 1 Then
        For I = 1 To List_div.ListItems.Count
          List_div.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To List_div.ListItems.Count '- 1
             List_div.ListItems.Item(I).Checked = False
        Next I
End If
    bol = False
  '  Call load_StockDetailsCat
End Sub

Private Sub CmdAbstract_Click()
On Error GoTo Cmdabtract_Click_Error
Set Cnn = New Connection
Set DB = New Connection
Cnn.Open connectstring
DB.Open connectstring
intervalMinutes = -1
Select Case Repindex
   Case 16
                Dim sp As String
                Dim sp1 As String
                sp = repform.DTPicker2.value
                sp1 = repform.DTPicker3.value
                Set Rsst = New Recordset
                Rsst.Open "Select * from rm_Cat order by catcd", cn, adOpenStatic, adLockBatchOptimistic
            
                If CDate(sp) > CDate(sp1) Then
                    MsgBox "From Date should not be greater than To Date", vbInformation
                    DataCombo1.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                If CDate(sp1) < CDate(sp) Then
                    MsgBox "To Date should not be less than From Date", vbInformation
                    DataCombo1.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                sdr = Combo3.Text
                zz = Trim(Left(CmbRecType.Text, 3))
                If Check1.value = 1 Then
                    Do While Not Rsst.EOF
                        sdr1 = Rsst("CatCd") & " - " & Rsst("Catname")
                        If sdr <> sdr1 And sdr <> "A - ALL" Then
                            Rsst.MoveNext
                        Else
                            strCategory = Left(Combo3.Text, 1)
                            Category = Combo3.Text
                           ' Call VPCRY(sp, sp1, strCategory, 1, CStr(Category), zz, UserFooter1.SelectedStr)
                            Call IssueAbstract(sp, sp1, strCategory, 1, CStr(Category), zz, UserFooter1.SelectedStr)
                            Screen.MousePointer = 0
                            GoTo CRY1
                        End If
                    Loop
                    MsgBox "Select the Valid Category", vbInformation, head
                    Screen.MousePointer = 0
                    Combo3.Text = ""
                    Combo3.SetFocus
                    Exit Sub
                End If
        If Check1.value = 0 Then
        Call IssueAbstract(sp, sp1, strCategory, 0, CStr(Category), zz, UserFooter1.SelectedStr)
        Screen.MousePointer = 0
      '  Exit Sub
    End If




CRY1:

Dim Categoryvar As String
If strCategory = "B" Then
    Categoryvar = "Category : POLYNOSIC"
ElseIf strCategory = "C" Then
    Categoryvar = "Category : COTTON"
ElseIf strCategory = "F" Then
    Categoryvar = "Category : FLAX FIBRE"
ElseIf strCategory = "L" Then
    Categoryvar = "Category : LYCRA"
ElseIf strCategory = "P" Then
    Categoryvar = "Category : POLYESTER"
ElseIf strCategory = "A" Then
    Categoryvar = "Category : ALL"
End If

           Dim clsReceiptabstract As New clsCrystal
           Set clsReceiptabstract.cryRept = Cry_ReceiptListVarietyAbs
           clsReceiptabstract.CrystalPrint
           crr.Reset
           crr.Connect = connectstring
           crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
           crr.Formulas(0) = "divname='" & divname & "'"
           crr.Formulas(1) = "UnitName='" & PrUnitName & "'"
           crr.Formulas(2) = "Head='" & "Variety wise Receipt List from " & Format(sp, "dd-mm-yy") & " to " & Format(sp1, "dd-mm-yy") & "'"
           crr.Formulas(3) = "Category='" & Categoryvar & "'"
           crr.WindowShowPrintSetupBtn = True
           crr.WindowShowSearchBtn = True
           crr.WindowState = crptMaximized
           SendKeys "{ENTER}"
           crr.Action = 1
           crr.PrinterCopies = 1
           Screen.MousePointer = 0
           Exit Sub
   End Select
Cmdabtract_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form repform", vbInformation, head
Screen.MousePointer = 0
     
End Sub

Private Sub Command1_Click()
'On Error GoTo Command1_Click_Error

On Error GoTo Command1_Click_Error

Screen.MousePointer = 11
Call openconnection
Dim l1, l2 As RptLabel
Dim LB1 As RptLabel
Dim LB2 As RptLabel
intervalMinutes = -1

Select Case Repindex
Case 1005
    Call vatcotton
    Exit Sub
Case 1190   'Vat report
    xx = Mid$(Combo4.Text, 1, InStr(Combo4.Text, " - ") - 1)
    Call monthadd(CStr(xx))
    If zz = "01" Or zz = "02" Or zz = "03" Then
        fs = "01/" & zz & "/" & Format(yldate, "yy")
        xx = xx & " - " & Format(yldate, "yy")
    Else
        fs = "01/" & zz & "/" & Format(yfdate, "yy")
        xx = xx & " - " & Format(yfdate, "yy")
    End If

    

   C1 = fnmldate(fs)
   fs = Format(fs, "yyyy-mm-dd")
   ts = Format(C1, "yyyy-mm-dd")
  ' va = Left(DataCombo7.Text, 1)
   va = Mid$(DataCombo7.Text, InStr(DataCombo7.Text, "-") + 1, Len(DataCombo7.Text))
   
   per = Trim(DataCombo8.Text)
   st = Left(Combo5.Text, 1)
   If optAbstract.value = True Then
   If st <> "A" Then
        Call New_Vat_Rep_TNVATCST(CStr(fs), CStr(ts), CStr(Divcode), Trim(CStr(va)), CStr(per), CStr(st), CStr(xx))
   Else
        Call New_Vat_Rep_TNVATCST1(CStr(fs), CStr(ts), CStr(Divcode), Trim(CStr(va)), CStr(per), CStr(st), CStr(xx))
   End If
   Else
'   If st <> "A" Then
'        Call New_Vat_Rep_TNVATCST(CStr(fs), CStr(ts), CStr(Divcode), Trim(CStr(va)), CStr(per), CStr(st), CStr(Combo4.Text))
'   Else
        Call New_Vat_Report_Detailed(CStr(fs), CStr(ts), CStr(Divcode), Trim(CStr(va)), CStr(per), CStr(st), CStr(xx))
'   End If
   End If
   Screen.MousePointer = 0
   Exit Sub

Case 65

cottonstkason (DTPicker1.value)


Case 1117 'Insurance Report

If Combo1.Text = "" Then
    MsgBox "Select Any Month-Year", vbInformation, head
    Screen.MousePointer = 0
    Combo1.SetFocus
    Exit Sub
End If
 U = Format(DTPicker2.value, "yyyy-mm-dd")
    v = Format(DTPicker3.value, "yyyy-mm-dd")
    If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If

    catcd = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
insurance:    catcd = Trim(Mid$(Combo3.Text, 1, InStr(Combo3.Text, "-") - 1))
   
    
    Call insurance(CStr(U), CStr(v), CStr(catcd), UserFooter1.SelectedStr, CmbRecType.Text, "")
    Screen.MousePointer = 0
    Exit Sub


        
Case 101
    DataCombo1.Text = DTPicker3.value: DataCombo2.Text = DTPicker2.value
    Dc1 = Trim(Format(DataCombo1.Text, "yyyy-mm-dd"))
    Dc2 = Trim(Format(DataCombo2.Text, "yyyy-mm-dd"))
    If CDate(Dc2) < CDate(Dc1) Then
    MsgBox "To date should not be less than From date", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
    End If
    If Trim(DataCombo1.Text) = "" Or Trim(DataCombo1.Text) = "" Then
        MsgBox "Please Select the date", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Call PWPStockReport(CStr(Dc1), CStr(Dc2))
    
''Call PWPRepHeader(pg1, co, F_Date, T_Date)


Case 11                 'Arrivals to be Inspected

     'Call repproc2(Rejarrival)
     Set dv1 = New DataEnvironment1
     If dv1.rsCommand2_Grouping.State = adStateOpen Then
         dv1.rsCommand2_Grouping.Close
     End If
     Set LB1 = Rejarrival.Sections(2).Controls("LIST1")
     LB1.Caption = "Rejected  Cases As on :" & Format(DataCombo13.Text, "dd/mm/yyyy")
     Set LB2 = Rejarrival.Sections(2).Controls("pdate")
     LB2.Caption = pdate
     dv1.rsCommand2_Grouping.Open "SHAPE {select a.supcd,slname,areaname,plotno,a.varcode,arrno,arrdate,ratecy,'qty'=quantity-isnull(passbl,0),dlytype=case dlytype when 'M' then 'FOR' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d where a.contno=d.contno and a.supcd=d.supcd and a.areacode=d.areacode and a.brkcd=d.brkcd and a.bbflag=d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode  AND A.divcode='" & Divcode & "' and arrdate<='" & Format(DataCombo13.Text, "yyyy-mm-dd") & " '}  AS Command2 COMPUTE Command2 BY 'supcd','slname'", DB, adOpenStatic, adLockBatchOptimistic
     If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     Else
        Rejarrival.Show
        Screen.MousePointer = 0
     End If
     
     
     
Case 13      'Arrival Register
            DataCombo1.Text = DTPicker3.value ''''
            DataCombo2.Text = DTPicker2.value ''''
            
            a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
            B = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
            If CDate(a) > CDate(B) Then
                MsgBox "From Date should not be greater than To Date", vbInformation
                DataCombo1.SetFocus
                DTPicker3.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            If CDate(B) < CDate(a) Then
                MsgBox "To Date should not be less than From Date", vbInformation
                DataCombo1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            Call arrregReport(CStr(a), CStr(B), UserFooter1.SelectedStr)
            DTPicker3.SetFocus
            


Case 14                 'Customerwise Sales Issue

            a = DTPicker2.value ''''
            B = DTPicker3.value ''''
            
                       If CDate(a) > CDate(B) Then
                MsgBox "From Date should not be greater than To Date", vbInformation
                DataCombo1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            If CDate(B) < CDate(a) Then
                MsgBox "To Date should not be less than From Date", vbInformation
                DataCombo1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            
     'Call CustSales.CustSales(DataCombo1.Text, DataCombo2.Text, DIVNAME)
      Set rec = New Recordset
    rec.Open "select  issue_code + '-'+ issue_desc as type from rm_issuetype where isstype='S' union select DISTINCT 'A -ALL' AS TYPE FROM RM_ISSUETYPE ", cn, adOpenStatic, adLockBatchOptimistic
   sdr = Combo3.Text
    If Combo3.Text <> "" Then
     Do While Not rec.EOF
     If Combo3.Text = rec(0) Then
     GoTo SalesIssue
     Else
     rec.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Supplier ", vbInformation, head
     Screen.MousePointer = 0
     Combo3.Text = ""
     Combo3.SetFocus
     Exit Sub
SalesIssue:     Call CustSales.CustSales(DTPicker2.value, DTPicker3.value, divname)
     End If

Case 15                 'Customerwise Transfer Issue

f1 = Format(DTPicker2.value, "yyyy-mm-dd")
t1 = Format(DTPicker3.value, "yyyy-mm-dd")
If CDate(f1) > CDate(t1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(t1) < CDate(f1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker3.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        
        
Set rec = New Recordset
    rec.Open "select  issue_code + '-'+ issue_desc as type from rm_issuetype where isstype in ('T','J') union select DISTINCT 'A -ALL' AS TYPE FROM RM_ISSUETYPE ", cn, adOpenStatic, adLockBatchOptimistic

     If Combo3.Text <> "" Then
     Do While Not rec.EOF
     If Combo3.Text = rec(0) Then
     GoTo TransferIssue
     Else
     rec.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo3.Text = ""
     Combo3.SetFocus
     Exit Sub
    End If
TransferIssue: Call TIPW1(CStr(f1), t1, divname, CStr(Left(Combo3.Text, 2)), UserFooter1.SelectedStr)
 Exit Sub




Case 161
 Set rsts = New Recordset
    rsts.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
    
    If CboCategory.Text <> "" Then
     Do While Not rsts.EOF
     If CboCategory.Text = rsts(0) Or CboCategory.Text = "ALL   -   ALL" Then
     GoTo Category
     Else
     rsts.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     CboCategory.Text = ""
     CboCategory.SetFocus
     Exit Sub
     End If
     
Category:    Set DBNEW = New ADODB.Connection
    DBNEW.ConnectionString = Kslcmpsel.SelConnectStr
    DBNEW.Open
    DB.Execute "DELETE FROM RM_MIXVARIETY"
    Set Rs = New Recordset
''    rs.Open " SELECT distinct h.mixgrp,b.varcode from rm_lot b,rm_issb c ,rm_issh h  where h.docno=c.docno and h.docdt=c.docdt " & _
            " and h.divcode=c.divcode and  C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Kslcmpsel.SelDivCode & "'  AND BALES >0 " & _
            " and (B.rejflg='N' or B.rejdt>'" & Format(DTPicker4.Value, "yyyy-MM-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype " & _
            " and b.catcd=c.catcd and   h.docdt between  '" & Format(yfdate, "yyyy-MM-dd") & "'  and '" & Format(yldate, "yyyy-MM-dd") & "' AND lotyear='" & Year(yfdate) & "' Order by h.mixgrp,b.varcode ", dbnew, adOpenStatic, adLockBatchOptimistic
            
    Rs.Open "select mixgrp,varcode from( " & _
            " select b.cntcode as mixgrp,b.varcode,AVG(RATEKG)RATEKG ,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg IN ('R','H') then  sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras, 0 as isskgs, sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue  from rm_lot b where B.lotyear= '" & Year(yfdate) & "'  AND  (b.lotdt < '" & Format(DTPicker4.value, "yyyy-MM-dd") & "' OR UPPER(OPFLG)='Y')  AND BALES >0  and (B.rejflg='N' or B.rejdt>='" & Format(DTPicker4.value, "yyyy-MM-dd") & "') AND B.DIVCODE='" & Kslcmpsel.SelDivCode & "'  group by b.cntcode,b.varcode,b.bblflg ,b.ratekg " & _
            " Union     select h.mixgrp as mixgrp,b.varcode,AVG(RATEKG)RATEKG ,0 as opbales,0 as opboras,0 as opkgs, case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales, case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs, 0 as opvalue, 0 as recvalue,0 as issvalue from rm_lot b,rm_issb c,rm_issh h  where h.docno=c.docno and h.docdt=c.docdt  and h.divcode=c.divcode and  C.ISSUED='Y' AND  (b.lotdt < '" & Format(DTPicker4.value, "yyyy-MM-dd") & "'  OR UPPER(OPFLG)='Y') and " & _
            " h.DOCDT Between '" & Format(yfdate, "yyyy-MM-dd") & "'  and '" & Format(yldate, "yyyy-MM-dd") & "'  and   b.lotno=c.lotno and B.lotyear='" & Year(yfdate) & "' and   b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and h.docdt <'" & Format(DTPicker4.value, "yyyy-MM-dd") & "' and  (B.rejflg='N' or B.rejdt>='" & Format(DTPicker4.value, "yyyy-MM-dd") & "') and (b.lotdt < '" & Format(DTPicker4.value, "yyyy-MM-dd") & "'   OR UPPER(OPFLG)='Y') AND B.DIVCODE='" & Kslcmpsel.SelDivCode & "'  AND B.DIVCODE=C.DIVCODE group by h.mixgrp,b.varcode,b.bblflg,b.ratekg " & _
            " Union  select h.mixgrp as mixgrp,b.varcode,AVG(RATEKG)RATEKG,0 as opbales,0 as opboras,0 as opkgs, 0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue, round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue  from rm_lot b,rm_issb c ,rm_issh h  where h.docno=c.docno and h.docdt=c.docdt and h.divcode=c.divcode and (b.lotdt < '" & Format(DTPicker4.value, "yyyy-MM-dd") & "'  OR UPPER(OPFLG)='Y') and h.docdt between  '" & Format(yfdate, "yyyy-MM-dd") & "'  and '" & Format(yldate, "yyyy-MM-dd") & "' and  b.lotno=c.lotno and B.lotyear='" & Year(yfdate) & "'  and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd " & _
            " and   h.docdt <'" & Format(DTPicker4.value, "yyyy-MM-dd") & "' And (B.rejflg='N' or B.rejdt>='" & Format(DTPicker4.value, "yyyy-MM-dd") & "') and (b.lotdt < '" & Format(DTPicker4.value, "yyyy-MM-dd") & "'  OR UPPER(OPFLG)='Y')  AND B.DIVCODE='" & Kslcmpsel.SelDivCode & "'  AND B.DIVCODE=C.DIVCODE group by h.mixgrp,b.varcode,b.bblflg,b.ratekg ) a  group by varcode,mixgrp   ", DB, adOpenStatic
    If Rs.RecordCount > 0 Then Rs.MoveFirst
    
    Do While Not Rs.EOF
        Set rs1 = New Recordset
        rs1.Open " SELECT distinct max(h.docdt) docdt from rm_lot b,rm_issb c ,rm_issh h  where h.docno=c.docno and h.docdt=c.docdt " & _
            " and h.divcode=c.divcode and  C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Kslcmpsel.SelDivCode & "'  AND BALES >0 " & _
            " and (B.rejflg='N' or B.rejdt>'" & Format(DTPicker4.value, "yyyy-MM-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype " & _
            " and b.catcd=c.catcd and   h.docdt between  '" & Format(yfdate, "yyyy-MM-dd") & "'  and '" & Format(yldate, "yyyy-MM-dd") & "' AND lotyear='" & Year(yfdate) & "' and h.mixgrp='" & Rs("mixgrp") & "' and b.varcode='" & Rs("varcode") & "' ", DBNEW, adOpenStatic
                
        If rs1.RecordCount > 0 Then
            If IsNull(rs1("docdt")) = False Then
                Set RS2 = New Recordset
                RS2.Open "select h.mixgrp as mixgrp,b.varcode, " & _
                        " sum(C.ACTISSKGS) as IssStockkgs " & _
                        " from rm_lot b,rm_issb c ,rm_issh h  where h.docno=c.docno and h.docdt=c.docdt " & _
                        " and h.divcode=c.divcode and  C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Kslcmpsel.SelDivCode & "'  AND BALES >0 " & _
                        " and (B.rejflg='N' or B.rejdt>'" & Format(DTPicker4.value, "yyyy-MM-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype " & _
                        " and b.catcd=c.catcd and   h.docdt between  '" & Format(yfdate, "yyyy-MM-dd") & "'  and '" & Format(yldate, "yyyy-MM-dd") & "' and h.docdt='" & Format(rs1("docdt"), "yyyy-mm-dd") & "' and h.mixgrp='" & Rs("mixgrp") & "' and b.varcode='" & Rs("varcode") & "' " & _
                        " And lotyear='" & Year(yfdate) & "'  group by h.mixgrp,b.varcode,b.opflg,b.bblflg ", DBNEW, adOpenStatic
                If RS2.RecordCount > 0 Then
                    DB.Execute "INSERT INTO RM_MIXVARIETY (MIXGRP,VARCODE,ISSUEKGS) VALUES ('" & RS2("MIXGRP") & "','" & RS2("VARCODE") & "' ,'" & RS2("IssStockkgs") & "') "
                End If
            End If
        End If
        
        Rs.MoveNext
    Loop
    
    Dim CatStr As String
    CatStr = Mid$(CboCategory.Text, 1, InStr(CboCategory.Text, "-") - 1)
    crr.Reset
    crr.Connect = connectstring
    If Trim(CatStr) <> "ALL" Then
        If OptMixGrp.value Then
            crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\MixGrpVarietywiseStk.rpt"
        Else
            crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\MixCntVarietywiseStk.rpt"
        End If
            
    Else
        If OptMixGrp.value Then
            crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\MixGrpVarietywiseStk_All.rpt"
        Else
            crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\MixCntVarietywiseStk_All.rpt"
        End If
    End If
    crr.RetrieveDataFiles
    crr.DataFiles(0) = Kslcmpsel.SelDB & Mid(crr.DataFiles(0), InStr(1, crr.DataFiles(0), "."), Len(crr.DataFiles(0)))

    crr.StoredProcParam(0) = Format(yfdate, "yyyy-MM-dd")
    crr.StoredProcParam(1) = Format(yldate, "yyyy-MM-dd")
    crr.StoredProcParam(2) = Year(yfdate)
    crr.StoredProcParam(3) = Format(DTPicker4.value, "yyyy-MM-dd")
    crr.StoredProcParam(4) = Format(DTPicker4.value, "yyyy-MM-dd")
    crr.StoredProcParam(5) = Kslcmpsel.SelDivCode
    crr.StoredProcParam(6) = Trim(CatStr)


    crr.ParameterFields(0) = "divname;" & Kslcmpsel.SelDivision
    crr.ParameterFields(1) = "FDate;" & " as on " & Format(DTPicker4.value, "dd/mm/yy")
    crr.ParameterFields(2) = "PDate;" & Format(pdate, "dd/mm/yy")

    crr.PrinterCopies = 1
    crr.WindowState = crptMaximized

    SendKeys "{ENTER}"
    crr.Action = 2



Case 16              '   Varietywise Purchase

     Dim sp As String
     Dim sp1 As String
'     sp = repform.DataCombo1.Text
'     sp1 = repform.DataCombo2.Text
    sp = repform.DTPicker2.value
    sp1 = repform.DTPicker3.value
    Set Rsst = New Recordset
    Rsst.Open "Select * from rm_Cat order by catcd", cn, adOpenStatic, adLockBatchOptimistic

     If CDate(sp) > CDate(sp1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(sp1) < CDate(sp) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
sdr = Combo3.Text
zz = Trim(Left(CmbRecType.Text, 3))
'Combo3.ListIndex = ListIndex - 1
If Check1.value = 1 Then
 Do While Not Rsst.EOF
        sdr1 = Rsst("CatCd") & " - " & Rsst("Catname")
        If sdr <> sdr1 And sdr <> "A - ALL" Then
            Rsst.MoveNext
        Else
        strCategory = Left(Combo3.Text, 1)
          Category = Combo3.Text
        Call VP(sp, sp1, strCategory, 1, CStr(Category), zz, UserFooter1.SelectedStr)
        Screen.MousePointer = 0
        Exit Sub
        End If
        Loop
         MsgBox "Select the Valid Category", vbInformation, head
     Screen.MousePointer = 0
     Combo3.Text = ""
     Combo3.SetFocus
     Exit Sub
End If
       
    
   If Check1.value = 0 Then
      Call VP(sp, sp1, strCategory, 0, CStr(Category), zz, UserFooter1.SelectedStr)
        Screen.MousePointer = 0
       Exit Sub
       End If
     'dv1.rsCommand2_Grouping.Open "SHAPE {select distinct a.varcode,varname,a.areacode as areacd,areaname,lotdt,lotno, a.catcd,bales=(case bbflag when 'B' then quantity  end), borah=(case bbflag when 'R' then quantity end),ratecy/355.6 as ratekgs, ratequtl=(ratecy/355.6)*100,value=netwt*(ratecy/355.6) from rm_arrival a,rm_var b,rm_area c  where a.varcode=b.varcode and a.areacode=c.areacode and a.divcode='" & divcode & "' and a.arrdate Between '" & Format(DataCombo1.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'}  AS Command2 COMPUTE Command2 BY 'varcode','varname'", cn, adOpenStatic, adLockBatchOptimistic
     dv1.rsCommand2_Grouping.Open "SHAPE {select distinct a.varcode,varname,a.areacd,areaname,lotdt,lotno, a.catcd,bales=(case bblflg when 'B' then bales  end), borah=(case bblflg when  IN ('R','H') then bales end),ratekg as ratekgs, ratequtl=ratekg*100,value=netwt*ratekg from rm_lot a, rm_var b,rm_area c  where a.varcode=b.varcode and a.areacd=c.areacode  and a.divcode='" & Divcode & "' and a.catcd = b.catcd and a.arrdt Between '" & Format(DataCombo1.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'}  AS Command2 COMPUTE Command2 BY 'varcode','varname'", cn, adOpenStatic, adLockBatchOptimistic
     If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     Else
        Rptpurvarwise.Show
        Screen.MousePointer = 0
     End If

Case 17

Dim sType As String
If Combo1.Text = "" Then
    MsgBox "Select Any Month-Year", vbInformation, head
    Screen.MousePointer = 0
    Combo1.SetFocus
    Exit Sub
End If
U = Format(DTPicker2.value, "yyyy-mm-dd")
v = Format(DTPicker3.value, "yyyy-mm-dd")
If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        
    sType = Trim(Mid$(CmbRecType.Text, 1, InStr(CmbRecType.Text, "-") - 1))
    catcd = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
    catcd = Trim(Mid$(Combo3.Text, 1, InStr(Combo3.Text, "-") - 1))

    
    
    'Call Form4.mdlform4(CStr(Combo1.Text), CStr(Catcd))
    Call Form4.mdlform4(CStr(U), CStr(v), CStr(catcd), CStr(Trim(sType)))
    Screen.MousePointer = 0
    Exit Sub
    Set REP = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    cnt = 0
   ' Open "c:\formIV.txt" For Output As #f
   Open KALFOLDERDATA & "\formIV.TXT" For Output As #f
    Call monval
    catcd = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
    
    Set Rs = New Recordset
    'rAVIrs.Open "select  distinct docdt from rm_issb where docdt between '" & Date1 & "' and '" & Date2 & "' group by docdt", cn, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select  distinct lOTdt from rm_LOT where lOTdt between '" & date1 & "' and '" & date2 & "' and catcd='" & catcd & "'group by lOTdt", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.BOF Or Rs.EOF Then
        MsgBox "Sorry ! No Issues found for this month", vbInformation, head
        Screen.MousePointer = 0
        Close #f
        Exit Sub
    End If
    date1 = DTPicker2.value
    date2 = DTPicker3.value
    date3 = Format(DateAdd("m", 1, date1) - 1, "yyyy/mm/dd")
    date3 = Year(date1) & "/" & MONTH(date1) - 1 & "/" & Day(date2)
    date3 = Format(date3, "yyyy-mm-dd")
    If Table_Exists("formiv") = True Then
        DB.Execute "delete from formiv"
    Else
        DB.Execute "Create table Formiv (date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstotkg numeric(15,3),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3))"
    End If

    Set Oprs = New Recordset
    Oprs.Open "select isnull(SUM(ISNULL(OPBALE,0)),0) AS OPBALE,isnull(SUM(ISNULL(OpBorah,0)),0) AS OpBorah,isnull(SUM(ISNULL(OpTOT,0)),0) AS OpTOT,isnull(SUM(ISNULL(OpTOTKGS,0)),0) AS OpTOTKGS  FROM (SELECT 'OpBale'=case when bblflg ='B' then sum(isnull(bales,0)-isnull(issbal,0)) else 0 end ,'OpBorah'=case when bblflg ='R' then sum(isnull(bales,0)-isnull(issbal,0)) else 0 end ,'OpTot'=sum(isnull(bales,0)-isnull(issbal,0)), sum(isnull(netwt,0)-isnull(isswt,0)) as 'optotkgs' from rm_lot where month(lotdt)=" & MONTH(date2) - 1 & " and catcd='" & catcd & "'group by bblflg) A", DB, adOpenStatic
    DB.Execute "Insert into formiv (date1,opbales,opborah,optot,optotkg) values('" & Format(date1, "yyyy-mm-dd") & "'," & Oprs("opbale") & "," & Oprs("opborah") & "," & Oprs("optot") & "," & Oprs("optotkgs") & ")"
    'DB.Execute "Create table #Form (openBale numeric(9,2),OpenWeight numeric(14,2))"
    'DB.Execute "insert into #form values(" & Oprs(0) & "," & Oprs(1) & ")"
    U = Format(Rs(0), "YYYY-MM-DD")
    v = Format(Rs(0), "YYYY-MM-DD")

    For I = 1 To Mid$(date2, 9, 10)
         totoprecbale = 0
         totoprecborah = 0
         totoprectot = 0
         totoprectotkg = 0
        Set RecRs = New Recordset
        'Receipt Values
        RecRs.Open "SELECT ISNULL(SUM(ISNULL(RECBALE,0)),0) AS RECBALE, ISNULL(SUM(ISNULL(RecBorah,0)),0) AS RecBorah, ISNULL(SUM(ISNULL(RecTot,0)),0) AS RecTot, ISNULL(SUM(ISNULL(Rectotkgs,0)),0) AS Rectotkgs FROM (Select 'RecBale'=case when bblflg ='B' then sum(isnull(bales,0)) else 0 end ,'RecBorah'=case when bblflg ='R' then sum(isnull(bales,0)) else 0 end ,'RecTot'=sum(isnull(bales,0)), sum(isnull(netwt,0)) as 'Rectotkgs' from rm_lot where lotdt='" & Format(date1, "yyyy-mm-dd") & "' and (opflg='N' OR OPFLG='Y') and catcd='" & catcd & "' group by bblflg)A", DB, adOpenStatic
        If Not RecRs.EOF Then
            DB.Execute "Update formiv set recbale=" & RecRs("recbale") & ",recborah=" & RecRs("recborah") & ",rectot=" & RecRs("rectot") & ",rectotkg=" & RecRs("rectotkgs") & " where date1='" & Format(date1, "yyyy-mm-dd") & "' "
            totoprecbale = totoprecbale + RecRs("recbale")
            totoprecborah = totoprecborah + RecRs("recborah")
            totoprectot = totoprectot + RecRs("rectot")
            totoprectotkg = totoprectotkg + RecRs("rectotkgs")
        End If
        'Issue Values
        Set issrs = New Recordset
        '
        issrs.Open "SELECT ISNULL(SUM(ISSBALE),0) AS ISSBALE,ISNULL(SUM(IssBorah),0) AS IssBorah,ISNULL(SUM(ISSTOT),0) AS ISSTOT,ISNULL(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select 'IssBale'=case when bblflg ='B' then COUNT(*) else 0 end ,'IssBorah'=case when bblflg ='R' then COUNT(*) else 0 end ,'IssTot'=COUNT(*), sum(isnull(issKGS,0)) as 'Isstotkgs' from rm_issb a,rm_lot b where a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(date1, "yyyy-mm-dd") & "' and a.catcd='" & catcd & "'  group by bblflg) A", DB, adOpenStatic
        'IssRs.Open "Select 'IssBale'=case when bblflg ='B' then isnull(issbal,0) else 0 end ,'IssBorah'=case when bblflg ='R' then isnull(issbal,0) else 0 end ,'IssTot'=isnull(issbal,0), isnull(isswt,0) as 'Isstotkgs' from rm_issb a,rm_lot b where a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt ='" & Format(Date1, "yyyy-mm-dd") & "' group by bblflg,B.ISSBAL,B.ISSWT", DB, adOpenStatic

        If Not Rs.EOF Then
            DB.Execute "Update formiv set issbale=" & issrs("issbale") & ",issboarh=" & issrs("issborah") & ",isstot=" & issrs("isstot") & ",isstotkg=" & issrs("isstotkgs") & " where date1='" & Format(date1, "yyyy-mm-dd") & "'"
        End If
        'Opening +Receipt Values
        Set Oprs = New Recordset
        Oprs.Open "Select ISNULL(Opbales,0)Opbales,ISNULL(opborah,0)opborah,ISNULL(optot,0)optot,ISNULL(optotkg,0)optotkg from formiv where date1='" & Format(date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
        If Not Oprs.EOF Then
           totoprecbale = totoprecbale + Oprs("Opbales")
           totoprecborah = totoprecborah + Oprs("Opborah")
           totoprectot = totoprectot + Oprs("optot")
           totoprectotkg = totoprectotkg + Oprs("optotkg")
           DB.Execute "Update formiv set oprecbale=" & totoprecbale & ",oprecborah=" & totoprecborah & ",oprectot=" & totoprectot & ",oprectotkg=" & totoprectotkg & " where date1='" & Format(date1, "yyyy-mm-dd") & "'"
        End If
        'Closing Values
         Set Oprs = New Recordset
         Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as 'ClosingBale',sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as 'ClosingBorah',sum(isnull(oprectot,0))-sum(isnull(isstot,0)) as 'ClosingTot',sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0)) as 'ClosingKgs'  from formiv where date1='" & Format(date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
         If Not Oprs.EOF Then
            DB.Execute "Update formiv set totbale=" & Oprs("ClosingBale") & ",totborah=" & Oprs("ClosingBorah") & ",total=" & Oprs("ClosingTot") & ",totkg=" & Oprs("ClosingKgs") & " where date1='" & Format(date1, "yyyy-mm-dd") & "'"
         End If
         'Opening Balance for the next day
         Set Oprs = New Recordset
         Oprs.Open "Select sum(isnull(totbale,0)),sum(isnull(totborah,0)),sum(isnull(total,0)),sum(isnull(totkg,0)) from formiv where date1='" & Format(date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
         If Not Oprs.EOF Then
            date1 = DateAdd("d", 1, date1)
            DB.Execute "Insert into formiv(date1,opbales,opborah,optot,optotkg) values('" & Format(date1, "yyyy-mm-dd") & "'," & Oprs(0) & "," & Oprs(1) & "," & Oprs(2) & "," & Oprs(3) & ")"
        End If
    Next

    Print #f, Chr(15)
    Call prnhead

    Set RS2 = New Recordset
      RS2.Open " select k.divcode,k.catcd,k.lotno,k.lotdt,sum(isnull(k.openbal,0)) as opkgs,sum(isnull(k.openbale,0))'openBale',sum(isnull(k.openborah,0))'openBoarh',(sum(isnull(k.openbale,0))+sum(isnull(k.openborah,0))) 'openTotal',sum(isnull(recpbale,0)) as recpbale,sum(isnull(recpborah,0)) as recpborah,(sum(isnull(recpbale,0)) +sum(isnull(recpborah,0))) as RecTotal,sum(isnull(issbale,0))as IssBale ,sum(isnull(issborah,0)) as IssBorah,(sum(isnull(issbale,0))+sum(isnull(issborah,0))) as IssTotal,sum(isnull(recep,0)) as reckgs,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openbal,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Closing',sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Closborah'," & _
                "(sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0))+sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0))) AS CLOSBALEBOAR,(sum(isnull(k.openbale,0))+sum(isnull(recpbale,0))) as oprebale,(sum(isnull(k.openborah,0))+sum(isnull(recpborah,0))) as opreborah,((sum(isnull(k.openbale,0))+sum(isnull(recpbale,0)))+(sum(isnull(k.openborah,0))+sum(isnull(recpborah,0)))) as opretot,(sum(isnull(k.openbal,0))+sum(isnull(recep,0))) as opreKgs," & _
                " sum(isnull(g.ratekg,0)) * 100 'ratequn',f.varname 'varname',(sum(isnull(g.ratekg,0)) * (sum(isnull(k.Openbal,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)))) 'Value' from ((select e.divcode 'divcode' ,e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',(isnull(e.netwt,0)) 'openbal',(case when e.bblflg = 'B' then isnull(e.bales,0) end) as 'OpenBale',(case when e.bblflg = 'R' then isnull(e.bales,0) end) as 'OpenBorah',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'Issue',0 as IssBale,0 as IssBorah from   (select c.divcode 'divcode',c.catcd 'catcd',c.lotno 'lotno',c.lotdt 'lotdt',sum(isnull(c.isskgs,0)) 'issuekgs',count(c.baleno)'Bales' from rm_issb c,rm_lot b where c.docdt <= '2002-10-04' and  c.divcode = b.divcode and b.divcode = '" & Divcode & "' and b.opflg='Y'  group by c.lotno,c.catcd,c.divcode,c.lotdt)t ,rm_lot e " & _
                " where e.lotdt <=  '" & v & "' and e.divcode = t.divcode and t.divcode = '" & Divcode & "' and e.opflg='Y' and  e.catcd = 'C' and  (isnull(e.netwt,0)) >= 0 union   select e.divcode 'divcode',e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',e.netwt as 'Recep',case when e.bblflg = 'B' then e.bales end 'recpBale',case when e.bblflg = 'R' then e.bales end 'recpBorah',0 as 'Issue',0 as IssBale,0 as IssBorah from rm_lot e,rm_issb c where e.lotdt between  '" & U & "' and  '" & v & "' and opflg='N' and e.catcd = 'C'   union  select a.divcode 'divcode',a.catcd 'catcd',a.lotno 'lotno',a.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale,0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah' " & _
                " from rm_issb a,rm_lot c where a.lotdt between  '" & U & "' and  '" & v & "' and a.catcd = 'C' and a.lotno = c.lotno and a.lotdt = c.lotdt  and a.catcd = c.catcd  and c.catcd = 'C' group by a.divcode,a.catcd,a.lotno,a.lotdt,c.bblflg) )k ,rm_lot g ,rm_var f where g.lotno = k.lotno and g.lotdt = k.lotdt and g.varcode = f.varcode and g.catcd = k.catcd and  g.divcode = k.divcode and g.divcode = '" & Divcode & "' and  g.lotdt between  '" & U & "' and  '" & v & "' group by k.divcode,k.catcd,k.lotno,k.lotdt,f.varname", DB, adOpenStatic

    Set RS2 = New Recordset
    RS2.Open "Select date1,opbales as 'Openbale',opborah as 'OPENBOARH',optot as 'oPENTOTAL',round(optotkg,2) as 'opkgs',recbale as 'Recpbale',recborah 'recpborah',rectot 'Rectotal',rectotkg as 'reckgs',oprecbale as 'oprebale',oprecborah 'opreborah',oprectot 'opretot',oprectotkg 'oprekgs',issbale as issbale,issboarh as 'issborah',isstot 'isstotal',isstotkg 'isskgs',totbale 'closbale',totborah 'closborah',total 'closbaleboar',totkg 'closing' from formiv where month(date1)=" & MONTH(date2) & "order by date1 ", DB, adOpenStatic
    RS2.MoveFirst
    Do While Not RS2.EOF
      Print #f, Space(5) & Padr(RS2(0), 10, " "); Padl(Format(RS2("opkgs"), "#0.00"), 13, " "); Padl(Format(RS2("reckgs"), "#0.00"), 12, " "); Space(1); Padl(Format(RS2("oprekgs"), "#0.00"), 12, " "); Space(1); Padl(Format(RS2("isskgs"), "#0.00"), 12, " "); Space(53); Padl(Format(RS2("closing"), "#0.00"), 21, " ")
     'Print #f, Space(5) & Padr(Mid$(Day(rs2(0)), 1, 3), 4, " ") & Space(2) & Padl(rs2("oPENBALE"), 4, " ") & Space(1) & Padl(rs2("OPENBOARH"), 4, " ") & Space(1) & Padl(rs2("oPENTOTAL"), 4, " ") + Space(1) & Padl(rs2("opkgs"), 10, " ") & Space(1) & Padl(rs2("recpbale"), 4, " ") & Padl(rs2("recpborah"), 6, " ") & Padl(rs2("rectotal"), 6, " ") & _
     Padl(Format(rs2("reckgs"), "#0.000"), 11, " ") & Space(1) & Padl(rs2("oprebale"), 4, " ") & Padl(rs2("opreborah"), 5, " ") & _
     Padl(rs2("opretot"), 6, " ") & Space(1) & Padl(Format(IIf(rs2("oprekgs") = 0 Or IsNull(rs2("oprekgs")), " ", rs2("oprekgs")), "##0.000"), 10, " ") & Space(4) & Padl(rs2("Issbale"), 4, " ") & Padl(rs2("issborah"), 5, " ") & Padl(rs2("Isstotal"), 6, " ") & Padl(Format(IIf(rs2("isskgs") = 0 Or IsNull(rs2("isskgs")), " ", rs2("isskgs")), "##0.000"), 10, " ") & Space(42) & Padl(rs2("closbale"), 4, " ") & Padl(rs2("closborah"), 5, " ") & Padl(rs2("CLOSBALEBOAR"), 6, " ") & _
     Padl(Format(IIf(rs2("CLOSING") = 0 Or IsNull(rs2("CLOSING")), " ", rs2("CLOSING")), "##0.000"), 10, " ")
     RS2.MoveNext
    Loop



     'Print #f, Space(1) & Padr(Mid$(Day(rs(0)), 1, 3), 4, " ") & Space(2) & Padl(INF(rs2(0), 0), 4, " ") & Space(1) & Padl(INF(rs2(1), 0), 4, " ") & Space(1) & Padl(INF(rs2(2), 0), 4, " ") + Space(1) & Padl(INF(rs2(3), 3), 10, " ") & Space(1) & Padl(INF(rs2(4), 0), 4, " ") & Padl(INF(rs2(5), 0), 5, " ") & Padl(INF(rs2(6), 0), 6, " ") & Space(1) & Padl(INF(rs2(7), 3), 10, " ") & Space(2) & Padl(INF(rs2(8), 0), 4, " ") & Padl(INF(rs2(9), 0), 5, " ") & _
     'Padl(INF(rs2(10), 0), 6, " ") & Space(1) & Padl(INF(rs2(11), 3), 10, " ") & Space(4) & Padl(INF(rs2(12), 0), 4, " ") & Padl(INF(rs2(13), 0), 5, " ") & Padl(INF(rs2(14), 0), 6, " ") & Padl(INF(rs2(15), 3), 10, " ") & Space(42) & Padl(INF(rs2(16), 0), 4, " ") & Padl(INF(rs2(17), 0), 5, " ") & Padl(INF(rs2(18), 0), 6, " ") & _
     ' Padl(INF(rs2(19), 3), 10, " ")



     cnt = cnt + 1
     If cnt >= pagelen Then
            Call prnhead
            cnt = 0
     End If

   Set rs3 = New Recordset
   'rs3.Open "select sum(k.Openkgs),sum(k.recpkgs),(sum(k.Openkgs) + sum(k.recpkgs)) 'totalkgs'," & _
            "sum(k.issue),sum(isnull(k.Openkgs,0)) + sum(isnull(k.recpkgs,0)) - sum(isnull(k.Issue,0)) as 'Clokgs' " & _
            "from ((select y.lotdt,isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs', 0 as 'recpkgs',0 as 'issue' " & _
            "from (select yy.lotdt,sum(isnull(yy.kgs1,0)) 'kgs1'  from (select a.lotdt, Sum(IsNull(a.netwt, 0)) 'kgs1' " & _
            "from rm_lot a, fa_slmas b,rm_arrival c where a.lotdt < '" & Date1 & "' and  a.supcd = b.slcode and a.arrdt = c.arrdate and a.arrno = c.arrno and " & _
            "a.lotno = c.lotno and a.catcd = c.catcd and  a.divcode = c.divcode and  a.divcode = '" & Divcode & "'  group by a.lotdt,a.bblflg)yy " & _
            "group by  yy.lotdt)y, (select tt.lotdt,sum(isnull(tt.kgs2,0)) 'kgs2' from(select d.lotdt,sum(isnull(c.isskgs,0)) 'kgs2' " & _
            "from rm_issb c ,rm_lot d ,fa_slmas a ,rm_arrival b where c.docdt < '" & Date1 & "' and c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and  c.divcode = d.divcode " & _
            "and d.supcd = a.slcode and d.arrdt = b.arrdate and d.arrno = b.arrno and d.lotno = b.lotno and d.catcd = b.catcd and  d.divcode = b.divcode  and d.divcode = '" & Divcode & "' group by " & _
            "d.lotdt,d.bblflg)tt group by tt.lotdt)t where y.lotdt *= t.lotdt union select bb.lotdt,0 as 'openkgs',sum(isnull(bb.recpkgs,0)) 'Recpkgs',0 as 'issue' from " & _
            "(select e.lotdt,sum(isnull(e.netwt,0)) 'Recpkgs' from rm_lot e,fa_slmas b,rm_arrival c where e.lotdt between  '" & Date1 & "' and '" & Date2 & "' and e.supcd = b.slcode " & _
            "and e.arrdt = c.arrdate and e.arrno = c.arrno and e.lotno = c.lotno and e.catcd = c.catcd and e.divcode = c.divcode and  e.divcode = '" & Divcode & "' group by e.lotdt,e.bblflg) bb group by bb.lotdt " & _
            "union select aa.lotdt,0 as 'openkgs',0 as 'recpkgs',sum(isnull(aa.isskgs,0)) 'Issue' from ( select c.lotdt,sum(isnull(a.isskgs,0))as 'Isskgs' from rm_issb a,rm_lot c,fa_slmas b ,rm_arrival d where a.docdt " & _
            "Between '" & Date1 & "' and '" & Date2 & "' and c.supcd = b.slcode and c.arrdt = d.arrdate and c.arrno =  d.arrno and c.lotno = d.lotno and c.catcd = d.catcd and c.divcode = d.divcode and " & _
            "a.divcode = '" & Divcode & "' and a.lotno = c.lotno and a.lotdt = c.lotdt  and a.catcd = c.catcd group by c.lotdt,c.bblflg) aa group by aa.lotdt))k", cn, adOpenStatic, adLockBatchOptimistic

    Set Rs = New Recordset
    Rs.Open "select ROUND(Isnull(sum(isnull(rectotkg,0)),0),2),ROUND(isnull(sum(isnull(isstotkg,0)),0),2) from formiv", DB, adOpenStatic
    If Not Rs.EOF Then
        Receiptkg = Rs(0)
        Consumption = Rs(1)
    End If
    Set Rs = New Recordset
    Rs.Open "select ROUND(isnull(SUM(ISNULL(OPBALE,0)),0),0) AS OPBALE,isnull(SUM(ISNULL(OpBorah,0)),0) AS OpBorah,ROUND(isnull(SUM(ISNULL(OpTOT,0)),0),0) AS OpTOT,ROUND(isnull(SUM(ISNULL(OpTOTKGS,0)),0),2) AS OpTOTKGS  FROM (SELECT 'OpBale'=case when bblflg ='B' then sum(isnull(bales,0)-isnull(issbal,0)) else 0 end ,'OpBorah'=case when bblflg ='R' then sum(isnull(bales,0)-isnull(issbal,0)) else 0 end ,'OpTot'=sum(isnull(bales,0)-isnull(issbal,0)), sum(isnull(netwt,0)-isnull(isswt,0)) as 'optotkgs' from rm_lot where month(lotdt)=" & MONTH(date2) - 1 & " group by bblflg) A", DB, adOpenStatic
    If Not Rs.EOF Then
        Openkg = Rs("OpTOTKGS")
    End If
    TOkg = Receiptkg + Openkg
    balance = TOkg - Consumption
    Print #f, Space(5) + String(225, "-")
    Print #f, Space(11) & "Opening Stock :" + Space(1) + Padl(INF(Openkg, 2), 16, " ")
    Print #f, Space(11) & "Receipts      :" + Space(1) + Padl(INF(Receiptkg, 2), 16, " ")
    Print #f, Space(11) & "Total         :" + Space(1) + Padl(INF(TOkg, 2), 16, " ")
    Print #f, Space(11) & "Consumption   :" + Space(1) + Padl(INF(Consumption, 2), 16, " ")
    Print #f, Space(11) & "Balance       :" + Space(1) + Padl(INF(balance, 2), 16, " ")
    Print #f, Space(5) + String(225, "-")
intervalMinutes = -1
    Close #f
'    Open "c:\formIV.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "cd\"
'    Print #f, "type formIV.txt > prn"
'    Close #f
'    Rep.txtfile = "c:\formIV.txt"
'    Rep.Batfile = "c:\formIV.bat"

    f = FreeFile
    Call KALBATPROCESS("formIV")
    Screen.MousePointer = 0


Case 20
    If Combo1.Text = "" Then
    MsgBox "Select Any Month-Year", vbInformation, head
    Screen.MousePointer = 0
    Combo1.SetFocus
    Exit Sub
    End If
    Set REP = New Report.ReportView
    opnbaletot = 0
        opnborahtot = 0
        ordbaletot1 = 0
        ordborahtot1 = 0
        ordbaletot2 = 0
        ordborahtot2 = 0
        ordbaletot3 = 0
        ordborahtot3 = 0
        ordbaletot4 = 0
        ordborahtot4 = 0
        ordbaletot5 = 0
        ordborahtot5 = 0
        ordbaletot6 = 0
        ordborahtot6 = 0
        recbaletot = 0
        recborahtot = 0
        clobaletot = 0
        cloborahtot = 0
    pagein = 0
    cont = 0
    date1 = Empty
    date2 = Empty
    f = FreeFile
    cnt = 0
    'Open "c:\sica.txt" For Output As #f
    Open KALFOLDERDATA & "\sica.TXT" For Output As #f
    Call monval
    Set RS2 = New Recordset
    RS2.Open "select kk.varcode,sum(opnBale)'opnBale',sum(opnBorah)'opnBorah', sum(ordBale1)'ordbal1',sum(ordBorah1)'ordBorah1',sum(ordBale2)'ordBale2', " & _
            "sum(ordBorah2) 'ordBorah2',sum(ordBale3)'ordBale3', sum(ordBorah3) 'ordBorah3',sum(ordBale4)'ordBale4', sum(ordBorah4) 'ordBorah4',sum(ordBale5)'ordBale5', sum(ordBorah5) 'ordBorah5',sum(ordBale6)'ordBale6', " & _
            "sum(ordBorah6) 'ordBorah6',sum(recBale) 'recBale', sum(recBorah)  'recBorah' , ((sum(opnBale) + sum(ordBale1) + sum(ordBale2) + sum(ordBale3) + sum(ordBale4) + sum(ordBale5) + sum(ordBale6)) - (sum(recBale))) 'clobale', " & _
            "((sum(opnborah) + sum(ordborah1) + sum(ordborah2) + sum(ordborah3) + sum(ordborah4) + sum(ordborah5) + sum(ordborah6)) - (sum(recborah))) 'cloborah' from  (select a.varcode,sum(isnull(opnBale,0))'opnBale',sum(isnull(opnBorah,0))'opnBorah', 0 as  'ordBale1',0 as  'ordBorah1',0 as ordBale2,0 as ordBorah2,0 as ordBale3, " & _
            "0 as ordBorah3,0 as ordBale4,0 as ordBorah4,0 as ordBale5,0 as ordBorah5,0 as ordBale6,0 as ordBorah6, 0 as 'recBale', 0 as 'recBorah'  from  (select a.varcode, case when a.bbflag = 'B' then sum(isnull(a.ordqty,0)) - sum(isnull(a.recqty,0)) end as 'opnBale', " & _
            "case when a.bbflag   IN ('R','H') then sum(isnull(a.ordqty,0)) - sum(isnull(a.recqty,0)) end as 'opnBorah', 0 as  'ordBale1',0 as  'ordBorah1' from  rm_cont a where a.contdt < '" & date1 & "' and  a.divcode = '" & Divcode & "' and " & _
            "isnull(a.ordqty,0) - isnull(a.recqty,0) > 0  group by a.varcode,a.bbflag) a group by a.varcode union select b.varcode,0 as 'opnBale', 0 as 'opnBorah', sum(isnull(ordbale1,0)),sum(isnull(ordborah1,0)),0 as ordBale2,0 as ordBorah2, 0 as ordBale3,0 as ordBorah3,0 as ordBale4,0 as ordBorah4,0 as ordBale5,0 as ordBorah5,0 as ordBale6,0 as ordBorah6, 0 as 'recBale', 0 as 'recBorah'  from (select a.varcode, " & _
            "case when a.bbflag = 'B' then sum(isnull(a.ordqty,0)) end as 'ordBale1',case when a.bbflag   IN ('R','H') then sum(isnull(a.ordqty,0)) end as 'ordBorah1' from  rm_cont a where a.contdt between  '" & date1 & "' and '" & date2 & "' and  a.divcode = '" & Divcode & "'  group by a.varcode,a.bbflag)b group by b.varcode union " & _
            "select b.varcode,0 as 'opnBale', 0 as 'opnBorah', 0 as ordBale1,0 as ordBorah1,sum(isnull(ordbale2,0)),sum(isnull(ordborah2,0)),0 as ordBale3,0 as ordBorah3, 0 as ordBale4,0 as ordBorah4,0 as ordBale5,0 as ordBorah5 ,0 as ordBale6,0 as ordBorah6, 0 as 'recBale', 0 as 'recBorah' from (select a.varcode, case when a.bbflag = 'B' then sum(isnull(a.ordqty,0)) end as 'ordBale2', " & _
            "case when a.bbflag   IN ('R','H') then sum(isnull(a.ordqty,0)) end as 'ordBorah2' from rm_cont a where a.contdt between '" & Format(DateAdd("m", 1, date1), "yyyy/mm/dd") & "' and '" & Format(DateAdd("m", 2, date1) - 1, "yyyy/mm/dd") & "' and  a.divcode = '" & Divcode & "' " & _
            "group by a.varcode,a.bbflag)b group by b.varcode union select c.varcode,0 as 'opnBale', 0 as 'opnBorah', 0 as ordBale1,0 as ordBorah1,0 as ordBale2,0 as ordBorah2,sum(isnull(ordbale3,0)),sum(isnull(ordborah3,0)),0 as ordBale4,0 as ordBorah4,0 as ordBale5,0 as ordBorah5,0 as ordBale6,0 as ordBorah6, 0 as 'recBale', 0 as 'recBorah' from (select a.varcode,case when a.bbflag = 'B' then sum(isnull(a.ordqty,0)) end as 'ordBale3', " & _
            "case when a.bbflag   IN ('R','H') then sum(isnull(a.ordqty,0)) end as 'ordBorah3' from rm_cont a where a.contdt between '" & Format(DateAdd("m", 2, date1), "yyyy/mm/dd") & "'  and '" & Format(DateAdd("m", 3, date1) - 1, "yyyy/mm/dd") & "'  and  a.divcode = '" & Divcode & "'  group by a.varcode,a.bbflag)c group by c.varcode union select d.varcode,0 as 'opnBale', 0 as 'opnBorah', 0 as ordBale1,0 as ordBorah1,0 as ordBale2,0 as ordBorah2,0 as ordBale3,0 as ordBorah3, " & _
            "sum(isnull(ordbale4,0)),sum(isnull(ordborah4,0)),0 as ordBale5,0 as ordBorah5,0 as ordBale6,0 as ordBorah6 , 0 as 'recBale', 0 as 'recBorah' from (select a.varcode,case when a.bbflag = 'B' then sum(isnull(a.ordqty,0)) end as 'ordBale4', case when a.bbflag   IN ('R','H') then sum(isnull(a.ordqty,0)) end as 'ordBorah4' from rm_cont a where a.contdt between '" & Format(DateAdd("m", 3, date1), "yyyy/mm/dd") & "'  and '" & Format(DateAdd("m", 4, date1) - 1, "yyyy/mm/dd") & "'and   " & _
            "a.divcode = '" & Divcode & "'  group by a.varcode,a.bbflag)d group by d.varcode union select e.varcode,0 as 'opnBale', 0 as 'opnBorah', 0 as ordBale1,0 as ordBorah1,0 as ordBale2,0 as ordBorah2,0 as ordBale3,0 as ordBorah3,0 as ordBale4,0 as ordBorah4, " & _
            "sum(isnull(ordbale5,0)),sum(isnull(ordborah5,0)),0 as ordBale6,0 as ordBorah6, 0 as 'recBale', 0 as 'recBorah' from(select a.varcode,case when a.bbflag = 'B' then sum(isnull(a.ordqty,0)) end as 'ordBale5',case when a.bbflag   IN ('R','H') then sum(isnull(a.ordqty,0)) end as 'ordBorah5' from rm_cont a where a.contdt between '" & Format(DateAdd("m", 4, date1), "yyyy/mm/dd") & "' and '" & Format(DateAdd("m", 5, date1) - 1, "yyyy/mm/dd") & "' and    " & _
            "a.divcode = '" & Divcode & "'  group by a.varcode,a.bbflag)e group by e.varcode  union select f.varcode,0 as 'opnBale', 0 as 'opnBorah', 0 as ordBale1,0 as ordBorah1,0 as ordBale2,0 as ordBorah2,0 as ordBale3,0 as ordBorah3,0 as ordBale4,0 as ordBorah4,0 as ordBale5,0 as ordBorah5, " & _
            "sum(isnull(ordbale6,0)),sum(isnull(ordborah6,0)),0 as 'recBale', 0 as 'recBorah' from(select a.varcode,case when a.bbflag = 'B' then sum(isnull(a.ordqty,0)) end as 'ordBale6',case when a.bbflag   IN ('R','H') then sum(isnull(a.ordqty,0)) end as 'ordBorah6' from rm_cont a where a.contdt between '" & Format(DateAdd("m", 5, date1), "yyyy/mm/dd") & "' and '" & Format(DateAdd("m", 6, date1) - 1, "yyyy/mm/dd") & "'  and    " & _
            "a.divcode = '" & Divcode & "'  group by a.varcode,a.bbflag) f group by f.varcode union select e.varcode,0 as 'opnBale', 0 as 'opnBorah', 0 as ordBale1,0 as ordBorah1,0 as ordBale2,0 as ordBorah2,0 as ordBale3,0 as ordBorah3,0 as ordBale4,0 as ordBorah4,0 as ordBale5,0 as ordBorah5,0 as ordBale6,0 as ordBorah6, " & _
            "sum(isnull(recbale,0)),sum(isnull(recborah,0)) from(select a.varcode,case when a.bbflag = 'B' then sum(isnull(a.recqty,0)) end as 'recBale',case when a.bbflag   IN ('R','H') then sum(isnull(a.recqty,0)) end as 'recBorah' from rm_cont a where a.contdt between  '" & date1 & "' and '" & date2 & "' and a.divcode = '" & Divcode & "'  group by a.varcode,a.bbflag)e group by e.varcode)kk group by kk.varcode", cn, adOpenStatic, adLockBatchOptimistic
      If RS2.BOF Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Close #f
        Exit Sub
     End If
     Call prnhead
     RS2.MoveFirst
     For I = 1 To RS2.RecordCount
        Set Namers = New Recordset
        Namers.Open "Select varname from rm_var where varcode='" & RS2(0) & "'", DB, adOpenStatic
        If Not Namers.EOF Then
            VarName = Namers(0)
        End If
        Print #f, Space(1) & Padr(CStr(VarName), 17, " ") & Space(1) & Padl(CStr(IIf(RS2(1) = 0, " ", RS2(1))), 4, " ") & Padl(CStr(IIf(RS2(2) = 0, " ", RS2(2))), 5, " ") & Padl(CStr(IIf(RS2(3) = 0, " ", RS2(3))), 7, " ") & Padl(CStr(IIf(RS2(4) = 0, " ", RS2(4))), 5, " ") & Padl(CStr(IIf(RS2(5) = 0, " ", RS2(5))), 6, " ") & Padl(CStr(IIf(RS2(6) = 0, " ", RS2(6))), 5, " ") & Padl(CStr(IIf(RS2(7) = 0, " ", RS2(7))), 6, " ") & Padl(CStr(IIf(RS2(8) = 0, " ", RS2(8))), 5, " ") & Padl(CStr(IIf(RS2(9) = 0, " ", RS2(9))), 6, " ") & Padl(CStr(IIf(RS2(10) = 0, " ", RS2(10))), 5, " ") & Padl(CStr(IIf(RS2(11) = 0, " ", RS2(11))), 6, " ") & Padl(CStr(IIf(RS2(12) = 0, " ", RS2(12))), 5, " ") & Padl(CStr(IIf(RS2(13) = 0, " ", RS2(13))), 6, " ") & Padl(CStr(IIf(RS2(14) = 0, " ", RS2(14))), 5, " ") & Padl(CStr(IIf(RS2(15) = 0, " ", RS2(15))), 7, " ") & Padl(CStr(IIf(RS2(16) = 0, " ", RS2(16))), 4, " ") & Space(18) & Padl(CStr(IIf(RS2(17) = 0, " ", RS2(17))), 4, " ") & Padl(CStr(IIf(RS2(18) = 0, " ", RS2(18))), 5, " ")
        opnbaletot = opnbaletot + RS2(1)
        opnborahtot = opnborahtot + RS2(2)
        ordbaletot1 = ordbaletot1 + RS2(3)
        ordborahtot1 = ordborahtot1 + RS2(4)
        ordbaletot2 = ordbaletot2 + RS2(5)
        ordborahtot2 = ordborahtot2 + RS2(6)
        ordbaletot3 = ordbaletot3 + RS2(7)
        ordborahtot3 = ordborahtot3 + RS2(8)
        ordbaletot4 = ordbaletot4 + RS2(9)
        ordborahtot4 = ordborahtot4 + RS2(10)
        ordbaletot5 = ordbaletot5 + RS2(11)
        ordborahtot5 = ordborahtot5 + RS2(12)
        ordbaletot6 = ordbaletot6 + RS2(13)
        ordborahtot6 = ordborahtot6 + RS2(14)
        recbaletot = recbaletot + RS2(15)
        recborahtot = recborahtot + RS2(16)
        clobaletot = clobaletot + RS2(17)
        cloborahtot = cloborahtot + RS2(18)
        cnt = cnt + 1
        If cnt >= 53 Then
             Call prnhead
              cnt = 0
        End If
        RS2.MoveNext
    Next
    Print #f, Space(0) + String(136, "-")
    Print #f, Space(0) + " * Grand Total *" & Padl(CStr(IIf(opnbaletot = 0, " ", opnbaletot)), 7, " ") & Padl(CStr(IIf(opnborahtot = 0, " ", opnborahtot)), 5, " ") & Padl(CStr(IIf(ordbaletot1 = 0, " ", ordbaletot1)), 7, " ") & Padl(CStr(IIf(ordborahtot1 = 0, " ", ordborahtot1)), 5, " ") & Padl(CStr(IIf(ordbaletot2 = 0, " ", ordbaletot2)), 6, " ") & Padl(CStr(IIf(ordborahtot2 = 0, " ", ordborahtot2)), 5, " ") & Padl(CStr(IIf(ordbaletot3 = 0, " ", ordbaletot3)), 6, " ") & Padl(CStr(IIf(ordborahtot3 = 0, " ", ordborahtot3)), 5, " ") & Padl(CStr(IIf(ordbaletot4 = 0, " ", ordbaletot4)), 6, " ") & Padl(CStr(IIf(ordborahtot4 = 0, " ", ordborahtot4)), 5, " ") & Padl(CStr(IIf(ordbaletot5 = 0, " ", ordbaletot5)), 6, " ") & Padl(CStr(IIf(ordborahtot5 = 0, " ", ordborahtot5)), 5, " ") & Padl(CStr(IIf(ordbaletot6 = 0, " ", ordbaletot6)), 6, " ") & Padl(CStr(IIf(ordborahtot6 = 0, " ", ordborahtot6)), 5, " ") & Padl(CStr(IIf(recbaletot = 0, " ", recbaletot)), 7, " ") & _
     Padl(CStr(IIf(recborahtot = 0, " ", recborahtot)), 5, " ") & Space(16) & Padl(CStr(IIf(clobaletot = 0, " ", clobaletot)), 5, " ") & Padl(CStr(IIf(cloborahtot = 0, " ", cloborahtot)), 5, " ")
    Print #f, Space(0) + String(136, "-")
     cnt = cnt + 1
        If cnt >= 53 Then
            Print #f, Chr(12)
            Call prnhead
            cnt = 0
        End If


    Close #f
'    Open "c:\sica.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "cd\"
'    Print #f, "type sica.txt > prn"
'    Close #f
'    Rep.txtfile = "c:\sica.txt"
'    Rep.Batfile = "c:\sica.bat"
    f = FreeFile
    Call KALBATPROCESS("sica")
    Screen.MousePointer = 0
Case 155, 19112

    f1 = Format(DTPicker2.value, "yyyy-mm-dd")
    t1 = Format(DTPicker3.value, "yyyy-mm-dd")
    If CDate(f1) > CDate(t1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(t1) < CDate(f1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        
        Set rec = New Recordset
    rec.Open "select  issue_code + '-'+ issue_desc as type from rm_issuetype where isstype in ('T','J') union select DISTINCT 'A -ALL' AS TYPE FROM RM_ISSUETYPE ", cn, adOpenStatic, adLockBatchOptimistic

     If Combo3.Text <> "" Then
     Do While Not rec.EOF
     If Combo3.Text = rec(0) Then
     GoTo Transfer
     Else
     rec.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo3.Text = ""
     Combo3.SetFocus
     Exit Sub
    End If
Transfer:  ISSTYPE = Trim(Left(Combo3.Text, 2))
    If Repindex = 155 Then
        Call TIPW11(CStr(f1), t1, divname, CStr(ISSTYPE), UserFooter1.SelectedStr)
    ElseIf Repindex = 19112 Then
        Call TIPW12(CStr(f1), t1, divname, CStr(ISSTYPE))
    End If
 Exit Sub
    
   
    Exit Sub
Case 1113
    
    With crr
        
        .ReportFileName = ""
        .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Quality_MIS_SL_STK.rpt"
        
'        .RetrieveDataFiles
'        .DataFiles(0) = Kslcmpsel.SelDB & Mid(.DataFiles(0), InStr(1, .DataFiles(0), "."), Len(.DataFiles(0)))
'
        .StoredProcParam(0) = Trim(Format(yfdate, "yyyy-mm-dd"))
        .StoredProcParam(1) = Trim(Format(yldate, "yyyy-mm-dd"))
        .StoredProcParam(2) = Trim(Format(DTPicker4.value, "yyyy-mm-dd"))
        .StoredProcParam(3) = Divcode
        '.SelectionFormula = "{RM_Lot.LotNo} >= " & val(Txtfields(0).Text) & " AND {RM_Lot.LotNo} <= " & val(Txtfields(1).Text) & ""
        '.SelectionFormula = "{RM_Lot.LotNo} = " & val(CboCategory.Text) & ""
        
'        SendKeys "{enter}"
'        SendKeys "{enter}"
'        SendKeys "{enter}"
        .WindowState = crptMaximized
        .Action = 1
        
        SendKeys "{enter}"
        .PrinterCopies = 1
    End With

End Select
Screen.MousePointer = 0

intervalMinutes = -1
Exit Sub
'Command1_Click_Error:
   ' MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command1_Click of Form repform", vbInformation, head
   ' Screen.MousePointer = 0
   ' Exit Sub

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Screen.MousePointer = 0
Unload Me
intervalMinutes = -1
Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error
Set Cnn = New Connection
Set DB = New Connection
Cnn.Open connectstring
DB.Open connectstring
intervalMinutes = -1
Select Case Repindex
    Case 16              '   Varietywise Purchase
    Dim sp As String
    Dim sp1 As String
    sp = repform.DTPicker2.value
    sp1 = repform.DTPicker3.value
    Set Rsst = New Recordset
    Rsst.Open "Select * from rm_Cat order by catcd", cn, adOpenStatic, adLockBatchOptimistic

    If CDate(sp) > CDate(sp1) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    If CDate(sp1) < CDate(sp) Then
        MsgBox "To Date should not be less than From Date", vbInformation
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    sdr = Combo3.Text
    zz = Trim(Left(CmbRecType.Text, 3))
    If Check1.value = 1 Then
        Do While Not Rsst.EOF
            sdr1 = Rsst("CatCd") & " - " & Rsst("Catname")
            If sdr <> sdr1 And sdr <> "A - ALL" Then
                Rsst.MoveNext
            Else
                strCategory = Left(Combo3.Text, 1)
                Category = Combo3.Text
                Call VPCRY(sp, sp1, strCategory, 1, CStr(Category), zz, UserFooter1.SelectedStr)
                Screen.MousePointer = 0
                Exit Sub
            End If
        Loop
        MsgBox "Select the Valid Category", vbInformation, head
        Screen.MousePointer = 0
        Combo3.Text = ""
        Combo3.SetFocus
        Exit Sub
    End If
       
    If Check1.value = 0 Then
        Call VPCRY(sp, sp1, strCategory, 0, CStr(Category), zz, UserFooter1.SelectedStr)
        Screen.MousePointer = 0
        Exit Sub
    End If

    Case 1190   'Vat report
        xx = Mid$(Combo4.Text, 1, InStr(Combo4.Text, " - ") - 1)
        Call monthadd(CStr(xx))
        If zz = "01" Or zz = "02" Or zz = "03" Then
            fs = "01/" & zz & "/" & Format(yldate, "yy")
            xx = xx & " - " & Format(yldate, "yy")
        Else
            fs = "01/" & zz & "/" & Format(yfdate, "yy")
            xx = xx & " - " & Format(yfdate, "yy")
        End If
    
        C1 = fnmldate(fs)
        fs = Format(fs, "yyyy-mm-dd")
        ts = Format(C1, "yyyy-mm-dd")
        va = Mid$(DataCombo7.Text, InStr(DataCombo7.Text, "-") + 1, Len(DataCombo7.Text))
       
        per = Trim(DataCombo8.Text)
        st = Left(Combo5.Text, 1)
        If optAbstract.value = True Then
            Call New_Vat_Report_Detailedcry_abs(CStr(fs), CStr(ts), CStr(Divcode), Trim(CStr(va)), CStr(per), CStr(st), CStr(xx))
       Else
            Call New_Vat_Report_Detailedcry(CStr(fs), CStr(ts), CStr(Divcode), Trim(CStr(va)), CStr(per), CStr(st), CStr(xx))
       End If
       Screen.MousePointer = 0
       Exit Sub
    Case 1005
        Dim Rs As New ADODB.Recordset
        Dim cnt As Integer
        Dim SNO As Integer
        Dim rptv As ReportView
        Dim Strvalue As String
        Dim gDblVat As Double
        Dim gDblCst As Double
        Dim StrTaxper, strcat As String
        Dim Dblvalue As Double
        Dim DblTAxamt As Double
        Dim RsDiv As New ADODB.Recordset
        Dim GTax As Double, Gvalue As Double
                
        xx = Mid$(Combo4.Text, 1, InStr(Combo4.Text, " - ") - 1)
        Call monthadd(CStr(xx))
        If zz = "01" Or zz = "02" Or zz = "03" Then
            fs = "01/" & zz & "/" & Format(yldate, "yy")
            xx = xx & " - " & Format(yldate, "yy")
        Else
            fs = "01/" & zz & "/" & Format(yfdate, "yy")
            xx = xx & " - " & Format(yfdate, "yy")
        End If
    On Error Resume Next
        If Table_Exists("tmp_rmi_vatrepsales") = True Then
            Cnn.Execute ("drop table tmp_rmi_vatrepsales")
        End If
           Cnn.Execute ("create table tmp_rmi_vatrepsales (slname varchar(100),division varchar(20),tinno varchar(20),commcode varchar(20),matvalue numeric(18,2),taxper numeric(12,2),taxamt numeric(18,2),category varchar(1),itc varchar(1))")
        
        
        If RsDiv.State = 1 Then RsDiv.Close
        RsDiv.Open " select DIVNAME from PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB, adOpenKeyset, adLockReadOnly
        If RsDiv.EOF = False Then
            divname = RsDiv!divname & ""
        End If
'        QueryCat " SELECT  m.slname,div.abbr division,isnull(m.tinno,'') tinno,isnull(b.commcode,'') commcode,sum(b.value) matvalue,b.tax_per,sum(b.taxamt) taxamt,category=case when b.tax_per>0 then 'F' else 'E' end  FROM RM_CINVHD a "
'        QueryCat "  left outer join "
'        QueryCat " ( SELECT  mas.TAX_PER,INV_NO,mas.DIVCODE,isnull(rc.comm_code,'') commcode, SUM(isnull(VALUE,0)) VALUE,SUM(TAX_AMT) TAXAMT FROM rm_cINVDT mas"
'        QueryCat " LEFT OUTER JOIN rm_issb lo ON lo.DOCNO=mas.CONT_NO AND lo.DIVCODE=mas.DIVCODE AND lo.ISSTYPE=mas.INV_TYPE  "
'        QueryCat " LEFT OUTER JOIN rm_cat rc ON rc.CATCD=lo.CATCD "
'        QueryCat " GROUP BY INV_NO,mas.TAX_PER,mas.DIVCODE,isnull(rc.comm_code,'')) b on b.divcode=a.divcode and a.inv_no=b.inv_no"
'        QueryCat " left outer join fa_slmas m on m.slcode=a.cust_code"
'        QueryCat " left outer join pp_divmas div on div.divcode=a.divcode "
'        QueryCat " where a.divcode='" & Divcode & "' and month(date)='" & Format(MONTH(Me.Combo4.Text), "00") & "' and year(date)='" & Format(Year(Me.Combo4.Text), "0000") & "' AND DATE BETWEEN '" & Format(yfdate, "DD-MMM-YYYY") & "' AND '" & Format(yldate, "DD-MMM-YYYY") & "' AND b.value > 0 "
'        QueryCat " group by m.slname,isnull(m.tinno,'') ,b.tax_per,isnull(b.commcode,''),div.abbr"
'        QueryCat " order by category asc,tax_per asc,commcode asc,slname asc ", Sql

        QueryCat " SELECT  m.slname,div.abbr division,isnull(m.tinno,'') tinno,isnull(b.commcode,'') commcode,sum(b.value) matvalue,b.tax_per,sum(b.taxamt) taxamt,category=case when b.tax_per>0 then 'F' else 'E' end,itc=CASE WHEN m.state_code=b.state_code then 'Y' ELSE 'N'END  FROM RM_CINVHD a "
        QueryCat "  left outer join "
        QueryCat " ( SELECT  mas.TAX_PER,INV_NO,mas.DIVCODE,isnull(rc.comm_code,'') commcode, SUM(isnull(VALUE,0)) VALUE,SUM(TAX_AMT) TAXAMT,pp.STATE_CODE FROM rm_cINVDT mas"
        QueryCat " LEFT OUTER JOIN rm_issb lo ON lo.DOCNO=mas.CONT_NO AND lo.DIVCODE=mas.DIVCODE AND lo.ISSTYPE=mas.INV_TYPE  "
        QueryCat " LEFT OUTER JOIN rm_cat rc ON rc.CATCD=lo.CATCD "
        QueryCat " left outer join pp_divmas pp ON pp.DIVCODE=mas.DIVCODE"
        QueryCat " GROUP BY INV_NO,mas.TAX_PER,mas.DIVCODE,isnull(rc.comm_code,''),pp.STATE_CODE) b on b.divcode=a.divcode and a.inv_no=b.inv_no"
        QueryCat " left outer join fa_slmas m on m.slcode=a.cust_code"
        QueryCat " left outer join pp_divmas div on div.divcode=a.divcode "
        QueryCat " where a.divcode='" & Divcode & "' and month(date)='" & Format(MONTH(Me.Combo4.Text), "00") & "' and year(date)='" & Format(Year(Me.Combo4.Text), "0000") & "' AND DATE BETWEEN '" & Format(yfdate, "DD-MMM-YYYY") & "' AND '" & Format(yldate, "DD-MMM-YYYY") & "' AND b.value > 0 "
        QueryCat " group by m.slname,isnull(m.tinno,'') ,b.tax_per,isnull(b.commcode,''),div.abbr,m.state_code,b.STATE_CODE"
        QueryCat " order by category asc,tax_per asc,commcode asc,slname asc,b.state_code ", sql
        If Rs.State = 1 Then Rs.Close
        Rs.Open sql, DB, adOpenKeyset, adLockReadOnly
        If Rs.EOF = True Then
            MsgBox "No Record Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
    If Rs.RecordCount > 0 Then
        Do While Not Rs.EOF
            Dim dblVat, dblCst As Double
            On Error Resume Next
            Cnn.Execute "insert into tmp_rmi_vatrepsales(slname,division,tinno,commcode,matvalue,taxper,taxamt,category,itc) values('" & Rs("slname") & "','" & Rs("division") & "', '" & Rs("Tinno") & "','" & Rs!commcode & "'," & Rs!matvalue & "," & IIf(IsNull(Rs!tax_per), 0, Rs!tax_per) & "," & Rs("taxamt") & ",'" & Rs("category") & "','" & Rs!iTC & "')"
            Rs.MoveNext
        Loop
    End If
    Rs.MoveFirst
    reptitle = "Details of Purchases / Receipts During the Month " & xx
    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rep_per_vatrepsales.rpt"
    FrmRpt.RptHead = 1
    parameter1 = divname
    FrmRpt.Show
    Case 13
        Dim rec As Recordset
        
            DataCombo1.Text = DTPicker3.value ''''
            DataCombo2.Text = DTPicker2.value ''''
            
            If UCase(Trim(CustID)) = "SKY" And Combo3.Text <> "All" Then
                DB.Execute "if exists (select name from dbo.sysobjects where name='SusTyp_Temp') drop table SusTyp_Temp"
                DB.Execute "create table SusTyp_Temp(type varchar(50))"
                Set Rs = New Recordset
                Rs.Open "select description from rm_sustainrmtype where Code='" & Trim(Combo3.Text) & "'", DB, adOpenStatic
                DB.Execute "insert into SusTyp_Temp values('" & Rs(0) & "')"
            ElseIf UCase(Trim(CustID)) = "SKY" And Combo3.Text = "All" Then
                DB.Execute "if exists (select name from dbo.sysobjects where name='SusTyp_Temp') drop table SusTyp_Temp"
                DB.Execute "create table SusTyp_Temp(type varchar(50))"
                DB.Execute "insert into SusTyp_Temp values(' ')"
            End If
            
            a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
            B = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
            
            If CDate(a) > CDate(B) Then
                MsgBox "From Date should not be greater than To Date", vbInformation
                DataCombo1.SetFocus
                DTPicker3.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            If CDate(B) < CDate(a) Then
                MsgBox "To Date should not be less than From Date", vbInformation
                DataCombo1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            
   If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'       L_God = ""
'     L_aread_God = ""
'     divcount = 0
'
'           For I = 1 To List_div.ListItems.Count
'
'                If List_div.ListItems.Item(I).Checked = True Then
'                    sRecCount = Trim(List_div.ListItems(I).SubItems(1))
'                    If L_God <> "" Then
'                        L_God = L_God + "," + "" + Trim(sRecCount) + ""
'                         L_aread_God = L_aread_God + "," + "" + Trim(sRecCount) + ""
'                         divcount = divcount + 1
'                    Else
'                        L_God = "" + Trim(sRecCount) + ""
'                        L_aread_God = "" + Trim(sRecCount) + ""
'                        divcount = divcount + 1
'                    End If
'                End If
'            Next
'
'
'
'
'        If L_God = "" Then
'            MsgBox "Please Select Any Division ", vbInformation, head
'            Exit Sub
'        Else
'            If divcount > 1 Then
'            L_God = "'" + L_God + "'"
'            End If
'        End If
    
 End If
 
    
        On Error GoTo errorsub
'''        db.BeginTrans
'''
'''        Set Rs = New Recordset
'''        Rs.Open "select * from sysobjects where name ='Temp_Periodical_ArrivalRegister'", db, adOpenStatic
'''
'''        If Rs.RecordCount > 0 Then
'''           db.Execute "Drop table Temp_Periodical_ArrivalRegister"
'''        End If
'''        Rs.Close
'''        Set Rs = Nothing
'''        Set rec = New Recordset
'''        rec.CursorLocation = adUseClient
'''                rec.Open "SELECT Result.arrdate,Result.lotno,Result.lotdt," & _
'''                   "Result.plotno,Result.quantity,Result.lrno," & _
'''                   "Result.freight,Result.netwt,Result.prno,Result.carname," & _
'''                   "RESULT.Slname , RESULT.areaname, RESULT.LORRYNOS " & _
'''               " Into Temp_Periodical_ArrivalRegister " & _
'''               " From " & _
'''               " (select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno," & _
'''                       "isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname," & _
'''                       "c.Slname , d.areaname, a.LORRYNOS " & _
'''                   " from rm_arrival a,po_car b,fa_slmas c,rm_area d " & _
'''                   " where a.supcd=c.slcode and a.areacode=d.areacode and " & _
'''                       " a.arrdate Between '" & Format(a, "dd-mmm-yyyy") & "' and '" & Format(b, "dd-mmm-yyyy") & "' and " & _
'''                       " a.carcode*=b.carcode and divcode='" & Divcode & "')Result", db, adOpenStatic, adLockBatchOptimistic
'''
'        If rec.EOF Then
'            MsgBox "No Records Found", vbInformation, head
'            Me.MousePointer = 0
'            Exit Sub
'        End If
        'db.CommitTrans
        
        
        a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
        B = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
        
        Dim clsCryRpt1 As New clsCrystal
        If (CustID = "SOUTHERN") Then
        Set clsCryRpt1.cryRept = Rep_p_arrreg_date_southern
        ElseIf UCase(CustID) = "COTTON" Then 'And UCase(Cust_Id1) = "SCM" Then
        Set clsCryRpt1.cryRept = Cry_Arrival_Datewise_SCM
        Else
        Set clsCryRpt1.cryRept = Rep_period_arrreg1 'Rep_Period_ARRReg
        End If
        clsCryRpt1.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
            crr.ParameterFields(0) = "@DivCode;" & Divcode & ""
        Else
            crr.ParameterFields(0) = "@DivCode;" & Divcode & ""
        End If
        
        crr.ParameterFields(1) = "@FDate;" & a & ""
        crr.ParameterFields(2) = "@TDate;" & B & ""
        If (CustID <> "SOUTHERN") Then
         crr.ParameterFields(3) = "@FSupcd;A"
         crr.ParameterFields(4) = "@TSupcd;A"
        End If
        ''crr.Formulas(0) = "div='" & DIVNAME & "'"
        'crr.Formulas(1) = "rpt='" & "Arrival List From " & Format(a, "dd/mm/yy") & " To " & Format(b, "dd/mm/yy") & "'"
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
       
        
        Me.MousePointer = 0
        Exit Sub

errorsub:
    MsgBox Err.Description, vbCritical
    Me.MousePointer = 0

Case 17
    If Combo1.Text = "" Then
        MsgBox "Select Any Month-Year", vbInformation, head
        Screen.MousePointer = 0
        Combo1.SetFocus
        Exit Sub
    End If
    U = Format(DTPicker2.value, "yyyy-mm-dd")
    v = Format(DTPicker3.value, "yyyy-mm-dd")
    If CDate(U) > CDate(v) Then
                MsgBox "From Date should not be greater than To Date", vbInformation
                DTPicker2.SetFocus
                Screen.MousePointer = 0
            Exit Sub
            End If
            If CDate(v) < CDate(U) Then
                MsgBox "To Date should not be less than From Date", vbInformation
                DTPicker2.SetFocus
                Screen.MousePointer = 0
            Exit Sub
            End If
            
            Set rsts = New Recordset
        rsts.Open "Select catcd+'  -  '+ catname from rm_cat", DB, adOpenStatic
        
        catcd = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
formiv:        catcd = Trim(Mid$(Combo3.Text, 1, InStr(Combo3.Text, "-") - 1))
       ' Catcd = "C"
        'Call Form4.mdlform4(CStr(Combo1.Text), CStr(Catcd))
        mtype = Trim(Mid$(CmbRecType.Text, 1, InStr(CmbRecType.Text, "-") - 1))
        Call mdlform3(CStr(U), CStr(v), CStr(catcd), CStr(mtype))
             Screen.MousePointer = 0
        Exit Sub
        
        
Case 13101
      Dim monfdate As String
      
      mfrmdate = Format(DTPicker3.value, "yyyy-MM-dd")
      monfdate = Left(mfrmdate, 8) + "01"
      
     
'      ed = Mid$(DTPicker3.value, 4, 2)
'      ed1 = Mid$(DTPicker3.value, 7, 7)
'      U = Format("01" & "/" & ed & "/" & ed1, "dd/mm/yyyy")

      
      sRecProduct = ""
      Str = ""
      Str = LocalIP 'Add
      Str = LTrim(LocalIP) 'add
                        
            DB.Execute "Delete From  CountCodeTemp where Divcode = '" & Divcode & "' and SystemIP = '" & LocalIP & "'"
            For I = 1 To Lv_PType.ListItems.Count
                If Lv_PType.ListItems.Item(I).Checked Then
                sRecProduct = Lv_PType.ListItems(I).SubItems(1)
                     'sRecProduct = Trim(Lv_PType.ListItems(i).SubItems(1))
                     sql = "insert into CountCodeTemp values( '" & Divcode & "', '" & sRecProduct & "','" & LocalIP & "')"
                     DB.Execute sql
                End If
            Next I
           
            If Len(sRecProduct) = 0 Then
                MsgBox "Select Any Product", vbInformation
                Exit Sub
            End If
           Dim clsCR_MonIssueList_Cnt As New clsCrystal
           If (CustID = "SOUTHERN") Then
           Set clsCR_MonIssueList_Cnt.cryRept = P_MonthlIssueList_Countwise_Southern
           ElseIf (CustID = "COTTON") Then
           Set clsCR_MonIssueList_Cnt.cryRept = Cry_Issuelist_Cntwise_SRG
           Else
           Set clsCR_MonIssueList_Cnt.cryRept = P_MonthlIssueList_Countwise
           End If
           clsCR_MonIssueList_Cnt.CrystalPrint
                               
           crr.Reset
           crr.Connect = connectstring
           crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
               
           crr.ParameterFields(0) = "@Divcode;" & Divcode & ""
           crr.ParameterFields(1) = "@MFDate;" & monfdate
           crr.ParameterFields(2) = "@SystemIP;" & LocalIP & ""
                  
           crr.WindowShowPrintSetupBtn = True
           crr.WindowShowSearchBtn = True
           crr.WindowState = crptMaximized
           SendKeys "{ENTER}"
           crr.Action = 1
           crr.PrinterCopies = 1
           Screen.MousePointer = 0
           
 Case 15
     

          If Trim(Combo3.Text) = "A -ALL" Then
            ISSTYPE = "A"
          Else
            ISSTYPE = Trim(Mid$(Combo3.Text, 1, InStr(Combo3.Text, "-") - 1))
          End If

           Dim clsCR_transferissue As New clsCrystal
           
           Set clsCR_transferissue.cryRept = Cry_transferout_reg
      
           clsCR_transferissue.CrystalPrint
                               
           crr.Reset
           crr.Connect = connectstring
           crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
               
           crr.ParameterFields(0) = "@Divcode;" & Divcode & ""
           crr.ParameterFields(1) = "@FDate;" & Format(DTPicker2.value, "yyyy-MM-dd")
           crr.ParameterFields(2) = "@TDate;" & Format(DTPicker3.value, "yyyy-MM-dd") & ""
           crr.ParameterFields(3) = "@yldate;" & Format(yfdate, "yyyy-MM-dd") & ""
           crr.ParameterFields(4) = "@Isstype;" & ISSTYPE & ""
              
           crr.WindowShowPrintSetupBtn = True
           crr.WindowShowSearchBtn = True
           crr.WindowState = crptMaximized
           SendKeys "{ENTER}"
           crr.Action = 1
           crr.PrinterCopies = 1
           Screen.MousePointer = 0

Case 1117
     
             If Combo1.Text = "" Then
               MsgBox "Select Any Month-Year", vbInformation, head
               Screen.MousePointer = 0
               Combo1.SetFocus
               Exit Sub
             End If
            U = Format(DTPicker2.value, "yyyy-mm-dd")
            v = Format(DTPicker3.value, "yyyy-mm-dd")
            If CDate(U) > CDate(v) Then
                    MsgBox "From Date should not be greater than To Date", vbInformation
                    DTPicker2.SetFocus
                    Screen.MousePointer = 0
                Exit Sub
                End If
                If CDate(v) < CDate(U) Then
                    MsgBox "To Date should not be less than From Date", vbInformation
                    DTPicker2.SetFocus
                    Screen.MousePointer = 0
                Exit Sub
                End If
        
            catcd = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
insurance:                        catcd = Trim(Mid$(Combo3.Text, 1, InStr(Combo3.Text, "-") - 1))
           
            
            Call insurance(CStr(U), CStr(v), CStr(catcd), UserFooter1.SelectedStr, CmbRecType.Text, "CRY")
            Screen.MousePointer = 0
            
    
'          If Trim(Combo3.Text) = "A -ALL" Then
'            ISSTYPE = "A"
'          Else
'            ISSTYPE = Trim(Mid$(Combo3.Text, 1, InStr(Combo3.Text, "-") - 1))
'          End If

           Dim clsCRinsurance As New clsCrystal
           
           Set clsCRinsurance.cryRept = Cry_InsuranceRpt_SCMTS
      
           clsCRinsurance.CrystalPrint
                               
           crr.Reset
           crr.Connect = connectstring
           crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
               
           crr.ParameterFields(0) = "@Divcode;" & Divcode & ""
           crr.ParameterFields(1) = "@FDate;" & Format(DTPicker2.value, "yyyy-MM-dd")
           crr.ParameterFields(2) = "@TDate;" & Format(DTPicker3.value, "yyyy-MM-dd") & ""
           crr.ParameterFields(3) = "@ipaddress;" & LocalIP & ""
          ' crr.ParameterFields(4) = "@Isstype;" & ISSTYPE & ""
              
           crr.WindowShowPrintSetupBtn = True
           crr.WindowShowSearchBtn = True
           crr.WindowState = crptMaximized
           SendKeys "{ENTER}"
           crr.Action = 1
           crr.PrinterCopies = 1
           Screen.MousePointer = 0
Exit Sub
 intervalMinutes = -1
End Select
 intervalMinutes = -1
Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub mdlform3(month_value1 As String, month_value2 As String, Category As String, XType As String)

On Error GoTo mdlform3_Error

Dim Adjustment  As Double
'
'        Adjustment2 = 0
'        cont = 0
'        Receiptkg = 0
'        adjtot = 0
'        Consumption = 0
'        Adjustment1 = 0
'        Adjustm = 0
'        monthmm = 0
'
'        vrectype = Trim(Left(pRecType, 3))
'        Set rsa = New Recordset
'        If Category = "A" Then
'            cat = "ALL"
'        Else
'            rsa.Open "select catname from rm_cat where catcd='" & Category & "'", db, adOpenStatic
'            If rsa.RecordCount > 0 Then
'                cat = rsa(0)
'            End If
'        End If
'
'        Set rsgg = New Recordset
'        If Category = "A" Then
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    tmptypestr = "lottype"
'                Else
'                    tmptypestr = "Transfertype"
'                End If
'                rsgg.Open "SELECT * FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "'", db, adOpenStatic
'            Else
'                rsgg.Open "SELECT * FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", db, adOpenStatic
'            End If
'        Else
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    tmptypestr = "lottype"
'                Else
'                    tmptypestr = "Transfertype"
'                End If
'                rsgg.Open "SELECT * FROM RM_LOT WHERE catcd='" & Category & "' and LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "'", db, adOpenStatic
'            Else
'                rsgg.Open "SELECT * FROM RM_LOT WHERE catcd='" & Category & "' and LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", db, adOpenStatic
'            End If
'        End If
'        If rsgg.RecordCount = 0 Then
'            MsgBox "No Records Found", vbInformation, head
'            Exit Sub
'        End If
'
'
'
'
'        Close
'        'Call monval(month_value1, month_value2)
'        Date1 = Format(month_value1, "yyyy-mm-dd")
'        Date2 = Format(month_value2, "yyyy-mm-dd")
'
'        Set Rs = New Recordset
'        Rs.Open "select  distinct lOTdt from rm_LOT where lOTdt between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(Date2, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' group by lOTdt", db, adOpenStatic, adLockBatchOptimistic
'
'        date3 = Format(month_value2, "yyyy-mm-dd")
'        dayval = 31
'        If MONTH(Date1) = "3" Then dayval = 29
'        If Day(Date1) = 1 Then
'            If MONTH(Date1) = 1 Then
'                date3 = Year(Date1) & "/" & IIf(Len(MONTH(Date1)) < 2, "0" & MONTH(Date1), MONTH(Date1)) & "/" & dayval
'           Else
'                date3 = Year(Date1) & "/" & IIf(Len(MONTH(Date1) - 1) < 2, "0" & MONTH(Date1) - 1, MONTH(Date1) - 1) & "/" & dayval
'           End If
'        ElseIf Day(Date1) > 1 Then
'           date3 = Year(Date1) & "/" & IIf(Len(MONTH(Date1)) < 2, "0" & MONTH(Date1), MONTH(Date1)) & "/" & Day(Date1) - 1
'        End If
'        Do While Not IsDate(date3)
'           date3 = Year(Date1) & "/" & IIf(Len(MONTH(Date1) - 1) < 2, "0" & MONTH(Date1) - 1, MONTH(Date1) - 1) & "/" & dayval - 1
'        Loop
'
'
'     Set rs5 = New Recordset
'     rs5.Open "select * from sysobjects where name ='formiv1'", db, adOpenStatic, adLockBatchOptimistic
'         If rs5.RecordCount > 0 Then
'        db.Execute "drop table formiv1"
'        End If
'
'         db.Execute "Create table Formiv1 (date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstran numeric(16),isstrantot numeric(15,3),isstotkg numeric(15,3),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3),rejbale numeric(12),REJKG NUMERIC(15,3),ADJBALE NUMERIC(15),adjkg numeric(15,3),adjtype char(1),Opqty numeric(8),opkg numeric(15,3),recqty numeric(8),reckg numeric(15,3),conbal numeric(8),conkgs numeric(15,3))"
'
'
'        If MONTH(date3) + 1 = "04" Or MONTH(date3) + 1 = "4" Then
'            Set issless = New Recordset
'            If Category = "A" Then
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "b.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' AND E.ISSUED='Y' and " & tmptypestr & "='" & vrectype & "' group by bblflg " & _
'                          "UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "'  and " & tmptypestr & "='" & vrectype & "' group by bblflg) A", db, adOpenStatic, adLockOptimistic
'                Else
'                    issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' AND E.ISSUED='Y' group by bblflg " & _
'                          "UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' group by bblflg) A", db, adOpenStatic, adLockOptimistic
'                End If
'            Else
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "b.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' and b.catcd='" & Category & "' AND E.ISSUED='Y' and " & tmptypestr & "='" & vrectype & "' group by bblflg " & _
'                          "UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' and b.catcd='" & Category & "' and " & tmptypestr & "='" & vrectype & "' group by bblflg) A", db, adOpenStatic, adLockOptimistic
'                Else
'                    issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' and b.catcd='" & Category & "' AND E.ISSUED='Y' group by bblflg " & _
'                          "UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' and b.catcd='" & Category & "' group by bblflg) A", db, adOpenStatic, adLockOptimistic
'                End If
'            End If
'            Set AdjRs = New Recordset
'            If Category = "A" Then
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "a.lottype"
'                    Else
'                        tmptypestr = "a.Transfertype"
'                    End If
'                    AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) - 1 & "' and " & tmptypestr & "='" & vrectype & "' group by a.adjust) A group by adjust", db, adOpenStatic
'                Else
'                    AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) - 1 & "' group by a.adjust) A group by adjust", db, adOpenStatic
'                End If
'            Else
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "a.lottype"
'                    Else
'                        tmptypestr = "a.Transfertype"
'                    End If
'                    AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) - 1 & "' and a.catcd='" & Category & "' and " & tmptypestr & "='" & vrectype & "' group by a.adjust) A group by adjust", db, adOpenStatic
'                Else
'                    AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) - 1 & "' and a.catcd='" & Category & "' group by a.adjust) A group by adjust", db, adOpenStatic
'                End If
'            End If
'        Else
'            Set issless = New Recordset
'            ''issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((Sum(IsNull(e.netwt, 0))), 2) As Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.isstype <> 'T' and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(date3, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' group by bblflg) A", DB, adOpenStatic, adLockOptimistic
'            If Category = "A" Then
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "b.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(date3, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' AND E.ISSUED='Y' and " & tmptypestr & "='" & vrectype & "' group by bblflg " & _
'                          "UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "'  and " & tmptypestr & "='" & vrectype & "' AND E.ISSUED='Y' group by bblflg) A", db, adOpenStatic, adLockOptimistic
'                Else
'                    issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and  a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(date3, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' AND E.ISSUED='Y' group by bblflg " & _
'                          "UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "'AND E.ISSUED='Y'  group by bblflg) A", db, adOpenStatic, adLockOptimistic
'                End If
'            Else
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "b.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(date3, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Category & "' AND E.ISSUED='Y'  and " & tmptypestr & "='" & vrectype & "' group by bblflg " & _
'                          "UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' and b.catcd='" & Category & "'  and " & tmptypestr & "='" & vrectype & "' AND E.ISSUED='Y' group by bblflg) A", db, adOpenStatic
'                Else
'                    issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(date3, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Category & "' AND E.ISSUED='Y' group by bblflg " & _
'                          "UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' and b.catcd='" & Category & "' AND E.ISSUED='Y' group by bblflg) A", db, adOpenStatic
'                End If
'            End If
'            Set AdjRs = New Recordset
'            If Category = "A" Then
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "b.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' and " & tmptypestr & "='" & vrectype & "' group by a.adjust) A group by adjust", db, adOpenStatic
'                Else
'                    AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' group by a.adjust) A group by adjust", db, adOpenStatic
'                End If
'            Else
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "a.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' and " & tmptypestr & "='" & vrectype & "' group by a.adjust) A group by adjust", db, adOpenStatic
'                Else
'                    AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' group by a.adjust) A group by adjust", db, adOpenStatic
'                End If
'            End If
'        End If
'        Do While Not AdjRs.EOF
'            If AdjRs("adjust") = "+" Then
'                too = too + AdjRs("ADJTOTKGS")
'                adjtot = adjtot + AdjRs("adjbale")
'            ElseIf AdjRs("adjust") = "-" Then
'                too = too - AdjRs("ADJTOTKGS")
'                adjtot = adjtot - AdjRs("adjbale")
'            End If
'            AdjRs.MoveNext
'        Loop
'        If issless.RecordCount >= 0 Then
'            issvalue = issless(3)
'        Else
'            issvalue = 0
'        End If
'
'        If MONTH(date3) + 1 = "04" Or MONTH(date3) + 1 = "4" Then
'
'            Set Oprs = New Recordset
'            If Category = "A" Then
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "b.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    If vrectype = "A" Then
'                        Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt= c.lotdt    and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd and " & _
'                              " b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND c.ISSUED='Y' and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt= c.lotdt    and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd  " & _
'                              " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt= c.lotdt    and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd " & _
'                              " and b.lotno=c.lotno  and (B.rejflg='Y' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg) a  group by LOTNO )b ", db, adOpenStatic
'                    Else
'                        Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt= c.lotdt    and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd and " & _
'                              " b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND c.ISSUED='Y' and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt= c.lotdt    and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd  " & _
'                              " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt= c.lotdt    and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd " & _
'                              " and b.lotno=c.lotno  and (B.rejflg='Y' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg) a  group by LOTNO )b ", db, adOpenStatic
'                    End If
'                Else
'                    Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='Y' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg) a  group by LOTNO )b ", db, adOpenStatic
'                End If
'            Else
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "b.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    If vrectype = "A" Then
'                        Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and (b.transferType='' or b.transfertype='JR')" & _
'                              " group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                              " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                              " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' and b.catcd = '" & Category & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                              " and b.lotno=c.lotno  and (B.rejflg='Y' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg) a  group by LOTNO )b ", db, adOpenStatic
'                    Else
'                        Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and " & tmptypestr & "='" & vrectype & "'" & _
'                              " group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                              " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                              " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg " & _
'                              " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' and b.catcd = '" & Category & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                              " and b.lotno=c.lotno  and (B.rejflg='Y' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg) a  group by LOTNO )b ", db, adOpenStatic
'                    End If
'                Else
'                    Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' and b.catcd = '" & Category & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='Y' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg) a  group by LOTNO )b ", db, adOpenStatic
'                End If
'            End If
'        Else
'            Set Oprs = New Recordset
'            'Oprs.Open " select isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from  (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') group by b.LOTNO,b.bblflg " & _
'                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round      from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                      " and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and b.lotno=c.lotno and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg ) a  group by LOTNO )b ", DB, adOpenStatic
'            If Category = "A" Then
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "b.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    If vrectype = "A" Then
'                        Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt= c.lotdt    and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND c.ISSUED='Y' and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt= c.lotdt    and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd  " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0  and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt=c.lotdt and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd and b.lotno=c.lotno " & _
'                          " and (B.rejflg='Y' or B.rejdt >='" & Format(Date1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(Date1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg) a  group by LOTNO )b ", db, adOpenStatic
'                    Else
'                        Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt= c.lotdt    and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND c.ISSUED='Y' and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt= c.lotdt    and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd  " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0  and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c where B.DIVCODE='" & Divcode & "' AND b.lotdt=c.lotdt and c.lottype=b.lottype and c.lotno=b.lotno and c.catcd=b.catcd and b.lotno=c.lotno " & _
'                          " and (B.rejflg='Y' or B.rejdt >='" & Format(Date1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(Date1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg) a  group by LOTNO )b ", db, adOpenStatic
'                    End If
'                Else
'                    Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') group by b.LOTNO,b.bblflg " & _
'                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' group by b.LOTNO,b.bblflg " & _
'                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg " & _
'                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  and b.lotno=c.lotno " & _
'                      " and (B.rejflg='Y' or B.rejdt >='" & Format(Date1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(Date1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg) a  group by LOTNO )b ", db, adOpenStatic
'                End If
'            Else
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "b.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    If vrectype = "A" Then
'                        Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and (b.transferType='' or b.transfertype='JR')" & _
'                          " group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  and b.lotno=c.lotno " & _
'                          " and (B.rejflg='Y' or B.rejdt >='" & Format(Date1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(Date1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0  and (b.transferType='' or b.transfertype='JR') group by b.LOTNO,b.bblflg ) a  group by LOTNO )b ", db, adOpenStatic
'                    Else
'                        Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and " & tmptypestr & "='" & vrectype & "'" & _
'                          " group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                          " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg " & _
'                          " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  and b.lotno=c.lotno " & _
'                          " and (B.rejflg='Y' or B.rejdt >='" & Format(Date1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(Date1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0  and " & tmptypestr & "='" & vrectype & "' group by b.LOTNO,b.bblflg ) a  group by LOTNO )b ", db, adOpenStatic
'                    End If
'                Else
'                    Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') group by b.LOTNO,b.bblflg " & _
'                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' group by b.LOTNO,b.bblflg " & _
'                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
'                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg " & _
'                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  and b.lotno=c.lotno " & _
'                      " and (B.rejflg='Y' or B.rejdt >='" & Format(Date1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(Date1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg ) a  group by LOTNO )b ", db, adOpenStatic
'                End If
'            End If
'        End If
'
'
'
'         db.Execute "Insert into formiv1(date1,opbales,opborah,optot,optotkg) values('" & Format(Date1, "yyyy-mm-dd") & "'," & IIf(IsNull(Oprs("opbale")), 0, Oprs("opbale")) & "," & Oprs("opborah") & "," & Oprs("optot") & "," & Oprs("optotkgs") + (val(too)) & ")"
'        openkgs = Oprs("optotkgs") + (val(too))
'        'openbales = Oprs("opbale") + val(adjtot)
'        openbales = Oprs("optot")
'
'        Set Rs = New Recordset
'        Rs.Open "select datediff(day,'" & Date1 & "' ,'" & Date2 & "') as days ", db, adOpenStatic, adLockReadOnly
'
''        repform.ProgressBar1.Visible = True
''        repform.ProgressBar1.Value = 0
''        repform.ProgressBar1.Max = val(rs("days")) + 1
'        For i = 1 To Rs("days") + 1
'          'repform.ProgressBar1.Value = repform.ProgressBar1.Value + 1
'          totoprecbale = 0
'          totoprecborah = 0
'          totoprectot = 0
'          totoprectotkg = 0
'          Set RecRs = New Recordset
'          Date1 = Date1
'          If Category = "A" Then
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    tmptypestr = "b.lottype"
'                Else
'                    tmptypestr = "b.Transfertype"
'                End If
'                If vrectype = "A" Then
'                    RecRs.Open "select isnull(sum(isnull(recbale,0)),0) as recbale ,isnull(sum(isnull(recborah,0)),0) as recborah, isnull(sum(isnull(rectot,0)),0) as rectot, isnull(sum(isnull(rectotkgs,0)),0) as rectotkgs From ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as rectotkgs from rm_lot b  where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and (b.transferType='' or b.transfertype='JR') group by b.LOTdt,b.opflg,b.bblflg ) x ", db, adOpenStatic
'                Else
'                    RecRs.Open "select isnull(sum(isnull(recbale,0)),0) as recbale ,isnull(sum(isnull(recborah,0)),0) as recborah, isnull(sum(isnull(rectot,0)),0) as rectot, isnull(sum(isnull(rectotkgs,0)),0) as rectotkgs From ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as rectotkgs from rm_lot b  where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and " & tmptypestr & "='" & vrectype & "' group by b.LOTdt,b.opflg,b.bblflg ) x ", db, adOpenStatic
'                End If
'            Else
'                RecRs.Open "select isnull(sum(isnull(recbale,0)),0) as recbale ,isnull(sum(isnull(recborah,0)),0) as recborah, isnull(sum(isnull(rectot,0)),0) as rectot, isnull(sum(isnull(rectotkgs,0)),0) as rectotkgs From ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as rectotkgs from rm_lot b  where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  group by b.LOTdt,b.opflg,b.bblflg ) x ", db, adOpenStatic
'            End If
'          Else
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    tmptypestr = "b.lottype"
'                Else
'                    tmptypestr = "b.Transfertype"
'                End If
'                If vrectype = "A" Then
'                    RecRs.Open "select isnull(sum(isnull(recbale,0)),0) as recbale ,isnull(sum(isnull(recborah,0)),0) as recborah, isnull(sum(isnull(rectot,0)),0) as rectot, isnull(sum(isnull(rectotkgs,0)),0) as rectotkgs From ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as rectotkgs from rm_lot b  where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and (b.transferType='' or b.transfertype='JR')  group by b.LOTdt,b.opflg,b.bblflg ) x ", db, adOpenStatic
'                Else
'                    RecRs.Open "select isnull(sum(isnull(recbale,0)),0) as recbale ,isnull(sum(isnull(recborah,0)),0) as recborah, isnull(sum(isnull(rectot,0)),0) as rectot, isnull(sum(isnull(rectotkgs,0)),0) as rectotkgs From ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as rectotkgs from rm_lot b  where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and " & tmptypestr & "='" & vrectype & "'  group by b.LOTdt,b.opflg,b.bblflg ) x ", db, adOpenStatic
'                End If
'            Else
'                RecRs.Open "select isnull(sum(isnull(recbale,0)),0) as recbale ,isnull(sum(isnull(recborah,0)),0) as recborah, isnull(sum(isnull(rectot,0)),0) as rectot, isnull(sum(isnull(rectotkgs,0)),0) as rectotkgs From ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as rectotkgs from rm_lot b  where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  group by b.LOTdt,b.opflg,b.bblflg ) x ", db, adOpenStatic
'            End If
'          End If
'          If RecRs.RecordCount > 0 Then
'            db.Execute "Update formiv1 set recbale=" & RecRs("recbale") & ",recborah=" & RecRs("recborah") & ",rectot=" & RecRs("rectot") & ",rectotkg=" & RecRs("rectotkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "' "
'            totoprecbale = totoprecbale + RecRs("recbale")
'            totoprecborah = totoprecborah + RecRs("recborah")
'            totoprectot = totoprectot + RecRs("rectot")
'            totoprectotkg = totoprectotkg + RecRs("rectotkgs")
'            Receiptkg = Receiptkg + RecRs("rectotkgs")
'          End If
'            'Rejection Values
'            bolTYPEAll = True
'            Set rejrs = New Recordset
'            If Category = "A" Then
'                'rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs from rm_lot where  rejflg='Y' and rejdt = '" & Format(Date1, "yyyy-mm-dd") & "'  and  lotyear='" & Year(yfdate) & "' group by bblflg)A", db, adOpenStatic
''                rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs FROM (Select count(isnull(baleno,0)) as recbale,0 as recborah,count(isnull(baleno,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs from rm_bale where  rejflg='Y' and rejdt = '" & Format(Date1, "yyyy-mm-dd") & "')A", DB, adOpenStatic
'                rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs from rm_lot where   rejflg='Y' and rejdt = '" & Format(Date1, "yyyy-mm-dd") & "'  and  lotyear='" & Year(yfdate) & "'" & IIf(bolTYPEAll, " ", " AND IM_IND = '" & XType & "'") & " group by bblflg " & _
'                       " UNION SELECT isnull(SUM(ISSBALE),0) AS RecBALE,isnull(SUM(IssBorah),0) AS RecBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS recTOT,isnull(SUM(ISSTOTKGS),0) AS RecTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS issBALE,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS issbORAH ,SUM(KGS) AS isstOTKGS from (SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(SELECT B.varcode,c.lotno,c.lotdt,bblflg,b.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW')  and c.divcode='" & Divcode & "'  and A.ISSUED=B.ISSUED AND b.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  A.CATCD=B.CATCD and b.lotno=c.lotno " & _
'                       " and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and a.isstype in ( select Issue_code from rm_issuetype where isstype in ('R')) " & IIf(bolTYPEAll, " ", " AND c.IM_IND = '" & XType & "'") & " GROUP BY B.varcode,c.lotno,c.lotdt,b.baleno,BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union  SELECT B.varcode,c.lotno,c.lotdt,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB  A,rm_lot c WHERE   c.divcode='" & Divcode & "' AND A.isstype in ( select Issue_code from rm_issuetype where isstype in ('R')) " & IIf(bolTYPEAll, " ", " AND c.IM_IND = '" & XType & "'") & " AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd GROUP BY B.varcode,c.lotno,c.lotdt,BBLFLG )Y GROUP BY bblflg )a)b ", db, adOpenStatic
'
'
'
'            Else
'                'rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs from rm_lot where  catcd='" & Category & "' and rejflg='Y' and rejdt = '" & Format(Date1, "yyyy-mm-dd") & "'  and  lotyear='" & Year(yfdate) & "' group by bblflg)A", db, adOpenStatic
''                rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs FROM (Select count(isnull(baleno,0)) as recbale,0 as recborah,count(isnull(baleno,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs from rm_bale where  rejflg='Y' and rejdt = '" & Format(Date1, "yyyy-mm-dd") & "' and catcd='" & Category & "')A", DB, adOpenStatic
'                rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs from rm_lot where  catcd='" & Category & "' and rejflg='Y' and rejdt = '" & Format(Date1, "yyyy-mm-dd") & "'  and  lotyear='" & Year(yfdate) & "'" & IIf(bolTYPEAll, " ", " AND IM_IND = '" & XType & "'") & " group by bblflg " & _
'                       " UNION SELECT isnull(SUM(ISSBALE),0) AS RecBALE,isnull(SUM(IssBorah),0) AS RecBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS recTOT,isnull(SUM(ISSTOTKGS),0) AS RecTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS issBALE,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS issbORAH ,SUM(KGS) AS isstOTKGS from (SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(SELECT B.varcode,c.lotno,c.lotdt,bblflg,b.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW')  and c.divcode='" & Divcode & "' AND C.CATCD='" & Category & "' and A.ISSUED=B.ISSUED AND b.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  A.CATCD=B.CATCD and b.lotno=c.lotno " & _
'                       " and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and a.isstype in ( select Issue_code from rm_issuetype where isstype in ('R'))  GROUP BY B.varcode,c.lotno,c.lotdt,b.baleno,BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union  SELECT B.varcode,c.lotno,c.lotdt,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB  A,rm_lot c WHERE  C.CATCD='" & Category & "'  and c.divcode='" & Divcode & "' AND A.isstype in ( select Issue_code from rm_issuetype where isstype in ('R')) " & IIf(bolTYPEAll, " ", " AND c.IM_IND = '" & XType & "'") & " AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd GROUP BY B.varcode,c.lotno,c.lotdt,BBLFLG )Y GROUP BY bblflg )a)b ", db, adOpenStatic
'
'
'            End If
'            db.Execute "Update formiv1 set rejbale=" & rejrs("rejbale") & ",rejkg=" & rejrs("rejtotkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
'            rejection = rejection + rejrs("rejtotkgs")
'            rejectionbale = rejectionbale + rejrs("rejbale") 'for bale
'
'            'Issue Values
'            Set issrs = New Recordset
'            'IssRs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, sum(isnull(a.actissKGS,0)-tarewt/bales) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c where  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' group by bblflg) A", DB, adOpenStatic
'            ''IssRs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(A.BALENO) else 0 end as IssBale ,case when bblflg='R' then COUNT(A.BALENO) else 0 end as IssBorah,COUNT(A.BALENO) as IssTot,0 as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where A.ISSUED=E.ISSUED AND A.ISSUED='Y' AND b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) <> 'T' group by bblflg" & _
'                       " UNION  Select 0 as IssBale ,0  as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where  b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) <> 'T' group by bblflg ) A", DB, adOpenStatic
'
'                        If Category = "A" Then
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "c.lottype"
'                    Else
'                        tmptypestr = "c.Transfertype"
'                    End If
'                    If vrectype = "A" Then
'                        issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAH ,sum(kgs) AS ISSTOTKGS from (" & _
'                                "SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(" & _
'                                "SELECT a.varcode,c.lotno,c.lotdt,bblflg,a.BALENO AS BALENO,0 AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and c.divcode='" & Divcode & "' and  a.ISSUED='Y' AND  a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd  and (c.transferType='' or c.transfertype='JR') GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno," & _
'                                "BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union SELECT varcode,lotno,lotdt,bblflg,0 AS BALES,sum(kgs) AS KGS FROM(" & _
'                                "SELECT a.varcode,c.lotno,c.lotdt,bblflg,0 AS BALENO,a.actisskgs AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and c.divcode='" & Divcode & "' and a.ISSUED='Y' AND a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd  and (c.transferType='' or c.transfertype='JR') GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno, " & _
'                                "BBLFLG,a.actisskgs )Y group by varcode,lotno,lotdt,bblflg )a group by bblflg)s", db, adOpenStatic
'                    Else
'                        issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAH ,sum(kgs) AS ISSTOTKGS from (" & _
'                                "SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(" & _
'                                "SELECT a.varcode,c.lotno,c.lotdt,bblflg,a.BALENO AS BALENO,0 AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and c.divcode='" & Divcode & "' and  a.ISSUED='Y' AND  a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd  and " & tmptypestr & "='" & vrectype & "' GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno," & _
'                                "BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union SELECT varcode,lotno,lotdt,bblflg,0 AS BALES,sum(kgs) AS KGS FROM(" & _
'                                "SELECT a.varcode,c.lotno,c.lotdt,bblflg,0 AS BALENO,a.actisskgs AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and c.divcode='" & Divcode & "' and a.ISSUED='Y' AND a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd  and " & tmptypestr & "='" & vrectype & "' GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno, " & _
'                                "BBLFLG,a.actisskgs )Y group by varcode,lotno,lotdt,bblflg )a group by bblflg)s", db, adOpenStatic
'                    End If
'                Else
'                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAH ,sum(kgs) AS ISSTOTKGS from (" & _
'                            "SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(" & _
'                            "SELECT a.varcode,c.lotno,c.lotdt,bblflg,a.BALENO AS BALENO,0 AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and c.divcode='" & Divcode & "' and  a.ISSUED='Y' AND a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno," & _
'                            "BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union SELECT varcode,lotno,lotdt,bblflg,0 AS BALES,sum(kgs) AS KGS FROM(" & _
'                            "SELECT a.varcode,c.lotno,c.lotdt,bblflg,0 AS BALENO,a.actisskgs AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and c.divcode='" & Divcode & "' and a.ISSUED='Y' AND a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno, " & _
'                            "BBLFLG,a.actisskgs )Y group by varcode,lotno,lotdt,bblflg )a group by bblflg)s", db, adOpenStatic
'                End If
'
'                'issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAH ,SUM(KGS) AS ISSTOTKGS from (SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,sum(kgs) AS KGS FROM(SELECT B.varcode,c.lotno,c.lotdt,bblflg,b.BALENO AS BALENO,isskgs AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW')  and c.divcode='" & Divcode & "' AND A.ISSUED=B.ISSUED AND b.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  A.CATCD=B.CATCD and b.lotno=c.lotno  " & _
'                            "and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd GROUP BY B.varcode,c.lotno,c.lotdt,b.baleno,BBLFLG,isskgs )X GROUP BY varcode,lotno,lotdt,BBLFLG )a group by a.bblflg)y", db, adOpenStatic
'
'            Else
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "c.lottype"
'                    Else
'                        tmptypestr = "c.Transfertype"
'                    End If
'                    If vrectype = "A" Then
'                        issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAH ,sum(kgs) AS ISSTOTKGS from (" & _
'                                "SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(" & _
'                                "SELECT a.varcode,c.lotno,c.lotdt,bblflg,a.BALENO AS BALENO,0 AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and c.divcode='" & Divcode & "' and  C.CATCD='" & Category & "' AND a.ISSUED='Y' AND a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and (c.transferType='' or c.transfertype='JR') GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno," & _
'                                "BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union SELECT varcode,lotno,lotdt,bblflg,0 AS BALES,sum(kgs) AS KGS FROM(" & _
'                                "SELECT a.varcode,c.lotno,c.lotdt,bblflg,0 AS BALENO,a.actisskgs AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and  c.divcode='" & Divcode & "' and a.ISSUED='Y' and C.CATCD='" & Category & "' AND a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and (c.transferType='' or c.transfertype='JR') GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno, " & _
'                                "BBLFLG,a.actisskgs )Y group by varcode,lotno,lotdt,bblflg )a group by bblflg)s", db, adOpenStatic
'                    Else
'                        issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAH ,sum(kgs) AS ISSTOTKGS from (" & _
'                                "SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(" & _
'                                "SELECT a.varcode,c.lotno,c.lotdt,bblflg,a.BALENO AS BALENO,0 AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and  c.divcode='" & Divcode & "' and  C.CATCD='" & Category & "' AND a.ISSUED='Y' AND a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and " & tmptypestr & "='" & vrectype & "' GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno," & _
'                                "BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union SELECT varcode,lotno,lotdt,bblflg,0 AS BALES,sum(kgs) AS KGS FROM(" & _
'                                "SELECT a.varcode,c.lotno,c.lotdt,bblflg,0 AS BALENO,a.actisskgs AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and  c.divcode='" & Divcode & "' and a.ISSUED='Y' and C.CATCD='" & Category & "' AND a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and " & tmptypestr & "='" & vrectype & "' GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno, " & _
'                                "BBLFLG,a.actisskgs )Y group by varcode,lotno,lotdt,bblflg )a group by bblflg)s", db, adOpenStatic
'                    End If
'                Else
'                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAH ,sum(kgs) AS ISSTOTKGS from (" & _
'                            "SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(" & _
'                            "SELECT a.varcode,c.lotno,c.lotdt,bblflg,a.BALENO AS BALENO,0 AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and  c.divcode='" & Divcode & "' and  C.CATCD='" & Category & "' and a.ISSUED='Y' AND a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno," & _
'                            "BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union SELECT varcode,lotno,lotdt,bblflg,0 AS BALES,sum(kgs) AS KGS FROM(" & _
'                            "SELECT a.varcode,c.lotno,c.lotdt,bblflg,0 AS BALENO,a.actisskgs AS KGS  FROM RM_ISSB A, rm_lot c WHERE a.isstype not in (select issue_code from rm_issuetype where Isstype in ('R','S')) and c.divcode='" & Divcode & "' and a.ISSUED='Y' and C.CATCD='" & Category & "' AND  a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno, " & _
'                            "BBLFLG,a.actisskgs )Y group by varcode,lotno,lotdt,bblflg )a group by bblflg)s", db, adOpenStatic
'                            'issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAH ,SUM(KGS) AS ISSTOTKGS from (SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(SELECT B.varcode,c.lotno,c.lotdt,bblflg,b.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW')  and c.divcode='" & Divcode & "' AND C.CATCD='" & Category & "' and A.ISSUED=B.ISSUED AND b.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  A.CATCD=B.CATCD and b.lotno=c.lotno " & _
'                            " and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd GROUP BY B.varcode,c.lotno,c.lotdt,b.baleno,BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union  SELECT B.varcode,c.lotno,c.lotdt,BBLFLG,0 AS BALES,SUM(A.ISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB  A,rm_lot c WHERE  C.CATCD='" & Category & "'  and c.divcode='" & Divcode & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd GROUP BY B.varcode,c.lotno,c.lotdt,BBLFLG )Y GROUP BY bblflg )a ", db, adOpenStatic
'                End If
'            End If
'
'
'
'            db.Execute "Update formiv1 set issbale=" & issrs("issbale") & ",issboarh=" & issrs("issborah") & ",isstot=" & issrs("isstot") & ",isstotkg=" & issrs("isstotkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
'
'            Consumption = Consumption + issrs("isstotkgs")
'
'            'Transfer Value
'            Set issrs = New Recordset
'            'IssRs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, sum(isnull(a.actissKGS,0)-tarewt/bales) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c where  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' group by bblflg) A", DB, adOpenStatic
'            If Category = "A" Then
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "b.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    If vrectype = "A" Then
'                        issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where A.ISSUED='Y' AND a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' and (b.transferType='' or b.transfertype='JR') group by bblflg " & _
'                           " UNION Select 0  as IssBale ,0 as IssBorah,0 as IssTot, round((sum(isnull(e.netwt,0))),2) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' and (b.transferType='' or b.transfertype='JR') group by bblflg ) A", db, adOpenStatic
'                    Else
'                        issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where A.ISSUED='Y' AND a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' and " & tmptypestr & "='" & vrectype & "' group by bblflg " & _
'                           " UNION Select 0  as IssBale ,0 as IssBorah,0 as IssTot, round((sum(isnull(e.netwt,0))),2) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' and " & tmptypestr & "='" & vrectype & "' group by bblflg ) A", db, adOpenStatic
'                    End If
'                Else
'                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where A.ISSUED='Y' AND a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' group by bblflg " & _
'                       " UNION Select 0  as IssBale ,0 as IssBorah,0 as IssTot, round((sum(isnull(e.netwt,0))),2) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' group by bblflg ) A", db, adOpenStatic
'                End If
'            Else
'                If vrectype <> "ALL" Then
'                    If vrectype = "A" Then
'                        tmptypestr = "b.lottype"
'                    Else
'                        tmptypestr = "b.Transfertype"
'                    End If
'                    If vrectype = "A" Then
'                        issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where A.ISSUED='Y' AND b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' and (b.transferType='' or b.transfertype='JR') group by bblflg " & _
'                          " UNION Select 0  as IssBale ,0 as IssBorah,0 as IssTot, round((sum(isnull(e.netwt,0))),2) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' and (b.transferType='' or b.transfertype='JR') group by bblflg ) A", db, adOpenStatic
'                    Else
'                        issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where A.ISSUED='Y' AND b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' and " & tmptypestr & "='" & vrectype & "' group by bblflg " & _
'                          " UNION Select 0  as IssBale ,0 as IssBorah,0 as IssTot, round((sum(isnull(e.netwt,0))),2) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' and " & tmptypestr & "='" & vrectype & "' group by bblflg ) A", db, adOpenStatic
'                    End If
'                Else
'                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where A.ISSUED='Y' AND b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' group by bblflg " & _
'                      " UNION Select 0  as IssBale ,0 as IssBorah,0 as IssTot, round((sum(isnull(e.netwt,0))),2) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' group by bblflg ) A", db, adOpenStatic
'                End If
'            End If
'            db.Execute "Update formiv1 set isstran=" & issrs("isstot") & ",isstrantot=" & issrs("isstotkgs") & "  where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
'            Transfer = Transfer + issrs("isstotkgs")
'
'
'            'Opening +Receipt Values
'            Set Oprs = New Recordset
'            Oprs.Open "Select isnull(Opbales,0) Opbales,isnull(opborah,0) opborah,isnull(optot,0)optot,isnull(optotkg,0)optotkg from formiv1 where date1='" & Format(Date1, "yyyy-mm-dd") & "'", db, adOpenStatic
'            totoprecbale = totoprecbale + Oprs("Opbales")
'            totoprecborah = totoprecborah + Oprs("Opborah")
'            totoprectot = totoprectot + Oprs("optot")
'            totoprectotkg = totoprectotkg + Oprs("optotkg")
'            db.Execute "Update formiv1 set oprecbale=" & totoprecbale & ",oprecborah=" & totoprecborah & ",oprectot=" & totoprectot & ",oprectotkg=" & totoprectotkg & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
'
'            Adjustment1 = 0
'            'Adjustment Values
'            Set AdjRs = New Recordset
'            If Category = "A" Then
'                AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt='" & Format(Date1, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' group by a.adjust) A group by adjust", db, adOpenStatic
'            Else
'                AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt='" & Format(Date1, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' group by a.adjust) A group by adjust", db, adOpenStatic
'            End If
'            If AdjRs.RecordCount > 0 Then
'
'
'                Do While Not AdjRs.EOF
'                    If AdjRs("adjust") = "+" Then
'                        Adjustment1 = Adjustment1 + AdjRs("ADJBALE")
'                        Adjustment2 = Adjustment2 + AdjRs("ADJTOTKGS")
'                    ElseIf AdjRs("adjust") = "-" Then
'                        Adjustment1 = Adjustment1 - AdjRs("ADJBALE")
'                        Adjustment2 = Adjustment2 - AdjRs("ADJTOTKGS")
'                    End If
'                    AdjRs.MoveNext
'                Loop
'
'                If Mid$(Adjustment1, 1, 1) = "-" Then
'                    db.Execute "Update formiv1 set adjkg=" & Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) & ",adjtype='" & Mid$(Adjustment1, 1, 1) & "' where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
'                                                            'Mid$(month_value1, InStr(month_value1, "-") + 1, Len(month_value1))
'
'                    'Adjustment = Adjustment - AdjRs("AdjTotkgs")
'                Else
'                'If Mid$(Adjustment1, 1, 1) = "+" Then
'                    db.Execute "Update formiv1 set adjkg=" & Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) & ",adjtype='+' where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
'                    'Adjustment = Adjustment + AdjRs("AdjTotkgs")
'
'                End If
'
'            Else
'                db.Execute "Update formiv1 set adjkg='0',adjtype=Null where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
'                Adjustment1 = Adjustment1 + 0
'                Adjustment2 = Adjustment2 + 0
'
'            End If
'
'             If Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) > 0 Then
'                If Mid$(Adjustment1, 1, 1) = "-" Then
'
'                    Adjustm = Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1))
'
'                    Set Oprs = New Recordset
'                    Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0)) as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))+sum(isnull(rejkg,0))-sum(isnull(Adjkg,0)) as ClosingKgs  from formiv1 where date1='" & Format(Date1, "yyyy-mm-dd") & "'", db, adOpenStatic
'                Else
'                    'If Mid$(Adjustment1, 1, 1) = "+" Or Mid$(Adjustment1, 1, 1) <> "+" Then
'                    Adjustm = Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1))
'                    Set Oprs = New Recordset
'
'                    'Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0)) as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0)) as ClosingKgs  from formiv1 where date1='" & Format(date1, "yyyy-mm-dd") & "'", db, adOpenStatic
'                    Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0)) as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))+sum(isnull(rejkg,0))+sum(isnull(Adjkg,0)) as ClosingKgs  from formiv1 where date1='" & Format(Date1, "yyyy-mm-dd") & "'", db, adOpenStatic
'                End If
'            Else
'                Set Oprs = New Recordset
'                Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0))-sum(isnull(rejbale,0))  as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))-sum(isnull(rejkg,0)) as ClosingKgs  from formiv1 where date1='" & Format(Date1, "yyyy-mm-dd") & "'", db, adOpenStatic
'            End If
'
'                db.Execute "Update formiv1 set totbale=" & Oprs("ClosingBale") & ",totborah=" & Oprs("ClosingBorah") & ",total=" & Oprs("ClosingTot") & ",totkg=" & Oprs("ClosingKgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
'
'             'Opening Balance for the next day
'             Set Oprs = New Recordset
'             Oprs.Open "Select sum(isnull(totbale,0)),sum(isnull(totborah,0)),sum(isnull(total,0)),sum(isnull(totkg,0)) from formiv1 where date1='" & Format(Date1, "yyyy-mm-dd") & "'", db, adOpenStatic
'             Date1 = DateAdd("d", 1, Date1)
'             db.Execute "Insert into formiv1(date1,opbales,opborah,optot,optotkg) values('" & Format(Date1, "yyyy-mm-dd") & "'," & Oprs(0) & "," & Oprs(1) & "," & Oprs(2) & "," & Oprs(3) & ")"
'
'        Next
'
'        Dim temp6 As String
'        MON = MonthName(MONTH(month_value1))
'        temp6 = Year(month_value1)
'
'
'        Set RS2 = New Recordset
'        'rs2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,issbale as issbale,issboarh as issborah,isstot as isstotal,isstotkg as isskgs,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing from formiv where Date1 <= '" & Format(date1, "dd/mmm/yyyy") & "' order by date1 ", db, adOpenStatic
'         'rs2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,issbale as issbale,issboarh as issborah,isstot as isstotal,isstotkg as isskgs,isstran,isstrantot,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing,REJBALE AS REJBALES,rejkg as rejectedkgs,ADJBALE AS ADJBALES,adjkg as adjustedkgs,adjtype from formiv where Date1 <= '" & Format(Date1, "dd/mmm/yyyy") & "' order by date1 ", DB, adOpenStatic
'         RS2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,issbale as issbale,issboarh as issborah,isstot as isstotal,isstotkg as isskgs,isstran,isstrantot,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing,REJBALE AS REJBALES,rejkg as rejectedkgs,ADJBALE AS ADJBALES,adjkg as adjustedkgs,adjtype from formiv1 where Date1 <= '" & Format(Date1, "dd/mmm/yyyy") & "' order by date1 ", db, adOpenStatic
'        RS2.MoveFirst
'        For i = 1 To RS2.RecordCount - 1
'
'            cnt = cnt + 1
'
'          stot1 = stot1 + RS2("opentotal")
'          stot2 = stot2 + RS2("recpbale") + RS2("recpborah")
'          stot3 = stot3 + RS2("oprebale")
'          stot4 = stot4 + RS2("issbale") + RS2("issborah")
'          stot5 = stot5 + RS2("closbale")
'          stot6 = stot6 + RS2("rectotal")
'          stot7 = stot7 + RS2("isstran")
'          stot8 = stot8 + RS2("REJBALES")
'          stot9 = stot9 + RS2("ADJBALES")
'          stot10 = stot10 + RS2("opkgs")
'          stot11 = stot11 + RS2("reckgs")
'          stot12 = stot12 + RS2("isskgs")
''          stot10 = TOkg - (Consumption + Transfer + rejection + Adjustment1)
''          stot11 = TOTBALES - (stot4 + stot7 + stot8 + stot9)
'            RS2.MoveNext
'        Next
'        RS2.MoveFirst
''        Cn.Close
'    db.Execute "update formiv1 set opqty=" & RS2("opentotal") & ",opkg=" & RS2("opkgs") & ""
'    TMonth = Format(DTPicker3.value, "MMMM")
'    db.Execute "update formiv1 set recqty=" & stot6 & ",reckg=" & stot11 & ",conbal=" & stot4 & ",conkgs=" & stot12 & ""
'    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\FormIV.rpt"
'    FrmRpt.RptHead = "3"
'    parameter1 = DIVNAME
'    parameter2 = cat
'    parameter3 = Format(DTPicker3.value, "yyyy-MM-dd")
'    FrmRpt.Show

       Dim bolLotType As Boolean
        Dim sCondition As String
        pagein = 0
        Adjustment = 0
        cont = 0
        f = FreeFile
        cnt = 0
        too = 0
        adjtot = 0
        Adjustment1 = 0
        Adjustm = 0
        monthmm = 0
        
        
        If XType = "ALL" Then bolTYPEAll = True Else bolTYPEAll = False
        If XType = "A" Then bolLotType = True Else bolLotType = False
        If bolLotType = True Then sCondition = "Lottype ='" & XType & "'" Else sCondition = "transferType ='" & XType & "'"
        
        Set rsa = New Recordset
        rsa.Open "select catname from rm_cat where catcd='" & Category & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            cat = rsa(0)
        Else
            cat = "ALL"
        End If
        
        date1 = Format(month_value1, "yyyy-mm-dd")
        date2 = Format(month_value2, "yyyy-mm-dd")
        On Error Resume Next
         DB.Execute "drop table formiv"
        DB.Execute "Create table Formiv (date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstran numeric(16),isstrantot numeric(15,3),isstotkg numeric(15,3),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3),rejbale numeric(12),REJKG NUMERIC(15,3),ADJBALE NUMERIC(15),adjkg numeric(15,3),adjtype char(1), salbale numeric(10),salborah numeric(10), saltot numeric(12), saltotkg numeric(15,3), isskgs numeric(20,3))"
        
        For dtCurrDate = CDate(month_value1) To CDate(month_value2)
         
                SqlStr = ""
                SqlStr = " SELECT CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
                SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
                SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS,"
                If UCase(CustID) = "SKS" Then
                    SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBAL,0))  AS ISSBALES,"
                    SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBOR,0))  AS ISSBORAS,"
                    SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODKGS,0))  AS ISSKGS,"
                Else
                    SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBAL,0)) + SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
                    SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBOR,0)) + SUM(ISNULL(A.JWBOR,0)) AS ISSBORAS,"
                    SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODKGS,0)) + SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"

                End If
                
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.TRANSBAL,0)) as TranBal, SUM(ISNULL(A.TRANSBOR,0)) as TrabBoras, SUM(ISNULL(A.TRANSKGS,0)) as TransKgs, "
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.SALESBAL,0)) as SalBal, SUM(ISNULL(A.SALESBOR,0)) as SalBoras, SUM(ISNULL(A.SALESKGS,0)) as SalKgs, "
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) as REJKGS,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END as CLOBALES,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END as CLOBORAS,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END as CLOKGS, SUM(ISNULL(A.JWBAL,0)) JWBAL,SUM(ISNULL(A.JWKGS,0)) JWKGS,sum(isnull(a.JWBOR,0)) JWBOR, SUM(ISNULL(A.JWKGS,0)) as otherkgs "
                SqlStr = SqlStr + Chr(13) + " FROM ("
                SqlStr = SqlStr + Chr(13) + gStockStatement(CDate(dtCurrDate), CDate(dtCurrDate))
                SqlStr = SqlStr + Chr(13) + "  ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "'"
        
        
                If Trim(Category) <> "ALL" Then
                    If XType <> "ALL" Then
                        If XType = "A" Then
                            SqlStr = SqlStr & Chr(13) + "  and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                        Else
                            SqlStr = SqlStr & Chr(13) + "  and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                        End If
                    Else
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(Category) & "'"
                    End If
                Else
                    If XType <> "ALL" Then
                        If XType = "A" Then
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "'"
                        Else
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "'"
                        End If
                    Else
                      'ALL
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
                    End If
                End If
                
                
                Set Rs = New Recordset
                DB.CommandTimeout = 1000
                Rs.Open SqlStr, DB, adOpenStatic
        
                Set AdjRs = New Recordset
                AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt='" & Format(dtCurrDate, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' " & IIf(bolTYPEAll, " ", " and a." & sCondition) & " group by a.adjust) A group by adjust", DB, adOpenStatic
        
                If AdjRs.RecordCount > 0 Then
                    Do While Not AdjRs.EOF
                        If AdjRs("adjust") = "+" Then
                            Adjustment1 = Adjustment1 + AdjRs("ADJBALE")
                            Adjustment = Adjustment + AdjRs("ADJTOTKGS")
                        ElseIf AdjRs("adjust") = "-" Then
                            Adjustment1 = Adjustment1 - AdjRs("ADJBALE")
                            Adjustment = Adjustment - AdjRs("ADJTOTKGS")
                        End If
                        AdjRs.MoveNext
                    Loop
                Else
                   Adjustment = 0
                End If
                 
                TotalAdjust = TotalAdjust + Adjustment
                
                If Rs.EOF = False Then
                    sQry = ""
                    sQry = sQry & Chr(13) & " INSERT INTO Formiv (date1,Opbales, opborah, optot,optotkg,recbale,recborah,rectot,"
                    sQry = sQry & Chr(13) & " rectotkg,oprecbale,oprecborah,oprectot,oprectotkg,issbale, issboarh,isstot,isstran,"
                    sQry = sQry & Chr(13) & " isstrantot,isstotkg,rejbale,REJKG, salbale,salborah,saltot,saltotkg,ADJBALE,adjkg,"
                    sQry = sQry & Chr(13) & " adjtype,totbale,totborah,total,totkg,isskgs) Values "
                    sQry = sQry & Chr(13) & " ('" & Format(dtCurrDate, "YYYY/MM/DD") & "',"
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbORAS")), 0, Rs("opbORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("opbORAS")), 0, Rs("opbORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPKGS")), 0, Rs("OPKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RecKGS")), 0, Rs("RecKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPBORAS")), 0, Rs("OPBORAS")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("opboras")), 0, Rs("opboras")) + IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPKGS")), 0, Rs("OPKGS")) + IIf(IsNull(Rs("recKGS")), 0, Rs("recKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBALES")), 0, Rs("ISSBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBORAS")), 0, Rs("ISSBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBALES")), 0, Rs("ISSBALES")) + IIf(IsNull(Rs("ISSBORAS")), 0, Rs("ISSBORAS")) & ","
                    If UCase(CustID) = "SKS" Then
                            sQry = sQry & Chr(13) & IIf(IsNull(Rs("JWBAL")), 0, Rs("JWBAL")) + IIf(IsNull(Rs("JWBOR")), 0, Rs("JWBOR")) & ","
                        sQry = sQry & Chr(13) & IIf(IsNull(Rs("JWKGS")), 0, Rs("JWKGS")) & ","
                        sQry = sQry & Chr(13) & IIf(IsNull(Rs("JWBAL")), 0, Rs("JWBAL")) + IIf(IsNull(Rs("JWBOR")), 0, Rs("JWBOR")) & ","

                    Else
                        sQry = sQry & Chr(13) & IIf(IsNull(Rs("TranBal")), 0, Rs("TranBal")) + IIf(IsNull(Rs("TrabBoras")), 0, Rs("TrabBoras")) & ","
                        sQry = sQry & Chr(13) & IIf(IsNull(Rs("transkgs")), 0, Rs("transkgs")) & ","
                        sQry = sQry & Chr(13) & IIf(IsNull(Rs("TranBal")), 0, Rs("TranBal")) + IIf(IsNull(Rs("TrabBoras")), 0, Rs("TrabBoras")) & ","
                  
                   End If
                   
                  ' sQry = sQry & Chr(13) & IIf(IsNull(Rs("transkgs")), 0, Rs("transkgs")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("REJBALES")), 0, Rs("REJBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("REJKGS")), 0, Rs("REJKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBal")), 0, Rs("salBal")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBoras")), 0, Rs("salBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBal")), 0, Rs("salBal")) & IIf(IsNull(Rs("salBoras")), 0, Rs("salBoras")) & ","
                   
                     If UCase(CustID) = "SKS" Then
                         sQry = sQry & Chr(13) & IIf(IsNull(Rs("Salkgs")), 0, Rs("Salkgs")) & ",0," & Adjustment & "," & IIf(IsNull(Rs("otherkgs")), 0, Rs("otherkgs")) & ","
                     Else
                         sQry = sQry & Chr(13) & IIf(IsNull(Rs("Salkgs")), 0, Rs("Salkgs")) & ",0," & Adjustment & ",'-',"
                     End If
                     
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBALES")), 0, Rs("CLOBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBoras")), 0, Rs("CLOBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBALES")), 0, Rs("CLOBALES")) + IIf(IsNull(Rs("CLOBoras")), 0, Rs("CLOBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOKGS")), 0, Rs("CLOKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("isskgs")), 0, Rs("isskgs")) & ")"
                    
                    DB.Execute sQry
                End If
         
        Next
         
        Dim temp6 As String
        MON = MonthName(MONTH(month_value1))
        temp6 = Format(month_value1, "YY")
        
        Dim strType As String
        Set RS2 = New Recordset
        RS2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,issbale as issbale,issboarh as issborah,isstot as isstotal,isskgs as isskgs,isstran,isstrantot,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing,REJBALE AS REJBALES,rejkg as rejectedkgs,ADJBALE AS ADJBALES,adjkg as adjustedkgs,adjtype,salbale as salbale,salborah as salborah,saltot as saltotal,saltotkg as salkgs from formiv  order by date1 ", DB, adOpenStatic
        RS2.MoveFirst
        
        For I = 1 To RS2.RecordCount
            
''            If RS2!saltotal > 0 Then strType = "Sales" Else strType = ""
''            If RS2("adjustedkgs") > 0 Then
''                 Print #f, Space(5) & Padr(Format(RS2(0), "dd-mm-yy"), 8, " "); Padl(INF(RS2("opkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("reckgs"), 3), 15, " "); Space(2); Padl(INF(RS2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(RS2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(RS2("isstrantot"), 3), 15, " ") & Space(6) & Padr(strType, 15, "") & Space(1) & Padl(INF(RS2("salkgs"), 3), 15, " ") & Space(1) & Padl(INF(RS2("adjustedkgs") & "(" & Padr(RS2("adjtype"), 1, " ") & ")", 3), 15, " "); Space(2); Padl(INF(RS2("closing"), 3), 15, " ")
''            Else
''                 Print #f, Space(5) & Padr(Format(RS2(0), "dd-mm-yy"), 8, " "); Padl(INF(RS2("opkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("reckgs"), 3), 15, " "); Space(2); Padl(INF(RS2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(RS2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(RS2("isstrantot"), 3), 15, " ") & Space(6) & Padr(strType, 15, "") & Space(1) & Padl(INF(RS2("salkgs"), 3), 15, " ") & Space(1) & Padl(INF(RS2("adjustedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("closing"), 3), 15, " ")
''            End If
            cnt = cnt + 1
  
          stot1 = stot1 + RS2("openbale")
          stot2 = stot2 + RS2("recpbale")
          stot3 = stot3 + RS2("oprebale")
          stot4 = stot4 + RS2("issbale")
          stot5 = stot5 + RS2("closbale")
          stot6 = stot6 + RS2("rectotal")
          stot7 = stot7 + RS2("isstran")
          stot8 = stot8 + RS2("REJBALES")
          stot9 = stot9 + RS2("ADJBALES")
          stot10 = stot10 + RS2("OPENBOARH")
          stot11 = stot11 + RS2("recpborah")
          stot12 = stot12 + RS2("issborah")
          stot13 = stot13 + RS2!salbale
          stot14 = stot14 + RS2!salborah

          stot15 = stot15 + RS2!salkgs
          stot16 = stot16 + RecRs!JWBAL
            stot17 = stot17 + RecRs!JWKGS
            
          RS2.MoveNext

        Next

        SqlStr = ""
        SqlStr = " SELECT CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBAL,0)) + SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBOR,0)) + SUM(ISNULL(A.JWBOR,0)) AS ISSBORAS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODKGS,0)) + SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.TRANSBAL,0)) as TranBal, SUM(ISNULL(A.TRANSBOR,0)) as TrabBoras, SUM(ISNULL(A.TRANSKGS,0)) as TransKgs, "
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.SALESBAL,0)) as SalBal, SUM(ISNULL(A.SALESBOR,0)) as SalBoras, SUM(ISNULL(A.SALESKGS,0)) as SalKgs, "
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) as REJKGS,"
        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END as CLOBALES,"
        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END as CLOBORAS,"
        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END as CLOKGS, SUM(ISNULL(A.JWBAL,0)) JWBAL,SUM(ISNULL(A.JWKGS,0)) JWKGS,sum(isnull(a.JWBOR,0)) JWBOR "
        SqlStr = SqlStr + Chr(13) + " FROM ("
        SqlStr = SqlStr + Chr(13) + gStockStatement(CDate(month_value1), CDate(month_value2))
        SqlStr = SqlStr + Chr(13) + "  ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND b.DIVCODE='" & Divcode & "'"


        If Trim(Category) <> "ALL" Then
            If XType <> "ALL" Then
                If XType = "A" Then
                    SqlStr = SqlStr & Chr(13) + "  and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                Else
                    SqlStr = SqlStr & Chr(13) + "  and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                End If
            Else
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(Category) & "'"
            End If
        Else
            If XType <> "ALL" Then
                If XType = "A" Then
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "'"
                Else
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "'"
                End If
            Else
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
            End If
        End If
        
        Set RecRs = New Recordset
        DB.CommandTimeout = 1200
        RecRs.Open SqlStr, DB, adOpenDynamic, adLockReadOnly
        
        If RecRs.EOF = False Then
            stot1 = RecRs("opbales")
            stot2 = RecRs("RECBALES")
            stot3 = RecRs("RECBALES") + RecRs("opbales")
            stot4 = RecRs("ISSBALES")
            stot5 = RecRs("clobaleS")
'            stot6 = RecRs("rectotal")
            stot7 = RecRs("TRANBAL")
            stot8 = RecRs("REJBALES")
            stot9 = 0
            stot10 = RecRs("OPBORAS")
            stot11 = RecRs("RECBORAS")
            stot12 = RecRs("ISSBORAS")
            stot13 = RecRs!salbal
            stot14 = RecRs!salboraS
            stot15 = RecRs!salkgs
            stot16 = RecRs!JWBAL
            stot17 = RecRs!JWKGS
            
            If UCase(CustID) = "SKS" Then
                stot4 = RecRs("ISSBALES") - RecRs!JWBAL
                stot12 = RecRs("ISSBORAS") - RecRs!JWKGS
                stot13 = RecRs!salbal + RecRs("TRANBAL")
            End If
            
        End If
        
        
        Set rs3 = New Recordset
        TOkg = openkgs + Receiptkg
        TOTBALES = stot3
        totborahs = stot10 + stot11
        

''        Print #f, Space(10) + Space(92) & "Opening Stock   :" & Padl(INF(stot1, 0), 12, " ") & Space(1) & Padl(INF(stot10, 0), 12, " ") & Space(5) & Padl(INF(RecRs("OPKGS"), 3), 16, " ")
''        Print #f, Space(10) + Space(92) & "Receipts        :" & Padl(INF(stot2, 0), 12, " ") & Space(1) & Padl(INF(stot11, 0), 12, " ") & Space(5) & Padl(INF(RecRs("RECKGS"), 3), 16, " ")
''        Print #f, Space(10) + Space(92) & "Total           :" & Padl(INF(TOTBALES, 0), 12, " ") & Space(1) & Padl(INF(totborahs, 0), 12, " ") & Space(5) & Padl(INF(RecRs("OPKGS") + RecRs("RECKGS"), 3), 16, " ")
''        Print #f, Space(10) + Space(92) & "Consumption     :" & Padl(INF(stot4, 0), 12, " ") & Space(1) & Padl(INF(stot12, 0), 12, " ") & Space(5) & Padl(INF(RecRs("ISSKGS"), 3), 16, " ")
''        Print #f, Space(10) + Space(92) & "Transfer        :" & Padl(INF(stot7, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(RecRs("TRANSKGS"), 3), 16, " ")
''        Print #f, Space(10) + Space(92) & "Others          :" & Padl(INF(stot13, 0), 12, " ") & Space(1) & Padl(INF(stot14, 0), 12, " ") & Space(5) & Padl(INF(RecRs("SALKGS"), 3), 16, " ")
''        Print #f, Space(10) + Space(92) & "Rejected        :" & Padl(INF(stot8, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(RecRs("REJKGS"), 3), 16, " ")
''        Print #f, Space(10) + Space(92) + "Adjustment      :" & Padl(INF(stot9, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(TotalAdjust, 3), 16, " ")
        stot10 = TOkg - (Consumption + Transfer + rejection + stot15 + stot17) + (Adjustment)
        stot11 = TOTBALES - (stot4) - (stot13 + stot7 + stot8 + stot16) + (stot9)
        stot12 = totborahs - stot12 - stot14
'''        Print #f, Space(10) + Space(92) & "Balance         :" & Padl(INF(stot11, 0), 12, " ") & Space(1) & Padl(INF(stot12, 0), 12, " ") & Space(5) & Padl(INF(RecRs("clokgs"), 3), 16, " ")

        Dim ClsFormiv As New clsCrystal
        If UCase(CustID) = "SKS" Then
            Set ClsFormiv.cryRept = Cry_Form4SKS
        Else
            Set ClsFormiv.cryRept = CryFormIV
        End If
        'Set ClsFormiv.cryRept = CryFormIV1
        ClsFormiv.CrystalPrint
        crr.Reset
        crr.DiscardSavedData = True
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        Dim Str As String
        
        crr.Formulas(0) = "divname ='" & Trim(divname) & "'"
        crr.Formulas(1) = "catname ='" & cat & "'"
        crr.Formulas(2) = "opbale ='" & Padl(INF(stot1, 0), 16, " ") & "'"
        crr.Formulas(3) = "opkgs ='" & Padl(INF(RecRs("OPKGS"), 3), 16, " ") & "'"
        crr.Formulas(4) = "Recbale ='" & Padl(INF(stot2, 0), 16, " ") & "'"
        crr.Formulas(5) = "RecKgs ='" & Padl(INF(RecRs("RECKGS"), 3), 16, " ") & "'"
        crr.Formulas(6) = "Consbale ='" & Padl(INF(stot4, 0), 16, " ") & "'"
        
         If UCase(CustID) = "SKS" Then
            crr.Formulas(7) = "ConsKgs ='" & Padl(INF(RecRs("ISSKGS") - RecRs("JWKGS"), 3), 16, " ") & "'"
         Else
            crr.Formulas(7) = "ConsKgs ='" & Padl(INF(RecRs("ISSKGS"), 3), 16, " ") & "'"
        End If
        
        crr.Formulas(8) = "TOTBALE ='" & Padl(INF(TOTBALES, 0), 16, " ") & "'"
        crr.Formulas(9) = "TOTKGS ='" & Padl(INF(RecRs("OPKGS") + RecRs("RECKGS"), 3), 16, " ") & "'"
        crr.Formulas(10) = "TRFBALE ='" & Padl(INF(stot7, 0), 16, " ") & "'"
        crr.Formulas(11) = "TRFKGS ='" & Padl(INF(RecRs("TRANSKGS"), 3), 16, " ") & "'"
        crr.Formulas(12) = "OTHBALE ='" & Padl(INF(stot13, 0), 16, " ") & "'"
        If UCase(CustID) = "SKS" Then
            crr.Formulas(13) = "OTHKGS ='" & Padl(INF((RecRs("SALKGS") + RecRs("TRANSKGS")), 3), 16, " ") & "'"
        Else
            crr.Formulas(13) = "OTHKGS ='" & Padl(INF(RecRs("SALKGS"), 3), 16, " ") & "'"
        End If
        crr.Formulas(14) = "REJBALE ='" & Padl(INF(stot8, 0), 16, " ") & "'"
        crr.Formulas(15) = "REJKGS ='" & Padl(INF(RecRs("REJKGS"), 3), 16, " ") & "'"
        crr.Formulas(16) = "ADJBALE ='" & Padl(INF(stot9, 0), 16, " ") & "'"
        crr.Formulas(17) = "ADJKGS ='" & Padl(INF(TotalAdjust, 3), 16, " ") & "'"
        crr.Formulas(18) = "CLBALE ='" & Padl(INF(stot11, 0), 16, " ") & "'"
        crr.Formulas(19) = "CLKGS ='" & Padl(INF(RecRs("clokgs"), 3), 16, " ") & "'"
        If UCase(CustID) = "SKS" Then
        crr.Formulas(20) = "JWBALE ='" & Padl(INF(stot16, 0), 16, " ") & "'"
        crr.Formulas(21) = "JWKGS ='" & Padl(INF(RecRs("JWKGS"), 3), 16, " ") & "'"
        End If
        
        crr.ParameterFields(0) = "@date1;" & Format(DTPicker3.value, "yyyy-MM-dd")
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
        Screen.MousePointer = 0
''
''
''    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\FormIV.rpt"
''    FrmRpt.RptHead = "3"
''    parameter1 = DIVNAME
''    parameter2 = cat
''    parameter3 = Format(DTPicker3.value, "yyyy-MM-dd")
''    FrmRpt.Show
  
        


Exit Sub
mdlform3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mdlform3 of Form repform", vbInformation, head

Screen.MousePointer = 0
End Sub

Private Sub Command2_LostFocus()
On Error GoTo Command2_LostFocus_Error

Select Case Repindex
Case 13
DTPicker3.SetFocus
Case 14
DTPicker2.SetFocus
Case 15
DTPicker2.SetFocus
Case 16
DTPicker2.SetFocus
Case 1001
DTPicker3.SetFocus
Case 150
DTPicker3.SetFocus
Case 101
DTPicker3.SetFocus
Case 155
DTPicker2.SetFocus
Case 19112
DTPicker2.SetFocus
End Select

Exit Sub
Command2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_LostFocus of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()
     If Repindex = 13101 Then
            PrPoNo = 3
            prdate = ""
      End If
                RepFoot = ""
                Footer = ""
                    UserFooter1.Visible = True
                RepFoot = UserFooter1.SelectedStr
                'If prcount > 1 And prcount <= 4 Then
                    Call footer_ISSUE
                'End If
                Exit Sub
End Sub

Private Sub Command6_Click()
On Error GoTo Command6_Click_Error

If Repindex = 17 Then
    U = Format(DTPicker2.value, "yyyy-mm-dd")
    v = Format(DTPicker3.value, "yyyy-mm-dd")
    catcd = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
    mtype = Trim(Mid$(CmbRecType.Text, 1, InStr(CmbRecType.Text, "-") - 1))
    catcd = Trim(Mid$(Combo3.Text, 1, InStr(Combo3.Text, "-") - 1))
    Call FormivExcelRpt(CStr(U), CStr(v), CStr(catcd), CStr(mtype))
    
    'Call FormivExcel
End If
Select Case Repindex
Case 13
Call arrivalregister

End Select

Screen.MousePointer = 0

Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click_Error of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub FormivExcelRpt(month_value1 As String, month_value2 As String, Category As String, XType As String)

On Error GoTo mdlform3_Error

Dim Adjustment  As Double

     Dim bolLotType As Boolean
        Dim sCondition As String
        pagein = 0
        Adjustment = 0
        cont = 0
        f = FreeFile
        cnt = 0
        too = 0
        adjtot = 0
        Adjustment1 = 0
        Adjustm = 0
        monthmm = 0
        If XType = "ALL" Then bolTYPEAll = True Else bolTYPEAll = False
        If XType = "A" Then bolLotType = True Else bolLotType = False
        If bolLotType = True Then sCondition = "Lottype ='" & XType & "'" Else sCondition = "transferType ='" & XType & "'"
        
        Set rsa = New Recordset
        rsa.Open "select catname from rm_cat where catcd='" & Category & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            cat = rsa(0)
        Else
            cat = "ALL"
        End If
        
        date1 = Format(month_value1, "yyyy-mm-dd")
        date2 = Format(month_value2, "yyyy-mm-dd")
        On Error Resume Next
         DB.Execute "drop table formiv"
        DB.Execute "Create table Formiv (date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstran numeric(16),isstrantot numeric(15,3),isstotkg numeric(15,3),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3),rejbale numeric(12),REJKG NUMERIC(15,3),ADJBALE NUMERIC(15),adjkg numeric(15,3),adjtype char(1), salbale numeric(10),salborah numeric(10), saltot numeric(12), saltotkg numeric(15,3), isskgs numeric(20,3))"
        
        For dtCurrDate = CDate(month_value1) To CDate(month_value2)
         
                SqlStr = ""
                SqlStr = " SELECT CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
                SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
                SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBAL,0)) + SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBOR,0)) + SUM(ISNULL(A.JWBOR,0)) AS ISSBORAS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODKGS,0)) + SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.TRANSBAL,0)) as TranBal, SUM(ISNULL(A.TRANSBOR,0)) as TrabBoras, SUM(ISNULL(A.TRANSKGS,0)) as TransKgs, "
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.SALESBAL,0)) as SalBal, SUM(ISNULL(A.SALESBOR,0)) as SalBoras, SUM(ISNULL(A.SALESKGS,0)) as SalKgs, "
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) as REJKGS,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END as CLOBALES,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END as CLOBORAS,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END as CLOKGS "
                SqlStr = SqlStr + Chr(13) + " FROM ("
                SqlStr = SqlStr + Chr(13) + gStockStatement(CDate(dtCurrDate), CDate(dtCurrDate))
                SqlStr = SqlStr + Chr(13) + "  ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "'"
        
        
                If Trim(Category) <> "ALL" Then
                    If XType <> "ALL" Then
                        If XType = "A" Then
                            SqlStr = SqlStr & Chr(13) + "  and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                        Else
                            SqlStr = SqlStr & Chr(13) + "  and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                        End If
                    Else
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(Category) & "'"
                    End If
                Else
                    If XType <> "ALL" Then
                        If XType = "A" Then
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "'"
                        Else
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "'"
                        End If
                    Else
                      'ALL
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
                    End If
                End If
                
                
                Set Rs = New Recordset
                DB.CommandTimeout = 1000
                Rs.Open SqlStr, DB, adOpenStatic
        
                Set AdjRs = New Recordset
                AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt='" & Format(dtCurrDate, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' " & IIf(bolTYPEAll, " ", " and a." & sCondition) & " group by a.adjust) A group by adjust", DB, adOpenStatic
        
                If AdjRs.RecordCount > 0 Then
                    Do While Not AdjRs.EOF
                        If AdjRs("adjust") = "+" Then
                            Adjustment1 = Adjustment1 + AdjRs("ADJBALE")
                            Adjustment = Adjustment + AdjRs("ADJTOTKGS")
                        ElseIf AdjRs("adjust") = "-" Then
                            Adjustment1 = Adjustment1 - AdjRs("ADJBALE")
                            Adjustment = Adjustment - AdjRs("ADJTOTKGS")
                        End If
                        AdjRs.MoveNext
                    Loop
                Else
                   Adjustment = 0
                End If
                 
                TotalAdjust = TotalAdjust + Adjustment
                
                If Rs.EOF = False Then
                    sQry = ""
                    sQry = sQry & Chr(13) & " INSERT INTO Formiv (date1,Opbales, opborah, optot,optotkg,recbale,recborah,rectot,"
                    sQry = sQry & Chr(13) & " rectotkg,oprecbale,oprecborah,oprectot,oprectotkg,issbale, issboarh,isstot,isstran,"
                    sQry = sQry & Chr(13) & " isstrantot,isstotkg,rejbale,REJKG, salbale,salborah,saltot,saltotkg,ADJBALE,adjkg,"
                    sQry = sQry & Chr(13) & " adjtype,totbale,totborah,total,totkg,isskgs) Values "
                    sQry = sQry & Chr(13) & " ('" & Format(dtCurrDate, "YYYY/MM/DD") & "',"
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbORAS")), 0, Rs("opbORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("opbORAS")), 0, Rs("opbORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPKGS")), 0, Rs("OPKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RecKGS")), 0, Rs("RecKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPBORAS")), 0, Rs("OPBORAS")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("opboras")), 0, Rs("opboras")) + IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPKGS")), 0, Rs("OPKGS")) + IIf(IsNull(Rs("recKGS")), 0, Rs("recKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBALES")), 0, Rs("ISSBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBORAS")), 0, Rs("ISSBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBALES")), 0, Rs("ISSBALES")) + IIf(IsNull(Rs("ISSBORAS")), 0, Rs("ISSBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("TranBal")), 0, Rs("TranBal")) + IIf(IsNull(Rs("TrabBoras")), 0, Rs("TrabBoras")) & ","
                   sQry = sQry & Chr(13) & IIf(IsNull(Rs("transkgs")), 0, Rs("transkgs")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("TranBal")), 0, Rs("TranBal")) + IIf(IsNull(Rs("TrabBoras")), 0, Rs("TrabBoras")) & ","
                  ' sQry = sQry & Chr(13) & IIf(IsNull(Rs("transkgs")), 0, Rs("transkgs")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("REJBALES")), 0, Rs("REJBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("REJKGS")), 0, Rs("REJKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBal")), 0, Rs("salBal")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBoras")), 0, Rs("salBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBal")), 0, Rs("salBal")) & IIf(IsNull(Rs("salBoras")), 0, Rs("salBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("Salkgs")), 0, Rs("Salkgs")) & ",0," & Adjustment & ",'-',"
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBALES")), 0, Rs("CLOBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBoras")), 0, Rs("CLOBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBALES")), 0, Rs("CLOBALES")) + IIf(IsNull(Rs("CLOBoras")), 0, Rs("CLOBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOKGS")), 0, Rs("CLOKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("isskgs")), 0, Rs("isskgs")) & ")"
                    
                    DB.Execute sQry
                End If
         
        Next
         
        Dim temp6 As String
        MON = MonthName(MONTH(month_value1))
        temp6 = Format(month_value1, "YY")
        
        Dim strType As String
        Set RS2 = New Recordset
        RS2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,issbale as issbale,issboarh as issborah,isstot as isstotal,isskgs as isskgs,isstran,isstrantot,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing,REJBALE AS REJBALES,rejkg as rejectedkgs,ADJBALE AS ADJBALES,adjkg as adjustedkgs,adjtype,salbale as salbale,salborah as salborah,saltot as saltotal,saltotkg as salkgs from formiv  order by date1 ", DB, adOpenStatic
        RS2.MoveFirst
        
        For I = 1 To RS2.RecordCount
            
''            If RS2!saltotal > 0 Then strType = "Sales" Else strType = ""
''            If RS2("adjustedkgs") > 0 Then
''                 Print #f, Space(5) & Padr(Format(RS2(0), "dd-mm-yy"), 8, " "); Padl(INF(RS2("opkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("reckgs"), 3), 15, " "); Space(2); Padl(INF(RS2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(RS2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(RS2("isstrantot"), 3), 15, " ") & Space(6) & Padr(strType, 15, "") & Space(1) & Padl(INF(RS2("salkgs"), 3), 15, " ") & Space(1) & Padl(INF(RS2("adjustedkgs") & "(" & Padr(RS2("adjtype"), 1, " ") & ")", 3), 15, " "); Space(2); Padl(INF(RS2("closing"), 3), 15, " ")
''            Else
''                 Print #f, Space(5) & Padr(Format(RS2(0), "dd-mm-yy"), 8, " "); Padl(INF(RS2("opkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("reckgs"), 3), 15, " "); Space(2); Padl(INF(RS2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(RS2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(RS2("isstrantot"), 3), 15, " ") & Space(6) & Padr(strType, 15, "") & Space(1) & Padl(INF(RS2("salkgs"), 3), 15, " ") & Space(1) & Padl(INF(RS2("adjustedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("closing"), 3), 15, " ")
''            End If
            cnt = cnt + 1
  
          stot1 = stot1 + RS2("openbale")
          stot2 = stot2 + RS2("recpbale")
          stot3 = stot3 + RS2("oprebale")
          stot4 = stot4 + RS2("issbale")
          stot5 = stot5 + RS2("closbale")
          stot6 = stot6 + RS2("rectotal")
          stot7 = stot7 + RS2("isstran")
          stot8 = stot8 + RS2("REJBALES")
          stot9 = stot9 + RS2("ADJBALES")
          stot10 = stot10 + RS2("OPENBOARH")
          stot11 = stot11 + RS2("recpborah")
          stot12 = stot12 + RS2("issborah")
          stot13 = stot13 + RS2!salbale
          stot14 = stot14 + RS2!salborah

          stot15 = stot15 + RS2!salkgs

          RS2.MoveNext

        Next

        SqlStr = ""
        SqlStr = " SELECT CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBAL,0)) + SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBOR,0)) + SUM(ISNULL(A.JWBOR,0)) AS ISSBORAS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODKGS,0)) + SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.TRANSBAL,0)) as TranBal, SUM(ISNULL(A.TRANSBOR,0)) as TrabBoras, SUM(ISNULL(A.TRANSKGS,0)) as TransKgs, "
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.SALESBAL,0)) as SalBal, SUM(ISNULL(A.SALESBOR,0)) as SalBoras, SUM(ISNULL(A.SALESKGS,0)) as SalKgs, "
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) as REJKGS,"
        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END as CLOBALES,"
        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END as CLOBORAS,"
        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END as CLOKGS "
        SqlStr = SqlStr + Chr(13) + " FROM ("
        SqlStr = SqlStr + Chr(13) + gStockStatement(CDate(month_value1), CDate(month_value2))
        SqlStr = SqlStr + Chr(13) + "  ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND b.DIVCODE='" & Divcode & "'"


        If Trim(Category) <> "ALL" Then
            If XType <> "ALL" Then
                If XType = "A" Then
                    SqlStr = SqlStr & Chr(13) + "  and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                Else
                    SqlStr = SqlStr & Chr(13) + "  and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                End If
            Else
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(Category) & "'"
            End If
        Else
            If XType <> "ALL" Then
                If XType = "A" Then
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "'"
                Else
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "'"
                End If
            Else
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
            End If
        End If
        
        Set RecRs = New Recordset
        DB.CommandTimeout = 1200
        RecRs.Open SqlStr, DB, adOpenDynamic, adLockReadOnly
        
        If RecRs.EOF = False Then
            stot1 = RecRs("opbales")
            stot2 = RecRs("RECBALES")
            stot3 = RecRs("RECBALES") + RecRs("opbales")
            stot4 = RecRs("ISSBALES")
            stot5 = RecRs("clobaleS")
'            stot6 = RecRs("rectotal")
            stot7 = RecRs("TRANBAL")
            stot8 = RecRs("REJBALES")
            stot9 = 0
            stot10 = RecRs("OPBORAS")
            stot11 = RecRs("RECBORAS")
            stot12 = RecRs("ISSBORAS")
            stot13 = RecRs!salbal
            stot14 = RecRs!salboraS
            stot15 = RecRs!salkgs
        End If
        
        
        Set rs3 = New Recordset
        TOkg = openkgs + Receiptkg
        TOTBALES = stot3
        totborahs = stot10 + stot11
        

        stot10 = TOkg - (Consumption + Transfer + rejection + stot15) + (Adjustment)
        stot11 = TOTBALES - (stot4) - (stot13 + stot7 + stot8) + (stot9)
        stot12 = totborahs - stot12 - stot14


        'Dim ClsFormiv As New clsCrystal
        'Set ClsFormiv.cryRept = CryFormIV

        'ClsFormiv.CrystalPrint
        'Crr.Reset
        'Crr.DiscardSavedData = True
        'Crr.Connect = connectstring
        'Crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        'Dim STR As String
        
      
        opbale = stot1
        oPKGS = RecRs("OPKGS")
        Recbale = stot2
        reckgs = RecRs("RECKGS")
        consbale = stot4
        conskgs = RecRs("issKgs")
        totbale = TOTBALES
        totkgs = RecRs("OPKGS") + RecRs("RECKGS")
        TRFBALE = stot7
        trfkgs = RecRs("TRANSKGS")
        OTHBALE = stot13
        othkgs = RecRs("SALKGS")
        REJBALE = stot8
        rejkgs = RecRs("REJKGS")
        adjbale = stot9
        adjkgs = TotalAdjust
        clbale = stot11
        clkgs = RecRs("clokgs")
        'Crr.ParameterFields(0) = "@date1;" & Format(DTPicker3.value, "yyyy-MM-dd")
        'Crr.WindowShowPrintSetupBtn = True
        'Crr.WindowShowSearchBtn = True
        'Crr.WindowState = crptMaximized
        'SendKeys "{ENTER}"
        'Crr.Action = 1
        'Crr.PrinterCopies = 1
        'Screen.MousePointer = 0


Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
Dim FSort As String
Dim TSort As String
Dim PrvDt As String
CustCode = "": custname = "": ContNo = "": sortname = "": PrvDt = "":
intervalMinutes = -1

    
    
    tmpFile = "Details"
    tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
    
    'Create the Excel Application Object.
    '06-02-2020
    Set Myxl = New Excel.Application
    'Set Myxl = New ET.Application
    
    'Create new Excel Workbook
    Set XLBook = Myxl.Workbooks.ADD
    Set XLSheet = XLBook.Worksheets(1)
    Myxl.Worksheets(1).Name = "Details"
    
    ExcelBtn = "Excel"
        Set XLSheet = Myxl.ActiveSheet
 
        XLSheet.Range("Q:Q").NumberFormat = "#,##,##,##,###"
        XLSheet.Range("R:R").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("S:S").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("T:T").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("U:U").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("V:V").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("W:W").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("X:X").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("Y:Y").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("Z:Z").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("AA:AA").NumberFormat = "#,##,##,##,###.00#"
       
       'divcode = Trim(Mid$(DataCombo9.Text, 1, InStr(DataCombo9.Text, "-") - 1))
        Set Rs = New Recordset
        Rs.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE (divcode='" & Divcode & "') ", DB
               
        XLSheet.Cells(1, 5).value = Rs(0)
        XLSheet.Range("A1", "L1").MergeCells = True
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        'XLSheet.Cells(2, 5).value = Rs(1)
        'XLSheet.Range("A2", "AA2").MergeCells = True
        'With XLSheet.Range("A2").Font
        '.Bold = True
        '.Size = 9
        '.Color = vbBlue
        'End With
        
       
        XLSheet.Cells(2, 2).value = "ANNEXURE V. FORM IV (RULE   173  G.)"
        XLSheet.Range("A2", "L2").MergeCells = True
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        
        XLSheet.Cells(3, 2).value = "Account of Raw Material and Components"
        XLSheet.Range("A3", "L3").MergeCells = True
        With XLSheet.Range("A3").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
         End With
         
        XLSheet.Cells(4, 2).value = "Name & Address of Factory  : " & Rs(0) & " "
        XLSheet.Range("A4", "L4").MergeCells = True
        With XLSheet.Range("A4").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
         End With
        
        XLSheet.Cells(5, 2).value = "Descrption of Raw Materials/Components : " & Category & " "
        XLSheet.Range("A5", "L5").MergeCells = True
        With XLSheet.Range("A5").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
         End With
        
        

    
      
        Set rs4 = New Recordset
       
            rs4.Open "select  convert(varchar,date1,103) date1 ,optotkg opkgs,rectotkg reckgs,oprectotkg oprekgs,rejkg rejectedkgs,isskgs isskgsnew,isstrantot,adjtype,adjkg adjustedkgs,totkg closing from Formiv ", DB, adOpenStatic, adLockPessimistic
       
            
            If rs4.RecordCount > 0 Then
                          
                XLSheet.Cells(6, 1).value = "Date"
                XLSheet.Cells(6, 2).value = "Opening Balance"
                XLSheet.Cells(6, 3).value = "Quantity Recevied"
                XLSheet.Cells(6, 4).value = "Total"
                XLSheet.Cells(6, 5).value = "Quantity Rejected"
                XLSheet.Cells(6, 6).value = "Qty.Used In Manu. of Excisable Goods"
                XLSheet.Cells(6, 7).value = "Qty.Used In Manu. of Transfter"
                XLSheet.Cells(6, 8).value = "Qty. Other Dis. of Nature of the Disposal"
                XLSheet.Cells(6, 9).value = "Quantity"
                XLSheet.Cells(6, 10).value = "Closing Balance"
                XLSheet.Cells(6, 11).value = "Quantity of Excisible Goods Manufactured"
                XLSheet.Cells(6, 12).value = "Signature of the Assessee or  the Agent"
                
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "L" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit
                        
                
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                For I = 0 To rs4.RecordCount - 1
                m_ROW = XLSheet.UsedRange.Rows.Count
                
               
                'XLSheet.Cells(Max, 1) = "@"
                XLSheet.Cells(Max, 1) = Format(Trim((rs4.Fields("date1"))), "DD/MM/YYYY")
                
                If rs4.Fields("opkgs") > 0 Then
                XLSheet.Cells(Max, 2) = Format(IIf(IsNull(rs4.Fields("opkgs")), 0, rs4.Fields("opkgs")), "##,##,##,##,###.000")
                Else
                XLSheet.Cells(Max, 2) = ""
                End If
                If rs4.Fields("reckgs") > 0 Then
                XLSheet.Cells(Max, 3) = Format(IIf(IsNull(rs4.Fields("reckgs")), 0, rs4.Fields("reckgs")), "##,##,##,##,###.000")
                Else
                XLSheet.Cells(Max, 3) = ""
                End If
                If rs4.Fields("oprekgs") > 0 Then
                XLSheet.Cells(Max, 4) = Format(IIf(IsNull(rs4.Fields("oprekgs")), 0, rs4.Fields("oprekgs")), "##,##,##,##,###.000")
                Else
                XLSheet.Cells(Max, 4) = ""
                End If
                If rs4.Fields("rejectedkgs") > 0 Then
                XLSheet.Cells(Max, 5) = Format(IIf(IsNull(rs4.Fields("rejectedkgs")), 0, rs4.Fields("rejectedkgs")), "##,##,##,##,###.000")
                Else
                XLSheet.Cells(Max, 5) = ""
                End If
                If rs4.Fields("isskgsnew") > 0 Then
                XLSheet.Cells(Max, 6) = Format(IIf(IsNull(rs4.Fields("isskgsnew")), 0, rs4.Fields("isskgsnew")), "##,##,##,##,###.000")
                Else
                XLSheet.Cells(Max, 6) = ""
                End If
                If rs4.Fields("isstrantot") > 0 Then
                XLSheet.Cells(Max, 7) = Format(IIf(IsNull(rs4.Fields("isstrantot")), 0, rs4.Fields("isstrantot")), "##,##,##,##,###.000")
                Else
                XLSheet.Cells(Max, 7) = ""
                End If
                If rs4.Fields("adjtype") > 0 Then
                XLSheet.Cells(Max, 8) = Format(IIf(IsNull(rs4.Fields("adjtype")), 0, rs4.Fields("adjtype")), "##,##,##,##,###.000")
                Else
                XLSheet.Cells(Max, 8) = ""
                End If
                If rs4.Fields("adjustedkgs") > 0 Then
                XLSheet.Cells(Max, 9) = Format(IIf(IsNull(rs4.Fields("adjustedkgs")), 0, rs4.Fields("adjustedkgs")), "##,##,##,##,###.000")
                Else
                XLSheet.Cells(Max, 9) = ""
                End If
                If rs4.Fields("closing") > 0 Then
                XLSheet.Cells(Max, 10) = Format(IIf(IsNull(rs4.Fields("closing")), 0, rs4.Fields("closing")), "##,##,##,##,###.000")
                Else
                XLSheet.Cells(Max, 10) = ""
                End If
                
                'XLSheet.Cells(Max, 12) = Format(IIf(IsNull(Rs.Fields("qty")), 0, Rs.Fields("qty")), "##,##,##,##,###")
                
                            
             

                rs4.MoveNext
                Max = Max + 1
                
                Next I
             
             Max = Max + 2
             XLSheet.Cells(Max, 5) = ""
             XLSheet.Cells(Max, 6) = "BALES"
             XLSheet.Cells(Max, 7) = "Kgs."
           
         
             Max = Max + 1
             XLSheet.Cells(Max, 5) = "Opeing Stock"
             If opbale > 0 Then
             XLSheet.Cells(Max, 6) = Format(IIf(IsNull(opbale), 0, opbale), "##,##,##,##,###")
             Else
             XLSheet.Cells(Max, 6) = ""
             End If
             
             If oPKGS > 0 Then
             XLSheet.Cells(Max, 7) = Format(IIf(IsNull(oPKGS), 0, oPKGS), "##,##,##,##,###.000")
             Else
             XLSheet.Cells(Max, 7) = ""
             End If
         
             
             Max = Max + 1
             XLSheet.Cells(Max, 5) = "Receipts"
             If Recbale > 0 Then
             XLSheet.Cells(Max, 6) = Format(IIf(IsNull(Recbale), 0, Recbale), "##,##,##,##,###")
             Else
             XLSheet.Cells(Max, 6) = ""
             End If
             If reckgs > 0 Then
             XLSheet.Cells(Max, 7) = Format(IIf(IsNull(reckgs), 0, reckgs), "##,##,##,##,###.000")
             Else
             XLSheet.Cells(Max, 7) = ""
             End If
           
             
             Max = Max + 1
             XLSheet.Cells(Max, 5) = "Total"
             If totbale > 0 Then
             XLSheet.Cells(Max, 6) = Format(IIf(IsNull(totbale), 0, totbale), "##,##,##,##,###")
             Else
             XLSheet.Cells(Max, 6) = ""
             End If
             If totkgs > 0 Then
             XLSheet.Cells(Max, 7) = Format(IIf(IsNull(totkgs), 0, totkgs), "##,##,##,##,###.000")
             Else
             XLSheet.Cells(Max, 7) = ""
             End If
           
                          Max = Max + 1
             XLSheet.Cells(Max, 5) = "Consumption"
             If consbale > 0 Then
             XLSheet.Cells(Max, 6) = Format(IIf(IsNull(consbale), 0, consbale), "##,##,##,##,###")
             Else
             XLSheet.Cells(Max, 6) = ""
             End If
             If conskgs > 0 Then
             XLSheet.Cells(Max, 7) = Format(IIf(IsNull(conskgs), 0, conskgs), "##,##,##,##,###.000")
             Else
             XLSheet.Cells(Max, 7) = ""
             End If
            
                          Max = Max + 1
             XLSheet.Cells(Max, 5) = "Transfer"
             If TRFBALE > 0 Then
             XLSheet.Cells(Max, 6) = Format(IIf(IsNull(TRFBALE), 0, TRFBALE), "##,##,##,##,###")
             Else
             XLSheet.Cells(Max, 6) = ""
             End If
             If trfkgs > 0 Then
             XLSheet.Cells(Max, 7) = Format(IIf(IsNull(trfkgs), 0, trfkgs), "##,##,##,##,###.000")
             Else
             XLSheet.Cells(Max, 7) = ""
             End If
            
             
                          Max = Max + 1
             XLSheet.Cells(Max, 5) = "Others"
             If OTHBALE > 0 Then
             XLSheet.Cells(Max, 6) = Format(IIf(IsNull(OTHBALE), 0, OTHBALE), "##,##,##,##,###")
             Else
             XLSheet.Cells(Max, 6) = ""
             End If
             If othkgs > 0 Then
             XLSheet.Cells(Max, 7) = Format(IIf(IsNull(othkgs), 0, othkgs), "##,##,##,##,###.000")
             Else
             XLSheet.Cells(Max, 7) = ""
             End If
             
                          Max = Max + 1
             XLSheet.Cells(Max, 5) = "Rejected"
             If REJBALE > 0 Then
             XLSheet.Cells(Max, 6) = Format(IIf(IsNull(REJBALE), 0, REJBALE), "##,##,##,##,###")
             Else
             XLSheet.Cells(Max, 6) = ""
             End If
             If rejkgs > 0 Then
             XLSheet.Cells(Max, 7) = Format(IIf(IsNull(rejkgs), 0, rejkgs), "##,##,##,##,###.000")
             Else
             XLSheet.Cells(Max, 7) = ""
             End If
             
                          Max = Max + 1
             XLSheet.Cells(Max, 5) = "Adjustmet"
             
             If adjbale > 0 Then
             XLSheet.Cells(Max, 6) = Format(IIf(IsNull(adjbale), 0, adjbale), "##,##,##,##,###")
             Else
             XLSheet.Cells(Max, 6) = ""
             End If
             
             If adjkgs > 0 Then
             XLSheet.Cells(Max, 7) = Format(IIf(IsNull(adjkgs), 0, adjkgs), "##,##,##,##,###.000")
            Else
            XLSheet.Cells(Max, 7) = ""
            End If
                          Max = Max + 1
             XLSheet.Cells(Max, 5) = "Balance"
             If clbale > 0 Then
             XLSheet.Cells(Max, 6) = Format(IIf(IsNull(clbale), 0, clbale), "##,##,##,##,###")
             Else
             XLSheet.Cells(Max, 6) = ""
             End If
             If clkgs > 0 Then
             XLSheet.Cells(Max, 7) = Format(IIf(IsNull(clkgs), 0, clkgs), "##,##,##,##,###.000")
             Else
             XLSheet.Cells(Max, 7) = ""
             End If
            
             
             
             
             
             
             
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
             
                                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m
                HR = "L" & m_ROW
                
                With XLSheet.Range(lr, HR)
                    .Borders.LineStyle = xlThin
                    .Font.Size = 9
                With .Borders(xlInsideHorizontal)
                    .LineStyle = xlContinuous
                    .Weight = xlThin
                    .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                    .LineStyle = xlContinuous
                    .Weight = xlThin
                    .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                    .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                    .Weight = xlThin
                End With
                End With
                
                Glr = "A" & m_ROW
                GHR = "L" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 9
                        .Font.Color = black
                        .Font.Bold = False
                End With
                    
                Myxl.Application.Visible = True
                
                Set XLSheet = Nothing
                Set Myxl = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
                Else
                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus


                Exit Sub
            End If




  
        


Exit Sub
mdlform3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mdlform3 of Form repform", vbInformation, head

Screen.MousePointer = 0
End Sub



Private Sub FormivExcel()
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
Dim FSort As String
Dim TSort As String
Dim PrvDt As String
CustCode = "": custname = "": ContNo = "": sortname = "": PrvDt = "":
intervalMinutes = -1

    
    
    tmpFile = "Details"
    tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
    
    'Create the Excel Application Object.
    '06-02-2020
    Set Myxl = New Excel.Application
    'Set Myxl = New ET.Application
    
    'Create new Excel Workbook
    Set XLBook = Myxl.Workbooks.ADD
    Set XLSheet = XLBook.Worksheets(1)
    Myxl.Worksheets(1).Name = "Details"
    
    ExcelBtn = "Excel"
        Set XLSheet = Myxl.ActiveSheet
 
        
        
        fd = Format(DTPicker1.value, "yyyy-mm-dd")
        td = Format(DTPicker2.value, "yyyy-mm-dd")
        
'
        XLSheet.Range("Q:Q").NumberFormat = "#,##,##,##,###"
        XLSheet.Range("R:R").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("S:S").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("T:T").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("U:U").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("V:V").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("W:W").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("X:X").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("Y:Y").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("Z:Z").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("AA:AA").NumberFormat = "#,##,##,##,###.00#"
      
       ' divcode = Trim(Mid$(DataCombo9.Text, 1, InStr(DataCombo9.Text, "-") - 1))
        
        Set Rs = New Recordset
        Rs.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE (divcode='" & Divcode & "') ", DB
        
       
        XLSheet.Cells(1, 5).value = Rs(0)
        XLSheet.Range("A1", "AA1").MergeCells = True
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        XLSheet.Cells(2, 5).value = Rs(1)
        XLSheet.Range("A2", "AA2").MergeCells = True
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
        

        XLSheet.Cells(3, 2).value = "Purchase Day Book Report FROM " & Format(DTPicker1.value, "DD/MM/YY") & " TO " & Format(DTPicker2.value, "DD/MM/YY")

        XLSheet.Range("A3", "AA3").MergeCells = True
        With XLSheet.Range("A3", "AA3").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
                
        fdt = Format(DTPicker1.value, "yyyy-mm-dd")
        Tdt = Format(DTPicker2.value, "yyyy-mm-dd")
             
        
        Set Rs = New Recordset
       
            Rs.Open "Exec Ksp_RMI_Purchasedaybooklist '" & Divcode & "' ,'" & fdt & "','" & Tdt & "'", DB, adOpenStatic, adLockPessimistic
       
            
            If Rs.RecordCount > 0 Then
                
                XLSheet.Cells(4, 1).value = "S.No"
                XLSheet.Cells(4, 2).value = "Voc.No."
                XLSheet.Cells(4, 3).value = "Voc.Date"
                XLSheet.Cells(4, 4).value = "PO.No."
                XLSheet.Cells(4, 5).value = "PO.Date"
                XLSheet.Cells(4, 6).value = "Inv.No."
                XLSheet.Cells(4, 7).value = "Inv.Date"
                XLSheet.Cells(4, 8).value = "Arrival No."
                XLSheet.Cells(4, 9).value = "Arr.Date"
                XLSheet.Cells(4, 10).value = "Lot No."
                XLSheet.Cells(4, 11).value = "Supp.Lot No."
                XLSheet.Cells(4, 12).value = "BOE No."
                XLSheet.Cells(4, 13).value = "BOE Date "
                XLSheet.Cells(4, 14).value = "Supplier Name"
                XLSheet.Cells(4, 15).value = "Variety"
                XLSheet.Cells(4, 16).value = "TP"
                XLSheet.Cells(4, 17).value = "Qty in Bales"
                XLSheet.Cells(4, 18).value = "Commerical Wt."
                XLSheet.Cells(4, 19).value = "Gross Wt."
                XLSheet.Cells(4, 20).value = "Net wt in Kgs."
                XLSheet.Cells(4, 21).value = "Basic Value"
                XLSheet.Cells(4, 22).value = "Other Amt."
                XLSheet.Cells(4, 23).value = "Disc."
                XLSheet.Cells(4, 24).value = "CGST Amount"
                XLSheet.Cells(4, 25).value = "SGST Amount"
                XLSheet.Cells(4, 26).value = "IGST Amount"
                XLSheet.Cells(4, 27).value = "C Amount"
              '  XLSheet.Cells(8, 25).value = "ERROR"
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "AA" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit
                        
                
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                For I = 0 To Rs.RecordCount - 1
                m_ROW = XLSheet.UsedRange.Rows.Count
                
               
                
                XLSheet.Cells(Max, 1) = I + 1
                XLSheet.Cells(Max, 2) = Trim(Rs.Fields("vno"))
                XLSheet.Cells(Max, 3) = Format(Trim((Rs.Fields("vdate"))), "DD-MM-YYYY")
                XLSheet.Cells(Max, 4) = Trim(Rs.Fields("pono"))
                XLSheet.Cells(Max, 5) = Format(Trim((Rs.Fields("podt"))), "DD-MM-YYYY")
                XLSheet.Cells(Max, 6) = Trim(Rs.Fields("inv"))
                XLSheet.Cells(Max, 7) = Format(Trim((Rs.Fields("inv_dt"))), "DD-MM-YYYY")
                XLSheet.Cells(Max, 8) = Trim(Rs.Fields("ARRNO"))
                XLSheet.Cells(Max, 9) = Format(Trim((Rs.Fields("ARRDATE"))), "DD-MM-YYYY")
                XLSheet.Cells(Max, 10) = Trim(Rs.Fields("LOTNO"))
                XLSheet.Cells(Max, 11) = Trim(Rs.Fields("supplotno"))
                XLSheet.Cells(Max, 12) = Trim(Rs.Fields("BENO"))
                XLSheet.Cells(Max, 13) = Format(Trim((Rs.Fields("BEDT"))), "DD-MM-YYYY")
                XLSheet.Cells(Max, 14) = Trim(Rs.Fields("slname"))
                XLSheet.Cells(Max, 15) = Trim(Rs.Fields("vac"))
                XLSheet.Cells(Max, 16) = Trim(Rs.Fields("tp"))
                XLSheet.Cells(Max, 17) = Format(IIf(IsNull(Rs.Fields("qty")), 0, Rs.Fields("qty")), "##,##,##,##,###")
                Quantity = Quantity + Rs.Fields("qty")
                
                
                XLSheet.Cells(Max, 18) = Format(IIf(IsNull(Rs.Fields("COMMWT")), 0, Rs.Fields("COMMWT")), "##,##,##,##,###.000")
                CommWt = CommWt + Rs.Fields("COMMWT")
                
                XLSheet.Cells(Max, 19) = Format(IIf(IsNull(Rs.Fields("GROSSWT")), 0, Rs.Fields("GROSSWT")), "##,##,##,##,###.000")
                GrossWt = GrossWt + Rs.Fields("GROSSWT")
                
                XLSheet.Cells(Max, 20) = Format(IIf(IsNull(Rs.Fields("qtl")), 0, Rs.Fields("qtl")), "##,##,##,##,###.000")
                netwt = netwt + Rs.Fields("qtl")
              
                XLSheet.Cells(Max, 21) = Format(IIf(IsNull(Rs.Fields("basic_val")), 0, Rs.Fields("basic_val")), "##,##,##,##,###.00")
                BasicValue = BasicValue + Rs.Fields("basic_val")
                     
                XLSheet.Cells(Max, 22) = Format(IIf(IsNull(Rs.Fields("OTHERSAMT")), 0, Rs.Fields("OTHERSAMT")), "##,##,##,##,###.00")
                OtherAmt = OtherAmt + Rs.Fields("OTHERSAMT")
                
                XLSheet.Cells(Max, 23) = Format(IIf(IsNull(Rs.Fields("discount")), 0, Rs.Fields("discount")), "##,##,##,##,###.00")
                DISAMT = DISAMT + Rs.Fields("discount")
                                  
                XLSheet.Cells(Max, 24) = Format(IIf(IsNull(Rs.Fields("cgstamt")), 0, Rs.Fields("cgstamt")), "##,##,##,##,###.00")
                CGSTAMT = CGSTAMT + Rs.Fields("cgstamt")
                                           
                XLSheet.Cells(Max, 25) = Format(IIf(IsNull(Rs.Fields("sgstamt")), 0#, Rs.Fields("sgstamt")), "##,##,##,##,###.00")
                SGSTAMT = SGSTAMT + Rs.Fields("sgstamt")
                
                XLSheet.Cells(Max, 26) = Format(IIf(IsNull(Rs.Fields("igstamt")), 0, Rs.Fields("igstamt")), "##,##,##,##,###.00")
                IGSTAMT = IGSTAMT + Rs.Fields("igstamt")
             
                
                XLSheet.Cells(Max, 27) = Format(IIf(IsNull(Rs.Fields("camt")), 0, Rs.Fields("camt")), "##,##,##,##,###.00")
                Camt = Camt + Rs.Fields("camt")
             

                Rs.MoveNext
                Max = Max + 1
                
                Next I
            
               
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "AA" & m_ROW
                    XLSheet.Cells(m_ROW + 3, 17).Formula = Format(Quantity, "##,##,##,##,###")
                    XLSheet.Cells(m_ROW + 3, 18).Formula = Format(CommWt, "##,##,##,##,###.###")
                    XLSheet.Cells(m_ROW + 3, 19).Formula = Format(GrossWt, "##,##,##,##,###.###")
                    XLSheet.Cells(m_ROW + 3, 20).Formula = Format(netwt, "##,##,##,##,###.###")
                    XLSheet.Cells(m_ROW + 3, 21).Formula = Format(BasicValue, "##,##,##,##,###.##")
                    XLSheet.Cells(m_ROW + 3, 22).Formula = Format(OtherAmt, "##,##,##,##,###.##")
'                    XLSheet.Cells(m_ROW + 3, 12).Formula = "=SUM(L" & STmaxRowStart & ":L" & STmaxRowEnd & ")"
                    XLSheet.Cells(m_ROW + 3, 23).Formula = Format(DISAMT, "##,##,##,##,###.##")
                   
                    XLSheet.Cells(m_ROW + 3, 24).Formula = Format(CGSTAMT, "##,##,##,##,###.##")
                    
                    XLSheet.Cells(m_ROW + 3, 25).Formula = Format(SGSTAMT, "##,##,##,##,###.##")
                   
                    XLSheet.Cells(m_ROW + 3, 26).Formula = Format(IGSTAMT, "##,##,##,##,###.##")
                    XLSheet.Cells(m_ROW + 3, 27).Formula = Format(Camt, "##,##,##,##,###.##")
          

                XLSheet.Cells(m_ROW + 3, 6) = "Grand Total"
                                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m
                HR = "AA" & m_ROW
                
                With XLSheet.Range(lr, HR)
                    .Borders.LineStyle = xlThin
                    .Font.Size = 9
                With .Borders(xlInsideHorizontal)
                    .LineStyle = xlContinuous
                    .Weight = xlThin
                    .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                    .LineStyle = xlContinuous
                    .Weight = xlThin
                    .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                    .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                    .Weight = xlThin
                End With
                End With
                
                Glr = "A" & m_ROW
                GHR = "AA" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                    
                Myxl.Application.Visible = True
                
                Set XLSheet = Nothing
                Set Myxl = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
                Else
                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                Exit Sub
            End If


End Sub



Private Sub DataCombo1_GotFocus()
On Error GoTo DataCombo1_GotFocus_Error

Screen.MousePointer = 11
Select Case Repindex
Case 100
    DataCombo2.Text = ""
    DataCombo2.ListField = ""
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker3.ZOrder
    Set Cnn = New Connection
    Cnn.Provider = "MSDATASHAPE"
    Cnn.Open connectstring
    Set rs1 = New Recordset
    rs1.Open "select distinct docdt ""dt"" from rm_wissue where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isstype='S' ", Cnn, adOpenStatic
    If rs1.RecordCount <> 0 Then
        Set DataCombo1.RowSource = rs1
        DataCombo1.ListField = "dt"
        If Not rs1.BOF Then
            rs1.MoveFirst
            'DataCombo1.Text = RS1(0)
            DTPicker2.value = rs1(0)
        End If
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    If rs1.RecordCount <> 0 Then
        Set DataCombo2.RowSource = rs1
        DataCombo2.ListField = "dt"
        If Not rs1.EOF Then
            rs1.MoveLast
            'DataCombo2.Text = RS1(0)
            DTPicker3.value = rs1(0)
        End If
    End If

Case 1001

    DataCombo2.Text = ""
    DataCombo2.ListField = ""

    Set Cnn = New Connection
    Cnn.Provider = "MSDATASHAPE"
    Cnn.Open connectstring
    Set rs1 = New Recordset
    rs1.Open "select distinct prod_date ""dt"" from ig_rpacknos where prod_date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", Cnn, adOpenStatic
        
    If rs1.RecordCount <> 0 Then
        Set DataCombo1.RowSource = rs1
        DataCombo1.ListField = "dt"
        If Not rs1.BOF Then
            rs1.MoveFirst
            DataCombo1.Text = rs1(0)
        End If
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    If rs1.RecordCount <> 0 Then
        Set DataCombo2.RowSource = rs1
        DataCombo2.ListField = "dt"
        If Not rs1.EOF Then
            rs1.MoveLast
            DataCombo2.Text = rs1(0)
        End If
    End If

Case 150
    DataCombo2.Text = ""
    DataCombo2.ListField = ""

    Set Cnn = New Connection
    Cnn.Provider = "MSDATASHAPE"
    Cnn.Open connectstring
    Set rs1 = New Recordset
    ''RS1.Open "select distinct docdt ""dt"" from rm_wissue where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isstype='R' ", cnn, adOpenStatic
    rs1.Open "select distinct date ""dt"" from ig_rbohd where divcode='" & Divcode & "' and  date  between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by date", Cnn, adOpenStatic
       
       
    If rs1.RecordCount <> 0 Then
        Set DataCombo1.RowSource = rs1
        DataCombo1.ListField = "dt"
        If Not rs1.BOF Then
            rs1.MoveLast
            DataCombo1.Text = rs1(0)
        End If
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    If rs1.RecordCount <> 0 Then
        Set DataCombo2.RowSource = rs1
        DataCombo2.ListField = "dt"
        If Not rs1.EOF Then
            rs1.MoveLast
            DataCombo2.Text = rs1(0)
        End If
    End If


Case 101
    DataCombo2.Text = ""
    DataCombo2.ListField = ""


    Set Cnn = New Connection
    Cnn.Provider = "MSDATASHAPE"
    Cnn.Open connectstring


Case 16
    DataCombo2.Text = ""
    DataCombo2.ListField = ""

    Set Rs = New Recordset
    Rs.Open "select distinct arrdt from rm_lot where arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' order by arrdt", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "arrdt"
        If Not Rs.BOF Then
            Rs.MoveFirst
            'DataCombo1.Text = RS(0)
            DTPicker2.value = mfdate
        End If
    End If
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "arrdt"
        If Not Rs.EOF Then
            Rs.MoveLast
            'DataCombo2.Text = RS(0)
            DTPicker3.value = pdate
        End If
    End If

Case 14     'SalesIssue Customerwise
    
    DataCombo2.Text = ""
    DataCombo2.ListField = ""
Case 15
    DataCombo2.Text = ""
    DataCombo2.ListField = ""
DTPicker2.Visible = True
    Set Rs = New Recordset
    Rs.Open "select distinct a.docdt from rm_issh a,rm_issb b where a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and a.divcode='" & Divcode & "'  and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and a.isstype in ('T','J')", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "docdt"
        If Not Rs.BOF Then
            Rs.MoveFirst
            'DataCombo1.Text = RS(0)
            DTPicker2.value = pdate
        End If
    End If
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "docdt"
        If Not Rs.EOF Then
            Rs.MoveLast
            'DataCombo2.Text = RS(0)
            DTPicker3.value = pdate
        End If
    End If

End Select
Screen.MousePointer = 0

Exit Sub
DataCombo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo1_GotFocus of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub datacombo1_LostFocus()
On Error GoTo datacombo1_LostFocus_Error

Select Case Repindex
Case 6
    If DataCombo1.Text <> "" Then
        code = Trim(Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "-") - 1))
    End If
End Select

Exit Sub
datacombo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure datacombo1_LostFocus of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DataCombo13_GotFocus()
On Error GoTo DataCombo13_GotFocus_Error

Select Case Repindex
Case 11, 12
    Set Rs = New Recordset
    Rs.Open "select distinct arrdate from rm_arrival where arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        DataCombo1.Refresh
        DataCombo2.Refresh
        
        Set DataCombo13.RowSource = Rs
        DataCombo13.ListField = "arrdate"
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "arrdate"
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "arrdate"

        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo13.Text = Rs(0)
            DataCombo1.Text = Rs(0)
            Rs.MoveLast
            DataCombo2.Text = Rs(0)
            
        End If
    End If
Case 25
    Set Rs = New Recordset
    Rs.Open "select distinct contdt from rm_cont where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo13.RowSource = Rs
        DataCombo13.ListField = "contdt"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo13.Text = Rs(0)
        End If
    End If
    
End Select

Exit Sub
DataCombo13_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo13_GotFocus of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub DTPicker1_Change()
'Combo1.Text = DTPicker1.Value
On Error GoTo DTPicker1_Change_Error

DTPicker1.maxdate = pdate

    If DTPicker1.value < yfdate Then
        MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "'", vbInformation, head
        DTPicker1.value = yfdate
        Exit Sub
    ElseIf DTPicker1.value > pdate Then
        MsgBox "Date Should Be Less Than or Equal to " & pdate & "'", vbInformation, head
        DTPicker1.value = pdate
        Exit Sub
    End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form repform", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub DTPicker2_CallbackKeyDown(ByVal KeyCode As Integer, ByVal Shift As Integer, ByVal CallbackField As String, CallbackDate As Date)
'Combo2.Text = DTPicker2.Value
On Error GoTo DTPicker2_CallbackKeyDown_Error

    

Exit Sub
DTPicker2_CallbackKeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_CallbackKeyDown of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_Change()
On Error GoTo DTPicker2_Change_Error

DTPicker2.maxdate = pdate
If DTPicker2.value < yfdate Then
 MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "'", vbInformation, head
        DTPicker2.value = yfdate
         DataCombo2.Text = DTPicker2.value
        Exit Sub

 ElseIf DTPicker1.value > pdate Then
        MsgBox "Date Should Be Less Than or Equal to " & pdate & "'", vbInformation, head
        DTPicker1.value = pdate
        DataCombo2.Text = DTPicker2.value
        Exit Sub
    
End If

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form repform", vbInformation, head
Screen.MousePointer = 0

End Sub



Private Sub DTPicker3_Change()
On Error GoTo DTPicker3_Change_Error

DTPicker3.maxdate = pdate
If DTPicker3.value < yfdate Then
MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "'", vbInformation, head
    DTPicker3.value = yfdate
    DataCombo1.Text = DTPicker3.value
ElseIf DTPicker1.value > pdate Then
        MsgBox "Date Should Be Less Than or Equal to " & pdate & "'", vbInformation, head
        DTPicker1.value = pdate
    DataCombo1.Text = DTPicker3.value
End If
If Repindex = 13101 Then
 Set temprs = New Recordset
           ' added on
            temprs.Open "SELECT isnull(A.cntcd,'') cntcd,isnull(B.cntname,'') cntname  FROM rm_issh A LEFT JOIN RM_COUNT B ON B.Divcode=A.DIVCODE AND B.cntcd=A.cntcd AND B.mixgrpcd=A.MIXGRP WHERE A.docdt BETWEEN '" & Format(DTPicker3.value, "yyyy-mm-dd") & "' and  DateAdd(d, -1, DateAdd(m, 1, '" & Format(DTPicker3.value, "yyyy-mm-dd") & "')) and A.divcode='" & Divcode & "'  AND A.cntcd<>'NULL'  GROUP BY A.cntcd,B.cntname order by a.cntcd ", DB, adOpenStatic, adLockReadOnly
            
            Lv_PType.ListItems.Clear

'            Dim li As ListItem
  
            
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set l11 = Lv_PType.ListItems.ADD(, , temprs("cntname"))
                    Lv_PType.ListItems(Lv_PType.ListItems.Count).ListSubItems.ADD , , temprs("cntcd")
                    temprs.MoveNext
                Loop
            End If
            temprs.Close

End If
Exit Sub
DTPicker3_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker3_Change of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
Call openconnection
DTPicker1.MinDate = yfdate
DTPicker1.value = mfdate
DTPicker2.MinDate = yfdate
DTPicker2.value = pdate
DTPicker3.MinDate = yfdate
DTPicker3.value = pdate
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter

Select Case Repindex
Case 1005 'cotton sales vat report
    Frame1.Visible = False
    Frame5.Visible = False
    Frame4.Visible = True
    SSTab1.Visible = False
    Frame4.ZOrder
    Label10.Visible = True
    Me.Label12.Visible = False
    Me.Label13.Visible = False
    Me.Label11.Visible = False
    Me.DataCombo8.Visible = False
    Me.Combo5.Visible = False
    Me.DataCombo7.Visible = False
    Frame4.Height = 1200
    SSTab2.Height = 1350
    Me.Command1.Top = 3500
    Me.Command2.Top = 3500
    Label9.Caption = "VAT Report - Raw Material Sales "
    Me.Caption = "VAT Report - Raw Material Sales "
    Command3.Visible = True
    Command3.Top = Command1.Top
    monthadd1
    
Case 1190 ' vat report
    Frame6.Visible = True
    Label8.Visible = True
    Frame1.Visible = False
    Frame5.Visible = False
    Frame4.Visible = True
    SSTab1.Visible = False
    optAbstract.value = True
    Frame4.ZOrder
    DataCombo7.Visible = False
    DataCombo8.Visible = True
    Combo5.Visible = True
    Label10.Visible = True
    Label11.Visible = False
    Label12.Visible = True
    Label13.Visible = True
    Label9.Caption = "Monthly TN VAT CST Report "
    Me.Caption = "Monthly TN VAT / CST Report "
    monthadd1
    Command3.Visible = True
    Set Rs = New Recordset
    Rs.Open "select distinct vcatdesc + ' - ' +  vcatcode AS cat,vcatCODE from in_vcat order by vcatcode", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        Set DataCombo7.RowSource = Rs
        DataCombo7.ListField = "cat"
        Rs.MoveFirst
        DataCombo7.Text = Rs(0).value
    End If
    
    Set Rs = New Recordset
    Rs.Open "select distinct Tax_Per  From In_Trntail where tax_per is not null and tax_per <> 0 order by Tax_per", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        Set DataCombo8.RowSource = Rs
        DataCombo8.ListField = "Tax_Per"
        Rs.MoveFirst
        DataCombo8.Text = ""
    End If
    
    Combo5.AddItem "All"
    Combo5.AddItem "Within State"
    Combo5.AddItem "Other State"
    Combo5.ListIndex = 0
    
    
Case 19112
    Label6.Caption = "Transfer Issue - Datewise"
    Me.Caption = "Datewise Transfer Issue"
    Frame1.Visible = True
    Frame1.ZOrder
    Frame3.Visible = False
    'Command3.Visible = True
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker1.ZOrder
    DTPicker3.ZOrder
    DTPicker2.tabIndex = 0
    DTPicker3.tabIndex = 1
    Combo3.tabIndex = 2
    Command1.tabIndex = 3
    Command2.tabIndex = 4
    DTPicker2.value = mfdate
    DTPicker3.value = pdate
    Label4.Visible = True
    Combo3.Visible = True
    Set rec = New Recordset
    rec.Open "select  issue_code + '-'+ issue_desc as type from rm_issuetype where isstype in ('T','J') union select DISTINCT 'A -ALL' AS TYPE FROM RM_ISSUETYPE ", cn, adOpenStatic, adLockBatchOptimistic
    
    If rec.RecordCount = 0 Then
      MsgBox "No Record(s) Found", vbInformation, head
      Exit Sub
    End If
    
    rec.MoveFirst
    
    Do While Not rec.EOF
     Combo3.AddItem rec!Type
     Combo3.Text = rec!Type
     rec.MoveNext
    Loop
    Combo3.ListIndex = 0
    Call DataCombo1_GotFocus

Case 65
       Label17.Caption = "Details Of Cotton Stock as on"
       Frame3.Visible = True
       DTPicker1.Visible = True
       DTPicker1.ZOrder
Case 1001
       Label6.Caption = "Waste Arrival List"
       Me.Caption = "Waste Arrival List"
       Frame1.Visible = True
       Frame1.ZOrder
    ''''''''''''''''''''''
     DTPicker3.Visible = True
     DTPicker3.ZOrder
     DTPicker3.MinDate = yfdate
     DTPicker3.Refresh
     DTPicker3.maxdate = pdate
     DTPicker3.value = mfdate
     DTPicker3.Left = DataCombo1.Left
     DTPicker3.Width = DataCombo1.Width
     DTPicker3.Top = DataCombo1.Top
     DTPicker3.Height = DataCombo1.Height

     DTPicker2.Visible = True
     DTPicker2.ZOrder
     DTPicker2.MinDate = yfdate
     DTPicker2.Refresh
     DTPicker2.maxdate = pdate
     DTPicker2.value = pdate
     DTPicker2.Left = DataCombo2.Left
     DTPicker2.Width = DataCombo2.Width
     DTPicker2.Top = DataCombo2.Top
     DTPicker2.Height = DataCombo2.Height
     Frame1.Height = Frame1.Height - 400
     SSTab1.Height = SSTab1.Height - 400
    ''''''''''''''''''''''
    DTPicker3.tabIndex = 0
    DTPicker2.tabIndex = 1
    Command1.tabIndex = 2
    Command2.tabIndex = 3
    

Case 100
       Label6.Caption = "Waste Issues For Sales"
       Me.Caption = "Waste Issues For Sales"
       Frame1.Visible = True
       Frame1.ZOrder
       
       ''''''''''''''''''''''
     DTPicker3.Visible = True
     DTPicker3.ZOrder
     DTPicker3.MinDate = yfdate
     DTPicker3.Refresh
     DTPicker3.maxdate = pdate
     DTPicker3.value = pdate
     DTPicker3.Left = DataCombo1.Left
     DTPicker3.Width = DataCombo1.Width
     DTPicker3.Top = DataCombo1.Top
     DTPicker3.Height = DataCombo1.Height

     DTPicker2.Visible = True
     DTPicker2.ZOrder
     DTPicker2.MinDate = yfdate
     DTPicker2.Refresh
     DTPicker2.maxdate = pdate
     DTPicker2.value = pdate
     DTPicker2.Left = DataCombo2.Left
     DTPicker2.Width = DataCombo2.Width
     DTPicker2.Top = DataCombo2.Top
     DTPicker2.Height = DataCombo2.Height
    ''''''''''''''''''''''
       
Case 150
       Label6.Caption = "Waste Issues For ReUse"
       Me.Caption = "Waste Issues For ReUse"
       Frame1.Visible = True
       Frame1.ZOrder
       
       Label4.Caption = "IssueType"
       Label4.Visible = True
       DataCombo3.Visible = True
       
       Set rsg = New Recordset
       rsg.Open "SELECT distinct 'All - A' as Iss,'A' as Isstype from rm_issuetype UNION select issue_desc +'-'+issue_code ""Iss"",isstype from rm_issuetype where isstype in ('T','P') order by isstype ", DB, adOpenStatic
       
       If rsg.RecordCount > 0 Then
       
        Set DataCombo3.RowSource = rsg
        DataCombo3.ListField = "ISS"
        rsg.MoveFirst
        DataCombo3.Text = rsg(0)
       Else
        MsgBox "Please Define Issue Type in setup", vbInformation, head
        Exit Sub
       End If
       
       
       Call Dateset '''''''''''''
      
       
Case 101
       Label6.Caption = "Waste Stock Status"
       Me.Caption = "Waste Stock Status"
       Frame1.Visible = True
       Frame1.ZOrder
       Frame1.Height = Frame1.Height - 500
       SSTab1.Height = SSTab1.Height - 400
       Call Dateset '''''''''''''''
Case 11            'Rejected Arrivals
        Label17.Caption = "Rejected Arrivals"
        Me.Caption = "Rejected Arrivals"
        Frame3.Visible = True
        Frame3.ZOrder
        Frame1.Visible = False
        Command5.Visible = True
        Call DataCombo13_GotFocus
Case 13             'Arrivals to be inspected
    Label6.Caption = "Arrival List"
    Me.Caption = "Arrival List"
    Frame3.Visible = True
    Frame3.ZOrder
    SSTab1.Visible = True
    Frame1.Visible = True
    Frame1.Height = Frame1.Height - 400
    SSTab1.Height = SSTab1.Height - 400
    Command5.Visible = False
    DataCombo1.Visible = True
    DataCombo2.Visible = True
    Command3.Visible = True
    Command6.Visible = True
    Command3.Top = Command1.Top
    DataCombo2.ZOrder
    Frame1.ZOrder
    Command5.Visible = False
    If Trim(UCase(CustID)) = "SKY" Then
        Label4.Visible = True
        Combo3.Visible = True
        Label4.Caption = "Sustainable Type"
        Set Rs = New Recordset
        Rs.Open "select Code from rm_sustainrmtype", cn, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount > 0 Then
            Rs.MoveFirst
            Combo3.Text = "All"
            Combo3.AddItem "All"
            While Not Rs.EOF
                Combo3.AddItem Rs(0)
                Rs.MoveNext
            Wend
        End If
    End If
    
    Set Rs = New Recordset
    Rs.Open "select distinct arrdate from rm_arrival where arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        DataCombo1.Refresh
        DataCombo2.Refresh
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "arrdate"
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "arrdate"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo1.Text = Rs(0)
            Rs.MoveLast
            DataCombo2.Text = Rs(0)
        End If
    End If
    DataCombo1.Visible = True
    DataCombo2.Visible = True
    
    ''''''''''''''''''''''
     DTPicker3.Visible = True
     DTPicker3.ZOrder
     DTPicker3.MinDate = yfdate
     DTPicker3.Refresh
     DTPicker3.maxdate = pdate
     DTPicker3.value = mfdate
     DTPicker3.Left = DataCombo1.Left
     DTPicker3.Width = DataCombo1.Width
     DTPicker3.Top = DataCombo1.Top
     DTPicker3.Height = DataCombo1.Height

     DTPicker2.Visible = True
     DTPicker2.ZOrder
     DTPicker2.MinDate = yfdate
     DTPicker2.Refresh
     DTPicker2.maxdate = pdate
     DTPicker2.value = pdate
     DTPicker2.Left = DataCombo2.Left
     DTPicker2.Width = DataCombo2.Width
     DTPicker2.Top = DataCombo2.Top
     DTPicker2.Height = DataCombo2.Height
    ''''''''''''''''''''''
    DTPicker3.tabIndex = 0
    DTPicker2.tabIndex = 1
      '  DataCombo1.tabIndex = 2
    Command1.tabIndex = 3
    Command2.tabIndex = 4
    
    Call load_DivisionChkListbox
    
    If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
        Label14.Visible = True
        Text1.Visible = True
        List_div.Visible = True
        Check2.Visible = True
    Else
        Label14.Visible = False
        Text1.Visible = False
        List_div.Visible = False
        Check2.Visible = False
    End If


Case 13101

 Label6.Caption = "Issue List - Count wise"
    Me.Caption = "Issue List - Count wise"
    Frame3.Visible = True
    Frame3.ZOrder
    SSTab1.Visible = True
    Frame1.Visible = True
    Frame1.Height = Frame1.Height - 400
    SSTab1.Height = SSTab1.Height - 400

    Command5.Visible = False
    DataCombo1.Visible = True
    DataCombo2.Visible = False
    Command3.Visible = True
    Command3.Top = Command1.Top
    DataCombo2.ZOrder
    Frame1.ZOrder
    Command5.Visible = False
    Set Rs = New Recordset
    Rs.Open "select distinct arrdate from rm_arrival where arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        DataCombo1.Refresh
        DataCombo2.Refresh
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "arrdate"
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "arrdate"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo1.Text = Rs(0)
            Rs.MoveLast
            DataCombo2.Text = Rs(0)
        End If
    End If
    DataCombo1.Visible = True
    DataCombo2.Visible = False
    
    
    If CustID = "SOUTHERN" Then
        pdate = DTPicker2.value
    End If

    ''''''''''''''''''''''
     DTPicker3.Visible = True
     DTPicker3.ZOrder
     DTPicker3.MinDate = yfdate
     DTPicker3.Refresh
     DTPicker3.maxdate = pdate
     DTPicker3.value = mfdate
     DTPicker3.Left = DataCombo1.Left
     DTPicker3.Width = DataCombo1.Width
     DTPicker3.Top = DataCombo1.Top
     DTPicker3.Height = DataCombo1.Height



     DTPicker2.Visible = False
     DTPicker2.ZOrder
     DTPicker2.MinDate = yfdate
     DTPicker2.Refresh
     DTPicker2.maxdate = pdate
     DTPicker2.value = pdate
     DTPicker2.Left = DataCombo2.Left
     DTPicker2.Width = DataCombo2.Width
     DTPicker2.Top = DataCombo2.Top
     DTPicker2.Height = DataCombo2.Height
    ''''''''''''''''''''''
    DTPicker3.tabIndex = 0
    DTPicker2.tabIndex = 1
      '  DataCombo1.tabIndex = 2
    Command1.tabIndex = 3
    Command2.tabIndex = 4
    Label1.Caption = "Month"
    Label1.Left = 1000
    DataCombo2.Left = 2000
    
    Label2.Visible = False
    Command1.Visible = False
    Command3.Left = 3500
    Command2.Left = 5000
    Command2.Width = Command3.Width
    Command2.Height = Command3.Height
    Command2.Top = Command3.Top
       
      
       
       
    DTPicker3.Format = dtpCustom
    DTPicker3.CustomFormat = "MMM yyyy"
    
    Frame5.Visible = False
    SSTab1.Height = 5000
    Frame1.Height = 4100
    Frame5.Visible = True
     Frame5.Top = 7000
     Str = ""
            Str = LocalIPAdd
            Str = LTrim(LocalIPAdd)
        
        Set temprs = New Recordset
            temprs.Open "SELECT A.cntcd,B.cntname  FROM rm_issh A LEFT JOIN RM_COUNT B ON B.Divcode=A.DIVCODE AND B.cntcd=A.cntcd AND B.mixgrpcd=A.MIXGRP WHERE A.docdt BETWEEN '" & Format(mfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and A.divcode='" & Divcode & "' AND A.cntcd<>'NULL' GROUP BY A.cntcd,B.cntname order by a.cntcd ", DB, adOpenStatic, adLockReadOnly
            Lv_PType.ListItems.Clear

            Dim li As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set l1 = Lv_PType.ListItems.ADD(, , temprs("cntname"))
                    Lv_PType.ListItems(Lv_PType.ListItems.Count).ListSubItems.ADD , , temprs("cntcd")
                    temprs.MoveNext
                Loop
            End If
            temprs.Close

        Lv_PType.Visible = True
        Lv_PType.Width = 4000
        Lv_PType.Left = 700
        Lv_PType.Height = 2550
        'Lv_PType.Top = 5000
        Lv_PType.Visible = True
        'Lv_PType.ZOrder = 1

Case 1117

    Label17.Caption = "Insurance Statement"
    Me.Caption = "Insurance Statement"
    Frame3.Visible = True
    Frame3.ZOrder
    Combo1.Visible = True
    DataCombo2.Visible = False
    DataCombo2.ZOrder
    Label1.Visible = False
    Label2.Visible = False
    DataCombo13.Visible = False
    Label15.Caption = "Month"
    Dim MON1 As Integer
    Dim DATEA As String
    MON1 = DateDiff("M", yfdate, yldate) + 1
    DATEA = yfdate
    For I = 1 To MON1
        Combo1.AddItem Format(DATEA, "MMMM") & " - " & Format(DATEA, "YYYY")
        DATEA = DateAdd("M", 1, DATEA)
    Next I
    Combo2.Visible = True
    Combo3.Visible = True
    Label3.Visible = True
    Label4.Visible = True
    Set Rs = New Recordset
    Rs.Open "Select catcd+'-'+ catname from rm_cat", DB, adOpenStatic
    Do While Not Rs.EOF
        Combo2.AddItem Rs(0)
        Combo3.AddItem Rs(0)
        Rs.MoveNext
    Loop
    Combo2.AddItem "A-All"
    Combo3.AddItem "A-All"
    If MONTH(pdate) >= 4 Then
        Combo1.ListIndex = MONTH(pdate) - 4
    Else
        Combo1.ListIndex = 12 + MONTH(pdate) - 4
    End If
    If Rs.RecordCount > 0 Then
        Rs.MoveFirst
        Combo2.Text = Rs(0)
        Combo3.Text = Rs(0)
    End If
    Frame3.Visible = False
    Label6.Caption = "Insurance Statement"
    DataCombo1.Visible = False
    Frame1.Visible = True
    Label1.Visible = True
    Label2.Visible = True
    Label1.Caption = "From Date"
    Label2.Caption = "To Date"
    Set Rs = New Recordset
    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where a.divcode = '" & Divcode & "' ", cn, adOpenStatic
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker2.value = mfdate
    DTPicker3.value = pdate
    DTPicker2.tabIndex = 0
    DTPicker3.tabIndex = 1
    Combo3.tabIndex = 2
    Command1.tabIndex = 3
    Command2.tabIndex = 4
    CmbRecType.Visible = True
    LblRecType.Visible = True
    Set RecRs = New Recordset
    RecRs.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' " & _
                   " UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype Order by Type", cn, adOpenStatic, adLockBatchOptimistic
    CmbRecType.Clear
    I = 0
    While Not RecRs.EOF
        CmbRecType.AddItem UCase(RecRs!Type), I
        RecRs.MoveNext
        I = I + 1
    Wend
    CmbRecType.AddItem "ALL  -  ALL"
    If CmbRecType.ListCount > 0 Then CmbRecType.ListIndex = 0
    Command3.Visible = True
    Command2.Left = Command6.Left
    
Case 14            'customerwise Sales issue

    Label6.Caption = "Sales Issue List"
    Me.Caption = "Sales Issue List"
    Frame1.Visible = True
    Frame1.ZOrder
    Frame3.Visible = False
    'Command3.Visible = True
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker2.ZOrder
    DTPicker3.ZOrder
    DTPicker2.value = mfdate
    DTPicker3.value = pdate
    DTPicker2.MinDate = yfdate
    DTPicker3.MinDate = yfdate
    DTPicker2.maxdate = pdate
    DTPicker3.maxdate = pdate
    DTPicker2.tabIndex = 0
    DTPicker3.tabIndex = 1
    Combo3.tabIndex = 2
    Command1.tabIndex = 3
    Command2.tabIndex = 4
    Label4.Visible = True
    Combo3.Visible = True
    Set rec = New Recordset
    rec.Open "select  issue_code + '-'+ issue_desc as type from rm_issuetype where isstype='S' union select DISTINCT 'A -ALL' AS TYPE FROM RM_ISSUETYPE ", cn, adOpenStatic, adLockBatchOptimistic
    
    If rec.RecordCount = 0 Then
      MsgBox "No Record(s) Found", vbInformation, head
      Exit Sub
    End If
    
    rec.MoveFirst
    
    Do While Not rec.EOF
     Combo3.AddItem rec!Type
     Combo3.Text = rec!Type
     rec.MoveNext
    Loop
    
    'Call DataCombo1_GotFocus
    
Case 15            'customerwise Transfer issue

    Label6.Caption = "Transfer Issue List"
    Me.Caption = "Transfer Issue"
    Frame1.Visible = True
    Frame1.ZOrder
    Frame3.Visible = False
    'Command3.Visible = True
    DTPicker1.Visible = True
    DTPicker3.Visible = True
    DTPicker1.ZOrder
    DTPicker3.ZOrder
    DTPicker2.tabIndex = 0
    DTPicker3.tabIndex = 1
    Combo3.tabIndex = 2
    Command1.tabIndex = 3
    Command2.tabIndex = 4
    DTPicker2.value = mfdate
    DTPicker3.value = pdate
    Label4.Visible = True
    Combo3.Visible = True
    Command3.Visible = True
    Set rec = New Recordset
    rec.Open "select  issue_code + '-'+ issue_desc as type from rm_issuetype where isstype in ('T','J') union select DISTINCT 'A -ALL' AS TYPE FROM RM_ISSUETYPE ", cn, adOpenStatic, adLockBatchOptimistic
    
    If rec.RecordCount = 0 Then
      MsgBox "No Record(s) Found", vbInformation, head
      Exit Sub
    End If
    
    rec.MoveFirst
    
    Do While Not rec.EOF
     Combo3.AddItem rec!Type
     Combo3.Text = rec!Type
     rec.MoveNext
    Loop
    Combo3.ListIndex = 0
    Call DataCombo1_GotFocus
    
    
Case 16            'Varietywise Purchase
    Label6.Caption = "Purchase - Varietywise"
    Me.Caption = "Purchase - Varietywise"
    Frame1.Visible = True
    Frame1.ZOrder
    Frame3.Visible = False
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker2.ZOrder
    DTPicker3.ZOrder
    LblRecType.Visible = True
    CmbRecType.Visible = True
    LblRecType.Top = LblRecType.Top + 50
    CmbRecType.Top = CmbRecType.Top + 50
    DTPicker2.tabIndex = 0
    DTPicker3.tabIndex = 1
    Check1.tabIndex = 2

    Command1.tabIndex = 3
    Command2.tabIndex = 4
    Command3.Visible = True
    Call DataCombo1_GotFocus
    Check1.Visible = True
    If Check1.value = 1 Then
        Combo3.Visible = True
        Label4.Visible = True
        Dim RstCat As Recordset
        Set RstCat = New Recordset
        RstCat.Open "Select * from rm_Cat order by catcd", cn, adOpenStatic
        Combo3.Clear
        Do While Not RstCat.EOF
            Combo3.AddItem RstCat("CatCd") & " - " & RstCat("Catname")
            RstCat.MoveNext
        Loop
        Combo3.AddItem "A - ALL"
        Combo3.ListIndex = 0
    End If
    
    Set RecTypeRs = New Recordset
            RecTypeRs.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' " & _
                       " UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype Order by Type", cn, adOpenStatic, adLockBatchOptimistic
            CmbRecType.Clear
            I = 0
            While Not RecTypeRs.EOF
            CmbRecType.AddItem UCase(RecTypeRs!Type), I
            RecTypeRs.MoveNext
            I = I + 1
            Wend
            CmbRecType.AddItem "ALL  -  ALL"
            If CmbRecType.ListCount > 0 Then CmbRecType.ListIndex = 0
        If UCase(CustID) = "SKS" Then
            CmdAbstract.Top = Command6.Top
            CmdAbstract.Visible = True
        End If
        
Case 161            'Varietywise Mix Group

    Label6.Caption = "Mix Group - Varietywise"
    Frame1.Visible = True
    Frame1.ZOrder
    Frame1.Height = Frame1.Height - 400
    Frame3.Visible = False
    DTPicker2.Visible = True
    DTPicker3.Visible = False
    Label2.Visible = False
    DataCombo2.Visible = True
    
    Label1.Caption = "Date"
    DTPicker2.ZOrder
    'DTPicker3.ZOrder
    Frame1.Visible = False
    Frame2.Visible = True
    DTPicker4.MinDate = yfdate
    DTPicker4.maxdate = pdate
    DTPicker4.value = mfdate
    DataCombo2.Top = DTPicker4.Top + 100
    
    Set Rs = New Recordset
    Rs.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        CboCategory.Clear
        Do While Not Rs.EOF
            CboCategory.AddItem Rs(0)
            Rs.MoveNext
        Loop
        CboCategory.AddItem "ALL   -   ALL"
        Rs.MoveFirst
        CboCategory.Text = Rs(0)
        
    End If
    Command3.Visible = False
    Kslcmpsel.ConnStr = connectstring
    ''Call DataCombo1_GotFocus

Case 17            'Form IV
    Label17.Caption = "Form IV"
    Me.Caption = "Form IV"
    Frame3.Visible = True
    Frame3.ZOrder
    Combo1.Visible = True
    DataCombo2.Visible = False
    DataCombo2.ZOrder
    Label1.Visible = False
    Label2.Visible = False
    Label16.Visible = True
    Combo6.Visible = True
    DataCombo13.Visible = False
    Label15.Caption = "Month"
    MON1 = DateDiff("M", yfdate, yldate) + 1
    DATEA = yfdate
    For I = 1 To MON1
        Combo1.AddItem Format(DATEA, "MMMM") & " - " & Format(DATEA, "YYYY")
        DATEA = DateAdd("M", 1, DATEA)
    Next I
    
    Combo2.Visible = True
    Combo3.Visible = True
    Label3.Visible = True
    Label4.Visible = True
    Label16.Visible = True
    Combo6.Visible = True
    Set Rs = New Recordset
    Rs.Open "Select catcd+'  -  '+ catname from rm_cat", DB, adOpenStatic
    Do While Not Rs.EOF
        Combo2.AddItem Rs(0)
        Combo3.AddItem Rs(0)
        Rs.MoveNext
    Loop
    Combo3.AddItem "ALL  -  ALL"
    If MONTH(pdate) >= 4 Then
        Combo1.ListIndex = MONTH(pdate) - 4
    Else
        Combo1.ListIndex = 12 + MONTH(pdate) - 4
    End If
    If Rs.RecordCount > 0 Then
        Rs.MoveFirst
        Combo2.Text = Rs(0)
        Combo3.Text = Rs(0)
    End If
    Frame3.Visible = False
    Label6.Caption = "Form IV"
    DataCombo1.Visible = False
    Frame1.Visible = True
    Label1.Visible = True
    Label2.Visible = True
    Label1.Caption = "From Date"
    Label2.Caption = "To Date"
    Set Rs = New Recordset
    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where a.divcode = '" & Divcode & "' ", cn, adOpenStatic
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker2.value = yfdate
    DTPicker3.value = pdate
    Combo6.ListIndex = 0
    hi = ""
    Command3.Visible = True
    Command3.Top = Command1.Top
     Set Rs = New Recordset
    Rs.Open " Select  'ALL  -  ALL' as Type from RM_Lot " & _
                   " UNION Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' " & _
                   " UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype oRDER BY tYPE", cn, adOpenStatic, adLockBatchOptimistic
    CmbRecType.Clear
    I = 0
    While Not Rs.EOF
        CmbRecType.AddItem UCase(Rs!Type), I
        Rs.MoveNext
        I = I + 1
    Wend
'    If Repindex <> 291 Then CmbRecType.AddItem "ALL  -  ALL"
    If CmbRecType.ListCount > 0 Then CmbRecType.ListIndex = 0

    Label16.Visible = False
    Combo6.Visible = False
    LblRecType.Visible = True
    CmbRecType.Visible = True
    DTPicker2.value = mfdate
    Command6.Visible = True
    
    
Case 20            'SICA

    Label17.Caption = "SICA STATEMENT"
    Me.Caption = "SICA STATEMENT"
    Frame3.Visible = True
    Frame3.ZOrder
    Combo1.Visible = True
    Label1.Visible = False
    Label2.Visible = False
    DataCombo13.Visible = False
    'Combo1.Text = Combo1.list(0)
     Label15.Caption = "Month"
    Dim MON2 As Integer
    Dim DATEb As String
    MON2 = DateDiff("M", yfdate, yldate) + 1
    DATEb = yfdate
    For I = 1 To MON2
    Combo1.AddItem Format(DATEb, "MMMM") & " - " & Format(DATEb, "YYYY")
'    Combo1.AddItem Format(DATEA, "MMMM") & " - " & Format(DATEA, "YYYY")
'    Combo1.AddItem Format(DATEA, "MMMM") & " - " & Format(DATEA, "YYYY")
    DATEb = DateAdd("M", 1, DATEb)
    Next I

Case 55            'BANK
    Label17.Visible = True
    Label17.Caption = "BANK STATEMENT"
    Me.Caption = "BANK STATEMENT"
    Command5.Visible = True
    Frame3.Visible = True
    Frame3.ZOrder
    Combo1.Visible = True
    Combo1.Clear
    Label1.Visible = False
    Label2.Visible = False
    Label15.Visible = True
    DataCombo13.Visible = False
    rec.Open "select distinct lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", cn, adOpenStatic
    If rec.RecordCount > 0 Then
    Do While Not rec.EOF
        Combo1.AddItem (rec(0))
        rec.MoveNext
    Loop
    rec.MoveFirst
    Combo1.Text = rec(0)
    End If
Case 1111

        Frame1.Visible = True
        Label6.Caption = "Bank Statement - Variety wise"
        Me.Caption = "Bank Statement - Variety wise"
        DataCombo1.Visible = True
        DataCombo2.Visible = True
        Frame1.ZOrder
        Set Rs = New Recordset
        Rs.Open "Select distinct lodgdate from rm_bale a,rm_lot b where a.divcode=b.divcode and a.divcode='" & Divcode & "' and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and lodgdate is not null", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.EOF Then
            Set DataCombo1.RowSource = Rs
            DataCombo1.ListField = "lodgdate"
            Set DataCombo2.RowSource = Rs
            DataCombo2.ListField = "lodgdate"
            Rs.MoveFirst
                DataCombo2.Text = Rs(0)
            Rs.MoveLast
                DataCombo1.Text = Rs(0)
        End If
        DataCombo2.Visible = False
        DataCombo1.Visible = False
        DTPicker2.Visible = True
        DTPicker3.Visible = True
        DTPicker3.MinDate = pdate
        DTPicker2.maxdate = yfdate
        Exit Sub
Case 1112

        Frame1.Visible = True
        Label6.Caption = "Bank Statement - Date wise"
        Me.Caption = "Bank Statement - Date wise"
        DataCombo1.Visible = True
        DataCombo2.Visible = True
        Frame1.ZOrder
        Set Rs = New Recordset
        Rs.Open "Select distinct lodgdate from rm_bale a,rm_lot b where a.divcode=b.divcode and a.divcode='" & Divcode & "' and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and lodgdate is not null", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.EOF Then
            Set DataCombo1.RowSource = Rs
            DataCombo1.ListField = "lodgdate"
            Set DataCombo2.RowSource = Rs
            DataCombo2.ListField = "lodgdate"
            Rs.MoveFirst
                DataCombo1.Text = Rs(0)
            Rs.MoveLast
                DataCombo2.Text = Rs(0)
        End If
        Exit Sub
        
    Case 1113
       Label5.Caption = "Quality Parameters "
       Me.Caption = "Quality Parameters "
        Frame1.Visible = True
        Frame1.ZOrder
        Frame2.Height = Frame2.Height - 600
        SSTab1.Height = SSTab1.Height - 500
        Frame3.Visible = False
        DTPicker2.Visible = False
        DTPicker3.Visible = False
        DTPicker4.Visible = True
        Label2.Visible = False
        DataCombo2.Visible = False
        Label7.Visible = False
        OptMixCnt.Visible = False
        OptMixGrp.Visible = False
        Label7.Visible = True
        Label1.Caption = "Date"
        DTPicker2.ZOrder
        'DTPicker3.ZOrder
        Frame1.Visible = False
        Frame2.Visible = True
        DTPicker4.MinDate = yfdate
        DTPicker4.maxdate = pdate
        DTPicker4.value = pdate
        LblCategory.Visible = "false"
        'LblCategory.Caption = "Lot No."
        CboCategory.Visible = False
        
        Set Rs = New Recordset
        Rs.Open "select distinct a.LotNO from rm_Lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' Order by a.LotNO", cn, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount <> 0 Then
            CboCategory.Clear
            Do While Not Rs.EOF
                CboCategory.AddItem Rs(0)
                Rs.MoveNext
            Loop
            CboCategory.AddItem "ALL   -   ALL"
            Rs.MoveFirst
            CboCategory.Text = Rs(0)
        End If
        
        Kslcmpsel.ConnStr = connectstring
        
        
End Select
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub prnhead()
On Error GoTo prnhead_Error

If Repindex = 17 Then
    Print #f,
    Print #f, Chr(18)
    Print #f, Space(5) + Chr(27) & "E" & CENTRE(Trim(divname) & Chr(27) & "F", 132, " ")
    Print #f,
    Print #f, Space(5) + CENTRE("Annexure  V. Form IV  (Rule  173 G.)", 132, " ")
    Print #f,
    Print #f, Space(5) + Chr(27) & "E"; CENTRE("Account of Raw Materials and Components", 132, " "); Chr(27) & "F"
    Print #f,
    Print #f, Space(3) + "Description of raw Materials/Components :" & Padr(Mid$(Combo2.Text, InStr(Combo2.Text, "-") + 1, Len(Combo2.Text)), 20, " "); Space(45) + "Month :" & Combo1.Text & " " + Chr(15)
    Print #f, Space(5) + String(225, "-")
    Print #f, Space(5); "Date            Opening    Quantity        Total        Quantity use in the    Quantity    Otherwise            Quantity                     Quantity of                          "
    Print #f, Space(5); "                Balance    Received                     Manufacture            Disposed of                   Wasted by       Closing       Excisable                   Signature of the"
    Print #f, Space(5); "                                                        Excisable     Other    Nature of the    Quantity        Destroyed       Balance        goods            Remarks   assessee or the agent"
    Print #f, Space(19); "                                          Goods         Goods    Disposal                              "; Space(23); " Manufactured "
    Print #f, Space(5) + String(225, "-")
End If
If Repindex = 20 Then
    Set RSS = New Recordset
    RSS.Open "select sicano from rm_param ", cn
    Print #f, Chr(18)
    'Print #f, Space(Round(136 / 2 - Len(DIVNAME) / 2)) & DIVNAME
    Print #f, Space(5) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
    Print #f,
    'Print #f, Space(Round(136 / 2 - Len(DIVNAME) / 2)) & "STATEMENT IN RESPECT OF NON-TRANSFERABLE"
    Print #f, Space(7) + CENTRE("STATEMENT IN RESPECT OF NON-TRANSFERABLE", 132, " ")
    Print #f,
    'Print #f, Space(Round(136 / 2 - Len(DIVNAME) / 2)) & "SPECIFIC DELIVERY CONTRACTS IN COTTON"
    Print #f, Space(6) + CENTRE("SPECIFIC DELIVERY CONTRACTS IN COTTON", 132, " ")
    Print #f,
    Print #f, Space(1) + "Members enrolment No. and Date :" & IIf(IsNull(RSS(0)) = True, 0, RSS(0)) & Space(50 - Len(IIf(IsNull(RSS(0)) = True, 0, RSS(0)))) + Space(3) + " For the Period From " & Format(date1, "dd/mm/yyyy") & " To " & Format(date2, "dd/mm/yyyy")
    Print #f,
    Print #f, String(136, "-")
    Print #f, Space(1) + "Variety  " + Space(5) + "Contracts Out- " + Space(5) + "Contracts entered into during the period under" + Space(20) + "Performance " + Space(11) + "Contracts"
    Print #f, Space(1) + "of cotton" + Space(5) + "standing at the" + Space(5) + "report providing for delivery during the      " + Space(20) + "of contract " + Space(11) + "outstanding"
    Print #f, Space(1) + "         " + Space(5) + "beginning of   " + Space(5) + "-------------------------------------------------------------" + Space(3) + "----------------------" & Space(3) & "at the end"
    Print #f, Space(1) + "         " + Space(5) + "the period     " + Space(5) + "month " + Space(1) + "  first  " + Space(3) + " second  " + Space(1) + "  third  " + Space(3) + " fourth  " + Space(2) + " fifth   " + Space(3) + "deli-    " + Space(3) + "Contracts " + Space(3) + "of the"
    Print #f, Space(1) + "         " + Space(5) + "               " + Space(5) + "under " + Space(1) + "following" + Space(3) + "following" + Space(1) + "following" + Space(3) + "following" + Space(2) + "following" + Space(3) + "veries   " + Space(3) + "dealt with" + Space(3) + "period"
    Print #f, Space(1) + "         " + Space(5) + "               " + Space(5) + "report" + Space(1) + "  month  " + Space(3) + " month   " + Space(1) + "  month  " + Space(3) + "  month  " + Space(2) + "  month  " + Space(3) + "completed" + Space(3) + "otherwise "
    Print #f, Space(1) + "         " + Space(5) + "               " + Space(5) + "      " + Space(1) + "         " + Space(3) + "         " + Space(1) + "         " + Space(3) + "         " + Space(2) + "         " + Space(3) + "         " + Space(3) + "than by   "
    Print #f, Space(1) + "         " + Space(5) + "               " + Space(5) + "      " + Space(1) + "         " + Space(3) + "         " + Space(1) + "         " + Space(3) + "         " + Space(2) + "         " + Space(3) + "         " + Space(3) + "delivery  "
    Print #f, String(136, "-")
    Print #f, Space(4) + "(1)" + Space(13) + "(2)" + Space(14) + "(3)" + Space(6) + "(4)" + Space(8) + "(5)" + Space(7) + "(6)" + Space(8) + "(7)" + Space(9) + "(8)" + Space(12) + "(9)" + Space(9) + "(10)" + Space(6) + "(11)"
    Print #f, String(136, "-")
    Print #f, Space(20) + "Bal  Brs" + Space(4) + "Bal  Brs" + Space(3) + "Bal  Brs" + Space(3) + "Bal  Brs" + Space(3) + "Bal  Brs" + Space(3) + "Bal  Brs" + Space(3) + "Bal  Brs" + Space(4) + "Bal  Brs" + Space(5) + "Bal  Brs" + Space(5) + "Bal  Brs"
    Print #f, Space(20) + "--------" + Space(4) + "--------" + Space(3) + "--------" + Space(3) + "--------" + Space(3) + "--------" + Space(3) + "--------" + Space(3) + "--------" + Space(4) + "--------" + Space(5) + "--------" + Space(5) + "--------"
    Print #f, String(136, "-")
End If

Exit Sub
prnhead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure prnhead of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub



Public Sub monval()
On Error GoTo monval_Error

On Error GoTo monval_Error

MON = Mid(Combo1.Text, 1, InStr(Combo1.Text, "-") - 1)
Year1 = Right(Combo1.Text, 4)
date1 = Format("01-" & MON & "-" & Year1, "yyyy/mm/dd")
date2 = Format(DateAdd("m", 1, date1) - 1, "yyyy/mm/dd")
date3 = Format(DateAdd("m", 1, date1) - 1, "yyyy/mm/dd")
date3 = Year(date1) & "/" & MONTH(date1) - 1 & "/" & Day(date2)
date3 = Format(date3, "yyyy-mm-dd")
Exit Sub
monval_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure monval of Form repform", vbInformation, head
Screen.MousePointer = 0

Exit Sub

End Sub

Private Sub Dateset()
''''''''''''''''''''''
On Error GoTo Dateset_Error

On Error GoTo Dateset_Error

     DTPicker3.Visible = True
     DTPicker3.ZOrder
     DTPicker3.MinDate = yfdate
     DTPicker3.Refresh
     DTPicker3.maxdate = pdate
     DTPicker3.value = mfdate
     DTPicker3.Left = DataCombo1.Left
     DTPicker3.Width = DataCombo1.Width
     DTPicker3.Top = DataCombo1.Top
     DTPicker3.Height = DataCombo1.Height

     DTPicker2.Visible = True
     DTPicker2.ZOrder
     DTPicker2.MinDate = yfdate
     DTPicker2.Refresh
     DTPicker2.maxdate = pdate
     DTPicker2.value = pdate
     DTPicker2.Left = DataCombo2.Left
     DTPicker2.Width = DataCombo2.Width
     DTPicker2.Top = DataCombo2.Top
     DTPicker2.Height = DataCombo2.Height
     
     DataCombo1.Left = DataCombo2.Left
     DTPicker3.Left = DTPicker2.Left
    ''''''''''''''''''''''
    
     DTPicker3.tabIndex = 0
       DTPicker2.tabIndex = 1
       DataCombo3.tabIndex = 2
       Command1.tabIndex = 3
       Command2.tabIndex = 4
    Command3.Visible = False
Exit Sub
Dateset_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Dateset of Form repform", vbInformation, head
Screen.MousePointer = 0

Exit Sub

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Dateset of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
 intervalMinutes = -1
End Sub

'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
' intervalMinutes = -1
'End Sub

Private Sub Kslcmpsel_Change(ChangedControl As ChangedCtrl)
On Error GoTo Kslcmpsel_Change_Error
intervalMinutes = -1
If Repindex = 1113 Then
    Set Rs = New Recordset
    Rs.Open "select distinct a.LotNO from rm_Lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' Order by a.LotNO", Kslcmpsel.SelConnectStr, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        CboCategory.Clear
        Do While Not Rs.EOF
            CboCategory.AddItem Rs(0)
            Rs.MoveNext
        Loop
        CboCategory.AddItem "ALL   -   ALL"
        Rs.MoveFirst
        CboCategory.Text = Rs(0)
    End If
End If
    intervalMinutes = -1
Exit Sub
Kslcmpsel_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Kslcmpsel_Change of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Lv_PType_BeforeLabelEdit(Cancel As Integer)
If chkCnt.value = 1 Then
        For I = 1 To Lv_PType.ListItems.Count
          Lv_PType.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To Lv_Count.ListItems.Count '- 1
             Lv_PType.ListItems.Item(I).Checked = False
        Next I
    End If
    ilastindex = 1
End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
  Command4.Visible = True
  
Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form repform", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    Command4.Visible = False
Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
        End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub vatcotton()

On Error GoTo Err1

Dim Rs As New ADODB.Recordset
Dim cnt As Integer
Dim SNO As Integer
Dim rptv As ReportView
Dim Strvalue As String
Dim gDblVat As Double
Dim gDblCst As Double

    Dim StrTaxper, strcat As String
    Dim Dblvalue As Double
    Dim DblTAxamt As Double

Dim DB As Connection
Dim RsDiv As New ADODB.Recordset
Dim GTax As Double, Gvalue As Double
Set DB = New Connection
DB.Open connectstring
   
   If RsDiv.State = 1 Then RsDiv.Close
    RsDiv.Open " select DIVNAME from PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB, adOpenKeyset, adLockReadOnly
    
    If RsDiv.EOF = False Then
        divname = RsDiv!divname & ""
    End If
      
    QueryCat " SELECT  m.slname,div.abbr division,isnull(m.tinno,'') tinno,isnull(b.commcode,'') commcode,sum(b.value) matvalue,b.tax_per,sum(b.taxamt) taxamt,category=case when b.tax_per>0 then 'F' else 'E' end  FROM RM_CINVHD a "
    QueryCat "  left outer join "
    QueryCat " ( SELECT  mas.TAX_PER,INV_NO,mas.DIVCODE,isnull(rc.comm_code,'') commcode, SUM(isnull(VALUE,0)) VALUE,SUM(TAX_AMT) TAXAMT FROM rm_cINVDT mas"
    QueryCat " LEFT OUTER JOIN rm_issb lo ON lo.DOCNO=mas.CONT_NO AND lo.DIVCODE=mas.DIVCODE AND lo.ISSTYPE=mas.INV_TYPE  "
    QueryCat " LEFT OUTER JOIN rm_cat rc ON rc.CATCD=lo.CATCD "
    QueryCat " GROUP BY INV_NO,mas.TAX_PER,mas.DIVCODE,isnull(rc.comm_code,'')) b on b.divcode=a.divcode and a.inv_no=b.inv_no"
    QueryCat " left outer join fa_slmas m on m.slcode=a.cust_code"
    QueryCat " left outer join pp_divmas div on div.divcode=a.divcode "
    QueryCat " where a.divcode='" & Divcode & "' and month(date)='" & Format(MONTH(Me.Combo4.Text), "00") & "' and year(date)='" & Format(Year(Me.Combo4.Text), "0000") & "' AND DATE BETWEEN '" & Format(yfdate, "DD-MMM-YYYY") & "' AND '" & Format(yldate, "DD-MMM-YYYY") & "' AND b.value > 0 "
    QueryCat " group by m.slname,isnull(m.tinno,'') ,b.tax_per,isnull(b.commcode,''),div.abbr"
    QueryCat " order by category asc,tax_per asc,commcode asc,slname asc ", sql
    
    If Rs.State = 1 Then Rs.Close
    Rs.Open sql, DB, adOpenKeyset, adLockReadOnly
    
    If Rs.EOF = True Then
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    Set rptv = New Report.ReportView
    Close
    'Close #a
    a = FreeFile
    'Open "C:\CSSTINV.TXT" For Output As #a
    Open KALFOLDERDATA & "\CSSTINV.TXT" For Output As #a
    SNO = 0
    cnt = 0
    pg = 1
    STheader
    GTax = 0: Gvalue = 0
    StrTaxper = "": strcat = ""
    Dblvalue = 0: DblTAxamt = 0
    
    While Not Rs.EOF
        
        SNO = SNO + 1
            
            If cnt + 4 >= 65 Then
                STFOOTER
                Print #a, Chr(12)
                cnt = 0
                pg = pg + 1
                STheader
            End If
            
        If (StrTaxper <> Rs!tax_per Or strcat <> Rs!Category) And SNO > 1 Then
            Print #a, Space(53) + String(82, "-")
            Print #a, Space(3) + Space(50) + Chr(27) & "E" + Padr("Sub Total", 23, " ") + Padl(INF(Dblvalue, 2), 16, " ") + Space(1) + Space(9) + Padl(IIf(DblTAxamt <> 0, INF(DblTAxamt, 2), Format(DblTAxamt, "#0.00")), 14, " ") + Space(20) + Chr(27) & "F"
            Print #a, Space(53) + String(82, "-")
            Dblvalue = 0: DblTAxamt = 0
            cnt = cnt + 3
        End If
        
        Print #a, Space(3) + Padl(SNO, 4, " ") + Space(1) + Padr(Left(Rs!sLname, 44), 44, " ") + Space(1) + Padr(Rs!TINNO, 12, " ") + Space(1) + Padr(Rs!commcode, 9, " ") + Space(1) + Padl(INF(Rs!matvalue, 2), 16, " ") + Space(1) + Padl(Format(Rs!tax_per, "#0.00"), 8, " ") + Space(1) + Padl(IIf(Rs!Taxamt <> 0, INF(Rs!Taxamt, 2), Format(Rs!Taxamt, "#0.00")), 14, " ") + Space(4) + Padr(Rs!Category, 5, " ") + Space(1) + Padr(Rs!division, 10, " ")
        
        cnt = cnt + 1
        If Rs!matvalue <> "Null" Then
        Dblvalue = Dblvalue + Rs!matvalue
        DblTAxamt = DblTAxamt + Rs!Taxamt
        GTax = GTax + Rs!Taxamt
        Gvalue = Gvalue + Rs!matvalue
        StrTaxper = Rs!tax_per
        strcat = Rs!Category
        End If
        Rs.MoveNext
    Wend
    
           If cnt + 4 >= 65 Then
                STFOOTER
                Print #a, Chr(12)
                cnt = 0
                pg = pg + 1
                STheader
            End If
            
    If Dblvalue > 0 Or DblTAxamt > 0 Then
       Print #a, Space(53) + String(82, "-")
       Print #a, Space(3) + Space(50) + Chr(27) & "E" + Padr("Sub Total", 23, " ") + Padl(INF(Dblvalue, 2), 16, " ") + Space(1) + Space(9) + Padl(IIf(DblTAxamt <> 0, INF(DblTAxamt, 2), Format(DblTAxamt, "#0.00")), 14, " ") + Space(20) + Chr(27) & "F"
       Print #a, Space(53) + String(82, "-")
       cnt = cnt + 2
    End If
    
    Print #a, Space(3) + String(132, "-")
    Print #a, Space(3) + Chr(27) & "E" + Space(50) + Padr("Grand Total", 23, " ") + Padl(INF(Gvalue, 2), 16, " ") + Space(1) + Space(9) + Padl(IIf(GTax <> 0, INF(GTax, 2), Format(GTax, "#0.00")), 14, " ") + Space(20) + Chr(27) & "F"
    Print #a, Space(3) + String(132, "-")
    cnt = cnt + 3
    
    QueryCat " SELECT   sum(b.value) matvalue,b.tax_per,itc=CASE when fa.state_code=b.state_code then 'Y' ELSE 'N'end,sum(b.taxamt) taxamt,category=case when b.tax_per>0 then 'F' else 'E' end  FROM rm_cINVHD a"
    QueryCat "LEFT OUTER JOIN FA_SLMAS fa ON fa.slcode=a.CUST_CODE "
    QueryCat "left outer join"
    QueryCat "(SELECT  TAX_PER,INV_NO,mas.DIVCODE,  SUM(isnull(VALUE,0)) VALUE,SUM(TAX_AMT) TAXAMT,pp.STATE_CODE FROM rm_cINVDT mas"
    QueryCat "left outer join ig_tax t on t.tax_code=mas.tax_code "
    QueryCat "left outer join pp_divmas pp ON pp.DIVCODE=mas.DIVCODE "
    QueryCat "GROUP BY INV_NO,TAX_PER,mas.DIVCODE,pp.STATE_CODE) as b on b.divcode=a.divcode and a.inv_no=b.inv_no"
    QueryCat " where a.divcode='" & Divcode & "' and month(date)='" & Format(MONTH(Me.Combo4.Text), "00") & "' and year(date)='" & Format(Year(Me.Combo4.Text), "0000") & "' AND DATE BETWEEN '" & Format(yfdate, "DD-MMM-YYYY") & "' AND '" & Format(yldate, "DD-MMM-YYYY") & "' "
    QueryCat "group by tax_per,fa.state_code,b.state_code"
    QueryCat "order by tax_per asc", sql

    If Rs.State = 1 Then Rs.Close
    Rs.Open sql, DB, adOpenKeyset, adLockReadOnly
    
    SNO = 0
    GTax = 0: Gvalue = 0
    
    If (Rs.RecordCount * 2 + cnt + 10) >= 65 Then
        Print #a, Chr(12)
        cnt = 0
     End If
    
    Print #a,
    Print #a,
    Print #a, Space(28) + Space(3) + String(79, "-")
    Print #a, Space(28) + Space(3) + Chr(27) & "E" + CENTRE("ABSTRACT", 79, " ") + Chr(27) & "F"
    STheaderABS
    gDblVat = 0: gDblCst = 0
          
     
    While Not Rs.EOF
        
        SNO = SNO + 1
        
        Strvalue = ""
        
        If Rs!tax_per > 0 And Trim(UCase(Rs!iTC)) = "Y" Then
            Strvalue = Padl(INF(Rs!Taxamt, 2), 16, " ") + Space(18)
            gDblVat = gDblVat + Rs!Taxamt
        ElseIf Rs!tax_per > 0 Then
            Strvalue = Space(18) + Padl(INF(Rs!Taxamt, 2), 16, " ") + Space(2)
            gDblCst = gDblCst + Rs!Taxamt
        Else
            Strvalue = Space(32)
        End If
        
        Print #a, Space(28) + Space(3) + Padl(SNO, 4, " ") + Space(4) + Padr(Rs!Category, 6, " ") + Space(1) + Padl(Format(Rs!tax_per, "#0.00"), 7, " ") + Space(2) + Padl(INF(Rs!matvalue, 2), 16, " ") + Space(2) + Strvalue
        Print #a,
        cnt = cnt + 2
        GTax = GTax + Rs!Taxamt
        Gvalue = Gvalue + Rs!matvalue
        
            If cnt >= 65 Then
                Print #a, Space(28) + Space(3) + String(79, "-")
                Print #a, Chr(12)
                pg = pg + 1
                cnt = 0
                STheaderABS
            End If
            
        Rs.MoveNext
        
    Wend
    
        Print #a, Space(28) + Space(3) + String(79, "-")
        Print #a, Space(28) + Space(3) + Chr(27) & "E" + Padl("Grand Total ", 22, " ") + Space(2) + Padl(INF(Gvalue, 2), 16, " ") + Space(2) + Padl(INF(gDblVat, 2), 16, " ") + Space(2) + Padl(INF(gDblCst, 2), 16, " ") + Chr(27) & "F"
        Print #a, Space(28) + Space(3) + String(79, "-")
        cnt = cnt + 3
        Print #a, Chr(12)
    Close #a
    a = FreeFile
'    Open "C:\CSSTINV.BAT" For Output As #a
'    Print #a, "CD\"
'    Print #a, "C:"
'    Print #a, "CD\"
'    Print #a, "type CSSINV.TXT> PRN"
'    Close
'    RPTV.txtfile = "C:\CSSTINV.TXT"
'    RPTV.Batfile = "C:\CSSTINV.BAT"
Call KALBATPROCESS("CSSTINV")

    Screen.MousePointer = 0
Exit Sub
Err1:
    If Err.Number = 3021 Then
        MsgBox "ERROR", vbInformation, head
        Close
        Exit Sub
    End If

End Sub

Private Sub STheader()
On Error GoTo header_Error
    Print #a,
    Print #a, Chr(18) & Space(3) & Chr(27) & "E" & CENTRE(divname, 132, " ")
    Print #a,
    Print #a, Chr(18) & Space(3); CENTRE("ANNEXURE - II : RAW MATERIAL SALES ", 132, " ")
    Print #a,
    Print #a, Space(3) + Padr("DETAILS OF RAW MATERIAL SALES VALUE DURING THE MONTH " + UCase(Format(Me.Combo4.Text, "MMM-yy")), 80, " ") & Space(10) & Padl("Dt: " & Format(Now, "dd/mm/yy") & Space(3) & "Pg. No.: " + CStr(pg), 42, " ") + Chr(27) & "F"
    
    Print #a, Space(3) + String(132, "-")
    Print #a, Space(3) + Chr(27) & "E" + Padl("S.No", 4, " ") + Space(1) + Padr("Name of the Buyer", 44, " ") + Space(1) + Padr("Buyer's", 12, " ") + Space(1) + Padr("Commodity", 9, " ") + Space(1) + Padl("Sales", 16, " ") + Space(1) + Padl("Rate of", 8, " ") + Space(1) + Padl("VAT/CST", 14, " ") + Space(1) + Padr("Category", 8, " ") + Space(1) + Padr("Division", 10, " ")
    Print #a, Space(3) + Padl(" ", 4, " ") + Space(1) + Padr(" ", 44, " ") + Space(1) + Padr("TIN NO", 12, " ") + Space(1) + Padr("Code", 9, " ") + Space(1) + Padl("Value (Rs.)", 16, " ") + Space(1) + Padl("Tax", 8, " ") + Space(1) + Padl("Paid (Rs.)", 14, " ") + Space(1) + Padr(" ", 8, " ") + Space(1) + Padr(" ", 10, " ") + Chr(27) & "F"
    Print #a, Space(3) + String(132, "-")
    cnt = cnt + 10
Exit Sub
header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header of Form Area", vbInformation, head

End Sub

Private Sub STFOOTER()
On Error GoTo STFOOTER_Error

Print #a, Space(3) + String(132, "-")

Exit Sub
STFOOTER_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure STFOOTER of Form repform", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub STheaderABS()
On Error GoTo STheaderABS_Error

On Error GoTo header_Error
    
    Print #a, Space(28) + Space(3) + String(79, "-")
    Print #a, Space(28) + Space(3) + Chr(27) & "E" + Padl("S.NO", 4, " ") + Space(1) + Padr("Category", 9, " ") + Space(1) + Padl("TAX %", 7, " ") + Space(2) + Padl("Sales Value", 16, " ") + Space(2) + Padl("VAT Paid", 16, " ") + Space(2) + Padl("CST Paid", 16, " ") + Chr(27) & "F"
    Print #a, Space(28) + Space(3) + String(79, "-")
    cnt = cnt + 3
Exit Sub
header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header of Form Area", vbInformation, head

Exit Sub
STheaderABS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure STheaderABS of Form repform", vbInformation, head
Screen.MousePointer = 0

End Sub


Public Sub New_Vat_Report_Detailedcry(fs As String, ts As String, Divcode As String, va As String, p As String, st As String, MON1 As String)
Dim Cnn As Connection

On Error GoTo New_Vat_Report_Detailedcry_Error
On Error Resume Next
    Set Cnn = New Connection
    Cnn.Open connectstring
    On Error Resume Next
    Cnn.Execute ("drop table tmp_rmi_vatrepdet")
    Cnn.Execute ("create table tmp_rmi_vatrepdet (vocdt datetime,slname varchar(100),city varchar(70),tinno varchar(20),invno varchar(20),invdt datetime,assvalue numeric(18,2),taxvalue numeric(12,2),totvalue numeric(18,2),vatper numeric(9,2))")
    per = val(p)
    Set RSV = New Recordset
    If st = "W" Then
       If p <> "" Then
             RSV.Open " select distinct a.PJDT,a.BILLNO,a.billdt,a.supcd,b.slname,b.city,b.tinno,a.tax_code,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                      " ,a.vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,isnull(sum(a.PJAMT),0) AS puramt,a.divcode,e.catname," & _
                      " c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e ,rm_arrival f " & _
                      " Where a.LOTNO = f.LOTNO And a.LOTDT = f.LOTDT And a.Divcode = f.Divcode And a.supcd = f.supcd And a.arrno = f.arrno and a.supcd=b.slcode and a.divcode=c.divcode " & _
                      "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code=(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                      "AND OPFLG<>'Y' and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper>" & per & "  and pjno is not null " & _
                      "group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd,a.pjdt,b.city,a.BILLNO,a.BILLDT,a.tax_code,e.catname", Cnn, adOpenStatic
        Else
             RSV.Open " select distinct a.PJDT,a.BILLNO,a.billdt,a.supcd,b.slname,b.city,b.tinno,a.tax_code,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                  " ,a.vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,isnull(sum(a.PJAMT),0) AS puramt,a.divcode,e.catname," & _
                  " c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e ,rm_arrival f " & _
                  " Where a.LOTNO = f.LOTNO And a.LOTDT = f.LOTDT And a.Divcode = f.Divcode And a.supcd = f.supcd And a.arrno = f.arrno and a.supcd=b.slcode and a.divcode=c.divcode " & _
                  "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code=(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                  "AND OPFLG<>'Y' and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                  "group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd,a.pjdt,b.city,a.BILLNO,a.BILLDT,a.tax_code,e.catname", Cnn, adOpenStatic
        
        End If
    ElseIf st = "O" Then
        If p <> "" Then
            RSV.Open "select distinct a.PJDT,a.BILLNO,a.billdt,a.supcd,b.slname,b.city,b.tinno,a.tax_code,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                    ",a.vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,isnull(sum(a.PJAMT),0) AS puramt,a.divcode,e.catname," & _
                    "c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e ,rm_arrival f " & _
                    " Where a.LOTNO = f.LOTNO And a.LOTDT = f.LOTDT And a.Divcode = f.Divcode And a.supcd = f.supcd And a.arrno = f.arrno and a.supcd=b.slcode and a.divcode=c.divcode " & _
                    "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code not in(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                    "AND OPFLG<>'Y' and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                    "group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd,a.pjdt,b.city,a.BILLNO,a.BILLDT,a.tax_code,e.catname", Cnn, adOpenStatic
        Else
            RSV.Open "select distinct a.PJDT,a.BILLNO,a.billdt,a.supcd,b.slname,b.city,b.tinno,a.tax_code,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt" & _
                    ",a.vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,isnull(sum(a.PJAMT),0) AS puramt,a.divcode,e.catname," & _
                    "c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e ,rm_arrival f " & _
                    " Where a.LOTNO = f.LOTNO And a.LOTDT = f.LOTDT And a.Divcode = f.Divcode And a.supcd = f.supcd And a.arrno = f.arrno and a.supcd=b.slcode and a.divcode=c.divcode " & _
                    "and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code not in(select state_code from pp_divmas where divcode='" & Divcode & "')" & _
                    "AND OPFLG<>'Y' and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.vatper=" & per & "  and pjno is not null " & _
                    "group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd,a.pjdt,b.city,a.BILLNO,a.BILLDT,a.tax_code,e.catname", Cnn, adOpenStatic
        
        End If
    Else
        If p <> "" Then
            RSV.Open "select distinct a.PJDT,a.BILLNO,a.billdt,a.supcd,b.slname,b.city,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt," & _
                    "isnull(a.vatper,0) as vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,isnull(sum(a.PJAMT),0) AS puramt,a.divcode,c.abbr," & _
                    "e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e,rm_arrival f where a.lotno=f.lotno " & _
                    "and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=b.slcode and a.divcode= " & _
                    "c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and  a.LOTDT Between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode=" & _
                    "'" & Divcode & "' and a.vatper>" & per & "  AND OPFLG<>'Y'  and pjno is not null group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd,a.pjdt,b.city,a.BILLNO,a.BILLDT", DB, adOpenStatic
        Else
            RSV.Open "select distinct a.PJDT,a.BILLNO,a.billdt,a.supcd,b.slname,b.city,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt," & _
                    "isnull(a.vatper,0) as vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,isnull(sum(a.PJAMT),0) AS puramt,a.divcode,c.abbr," & _
                    "e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e,rm_arrival f where a.lotno=f.lotno " & _
                    "and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=b.slcode and a.divcode= " & _
                    "c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and  a.LOTDT Between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode=" & _
                    "'" & Divcode & "' AND OPFLG<>'Y'  and pjno is not null group by a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd,a.pjdt,b.city,a.BILLNO,a.BILLDT", DB, adOpenStatic
        
        End If
    End If
    If st <> "A" Then
        If per = 0 Then
            MsgBox "Select Tax% from the list", vbInformation, head
            Exit Sub
        End If
    End If
            
    If RSV.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation, head
        Exit Sub
    End If
            
    If RSV.RecordCount > 0 Then
        Do While Not RSV.EOF
            Dim dblVat, dblCst As Double
            dblVat = IIf(IsNull(RSV!Vatamt), 0, RSV!Vatamt)
            dblCst = IIf(IsNull(RSV!CStamt), 0, RSV!CStamt)

            'Print #a, Space(1) & Padl(Format(RSV!pjdt, "dd/MM/YY"), 10, " ") & Space(2) + Padr(RSV("slname"), 32, " ") + Space(2) & Padr(RSV!CITY, 12, "") & Space(2) + Padr(RSV("Tinno"), 12, " ") & Space(2) & Padr(RSV!BillNo, 8, "") & Space(2) & Padr(Format(RSV!BILLDT, "dd/MM/yy"), 10, "") & Space(2) & Padl(INF(Round(RSV("pjamt"), 0), 2), 12, " ") & Space(2) + Padl(INF(dblVat + dblCst, 2), 9, "") & Space(2) & Padl(INF((Round(RSV("pjamt"), 0) + dblVat + dblCst), 2), 12, " ")
            Cnn.Execute "insert into tmp_rmi_vatrepdet(vocdt,slname,city,tinno,invno,invdt,assvalue,taxvalue,totvalue,vatper) values('" & Format(RSV!pjdt, "yyyy-mm-dd") & "','" & RSV("slname") & "','" & RSV!CITY & "', '" & RSV("Tinno") & "','" & RSV!BillNo & "','" & Format(RSV!BILLDT, "yyyy-mm-dd") & "'," & Round(RSV("pjamt"), 0) & "," & dblVat + dblCst & "," & Round(RSV("pjamt"), 0) + dblVat + dblCst & "," & RSV("vatper") & ")"
            RSV.MoveNext
        Loop
    End If
    RSV.MoveFirst
    If st <> "A" Then
        taxcode = RSV!TAX_CODE
        Set Cnn = New Connection
        Cnn.Open connectstring

        Set RSS = New Recordset
        RSS.Open "select * from ig_tax where tax_code='" & taxcode & "'", Cnn, adOpenStatic
        rephead = "Raw Material Receipts / " & RSS("description") & " Report For " & MON1
    Else
        rephead = "Details of Purchases / Receipts during the month " & MON1
    End If
    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rep_per_vatrepdet.rpt"
    FrmRpt.RptHead = 1
    parameter1 = divname
    FrmRpt.Show
    
Exit Sub
New_Vat_Report_Detailedcry_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure New_Vat_Report_Detailedcry of Form repform"
Screen.MousePointer = 0
End Sub
Public Sub New_Vat_Report_Detailedcry_abs(fs As String, ts As String, Divcode As String, va As String, p As String, st As String, MON1 As String)
Dim Cnn As Connection

On Error GoTo New_Vat_Report_Detailedcry_Error
On Error Resume Next
    Set Cnn = New Connection
    Cnn.Open connectstring
    On Error Resume Next
    Cnn.Execute ("drop table tmp_rmi_vatrepabs")
    Cnn.Execute ("create table tmp_rmi_vatrepabs(slname varchar(100),comm_code varchar(20),tinno varchar(20),vatamt numeric(9,2),pjamt numeric(15,2),dbamt numeric(9,2),abbr varchar(15),vcatcd varchar(1),vatper numeric(9,2),vocdt datetime,invno varchar(20),invdt datetime)")
    per = val(p)
    Set RSV = New Recordset
    If st = "W" Then
        If p <> "" Then
            RSV.Open "select distinct a.lotdt,a.billno,a.billdt,a.supcd,b.slname,a.tax_code,b.tinno,isnull(a.vatamt,0) as vatamt,isnull(a.cstamt,0) as cstamt,a.vatper, " & _
                    "sum(a.assvalue) as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode,e.catname,c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d, " & _
                    "rm_cat e,rm_arrival f where a.lotno=f.lotno and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=f.supcd and a.arrno=f.arrno and a.supcd=b.slcode and a.divcode=c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code=   " & _
                    "(select state_code from pp_divmas where divcode='" & Divcode & "')and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' " & _
                    "and a.vatper=" & per & " AND OPFLG<>'Y' and pjno is not null group by a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.vatamt,a.cstamt,a.pjamt,a.tax_code", DB, adOpenStatic
        Else
            RSV.Open "select distinct a.lotdt,a.billno,a.billdt,a.supcd,b.slname,a.tax_code,b.tinno,isnull(a.vatamt,0) as vatamt,isnull(a.cstamt,0) as cstamt,a.vatper, " & _
                    "sum(a.assvalue) as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode,e.catname,c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d, " & _
                    "rm_cat e,rm_arrival f where a.lotno=f.lotno and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=f.supcd and a.arrno=f.arrno and a.supcd=b.slcode and a.divcode=c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code=   " & _
                    "(select state_code from pp_divmas where divcode='" & Divcode & "')and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' " & _
                    "AND OPFLG<>'Y' and pjno is not null group by a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.vatamt,a.cstamt,a.pjamt,a.tax_code", DB, adOpenStatic
        
        End If
    ElseIf st = "O" Then
        If p <> "" Then
            RSV.Open "select distinct a.lotdt,a.billno,a.billdt,a.tax_code,a.supcd,b.slname,b.tinno,isnull(a.vatamt,0) as vatamt,isnull(a.cstamt,0) as cstamt,a.vatper, " & _
                    "a.assvalue as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode,e.catname,c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d, " & _
                    "rm_cat e,rm_arrival f where a.lotno=f.lotno and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=f.supcd and a.arrno=f.arrno and a.supcd=b.slcode and a.divcode=c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code not in   " & _
                    "(select state_code from pp_divmas where divcode='" & Divcode & "')and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' " & _
                    "and a.vatper=" & per & " AND OPFLG<>'Y'  and pjno is not null group by a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.vatamt,a.cstamt,a.pjamt,a.tax_code,a.assvalue ", DB, adOpenStatic
        Else
            RSV.Open "select distinct a.lotdt,a.billno,a.billdt,a.tax_code,a.supcd,b.slname,b.tinno,isnull(a.vatamt,0) as vatamt,isnull(a.cstamt,0) as cstamt,a.vatper, " & _
                    "a.assvalue as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode,e.catname,c.abbr,e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d, " & _
                    "rm_cat e,rm_arrival f where a.lotno=f.lotno and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=f.supcd and a.arrno=f.arrno and a.supcd=b.slcode and a.divcode=c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and b.state_code not in   " & _
                    "(select state_code from pp_divmas where divcode='" & Divcode & "')and a.lotdt between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' " & _
                    "AND OPFLG<>'Y'  and pjno is not null group by a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,e.catname,a.vcatcd,a.vatamt,a.cstamt,a.pjamt,a.tax_code,a.assvalue ", DB, adOpenStatic
        
        End If
    Else
        If p <> "" Then
                    RSV.Open "select distinct a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt," & _
                            "isnull(a.vatper,0) as vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode,c.abbr," & _
                            "e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e,rm_arrival f where a.lotno=f.lotno " & _
                            "and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=b.slcode and a.divcode= " & _
                            "c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and  a.LOTDT Between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode=" & _
                            "'" & Divcode & "'  and a.vatper=" & per & " AND OPFLG<>'Y'  and pjno is not null group by a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd order by " & _
                            "a.vcatcd,a.vatper,b.slname", DB, adOpenStatic
    
        Else
                    RSV.Open "select distinct a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,isnull(sum(a.vatamt),0) as vatamt,isnull(sum(a.cstamt),0) as cstamt," & _
                            "isnull(a.vatper,0) as vatper,isnull(sum(a.assvalue),0) as pjamt,isnull(sum(a.dbamt),0) as dbamt,a.divcode,c.abbr," & _
                            "e.comm_code,a.vcatcd from rm_lot a,fa_slmas b,pp_divmas c,rm_var d,rm_cat e,rm_arrival f where a.lotno=f.lotno " & _
                            "and a.lotdt=f.lotdt and a.divcode =f.divcode and a.supcd=b.slcode and a.divcode= " & _
                            "c.divcode and a.varcode=d.varcode and d.catcd=e.catcd and  a.LOTDT Between '" & Format(fs, "YYYY-MM-DD") & "' AND '" & Format(ts, "YYYY-MM-DD") & "' and a.divcode=" & _
                            "'" & Divcode & "' AND OPFLG<>'Y'  and pjno is not null group by a.lotdt,a.billno,a.billdt,a.supcd,b.slname,b.tinno,a.vatper,a.divcode,c.abbr,e.comm_code,a.vcatcd order by " & _
                            "a.vcatcd,a.vatper,b.slname", DB, adOpenStatic
        
        End If
    End If
    If st <> "A" Then
        If per = 0 Then
            MsgBox "Select Tax% from the list", vbInformation, head
            Exit Sub
        End If
    End If
            
    If RSV.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation, head
        Exit Sub
    End If
            
    If RSV.RecordCount > 0 Then
        Do While Not RSV.EOF
            Dim dblVat, dblCst As Double
            Cnn.Execute "insert into tmp_rmi_vatrepabs(slname,comm_code,tinno,vatamt,pjamt,dbamt,abbr,vcatcd,vatper,vocdt,invno,invdt) values('" & RSV("slname") & "','" & IIf(IsNull(RSV("comm_code")), "", RSV("comm_code")) & "', '" & RSV("Tinno") & "'," & RSV!Vatamt & "," & RSV!pjamt & "," & RSV!DBamt & ",'" & RSV("abbr") & "','" & RSV("vcatcd") & "'," & RSV!vatper & ",'" & Format(RSV!LOTDT, "yyyy-mm-dd") & "','" & (RSV!BillNo) & "','" & Format(RSV!BILLDT, "yyyy-mm-dd") & "')"
            RSV.MoveNext
        Loop
    End If
    RSV.MoveFirst
    If st <> "A" Then
        taxcode = RSV!TAX_CODE
        Set Cnn = New Connection
        Cnn.Open connectstring

        Set RSS = New Recordset
        RSS.Open "select * from ig_tax where tax_code='" & taxcode & "'", Cnn, adOpenStatic
        rephead = "Raw Material Receipts / " & RSS("description") & " Report For " & MON1
    Else
        rephead = "Details of Purchases / Receipts during the month " & MON1
    End If
    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rep_per_vatrepabs.rpt"
    FrmRpt.RptHead = 1
    parameter1 = divname
    FrmRpt.Show
    
Exit Sub
New_Vat_Report_Detailedcry_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure New_Vat_Report_Detailedcry of Form repform"
Screen.MousePointer = 0
End Sub


Public Sub VPCRY(a As String, B As String, c As String, chk As Integer, Category As String, tpe As String, footerstr As String)
    S1 = a
    s2 = B
    s3 = c
    check = chk
    Set Cnn = New Connection
    Cnn.Provider = "MSDATASHAPE"
    Cnn.Open connectstring
    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0
    On Error Resume Next
    Cnn.Execute "DROP TABLE TMP_RMI_VARPUR"
    vrectype = Trim(Left(tpe, 3))
    If vrectype = "A" Then
        tmptypestr = "a.LotType"
    Else
        tmptypestr = "a.TransferType"
    End If
    If UCase(CustID) = "SKS" Then
        SQLCond = " round(favaourablewgt,3) "
    Else
        SQLCond = " round(netwt,3) "
    End If
    Set RS2 = New Recordset
    
    
'    If vrectype <> "ALL" Then
'        If chk = 1 Then
'            If c = "A" Then
'                'RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(netwt,2) as ratekgs,ratekg, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=(netwt*ratekg),value1=(netwt*round((isnull(ratecy,0)/355.6187),2)) from rm_lot a,rm_var b,rm_area c  where a.catcd=b.catcd and a.varcode=b.varcode and a.areacd*=c.areacode and " & tmptypestr & " = '" & vrectype & "' and a.divcode='" & Divcode & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'                RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end)," & SQLCond & " as ratekgs,ratekg, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=A.TOTLANDCOST,value1=(" & SQLCond & "*round((isnull(ratecy,0)/355.6187),2)),a.Ratecy,a.plotno,fa.slcode,fa.slname from rm_lot a inner join rm_var b on a.catcd=b.catcd and a.varcode=b.varcode left join rm_area c on a.areacd = c.areacode inner join fa_slmas fa on a.supcd=fa.slcode where  " & tmptypestr & " = '" & vrectype & "' and a.divcode='" & Divcode & "' and a.arrdt Between '" & Format(S1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'            Else
'                'RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(netwt,2) as ratekgs,ratekg, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=(netwt*ratekg),value1=(netwt*round((isnull(ratecy,0)/355.6187),2)) from rm_lot a,rm_var b,rm_area c  where a.catcd='" & C & "' and a.catcd=b.catcd and a.varcode=b.varcode and " & tmptypestr & " = '" & vrectype & "' and a.areacd*=c.areacode and a.divcode='" & Divcode & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'                RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end)," & SQLCond & " as ratekgs,ratekg, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=A.TOTLANDCOST,value1=(" & SQLCond & "*round((isnull(ratecy,0)/355.6187),2)),a.Ratecy,a.plotno,fa.slcode,fa.slname from rm_lot a inner join rm_var b on a.catcd=b.catcd and a.varcode=b.varcode left join rm_area c on a.areacd = c.areacode inner join fa_slmas fa on a.supcd=fa.slcode  where a.catcd='" & c & "' and " & tmptypestr & " = '" & vrectype & "' and a.divcode='" & Divcode & "' and a.arrdt Between '" & Format(S1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'            End If
'        Else
'            RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno,ratekg, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end)," & SQLCond & " as ratekgs, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=A.TOTLANDCOST,value1=(" & SQLCond & "*round((isnull(ratecy,0)/355.6187),2)),a.Ratecy,a.plotno,fa.slcode,fa.slname from rm_lot a inner join rm_var b on a.varcode=b.varcode and a.catcd = b.catcd  left join rm_area c on a.areacd = c.areacode inner join fa_slmas fa on a.supcd=fa.slcode where " & tmptypestr & " = '" & vrectype & "' and a.divcode='" & Divcode & "' and a.arrdt Between '" & Format(S1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'        End If
'    Else
'            RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno,ratekg, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end)," & SQLCond & " as ratekgs, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=A.TOTLANDCOST,value1=(" & SQLCond & "*round((isnull(ratecy,0)/355.6187),2)),a.Ratecy,a.plotno,fa.slcode,fa.slname from rm_lot a inner join rm_var b on a.varcode=b.varcode and a.catcd = b.catcd left join rm_area c on a.areacd = c.areacode inner join fa_slmas fa on a.supcd=fa.slcode where a.divcode='" & Divcode & "' and (a.catcd='" & c & "' or '" & c & "'='A')  and a.arrdt Between '" & Format(S1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'    End If
    
    ' Commented on 06-09-25
    
     RS2.Open " exec Ksp_receiptlistvariety '" & Divcode & "','" & Format(S1, "yyyy-mm-dd") & "', '" & Format(s2, "yyyy-mm-dd") & "','" & chk & "','" & c & "','" & vrectype & "'  ", Cnn, adOpenStatic
    
'    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_varpur.rpt"
'    FrmRpt.RptHead = 1
'    rephead = Format(s1, "dd/mm/yy") & " To " & Format(s2, "dd/mm/yy")
'    parameter1 = DIVNAME
'    FrmRpt.Show
'    Screen.MousePointer = 0

  Dim clsCryRpt As New clsCrystal
  If UCase(CustID) = "ASM" Then
      Set clsCryRpt.cryRept = Cry_RMI_PurVariety_New
  Else
    Set clsCryRpt.cryRept = Cry_Varietywise_Purchase 'Cry_RMI_PurVariety
  End If
  
  clsCryRpt.CrystalPrint
                
  crr.Reset
  crr.Connect = connectstring
  crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

  crr.ParameterFields(0) = "@divname;" & divname & ""
  crr.ParameterFields(1) = "@UnitName;" & PrUnitName & ""
  crr.ReportTitle = Format(S1, "dd/mm/yy") & " To " & Format(s2, "dd/mm/yy")

  crr.WindowShowPrintSetupBtn = True
  crr.WindowShowSearchBtn = True
  crr.WindowState = crptMaximized
  SendKeys "{ENTER}"
  crr.Action = 1
  crr.PrinterCopies = 1
  Screen.MousePointer = 0
  
End Sub


Public Sub footer_ISSUE()
                Dim monfdate As String
      
      mfrmdate = Format(DTPicker3.value, "yyyy-MM-dd")
      monfdate = Left(mfrmdate, 8) + "01"
      
     
'      ed = Mid$(DTPicker3.value, 4, 2)
'      ed1 = Mid$(DTPicker3.value, 7, 7)
'      U = Format("01" & "/" & ed & "/" & ed1, "dd/mm/yyyy")

      
      sRecProduct = ""
      Str = ""
      Str = LocalIP 'Add
      Str = LTrim(LocalIP) 'add
                        
            DB.Execute "Delete From  CountCodeTemp where Divcode = '" & Divcode & "' and SystemIP = '" & LocalIP & "'"
   
                   For I = 1 To Lv_PType.ListItems.Count
                   If Lv_PType.ListItems.Item(I).Checked Then
                sRecProduct = Lv_PType.ListItems(I).SubItems(1)
                     'sRecProduct = Trim(Lv_PType.ListItems(i).SubItems(1))
                     sql = "insert into CountCodeTemp values( '" & Divcode & "', '" & sRecProduct & "','" & LocalIP & "')"
                     DB.Execute sql
                End If
            Next I
           
            If Len(sRecProduct) = 0 Then
                MsgBox "Select Any Product", vbInformation
                Exit Sub
            End If
           Dim clsCR_MonIssueList_Cnt As New clsCrystal
           If (CustID = "SOUTHERN") Then
           Set clsCR_MonIssueList_Cnt.cryRept = Cry_IssReg_CountWise 'P_MonthlIssueList_Countwise_Southern
           Else
           Set clsCR_MonIssueList_Cnt.cryRept = P_MonthlIssueList_Countwise
           End If
           clsCR_MonIssueList_Cnt.CrystalPrint
                               
           crr.Reset
           crr.Connect = connectstring
           crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
               
           crr.ParameterFields(0) = "@Divcode;" & Divcode & ""
           crr.ParameterFields(1) = "@MFDate;" & monfdate
           crr.ParameterFields(2) = "@SystemIP;" & LocalIP & ""
                  
           crr.WindowShowPrintSetupBtn = True
           crr.WindowShowSearchBtn = True
           crr.WindowState = crptMaximized
           SendKeys "{ENTER}"
           crr.Action = 1
           crr.PrinterCopies = 1
           Screen.MousePointer = 0
Exit Sub
End Sub


Private Sub arrivalregister()
On Error GoTo BUTTON_Click_Error
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant



   If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then

   L_God = ""
     L_aread_God = ""
     divcount = 0
     
           For I = 1 To List_div.ListItems.Count
        
                If List_div.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(List_div.ListItems(I).SubItems(1))
                    If L_God <> "" Then
                        L_God = L_God + "," + "" + Trim(sRecCount) + ""
                         L_aread_God = L_aread_God + "," + "" + Trim(sRecCount) + ""
                         divcount = divcount + 1
                    Else
                        L_God = "" + Trim(sRecCount) + ""
                        L_aread_God = "" + Trim(sRecCount) + ""
                        divcount = divcount + 1
                    End If
                End If
            Next
              
              
              
        If L_God = "" Then
            MsgBox "Please Select Any Division ", vbInformation, head
            Exit Sub
        Else
            If divcount > 1 Then
           ' L_God = "'" + L_God + "'"
            End If
        End If
    
End If

CustCode = "": custname = "": ContNo = "": sortname = ""
'If Val(Myxl.Application.Version) >= 8 Then
     '   Set osheet = Myxl.ActiveSheet
    'Else
      '  Set osheet = Myxl
    'End If
     'Set osheet = Myxl.ActiveSheet
 tmpFile = "Arrival List Datewise"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
'If Check1.value Then
'Set oExcel = CreateObject("ket.Application")
'Else '
Set oExcel = CreateObject("Excel.Application")

'End If
Set oBook = oExcel.Workbooks.ADD
Set oSheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set oSheet = oBook.Worksheets(1)
   oExcel.Visible = True
        
        
        
     


        Dim fd As String
        Dim td As String

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select DIV_PRINTNAME ,DIV_UNITNAME from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        oSheet.Cells(1, 5).value = Rs(0)
        oSheet.Range("A1", "O1").MergeCells = True
         oSheet.Range("A1", "O1").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        oSheet.Cells(2, 5).value = Rs(1)
        oSheet.Range("A2", "O2").MergeCells = True
         oSheet.Range("A2", "O2").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A2").Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With

      
        oSheet.Name = "Arrival List"
        
                
        DataCombo1.Text = DTPicker3.value ''''
            DataCombo2.Text = DTPicker2.value ''''
            
            a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
            B = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
            
            If CDate(a) > CDate(B) Then
                MsgBox "From Date should not be greater than To Date", vbInformation
                DataCombo1.SetFocus
                DTPicker3.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            If CDate(B) < CDate(a) Then
                MsgBox "To Date should not be less than From Date", vbInformation
                DataCombo1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
      
        oSheet.Cells(3, 2).value = "Arrival List from  " & Format(Trim(DataCombo1.Text), "dd/mm/yyyy") & " to " & Format(Trim(DataCombo2.Text), "dd/mm/yyyy")
        oSheet.Range("A3", "O3").HorizontalAlignment = Excel.xlLeft
        oSheet.Range("A3", "O3").MergeCells = True
        With oSheet.Range("A3", "O3").Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        


        

        Set Rst = New Recordset
        
        Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='ArrDate' order by sno ", DB, adOpenStatic

        I = 1
        Dim TotCol As Integer
        TotCol = 0
        Do While Not Rst.EOF
            oSheet.Cells(5, I).value = Rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        Rst.MoveNext
        Loop
        
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "S" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                oSheet.Range(lr, HR).Columns.AutoFit
                oSheet.Range(lr, HR).Rows.AutoFit


        Set RsDiv = New Recordset


    If RsDiv.State = adStateOpen Then RsDiv.Close
    RsDiv.Open " select DIV_PRINTNAME,DIV_UNITNAME  from PP_DIVMAS where divcode='" & Divcode & "'", DB, adOpenKeyset, adLockReadOnly
    
    
    If RsDiv.EOF = False Then
        div_printname = RsDiv("DIV_PRINTNAME")
        Div_UnitName = RsDiv("DIV_UNITNAME")
    End If
    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
    DB.Execute "delete from RPTArrivalDetails"
'
'
'    DB.Execute " set arithabort off "



    
     Set Rs = New Recordset
    
       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
       If UCase(Trim(CustID)) <> "KALPATHARU" Then
             If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
                DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & L_God & "' , '" & a & "' , '" & B & "','A','A' "
             Else
                DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & a & "' , '" & B & "','A','A' "
             End If
       Else
            DB.Execute "insert into RPTArrivalDetails(arrdate,lotno,lotdt,plotno,quantity,lrno,freight,netwt,prno,carname,Slname,areaname,LORRYNOS,VARCODE,VARNAME,Agent_Name,DIV_PRINTNAME,DIV_UNITNAME,arrno)  exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & a & "' , '" & B & "','A','A' "
       End If
       
       If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
            Rs.Open "select *from VW_RM_ArrivalList order by cast(adate as datetime),arrno desc", DB
       Else
            Rs.Open "select *from VW_RM_ArrivalList order by cast(adate as datetime),lotno desc", DB
       End If
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 1
            
            oSheet.Cells(6, i1).CopyFromRecordset Rs
                


                
                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                
                oSheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                

                
                m_ROW = oSheet.UsedRange.Rows.Count + 1
                MR = "S" & m_ROW

                
                            m_ROW = oSheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "S" & m_ROW
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
'                      SheetName = ActiveSheet.name
'                        MsgBox (SheetName)
'                        Dim r As Range
'                        Set r = oSheet.Cells.find("Designation")
'                        MsgBox (r.Address)
'                        Dim a1() As String
'                        a1 = Split(r.Address, "$")
'                        MsgBox (a1(1))
'                        MsgBox (a1(2))
                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
'                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
                
                m_ROW = oSheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "S" & m_ROW
               
                

        
                
                With oSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                
                      '   Max = Max + 1
                                 m_ROW = oSheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "S" & m_ROW - 1
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
                        
                            Dim gtotal, gabstotal As String
                         If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Then
                            oSheet.Cells(Max - 1, 1) = ""
                            oSheet.Cells(Max - 1, 5) = "Grand Total."
                            gtotal = Max - 1
                         Else
                            oSheet.Cells(Max - 1, 1) = ""
                            oSheet.Cells(Max - 1, 5) = ""
                         End If
                         
                        
                
                
             '''''''-----------------------------    Abstract------------------------
                
                
'On Error Resume Next
        

         m_ROW = m_ROW + 5
        
      If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Then
             oSheet.Range("C" + CStr(m_ROW), "J" + CStr(m_ROW)).HorizontalAlignment = Excel.xlCenter
            oSheet.Range("C" + CStr(m_ROW), "J" + CStr(m_ROW)).MergeCells = True
            With oSheet.Range("C" + CStr(m_ROW), "J" + CStr(m_ROW)).Font
            .Bold = True
            .Size = 14
            .Color = vbBlue
            End With
          
                    Set Rst = New Recordset
    
            Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='ArrDateAbs' order by sno ", DB, adOpenStatic
            m_ROW = m_ROW + 1
            I = 3
          
            TotCol = 0
            Do While Not Rst.EOF
                oSheet.Cells(m_ROW, I).value = Trim(CStr(Rst(0)))
               ' oSheet.Cells(6, i).CopyFromRecordset Rst
    
                TotCol = TotCol + 1
                I = I + 1
            Rst.MoveNext
            Loop
        
      Else
        oSheet.Cells(m_ROW, 5).value = "Arrival List Abstract"
        oSheet.Range("A" + CStr(m_ROW), "H" + CStr(m_ROW)).HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A" + CStr(m_ROW), "H" + CStr(m_ROW)).MergeCells = True
        With oSheet.Range("A" + CStr(m_ROW), "H" + CStr(m_ROW)).Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        


        

        Set Rst = New Recordset

        Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='ArrDateAbs' order by sno ", DB, adOpenStatic
        m_ROW = m_ROW + 1
        I = 2
      
        TotCol = 0
        Do While Not Rst.EOF
            oSheet.Cells(m_ROW, I).value = Trim(CStr(Rst(0)))
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        Rst.MoveNext
        Loop
        
   End If
        
    
        
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "I" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                oSheet.Range(lr, HR).Columns.AutoFit
                oSheet.Range(lr, HR).Rows.AutoFit


        Set RsDiv = New Recordset


    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
'    DB.Execute "delete from RPTArrivalDetails"
''
''
''    DB.Execute " set arithabort off "
'
    Set Rs = New Recordset
'
'       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
'       DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & a & "' , '" & B & "' "
'
'
       Rs.Open "select *from VW_RM_ArrivalListAbs order by sno ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
           If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Then
            i1 = 3
           Else
            i1 = 2
           End If
            
            oSheet.Cells(m_ROW + 1, i1).CopyFromRecordset Rs
                


                
                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                
                oSheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                

                
                m_ROW = oSheet.UsedRange.Rows.Count + 1
                MR = "S" & m_ROW

                
                            m_ROW = oSheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "S" & m_ROW
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
'                      SheetName = ActiveSheet.name
'                        MsgBox (SheetName)
'                        Dim r As Range
'                        Set r = oSheet.Cells.find("Designation")
'                        MsgBox (r.Address)
'                        Dim a1() As String
'                        a1 = Split(r.Address, "$")
'                        MsgBox (a1(1))
'                        MsgBox (a1(2))
                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
'                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
                
                m_ROW = oSheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "S" & m_ROW
                
                
 
'                For Each cell In Range("b2:b6")
'                    If InStr(cell.value, "Sub Total") > 0 Then
'                        cell.Offset(0, 1).value = ""
'                    End If
'                Next cell
                            
                
                With oSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                
                      '   Max = Max + 1
                                 m_ROW = oSheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "S" & m_ROW - 1
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
                        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
                            oSheet.Cells(Max - 1, 3) = ""
                            gabstotal = Max - 1
                        Else
                            oSheet.Cells(Max - 1, 2) = ""
                            
                        End If
                        
                
                
                
                
                
                
                
                
                
                
                
          iii = 7
   ' Workbooks(tmppath1).Sheets("Arrival List").Range("C1:C33").Copy
                Dim cell As Range
'
'       If InStr(Range("C2").value, "Dr.") > 0 Then
'        Range("C2").value = "Doctor"
'       End If
'                For Each cell In Range("C:C" & m_ROW)
'                    If InStr(cell.value, "Sub Tot") > 0 Then
'                     '   osheet.Cells(Max, 12) = Trim(Rs.Fields("BankName"))
'                        cell.Font.Bold = True
'                         lr = "A" & iii
'                        HR = "R" & iii
'                        With osheet.Range(lr, HR).Font
'                            .Bold = True
'                            .Size = 12
'                            .Color = vbGrayed
'                        End With
'                        'osheet.Cells(0, 1).EntireRow.Font.Bold = True
'
'                    End If
'                    iii = iii + 1
'                Next cell

 If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
    co = 5
 Else
    co = 3
 End If

For I = 6 To m_ROW
            If InStr(Trim(oSheet.Cells(I, co)), "Sub Tot") > 0 Then
                  
                        oSheet.Cells(I, 1) = ""
                        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
                           ' oSheet.Cells(I, 5) = ""
                        Else
                            oSheet.Cells(I, 4) = ""
                        End If
                         lr = "A" & I
                        HR = "S" & I
                        With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 12
                            .Color = vbGrayed
                        End With
                        'osheet.Cells(0, 1).EntireRow.Font.Bold = True

             End If
Next I
                
                
                
                If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
                
                            lr = "A" & gtotal
                            HR = "S" & gtotal
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 10
                            .Color = vbBlue
                        End With
                        
                        lr = "A" & gabstotal
                            HR = "S" & gabstotal
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 10
                            .Color = vbBlue
                        End With
                End If
                        
                
                
              MsgBox "Excel File Downloaded Successfully", vbInformation, head
                
                
               ' Myxl.Application.Visible = True
                Set oBook = Nothing
                Set oSheet = Nothing
                Set Myxl = Nothing
                Set oExcel = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
'                Else
'                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
'                'CmbVtype.SetFocus
'                Exit Sub
          '  End If
  
    Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
  
End Sub





Private Sub load_DivisionChkListbox()
On Error GoTo DataCombo1_Change_Error

    Dim li As ListItem
    Set temprs = New Recordset
 
   
    
       temprs.Open " Select Distinct divcode  type, divname as description,abbr as abbreviation from pp_divmas Order by type asc", DB, adOpenStatic, adLockBatchOptimistic
   
  
    List_div.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = List_div.ListItems.ADD(, , temprs!Description)
            List_div.ListItems(List_div.ListItems.Count).ListSubItems.ADD , , temprs!Type
            List_div.ListItems(List_div.ListItems.Count).ListSubItems.ADD , , temprs!abbreviation
            temprs.MoveNext
        Loop
    End If
    temprs.Close
            
    Check2.value = 1
    Call Check2_Click
            

    intervalMinutes = -1
    
    
 Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Rec list of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
    
End Sub




Private Sub Text1_Change()
On Error GoTo err_lvcustclick
intervalMinutes = -1
Dim itm3 As ListItem

Dim itmX As ListView
'itmX = LT_Emp.FindItemWithText(TextBox1.Text, False, Trim(UCase(txt_Cntsearch.Text)))

    For I = 1 To List_div.ListItems.Count
        If InStr(1, List_div.ListItems(I).Text, Trim(Text1.Text), vbTextCompare) > 0 Then
                List_div.ListItems(I).Selected = True
                List_div.ListItems(I).Bold = True
                List_div.ListItems(I).ForeColor = vbBlue
                List_div.ListItems(I).EnsureVisible
                Exit For
        
        Else
                List_div.ListItems(I).Bold = False
                List_div.ListItems(I).ForeColor = vbBlack
        End If
    Next
  Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)

End Sub


Public Sub IssueAbstract(a As String, B As String, c As String, chk As Integer, Category As String, tpe As String, footerstr As String)
    S1 = a
    s2 = B
    s3 = c
    check = chk
    Set Cnn = New Connection
    Cnn.Provider = "MSDATASHAPE"
    Cnn.Open connectstring
    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0
    On Error Resume Next
    Cnn.Execute "DROP TABLE TMP_RMI_VARPUR"
    vrectype = Trim(Left(tpe, 3))
    If vrectype = "A" Then
        tmptypestr = "a.LotType"
    Else
        tmptypestr = "a.TransferType"
    End If
    Set RS2 = New Recordset
    If UCase(CustID) = "SKS" Then
        SQLCond = " round(favaourablewgt,3) "
    Else
        SQLCond = " round(netwt,3) "
    End If
'
'    If vrectype <> "ALL" Then
'        If chk = 1 Then
'            If c = "A" Then
'                'RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(netwt,2) as ratekgs,ratekg, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=(netwt*ratekg),value1=(netwt*round((isnull(ratecy,0)/355.6187),2)) from rm_lot a,rm_var b,rm_area c  where a.catcd=b.catcd and a.varcode=b.varcode and a.areacd*=c.areacode and " & tmptypestr & " = '" & vrectype & "' and a.divcode='" & Divcode & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'                RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end)," & SQLCond & " as ratekgs,ratekg, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=A.TOTLANDCOST,value1=(" & SQLCond & "*round((isnull(ratecy,0)/355.6187),2)),a.Ratecy,a.plotno,fa.slcode,fa.slname from rm_lot a inner join rm_var b on a.catcd=b.catcd and a.varcode=b.varcode left join rm_area c on a.areacd = c.areacode inner join fa_slmas fa on a.supcd=fa.slcode where  " & tmptypestr & " = '" & vrectype & "' and a.divcode='" & Divcode & "' and a.arrdt Between '" & Format(S1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'            Else
'                'RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(netwt,2) as ratekgs,ratekg, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=(netwt*ratekg),value1=(netwt*round((isnull(ratecy,0)/355.6187),2)) from rm_lot a,rm_var b,rm_area c  where a.catcd='" & C & "' and a.catcd=b.catcd and a.varcode=b.varcode and " & tmptypestr & " = '" & vrectype & "' and a.areacd*=c.areacode and a.divcode='" & Divcode & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'                RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end)," & SQLCond & " as ratekgs,ratekg, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=A.TOTLANDCOST,value1=(" & SQLCond & "*round((isnull(ratecy,0)/355.6187),2)),a.Ratecy,a.plotno,fa.slcode,fa.slname from rm_lot a inner join rm_var b on a.catcd=b.catcd and a.varcode=b.varcode left join rm_area c on a.areacd = c.areacode inner join fa_slmas fa on a.supcd=fa.slcode  where a.catcd='" & c & "' and " & tmptypestr & " = '" & vrectype & "' and a.divcode='" & Divcode & "' and a.arrdt Between '" & Format(S1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'            End If
'        Else
'            RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno,ratekg, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end)," & SQLCond & " as ratekgs, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=A.TOTLANDCOST,value1=(" & SQLCond & "*round((isnull(ratecy,0)/355.6187),2)),a.Ratecy,a.plotno,fa.slcode,fa.slname from rm_lot a inner join rm_var b on a.varcode=b.varcode and a.catcd = b.catcd  left join rm_area c on a.areacd = c.areacode inner join fa_slmas fa on a.supcd=fa.slcode where " & tmptypestr & " = '" & vrectype & "' and a.divcode='" & Divcode & "' and a.arrdt Between '" & Format(S1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'        End If
'    Else
'            RS2.Open "SELECT * INTO TMP_RMI_VARPUR FROM (select a.areacd as areacd,areaname,a.varcode,b.varname,lotno,ratekg, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end)," & SQLCond & " as ratekgs, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=A.TOTLANDCOST,value1=(" & SQLCond & "*round((isnull(ratecy,0)/355.6187),2)),a.Ratecy,a.plotno,fa.slcode,fa.slname from rm_lot a inner join rm_var b on a.varcode=b.varcode and a.catcd = b.catcd left join rm_area c on a.areacd = c.areacode inner join fa_slmas fa on a.supcd=fa.slcode where a.divcode='" & Divcode & "' and  (a.catcd='" & c & "' or '" & c & "'='A') and a.arrdt Between '" & Format(S1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "')X", Cnn, adOpenStatic
'    End If
    
    
    RS2.Open " exec Ksp_receiptlistvariety_abs '" & Divcode & "','" & Format(S1, "yyyy-mm-dd") & "', '" & Format(s2, "yyyy-mm-dd") & "','" & chk & "','" & c & "','" & vrectype & "'  ", Cnn, adOpenStatic

    
'    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_varpur.rpt"
'    FrmRpt.RptHead = 1
'    rephead = Format(s1, "dd/mm/yy") & " To " & Format(s2, "dd/mm/yy")
'    parameter1 = DIVNAME
'    FrmRpt.Show
'    Screen.MousePointer = 0

  
  
End Sub


