VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{6481A028-39ED-11DA-B598-00201829543C}#2.0#0"; "Kallistacx.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#7.0#0"; "FPSPR70.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{13592B48-653C-491D-ACB1-C3140AA12F33}#6.0#0"; "ubGrid.ocx"
Begin VB.Form FrmissueKgs 
   Caption         =   "Issues"
   ClientHeight    =   9240
   ClientLeft      =   -780
   ClientTop       =   555
   ClientWidth     =   12810
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9240
   ScaleWidth      =   12810
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab1 
      Height          =   6270
      Left            =   330
      TabIndex        =   50
      Top             =   1095
      Width           =   11520
      _ExtentX        =   20320
      _ExtentY        =   11060
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      ForeColor       =   -2147483630
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "&Lot Details"
      TabPicture(0)   =   "RMIissueKilowise.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "grddatagrid"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "&Bale Details"
      TabPicture(1)   =   "RMIissueKilowise.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "grid"
      Tab(1).Control(1)=   "Frame13"
      Tab(1).Control(2)=   "Frame8"
      Tab(1).Control(3)=   "Option2"
      Tab(1).Control(4)=   "Option1"
      Tab(1).Control(5)=   "Frame9"
      Tab(1).Control(6)=   "Frame4"
      Tab(1).Control(7)=   "Text11"
      Tab(1).Control(7).Enabled=   0   'False
      Tab(1).Control(8)=   "Text10"
      Tab(1).Control(8).Enabled=   0   'False
      Tab(1).Control(9)=   "Text9"
      Tab(1).Control(9).Enabled=   0   'False
      Tab(1).Control(10)=   "Command7"
      Tab(1).Control(11)=   "Text4"
      Tab(1).Control(11).Enabled=   0   'False
      Tab(1).Control(12)=   "Text3"
      Tab(1).Control(12).Enabled=   0   'False
      Tab(1).Control(13)=   "Command1"
      Tab(1).Control(14)=   "Frame11"
      Tab(1).Control(15)=   "lbl_bale"
      Tab(1).Control(16)=   "Label30"
      Tab(1).Control(17)=   "Label29"
      Tab(1).Control(18)=   "Label26"
      Tab(1).Control(19)=   "Label25"
      Tab(1).Control(20)=   "Label24"
      Tab(1).Control(21)=   "Label7"
      Tab(1).Control(22)=   "Label6"
      Tab(1).ControlCount=   23
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
         Height          =   1710
         Left            =   60
         TabIndex        =   126
         Top             =   4470
         Visible         =   0   'False
         Width           =   11370
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "wtrwt"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   5
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   137
            Top             =   1245
            Width           =   1600
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "OILWT"
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
            Height          =   360
            Index           =   4
            Left            =   9630
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   136
            Top             =   120
            Width           =   1600
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "oilcode"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   3
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   135
            Top             =   120
            Width           =   1600
         End
         Begin VB.TextBox Text1 
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
            Height          =   360
            Left            =   2940
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   134
            Text            =   " "
            Top             =   120
            Width           =   5445
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "TINT"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   6
            Left            =   1320
            MaxLength       =   20
            TabIndex        =   133
            Top             =   870
            Width           =   1600
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "OILWT1"
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
            Height          =   360
            Index           =   12
            Left            =   9630
            MaxLength       =   100
            TabIndex        =   132
            Top             =   510
            Width           =   1600
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "oilcode1"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   11
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   131
            Top             =   495
            Width           =   1600
         End
         Begin VB.TextBox Text15 
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
            Height          =   360
            Left            =   2940
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   130
            TabStop         =   0   'False
            Text            =   " "
            Top             =   510
            Width           =   5445
         End
         Begin VB.TextBox TxtTotBales 
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
            Height          =   360
            Left            =   4140
            MaxLength       =   100
            TabIndex        =   129
            Top             =   1245
            Width           =   1600
         End
         Begin VB.TextBox TxtNetWt 
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
            Height          =   360
            Left            =   6750
            MaxLength       =   100
            TabIndex        =   128
            Top             =   1260
            Width           =   1600
         End
         Begin VB.TextBox TxtActWt 
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
            Height          =   360
            Left            =   9660
            MaxLength       =   100
            TabIndex        =   127
            Top             =   1245
            Width           =   1600
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Oil Weight 1"
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
            Left            =   8490
            TabIndex        =   146
            Top             =   240
            Width           =   870
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Water Weight"
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
            TabIndex        =   145
            Top             =   1275
            Width           =   990
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Oil Code 1"
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
            TabIndex        =   144
            Top             =   195
            Width           =   735
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "TINT"
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
            TabIndex        =   143
            Top             =   945
            Width           =   375
         End
         Begin VB.Label Label36 
            AutoSize        =   -1  'True
            Caption         =   "Oil Weight 2"
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
            Left            =   8490
            TabIndex        =   142
            Top             =   600
            Width           =   870
         End
         Begin VB.Label Label35 
            AutoSize        =   -1  'True
            Caption         =   "Oil Code 2"
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
            TabIndex        =   141
            Top             =   585
            Width           =   735
         End
         Begin VB.Label LblTotBales 
            AutoSize        =   -1  'True
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
            Height          =   195
            Left            =   3090
            TabIndex        =   140
            Top             =   1305
            Width           =   795
         End
         Begin VB.Label LblNetWt 
            AutoSize        =   -1  'True
            Caption         =   " Nett Weight"
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
            Left            =   5790
            TabIndex        =   139
            Top             =   1290
            Width           =   900
         End
         Begin VB.Label LblActWt 
            AutoSize        =   -1  'True
            Caption         =   "Actual issue Wt"
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
            Left            =   8430
            TabIndex        =   138
            Top             =   1320
            Width           =   1110
         End
      End
      Begin ubGridControl.ubGrid grid 
         Height          =   3780
         Left            =   -74835
         TabIndex        =   115
         Top             =   1290
         Width           =   6840
         _ExtentX        =   12065
         _ExtentY        =   6668
         Rows            =   0
         Cols            =   6
         Row             =   0
         Redraw          =   -1  'True
         ShowGrid        =   -1  'True
         GridSolid       =   -1  'True
         GridLineColor   =   12632256
         BackColorAlt    =   14737632
         BackColorFixed  =   12632256
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontFixed {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontEdit {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BackColorBkg    =   12632256
         FormatString    =   "Bale No. |Gross Weight|Tare Weight |Nett Weight |Act Iss Weight|Issued"
      End
      Begin VB.Frame Frame13 
         Height          =   720
         Left            =   -74820
         TabIndex        =   124
         Top             =   570
         Width           =   3135
         Begin VB.OptionButton OptSequence 
            Caption         =   "Sequence"
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
            Left            =   90
            TabIndex        =   108
            Top             =   300
            Width           =   1380
         End
         Begin VB.OptionButton OptIndividual 
            Caption         =   "Individual"
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
            Left            =   1530
            TabIndex        =   109
            Top             =   315
            Width           =   1335
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "Bale Wise Issue"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   735
         Left            =   -72945
         TabIndex        =   73
         Top             =   3585
         Visible         =   0   'False
         Width           =   3840
         Begin VB.TextBox Text8 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Left            =   2760
            TabIndex        =   31
            Top             =   240
            Width           =   960
         End
         Begin VB.TextBox Text7 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Left            =   1080
            TabIndex        =   30
            Top             =   240
            Width           =   735
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "Iss Kgs"
            Height          =   240
            Left            =   1920
            TabIndex        =   75
            Top             =   240
            Width           =   645
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "Bale No"
            Height          =   240
            Left            =   90
            TabIndex        =   74
            Top             =   240
            Width           =   735
         End
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Kgswise Issue"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404080&
         Height          =   240
         Left            =   -72705
         TabIndex        =   35
         Top             =   345
         Visible         =   0   'False
         Width           =   1815
      End
      Begin VB.OptionButton Option1 
         Caption         =   "BaleWise Issue"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404080&
         Height          =   240
         Left            =   -72705
         TabIndex        =   34
         Top             =   345
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.Frame Frame9 
         Caption         =   "Kgs Wise"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   735
         Left            =   -72795
         TabIndex        =   76
         Top             =   2640
         Visible         =   0   'False
         Width           =   3450
         Begin VB.TextBox Txtissbale 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Left            =   2490
            Locked          =   -1  'True
            TabIndex        =   33
            Top             =   240
            Width           =   855
         End
         Begin VB.TextBox TxtIsskgs 
            BackColor       =   &H00FFFFFF&
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
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Left            =   960
            TabIndex        =   32
            Top             =   225
            Width           =   1425
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Iss Kgs"
            Height          =   240
            Left            =   120
            TabIndex        =   77
            Top             =   240
            Width           =   645
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Available Bale Details"
         Height          =   6060
         Left            =   -67920
         TabIndex        =   72
         Top             =   45
         Width           =   4335
         Begin VB.CommandButton Command10 
            Caption         =   "&OK"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Left            =   3390
            TabIndex        =   113
            Top             =   5610
            Width           =   840
         End
         Begin FPSpreadADO.fpSpread SpdBales 
            Height          =   5250
            Left            =   90
            TabIndex        =   112
            Top             =   285
            Width           =   4140
            _Version        =   458752
            _ExtentX        =   7302
            _ExtentY        =   9260
            _StockProps     =   64
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   3
            MaxRows         =   0
            SpreadDesigner  =   "RMIissueKilowise.frx":0038
         End
         Begin MSDataGridLib.DataGrid grdData 
            Height          =   1260
            Left            =   90
            TabIndex        =   42
            Top             =   3990
            Visible         =   0   'False
            Width           =   3015
            _ExtentX        =   5318
            _ExtentY        =   2223
            _Version        =   393216
            BackColor       =   16777215
            HeadLines       =   1
            RowHeight       =   15
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
      End
      Begin VB.TextBox Text11 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
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
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   -70950
         Locked          =   -1  'True
         TabIndex        =   40
         TabStop         =   0   'False
         Top             =   5700
         Width           =   1000
      End
      Begin VB.TextBox Text10 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
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
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   -72165
         Locked          =   -1  'True
         TabIndex        =   39
         TabStop         =   0   'False
         Top             =   5700
         Width           =   1000
      End
      Begin VB.TextBox Text9 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
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
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   -73425
         Locked          =   -1  'True
         TabIndex        =   38
         TabStop         =   0   'False
         Top             =   5700
         Width           =   1000
      End
      Begin VB.CommandButton Command7 
         BackColor       =   &H00FFC0FF&
         Caption         =   "Add"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -69810
         Style           =   1  'Graphical
         TabIndex        =   36
         Top             =   3030
         Width           =   735
      End
      Begin VB.TextBox Text4 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
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
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   -69150
         Locked          =   -1  'True
         TabIndex        =   41
         TabStop         =   0   'False
         Top             =   5700
         Width           =   1000
      End
      Begin VB.TextBox Text3 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   -74670
         Locked          =   -1  'True
         TabIndex        =   37
         TabStop         =   0   'False
         Top             =   5685
         Width           =   1000
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   -68895
         TabIndex        =   116
         Top             =   5100
         Width           =   900
      End
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   2460
         Left            =   60
         TabIndex        =   29
         Top             =   2010
         Width           =   11355
         _ExtentX        =   20029
         _ExtentY        =   4339
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         BackColor       =   16777215
         ForeColor       =   0
         HeadLines       =   1
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
         Caption         =   "Lotwise Issue  Details"
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
      Begin VB.Frame Frame11 
         Caption         =   "Bale Wise Issue"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   705
         Left            =   -71190
         TabIndex        =   122
         Top             =   585
         Visible         =   0   'False
         Width           =   3225
         Begin VB.TextBox Text14 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   2310
            TabIndex        =   111
            Top             =   225
            Width           =   735
         End
         Begin VB.TextBox Text13 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   705
            TabIndex        =   110
            Top             =   225
            Width           =   735
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "From"
            Height          =   240
            Left            =   120
            TabIndex        =   105
            Top             =   240
            Width           =   465
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "To"
            Height          =   240
            Left            =   1830
            TabIndex        =   104
            Top             =   270
            Width           =   255
         End
      End
      Begin VB.Frame Frame7 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1710
         Left            =   60
         TabIndex        =   83
         Top             =   315
         Width           =   11370
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "SoftWaste"
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
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Index           =   14
            Left            =   1320
            MaxLength       =   10
            TabIndex        =   147
            Top             =   1290
            Visible         =   0   'False
            Width           =   1980
         End
         Begin VB.TextBox Text6 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   10770
            TabIndex        =   107
            Text            =   "Text6"
            Top             =   150
            Visible         =   0   'False
            Width           =   525
         End
         Begin VB.TextBox Text16 
            DataField       =   "FormNo"
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
            Left            =   9240
            MaxLength       =   10
            TabIndex        =   28
            Top             =   1320
            Visible         =   0   'False
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            Height          =   360
            Index           =   1
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   16
            Top             =   540
            Width           =   1005
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "isstype"
            ForeColor       =   &H00000000&
            Height          =   360
            ItemData        =   "RMIissueKilowise.frx":021A
            Left            =   1320
            List            =   "RMIissueKilowise.frx":021C
            TabIndex        =   12
            Top             =   150
            Width           =   3135
         End
         Begin VB.TextBox Txtfields 
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
            Height          =   360
            Index           =   0
            Left            =   5490
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   150
            Width           =   855
         End
         Begin VB.ComboBox Combo2 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ISSTO"
            ForeColor       =   &H00000000&
            Height          =   360
            ItemData        =   "RMIissueKilowise.frx":021E
            Left            =   9540
            List            =   "RMIissueKilowise.frx":0225
            TabIndex        =   15
            Top             =   150
            Width           =   1155
         End
         Begin VB.TextBox Text5 
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
            Height          =   360
            Left            =   2325
            Locked          =   -1  'True
            TabIndex        =   17
            TabStop         =   0   'False
            Top             =   540
            Width           =   5910
         End
         Begin VB.TextBox Txtfields 
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
            Height          =   360
            Index           =   13
            Left            =   6495
            MaxLength       =   100
            TabIndex        =   20
            Top             =   915
            Width           =   1725
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "vehicleno"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   7
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   18
            Top             =   915
            Visible         =   0   'False
            Width           =   2475
         End
         Begin VB.TextBox Text12 
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
            Height          =   360
            Left            =   2355
            Locked          =   -1  'True
            TabIndex        =   19
            TabStop         =   0   'False
            Top             =   930
            Width           =   2910
         End
         Begin VB.ComboBox Combo3 
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
            Height          =   315
            ItemData        =   "RMIissueKilowise.frx":0233
            Left            =   90
            List            =   "RMIissueKilowise.frx":0235
            TabIndex        =   86
            Top             =   2490
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "SLCODE"
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
            Index           =   2
            Left            =   2610
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   85
            Top             =   2580
            Visible         =   0   'False
            Width           =   1155
         End
         Begin VB.TextBox text2 
            DataField       =   "arrno"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Left            =   3900
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   84
            Top             =   2550
            Visible         =   0   'False
            Width           =   1365
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "InvoiceNo"
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
            Index           =   9
            Left            =   1320
            MaxLength       =   10
            TabIndex        =   21
            Top             =   1290
            Width           =   1965
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Timeout"
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
            Index           =   10
            Left            =   6495
            MaxLength       =   7
            TabIndex        =   23
            Top             =   1290
            Width           =   1725
         End
         Begin VB.OptionButton Option5 
            Caption         =   "Form XX"
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
            Left            =   8460
            TabIndex        =   25
            Top             =   495
            Width           =   1215
         End
         Begin VB.OptionButton Option6 
            Caption         =   "Form XXVII"
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
            Left            =   8460
            TabIndex        =   26
            Top             =   735
            Width           =   1455
         End
         Begin VB.OptionButton Option7 
            Caption         =   "None"
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
            Left            =   8460
            TabIndex        =   27
            Top             =   990
            Width           =   975
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DOCDT"
            Height          =   285
            Index           =   0
            Left            =   6870
            TabIndex        =   14
            Top             =   180
            Width           =   1080
            _ExtentX        =   1905
            _ExtentY        =   503
            _Version        =   393216
            BorderStyle     =   0
            BackColor       =   16777215
            ForeColor       =   0
            Enabled         =   0   'False
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
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "docdt"
            Height          =   330
            Left            =   6840
            TabIndex        =   87
            Top             =   150
            Width           =   1380
            _ExtentX        =   2434
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   49872897
            CurrentDate     =   36831
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "InvDate"
            Height          =   300
            Index           =   1
            Left            =   3750
            TabIndex        =   22
            Top             =   1320
            Width           =   1200
            _ExtentX        =   2117
            _ExtentY        =   529
            _Version        =   393216
            BackColor       =   16777215
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
            DataField       =   "invdate"
            Height          =   360
            Left            =   3735
            TabIndex        =   89
            Top             =   1290
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   635
            _Version        =   393216
            Format          =   49872897
            CurrentDate     =   36831
         End
         Begin VB.TextBox Txtisstype 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   1320
            TabIndex        =   88
            TabStop         =   0   'False
            Top             =   150
            Visible         =   0   'False
            Width           =   735
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "mixgrp"
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
            Index           =   8
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   24
            TabStop         =   0   'False
            Top             =   915
            Width           =   1005
         End
         Begin VB.Label lblSoft 
            Caption         =   "Soft Waste"
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
            Left            =   120
            TabIndex        =   148
            Top             =   1365
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.Label Label37 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Form No."
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
            Left            =   8505
            TabIndex        =   106
            Top             =   1380
            Visible         =   0   'False
            Width           =   645
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Party"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   795
            Left            =   150
            TabIndex        =   102
            Top             =   2520
            Visible         =   0   'False
            Width           =   480
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Issue No."
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
            Left            =   4590
            TabIndex        =   101
            Top             =   210
            Width           =   675
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Type"
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
            TabIndex        =   100
            Top             =   225
            Width           =   360
         End
         Begin VB.Label Label18 
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
            Left            =   6420
            TabIndex        =   99
            Top             =   210
            Width           =   345
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   120
            TabIndex        =   98
            Top             =   570
            Width           =   915
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Issue To"
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
            Left            =   8505
            TabIndex        =   97
            Top             =   195
            Width           =   615
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Lot No."
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
            Left            =   5430
            TabIndex        =   96
            Top             =   990
            Width           =   1020
         End
         Begin VB.Label Label14 
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
            Height          =   255
            Left            =   120
            TabIndex        =   95
            Top             =   990
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Group"
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
            TabIndex        =   94
            Top             =   990
            Width           =   930
         End
         Begin VB.Label Label10 
            Caption         =   "Category"
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
            Height          =   255
            Left            =   180
            TabIndex        =   93
            Top             =   2550
            Visible         =   0   'False
            Width           =   975
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            Caption         =   "Invoice No."
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
            TabIndex        =   92
            Top             =   1380
            Width           =   825
         End
         Begin VB.Label Label32 
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
            Left            =   3330
            TabIndex        =   91
            Top             =   1350
            Width           =   345
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "Time Out"
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
            Left            =   5400
            TabIndex        =   90
            Top             =   1335
            Width           =   645
         End
      End
      Begin VB.Label lbl_bale 
         AutoSize        =   -1  'True
         BackColor       =   &H00FF0000&
         Caption         =   "Label38"
         ForeColor       =   &H8000000E&
         Height          =   240
         Left            =   -74805
         TabIndex        =   121
         Top             =   330
         Visible         =   0   'False
         Width           =   720
      End
      Begin VB.Label Label30 
         Caption         =   " Nett Weight"
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
         Left            =   -71040
         TabIndex        =   71
         Top             =   5475
         Width           =   1095
      End
      Begin VB.Label Label29 
         Caption         =   "Tare Weight"
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
         Height          =   285
         Left            =   -72225
         TabIndex        =   70
         Top             =   5460
         Width           =   1200
      End
      Begin VB.Label Label26 
         Caption         =   "Gross Weight"
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
         Height          =   225
         Left            =   -73575
         TabIndex        =   69
         Top             =   5460
         Width           =   1155
      End
      Begin VB.Label Label25 
         AutoSize        =   -1  'True
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C000C0&
         Height          =   300
         Left            =   -68040
         TabIndex        =   68
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Label24 
         Caption         =   "Bale Nett Wt  :"
         Height          =   285
         Left            =   -70515
         TabIndex        =   67
         Top             =   4065
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Actual issue Weight"
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
         Height          =   195
         Left            =   -69840
         TabIndex        =   49
         Top             =   5475
         Width           =   1710
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Bales"
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
         Height          =   195
         Left            =   -74175
         TabIndex        =   51
         Top             =   5460
         Width           =   480
      End
   End
   Begin VB.Frame Frame12 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   6390
      TabIndex        =   114
      Top             =   600
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton cmd_report 
         Caption         =   "&Ok"
         Default         =   -1  'True
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
         Left            =   4140
         TabIndex        =   123
         Top             =   150
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.OptionButton Option9 
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
         Height          =   255
         Left            =   1755
         TabIndex        =   118
         Top             =   225
         Width           =   1260
      End
      Begin VB.OptionButton Option8 
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
         Height          =   225
         Left            =   3000
         TabIndex        =   117
         Top             =   240
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.Label Label13 
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
         Left            =   150
         TabIndex        =   120
         Top             =   225
         Width           =   1425
      End
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
      Height          =   705
      Left            =   0
      TabIndex        =   60
      Top             =   -90
      Width           =   11985
      Begin VB.CommandButton BUTTON 
         Height          =   580
         Index           =   13
         Left            =   6510
         Picture         =   "RMIissueKilowise.frx":0237
         Style           =   1  'Graphical
         TabIndex        =   125
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   90
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissueKilowise.frx":0679
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   4
         Left            =   2160
         Picture         =   "RMIissueKilowise.frx":0983
         Style           =   1  'Graphical
         TabIndex        =   119
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
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
         Index           =   12
         Left            =   5970
         Picture         =   "RMIissueKilowise.frx":0D18
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Issue Report Print (Ctrl P)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissueKilowise.frx":115A
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   6
         Left            =   3225
         Picture         =   "RMIissueKilowise.frx":15A4
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   555
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissueKilowise.frx":18F1
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   0
         Left            =   30
         Picture         =   "RMIissueKilowise.frx":1BFB
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissueKilowise.frx":1F8E
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   5
         Left            =   2700
         Picture         =   "RMIissueKilowise.frx":23D8
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissueKilowise.frx":273D
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
         Picture         =   "RMIissueKilowise.frx":2A47
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissueKilowise.frx":2DE3
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "RMIissueKilowise.frx":30ED
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
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
         Height          =   550
         Index           =   3
         Left            =   1635
         Picture         =   "RMIissueKilowise.frx":3467
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissueKilowise.frx":37FE
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   7
         Left            =   3780
         Picture         =   "RMIissueKilowise.frx":3C48
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissueKilowise.frx":3F98
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   11
         Left            =   7050
         Picture         =   "RMIissueKilowise.frx":43E2
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissueKilowise.frx":4777
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   9
         Left            =   4860
         Picture         =   "RMIissueKilowise.frx":4A81
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   555
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissueKilowise.frx":4E23
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   10
         Left            =   5415
         Picture         =   "RMIissueKilowise.frx":512D
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace) "
         Top             =   120
         Width           =   555
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissueKilowise.frx":54A9
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   8
         Left            =   4320
         Picture         =   "RMIissueKilowise.frx":58F3
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   540
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
         Left            =   9960
         TabIndex        =   62
         Top             =   240
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   8010
         TabIndex        =   61
         Top             =   270
         Width           =   615
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   6795
      Top             =   60
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   53
      Top             =   8940
      Width           =   12810
      _ExtentX        =   22595
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   14112
            MinWidth        =   14112
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "27/06/2009"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "5:22 PM"
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
      Height          =   2430
      Left            =   1080
      TabIndex        =   45
      Top             =   2160
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIissueKilowise.frx":5C55
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4020
         Picture         =   "RMIissueKilowise.frx":6037
         Style           =   1  'Graphical
         TabIndex        =   56
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&OK"
         DownPicture     =   "RMIissueKilowise.frx":640A
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2580
         Picture         =   "RMIissueKilowise.frx":67F0
         Style           =   1  'Graphical
         TabIndex        =   55
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   3060
         MaxLength       =   6
         TabIndex        =   46
         Top             =   855
         Width           =   1905
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
         TabIndex        =   48
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Issue  No."
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
         Left            =   2010
         TabIndex        =   47
         Top             =   930
         Width           =   720
      End
   End
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
      Height          =   4740
      Left            =   600
      TabIndex        =   57
      Top             =   1320
      Visible         =   0   'False
      Width           =   8160
      Begin VB.CommandButton Command4 
         Caption         =   "OK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   3420
         TabIndex        =   58
         Top             =   3840
         Width           =   1245
      End
      Begin MSDataGridLib.DataGrid DataGrid2 
         Height          =   3225
         Left            =   120
         TabIndex        =   59
         Top             =   240
         Width           =   7545
         _ExtentX        =   13309
         _ExtentY        =   5689
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   -2147483635
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         AllowAddNew     =   -1  'True
         AllowDelete     =   -1  'True
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
         Caption         =   "Issue Details"
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
   End
   Begin VB.Frame Frame3 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6525
      Left            =   510
      TabIndex        =   44
      Top             =   1290
      Visible         =   0   'False
      Width           =   10935
      Begin KalsoftListacx.kalsoftlist KSLLIST1 
         Height          =   4785
         Left            =   0
         TabIndex        =   66
         Top             =   1320
         Width           =   9240
         _ExtentX        =   16298
         _ExtentY        =   8440
         caption         =   ""
      End
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
         Height          =   855
         Left            =   120
         TabIndex        =   63
         Top             =   5640
         Width           =   10695
         Begin VB.CommandButton Command6 
            Caption         =   "&OK"
            DownPicture     =   "RMIissueKilowise.frx":6BB6
            Height          =   495
            Left            =   2760
            Picture         =   "RMIissueKilowise.frx":6F9C
            Style           =   1  'Graphical
            TabIndex        =   64
            Top             =   240
            Width           =   1185
         End
         Begin VB.CommandButton Command5 
            Caption         =   "&Cancel"
            DownPicture     =   "RMIissueKilowise.frx":7362
            Height          =   495
            Left            =   6240
            Picture         =   "RMIissueKilowise.frx":7744
            Style           =   1  'Graphical
            TabIndex        =   65
            Top             =   240
            Width           =   1185
         End
      End
      Begin KSLLISTOCX.KslList KslList1a 
         Height          =   1095
         Left            =   480
         TabIndex        =   54
         Top             =   360
         Visible         =   0   'False
         Width           =   735
         _ExtentX        =   1296
         _ExtentY        =   1931
         ForeColor       =   -2147483635
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
         Left            =   240
         TabIndex        =   52
         Top             =   120
         Visible         =   0   'False
         Width           =   8730
      End
   End
   Begin VB.Frame Frame10 
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
      Height          =   1815
      Left            =   4635
      TabIndex        =   78
      Top             =   4185
      Width           =   4935
      Begin VB.CommandButton Command9 
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
         Height          =   345
         Left            =   2520
         Style           =   1  'Graphical
         TabIndex        =   82
         Top             =   1350
         Width           =   975
      End
      Begin VB.CommandButton Command8 
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1080
         Style           =   1  'Graphical
         TabIndex        =   81
         Top             =   1335
         Width           =   1095
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Kgs Wise Issue"
         ForeColor       =   &H00000000&
         Height          =   495
         Left            =   1560
         TabIndex        =   80
         Top             =   720
         Width           =   1935
      End
      Begin VB.OptionButton Option3 
         Caption         =   "Bale Wise Issue"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   1560
         TabIndex        =   79
         Top             =   480
         Width           =   3015
      End
      Begin VB.Label Label19 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Select the Issue Type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   15
         TabIndex        =   103
         Top             =   -15
         Width           =   4935
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   90
      Top             =   660
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      EMailSubject    =   "lot bale"
      EMailMessage    =   "lot bale Detail"
      EMailToList     =   "svinu@in.com"
      EMailCCList     =   "svinu@in.com"
      PrintFileLinesPerPage=   60
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4605
      Left            =   6405
      TabIndex        =   149
      Top             =   1200
      Width           =   4665
      _extentx        =   8229
      _extenty        =   8123
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Issues"
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
      Left            =   450
      TabIndex        =   43
      Top             =   765
      Width           =   765
   End
End
Attribute VB_Name = "FrmissueKgs"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim rstPARAM As Recordset
Dim adoSecondaryRS As Recordset
Attribute adoSecondaryRS.VB_VarHelpID = -1
Dim z As Integer
Dim updSECONDARYRS As Recordset
'Dim RS As Recordset
Dim UPDRS As Recordset
Dim WithEvents Rs As Recordset
Attribute Rs.VB_VarHelpID = -1
Dim sWgtFlg As String
Dim sVar As String
Dim iCount As Integer
Dim iDocNo, iRowNo As Integer
Dim rsBale As Recordset
Dim sDocDate As String
Dim sVarcode As String
Dim iLen As Integer
Dim iSlipNo As Integer
Dim sSlipDate As String
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim oldqty As Integer
Dim oldcontno As Integer
Dim oldbales As Date
Dim sVariety As String
Dim balers As Recordset
Dim dTotalWgt As Double
Dim qty As Double
Dim tabflag As Boolean
Dim selbale As Integer
Dim selwt As Double
Dim a As String
Dim b As String
Dim wt As Double
Dim str, FLGISSH As String
Dim i As Integer
Dim flg As String
Dim RS2 As Recordset
Dim rx As Integer
Dim S As Double
Dim C As Integer
Dim ChkEx As Integer
Dim J As Integer
Dim ry As New Recordset
Dim xx1 As Integer
Dim tbno As Integer
Dim tgwt As Double
Dim ttwt As Double
Dim tnwt As Double
Dim taisswt As Double
Dim xx As New Recordset
Dim DYINGHEADRS As Recordset
Dim DYINGTAILRS As Recordset
Dim totv As Double
Dim IssFlg, gbaleno As String
Dim avilbalers As Recordset
Dim baleno As String
Dim gvar, oldissued As String
Dim diffkgs As Double
Dim oldisswt As Double
Dim vTotBal As Double
Dim vNetWt As Double
Dim vActWt As Double
Dim deltype As String
Dim TmpDelRs As New Recordset
Dim cnt As Double
Dim ChkCount As Integer
Dim EBaleNo As Integer
Dim TotalBale As Integer
Dim ConnectCnt As Integer
Dim SBale, EBale As Integer
Dim ibales As Integer
Private Enum E_SpdBal
    SprdCheck = 1
    sprdBaleNo
    sprdGrossWt
    sprdTareWt
    sprdBalanceWt
    SprdPartyBaleNo
End Enum


Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure openconnection of Form Issue"
End Sub

Private Sub BUTTON_Click(Index As Integer)

On Error GoTo BUTTON_Click_Error

Select Case Index
Case 13
    Screen.MousePointer = 11
    Set Rs = New Recordset
    Rs.Open "Select * from rm_ISSH", DB, adOpenStatic
    If Not Rs.EOF Then
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\TransactionIssue.rpt"
    CrystalReport1.StoredProcParam(0) = Divcode
    CrystalReport1.StoredProcParam(1) = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
    CrystalReport1.StoredProcParam(2) = Txtfields(0).Text
    
    CrystalReport1.WindowState = crptMaximized
    
     SendKeys "{ENTER}"
    CrystalReport1.Action = True
    Screen.MousePointer = vbNormal
    CrystalReport1.PrinterCopies = 1
    End If
    Screen.MousePointer = 0
Case 0
    sSlipDate = ""
    iSlipNo = 0
 If ToValidFinYear = False Then Exit Sub
    Set rsz = New Recordset
    rsz.Open "select max(Docdt) from rm_issh where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter a valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    Opt = "add"
    desc.Caption = "Addition"

    Set Rs = New Recordset
    Rs.Open "Select VarietyReqIssue From Rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
        Unbindcontls
        LookUp.clear = True
        LookUp.Query = "SELECT dOCNO 'Doc. No.',DOCDT 'Doc. Date',C.issue_code + ' - ' + C.issue_desc AS 'Issue Type' FROM RM_ISSREQH A, rm_issuetype c WHERE A.ISSTYPE=C.ISSUE_CODE AND DOCDT BETWEEN '2008-04-01' AND '2009-03-31' and (SELECT Sum(isnull(Baleno,0)-isnull(Isskgs,0)) as Qty From RM_issReqB WHERE RM_issReqB.DIVCODE=a.DIVCODE AND RM_issReqB.ISSTYPE=a.ISSTYPE AND RM_issReqB.DOCNO=a.DOCNO AND RM_issReqB.DOCDT=a.DOCDT) > 0 ORDER BY A.DOCDT,a.DOCNO"
        LookUp.Caption = "Issue Requistion Slip No. Listing"
        LookUp.DefCol = "Doc. No."
        LookUp.ALIGN = "2000,2000,3000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Set avilbalers = New Recordset
            avilbalers.Open "SELECT DocDt,docno,a.ISSTYPE,a.slcode,a.ordno,a.ISSTO,a.vehicleno,a.MIXGRP,a.Driver,a.InvoiceNo,a.InvDate,a.TimeOut,a.Form,a.FormNo,a.USABLE_WASTE,a.SoftWaste,a.cntcd  FROM RM_ISSREQH a WHERE DIVCODE='" & Divcode & "' AND ISSTYPE='" & Left(LookUp.Fields(2), 2) & "' AND DOCNO= " & LookUp.Fields(0) & " And DOCDT = '" & Format(LookUp.Fields(1), "YYYY-MM-DD") & "'", DB, adOpenStatic
            
            Combo3.Text = avilbalers("ISSTYPE")
            iSlipNo = avilbalers("DocNo")
            sSlipDate = Format(avilbalers("Docdt"), "YYYY-MM-dd")
            
            Txtfields(1).Locked = False
            Txtfields(1).Text = IIf(IsNull(avilbalers("Cntcd")), "", avilbalers("CntCd"))
            Txtfields(13).Text = IIf(IsNull(avilbalers("ordno")), "", avilbalers("ordno"))
            Txtfields(14).Text = IIf(IsNull(avilbalers("Softwaste")), "", avilbalers("Softwaste"))
            Txtfields(7).Text = IIf(IsNull(avilbalers("Cntcd")), "", avilbalers("CntCd"))
            Txtfields(8).Text = IIf(IsNull(avilbalers("mixgrp")), "", avilbalers("mixgrp"))
            Text16.Text = IIf(IsNull(avilbalers("Formno")), "", avilbalers("Formno"))
            Txtfields(10).Text = IIf(IsNull(avilbalers("Timeout")), "", avilbalers("Timeout"))
            
                MaskEdBox1(1).Text = pdate
            LookUp.clear = True
            
            SSTab1.Visible = True
            Frame1.Enabled = False
            Frame7.Enabled = False
            Frame4.Enabled = False
            Buttonframe.Enabled = False
            Command1.Enabled = False
            Call SetColoumn
            
            flg = ""
            Set grdData.DataSource = Nothing
            DTPicker2.value = pdate
            Call GRIDALIGN
            Text1.Text = ""
            Text2.Text = ""
            Txtfields(0).Text = ""
'            Call bindcontls
            Call ENABLCONTLS
            DB.BeginTrans
            adoPrimaryRS.AddNew
            updSECONDARYRS.AddNew
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = True
            BUTTON(10).Enabled = True
'            Text5.Text = ""
            Frame7.Enabled = True
            Frame7.Visible = True
            diffkgs = 0
            sVar = ""
            ibales = 0
            grdDataGrid.AllowUpdate = True
            str = ""
            
    
            MaskEdBox1(0).Mask = pdate
            MaskEdBox1(0).Text = pdate
            MaskEdBox1(1).Mask = pdate
            
            MaskEdBox1(0).Enabled = True
            Txtfields(1).Visible = True
            Txtfields(8).Visible = True
            Label14.Visible = False
            Txtfields(7).Visible = False
            Txtfields(1).ZOrder
            Call Command8_Click
            TxtTotBales.Text = 0
            TxtNetWt.Text = 0
            TxtActWt.Text = 0
            Command1.Enabled = False
            Frame1.Enabled = True
            Frame7.Enabled = True
            Frame4.Enabled = True
            vTotBal = 0
            vNetWt = 0
            vActWt = 0
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            Exit Sub
        Else
            Call BUTTON_Click(10)
            Call QUERY_MODE
            Exit Sub
        End If
    Else
    
        SSTab1.Visible = True
        Frame1.Enabled = False
        Frame7.Enabled = False
        Frame4.Enabled = False
        Buttonframe.Enabled = False
        Command1.Enabled = False
        
        Call SetColoumn
        
        flg = ""
        Set grdData.DataSource = Nothing
        DTPicker2.value = pdate
    
        Call GRIDALIGN
        Text1.Text = ""
        Text2.Text = ""
        Txtfields(0).Text = ""
        Call bindcontls
        Call ENABLCONTLS
         DB.BeginTrans
        adoPrimaryRS.AddNew
        updSECONDARYRS.AddNew
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        Text5.Text = ""
        Frame7.Enabled = True
        Frame7.Visible = True
        diffkgs = 0
        sVar = ""
        ibales = 0
        grdDataGrid.AllowUpdate = True
        str = ""
        Set issrs = New Recordset
        issrs.Open "select issue_code +'--'+issue_desc from rm_issuetype ", DB, adOpenStatic
        Combo1.Locked = False
        Combo1.clear
        Do While Not issrs.EOF
            Combo1.AddItem issrs(0)
            issrs.MoveNext
        Loop
        
        Set issrs = New Recordset
        issrs.Open "select issue_code +'--'+issue_desc from rm_issuetype where isstype='P'", DB, adOpenStatic
        
        If issrs.RecordCount > 0 Then
            Combo1.Text = issrs(0)
        End If
        Call clears
        Combo2.ListIndex = 0
        If Combo1.Enabled = True Then Combo1.SetFocus
         Set rsa = New Recordset
        rsa.Open "select catcd +'--'+catname from rm_cat WHERE CATCD NOT IN('D','W')", DB, adOpenStatic
        Combo3.clear
        Do While Not rsa.EOF
            Combo3.AddItem rsa(0)
            rsa.MoveNext
        Loop
        Combo3.ListIndex = 0
        MaskEdBox1(0).Mask = pdate
        MaskEdBox1(0).Text = pdate
        
        MaskEdBox1(1).Mask = pdate
        MaskEdBox1(1).Text = pdate
        MaskEdBox1(0).Enabled = True
        Txtfields(1).Visible = True
        Txtfields(8).Visible = True
        Label14.Visible = False
        Txtfields(7).Visible = False
        Txtfields(1).ZOrder
        Call Command8_Click
        TxtTotBales.Text = 0
        TxtNetWt.Text = 0
        TxtActWt.Text = 0
        Command1.Enabled = False
        Frame1.Enabled = True
        Frame7.Enabled = True
        Frame4.Enabled = True
        vTotBal = 0
        vNetWt = 0
        vActWt = 0
    
    End If
    
    

Case 1
    'modification
     If ToValidFinYear = False Then Exit Sub
    Set rsz = New Recordset
    rsz.Open "select max(Docdt) from rm_issh where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter a valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    diffkgs = 0
    
    Opt = "mod"
    
    Combo1.Locked = False
    desc.Caption = "Modification"
    Call adddelmod(BUTTON)
    Call delmodok_Click
    SSTab1.Enabled = True
    Frame1.Enabled = True
    Frame7.Enabled = True
    Frame4.Enabled = True
Case 4
    'Find
    Set rsz = New Recordset
    rsz.Open "select max(Docdt) from rm_issh where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter a valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    diffkgs = 0
    
    Opt = "fnd"
    Combo1.Locked = False
    desc.Caption = "Find"
    Call adddelmod(BUTTON)
    Call delmodok_Click
    'SSTab1.Enabled = False
    Frame1.Enabled = False
    Frame7.Enabled = False
    Frame4.Enabled = False
Case 2
    'Deletion
     If ToValidFinYear = False Then Exit Sub
    Set rsz = New Recordset
    rsz.Open "select max(Docdt) from rm_issh where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter a valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    
    Opt = "del"
    DB.BeginTrans
    Combo1.Locked = False
    desc.Caption = "Deletion"
    Call adddelmod(BUTTON)
    Call delmodok_Click
Case 3
     'list
    Dim weigh As Double
    Dim qtyt As Double
    Dim amt As Double
    
    weigh = 0
    qtyt = 0
    amt = 0
    gamt = 0
    
    Set Rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    totVal = 0
    Co = 0
    cnt = 0
    Close
    Open "c:\isskg.txt" For Output As #f
    
    Pg = 1
    Print #f,
    Print #f, Chr(27) & Chr(77)
    Print #f, Space(2) + CENTRE(Chr(27) + "E" + DIVNAME, 60, " " + Chr(27) + "F")
    Print #f, Chr(27) & Chr(205)
    SR = Format(pdate, "dd/mm/yy")
    Print #f, Space(5) & "Issue List " & Space(40) + Space(39) + SR + Space(3) + "Pg. : " & Padl(Pg, 3, " ")
    Print #f, Space(5) & String(110, "-")
    Print #f, Space(5) & "Docno       Docdt          Issue Type       Count                    Issue Weight         Actual Weight "
    Print #f, Space(5) & String(110, "-")
    Co = 8
    'Call headn(CInt(pg))
    Set Rs = New Recordset
    'cntcd like 'c1%' and
    'rs.Open "select docno,docdt,cntcd,isstype,VEHICLENO from rm_issh where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by docdt,docno", db, adOpenStatic
    
    Rs.Open " select a.docno,a.docdt,a.cntcd,a.isstype,a.VEHICLENO,sum(b.isskgs) iskgs, sum(b.actisskgs) actKgs from rm_issh a, RM_ISSB b " & _
            " where a.docno=b.docno AND a.divcode=b.divcode AND A.DOCDT = B.DOCDT AND a.divcode='" & Divcode & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " GROUP BY a.docno,a.docdt,a.cntcd,a.isstype,a.VEHICLENO  Order By a.docno, a.docdt", DB, adOpenStatic
    
    Do While Rs.EOF = False
'        If rs("ISSTYPE") = "SA" Or rs("ISSTYPE") = "T2" Then
'            Set rsa = New Recordset
'            rsa.Open "select slname from fa_slmas where slcode='" & rs("cntcd") & "'", db
'            If rsa.RecordCount > 0 Then
'                Slname = ""
'                 Print #f, Space(5) & Padr(rs("docno"), 5, " ") & Space(7) & Padr(Format(rs("docdt"), "dd/mm/yy"), 8, " ") & Space(7) & Padr(rs("isstype") & " Unit", 10, " ") & Space(7) & Padr(rs("cntcd"), 10, " ") & Space(0) & Padr(rsa("slname"), 25, " ")
'                  Co = Co + 1
'            Else
'                Slname = ""
'            End If
'           'Print #f, Space(5) & Padr(rs("docno"), 5, " ") & Space(7) & Padr(Format(rs("docdt"), "dd/mm/yy"), 8, " ") & Space(7) & Padr(rs("isstype") & " Unit", 10, " ") & Space(7) & Padr(rs("cntcd"), 10, " ") & Space(7) & Padl(slname, 25, " ")
'        Else
'            Set rsa = New Recordset
'            rsa.Open "select description from ig_product where product_code='" & rs("cntcd") & "'", db
'            If rsa.RecordCount > 0 Then
'                description = ""
'                Print #f, Space(5) & Padr(rs("docno"), 5, " ") & Space(7) & Padr(Format(rs("docdt"), "dd/mm/yy"), 8, " ") & Space(7) & Padr(rs("isstype") & " Unit", 10, " ") & Space(7) & Padr(rs("cntcd"), 10, " ") + Space(25) + Padr(rsa("description"), 25, " ")
'                  Co = Co + 1
'            Else
'                description = ""
'                Print #f, Space(5) & Padr(rs("docno"), 5, " ") & Space(7) & Padr(Format(rs("docdt"), "dd/mm/yy"), 8, " ") & Space(7) & Padr(rs("isstype") & " Unit", 10, " ") & Space(7) & Padr(rs("cntcd"), 10, " ") + Space(25) + Padr(description, 25, " ")
'            End If
'           ' Print #f, Space(5) & Padr(rs("docno"), 5, " ") & Space(7) & Padr(Format(rs("docdt"), "dd/mm/yy"), 8, " ") & Space(7) & Padr(rs("isstype") & " Unit", 10, " ") & Space(7) & Padr(rs("cntcd"), 10, " ")

             Print #f, Space(5) & Padr(Rs("docno"), 5, " ") & Space(7) & Padr(Format(Rs("docdt"), "dd/mm/yy"), 8, " ") & Space(7) & Padr(Rs("isstype") & " Unit", 10, " ") & Space(7) & Padr(Rs("cntcd"), 15, " ") & Space(4) & Padl(INF(Rs("ISKGS"), 3), 18, " ") & Space(4) & Padl(INF(Rs("aCTKGS"), 3), 18, " ")
             Co = Co + 1
        '      End If
        'co = co + 1
        If Co >= 57 Then
            Print #f, Space(5) & String(110, "-")
            Print #f, Chr(12)
            Co = 0
            Pg = Pg + 1
           ' Call headn(CInt(pg))
            
            Print #f,
            Print #f, Chr(27) & Chr(77)
            Print #f, Space(2) + CENTRE(Chr(27) + "E" + DIVNAME, 60, " " + Chr(27) + "F")
            Print #f, Chr(27) & Chr(205)
            SR = Format(pdate, "dd/mm/yy")
            Pg = Pg + 1
            Print #f, Space(5) & "Issue List " & Space(40) + Space(39) + SR + Space(3) + "Pg. : " & Padl(Pg, 3, " ")
            'Print #f, Space(5) & "Issue List " & Space(40) + Space(40) + "Pg. : " & Padl(pg, 3, " ") + Chr(15)
            Print #f, Space(5) & String(110, "-")
            Print #f, Space(5) & "Docno       Docdt          Issue Type       Count                 Issue Kgs               Actual Kgs"
            Print #f, Space(5) & String(110, "-")
            Co = 8
        End If
    Rs.MoveNext
    Loop
    Print #f, Space(5) & String(110, "-")
    Print #f, Chr(12)
    Close #f
    Open "c:\isskg.bat" For Output As #f
    Print #f, "cd\"
    Print #f, "c:"
    Print #f, "cd\"
    Print #f, "type isskg.txt > prn"
    Close #f
    Rep.txtfile = "c:\isskg.txt"
    Rep.Batfile = "c:\isskg.bat"
    Screen.MousePointer = 0

Case 5
     'first
     desc.Caption = "Query"
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     
     Call bindcontls
     
    'calling fir procedure from module
     Call navi1(BUTTON)
     Call FIR(BUTTON)

     StatusBar1.Panels(2).Text = "First Record"
     Beep
     Exit Sub
GoFirstError:
    'MsgBox Err.description, vbInformation, head

Case 6
     'next
      desc.Caption = "Query"
      On Error GoTo GoNextError
      
      If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        Call bindcontls
        
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
        'moved off the end so go back
        adoPrimaryRS.MoveLast
       ' Call bindcontls
           Beep
      End If
      
      If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
        BUTTON(8).Enabled = False
        BUTTON(6).Enabled = False
        Beep
      Else
        BUTTON(8).Enabled = True
        BUTTON(6).Enabled = True
      End If
      Exit Sub
GoNextError:

Case 7
    'Previous
     desc.Caption = "Query"
     On Error GoTo GoPrevError
     If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
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
        adoPrimaryRS.MoveFirst
    End If
    'show the current record
    Call navi1(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        End If
    Exit Sub

GoPrevError:
   

Case 8
     'last
     desc.Caption = "Query"
     On Error GoTo GoLastError
     adoPrimaryRS.MoveLast
     Call bindcontls
    'calling las procedure from module
     Call navi1(BUTTON)
     Call las(BUTTON)
     StatusBar1.Panels(2).Text = "Last Record"
    Beep
     Exit Sub

GoLastError:
''   MsgBox err.description, vbInformation, head

Case 9
Dim dSoftWaste As Double
Dim dSoftPer As Double
    'Save
    'lblctrl.Visible = False
    If Opt = "add" Then
        
        Set rsz = New Recordset
        rsz.Open "select max(Docdt) from rm_issh where divcode='" & Divcode & "'", DB, adOpenStatic
        
        If rsz.RecordCount > 0 Then
            If IsDate(rsz(0)) = True Then
                If CDate(MaskEdBox1(0).Text) < CDate(rsz(0)) Then
                    MsgBox "Issue Document Date must be after or equal to Last Issue Date", vbInformation, head
                    MaskEdBox1(0).SetFocus
                    Exit Sub
                End If
            End If
        End If
        If Opt = "add" Then
            If CDate(MaskEdBox1(0).Text) < CDate(pdate) Then
                MsgBox "Issue Document Date must be equal to Processing Issue Date", vbInformation, head
                MaskEdBox1(0).SetFocus
                Exit Sub
            End If
        End If
    
        If Combo1.Text = "PR" Then
            If Trim(Txtfields(1).Text) = "" Then
                MsgBox "Please enter Category", vbInformation, head
                Txtfields(1).SetFocus
                Exit Sub
            End If
        End If
        Set Rs = New Recordset
        Rs.Open "Select SoftwastePer from rm_param", DB, adOpenStatic
        dSoftPer = IIf(IsNull(Rs(0)), 0, Rs(0))
        
         If Txtisstype.Text = "P" Then
            dSoftWaste = 0
            
            If val(TxtActWt) = 0 Then TxtActWt.Text = val(Text4.Text)
            If val(TxtActWt) > 0 Then
            dSoftWaste = Format((val(Txtfields(14).Text) / val(TxtActWt)) * 100, "0")
            If dSoftWaste > dSoftPer Then
                MsgBox "Please enter Soft Waste % Value Less than Parameterised Value", vbInformation, head
                Txtfields(14).SetFocus
                Exit Sub
            End If
            End If
         End If
        
    End If
    
    If Opt = "mod" Then
        ''Deletion
        On Error GoTo del
        '*********************  LOT TABLE UPDATION **************************/
        DB.BeginTrans
        opt1 = Opt
        Opt = ""
       adoSecondaryRS.MoveFirst
       Set rs1 = New Recordset
       rs1.Open "select distinct lotno,lotdt,divcode,catcd from rm_issb where docno='" & adoSecondaryRS("docno") & "' and docdt='" & Format(adoSecondaryRS("docdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
       rs1.MoveFirst
       Do While Not rs1.EOF
            Set Rs = New Recordset ''fOR bALES
            Rs.Open "SELECT count(baleno) FROM RM_ISSB B WHERE  DOCNO=" & Txtfields(0).Text & " AND docdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and   lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "' AND ISSUED='Y'", DB, adOpenStatic, adLockBatchOptimistic
            Set rsg = New Recordset ''fOR KGS
            rsg.Open "SELECT SUM(ACTISSKGS) FROM RM_ISSB B WHERE  DOCNO=" & Txtfields(0).Text & " AND docdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and   lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            
            Set RS2 = New Recordset
            RS2.Open "select isnull(isswt,0),isnull(issbal,0) from rm_lot where lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not RS2.EOF Then
                qty = RS2(0)
                selbale = RS2(1)
            Else
                qty = 0
                selbale = 0
            End If
            
'            qty = rs2(0)
'            selbale = rs2(1)
            DB.Execute ("update rm_lot set isswt = " & val(qty) & " - " & val(rsg(0)) & ",issbal=" & val(selbale) & " - " & val(Rs(0)) & " where  DIVCODE='" & Divcode & "' AND lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "' and lotyear='" & Year(yfdate) & "'"), a
        rs1.MoveNext
       Loop
       '*********************  BALE TABLE UPDATION **************************
       
       Set rs1 = New Recordset
       rs1.Open "select * from rm_issb where docno='" & adoSecondaryRS("docno") & "' and docdt='" & Format(adoSecondaryRS("docdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ORDER BY LOTNO,LOTDT", DB, adOpenStatic, adLockBatchOptimistic
       rs1.MoveFirst
       Do While Not rs1.EOF
                DB.Execute "update rm_bale set isqty=isqty-" & val(rs1("isskgs")) & ",actisskgs=actisskgs-" & val(rs1("actisskgs")) & ",issued='N' WHERE STATUS IN ('AC','AW') AND LOTNO=" & rs1("LotNo") & " and lotdt='" & Format(rs1("lotDt"), "yyyy-mm-dd") & "' and baleno=" & rs1("baleno") & " and lottype = '" & rs1("lottype") & "' and divcode='" & Divcode & "'  and isnull(rejflg,'N')='N'", a
                DB.Execute "update rm_bale set issued='Y' WHERE STATUS IN ('AC','AW') AND LOTNO=" & rs1("LotNo") & " and lotdt='" & Format(rs1("lotDt"), "yyyy-mm-dd") & "' and baleno=" & rs1("baleno") & " and lottype = '" & rs1("lottype") & "' and divcode='" & Divcode & "'  and isnull(rejflg,'N')='N' AND NETWT=ISNULL(ACTISSKGS,0)", a
                ''This code For Update "N" to Already Set "Y" Bale
                DB.Execute "update rm_ISSB set issued='N' WHERE LOTNO=" & rs1("LotNo") & " and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "' and baleno=" & rs1("baleno") & " and lottype = '" & rs1("lottype") & "' and divcode='" & Divcode & "'  and DOCNO<>" & adoPrimaryRS("DOCNO") & " AND DOCDT>='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "'", a
            rs1.MoveNext
        Loop
        DB.Execute ("delete from rm_issb where docno =" & Trim(Txtfields(0).Text) & " and docdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") + "' and divcode='" & Divcode & "' ")
        DB.Execute ("delete from rm_issh where docno =" & Trim(Txtfields(0).Text) & " and docdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") + "' and divcode='" & Divcode & "' ")
        If Txtisstype = "P" Then
            DB.Execute "DELETE FROM RM_MIXINGSTOCK WHERE divcode='" & Divcode & "' and ISSno =" & Trim(Txtfields(0).Text) & " and ISSdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'"
        End If

        ''DB.Execute "Update rm_lot set issbal=x.bal from (select count(Baleno)BAL,A.LOTNO,A.LOTDT,A.CATCD,A.LOTTYPE,B.LOTYEAR,B.DIVCODE FROM RM_BALE A,RM_LOT B Where B.LOTYEAR='" & Year(yfdate) & "' AND a.lotno = b.lotno And a.Lotdt = b.Lotdt And a.Catcd = b.Catcd And a.LOTTYPE = b.LOTTYPE AND A.DIVCODE=B.DIVCODE AND ISNULL(ISSUED,'N')='Y' AND A.DIVCODE='" & Divcode & "' GROUP BY A.LOTNO,A.LOTDT,A.CATCD,A.LOTTYPE,B.LOTYEAR,B.DIVCODE)X,RM_LOT Y Where X.DIVCODE='" & Divcode & "' AND x.lotno = Y.lotno And x.Lotdt = Y.Lotdt And x.Catcd = Y.Catcd And x.LOTTYPE = Y.LOTTYPE AND  Y.LOTYEAR='" & Year(yfdate) & "'"
    
        Opt = opt1
        DB.CommitTrans
    End If
       
    
    
    If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issH WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
        Txtfields(0).Text = Rs(0)

       If Txtisstype = "T" Then
            adoPrimaryRS("cntcd") = Txtfields(1).Text
            cntcode = Txtfields(1).Text
       End If
       If Txtisstype = "S" Or Txtisstype = "J" Then
            adoPrimaryRS("SLCODE") = Txtfields(1).Text
       End If
       
        adoPrimaryRS("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
        adoPrimaryRS("divcode") = Divcode
        adoPrimaryRS("isstype") = Left(Combo1.Text, 2)
        adoPrimaryRS("issto") = Left(Combo2.Text, 1)
        adoPrimaryRS("docno") = Txtfields(0).Text
        
        If Txtisstype.Text = "P" Then
            adoPrimaryRS("CNTCD") = Trim(Txtfields(1).Text)
            adoPrimaryRS("ordno") = Trim(Txtfields(13).Text)
            adoPrimaryRS("mixgrp") = Trim(Txtfields(8).Text)
            adoPrimaryRS("oilcode") = Trim(Txtfields(3).Text)
            adoPrimaryRS("oilwt") = val(Txtfields(4).Text)
            adoPrimaryRS("wtrwt") = val(Txtfields(5).Text)
            adoPrimaryRS("TINT") = Trim(Txtfields(6).Text)
            adoPrimaryRS("oilcode1") = Txtfields(11).Text
            adoPrimaryRS("oilwt1") = val(Txtfields(12).Text)
            adoPrimaryRS("Softwaste") = val(Txtfields(14).Text)
            
        ElseIf Txtisstype.Text = "S" Or Txtisstype.Text = "J" Or Txtisstype.Text = "R" Then
            adoPrimaryRS("slcode") = Trim(Txtfields(1).Text)
        End If
        
        If Txtisstype.Text = "T" Then
            adoPrimaryRS("Rdivcode") = Trim(Txtfields(1).Text)
        End If

            adoPrimaryRS.UpdateBatch adAffectAllChapters

            updSECONDARYRS.MoveFirst
            Do While Not updSECONDARYRS.EOF
                 If (updSECONDARYRS("Lot.No.") = "") Then
                     updSECONDARYRS.Delete adAffectCurrent
                 End If
                 updSECONDARYRS.MoveNext
            Loop
            updSECONDARYRS.MoveFirst
        
        opt1 = Opt
        Opt = ""
        
        If opt1 = "add" Then
            ILotNo = 0
            ILotdt = 1
            ilottype = 2
            Ivarcode = 4
            icolorcode = 7
            icategory = 6
         End If
         

        
       If Not adoSecondaryRS.EOF Then adoSecondaryRS.MoveFirst

       Do While Not adoSecondaryRS.EOF
           adoSecondaryRS!Divcode = Divcode
           adoSecondaryRS!ISSTYPE = Left(Combo1.Text, 2)
        
           adoSecondaryRS!docNo = val(Txtfields(0).Text)
           adoSecondaryRS("docdT") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
           
           If iSlipNo <> 0 Then
               adoSecondaryRS("ReqdocNo") = iSlipNo
               adoSecondaryRS("ReqdocdT") = Format(sSlipDate, "yyyy-mm-dd")
           End If
           
           Set rsa = New Recordset
           rsa.Open "SELECT ARRDT FROM RM_LOT WHERE LOTNO='" & grdDataGrid.Columns(ILotNo).Text & "' AND LOTDT='" & Format(grdDataGrid.Columns(ILotdt), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
           If rsa.RecordCount > 0 Then
              adoSecondaryRS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
           End If
           adoSecondaryRS.MoveNext
      Loop
       If Not adoSecondaryRS.EOF Then adoSecondaryRS.MoveFirst
      If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
      
      adoSecondaryRS.UpdateBatch adAffectAllChapters
      'updSECONDARYRS.UpdateBatch adAffectAllChapters
    If IsDate(Format(MaskEdBox1(1).Text, "YYYY-MM-DD")) = True Then
        Invdt = Format(MaskEdBox1(1).Text, "YYYY-MM-DD")
    Else
        Invdt = Null
    End If

      If Txtisstype.Text = "T" Or Txtisstype.Text = "S" Or Txtisstype.Text = "J" Or Txtisstype.Text = "R" Then
            DB.Execute "UPDATE RM_ISSH SET VEHICLENO='" & Txtfields(7).Text & "' WHERE DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' and divcode='" & Divcode & "'"
      End If
      If Txtisstype.Text = "P" Then
            DB.Execute "UPDATE RM_ISSH SET Mixgrp='" & Trim(Txtfields(8).Text) & "',cntcd='" & Txtfields(1).Text & "' WHERE divcode='" & Divcode & "' and  DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "'"
          
      ElseIf Txtisstype.Text = "B" Or Txtisstype.Text = "T" Then
            If Option5.value = True Then
                Cap = "Form XX"
            ElseIf Option6.value = True Then
                Cap = "Form XXVII"
            Else
                Cap = "No"
            End If
            If IsDate(Format(MaskEdBox1(1).Text, "YYYY-MM-DD")) = True Then
                Invdt = Format(MaskEdBox1(1).Text, "YYYY-MM-DD")
            Else
                Invdt = Null
            End If
            DB.Execute "UPDATE RM_ISSH SET CNTCD=NULL,ORDNO=NULL,Formno='" & Text16.Text & "',invoiceno='" & Txtfields(9).Text & "',invdate='" & Invdt & "',Driver='" & Txtfields(13).Text & "',TimeOut='" & Txtfields(10).Text & "',Form='" & Cap & "',VEHICLENO='" & Txtfields(7).Text & "',rdivcode='" & Txtfields(1).Text & "' WHERE DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' AND DIVCODE ='" & Divcode & "'"
      ElseIf Txtisstype.Text = "S" Or Txtisstype.Text = "J" Or Txtisstype.Text = "R" Then
            DB.Execute "UPDATE RM_ISSH SET CNTCD=NULL,ORDNO=NULL,VEHICLENO='" & Txtfields(7).Text & "',slcode='" & Txtfields(1).Text & "', invoiceno='" & Txtfields(9).Text & "',invdate='" & Format(Invdt, "YYYY-MM-DD") & "',Driver='" & Txtfields(13).Text & "',TimeOut='" & Txtfields(10).Text & "',Form='" & Cap & "' WHERE DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
      End If
       '*********************  BALE UPDATION **************************/
       If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
       
       Do While Not adoSecondaryRS.EOF
        Set balers = New Recordset
        balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno=" & adoSecondaryRS("BALENO") & " and isnull(rejflg,'N')='N'  and divcode='" & Divcode & "' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
        Set rs1 = New Recordset
        rs1.Open "select ISNULL(isqty,0) from rm_bale  where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALENO") & "  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        If rs1.RecordCount > 0 Then
            If adoSecondaryRS!AIKgs <> Empty Then
                If adoSecondaryRS!issued = "N" Then
                    DB.Execute ("update rm_bale set isqty= isnull(isqty,0)+" & val(adoSecondaryRS!AIKgs) & ",ActIssKgs=isnull(ActIssKgs,0) + " & val(adoSecondaryRS!AIKgs) & ",ISSUED= '" & adoSecondaryRS!issued & "'  where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALENO") & "  and divcode='" & Divcode & "' and isnull(rejflg,'N')='N'")
                Else
                    DB.Execute ("update rm_bale set isqty=isnull(isqty,0)+ " & adoSecondaryRS!AIKgs & ",ActIssKgs= isnull(ActIssKgs,0) + " & adoSecondaryRS!AIKgs & ",ISSUED= 'Y'  where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALENO") & " and divcode='" & Divcode & "' and isnull(rejflg,'N')='N'")
                End If
                If adoSecondaryRS!issued = "N" Then
                    DB.Execute ("update rm_lot set isswt=isnull(isswt,0) + " & val(adoSecondaryRS!AIKgs) & ",issbal=isnull(issbal,0) where lotno='" & adoSecondaryRS("Lot No.") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'")
                Else
                    DB.Execute ("update rm_lot set isswt=isnull(isswt,0) + " & val(adoSecondaryRS!AIKgs) & ",issbal=isnull(issbal,0)+ " & 1 & " where divcode='" & Divcode & "' and lotno='" & adoSecondaryRS("Lot No.") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotyear='" & Year(yfdate) & "'")
                End If
            Else
                DB.Execute ("update rm_bale set isqty=isnull(isqty,0)+" & val(adoSecondaryRS(11)) & ",ActIssKgs=" & val(adoSecondaryRS(11)) & ",ISSUED= 'Y'  where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALENO") & " and divcode='" & Divcode & "' and isnull(rejflg,'N')='N'")
                DB.Execute ("update rm_lot set isswt=isnull(isswt,0) + " & val(adoSecondaryRS(11)) & ",issbal=isnull(issbal,0)+ " & 1 & " where lotno='" & adoSecondaryRS("Lot No.") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "'")
            End If
        End If
        
            Set Rs = New Recordset
            Rs.Open "select VarietyReqIssue from rm_param ", DB, adOpenStatic
            If Rs(0) = "Y" Then
'                Set rs1 = New Recordset
'                rs1.Open "select * from Isskgs where varcode ='" & adoSecondaryRS!Variety & "'  and  DocNo =" & val(iSlipNo) & " and Docdt='" & Format(sSlipDate, "YYYY-MM-DD") & "', DB, adOpenStatic"
'                If rs1.EOF = False Then
                    strSQL = "update RM_IssReqB set issued= 'Y' , Isskgs = isnull(Isskgs,0) + 1 where varcode ='" & adoSecondaryRS!Variety & "'  and  DocNo =" & val(iSlipNo) & " and Docdt='" & Format(sSlipDate, "YYYY-MM-DD") & "' and lotno='" & adoSecondaryRS("Lot No.") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and divcode='" & Divcode & "'"
                    DB.Execute (strSQL)
'                    strSQL = "update RM_IssReqB set issued= 'Y' where Docno = " & val(rs1(0)) & " and docdate ='" & Format(rs1(1), "yyyy-MM-dd") & "'"
'                    DB.Execute (strSQL)
'                End If
            End If
            adoSecondaryRS.MoveNext
       Loop
       If Not UPDRS.EOF Then UPDRS.MoveFirst
       Dim CountBale As Long
       '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~''''' Mixing Stock Updation

       If Txtisstype.Text = "P" Then
               Set rsg = New Recordset
               '''rsg.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2 order by a.lotno,a.lotdt,a.varcode", db, adOpenStatic
               rsg.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",B.plotno ""Supplier Lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
               lotnos = 0
               LOTDT = 0
               Sum = 0
               CountBale = 0
               Set rsg.DataSource = adoSecondaryRS
               While Not rsg.EOF
                    Set RSKG = New Recordset
                    RSKG.Open "select isnull(ratekg,0) as ratekg  from rm_lot where lotno=" & rsg("Lot No.") & " AND lotdt='" & Format(adoSecondaryRS("DATE"), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        
                    If RSKG.RecordCount > 0 Then
                        ratekg = RSKG(0)
                    Else
                        ratekg = 0
                    End If

                    If lotnos <> rsg("Lot No.") Then
                        DB.Execute "INSERT INTO RM_MixingSTOCK (issno,issdt,catcd,lotno,lotdt,varcode,ratekg,mixkgs,mixbales,ISSTYPE,DIVCODE) VALUES ( " & adoPrimaryRS("DOCNO") & ",'" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "','" & rsg(2) & "'," & rsg("Lot No.") & ",'" & Format(rsg("Date"), "YYYY-MM-DD") & "','" & rsg("Variety") & "'," & ratekg & ",0,0,'" & Left(Combo1.Text, 2) & "','" & Divcode & "' )"
                    End If
                    Sum = Sum + rsg("aikgs")
                    CountBale = CountBale + 1
                    lotnos = rsg("Lot No.")
                    LOTDT = rsg("Date")
                   
                    rsg.MoveNext
        
                    If Not rsg.EOF Then
                        If lotnos <> rsg("Lot No.") Then
                            DB.Execute "update rm_Mixingstock set DIVCODE='" & Divcode & "',isskgs=" & Sum & ",issbale=" & CountBale & " WHERE ISSNO=" & adoPrimaryRS("DOCNO") & "AND ISSDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' AND LOTNO=" & lotnos & " AND LOTDT='" & Format(LOTDT, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
                            Sum = 0
                            CountBale = 0
                        End If
                    Else
                        strSQL = "update rm_Mixingstock set DIVCODE='" & Divcode & "',isskgs=" & Sum & ",issbale=" & CountBale & " WHERE ISSNO=" & adoPrimaryRS("DOCNO") & "AND ISSDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' AND LOTNO=" & lotnos & " AND LOTDT='" & Format(LOTDT, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
                        DB.Execute "update rm_Mixingstock set DIVCODE='" & Divcode & "',isskgs=" & Sum & ",issbale=" & CountBale & " WHERE ISSNO=" & adoPrimaryRS("DOCNO") & "AND ISSDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' AND LOTNO=" & lotnos & " AND LOTDT='" & Format(LOTDT, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
                    End If
               Wend
               'Opt = opt1
       End If
       
       '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
       
       '**********************LOT TABLE UPDATION **********************************/
       DB.CommitTrans
       MsgBox "Issue Details Saved!", vbInformation, head
       MsgBox "Doc Number is " & Txtfields(0).Text, vbInformation, head
       'SSTab1.Enabled = False
       Frame1.Enabled = False
       Frame4.Enabled = False
       Frame7.Enabled = False
       Screen.MousePointer = 0
       Opt = ""
       'Frame11.Visible = False
       Text13.Text = ""
       Text14.Text = ""
       TxtIsskgs = ""
       Txtissbale = ""
       Text7.Text = ""
       Text8.Text = ""
       Text3.Text = ""
       Text9.Text = ""
       Text10.Text = ""
       Text11.Text = ""
       Text4.Text = ""
       grid.clear
       Set grdData.DataSource = Nothing
              
       
      End If
   If Opt = "mod" Then
''        adoSecondaryRS.MoveFirst
''        Do While Not adoSecondaryRS.EOF
''            Set RS1 = New Recordset
''            RS1.Open "select ISNULL(isqty,0) from rm_bale  where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and divcode='" & Divcode & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("Bale No.") & "  and isnull(rejflg,'N')='N'", DB, adOpenStatic, adLockBatchOptimistic
''            If RS1.RecordCount > 0 Then
''                DB.Execute ("update rm_issb set ActIssKgs= " & val(adoSecondaryRS("Issued Kgs")) & " where lotno='" & adoSecondaryRS("Lot No") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and docno = " & Txtfields(0).Text & " and docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND BALENO=" & adoSecondaryRS("Bale No.") & "")
''                DB.Execute ("update rm_bale set ActIssKgs= " & val(adoSecondaryRS("Issued Kgs")) & "  where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND BALENO=" & adoSecondaryRS("Bale No.") & "  and isnull(rejflg,'N')='N'")
''            End If
''            adoSecondaryRS.MoveNext
''        Loop
        Call modification
'        DB.CommitTrans
        Text13.Text = ""
       Text14.Text = ""
       TxtIsskgs = ""
       Txtissbale = ""
       Text7.Text = ""
       Text8.Text = ""
       Text3.Text = ""
       Text9.Text = ""
       Text10.Text = ""
       Text11.Text = ""
       Text4.Text = ""
       grid.clear
       Set grdData.DataSource = Nothing
              
        MsgBox "Issue Detail Modified", vbInformation, head
        Screen.MousePointer = 0
        Opt = ""
        SSTab1.Enabled = False
    End If
 If Opt = "fnd" Then
    'DB.CommitTrans
    cnt = 0
    Opt = ""
 End If
 If Opt = "del" Then
    Dim msg As String
    msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
    If msg = vbYes Then
        If deltype = 2 Then
           On Error GoTo del
           'If DelType = 1 Then
            '*********************  LOT TABLE UPDATION **************************/
        'db.BeginTrans
           adoSecondaryRS.MoveFirst
           Set rs1 = New Recordset
          rs1.Open "select distinct lotno,lotdt,divcode,catcd,LOTTYPE,varcode from rm_issb where docno='" & adoSecondaryRS("docno") & "' and docdt='" & Format(adoSecondaryRS("docdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
           rs1.MoveFirst
           Do While Not rs1.EOF
                Set Rs = New Recordset ''fOR bALES
                Rs.Open "SELECT count(baleno) FROM RM_ISSB B WHERE  DOCNO=" & Txtfields(0).Text & " AND docdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and   lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "' AND ISSUED='Y'", DB, adOpenStatic, adLockBatchOptimistic
                Set rsg = New Recordset ''fOR KGS
                rsg.Open "SELECT SUM(ACTISSKGS) FROM RM_ISSB B WHERE  DOCNO=" & Txtfields(0).Text & " AND docdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and   lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                
                Set RS2 = New Recordset
                RS2.Open "select isnull(isswt,0),isnull(issbal,0) from rm_lot where lottype = '" & rs1("LOTTYPE") & "' and lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
                qty = RS2(0)
                selbale = RS2(1)
                DB.Execute ("update rm_lot set isswt = " & val(qty) & " - " & val(rsg(0)) & ",issbal=" & val(selbale) & " - " & val(Rs(0)) & " where lottype = '" & grdDataGrid.Columns(6).Text & "' and  DIVCODE='" & Divcode & "' AND lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "' and lotyear='" & Year(yfdate) & "'"), a
                
 
                
                
                
            rs1.MoveNext
           Loop
           '*********************  BALE TABLE UPDATION **************************
           '' Do While Not adoSecondaryRS.EOF
                Set Rs = New Recordset
             ''   rs.Open "Select distinct baleno,lotdt""Date"",lotno,lottype,actisskgs,ISSKGS from rm_issb where LOTNO=" & adoSecondaryRS("Lot No") & " and lotdt='" & Format(adoSecondaryRS("Date"), "yyyy-mm-dd") & "' and DOCNO=" & adoSecondaryRS("DOCNO") & " and DOCDT='" & Format(adoSecondaryRS("DOCDT"), "yyyy-mm-dd") & "' and lottype = '" & grddatagrid.Columns(6).Text & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                Rs.Open "Select distinct baleno,lotdt""Date"",lotno,lottype,actisskgs,ISSKGS,varcode from rm_issb where DOCNO=" & adoSecondaryRS("DOCNO") & " and DOCDT='" & Format(adoSecondaryRS("DOCDT"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ORDER BY LOTNO,LOTDT,BALENO", DB, adOpenStatic
                Do While Not Rs.EOF
                    DB.Execute "update rm_bale set isqty=isqty-" & val(Rs("ACTisskgs")) & ",actisskgs=actisskgs-" & val(Rs("actisskgs")) & ",issued='N' WHERE STATUS IN ('AC','AW') AND LOTNO=" & Rs("LotNo") & " and lotdt='" & Format(Rs("Date"), "yyyy-mm-dd") & "' and baleno=" & Rs(0) & " and lottype = '" & Rs("lottype") & "' and divcode='" & Divcode & "'  and isnull(rejflg,'N')='N'", a
                    DB.Execute "update rm_bale set issued='Y' WHERE STATUS IN ('AC','AW') AND LOTNO=" & Rs("LotNo") & " and lotdt='" & Format(Rs("Date"), "yyyy-mm-dd") & "' and baleno=" & Rs(0) & " and lottype = '" & Rs("lottype") & "' and divcode='" & Divcode & "'  and isnull(rejflg,'N')='N' AND NETWT=ISNULL(ACTISSKGS,0)", a
                    ''This code For Update "N" to Already Set "Y" Bale
                    DB.Execute "update rm_ISSB set issued='N' WHERE LOTNO=" & Rs("LotNo") & " and lotdt='" & Format(Rs("Date"), "yyyy-mm-dd") & "' and baleno=" & Rs(0) & " and lottype = '" & Rs("lottype") & "' and divcode='" & Divcode & "'  and DOCNO<>" & adoPrimaryRS("DOCNO") & " AND DOCDT>='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "'", a
                    
                    Set rs1 = New Recordset
                    rs1.Open "Select VarietyReqIssue From Rm_param", DB, adOpenStatic
                    If rs1(0) = "Y" Then
'                        Set rs1 = New Recordset
'                        rs1.Open "Select top 1 Docno,DocDate,Varcode,RowNo From Rm_RequisitionSlip Where Varcode='" & Rs!Varcode & "' AND ISNULL(ISSQTY,0)<>0 ORDER BY DOCNO DESC , DOCDATE", DB, adOpenStatic
'                        If rs1.EOF = False Then
'                            strSQL = "Update RM_ReQuisitionSlip Set IssQty=IssQty-1 where Issued='Y' and RowNo='" & rs1("Rowno") & "' and Docno='" & rs1("DocNo") & "' and DocDate='" & Format(rs1("DocDate"), "yyyy-MM-dd") & "' and varcode='" & rs1("Varcode") & "' "
'                            DB.Execute strSQL
'                        End If
                        strSQL = "update RM_IssReqB set  Isskgs = isnull(Isskgs,0)- 1 where varcode ='" & adoSecondaryRS!Variety & "'  and  DocNo =" & val(adoSecondaryRS("ReqDocNO")) & " and Docdt='" & Format(adoSecondaryRS("ReqDocDt"), "YYYY-MM-DD") & "' and lotno='" & adoSecondaryRS("Lot No") & "' and lotdt='" & Format(adoSecondaryRS("lot date"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'"
                        DB.Execute (strSQL)
                    End If

                    Rs.MoveNext
                Loop
            ''    adoSecondaryRS.MoveNext
           '' Loop
            DB.Execute ("delete from rm_issb where docno =" & Trim(Txtfields(0).Text) & " and docdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ")
            DB.Execute ("delete from rm_issh where docno =" & Trim(Txtfields(0).Text) & " and docdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ")
            If Txtisstype = "P" Then
                DB.Execute "DELETE FROM RM_MIXINGSTOCK WHERE divcode='" & Divcode & "' and ISSno =" & Trim(Txtfields(0).Text) & " and ISSdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'"
            End If
    
            DB.Execute "Update rm_lot set issbal=x.bal from (select count(Baleno)BAL,A.LOTNO,A.LOTDT,A.CATCD,A.LOTTYPE,B.LOTYEAR,B.DIVCODE FROM RM_BALE A,RM_LOT B Where B.LOTYEAR='" & Year(yfdate) & "' AND a.lotno = b.lotno And a.Lotdt = b.Lotdt And a.Catcd = b.Catcd And a.LOTTYPE = b.LOTTYPE AND A.DIVCODE=B.DIVCODE AND ISNULL(ISSUED,'N')='Y' AND A.DIVCODE='" & Divcode & "' GROUP BY A.LOTNO,A.LOTDT,A.CATCD,A.LOTTYPE,B.LOTYEAR,B.DIVCODE)X,RM_LOT Y Where X.DIVCODE='" & Divcode & "' AND x.lotno = Y.lotno And x.Lotdt = Y.Lotdt And x.Catcd = Y.Catcd And x.LOTTYPE = Y.LOTTYPE AND  Y.LOTYEAR='" & Year(yfdate) & "'"
            
        
    '            adoSecondaryRS.MoveFirst
    '            TmpDelRs.MoveFirst
    '            'adoSecondaryRS.UpdateBatch adAffectAllChapters
    '
    '            While Not TmpDelRs.EOF
    '                    While Not adoSecondaryRS.EOF
    '                        If TmpDelRs!docNo = adoSecondaryRS!docNo And TmpDelRs!DOCDT = adoSecondaryRS!DOCDT And TmpDelRs("Category") = adoSecondaryRS("Category") And TmpDelRs("Lot No") = adoSecondaryRS("Lot No") And adoSecondaryRS("Date") = TmpDelRs("Date") And adoSecondaryRS("Bale No.") = TmpDelRs("Bale No.") Then
    '
    '                        Else
    '
    '                            GoTo DeleteRecord
    '                        End If
    '
    '                        adoSecondaryRS.MoveNext
    '                    Wend
    'DeleteRecord:
    '                    DB.Execute "Delete from RM_Issb where DocNo='" & TmpDelRs("DocNo") & "' and DocDt='" & Format(TmpDelRs("DocDt"), "yyyy-MM-dd") & "' and CatCd='" & TmpDelRs("Category") & "' and LotNo='" & TmpDelRs("Lot No") & "' and LotDt='" & Format(TmpDelRs("Date"), "yyyy-MM-dd") & "' and BaleNo='" & TmpDelRs("Bale No.") & "'"
    '                    DB.Execute "Update RM_Lot set IssWt= IssWt - " & TmpDelRs("Issued Kgs") & ",IssBal= IssBal + 1 where Varcode='" & TmpDelRs("Variety") & "' and LotNo='" & TmpDelRs("Lot No") & "' and LotDt='" & Format(TmpDelRs("Date"), "yyyy-MM-dd") & "' and CatCd='" & TmpDelRs("Category") & "' "
    '                    DB.Execute "Update RM_Bale Set IsQty=NULL  , ActIssKgs = NULL,Issued='N' where BaleNo='" & TmpDelRs("Bale No.") & "' and LotNo='" & TmpDelRs("Lot No") & "' and LotDt='" & Format(TmpDelRs("Date"), "yyyy-MM-dd") & "' and CatCd='" & TmpDelRs("Category") & "' "
    '
    '                    TmpDelRs.MoveNext
    '            Wend
        DB.CommitTrans
        cnt = 0
            MsgBox "Issue Details Deleted!", vbInformation, head
            BUTTON(9).ToolTipText = "Save"
            On Error GoTo s1:
             DB.CommitTrans
        Else
        
            DB.CommitTrans
        End If
    Else
        'db.CommitTrans
        Call BUTTON_Click(10)
        Exit Sub
    End If
s1:
        Opt = ""
 End If
    'Return to query mode
    BUTTON(10).Enabled = True
    Call QUERY_MODE
    Call disablcontls
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    'calling newform_cancel procedure from module (also for save)
    Call NEWFORM1(BUTTON, GSNO)
    Frame1.Enabled = False
    Frame4.Enabled = False
    Frame7.Enabled = False
    lbl_bale.Visible = False
    Exit Sub
GOPRIMERROR:
cnt = 0
 If Err = -2147217900 Then
   MsgBox "Division Code Already Exists ", vbInformation, head
   GoTo gocancel
   End If
del:

If Err.Number = -2147217900 Then
    MsgBox "This Division code cannot be deleted as dependencies exist", , head
    BUTTON(9).ToolTipText = "Save"
    GoTo gocancel
    Exit Sub
End If

Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    On Error Resume Next
    
    Select Case Opt
    Case "add"
        DB.RollbackTrans
        SSTab1.Enabled = False
    Case "mod"
        DB.RollbackTrans
        SSTab1.Enabled = False
    Case "del"
        DB.RollbackTrans
        cnt = 0
    Case "fnd"
        DB.RollbackTrans
        SSTab1.Enabled = False
        cnt = 0
    End Select
        
    Opt = ""
    Call QUERY_MODE
    Screen.MousePointer = 0
    Call disablcontls
    lbl_bale.Visible = False
    grdDataGrid.Enabled = True
    'Frame11.Visible = True
    Text13.Text = ""
    Text14.Text = ""
    TxtIsskgs = ""
    Txtissbale = ""
    grid.clear
    Timer1.Enabled = False
    'procedure unique to this form  to set grid headings
    'calling cancl procedure from module
    'Call cancl(BUTTON)
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    Frame3.Visible = False
    Frame1.Visible = True
    SetColoumn
    Call QUERY_MODE
    SSTab1.Enabled = True
    Frame1.Enabled = False
    Frame4.Enabled = False
    Frame7.Enabled = False
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
Case 12
        Frame12.Visible = True
        Frame12.ZOrder 0
        Option8.value = True
        Option8.SetFocus
        SSTab1.Enabled = False
'        UserFooter1.Visible = True
'        UserFooter1.Load
        UserFooter1.ClearFooter
        cmd_report.Visible = True
        Buttonframe.Enabled = False

End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure BUTTON_Click of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub SetColoumn()
On Error GoTo SetColoumn_Error

    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,softwaste FROM RM_ISSH  WHERE 1 = 2  order by docno", DB, adOpenStatic, adLockOptimistic
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",b.plotno ""Supplier lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt,a.ReqDocNo,a.ReqDocDt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    Set updSECONDARYRS = New Recordset
    With updSECONDARYRS
           .Fields.Append "Lot.No.", adSmallInt, 5
           .Fields.Append "Date", adDate
           .Fields.Append "Lot Type", adChar, 1
           .Fields.Append "Supplier Lot No.", adVarChar, 20
           .Fields.Append "Variety", adVarChar, 10
           .Fields.Append "Variety Name", adVarChar, 40
           '.Fields.Append "Color", adVarChar, 4
           '.Fields.Append "Color Name", adVarChar, 20
           .Fields.Append "Category", adChar, 1
           .Fields.Append "Closing Bales", adSmallInt
           .Fields.Append "Closing Weights", adDouble
           .Fields.Append "Issued Bales", adSmallInt
    End With
    updSECONDARYRS.Open
    Set grdDataGrid.DataSource = updSECONDARYRS
    Set UPDRS = New Recordset
           UPDRS.Fields.Append "Iss Kgs", adDouble, 10
           UPDRS.Fields.Append "Iss bales", adSmallInt, 10
           UPDRS.Fields.Append "Lot No.", adSmallInt, 5
           UPDRS.Fields.Append "Lot Dt.", adDate
           UPDRS.Fields.Append "Lot Type.", adChar, 1
    UPDRS.Open
    grdDataGrid.Columns(0).Width = 705.2599
    grdDataGrid.Columns(1).Width = 929.7639
    grdDataGrid.Columns(2).Width = 840.189
    grdDataGrid.Columns(3).Width = 1150
    grdDataGrid.Columns(4).Width = 780
    grdDataGrid.Columns(5).Width = 1200
    grdDataGrid.Columns(6).Width = 1200
    grdDataGrid.Columns(7).Width = 1230.236
    grdDataGrid.Columns(8).Width = 1335.118
    
    grdDataGrid.Columns(9).Width = 1154.835
    'grdDataGrid.Columns(10).Width = 915.0237
    grdDataGrid.Columns(6).Alignment = dbgLeft
    grdDataGrid.Columns(7).Alignment = dbgRight
    grdDataGrid.Columns(8).Alignment = dbgRight
'   grddatagrid.Columns(10).Visible = False
'   grddatagrid.Columns(11).Visible = False
Exit Sub
SetColoumn_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure SetColoumn of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub cmd_report_Click()
Dim F_Date As String
On Error GoTo cmd_report_Click_Error

     F_Date = MaskEdBox1(0).Text
     
    Screen.MousePointer = 11
    typeflg = Left(Combo1.Text, 2)
    Set rsg = New Recordset
    rsg.Open "SELECT * FROM RM_ISSUETYPE WHERE ISSUE_CODE='" & typeflg & "'", DB
     
     If rsg.RecordCount > 0 Then
        typeflg = rsg("ISSTYPE")
     End If
     LtN = Txtfields(0).Text
     Set cnn = New Connection
     'rmiq
     cnn.Open connectstring
     
     If typeflg = "T" Then
        Txtfields(1).Text = adoPrimaryRS("rdivcode")
        'Call enjoyful(CStr(F_Date), CStr(Left(Combo1.Text, 2)), CInt(LtN))
        Call enjoyful(CStr(F_Date), CStr(Left(Combo1.Text, 2)), CInt(LtN), Txtfields(1).Text)
        Screen.MousePointer = 0
        Exit Sub
     End If
     
     If typeflg = "P" Or typeflg = "S" Then
     Set cnn = New Connection
        cnn.Open connectstring
          Dim grandtotal As Integer
            Set ResultRs = New Recordset
            'select distinct A.LotNo,A.LotDt,B.VARCODE, c.isstype from rm_issb A,RM_LOT B, rm_issuetype c where a.isstype=c.issue_code and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND a.divcode=b.divcode and docNo=213 AND a.ISSTYPE='P2' and a.divcode='01' AND DOCDT BETWEEN '2007-04-01' AND '2008-03-31' order by A.lotno
            ResultRs.Open "select distinct A.LotNo,A.LotDt,B.VARCODE, c.isstype  from rm_issb A,RM_LOT B, rm_issuetype c where a.isstype=c.issue_code and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND a.divcode=b.divcode and docNo=" & val(LtN) & _
                          " AND c.ISSTYPE='" & typeflg & "' and a.divcode='" & Divcode & "' AND DOCDT BETWEEN '" & _
                          Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & _
                          "' and dOCDT ='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and B.lotyear ='" & Year(yfdate) & "' order by A.lotno", DB, adOpenStatic
            
            If ResultRs.EOF Then
                MsgBox "No Records Found", vbInformation, head
                Screen.MousePointer = 0
                Exit Sub
            End If
            Set RPTV = New Report.ReportView
            z = FreeFile
            Close #z
            'Close
            Open "C:\CotRecn.TXT" For Output As #z
            pg1 = 1
            Co = 0
            dt = ResultRs!LOTNO & " - " & ResultRs!LOTDT
            Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
            Co = Co + 12
            tot = 0
            tot1 = 0
            tot2 = 0
            
            'Print #z, Space(7) & "Doc No. :" & Padr(LtN, 5, " ") & Space(2) & "Doc Date:" & Format(MaskEdBox1(0).Text, "dd-mm-yy") & Space(2) & "Mixing Count : " & Chr(15) & Text5.Text & Chr(15)
            Print #z,
            Co = Co + 2
            Do While Not ResultRs.EOF
                
                
                'Print #z, Space(5) & "Lot :"; Padr(ResultRs("lotno"), 5, " ") & Space(13) & Padr(Format(ResultRs("lotdt"), "dd/mm/yy"), 10, " "); Space(3) & Padr(ResultRs("VARCODE"), 10, " ")
                Print #z, Space(5) & "Lot: " + Padr(ResultRs("lotno"), 5, " ") & Space(2) & Padr(Format(ResultRs("lotdt"), "dd/mm/yy"), 10, " "); Space(1) & Padr(ResultRs("VARCODE"), 20, " ")
                
                Print #z,
                Co = Co + 1
                If Co >= PageLen Then
                   Print #z, Space(5) & String(60, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                   Co = Co + 12
                End If
                If typeflg <> "A" Then
                Set RESULT = New Recordset
                RESULT.Open "select distinct a.LotNo,a.LotDt,grwt,b.tarewt,isnull(b.moiSture_ET,0) as moiture,b.netwt,isnull(b.IsQty,0)'IsQty',isnull(C.ActIssKgs,0) 'AIKgs',isnull(C.ActIssKgs,0)-isnull(b.IsQty,0) 'Excess',c.Baleno,c.actisskgs  from rm_lot a,rm_bale b,rm_issb c, rm_issuetype d where a.divcode=b.divcode and a.divcode=c.divcode and a.divcode='" & Divcode & "' and d.isstype ='" & typeflg & "' and c.docno = " & LtN & " and a.LotNo=b.LotNo  AND A.LOTDT=B.LOTDT AND B.LOTDT=C.LOTDT and b.LotNo=c.LotNo and b.baleno=c.baleno and a.LotNo=" & ResultRs("lotno") & " and a.lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' and (b.IsQty>0 and b.ActIssKgs>0 )  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and C.dOCDT ='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' order by c.baleno", DB, adOpenStatic
                Else
                Set RESULT = New Recordset
                RESULT.Open "select distinct a.LotNo,a.LotDt,grwt,b.tarewt,isnull(b.moiSture_ET,0) as moiture,b.netwt,isnull(b.IsQty,0)'IsQty',isnull(C.ActIssKgs,0) 'AIKgs',isnull(C.ActIssKgs,0)-isnull(b.IsQty,0) 'Excess',c.Baleno,c.actisskgs from rm_lot a,rm_bale b,rm_issb c where a.divcode=b.divcode and a.divcode=c.divcode and c.isstype in ('P','Q') and c.docno = " & LtN & " and a.LotNo=b.LotNo  AND A.LOTDT=B.LOTDT AND B.LOTDT=C.LOTDT and b.LotNo=c.LotNo and b.baleno=c.baleno and a.LotNo=" & ResultRs("lotno") & " and a.lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' and (b.IsQty>0 and b.ActIssKgs>0 )  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and a.divcode='" & Divcode & "' and C.dOCDT ='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' order by c.baleno", DB, adOpenStatic
                End If
                'result.Open "select distinct LotNo,LotDt,isnull(ISSKGS,0)'IsQty',isnull(ActIssKgs,0) 'AIKgs',isnull(ActIssKgs,0)-isnull(IsSKGS,0) 'Excess',Baleno from rm_issb  where docno = " & LtN & "  and LotNo=" & ResultRs("lotno") & " and lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "'  AND '" & Format(yldate, "yyyy-mm-dd") & "'  order by baleno", DB, adOpenStatic
                Dim lcount As Integer
                  lcount = 0
                
                Do While Not RESULT.EOF
                Print #z, Space(5) & Padl(RESULT!baleno, 8, " ") + Space(13) + Padl(INF(RESULT("grwt"), 3), 11, " ") + Space(1) + Padl(INF(RESULT("tarewt"), 3), 11, " ") + Space(1) + Padl(INF(RESULT("MOITURE"), 3), 11, " ") + Space(1) + Padl(INF(RESULT("netwt"), 3), 11, " ") + Space(1) + Padl(INF(RESULT("actisskgs"), 3), 11, " ")
                Co = Co + 1
                If Co >= PageLen Then
                   Print #z, Space(5) & String(60, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                   Co = Co + 12
                End If
                If Not IsNull(RESULT!grwt) = True Then tot = tot + val(RESULT!grwt)
                If Not IsNull(RESULT!ActissKgs) = True Then tot1 = tot1 + val(RESULT!ActissKgs)
                If Not IsNull(RESULT("grwt")) = True Then GTot = GTot + val(RESULT("grwt"))
                If Not IsNull(RESULT("actisskgs")) = True Then gtot1 = gtot1 + val(RESULT("actisskgs"))
                 
                 
                 lcount = lcount + 1
                 grandtotal = grandtotal + 1
                 
                RESULT.MoveNext
                Loop
                
                Print #z,
                Co = Co + 1
                If RESULT.RecordCount > 1 Then
                    Print #z, Space(5); "** Lot Total **" '+ Space(3) + Padl(INF(Format(tot, "##.000"), 3), 14, " ") + Space(21 + 12) + Padl(INF((Format(tot1, "##.000")), 3), 15, " ") '; Chr(27); "F"
                    Print #z, Space(10); Padl(lcount, 3, " "); Space(10); Padl(INF(Format(tot, "##.000"), 3), 14, " ") + Space(21 + 12) + Padl(INF((Format(tot1, "##.000")), 3), 15, " ") '; Chr(27); "F"
                    
                    
                    Co = Co + 1
                End If
                If Co >= PageLen Then
                   Print #z, Space(5) & String(60, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                   Co = Co + 12
                End If
                tot = 0
                tot1 = 0
                ResultRs.MoveNext
                 
                    Print #z,
                    Co = Co + 1
                    If Co >= PageLen Then
                       Print #z, Space(5) & String(60, "-")
                       Print #z, Chr(12)
                       pg1 = pg1 + 1
                       Co = 0
                       Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                       Co = Co + 12
                    End If
                    
            Loop
            Print #z, Space(5) & String(80, "-")
            Co = Co + 1
            If Co >= PageLen Then
               Print #z, Space(5) & String(80, "-")
               Print #z, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
               Co = Co + 12
            End If
            
            Print #z, Space(5); "** Grand Total **" '+ Space(1) + Padl(INF(Format(GTot, "##.000"), 3), 14, " ") + Space(21 + 12) + Padl(INF(Format(gtot1, "##.000"), 3), 15, " ") '; Chr(27); "F"
            Print #z, Space(10); Padl(grandtotal, 3, " ") + Space(10); Padl(INF(Format(GTot, "##.000"), 3), 14, " ") + Space(21 + 12) + Padl(INF(Format(gtot1, "##.000"), 3), 15, " ") '; Chr(27); "F"
            If Co >= PageLen Then
               Print #z, Space(5) & String(80, "-")
               Print #z, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
            End If
            Print #z, Space(5) & String(80, "-")
            
            dTotalWgt = 0
            Set Rs = New Recordset
            Rs.Open "select sum(a.actisskgs) AS IssKgs,count(a.baleno) AS Bales from rm_issb A,RM_LOT B, " & _
                     "rm_issuetype c where a.isstype=c.issue_code and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND a.divcode=b.divcode " & _
                     "and docNo=" & val(LtN) & " AND c.ISSTYPE='" & typeflg & "' and a.divcode='" & Divcode & "' AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' and B.lotyear ='" & Year(yfdate) & "'", DB, adOpenStatic
            If Rs.EOF = False Then
                dTotalWgt = Rs(0)
            End If
            Dim dRatio As Double
            Set Rs = New Recordset
            Rs.Open "select d.varname, c.isstype, sum(a.actisskgs) AS IssKgs,count(a.baleno) AS Bales from rm_issb A,RM_LOT B, " & _
                     "rm_issuetype c,rm_var d where b.varcode = d.varcode and a.isstype=c.issue_code and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND a.divcode=b.divcode " & _
                     "and docNo=" & val(LtN) & " AND c.ISSTYPE='" & typeflg & "' and a.divcode='" & Divcode & "' AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' and B.lotyear ='" & Year(yfdate) & "' " & _
                     "GROUP  BY d.varname, c.isstype order by d.varname ", DB, adOpenStatic
                     
            If Rs.EOF = False Then
                Print #z,
                Print #z,
                Print #z, Space(13) & String(61, "-")
                Print #z, Space(13) & "Variety" & Space(20) & "    Quantity" & Space(2) & "     Weight" & Space(2) & "Ratio %"
                Print #z, Space(13) & String(61, "-")
'                Print #z,
            
                Rs.MoveFirst
                Do While Not Rs.EOF
                    dRatio = 0
                    dRatio = Round((Rs("isskgs") / dTotalWgt) * 100, 2)
                    Print #z, Space(13) & Padr(Rs("varname"), 25, "") & Space(2) & Padl(INF(Rs("bales"), 0), 12, "") & Space(1) & Padl(INF(Rs("isskgs"), 3), 12, "") & Space(2) & Padl(INF(dRatio, 2), 7, "")
                Rs.MoveNext
                Loop
                Print #z, Space(13) & String(61, "-")
                Print #z, Space(13) & "Total" & Space(34) & Padl(INF(dTotalWgt, 3), 13, "")
                Print #z, Space(13) & String(61, "-")
            End If
            
            Print #z,
            Print #z,
            Print #z,
            Print #z,
            Call footermod(CInt(z), UserFooter1.SelectedStr, 85)
            'Call FOOTER_PRINT(80, CStr(1), 5)
            Print #z, Chr(12)
        Close #z
        z = FreeFile
        Open "c:\CotRecn.bat" For Output As #z
        Print #z, "cd\"
        Print #z, "c:"
        Print #z, "cd\"
        Print #z, "type CotRecn.TXT>prn"
        Close #z
        z = FreeFile
        RPTV.txtfile = "c:\CotRecn.TXT"
        RPTV.Batfile = "c:\CotRecn.bat"
       ' Call issueproduction(CStr(Left(Combo1.Text, 2)), CInt(LtN), CStr(F_Date), Text5.Text, Txtfields(13).Text, Text12.Text)
        Screen.MousePointer = 0
        Exit Sub
     End If
                
     If typeflg = "B" Then
        'Call ISSUEBALEPRESS(CStr(F_Date), CStr(Left(Combo1.Text, 2)), CInt(LtN))
        Screen.MousePointer = 0
        Exit Sub
     End If
Me.MousePointer = vbNormal

Exit Sub
cmd_report_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure cmd_report_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub cmd_report_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo cmd_report_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame12.Visible = True Then
        Frame12.Visible = False
        cmd_report.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
ElseIf KeyCode = vbKeyLeft Then
    Option8.SetFocus
ElseIf KeyCode = vbKeyRight Then
    Option8.SetFocus
End If

Exit Sub
cmd_report_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure cmd_report_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_Change()
On Error GoTo Combo1_Change_Error

ISSTYPE = Trim(Left(Combo1.Text, 2))
Set rsa = New Recordset
rsa.Open "select ISNULL(isstype,'') from rm_issuetype where issue_code='" & ISSTYPE & "'", DB, adOpenStatic
If rsa.RecordCount > 0 Then
    Txtisstype.Text = rsa(0)
Else
    Txtisstype.Text = ""
End If
Call VisText(CStr(Txtisstype.Text))

''
''If Opt = "" Or Opt = " " Then
''On Error Resume Next
''   If adoPrimaryRS("isstype") <> "P" Then
''      TXTFIELDS(2).Visible = True
''      Text2.Visible = True
''      Label2.Visible = True
''   Else
''      TXTFIELDS(2).Visible = False
''      Text2.Visible = False
''      Label2.Visible = False
''   End If
''   If adoPrimaryRS("isstype") = "PR" Then
''      Combo1.Text = "PR-Production"
''        TXTFIELDS(1).Visible = True
''        TXTFIELDS(8).Visible = False
''        Label14.Visible = False
''        TXTFIELDS(7).Visible = False
''
''      TXTFIELDS(1).ZOrder
''   ElseIf adoPrimaryRS("isstype") = "T2" Then
''      Combo1.Text = "T2-Transfer"
''      TXTFIELDS(1).Visible = True
''      TXTFIELDS(8).Visible = False
''        Label14.Visible = True
''        TXTFIELDS(7).Visible = True
''
''      TXTFIELDS(1).ZOrder
''    ElseIf adoPrimaryRS("isstype") = "T3" Then
''      TXTFIELDS(1).Visible = True
''      TXTFIELDS(8).Visible = False
''      Label14.Visible = True
''      TXTFIELDS(7).Visible = True
''
''      Combo1.Text = "T3-Transfer"
''      TXTFIELDS(1).ZOrder
''   ElseIf adoPrimaryRS("isstype") = "SA" Then
''      Combo1.Text = "SA-Sales"
''      TXTFIELDS(1).Visible = False
''      TXTFIELDS(8).Visible = True
''      Label14.Visible = True
''      TXTFIELDS(7).Visible = True
''      TXTFIELDS(8).ZOrder
''   End If
''   If adoPrimaryRS("ISSTO") = "M" Then
''      Combo2.Text = "M-Mixing"
''   ElseIf adoPrimaryRS("ISSTO") = "D" Then
''      Combo2.Text = "D-Dying"
''   End If
''End If

Exit Sub
Combo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Combo1_Change of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_Click()
''If Left(Combo1.Text, 2) = "PR" Then
''    TXTFIELDS(2).Visible = False
''    Text2.Visible = False
''    TXTFIELDS(1).Visible = True
''    TXTFIELDS(4).Visible = True
''    TXTFIELDS(5).Visible = True
''    TXTFIELDS(6).Visible = True
''    TXTFIELDS(3).Visible = True
''    text1.Visible = True
''    Text3.Visible = True
''    Label3.Visible = True
''    Label1.Visible = True
''    Label4.Visible = True
''    Label8.Visible = True
''    TXTFIELDS(1).Visible = True
''    TXTFIELDS(8).Visible = False
''
''    TXTFIELDS(1).ZOrder
''    Label5.Caption = "Mixingcount"
''    Label5.Visible = True
''ElseIf Left(Combo1.Text, 2) = "SA" Then
''    TXTFIELDS(2).Visible = True
''    Text2.Visible = True
''    TXTFIELDS(1).Visible = True
''    Text5.Visible = True
''    Label14.Visible = True
''    TXTFIELDS(7).Visible = True
''
''    TXTFIELDS(4).Visible = False
''    TXTFIELDS(5).Visible = False
''    TXTFIELDS(6).Visible = False
''    TXTFIELDS(3).Visible = False
''    TXTFIELDS(8).ZOrder
''    text1.Visible = False
''    Text3.Visible = False
''    Label5.Caption = "Party"
''    Label3.Visible = False
''    Label1.Visible = False
''    TXTFIELDS(1).Visible = False
''    TXTFIELDS(8).Visible = True
''
''    Label4.Visible = False
''    Label8.Visible = False
''    Label5.Visible = True
''ElseIf Left(Combo1.Text, 1) = "T" Then
''    TXTFIELDS(2).Visible = True
''    Label5.Caption = "Count"
''    Text2.Visible = True
''    TXTFIELDS(1).Visible = False
''    TXTFIELDS(4).Visible = False
''    TXTFIELDS(5).Visible = False
''    TXTFIELDS(6).Visible = False
''    Label14.Visible = True
''    TXTFIELDS(7).Visible = True
''
''    TXTFIELDS(3).Visible = False
''    Label2.Visible = True
''    text1.Visible = False
''    Text3.Visible = False
''    TXTFIELDS(1).Visible = True
''    TXTFIELDS(8).Visible = False
''
''    Label3.Visible = False
''    Label1.Visible = False
''    Label4.Visible = False
''    Label8.Visible = False
''    TXTFIELDS(1).ZOrder
''    Label5.Visible = True
''End If
On Error GoTo Combo1_Click_Error

ISSTYPE = Trim(Left(Combo1.Text, 2))
Set rsa = New Recordset
rsa.Open "select ISNULL(isstype,'') as isstype from rm_issuetype where issue_code='" & ISSTYPE & "'", DB, adOpenStatic
If rsa.RecordCount > 0 Then
    Txtisstype.Text = rsa(0)
Else
    Txtisstype.Text = ""
End If
Call VisText(CStr(Txtisstype.Text))


Exit Sub
Combo1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Combo1_Click of Form FrmissueKgs", vbInformation, head

End Sub

Private Sub Combo1_GotFocus()
On Error GoTo Combo1_GotFocus_Error

If Opt = "mod" And Opt = "add" Then
    Combo1.BackColor = &HC0FFC0
    StatusBar1.Panels(2).Text = "Select a Purchase Type"
End If

Exit Sub
Combo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Combo1_GotFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo1_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Combo1_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
On Error GoTo Combo1_KeyPress_Error

KeyAscii = 0

Exit Sub
Combo1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Combo1_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error

If Combo1.Text = "" And Opt = "add" Then
   MsgBox "Please select Any Type From the Drop Down List", vbInformation, head
   Combo1.SetFocus
   Exit Sub
End If

' Set Rs = New Recordset
' Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issH WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
' txtfields(0).Text = Rs(0)

If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
    Call adddelmod(BUTTON)
    
    'BUTTON(9).Enabled = False
    'BUTTON(9).ToolTipText = "Add Record"
    Txtfields(0).Locked = True
    SSTab1.TabEnabled(1) = True
End If

If Opt = "mod" And Opt = "add" Then
    Combo1.BackColor = &HFFFFFF
    StatusBar1.Panels(2).Text = ""
End If
Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Combo1_LostFocus of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub Combo2_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo2_KeyDown_Error

If Opt = "ADD" Then
Flag = "Y"
End If
If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo2_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Combo2_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
      If Opt = "add" Then
            ILotNo = 0
            ILotdt = 1
            ilottype = 2
            Ivarcode = 3
            icolorcode = 6
            icategory = 5
         End If
         If Opt = "mod" Then
            ILotNo = 4
            ILotdt = 5
            ilottype = 6
            Ivarcode = 7
            icolorcode = 8
            icategory = 9
         End If
      

If (Txtisstype.Text = "P") Then
   If Trim(Txtfields(1).Text) = "" Then
      MsgBox "Please Enter The mixing Count", vbInformation, head & "Message"
      Exit Sub
   End If
End If

If MsgBox("Any Corrections?", vbYesNo, head) = vbYes Then
   grid.Enabled = True
'   grid.SetFocus
   Text3.Text = ""
   Text4.Text = ""
'   Text14.SetFocus
   Command1.Enabled = True
   BUTTON(9).Enabled = False
   BUTTON(12).Enabled = False
   BUTTON(10).Enabled = False
Else

    If Option3.value = True Then
    Command1.Enabled = False
'    BUTTON(9).Enabled = True
'    BUTTON(12).Enabled = True
'    BUTTON(10).Enabled = True

    If Opt = "add" Then
    
        
    
        Set Rs = New Recordset
        Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issH WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
        'txtfields(0).Text = Rs(0)
        If S = val(grdDataGrid.Columns(8).value) Or ChkEx = val(grdDataGrid.Columns(8).value) Then
           adoPrimaryRS("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-d")
           adoPrimaryRS("divcode") = Divcode
           adoPrimaryRS("isstype") = Left(Combo1.Text, 2)
           adoPrimaryRS("issto") = Left(Combo2.Text, 1)
           adoPrimaryRS("docno") = Rs(0)
           If (Combo1.Text = "T") Or (Combo1.Text = "SA") Then
               Set rst = New Recordset
               rst.Open "Select CNTCODE from rm_lot where lotno='" & grdDataGrid.Columns(0).Text & "' and lotdt='" & Format(grdDataGrid.Columns(1), "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
               If Not rst.EOF Then
                  adoPrimaryRS("CNTCD") = rst(0)
               End If
           Else
               adoPrimaryRS("CNTCD") = Txtfields(1).Text
           End If
           adoPrimaryRS("oilcode") = Txtfields(3).Text
           adoPrimaryRS("oilwt") = val(Txtfields(4).Text)
           adoPrimaryRS("wtrwt") = val(Txtfields(5).Text)
           adoPrimaryRS("oilcode1") = Txtfields(11).Text
           adoPrimaryRS("oilwt1") = val(Txtfields(12).Text)
    End If
           'adoprimaryrs("TINT") = Val(txtfields(6).Text)
         ''  adoPrimaryRS.UpdateBatch adAffectAllChapters
                
           If grid.Rows > 0 Then
              For i = 1 To grid.Rows
                 Dim refrs As Recordset
        '         balers.Bookmark = grid.RowBookmark(I)
        '         balers.Bookmark = grid.RowBookmark(I)
                If grid.TextMatrix(i, 1) <> "" Then
                 adoSecondaryRS.AddNew
                 adoSecondaryRS("DIVCODE") = adoPrimaryRS("DIVCODE")
                 adoSecondaryRS("BALENO") = grid.TextMatrix(i, 1)
                 adoSecondaryRS("CATCD") = grdDataGrid.Columns(6).Text
                 
                 Set rsa = New Recordset
                 rsa.Open "SELECT ARRDT FROM RM_LOT WHERE LOTNO='" & grdDataGrid.Columns(0).Text & "' AND LOTDT='" & Format(grdDataGrid.Columns(1), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                 If rsa.RecordCount > 0 Then
                    adoSecondaryRS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
                 End If
                 
                 adoSecondaryRS("ISSTYPE") = adoPrimaryRS("ISSTYPE")
                 adoSecondaryRS("Lot No.") = grdDataGrid.Columns(0).Text
                 adoSecondaryRS("Date") = Format(grdDataGrid.Columns(1), "yyyy-mm-dd")
                 adoSecondaryRS("DOCDT") = Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD")
                 adoSecondaryRS("DOCNO") = val(adoPrimaryRS("DOCNO"))
                  adoSecondaryRS("VARIETY") = grdDataGrid.Columns(4).Text
                 'adoSecondaryRS("Issued Kgs") = DataGrid1.Columns(3).Text
                 adoSecondaryRS("Issued Kgs") = val(grid.TextMatrix(i, 4))
                 adoSecondaryRS("lottype") = grdDataGrid.Columns(2).Text
                 If grid.TextMatrix(i, 5) = "" Then
                    'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(3).Text)
                    adoSecondaryRS("AIKgs") = val(grid.TextMatrix(i, 5))
                 Else
                    'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(4).Text)
                    adoSecondaryRS("AIKgs") = val(grid.TextMatrix(i, 5))
                 End If
                 'If DataGrid1.Columns(5).Text = "" Then
                 'If Val(adoSecondaryRS("Issued Kgs")) = Val(adoSecondaryRS("AIKgs")) Then
                 If grid.TextMatrix(i, 6) = "Y" Then
                    'DataGrid1.Columns(5).Text = "Y"
                    grid.TextMatrix(i, 6) = "Y"
                    adoSecondaryRS("ISSUED") = "Y"
                    
                 Else
                   'DataGrid1.Columns(5).Text = "N"
                   grid.TextMatrix(i, 6) = "N"
                    'adoSecondaryRS("ISSUED") = DataGrid1.Columns(5).Text
                    adoSecondaryRS("ISSUED") = grid.TextMatrix(i, 6)
                 End If
                 End If
              Next
        '---------------Entry Save
           Else
              balers.MoveFirst
              While Not balers.EOF
                 If Not IsNull(balers(4)) = True Then
                    If val(balers(4)) > 0 Then
                       adoSecondaryRS.AddNew
                       adoSecondaryRS("DIVCODE") = adoPrimaryRS("DIVCODE")
                       adoSecondaryRS("BALENO") = balers("baleno")
                       Set rsa = New Recordset
                        rsa.Open "SELECT ARRDT FROM RM_LOT WHERE LOTNO='" & grdDataGrid.Columns(0).Text & "' AND LOTDT='" & Format(grdDataGrid.Columns(1), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                        If rsa.RecordCount > 0 Then
                           adoSecondaryRS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
                        End If
                       adoSecondaryRS("CATCD") = grdDataGrid.Columns(5).Text
                       adoSecondaryRS("ISSTYPE") = adoPrimaryRS("ISSTYPE")
                       adoSecondaryRS("Lot No.") = grdDataGrid.Columns(0).Text
                       adoSecondaryRS("Date") = Format(grdDataGrid.Columns(1), "yyyy-mm-dd")
                       adoSecondaryRS("DOCDT") = Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD")
                       adoSecondaryRS("DOCNO") = val(adoPrimaryRS("DOCNO"))
                       adoSecondaryRS("Issued Kgs") = val(grid.TextMatrix(1, 4))
                       adoSecondaryRS("lottype") = grdDataGrid.Columns(2).Text
                       
                      If grid.TextMatrix(1, 5) = "" Then
                           'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(3).Text)
                           adoSecondaryRS("AIKgs") = val(grid.TextMatrix(1, 5))
                        Else
                           'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(4).Text)
                           adoSecondaryRS("AIKgs") = val(grid.TextMatrix(1, 5))
                        End If
                       
                        If val(adoSecondaryRS("Issued Kgs")) = val(adoSecondaryRS("AIKgs")) Then
                        'If DataGrid1.Columns(5).Text = "" Then
                           adoSecondaryRS("ISSUED") = "Y"
                        Else
                           adoSecondaryRS("ISSUED") = grid.TextMatrix(1, 6)
                        End If
                     End If
                 End If
                 balers.MoveNext
              Wend
           End If
        '---------------
        Else
           MsgBox "Select only " & grdDataGrid.Columns(10).Text & " Records from Datagrid", , head
           Command1.Enabled = False
           Exit Sub
        End If
Else
  
      For i = 1 To grid.Rows
         If grid.TextMatrix(i, 1) <> "" Then
         If Opt = "add" Then
            adoSecondaryRS.AddNew
         End If
         If i <> 1 And Opt = "mod" Then
                       
            
            LOTNO = grdDataGrid.Columns(ILotNo)
            Category = grdDataGrid.Columns(icategory)
            LOTDT = grdDataGrid.Columns(ILotdt)
            lottype = grdDataGrid.Columns(ilottype).Text
            Varcode = grdDataGrid.Columns(Ivarcode).Text
            adoSecondaryRS.AddNew
            grdDataGrid.AllowAddNew = True

            opt1 = Opt
            Opt = ""
            Opt = opt1
            grdDataGrid.Columns(ILotNo) = LOTNO
            grdDataGrid.Columns(icategory) = Category
            grdDataGrid.Columns(ILotdt) = LOTDT
            grdDataGrid.Columns(ilottype).Text = lottype
            grdDataGrid.Columns(Ivarcode).Text = Varcode
         End If
         
                
         
         adoSecondaryRS("DIVCODE") = Divcode
         If Opt = "add" Then
            adoSecondaryRS("BALENO") = grid.TextMatrix(i, 1)
         Else
            adoSecondaryRS("BALE NO.") = grid.TextMatrix(i, 1)
         End If
         
         If Opt = "add" Then
            adoSecondaryRS("CATCD") = grdDataGrid.Columns(icategory).Text
         Else
            adoSecondaryRS("category") = grdDataGrid.Columns(icategory).Text
         End If
         
         adoSecondaryRS("ISSTYPE") = Left(Combo1.Text, 2)
         Set rsa = New Recordset
         rsa.Open "SELECT ARRDT FROM RM_LOT WHERE LOTNO='" & grdDataGrid.Columns(ILotNo).Text & "' AND LOTDT='" & Format(grdDataGrid.Columns(ILotdt), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
         If rsa.RecordCount > 0 Then
           adoSecondaryRS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
         End If
         If Opt = "add" Then
            adoSecondaryRS("Lot No.") = grdDataGrid.Columns(ILotNo).Text
         End If
         If Opt = "mod" Then
            adoSecondaryRS("Lot No") = grdDataGrid.Columns(ILotNo).Text
         End If
         
         adoSecondaryRS("Date") = Format(grdDataGrid.Columns(ILotdt), "yyyy-mm-dd")
         adoSecondaryRS("DOCDT") = Format(MaskEdBox1(0).Text, "yyyy-mm-d")
         adoSecondaryRS("DOCNO") = Txtfields(0).Text
         If Opt = "add" Then
            adoSecondaryRS("Issued Kgs") = val(grid.TextMatrix(i, 4))
         End If
         If Opt = "mod" Then
            adoSecondaryRS("Issued Kgs") = val(grid.TextMatrix(i, 5))
         End If
         
         adoSecondaryRS("lottype") = grdDataGrid.Columns(ilottype).Text
         adoSecondaryRS("VARIETY") = grdDataGrid.Columns(Ivarcode).Text
         
         gvar = grdDataGrid.Columns(Ivarcode).Text
         
         diffkgs = Round(val(TxtIsskgs) - val(Text4.Text), 3)
         
         
         
         If Opt = "add" Then
            adoSecondaryRS("AIKgs") = val(grid.TextMatrix(i, 5))
         End If
         If Opt = "mod" Then
            adoSecondaryRS("AIKgs") = val(grid.TextMatrix(i, 4))
         End If
         

         If grid.TextMatrix(i, 6) = "Y" Then
            'DataGrid1.Columns(5).Text = "Y"
            grid.TextMatrix(i, 6) = "Y"
            adoSecondaryRS("ISSUED") = "Y"
            
         Else
           'DataGrid1.Columns(5).Text = "N"
           grid.TextMatrix(i, 6) = "N"
            'adoSecondaryRS("ISSUED") = DataGrid1.Columns(5).Text
            adoSecondaryRS("ISSUED") = grid.TextMatrix(i, 6)
         End If
         End If
      Next
'---------------Entry Save
  
'---------------
End If
    Frame1.Enabled = True
    Frame7.Enabled = True
    
    
  
    
    
   If vbYes = MsgBox("Do you want to enter more Lot details?", vbYesNo, head) Then
      SSTab1.Tab = 0
      grdDataGrid.Enabled = True
      Frame7.Visible = True
      Frame7.Enabled = True
      TxtIsskgs = ""
      Txtissbale = ""
      
      vTotBal = TxtTotBales.Text
      vNetWt = TxtNetWt.Text
      vActWt = TxtActWt.Text
      
           
      If Opt = "add" Then
        UPDRS.AddNew
        UPDRS("Iss Kgs") = val(Text4.Text)
        UPDRS("Iss bales") = val(Text3.Text)
        UPDRS("Lot No.") = grdDataGrid.Columns(0).Text
        UPDRS("Lot Dt.") = grdDataGrid.Columns(1).Text
        UPDRS("Lot Type.") = grdDataGrid.Columns(2).Text
        updSECONDARYRS.AddNew
       ' GrdDataGrid.Row = updSECONDARYRS.RecordCount - 1
        grdDataGrid.Col = 0
      Else
        adoSecondaryRS.AddNew
        grdDataGrid.Col = 4
      End If
      grdDataGrid.SetFocus
   Else
   If Opt = "add" Then
      UPDRS.AddNew
      UPDRS("Iss Kgs") = val(Text4.Text)
      UPDRS("Iss bales") = val(Text3.Text)
      UPDRS("Lot No.") = grdDataGrid.Columns(0).Text
      UPDRS("Lot Dt.") = grdDataGrid.Columns(1).Text
      UPDRS("Lot Type.") = grdDataGrid.Columns(2).Text
   End If
      SSTab1.Tab = 0
      Frame1.Visible = True
      Frame7.Visible = True
      Frame7.Enabled = True
      'lblctrl.Enabled = False
    BUTTON(9).Enabled = True
    BUTTON(12).Enabled = True
    BUTTON(10).Enabled = True
     BUTTON(9).SetFocus
      grdDataGrid.Enabled = False
   End If
   i = 0: wt = 0
   
   
        Text13.Text = ""
       Text14.Text = ""
       TxtIsskgs = ""
       Txtissbale = ""
       Text7.Text = ""
       Text8.Text = ""
       Text3.Text = ""
       Text9.Text = ""
       Text10.Text = ""
       Text11.Text = ""
       
       TxtActWt.Text = val(Text4.Text)
       Text4.Text = ""
       grid.clear
       Set grdData.DataSource = Nothing
   
End If


Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command1_Click of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub Command1_KeyPress(KeyAscii As Integer)
On Error GoTo Command1_KeyPress_Error

    If KeyAscii = vbKeyTab Then Call Command1_Click

Exit Sub
Command1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command1_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command10_Click()
On Error GoTo Command10_Click_Error

tgwt = 0
tnwt = 0
ttwt = 0
rec_cnt = 0
taisswt = 0
grid.clear
If ChkCount = TotalBale Then
        Command1.Enabled = True
        Command10.Enabled = False
        For RW = 1 To SpdBales.MaxRows
            SpdBales.Row = RW
            SpdBales.Col = E_SpdBal.SprdCheck
            If SpdBales.value = True Then
                rec_cnt = rec_cnt + 1
                grid.AddItem ""
                grid.TextMatrix(rec_cnt, 0) = rec_cnt
                grid.TextMatrix(rec_cnt, 1) = GetText(SpdBales, E_SpdBal.sprdBaleNo, RW)
                grid.TextMatrix(rec_cnt, 2) = Format(GetText(SpdBales, E_SpdBal.sprdGrossWt, RW), "0.000")
                
                tgwt = tgwt + val(GetText(SpdBales, E_SpdBal.sprdGrossWt, RW))
                Text9.Text = Format(val(tgwt), "0.000")
                
                grid.TextMatrix(rec_cnt, 3) = Format(GetText(SpdBales, E_SpdBal.sprdTareWt, RW), "0.000")
                ttwt = ttwt + val(GetText(SpdBales, E_SpdBal.sprdTareWt, RW))
                Text10.Text = Format(val(ttwt), "0.000")
                
                grid.TextMatrix(rec_cnt, 4) = Format(GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), "0.000")
                tnwt = tnwt + GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW)
                Text11.Text = Format(val(tnwt), "0.000")
                
                grid.TextMatrix(rec_cnt, 6) = "Y"
                
                Set rstPARAM = New Recordset
                rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
                If rstPARAM!actualIssueKgs = "Z" Then
                    grid.TextMatrix(rec_cnt, 5) = ""
                Else
                    grid.TextMatrix(rec_cnt, 5) = Format(GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), "0.000")
                End If
                
                Text3.Text = TotalBale
                Set chrs = New Recordset
                chrs.Open "select awt_flg from rm_lot where  DIVCODE='" & Divcode & "' AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
                If IsNull(chrs(0)) Then
                    chrs(0) = ""
                End If
                
                If chrs(0) = "Y" Then
                    Set rstPARAM = New Recordset
                    rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
                    If rstPARAM!actualIssueKgs = "Z" Then
                        grid.TextMatrix(rec_cnt, 5) = ""
                    Else
                        grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), Text8)
                    End If
                    'grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), Text8)
                    taisswt = taisswt + val(grid.TextMatrix(rec_cnt, 5))
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                If val(Text8.Text) < val(GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW)) And chrs(0) <> "Y" Then
                    Set rstPARAM = New Recordset
                    rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
                    If rstPARAM!actualIssueKgs = "Z" Then
                        grid.TextMatrix(rec_cnt, 5) = ""
                    Else
                        grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), Text8)
                    End If
                    
                    taisswt = taisswt + grid.TextMatrix(rec_cnt, 5)
                    Text4.Text = Format(val(taisswt), "0.0000")
                End If
                If chrs(0) = "N" Then
                    Set rstPARAM = New Recordset
                    rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
                    If rstPARAM!actualIssueKgs = "Z" Then
                        grid.TextMatrix(rec_cnt, 5) = ""
                    Else
                        grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), Text8)
                    End If
                    'grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), Text8)
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
           End If
        Next
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
        grid.SetFocus
   Else
        MsgBox "Bale Numbers Not Matching", vbInformation, head
        Exit Sub
   End If

Exit Sub
Command10_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command10_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command2_Click()    'Find Okay
On Error GoTo Command2_Click_Error

desc.Caption = "Query"
Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_ARRIVAL WHERE  arrno= '" & Trim(txtqry.Text) & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
'Bind the text boxes,check boxes and option buttons  to the data source
If adoPrimaryRS.RecordCount = 0 Then
   MsgBox "No Such Record Found ", vbInformation, head
   Exit Sub
End If
Call bindcontls
'calling query procedure from module
Call Query(BUTTON)
Frame6.Visible = False


Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command2_Click of Form FrmissueKgs", vbInformation, head
End Sub
Private Sub Command3_Click()    'Find Cancel
On Error GoTo Command3_Click_Error

Frame6.Visible = False

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command3_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

grdDataGrid.Columns(1).Text = Rs(0)
grdDataGrid.Columns(2).Text = Rs(1)
grdDataGrid.Columns(3).Text = Rs(2)
Text6.Text = Rs("date")
Set Namers = New Recordset
Namers.Open "Select varname from rm_var where varcode='" & Rs(2) & "'", DB, adOpenStatic
If Not Namers.EOF Then
   grdDataGrid.Columns(4).Width = 2500
   grdDataGrid.Columns(4).Text = Namers(0)
End If
grdDataGrid.Columns(5).value = Rs(3)
grdDataGrid.Columns(6).value = Rs(4)
grdDataGrid.Columns(7).value = Rs(5)
Frame2.Visible = False
SSTab1.Visible = True
SSTab1.ZOrder
grdDataGrid.Col = 8
grdDataGrid.SetFocus
SendKeys ("{right}")


Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command4_Click of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub Command5_Click()    'activex cancel
On Error GoTo Command5_Click_Error

If Label15.Caption = "Oil Details" Then
   Frame3.Visible = False
   SSTab1.Tab = 0
   Txtfields(3).Text = ""
   Exit Sub
End If
Frame3.Visible = False
SSTab1.Visible = True
SSTab1.Tab = 0
'Call BUTTON_Click(10)

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command5_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command6_Click()    'activex ok
On Error GoTo Command6_Click_Error

Select Case KslList1.listfield1
    Case "LOTNO" '"cast(a.lotno as varchar)"
         Txtfields(1).Text = KslList1.Code
         MaskEdBox1(1).Text = Format(KslList1.description, "dd/mm/yyyy")
         Dim partyrs As Recordset
         Set partyrs = New Recordset
         partyrs.Open "select catcd from rm_lot where lotno=" & Txtfields(1).Text & " and lotdt ='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
         Txtfields(2).Text = partyrs(0)
         Combo1.SetFocus
    Case "slname as SupplierName,city as City" '"slcode"
         If Combo1.Text <> "T-Transfer" Then
'            txtFields(2).Text = KslList1.description
'            Text2.Text = Trim(KslList1.Code)
            Txtfields(1).Text = KslList1.description
            Text5.Text = Trim(KslList1.Code)
            grdDataGrid.Col = 0
            grdDataGrid.Enabled = True
            grdDataGrid.SetFocus
         Else
            Txtfields(2).Text = Trim(KslList1.description)
            Text2.Text = Trim(KslList1.Code)
            grdDataGrid.Col = 0
            grdDataGrid.Enabled = True
            grdDataGrid.SetFocus
         End If
    Case "Product_Code" 'Or "cntcd as CountCode" '"cntcd"
         Txtfields(1).Text = KslList1.Code
         Text5.Text = KslList1.description
         grdDataGrid.Col = 0
         grdDataGrid.Enabled = True
         grdDataGrid.SetFocus
    Case "oilcode"
         Txtfields(3).Text = KslList1.Code
         Text1.Text = KslList1.description
         Txtfields(4).SetFocus
    Case "docno"
         Txtfields(0).Text = KslList1.Code
         MaskEdBox1(0).Text = Format(KslList1.description, "dd/mm/yyyy")
         a = Txtfields(0).Text
         b = MaskEdBox1(0).Text
         Text1.Text = ""
         Call delmodproc(CStr(a), CStr(b))
End Select
Frame3.Visible = False


Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command6_Click of Form FrmissueKgs", vbInformation, head
End Sub


Private Sub Command7_Click()

On Error GoTo Command7_Click_Error

      If Opt = "add" Then
            ILotNo = 0
            ILotdt = 1
            ilottype = 2
            Ivarcode = 3
            icolorcode = 6
            icategory = 5
         End If
         If Opt = "mod" Then
            ILotNo = 4
            ILotdt = 5
            ilottype = 6
            Ivarcode = 7
            icolorcode = 8
            icategory = 9
         End If
      


If Option1.value = True Then
    If Opt = "add" Then
        Text7.Locked = False
        Text8.Locked = False
        If Text7.Text = "" Then
            MsgBox "Please enter the Bale Number", vbInformation, head
            Text7.SetFocus
        Else
            grdDataGrid.Enabled = False
            Frame7.Enabled = False
            Txtfields(1).Locked = True
            Txtfields(7).Locked = True
            Frame1.Enabled = False
            SSTab1.Tab = 1
        
            grid.RowHeader = True
            grid.Enabled = True
            SSTab1.Visible = True
            Set chrs = New Recordset
            chrs.Open "select awt_flg from rm_lot where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "' and divcode='" & Divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
            If IsNull(chrs(0)) Then
                chrs(0) = ""
            End If
            Set balers = New Recordset
            balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and (NETWT-isnull(actisskgs,0))>0 and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
            If balers.RecordCount = 0 Then
                Set issrs = New Recordset
                issrs.Open "select Baleno,docno,docdt from rm_issb where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "' and issued='Y' and baleno='" & Text7.Text & "' and divcode='" & Divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
                MsgBox "This baleno " & issrs(0) & "  Already issued on  " & issrs(2) & "  and issue document number is  " & issrs(1) & ""
            End If
            
        If balers.RecordCount > 0 Then
            For i = 1 To grid.Rows
                If balers(0) = grid.TextMatrix(i, 1) Then
                    MsgBox "This Baleno Already Issued ", vbInformation, head
                    flg = "y"
                    Text7.Text = ""
                    Text7.SetFocus
                    Exit Sub
                Else
                    flg = ""
                End If
            Next
            If grid.Rows <= S And Not flg = "y" Then
                grid.RowHeight(grid.Rows) = 20
                 
                grid.Rows = grid.Rows + 1
                tbno = tbno + 1
                Text3.Visible = True
                Text3.Text = val(tbno)
                grid.TextMatrix(grid.Rows, 0) = grid.Rows
                grid.TextMatrix(grid.Rows, 1) = Text7
                grid.TextMatrix(grid.Rows, 2) = balers("gross weight")
                tgwt = tgwt + balers("gross weight")
                Text9.Text = Format(val(tgwt), "0.000")
                grid.TextMatrix(grid.Rows, 3) = balers("Tare weight")
                ttwt = ttwt + balers("Tare weight")
                Text10.Text = Format(val(ttwt), "0.000")
                grid.TextMatrix(grid.Rows, 4) = balers("net weight")
                tnwt = tnwt + balers("net weight")
                Text11.Text = Format(val(tnwt), "0.000")
                grid.TextMatrix(grid.Rows, 6) = "Y"
                grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                
                If val(Text8.Text) > val(balers("net weight")) And chrs(0) <> "Y" Then
                    MsgBox "Issued KGS must be less than or equal to the Actual Stock KGS", vbInformation, head
                    grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                    taisswt = taisswt + grid.TextMatrix(grid.Rows, 5)
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                
                If chrs(0) = "Y" Then
                    grid.TextMatrix(grid.Rows, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    taisswt = taisswt + val(grid.TextMatrix(grid.Rows, 5))
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
                    grid.TextMatrix(grid.Rows, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    taisswt = taisswt + grid.TextMatrix(grid.Rows, 5)
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                If chrs(0) = "N" Then
                    grid.TextMatrix(grid.Rows, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                Text7 = ""
                Text8 = ""
                Text7.SetFocus
                
                tbnoG = 0
                netwtG = 0
                TAREG = 0
                GROSWTG = 0
                ACTISSKGSG = 0
                For i = 1 To grid.Rows
                    If (grid.TextMatrix(i, 5) <> "" And Trim(grid.TextMatrix(i, 5)) <> "0") Or grid.TextMatrix(i, 6) <> "" Then
                      tbnoG = tbnoG + 1
                      ACTISSKGSG = ACTISSKGSG + val(grid.TextMatrix(i, 5))
                      netwtG = netwtG + val(grid.TextMatrix(i, 4))
                      GROSWTG = GROSWTG + val(grid.TextMatrix(i, 2))
                      TAREG = TAREG + val(grid.TextMatrix(i, 3))
                    End If
                Next
                Text11.Text = Format(netwtG, "0.000")
                Text10.Text = Format(TAREG, "0.000")
                Text9.Text = Format(GROSWTG, "0.000")
                Text4.Text = Format(ACTISSKGSG, "0.000")
                Text3.Text = tbnoG
                
            Else
                MsgBox "Closing Bales are Entered  ", vbInformation, head
                Text7 = ""
                Text8 = ""
                Text7.SetFocus
            End If
        Else
            Text7 = ""
            Text8 = ""
            Text7.SetFocus
        End If
        Label25.Caption = ""
        If val(grdDataGrid.Columns(8).Text) = val(tbno) Then
            Command7.Enabled = False
            Command1.Enabled = True
            Command1.SetFocus
        End If
    End If
    End If
End If

If Opt = "mod" Then
    Option2.value = True
End If
If Option2.value = True Then
    If Opt = "add" Or Opt = "mod" Then
        Text7.Locked = False
        Text8.Locked = False
        If Trim(TxtIsskgs.Text) = "" Then
            MsgBox "Please enter the KGS", vbInformation, head
            TxtIsskgs.SetFocus
        Else
            If Opt = "add" Then
                grdDataGrid.Enabled = False
            End If
            'Command1.Enabled = True
            'Frame1.Visible = True
           ' Frame7.Visible = False
            Frame1.Enabled = False
            Frame7.Enabled = False
            SSTab1.Tab = 1
        
            grid.RowHeader = True
            grid.Enabled = True
            SSTab1.Visible = True
            Set chrs = New Recordset
            chrs.Open "select awt_flg from rm_lot where lotno='" & Trim(grdDataGrid.Columns(ILotNo).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(ilottype).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(icategory).Text & "' and divcode='" & Divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
            If IsNull(chrs(0)) Then
                  chrs(0) = ""
            End If
            'Grid.clear
            'Call Format_Grid
            grid.Rows = 1
            grid.RowHeight(grid.Rows) = 20
            grid.Rows = grid.Rows + 1
           ' On Error Resume Next
            DB.Execute "Delete FROM Tmp_Wt"
            'Con.Execute "INSERT INTO Tmp_Wt Select Baleno, NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where Lotno = '" & List1.Text & "' and Catcd = '" & catcode & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(lotdt, "yyyy-mm-dd") & "' order by 1"
            
            If Opt = "add" Then
                DB.Execute "INSERT INTO Tmp_Wt Select Baleno,Grwt,Tarewt,Netwt,NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where STATUS IN ('AC','AW') AND Lotno = '" & Trim(grdDataGrid.Columns(ILotNo).Text) & "' and Catcd = '" & grdDataGrid.Columns(icategory).Text & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(grdDataGrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "' and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by 1"
            Else
                DB.Execute "INSERT INTO Tmp_Wt Select Baleno,Grwt,Tarewt,Netwt,NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where baleno not in (" & gbaleno & ") and STATUS IN ('AC','AW') AND Lotno = '" & Trim(grdDataGrid.Columns(ILotNo).Text) & "' and Catcd = '" & grdDataGrid.Columns(icategory).Text & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(grdDataGrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "' and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by 1"
            End If
            twt = 0
            Set balers = New Recordset
            balers.Open "Select * from Tmp_wt order by cast(baleno as decimal(5))", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
                Rs.MoveFirst
                TEMP = val(TxtIsskgs.Text)
                t1grwt = 0
                t1tarewt = 0
                t1netwt = 0
                t1actisskgs = 0
                t1bales = 0
                While Not Rs.EOF And TEMP > 0 And balers.RecordCount > 0
                    
                    If balers(4) > TEMP Then
                        grid.TextMatrix(grid.Rows - 1, 0) = grid.Rows - 1
                        grid.TextMatrix(grid.Rows - 1, 1) = balers("Baleno")
                        grid.TextMatrix(grid.Rows - 1, 2) = balers(1) 'grwt
                        grid.TextMatrix(grid.Rows - 1, 3) = balers(2) 'tarewt
                        grid.TextMatrix(grid.Rows - 1, 4) = balers(3) 'netwt
                        grid.TextMatrix(grid.Rows - 1, 5) = val(TEMP) 'actisskgs
                        grid.TextMatrix(grid.Rows - 1, 6) = "N" 'issued
                        TEMP = TEMP - val(TxtIsskgs.Text)
                        twt = twt + val(grid.TextMatrix(grid.Rows - 1, 5))
                        t1bales = t1bales + 1
                        t1grwt = t1grwt + grid.TextMatrix(grid.Rows - 1, 2)
                        t1tarewt = t1tarewt + grid.TextMatrix(grid.Rows - 1, 3)
                        t1netwt = t1netwt + grid.TextMatrix(grid.Rows - 1, 4)
                        t1actisskgs = t1actisskgs + grid.TextMatrix(grid.Rows - 1, 5)
                        
                    Else
                    
                        grid.TextMatrix(grid.Rows - 1, 0) = grid.Rows - 1
                        grid.TextMatrix(grid.Rows - 1, 1) = balers("Baleno")
                        grid.TextMatrix(grid.Rows - 1, 2) = balers(1) 'grwt
                        grid.TextMatrix(grid.Rows - 1, 3) = balers(2) 'tarewt
                        grid.TextMatrix(grid.Rows - 1, 4) = balers(3) 'netwt
                        grid.TextMatrix(grid.Rows - 1, 5) = balers(4) 'actisskgs
                        TEMP = TEMP - balers(4)
                        
                        grid.TextMatrix(grid.Rows - 1, 6) = "Y"
                        twt = twt + val(grid.TextMatrix(grid.Rows - 1, 4))
                        t1bales = t1bales + 1
                        t1grwt = t1grwt + grid.TextMatrix(grid.Rows - 1, 2)
                        t1tarewt = t1tarewt + grid.TextMatrix(grid.Rows - 1, 3)
                        t1netwt = t1netwt + grid.TextMatrix(grid.Rows - 1, 4)
                        t1actisskgs = t1actisskgs + grid.TextMatrix(grid.Rows - 1, 5)
                        
                    End If
                   
                  
                    balers.MoveNext
                    
                    If balers.EOF = False Then
                        grid.Rows = grid.Rows + 1
                    Else
                        GoTo GG:
                    End If
                   
                    
                    
                Wend
GG:
                    Text3.Text = t1bales
                    Text9.Text = Format(val(t1grwt), "0.000")
                    Text10.Text = Format(val(t1tarewt), "0.000")
                    Text11.Text = Format(val(t1netwt), "0.000")
                    Text4.Text = Format(t1actisskgs, "0.000")
    
            Else
                Text7 = ""
                Text8 = ""
                Text7.SetFocus
            End If
            Label25.Caption = ""
            'If val(grddatagrid.Columns(8).Text) = val(tbno) Then
                Command7.Enabled = True
                Command1.Enabled = True
                Command1.SetFocus
           ' End If
        
        End If
    End If
    On Error Resume Next
    CNT1 = grid.Rows
    For i = 2 To CNT1
        If grid.TextMatrix(i, 1) = "" Then
            grid.Rows = grid.Rows - 1
            CNT1 = CNT1 - 1
        End If
    Next
End If
If Option1.value = False And Option2.value = False Then
    MsgBox "Please Choose (Balewise/Kgswise)", vbInformation, head
    Exit Sub
End If


Exit Sub
Command7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command7_Click of Form FrmissueKgs", vbInformation, head

End Sub


Private Sub Command8_Click()
On Error GoTo Command8_Click_Error

IssFlg = ""
Set Rs = New Recordset
Rs.Open "Select * from rm_param", DB, adOpenStatic
'If Option3.Value = True Then
'    IssFlg = "Balewise"
'    'IssFlg = Rs("issflg")
'End If
'If Option4.Value = True Then
'    'IssFlg = "Kgswise"
'    IssFlg = Rs("issflg")
'End If
If Rs.RecordCount > 0 Then
    IssFlg = Rs("issflg")
Else
    IssFlg = "Balewise"
End If
If IssFlg = "Balewise" Then
    Option3.value = True
ElseIf IssFlg = "Kgswise" Then
    Option4.value = True
End If
'If Option3.Value = False And Option4.Value = False Then
'    MsgBox "Choose Any one from the List", vbInformation, head
'    Exit Sub
'End If
If Option3.value = True Then
    Option1.value = True
Else
    Option1.value = False
End If
If Option4.value = True Then
    Option2.value = True
Else
    Option2.value = False
End If
Frame10.Visible = False
SSTab1.Enabled = True
Buttonframe.Enabled = True
SSTab1.Enabled = True
Combo1.SetFocus
'Command8.Default = False

Exit Sub
Command8_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command8_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Command9_Click()
On Error GoTo Command9_Click_Error

Call BUTTON_Click(10)
Frame10.Visible = False
Buttonframe.Enabled = True

Exit Sub
Command9_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command9_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

'Private Sub DataGrid1_AfterColEdit(ByVal ColIndex As Integer)
''If Opt = "add" Or Opt = "mod" Then
''If ColIndex = 5 Then
''    If DataGrid1.Columns(4).Text > DataGrid1.Columns(3).Text Then
''        MsgBox "Actisskgs cannot be Greater than Net Weight ", vbInformation, head
''        grdDataGrid.Columns(4).Text = DataGrid1.Columns(3).Text
''        grdDataGrid.Col = 4
''       ' grdDataGrid.SetFocus
''
''    End If
''End If
''If ColIndex = 5 Then
''    If DataGrid1.Columns(4).Text = DataGrid1.Columns(3).Text Then
''     '   adoSecondaryRS("issued") = "N"
''        grdDataGrid.Columns(5).Text = "N"
''    End If
''End If
''
''End If
'
'If Opt = "add" Or Opt = "mod" Then
'    If DataGrid1.Col = 4 Then
'        If SSTab1.Tab = 1 Then
'            If Val(DataGrid1.Columns(4).Text) > Val(DataGrid1.Columns(3).Text) Then
'                MsgBox "Actual Issue Kgs cannot be Greater than Net Weight", vbInformation
'                DataGrid1.Columns(4).Text = DataGrid1.Columns(3).Text
'                DataGrid1.Columns(5).Text = "Y"
'                DataGrid1.Col = 4
'                DataGrid1.SetFocus
'            ElseIf Val(DataGrid1.Columns(4).Text) = Val(DataGrid1.Columns(3).Text) Then
'                DataGrid1.Columns(5).Text = "Y"
'                DataGrid1.Col = 4
'                DataGrid1.SetFocus
'            ElseIf Val(DataGrid1.Columns(4).Text) < Val(DataGrid1.Columns(3).Text) And Val(DataGrid1.Columns(4).Text) <> 0 Then
'                DataGrid1.Columns(5).Text = "N"
'                DataGrid1.Col = 4
'                DataGrid1.SetFocus
'            End If
'        End If
'    End If
'End If
'End Sub

'Private Sub DataGrid1_Click()
'If Opt = "add" Then
'   DataGrid1.AllowAddNew = True
'   DataGrid1.AllowUpdate = True
'   DataGrid1.Columns(3).Locked = False
'   'DataGrid1.Columns(4).Locked = False
'   DataGrid1.Enabled = True
'   RX = balers.AbsolutePosition
'   If grddatagrid.Row >= 0 Then
'      If DataGrid1.SelBookmarks.Count > Val(grddatagrid.Columns(10).Text) Then
'         MsgBox "Select only " & grddatagrid.Columns(8).Text & " Records from Datagrid", , head
'         Command1.Enabled = False
'         Exit Sub
'      ElseIf DataGrid1.SelBookmarks.Count <= Val(grddatagrid.Columns(10).Text) Then
'         If DataGrid1.SelBookmarks.Count > 1 Then
'            Text4 = ""
'            Text3 = ""
'            For I = 0 To DataGrid1.SelBookmarks.Count - 1
'               balers.Bookmark = DataGrid1.SelBookmarks(I)
'               Text4 = Val(Text4) + balers(3)
'               Text3.Text = DataGrid1.SelBookmarks.Count
'               Text3.Visible = True
'            Next
'         Else
'            On Error Resume Next
'            Text3.Text = DataGrid1.SelBookmarks.Count
'            Text3.Visible = True
'
'         End If
'      End If
'      If DataGrid1.SelBookmarks.Count = Val(grddatagrid.Columns(10).Text) Then
'         Command1.Enabled = True
'      Else
'         Command1.Enabled = False
'      End If
'   End If
'End If
'
'
'
'End Sub



'Private Sub DataGrid1_DblClick()
''''''''''''''''''
'End Sub

'Private Sub DataGrid1_KeyDown(KeyCode As Integer, Shift As Integer)
''If KeyCode = vbKeyA And Shift = vbAltMask Then
'If KeyCode = vbKeyF1 Then
'  DataGrid1.Columns(4).Text = DataGrid1.Columns(3).Text
'
'End If
'If KeyCode = vbKeyD And Shift = vbAltMask Then
'  DataGrid1.Columns(4).Text = ""
'End If




'End Sub


'Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
'If Opt = "mod" Then Exit Sub
'   DataGrid1.AllowAddNew = True
'   DataGrid1.AllowUpdate = True
'   DataGrid1.Columns(3).Locked = False
'   DataGrid1.Columns(4).Locked = False
'   RX = balers.AbsolutePosition
'   DataGrid1.EditActive = True
'   DataGrid1.Enabled = True
'   On Error GoTo BBB
'   If KeyAscii = 9 Or KeyAscii = 13 Then
'      Text4 = ""
'      ChkEx = 0
'      balers.MoveFirst
'      While Not balers.EOF
'         If Not IsNull(balers(4)) = True Then
'            If Val(balers(4)) <> 0 Then Text4 = Val(Text4) + Val(balers(4)): ChkEx = ChkEx + 1
'         End If
'         If ChkEx > Val(grddatagrid.Columns(8).Text) Then
'            MsgBox "Only " & grddatagrid.Columns(8).Text & " Records can be Selected from Datagrid", vbOKOnly, head
'            Command1.Enabled = False
'            Exit Sub
'         ElseIf ChkEx < Val(grddatagrid.Columns(8).Text) Then
'         End If
'         balers.MoveNext
'      Wend
'      If ChkEx = grddatagrid.Columns(8).Text Then
'         Command1.Enabled = True
'      Else
'         Command1.Enabled = False
'      End If
'      balers.MoveFirst
'      For I = 0 To RX - 1
'         If balers.EOF <> True Then balers.MoveNext
'      Next
'      If balers.BOF <> True Then balers.MovePrevious
'      DataGrid1.Col = 4
'   End If
'
'
'
'
'
'   If KeyAscii = 19 Then
'      Call DataGrid1.Scroll(0, -1 * DataGrid1.ApproxCount)
'      DataGrid1.Row = 0
'      For I = 0 To DataGrid1.ApproxCount
'        If Val(DataGrid1.Columns(4).Text) > 0 Then
'           DataGrid1.SelBookmarks.Add (DataGrid1.Bookmark)
'        End If
'        DataGrid1.Row = DataGrid1.Row + 1
'        Call DataGrid1.Scroll(0, 1)
'      Next
'      If DataGrid1.SelBookmarks.Count = grddatagrid.Columns(7).Text Then
'         Command1.Enabled = True
'      Else
'         Command1.Enabled = False
'      End If
'   End If
'   Exit Sub
'BBB:
'MsgBox ""
'End Sub

'Private Sub DataGrid1_KeyUp(KeyCode As Integer, Shift As Integer)
'If DataGrid1.Col = 4 Then
'   Call ToNumber(DataGrid1, KeyCode)
'End If
'End Sub



Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

If Not (DTPicker1.value >= yfdate And DTPicker1.value <= pdate) Then
   MsgBox "Issue date must be earlier or equal to the Processing date", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
Else
   MaskEdBox1(0).Mask = DTPicker1.value
   MaskEdBox1(0).Text = DTPicker1.value
End If

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure DTPicker1_CloseUp of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_CloseUp()
On Error GoTo DTPicker2_CloseUp_Error

If Not (DTPicker2.value >= yfdate And DTPicker2.value <= pdate) Then
   MsgBox "IIssue date must be earlier or equal to the Processing date", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
Else
   MaskEdBox1(1).Mask = DTPicker2.value
   MaskEdBox1(1).Text = DTPicker2.value
   Txtfields(10).SetFocus
End If

Exit Sub
DTPicker2_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure DTPicker2_CloseUp of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0

End Sub
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
On Error GoTo Form_KeyPress_Error

If KeyAscii = 13 Then SendKeys "({Tab})"

Exit Sub
Form_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Form_Load()
On Error GoTo Form_Load_Error

TxtTotBales.Locked = True
TxtNetWt.Locked = True
TxtActWt.Locked = True
Text14.Enabled = False
StatusBar1.Panels(1).Text = STBARmsg
Call openconnection
SSTab1.Visible = True
DATLAB.Caption = pdate
lblSoft.Visible = False
Txtfields(14).Visible = False

Call QUERY_MODE
DTPicker1.MinDate = yfdate
DTPicker1.MaxDate = pdate
DTPicker1.value = pdate
DTPicker2.value = pdate
grid.clear
grid.Rows = 1
'grid.RowHeader = False
Text7.Locked = True
Text8.Locked = True
grid.ColAllowEdit(1) = False
   grid.ColAllowEdit(1) = False
   grid.ColAllowEdit(2) = False
   grid.ColAllowEdit(3) = False
   grid.ColAllowEdit(4) = False
   grid.ColAllowEdit(5) = False
'grid.FormatString "Baleno       |gross weight           |Tare Weight            |Net Weight              |Aisskgs               |Issued"
'grid.AddLookup 6, "Y"
'grid.AddLookup 6, "N"

 vTotBal = 0
 vNetWt = 0
 vActWt = 0
 SSTab1.Enabled = True
 Frame1.Enabled = False
 Frame7.Enabled = False
 Frame4.Enabled = False
   Call NEWFORM(BUTTON)
   Call NEWFORM1(BUTTON, GSNO)
'SetColoumn


Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Load of Form FrmissueKgs", vbInformation, head

End Sub

Private Sub Form_Unload(Cancel As Integer)
Opt = ""
Screen.MousePointer = vbDefault
End Sub
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
'    If KeyCode = vbKeyAdd And Shift = 2 Then
'        Call BUTTON_Click(0)
'    ElseIf KeyCode = vbKeyM And Shift = 2 Then
'        Call BUTTON_Click(1)
'    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
'        Call BUTTON_Click(2)
'    ElseIf KeyCode = vbKeyL And Shift = 2 Then
'        Call BUTTON_Click(4)
'    ElseIf KeyCode = vbKeyR And Shift = 2 Then
'        Call BUTTON_Click(3)
'    ElseIf KeyCode = vbKeyF And Shift = 2 Then
'        Call BUTTON_Click(5)
'    ElseIf KeyCode = vbKeyN And Shift = 2 Then
'        Call BUTTON_Click(6)
'    ElseIf KeyCode = vbKeyO And Shift = 2 Then
'        Call BUTTON_Click(7)
'     ElseIf KeyCode = vbKeyE And Shift = 2 Then
'        Call BUTTON_Click(8)
'    ElseIf KeyCode = vbKeyS And Shift = 2 Then
'        Call BUTTON_Click(9)
'    ElseIf KeyCode = vbKeyZ And Shift = 2 Then
'        Call BUTTON_Click(10)
'    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
'        Call BUTTON_Click(11)
'    ElseIf KeyCode = vbKeyP And Shift = 2 Then
'        Call BUTTON_Click(12)
'    'ElseIf KeyCode = vbKeyW And Shift = 2 Then
'        'Call Command6_Click
'    End If
'If KeyCode = vbKeyA And Shift = 2 Then
'    If BUTTON(0).Enabled = True Then
'        Call BUTTON_Click(0)    ''Add
'    End If
'ElseIf KeyCode = vbKeyM And Shift = 2 Then
'   If BUTTON(1).Enabled = True Then
'        Call BUTTON_Click(1)    ''Modify
'   End If
'ElseIf KeyCode = vbKeyD And Shift = 2 Then
'    If BUTTON(2).Enabled = True Then
'        Call BUTTON_Click(2)    ''Delete
'    End If
'ElseIf KeyCode = vbKeyL And Shift = 2 Then
'    If BUTTON(3).Enabled = True Then
'        'Call BUTTON_Click(3)    ''List
'    End If
'ElseIf KeyCode = vbKeyF And Shift = 2 Then
'    If BUTTON(4).Enabled = True Then
'        Call BUTTON_Click(4)    ''Find
'    End If
'ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
'    If BUTTON(5).Enabled = True Then
'        Call BUTTON_Click(5)    ''First
'    End If
'ElseIf KeyCode = vbKeyDown And Shift = 2 Then
'    If BUTTON(6).Enabled = True Then
'        Call BUTTON_Click(6)    ''Next
'    End If
'ElseIf KeyCode = vbKeyUp And Shift = 2 Then
'    If BUTTON(7).Enabled = True Then
'        Call BUTTON_Click(7)    ''Previous
'    End If
'ElseIf KeyCode = vbKeyRight And Shift = 2 Then
'    If BUTTON(8).Enabled = True Then
'        Call BUTTON_Click(8)    ''Last
'    End If
'ElseIf KeyCode = vbKeyS And Shift = 2 Then
'    If BUTTON(9).Enabled = True Then
'        Call BUTTON_Click(9)    ''Save
'    End If
'ElseIf KeyCode = vbKeyBack And Shift = 2 Then
'    If BUTTON(10).Enabled = True Then
'        Call BUTTON_Click(10)    ''Cancel
'    End If
'ElseIf KeyCode = vbKeyQ And Shift = 2 Then
'    If BUTTON(11).Enabled = True Then
'        Call BUTTON_Click(11)   ''Exit
'    End If
'ElseIf KeyCode = vbKeyP And Shift = 2 Then
'    If BUTTON(12).Enabled = True Then
'        'Call BUTTON_Click(12)   ''Print Option
'    End If
'ElseIf KeyCode = vbKeyY And Shift = 2 Then
'    If BUTTON(13).Enabled = True Then
'        'Call BUTTON_Click(13)   ''Crystal Report
'    End If
'ElseIf KeyCode = vbKeyEscape Then
'    If BUTTON(10).Enabled = True Then
'        Call BUTTON_Click(10)   ''Cancel
'    End If
'End If
On Error GoTo BUTTON_KeyDown_Error

    

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure BUTTON_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error

    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    If Opt <> "add" Then
''        If adoPrimaryRS.RecordCount > 0 Then
''            On Error Resume Next
''            StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
''            If adoPrimaryRS("isstype") = "PR" Then
''                Combo1.Text = "PR-Production"
''                TXTFIELDS(1).Visible = True
''                TXTFIELDS(8).Visible = False
''                TXTFIELDS(1).ZOrder
''            ElseIf adoPrimaryRS("isstype") = "T2" Then
''                Combo1.Text = "T2-Transfer To unit2"
''                TXTFIELDS(1).Visible = True
''                TXTFIELDS(8).Visible = False
''
''                TXTFIELDS(1).ZOrder
''            ElseIf adoPrimaryRS("isstype") = "T3" Then
''                Combo1.Text = "T3-Transfer To Unit3"
''                TXTFIELDS(1).Visible = True
''                TXTFIELDS(8).Visible = False
''
''                TXTFIELDS(1).ZOrder
''            ElseIf adoPrimaryRS("isstype") = "SA" Then
''                TXTFIELDS(8).ZOrder
''                TXTFIELDS(1).Visible = False
''
''                TXTFIELDS(8).Visible = True
''
''                Combo1.Text = "SA-Sales"
''            End If
''            If Left(Combo1.Text, 2) <> "PR" Then
''                 Label14.Visible = True
''                 TXTFIELDS(7).Visible = True
''                 Label5.Caption = "Party"
''
''                ' BUTTON(12).Visible = True
''            ElseIf Left(Combo1.Text, 2) = "PR" Then
''               '  BUTTON(12).Visible = False
''                Label5.Caption = "Mixing Count"
''                 Label14.Visible = False
''                 TXTFIELDS(7).Visible = False
''
''            End If
''            If adoPrimaryRS("ISSTO") = "D" Then
''                Set CNTRS = New Recordset
''                CNTRS.Open "select CNTNAME from RM_COUNT where CNTCD='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
''                Text5.Text = CNTRS(0)
''            ElseIf Left(Combo2.Text, 1) = "M" Then
''                Set CNTRS = New Recordset
''                CNTRS.Open "select long_desc1 from ig_product where product_code='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
''                Text5.Text = CNTRS(0)
''            End If
''            Set CNTRS = New Recordset
''            CNTRS.Open "select long_desc1 from ig_product where product_code='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
''            Text5.Text = CNTRS(0)


If adoPrimaryRS.RecordCount > 0 Then
            On Error Resume Next
            StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
               ' Call clears
               
            Set rsa = New Recordset
            rsa.Open "select isstype from rm_issuetype where issue_code='" & adoPrimaryRS("isstype") & "'", DB, adOpenStatic
            Txtisstype = rsa(0)
            If rsa.RecordCount > 0 Then
                Call VisText(CStr(rsa(0)))
            End If
            Combo2.Text = adoPrimaryRS("issto")
            If IsNull(adoPrimaryRS("form")) = False Then
                If Trim(adoPrimaryRS("form")) = Trim(Option5.Caption) Then
                    Option5.value = True
                End If
                If Trim(adoPrimaryRS("form")) = Trim(Option6.Caption) Then
                    Option6.value = True
                End If
                If Trim(adoPrimaryRS("form")) = "No" Then
                    Option7.value = True
                End If
            End If
            
            If adoPrimaryRS("ISSTO") = "D" Then
                Set CNTRS = New Recordset
                CNTRS.Open "select CNTNAME from RM_COUNT where CNTCD='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If CNTRS.RecordCount > 0 Then
                    Text5.Text = CNTRS(0)
                Else
                    Text5.Text = ""
                End If
            ElseIf adoPrimaryRS("ISSTO") = "M" Then
                Set CNTRS = New Recordset
'                CNTRS.Open "select description from ig_product where product_code='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                CNTRS.Open "select CntName from Rm_Count where CntCD ='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If CNTRS.RecordCount > 0 Then
                    Text5.Text = CNTRS(0)
                Else
                    Text5.Text = ""
                End If
            End If
            'Set CNTRS = New Recordset
            'CNTRS.Open "select description from ig_product where product_code='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            'If CNTRS.RecordCount > 0 Then
            '    txtFields(1).Text = adoPrimaryRS("cntcd")
            '    Text5.Text = CNTRS(0)
            'End If
            If rsa(0) = "S" Or rsa(0) = "J" Or rsa(0) = "R" Then
                Txtfields(13).Text = adoPrimaryRS!driver
                MaskEdBox1(1).Text = Format(invdate, "DD/MM/YYYY")
                Set CNTRS = New Recordset
                CNTRS.Open "select slname from fa_slmas where slcode='" & adoPrimaryRS("slcode") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If CNTRS.RecordCount > 0 Then
                    If IsNull(adoPrimaryRS("slcode")) = False Then
                        Txtfields(1).Text = adoPrimaryRS("slcode")
                        Text5.Text = CNTRS(0)
                    Else
                        Txtfields(1).Text = ""
                        Text5.Text = ""
                    End If
                End If
            Else
                Set CNTRS = New Recordset
                'CNTRS.Open "select description from ig_product where product_code='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                CNTRS.Open "select * from rm_count where cntcd='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic
                If CNTRS.RecordCount > 0 Then
                    Txtfields(1).Text = adoPrimaryRS("cntcd")
                    Text5.Text = CNTRS(0)
                Else
                    Txtfields(1).Text = ""
                End If
            End If
            Set CNTRS = New Recordset
            CNTRS.Open "select mixgrpname from rm_mixgrp where mixgrpcd='" & adoPrimaryRS("mixgrp") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If CNTRS.RecordCount > 0 Then
                Txtfields(8).Text = adoPrimaryRS("mixgrp")
                 Text12.Text = CNTRS(0)
            End If
            
            If IsNull(adoPrimaryRS("invdate")) = False Then
                MaskEdBox1(1).Mask = adoPrimaryRS("invdate")
                MaskEdBox1(1).Text = MaskEdBox1(1).Mask
            End If
            
            
            Set CNTRS = New Recordset
            CNTRS.Open "select divname from pp_divmas where divcode='" & adoPrimaryRS("rdivcode") & "'", DB, adOpenStatic, adLockBatchOptimistic
'            If CNTRS.RecordCount > 0 Then
'                txtfields(1).Text = adoPrimaryRS("rdivcode")
'                 Text5.Text = CNTRS(0)
'            End If
'            TXTFIELDS(13).Text = ""
            Txtfields(0).Text = adoPrimaryRS("docno")
            If Txtisstype = "T" Or Txtisstype = "S" Or Txtisstype.Text = "J" Then
                Txtfields(13).Text = adoPrimaryRS("DRIVER")
            ElseIf Txtisstype = "P" Then
                If Not IsNull(adoPrimaryRS("ORDNO")) Then
                    Txtfields(13).Text = adoPrimaryRS("ORDNO")
                End If
            End If
               
               

''            Set RSA = New Recordset
''            RSA.Open "select isstype from rm_issuetype where issue_code='" & adoPrimaryRS("isstype") & "'", DB, adOpenStatic
''            If RSA.RecordCount > 0 Then
''                Call VisText(CStr(RSA(0)))
''            End If
''
''            If adoPrimaryRS("ISSTO") = "D" Then
''                Set CNTRS = New Recordset
''                CNTRS.Open "select CNTNAME from RM_COUNT where CNTCD='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
''                If CNTRS.RecordCount > 0 Then
''                    Text5.Text = CNTRS(0)
''                Else
''                    Text5.Text = ""
''                End If
''            ElseIf adoPrimaryRS("ISSTO") = "M" Then
''                Set CNTRS = New Recordset
''                CNTRS.Open "select description from ig_product where product_code='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
''                If CNTRS.RecordCount > 0 Then
''                    Text5.Text = CNTRS(0)
''                Else
''                    Text5.Text = ""
''                End If
''            End If
''            Set CNTRS = New Recordset
''            CNTRS.Open "select description from ig_product where product_code='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
''            If CNTRS.RecordCount > 0 Then
''                Txtfields(1).Text = adoPrimaryRS("cntcd")
''                Text5.Text = CNTRS(0)
''            End If
''
''            Set CNTRS = New Recordset
''            CNTRS.Open "select slname from fa_slmas where slcode='" & adoPrimaryRS("slcode") & "'", DB, adOpenStatic, adLockBatchOptimistic
''            If CNTRS.RecordCount > 0 Then
''                Txtfields(1).Text = adoPrimaryRS("slcode")
''                Text5.Text = CNTRS(0)
''            End If
''
''            Set CNTRS = New Recordset
''            CNTRS.Open "select mixgrpname from rm_mixgrp where mixgrpcd='" & adoPrimaryRS("mixgrp") & "'", DB, adOpenStatic, adLockBatchOptimistic
''            If CNTRS.RecordCount > 0 Then
''                Txtfields(8).Text = adoPrimaryRS("mixgrp")
''                 Text12.Text = CNTRS(0)
''            End If
''
''
''            Set CNTRS = New Recordset
''            CNTRS.Open "select divname from pp_divmas where divcode='" & adoPrimaryRS("rdivcode") & "'", DB, adOpenStatic, adLockBatchOptimistic
''            If CNTRS.RecordCount > 0 Then
''                Txtfields(1).Text = adoPrimaryRS("rdivcode")
''                 Text5.Text = CNTRS(0)
''            End If
''
''            Set RSA = New Recordset
''            RSA.Open "select Issue_code + ' - ' + issue_desc from rm_issuetype where issue_code='" & adoPrimaryRS("isstype") & "'", DB, adOpenStatic
''            If RSA.RecordCount > 0 Then
''                Combo1.Text = RSA(0)
''            End If
            
'            Set rs2 = adoPrimaryRS("childcmd").UnderlyingValue
'            If rs2.RecordCount > 0 Then
'                 rs2.MoveFirst
'                 Set RS1 = New Recordset
'                 RS1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"",ActIssKgs""AIKgs"" from rm_bale where 1=2", DB, adOpenStatic, adLockBatchOptimistic
'                 s = 0
'                 c = 0
'                 Do While Not rs2.EOF
'                 Set RS = New Recordset
'                 RS.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"",ISNULL(ActIssKgs,0) ""AIKgs"",issued from rm_bale where STATUS IN ('AC','AW') AND lotno=" & rs2(4) & " and lotdt='" & Format(rs2(5), "yyyy-mm-dd") & "' and baleno=" & rs2(11) & "  and isnull(rejflg,'N')='N'", DB, adOpenStatic, adLockBatchOptimistic
'                 c = c + 1
'                 RS1.AddNew
'                 RS1("Baleno") = RS(0)
'                 RS1("Gross Weight") = Format(RS(1), "#0.000")
'                 RS1("Tare Weight") = Format(RS(2), "#0.000")
'                 RS1("Net Weight") = Format(RS(3), "#0.000")
'                 RS1!AIKgs = val(Format(RS(4), "#0.000"))
'                 's = s + rs(4)
''                 grid.Rows = grid.Rows + 1
''                 grid.RowHeight(grid.Rows) = 20
''                 grid.TextMatrix(grid.Rows - 1, 0) = grid.Rows - 1
''                 grid.TextMatrix(grid.Rows - 1, 1) = rs(0)
''                 grid.TextMatrix(grid.Rows - 1, 2) = Format(rs(1), "#0.000")
''                 grid.TextMatrix(grid.Rows - 1, 3) = Format(rs(2), "#0.000")
''                 grid.TextMatrix(grid.Rows - 1, 4) = Format(rs(3), "#0.000")
''                 grid.TextMatrix(grid.Rows - 1, 5) = Val(Format(rs(4), "#0.000"))
''                 grid.TextMatrix(grid.Rows - 1, 6) = rs(5)
''
'            rs2.MoveNext
'            Loop
            
            
'                Set DataGrid1.DataSource = rs1
'                Text3.Text = C
'                Text4.Text = Format(s, "#0.000")
'                DataGrid1.Columns(1).NumberFormat = "#0.000"
'                DataGrid1.Columns(2).NumberFormat = "#0.000"
'                DataGrid1.Columns(3).NumberFormat = "#0.000"
'                DataGrid1.Columns(4).NumberFormat = "#0.000"
'                DataGrid1.Columns(1).Alignment = dbgRight
'                DataGrid1.Columns(2).Alignment = dbgRight
'                DataGrid1.Columns(3).Alignment = dbgRight
'                DataGrid1.Columns(4).Alignment = dbgRight
'                DataGrid1.Columns(4).Width = 1980.284
'                DataGrid1.Columns(3).Width = 1980.284
'                DataGrid1.Columns(2).Width = 2085.166
'                DataGrid1.Columns(1).Width = 2250.142
'                DataGrid1.Columns(0).Width = 1544.882
'          If Opt = "" Then
'              'DataGrid1.AllowUpdate = False
'          End If
'        End If

        '----------------ANBU---------------
        Dim balers As Recordset
        Set balers = New Recordset
        balers.Open "Select Count(Baleno) as Baleno,Sum(IssKgs) as IssueKgs,SUM(ActIssKgs) as ActIssKgs from RM_ISSB where DocNo='" & adoPrimaryRS!docNo & "' and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-MM-dd") & "'", DB
        If Not balers.EOF Then
            TxtTotBales.Text = balers!baleno
            TxtNetWt.Text = Format(balers!IssueKgs, "0.000")
            TxtActWt.Text = Format(balers!ActissKgs, "0.000")
        Else
            TxtTotBales.Text = 0
            TxtNetWt.Text = 0
            TxtActWt.Text = 0
        End If
        balers.Close
        Set balers = Nothing
        '-------------------------------
    End If
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

'assigning values from adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.Txtfields
    Set oText.DataSource = adoPrimaryRS
Next
If adoPrimaryRS.EOF = False Then
Txtfields(0).Text = adoPrimaryRS("docno")
Set Text16.DataSource = adoPrimaryRS
Set Combo1.DataSource = adoPrimaryRS
Combo2.DataField = "issto"
Set MaskEdBox1(0).DataSource = adoPrimaryRS
DTPicker1.MaxDate = pdate
DTPicker1.MinDate = yfdate
If IsNull(adoPrimaryRS("DOCDT")) = False Or adoPrimaryRS("DOCDT") = "" Then
        MaskEdBox1(0).Text = Format(adoPrimaryRS("DOCDT"), "dd/mm/yyyy")
        
End If
End If
End Sub
Public Sub Unbindcontls()
On Error Resume Next
For Each oText In Me.Txtfields
    Set oText.DataSource = Nothing
Next

Txtfields(0).Text = adoPrimaryRS("docno")
Set Text16.DataSource = Nothing
Set Combo1.DataSource = Nothing
'Combo2.DataField = Nothing
Set MaskEdBox1(0).DataSource = Nothing
DTPicker1.MaxDate = pdate
DTPicker1.MinDate = yfdate

End Sub

Public Sub ENABLCONTLS()
Dim i As Integer
On Error GoTo ENABLCONTLS_Error

For i = 0 To 5
    Txtfields(i).Locked = False
Next
Txtfields(8).Locked = False
MaskEdBox1(0).Enabled = True
DTPicker1.Enabled = True
Combo1.Enabled = True

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure ENABLCONTLS of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub disablcontls()
Dim i As Integer
On Error GoTo disablcontls_Error

For i = 0 To 5
    Txtfields(i).Locked = True
Next
MaskEdBox1(0).Enabled = False
DTPicker1.Enabled = False
Combo1.Enabled = False

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure disablcontls of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdData_DblClick()
On Error GoTo grdData_DblClick_Error

If Opt = "add" And IssFlg = "Balewise" Then
        Call ubgridalign
        i = 1
        Text13.Text = ""
        Text14.Text = ""
        MOVEPOINT = avilbalers.AbsolutePosition - 1
        avilbalers.MoveFirst
        avilbalers.Move MOVEPOINT
         
        grid.RowHeader = True
        grid.Enabled = True
        SSTab1.Visible = True
        Set chrs = New Recordset
        chrs.Open "select awt_flg from rm_lot where DIVCODE='" & Divcode & "' AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If IsNull(chrs(0)) Then
            chrs(0) = ""
        End If
        Set balers = New Recordset
        balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where DIVCODE='" & Divcode & "' AND STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and (NETWT-isnull(actisskgs,0))>0 and baleno='" & grdData.Columns(0).Text & "'  and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
        If balers.RecordCount = 0 Then
            Set issrs = New Recordset
            issrs.Open "select Baleno,docno,docdt from rm_issb where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "' and issued='Y' and baleno='" & Text7.Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
            MsgBox "This baleno " & issrs(0) & "  Already issued on  " & issrs(2) & "  and issue document number is  " & issrs(1) & ""
        End If
        If balers.RecordCount > 0 Then
            For i = 1 To grid.Rows
                If balers(0) = grid.TextMatrix(i, 1) Then
                    MsgBox "This Baleno Already Issued ", vbInformation, head
                    flg = "y"
                    Exit Sub
                Else
                    flg = ""
                End If
            Next
            
            If grid.Rows < S And Not flg = "y" Then
                flg = ""
                If grid.Rows = 0 Then
                ''    Grid.AddItem ""
                End If
                grid.Rows = grid.Rows + 1
                grid.RowHeight(grid.Rows) = 20
                'tbno = tbno + 1
                Text3.Visible = True
                Text3.Text = val(tbno)
                grid.TextMatrix(grid.Rows, 0) = grid.Rows
                grid.TextMatrix(grid.Rows, 1) = balers("Baleno")
                grid.TextMatrix(grid.Rows, 2) = balers("gross weight")
                tgwt = tgwt + balers("gross weight")
                Text9.Text = Format(val(tgwt), "0.000")
                grid.TextMatrix(grid.Rows, 3) = balers("Tare weight")
                ttwt = ttwt + balers("Tare weight")
                Text10.Text = Format(val(ttwt), "0.000")
                grid.TextMatrix(grid.Rows, 4) = balers("net weight")
                tnwt = tnwt + balers("net weight")
                Text11.Text = Format(val(tnwt), "0.000")
                grid.TextMatrix(grid.Rows, 6) = "Y"
                grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                ' If val(Text8.Text) > val(balers("net weight")) And chrs(0) <> "Y" Then
                'MsgBox "Issued KGS greater The Actual Stock KGS ", vbInformation, head
                grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                                
                'taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
                'Text4.Text = val(taisswt)
                'End If
                ''If chrs(0) = "Y" Then
                  ''  Grid.TextMatrix(Grid.Rows - 1, 5) = balers("net weight")
                    taisswt = taisswt + val(grid.TextMatrix(grid.Rows, 5))
                    Text4.Text = Format(val(taisswt), "0.000")
                ''End 0If
''                If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
''                    'grid.TextMatrix(grid.Rows - 1, 5) = Text8
''                    Grid.TextMatrix(Grid.Rows - 1, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
''                    taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
''                    Text4.Text = val(taisswt)
''                End If
                If chrs(0) = "N" Then
                    grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                    'taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                Text7 = ""
                Text8 = ""
                
           Else
                MsgBox "Closing Bales are Entered  ", vbInformation, head
                Text7 = ""
                Text8 = ""
                'Command7.Enabled = False
            End If
        Else
            'MsgBox "This Baleno Already Issued ", vbInformation, head
            Text7 = ""
            Text8 = ""
        End If
            Label25.Caption = ""
            
            netwt = 0
            ActissKgs = 0
            tbno = 0
            groswt = 0
            tare = 0
            For i = 1 To grid.Rows
                If (grid.TextMatrix(i, 5) <> "" And Trim(grid.TextMatrix(i, 5)) <> "0") Or grid.TextMatrix(i, 1) <> "" Then
                  tbno = tbno + 1
                  ActissKgs = ActissKgs + val(grid.TextMatrix(i, 5))
                  netwt = netwt + val(grid.TextMatrix(i, 4))
                  groswt = groswt + val(grid.TextMatrix(i, 2))
                  tare = tare + val(grid.TextMatrix(i, 3))
                End If
            Next
            Text11.Text = Format(netwt, "0.000")
            Text10.Text = Format(tare, "0.000")
            Text9.Text = Format(groswt, "0.000")
            Text4.Text = Format(ActissKgs, "0.000")
            Text3.Text = tbno
            tbno = 0
            For i = 1 To grid.Rows
                If (grid.TextMatrix(i, 5) <> "" And Trim(grid.TextMatrix(i, 5)) <> "0") Or grid.TextMatrix(i, 1) <> "" Then
                  tbno = tbno + 1
                End If
            Next
            Text3.Text = tbno
            If val(grdDataGrid.Columns(9).Text) = val(tbno) Then
                Command7.Enabled = False
                Command1.Enabled = True
                Command1.SetFocus
            Else
                Text7.SetFocus
            End If
    End If


Exit Sub
grdData_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grdData_DblClick of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grdDataGrid_AfterColEdit_Error



If Opt = "mod" Then
    If ColIndex = 11 Then
        If IsNull(adoSecondaryRS(11)) = True Then
            adoSecondaryRS(11) = 0
        End If
        If val(adoSecondaryRS(11)) = 0 Then
            MsgBox "Please enter issue KGS", vbInformation, head
            adoSecondaryRS(11).value = oldisswt
            Exit Sub
        End If
        
            Set RSOLD = New Recordset
            RSOLD.Open "select SUM(ACTISSKGS) from rm_issb where lotno=" & adoSecondaryRS("Lot No") & " and lotdt='" & Format(adoSecondaryRS("lot date"), "YYYY-MM-DD") & "' AND BALENO=" & adoSecondaryRS("BALE NO.") & " AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
            
            Set rsbalewt = New Recordset
            rsbalewt.Open "select netwt from rm_bale where lotno=" & adoSecondaryRS("Lot No") & " and lotdt='" & Format(adoSecondaryRS("lot date"), "YYYY-MM-DD") & "' AND BALENO=" & adoSecondaryRS("BALE NO.") & " AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
            TOTALISSUE = 0
            BALENETWT = 0
            If RSOLD.RecordCount > 0 Then
                TOTALISSUE = RSOLD(0)
            End If
            If rsbalewt.RecordCount > 0 Then
                BALENETWT = rsbalewt(0)
            End If
            diff = TOTALISSUE - oldisswt
            balkgs = BALENETWT - TOTALISSUE

            If val(adoSecondaryRS(11)) + val(diff) > val(BALENETWT) Then
                MsgBox "Available Balance Kgs is " & balkgs & "", vbInformation, head
                ''MsgBox "No balance Kgs for this bale.Please select another bale", vbInformation, head
                adoSecondaryRS(11).value = oldisswt
                Exit Sub
            End If
        
        If val(adoSecondaryRS(11)) < oldisswt Then
            adoSecondaryRS("issued") = "N"
        End If
    End If
End If

If ColIndex = 0 Then
   If grdDataGrid.Columns(0).Text <> "" Then
''         If IssFlg = "Balewise" Then
''            grddatagrid.Col = 8
''            grddatagrid.SetFocus
''         Else
''            Call grdDataGrid_AfterColEdit(8)
''            SSTab1.Tab = 1
''            TxtIsskgs.SetFocus
''         End If
''      End If
   End If
ElseIf ColIndex = 9 Then
    Set Rs = New Recordset
    Rs.Open "Select VarietyReqIssue From Rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
        Set Rs = New Recordset
        Rs.Open "SELECT  sum(isnull(Baleno,0) - isnull(Isskgs,0)) AS Qty FROM RM_ISSREQB WHERE Baleno > isnull(Isskgs,0) and varcode ='" & Trim(grdDataGrid.Columns(4).Text) & "' and Lotno =" & val(grdDataGrid.Columns(0).Text) & " AND Lotdt ='" & Format(grdDataGrid.Columns(1).Text, "YYYY-MM-DD") & "' and Catcd ='" & Trim(grdDataGrid.Columns(6).Text) & "' and Divcode ='" & Divcode & "' and DocNo=" & val(iSlipNo) & " and DocDt ='" & Format(sSlipDate, "YYYY-MM-DD") & "'", DB, adOpenStatic
        If Rs.EOF = False Then
            
            If sVar = Rs(0) Then
                ibales = val(grdDataGrid.Columns(9).Text)
            Else
                ibales = val(grdDataGrid.Columns(9).Text)
            End If
'            sVar = Rs(0)
            
            If Rs(0) < ibales Then
                MsgBox "Please enter the Below or Equal to ' " & Rs(0) & "  Bales ' which has Enter in Requisition Slip For this Lot", vbInformation, head
                ibales = ibales - val(grdDataGrid.Columns(9).Text)
                grdDataGrid.Col = 9
                grdDataGrid.SetFocus
                Exit Sub
                End If
        Else
            MsgBox "Issue bales must be less than or equal to Requisition Slip Bales", vbInformation, head
            grdDataGrid.Col = 9
            grdDataGrid.SetFocus
            Exit Sub
        End If
    End If


    TotalBale = val(grdDataGrid.Columns(9).Text)
    If val(grdDataGrid.Columns(9).Text) > val(grdDataGrid.Columns(7).Text) Then
        MsgBox "Issued bales must be less than or equal to closing bales", vbInformation, head
        grdDataGrid.Col = 9
        grdDataGrid.SetFocus
        Exit Sub
    End If
   If val(grdDataGrid.Columns(9).Text) > val(grdDataGrid.Columns(8).Text) Then
      MsgBox "Issued Bales must be less than or equal to Closing Bales", vbInformation, head
      grdDataGrid.Columns(9).value = grdDataGrid.Columns(7).value
      SSTab1.Tab = 0
      grdDataGrid.Enabled = True
      grdDataGrid.Columns(9).Text = 0
      grdDataGrid.Col = 9
      grdDataGrid.SetFocus
      TxtTotBales.Text = val(grdDataGrid.Columns(9).Text)
      Exit Sub
   Else
      TxtTotBales.Text = val(grdDataGrid.Columns(9).Text)
      'lblctrl.Visible = True
      SSTab1.Tab = 1
      Frame4.Visible = True
      grid.clear
      ''Grid.Rows = 1
      
      'grid.RowHeader = False
      grid.ColAllowEdit(1) = False
      grid.ColAllowEdit(1) = False
      grid.ColAllowEdit(2) = False
      grid.ColAllowEdit(3) = False
      grid.ColAllowEdit(4) = False
      grid.ColAllowEdit(5) = False
      If Opt = "add" Then
        S = val(grdDataGrid.Columns(9).Text)
      End If
      lbl_bale.Visible = True
      lbl_bale.Caption = "No. of bales issued " & S
          If Opt = "add" Then
            ILotNo = 0
            ILotdt = 1
            ilottype = 2
            Ivarcode = 4
            icolorcode = 7
            icategory = 6
         End If
         If Opt = "mod" Then
            ILotNo = 4
            ILotdt = 5
            ilottype = 6
            Ivarcode = 7
            icolorcode = 8
            icategory = 9
         End If
      
      
      'Set balers = New Recordset
      'balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where 1=2 ", db, adOpenDynamic, adLockBatchOptimistic
      'Set DataGrid1.DataSource = balers
      Command7.Enabled = True
      Text7.Locked = False
      Text8.Locked = False
      Text7.Text = ""
      Text8.Text = ""
      Label25.Caption = ""
      tbno = 0
      tgwt = 0
      ttwt = 0
      tnwt = 0
      taisswt = 0
      Text3.Text = ""
      Text10.Text = ""
      Text11.Text = ""
      Text4.Text = ""
      grid.Enabled = True
      If Opt = "add" Then
        grdDataGrid.Enabled = False
      End If
      Command1.Enabled = False
      Frame1.Visible = True
      Frame1.Enabled = True
      
      
      
    'If Text7.Enabled = True And Text7.Visible = True Then Text7.SetFocus
      
''      Set avilbalers = New Recordset
''      avilbalers.Open "select baleno ""Baleno"",NETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(isqty,0)) > 0 and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
''      Set grdData.DataSource = avilbalers
      'If Text13.Visible = True Then Text13.SetFocus
      
    Call SetGridHead
    With SpdBales
    .MaxRows = 0
    .MaxCols = 6
    .CursorStyle = CursorStyleArrow
    RW = 1
    .TextTip = TextTipFloatingFocusOnly
    .CellNoteIndicator = CellNoteIndicatorDoNotShowAndDoNotFireEvent
     Set avilbalers = New Recordset
       
        If Opt = "add" Then
            sWgtFlg = ""
            Set rslotcheck = New Recordset
            rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
            Set rslotcheck.DataSource = adoSecondaryRS
            
            baleno = ""
                        
            Set rsBale = New Recordset
            rsBale.Open "Select WeightFlg From RM_Lot where DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
            If rsBale.EOF = False Then
                sWgtFlg = rsBale(0)
            Else
                sWgtFlg = "M"
            End If
            
            
            
            
            If rslotcheck.RecordCount > 0 Then rslotcheck.MoveFirst
             g = 1
            For i = 1 To rslotcheck.RecordCount
                If rslotcheck("Lot No.") = grdDataGrid.Columns(0).Text And rslotcheck("Date") = grdDataGrid.Columns(1).Text And rslotcheck(2) = grdDataGrid.Columns(5).Text And rslotcheck("Variety") = grdDataGrid.Columns(3).Text Then
                   
                    If g = 1 Then
                        baleno = rslotcheck("baleno")
                    Else
                        baleno = baleno & "," & rslotcheck("baleno")
                    End If
                    g = g + 1
                End If
                
                rslotcheck.MoveNext
            Next
            g = 0
            If baleno = "" Then
                baleno = 0
            End If
            
            If sWgtFlg = "M" Then
                avilbalers.Open "select baleno ""Baleno"",Grwt,TareWt,NETWT-isnull(actisskgs,0) ""Balance Weight"",isnull(partybaleno,0) as Partybaleno from rm_bale where DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' and baleno  not in (" & baleno & ") order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
            Else
                avilbalers.Open "select baleno ""Baleno"",pGrswt as grwt,pTareWt as tarewt,pNETWT-isnull(actisskgs,0) ""Balance Weight"",isnull(partybaleno,0) as Partybaleno from rm_bale where DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' and baleno  not in (" & baleno & ") order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
            End If
        Else
            If Opt = "mod" Then
             Set rsg = New Recordset
             Set rsg.DataSource = adoSecondaryRS.DataSource
             opt1 = Opt
             Opt = ""
             gbaleno = "0"
             mlotno = grdDataGrid.Columns(ILotNo).Text
             mlotdt = grdDataGrid.Columns(ILotdt).Text
             mvarcode = grdDataGrid.Columns(Ivarcode).Text
             rsg.MoveFirst
             k = 1
             While Not rsg.EOF
                 If val(rsg("Lot No")) = val(mlotno) And rsg("Date") = CDate(mlotdt) And rsg("Variety") = mvarcode Then
                     If val(rsg("bale no.")) <> 0 Then
                             gbaleno = gbaleno & "," & rsg("bale no.")
                     End If
                 End If
                 rsg.MoveNext
             Wend
             rsg.MovePrevious
             Opt = opt1
             
            avilbalers.Open "select baleno ""Baleno"",Grwt,TareWt,NETWT-isnull(actisskgs,0) ""Balance Weight"",isnull(partybaleno,0) as Partybaleno from rm_bale where   baleno not in (" & gbaleno & ") and DIVCODE='" & Divcode & "' AND varcode='" & Trim(grdDataGrid.Columns(4).Text) & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(ILotNo).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(ilottype).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "' and catcd='" & Trim(grdDataGrid.Columns(icategory).Text) & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(actisskgs,0)) > 0 and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
           End If
        End If
        
      Set grdData.DataSource = avilbalers
      Text13.Text = grdData.Columns(0).Text
      SBale = grdData.Columns(0).Text
      If S > 0 Then
        grdData.Row = S - 1
      End If
      Text14.Text = grdData.Columns(0).Text
      EBale = grdData.Columns(0).Text
      Text14.Locked = True
'      Text14.SetFocus
     OptSequence.SetFocus
     BUTTON(9).Enabled = False
     BUTTON(12).Enabled = False
        BUTTON(10).Enabled = False

     Command1.Enabled = False
     Command10.Enabled = False
      
      avilbalers.MoveFirst
      Do While Not avilbalers.EOF
      
          .MaxRows = .MaxRows + 1
          SetTag SpdBales, DbCnt, E_SpdBal.SprdCheck, RW
          .SetText E_SpdBal.sprdBaleNo, RW, avilbalers("BaleNo")
          .SetText E_SpdBal.sprdGrossWt, RW, Format(avilbalers("Grwt"), "0.000")
          .SetText E_SpdBal.sprdTareWt, RW, Format(avilbalers("TareWt"), "0.000")
          .SetText E_SpdBal.sprdBalanceWt, RW, Format(avilbalers("Balance Weight"), "0.000")
          .SetText E_SpdBal.SprdPartyBaleNo, RW, avilbalers("Partybaleno")
          .Row = RW
          .Col = -1
          avilbalers.MoveNext
          RW = RW + 1
      Loop
  End With
  SpdBales.Enabled = True
  OptSequence.value = True
      ''For Automatic Loading while closing bales ar equal to Issue Bales
      If Opt = "add" Then
        If val(grdDataGrid.Columns(8).Text) = val(grdDataGrid.Columns(6).Text) And IssFlg = "Balewise" Then
      
        ''Baleno|Gr|Net Wght|Issue Qty|Act Issue Kgs|Issued"
        If avilbalers.RecordCount > 0 Then
           Set balers = New Recordset
           balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(isqty,0)) > 0 and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
            tgwt = 0
            tnwt = 0
            rec_cnt = 1
            Call ubgridalign
            grid.clear
            grid.AddItem ""
            netwt = 0
            ActissKgs = 0
            tbno = 0
            groswt = 0
            tare = 0
            
            While Not avilbalers.EOF
                grid.TextMatrix(rec_cnt, 0) = rec_cnt
                grid.TextMatrix(rec_cnt, 1) = avilbalers("Baleno")
                grid.TextMatrix(rec_cnt, 2) = balers("gross weight")
                tgwt = tgwt + balers("gross weight")
                Text9.Text = Format(val(tgwt), "0.000")
                grid.TextMatrix(rec_cnt, 3) = balers("Tare weight")
                ttwt = ttwt + balers("Tare weight")
                Text10.Text = Format(val(ttwt), "0.000")
                grid.TextMatrix(rec_cnt, 4) = balers("net weight")
                tnwt = tnwt + balers("net weight")
                Text11.Text = Format(val(tnwt), "0.000")
                grid.TextMatrix(rec_cnt, 6) = "Y"
                grid.TextMatrix(rec_cnt, 5) = balers("net weight")
                
                Set chrs = New Recordset
                chrs.Open "select awt_flg from rm_lot where  DIVCODE='" & Divcode & "' AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
                If IsNull(chrs(0)) Then
                    chrs(0) = ""
                End If
                
                If chrs(0) = "Y" Then
                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    taisswt = taisswt + val(grid.TextMatrix(rec_cnt, 5))
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    taisswt = taisswt + grid.TextMatrix(rec_cnt, 5)
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                If chrs(0) = "N" Then
                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                ActissKgs = ActissKgs + val(grid.TextMatrix(rec_cnt, 5))
                netwt = netwt + val(grid.TextMatrix(rec_cnt, 4))
                groswt = groswt + val(grid.TextMatrix(rec_cnt, 2))
                tare = tare + val(grid.TextMatrix(rec_cnt, 3))
                
                avilbalers.MoveNext
                rec_cnt = rec_cnt + 1
                Command1.Enabled = True
                If Not avilbalers.EOF Then
                    grid.AddItem ""
                End If
                tbno = tbno + 1
              
            Wend
            Text11.Text = Format(netwt, "0.000")
            Text10.Text = Format(tare, "0.000")
            Text9.Text = Format(groswt, "0.000")
            Text4.Text = Format(ActissKgs, "0.000")
            Text3.Text = tbno
            Command7.Enabled = False
            Command1.Enabled = True
'            Command1.SetFocus
        End If
    End If
    End If
End If
End If


Exit Sub
grdDataGrid_AfterColEdit_Error:
    

    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grdDataGrid_AfterColEdit of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub grddatagrid_BeforeColUpdate(ByVal ColIndex As Integer, OldValue As Variant, Cancel As Integer)
If Opt = "mod" Then
    If ColIndex = 10 Then
        
        Set RSOLD = New Recordset
        RSOLD.Open "select * from rm_issb where lotno=" & adoSecondaryRS("Lot No") & " and lotdt='" & Format(adoSecondaryRS("lot date"), "YYYY-MM-DD") & "' AND DOCNO=" & adoPrimaryRS("DOCNO") & " AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' AND BALENO=" & adoSecondaryRS("BALE NO.") & "", DB, adOpenStatic
        
        If RSOLD.RecordCount > 0 Then
            oldisswt = RSOLD("Actisskgs")
            oldissued = RSOLD("issued")
        Else
            oldisswt = val(adoSecondaryRS(10))
            oldissued = adoSecondaryRS("issued")
        End If
    End If
End If
End Sub

Private Sub grddatagrid_Click()
If Opt = "" Or Opt = " " Then
'   If grddatagrid.row > 0 Then
'      Set RS1 = New Recordset
'      'rs1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' AND LOTDT='" & Format(Trim(grdDataGrid.Columns(0).Text), "yyyy-mm-dd") & "' and netwt-isnull(isqty,0) >0 ", db, adOpenStatic, adLockBatchOptimistic
'      RS1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(4).Text) & "' AND LOTDT='" & Format(Trim(grddatagrid.Columns(5).Text), "yyyy-mm-dd") & "' and netwt-isnull(isqty,0) >0 ", DB, adOpenStatic, adLockBatchOptimistic
'      Set DataGrid1.DataSource = RS1
'      DataGrid1.Columns(0).Width = 1000
'      DataGrid1.Columns(1).Width = 2000
'      DataGrid1.Columns(2).Width = 2000
'      DataGrid1.Columns(3).Width = 3000
'      DataGrid1.Columns(3).NumberFormat = "######.000"
'      DataGrid1.Columns(2).NumberFormat = "######.000"
'      DataGrid1.Columns(1).NumberFormat = "######.000"
'      DataGrid1.Columns(1).Alignment = dbgRight
'      DataGrid1.Columns(2).Alignment = dbgRight
'      DataGrid1.Columns(3).Alignment = dbgRight
'   End If

End If
If Opt = "del" Then
    If val(deltype) = 1 Then
        StatusBar1.Panels(2).Text = "Double Click the Grid for Delete the Suitable Bale(s)"
    Else
        StatusBar1.Panels(2).Text = "Click save button for Delete Complete Issue(s)"
    End If
End If

End Sub

Private Sub grddatagrid_DblClick()
'On Error GoTo grddatagrid_DblClick_Error
If deltype = "1" Then
    If Opt = "del" Then
        Dim ActRs As Recordset
        If adoSecondaryRS.RecordCount > 1 Then
            
            cYesNo = MsgBox("Do you want to Delete Bale No.(" & adoSecondaryRS("Bale No.") & ") of Lot No.(" & adoSecondaryRS("Lot No") & ")", vbYesNo, head)
            If cYesNo = vbYes Then
                TxtTotBales.Text = val(TxtTotBales.Text) - 1
                cnt = cnt + 1
'                If cnt = 1 Then db.BeginTrans
                
                Set ActRs = New Recordset
                ActRs.Open "Select IssKgs,actISSkgs from RM_Issb where DocNo='" & adoSecondaryRS("DocNo") & "' and DocDt='" & Format(adoSecondaryRS("DocDt"), "yyyy-MM-dd") & "' and CatCd='" & adoSecondaryRS("Category") & "' and LotNo='" & adoSecondaryRS("Lot No") & "' and LotDt='" & Format(adoSecondaryRS("lot Date"), "yyyy-MM-dd") & "' and BaleNo='" & adoSecondaryRS("Bale No.") & "'", DB
                If Not ActRs.EOF Then
                    TxtNetWt.Text = val(TxtNetWt.Text) - ActRs("IssKgs")
                    TxtActWt.Text = val(TxtActWt.Text) - ActRs("ActIssKgs")
                End If
                ActRs.Close
                Set ActRs = Nothing
                
            
                'DB.Execute "Delete from RM_Issb where DocNo='" & adoSecondaryRS("DocNo") & "' and DocDt='" & Format(adoSecondaryRS("DocDt"), "yyyy-MM-dd") & "' and CatCd='" & adoSecondaryRS("Category") & "' and LotNo='" & adoSecondaryRS("Lot No") & "' and LotDt='" & Format(adoSecondaryRS("Date"), "yyyy-MM-dd") & "' and BaleNo='" & adoSecondaryRS("Bale No.") & "'"
                'DB.Execute "Update RM_Lot set IssWt= IssWt + " & adoSecondaryRS("Issued Kgs") & ",IssBal= IssBal + 1 where Varcode='" & adoSecondaryRS("Variety") & "' and LotNo='" & adoSecondaryRS("Lot No") & "' and LotDt='" & Format(adoSecondaryRS("Date"), "yyyy-MM-dd") & "' and CatCd='" & adoSecondaryRS("Category") & "' "
                'DB.Execute "Update RM_Bale Set IsQty= IsQty + " & adoSecondaryRS("Issued Kgs") & " , ActIssKgs = ActIssKgs + " & adoSecondaryRS("Issued Kgs") & " where BaleNo='" & adoSecondaryRS("Bale No.") & "' and LotNo='" & adoSecondaryRS("Lot No") & "' and LotDt='" & Format(adoSecondaryRS("Date"), "yyyy-MM-dd") & "' and CatCd='" & adoSecondaryRS("Category") & "' "
                
                DB.Execute "Delete from RM_Issb where DocNo='" & adoSecondaryRS("DocNo") & "' and DocDt='" & Format(adoSecondaryRS("DocDt"), "yyyy-MM-dd") & "' and CatCd='" & adoSecondaryRS("Category") & "' and LotNo='" & adoSecondaryRS("Lot No") & "' and LotDt='" & Format(adoSecondaryRS("lot Date"), "yyyy-MM-dd") & "' and BaleNo='" & adoSecondaryRS("Bale No.") & "'"
                DB.Execute "Update RM_Lot set IssWt= IssWt - " & adoSecondaryRS("Issued Kgs") & ",IssBal= IssBal - 1 where Varcode='" & adoSecondaryRS("Variety") & "' and LotNo='" & adoSecondaryRS("Lot No") & "' and LotDt='" & Format(adoSecondaryRS("lot Date"), "yyyy-MM-dd") & "' and CatCd='" & adoSecondaryRS("Category") & "' "
                DB.Execute "Update RM_Bale Set IsQty= NULL , ActIssKgs = NULL,ISSUED='N' where BaleNo='" & adoSecondaryRS("Bale No.") & "' and LotNo='" & adoSecondaryRS("Lot No") & "' and LotDt='" & Format(adoSecondaryRS("lot Date"), "yyyy-MM-dd") & "' and CatCd='" & adoSecondaryRS("Category") & "' "
                iCount = iCount + 1
                
                Set Rs = New Recordset
                Rs.Open "Select VarietyReqIssue From Rm_param", DB, adOpenStatic
                If Rs(0) = "Y" Then
'                    Set rs1 = New Recordset
'                    rs1.Open "Select top 1 Docno,DocDate,Varcode,RowNo From Rm_RequisitionSlip Where Varcode='" & adoSecondaryRS!Variety & "' AND ISNULL(ISSQTY,0)<>0 ORDER BY DOCNO DESC,DOCDATE", DB, adOpenStatic
'                    If rs1.EOF = False Then
'                        iDocNo = rs1(0)
'                        sDocDate = Format(rs1(1), "YYYY-MM-DD")
'                        sVarcode = rs1(2)
'                        iRowNo = rs1(3)
'                        strSQL = "Update RM_IssreqB Set Isskgs=IssQty-1 where Issued='Y' and RowNo='" & rs1("Rowno") & "' and Docno='" & rs1("DocNo") & "' and DocDate='" & Format(rs1("DocDate"), "yyyy-MM-dd") & "' and varcode='" & rs1("Varcode") & "' "
'                        DB.Execute strSQL
                        strSQL = "update RM_IssReqB set  Isskgs = isnull(Isskgs,0)- 1 where varcode ='" & adoSecondaryRS!Variety & "'  and  DocNo =" & val(adoSecondaryRS("ReqDocNo")) & " and Docdt='" & Format(adoSecondaryRS("ReqDocDt"), "YYYY-MM-DD") & "' and lotno='" & adoSecondaryRS("Lot No") & "' and lotdt='" & Format(adoSecondaryRS("lot date"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'"
                     DB.Execute (strSQL)
'                    End If
                End If
                adoSecondaryRS.Delete
            End If
            'adoSecondaryRS.Open "SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,VARname""Variety"",colorcode ""Color"",a.CATCD""Category"",a.actISSkgs""Issued Kgs"",a.baleno""Bale No.""  FROM RM_ISSb a,rm_lot b,rm_var c  " & _
'                        " where c.varcode=a.varcode and b.varcode=c.varcode and isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' " & _
                        " order by docno", DB, adOpenStatic, adLockBatchOptimistic
            'MsgBox " Lot No.(" & adoSecondaryRS("Lot No") & ") and Bale No.(" & adoSecondaryRS("Bale No.") & ") Successfully Deleted ", vbInformation, head
        End If
    End If
End If
Exit Sub
grddatagrid_DblClick_Error:
    'DB.RollbackTrans
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_DblClick of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub grdDataGrid_GotFocus()
If Opt = "del" Then
    If val(deltype) = 1 Then
        StatusBar1.Panels(2).Text = "Double Click the Grid for Delete the Suitable Bale(s)"
    Else
        StatusBar1.Panels(2).Text = "Click save button for Delete Complete Issue(s)"
    End If
End If

End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
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
End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error

If Opt = "add" Then
    If (KeyAscii = 13 Or KeyAscii = 9) And grdDataGrid.Col = 9 And Option4.value = True Then
        Call grdDataGrid_AfterColEdit(9)
        TxtIsskgs.Text = ""
        Txtissbale.Text = ""
         MaskEdBox1(0).Enabled = False
'        TxtIsskgs.SetFocus
        OptSequence.SetFocus
    End If
    If grdDataGrid.Col = 9 Then
        ToNumber1 grdDataGrid.Columns(9), 5, KeyAscii
    End If
End If

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_LostFocus()
    Command1.Enabled = False
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo GRDDATAGRID_RowColChange_Error

If Opt = "add" Then
   If grdDataGrid.Col = 1 Then
        If Len(Trim(grdDataGrid.Columns(0).Text)) > 0 Then
            Set rslotcheck = New Recordset
            rslotcheck.Open "select DISTINCT A.LotNo,A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0),a.netwt - isnull(isswt,0),a.colorcode from rm_lot A where a.divcode='" & Divcode & "' and a.lotno='" & grdDataGrid.Columns(ILotNo).Text & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
            If rslotcheck.RecordCount > 0 Then
                Dim vVarCode As String
                Dim vLotDt As String
                Dim vCatCd As String
                vVarCode = rslotcheck("Varcode")
                vLotDt = rslotcheck("Date")
                vCatCd = rslotcheck("CatCd")
                Call Lotdisplay(vVarCode, vLotDt, vCatCd, rslotcheck("LotNo"))
            Else
                GoTo LotLookUp
            End If
        Else
LotLookUp:
'        Set Rs = New Recordset
'        Rs.Open "Select varietyCtrlIssue,VarietyReqIssue from rm_param", DB, adOpenStatic
'
'        If Rs(0) <> "Y" And Rs(1) <> "Y" Then
'            Set Rs = New Recordset
'            Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
'            LookUp.clear = True
'            LookUp.Query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0"
'        ElseIf Rs(0) = "Y" And Rs(1) <> "Y" Then
'
'            Set rs1 = New Recordset
'            rs1.Open "SELECT DISTINCT M.MAT_CODE,H.BLEND_CODE From PPC_Blend_MAS H Inner Join PPC_Blend_DET T On H.BLEND_MASID = T.BLEND_MASID LEFT OUTER Join PPC_Material M On M.MaterialID = T.MaterialID where h.blend_code ='" & Trim(Txtfields(1).Text) & "'", DB, adOpenStatic
'            If rs1.EOF = False Then
'                sVariety = ""
'                rs1.MoveFirst
'                Do While rs1.EOF = False
'                    sVariety = sVariety & ",'" & rs1(0) & "'"
'                    rs1.MoveNext
'                Loop
'                sVariety = Mid(sVariety, 2)
'            Else
'                MsgBox "Please enter the Blend/Mix Ratio for Mix Grp " & Trim(Txtfields(1).Text), vbInformation, head
'                Call BUTTON_Click(10)
'                Exit Sub
'            End If
'            Set Rs = New Recordset
'            Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
'            LookUp.clear = True
'            LookUp.Query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and  A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 ANd a.varcode  in (" & sVariety & ")"
'
'        ElseIf Rs(0) <> "Y" And Rs(1) = "Y" Then
'            Set rs1 = New Recordset
'            rs1.Open "SELECT varcode FROM RM_RequisitionSlip WHERE DocDate BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' And isnull(Qty,0) > isnull(issqty,0)", DB, adOpenStatic
'            If rs1.EOF = False Then
'                sVariety = ""
'                rs1.MoveFirst
'                Do While rs1.EOF = False
'                    sVariety = sVariety & ",'" & rs1(0) & "'"
'                    rs1.MoveNext
'                Loop
'                sVariety = Mid(sVariety, 2)
'            Else
'                MsgBox "Please enter the Requisition Slip", vbInformation, head
'                Call BUTTON_Click(10)
'                Exit Sub
'            End If
'            Set Rs = New Recordset
'            Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
'            LookUp.clear = True
'            LookUp.Query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and  A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 ANd a.varcode  in (" & sVariety & ")"
'
'      ElseIf Rs(0) = "Y" And Rs(1) = "Y" Then
'            Set rs1 = New Recordset
'            rs1.Open "SELECT varcode FROM RM_RequisitionSlip WHERE DocDate BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' And isnull(Qty,0) > isnull(issqty,0)", DB, adOpenStatic
'            If rs1.EOF = False Then
'                sVariety = ""
'                rs1.MoveFirst
'                Do While rs1.EOF = False
'                    sVariety = sVariety & ",'" & rs1(0) & "'"
'                    rs1.MoveNext
'                Loop
'                'sVariety = Mid(sVariety, 2)
'            Else
'                MsgBox "Please enter the Requisition Slip", vbInformation, head
'                Call BUTTON_Click(10)
'                Exit Sub
'            End If
'
'            Set rs1 = New Recordset
'            rs1.Open "SELECT DISTINCT M.MAT_CODE,H.BLEND_CODE From PPC_Blend_MAS H Inner Join PPC_Blend_DET T On H.BLEND_MASID = T.BLEND_MASID LEFT OUTER Join PPC_Material M On M.MaterialID = T.MaterialID where h.blend_code ='" & Trim(Txtfields(1).Text) & "'", DB, adOpenStatic
'            If rs1.EOF = False Then
'                'sVariety = ""
'                rs1.MoveFirst
'                Do While rs1.EOF = False
'                    sVariety = sVariety & ",'" & rs1(0) & "'"
'                    rs1.MoveNext
'                Loop
'
'            Else
'                MsgBox "Please enter the Blend/Mix Ratio for Mix Grp " & Trim(Txtfields(1).Text), vbInformation, head
'                Call BUTTON_Click(10)
'                Exit Sub
'            End If
'            sVariety = Mid(sVariety, 2)
'            Set Rs = New Recordset
'            Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
'            LookUp.clear = True
'            LookUp.Query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 ANd a.varcode  in (" & sVariety & ")"
'
'
'
'
'        End If

        Set Rs = New Recordset
        Rs.Open "Select VarietyReqIssue from rm_param", DB, adOpenStatic
        
       If Rs(0) <> "Y" Then
            Set Rs = New Recordset
            Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
            LookUp.clear = True
            LookUp.Query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0"
            
        ElseIf Rs(0) = "Y" Then
'            Set rs1 = New Recordset
'            rs1.Open "SELECT varcode FROM RM_RequisitionSlip WHERE DocDate BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' And isnull(Qty,0) > isnull(issqty,0)", DB, adOpenStatic
'            If rs1.EOF = False Then
'                sVariety = ""
'                rs1.MoveFirst
'                Do While rs1.EOF = False
'                    sVariety = sVariety & ",'" & rs1(0) & "'"
'                    rs1.MoveNext
'                Loop
'                'sVariety = Mid(sVariety, 2)
'            Else
'                MsgBox "Please enter the Requisition Slip", vbInformation, head
'                Call BUTTON_Click(10)
'                Exit Sub
'            End If
            
'            sVariety = Mid(sVariety, 2)
            Set Rs = New Recordset
            Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
            LookUp.clear = True
            LookUp.Query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,(F.baleno-isnull(isskgs,0)) as ""Req. Qty"" from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E ,RM_IssReqB F where a.areacd=e.areacode and A.SUPCD=D.SLCODE and a.varcode=b.varcode AND A.CATCD=B.CATCD AND a.lotno=F.lotno and a.lotdt=f.lotdt and a.lottype=F.lottype and a.Divcode=f.divcode and a.catcd=f.catcd and A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0  and F.DocNo=" & val(iSlipNo) & " and DocDt ='" & Format(sSlipDate, "YYYY-MM-DD") & "'and F.Divcode ='" & Divcode & "' and F.baleno > isnull(F.issKgs,0) "
      
        End If

        
            LookUp.Caption = "Lot Listing"
            LookUp.ALIGN = "750,1350,1000,1100,0,2500,900,900"
            If Rs(0) = "L" Then
                LookUp.DefCol = "Lot No."
            ElseIf Rs(0) = "V" Then
                LookUp.DefCol = "Variety"
            ElseIf Rs(0) = "P" Then
                LookUp.DefCol = "Supplier Lot No."
            End If
                LookUp.Show vbModal
            If LookUp.Cancel = False Then
                               
                grdDataGrid.Columns(0).Text = CStr(LookUp.Fields(0))
                Call Lotdisplay(CStr(LookUp.Fields(4)), CStr(LookUp.Fields(2)), LookUp.Fields(6))
                LookUp.clear = True
                If grdDataGrid.Columns(1) <> "" Then
                    If IssFlg = "Balewise" Then
                        grdDataGrid.Col = 9
                        grdDataGrid.SetFocus
                    Else
                        Call grdDataGrid_AfterColEdit(9)
                        SSTab1.Tab = 1
'                            TxtIsskgs.SetFocus
                    End If
                    MaskEdBox1(0).Enabled = False
                    DTPicker1.Enabled = False
                End If
                Exit Sub
            Else
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Exit Sub
            End If
        End If
   End If
End If

If Opt = "mod" Then
   
   If grdDataGrid.Col = 5 Then
            LookUp.clear = True
            LookUp.Query = "Select DISTINCT A.LOTNO""Lot No."",a.Lotdt as ""Lot Date"",VARNAME""Variety Name"",SLNAME""Supplier Name"",a.catcd AS Category,a.varcode""Variety Code"" from rm_lot a,rm_var b ,RM_BALE C,FA_SLMAS D where A.SUPCD=D.SLCODE  and STATUS IN ('AC','AW') AND a.lotno = c.lotno And a.Lotdt = c.Lotdt And a.varcode = c.varcode And a.Divcode = c.Divcode AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND C.VARCODE=B.VARCODE AND  a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "'"
            LookUp.Caption = "Lot Listing"
            LookUp.DefCol = "Lot No."
            LookUp.ALIGN = "1500,1500,2500,3000,1500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                               
                grdDataGrid.Columns(4).Text = CStr(LookUp.Fields(0))
                Call Lotdisplay(CStr(LookUp.Fields(5)), CStr(LookUp.Fields(1)), CStr(LookUp.Fields(4)))
                LookUp.clear = True
                If grdDataGrid.Columns(1) <> "" Then
                    If IssFlg = "Balewise" Then
                        grdDataGrid.Col = 8
                        grdDataGrid.SetFocus
                    Else
                        If grdDataGrid.Columns("Lottype") <> "" Then
                            Call Option2_Click
                            SSTab1.TabEnabled(1) = True
                            Call grdDataGrid_AfterColEdit(8)
                            SSTab1.Tab = 1
                            TxtIsskgs.SetFocus
                        Else
                            grdDataGrid.Col = 0
                            grdDataGrid.SetFocus
                            Exit Sub
                        End If
                    End If
                End If
                Exit Sub
            Else
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Exit Sub
            End If
   End If
   
End If
If Opt = "add" Or Opt = "mod" Then
   If grdDataGrid.Col = 0 Then
      StatusBar1.Panels(2).Text = "Enter Lot Number"
   End If
   If grdDataGrid.Col = 1 Then
      StatusBar1.Panels(2).Text = "Enter Valid Date"
   End If
   If grdDataGrid.Col = 2 Then
      StatusBar1.Panels(2).Text = "Enter Lot Type"
   End If
   If grdDataGrid.Col = 3 Then
      StatusBar1.Panels(2).Text = "Enter Variety"
   End If
    If grdDataGrid.Col = 6 Then
      StatusBar1.Panels(2).Text = "Enter Category"
   End If
   If grdDataGrid.Col = 7 Then
      StatusBar1.Panels(2).Text = "Enter Closing Bales"
   End If
   If grdDataGrid.Col = 8 Then
      StatusBar1.Panels(2).Text = "Enter Closing Weights"
   End If
   If grdDataGrid.Col = 9 Then
      StatusBar1.Panels(2).Text = "Enter Issued Bales"
   End If
End If
If Opt = "add" Then
    If LastRow = grdDataGrid.Row + 2 Then
        grdDataGrid.Row = grdDataGrid.Row
    End If
    If grdDataGrid.Enabled = True Then
        If val(grdDataGrid.Columns(9).Text) > val(grdDataGrid.Columns(7).Text) Then
            MsgBox "Issued bales must be less than or equal to closing bales", vbInformation, head
            grdDataGrid.SetFocus
            Exit Sub
        End If
    End If
End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_RowColChange of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub Grid_AfterEdit(ByVal Row As Long, ByVal Col As Long, ByVal NewValue As String)
On Error GoTo Grid_AfterEdit_Error

If (Opt = "add" Or Opt = "mod") And IssFlg = "Balewise" Then
    If Col = 5 Then
        If val(grid.TextMatrix(Row, 4)) < val(grid.TextMatrix(Row, 5)) Then
'                MsgBox "Please Enter Actual Issue Weight Less than Nett Weight", vbInformation, head
'                grid.Row = Row
'                grid.TextMatrix(Row, 5) = 0
'                grid.Col = 5
'                grid.SetFocus
'                Exit Sub
        
        ElseIf Trim(grid.TextMatrix(Row, 5)) = "" Or val(grid.TextMatrix(Row, 5)) = 0 Then

                If Trim(grid.TextMatrix(Row, 5)) <> "" Then
                    MsgBox "Please Enter Actual Issue Weight,Only Numeric", vbInformation, head
                    grid.Row = Row
                    grid.TextMatrix(Row, 5) = ""
                    grid.Col = 5
                    grid.SetFocus
                    Exit Sub
                End If
                MsgBox "Please Enter Actual Issue Weight", vbInformation, head
                grid.Row = Row
                grid.TextMatrix(Row, 5) = ""
                grid.Col = 5
                grid.SetFocus
                Exit Sub
        Else
             b = 0
             b = InStr(1, grid.TextMatrix(Row, 5), ".")
            
                If b <= 2 Then
                    MsgBox "Please Enter the Valid Actual Issue Kgs", vbInformation, head
                    grid.Row = Row
                    grid.TextMatrix(Row, 5) = ""
                    grid.Col = 5
                    grid.SetFocus
                    Exit Sub
                End If
                
            grid.TextMatrix(Row, 5) = Format(grid.TextMatrix(Row, 5), "0.000")
        End If
    End If
    ActissKgs = 0
    
    For i = 1 To grid.Rows
        If Trim(grid.TextMatrix(i, 4)) <> "" And Trim(grid.TextMatrix(i, 4)) <> "0" And Trim(grid.TextMatrix(i, 5)) <> "" Then
               ActissKgs = ActissKgs + val(grid.TextMatrix(i, 5))
        End If
    Next
    Text4.Text = CStr(ActissKgs)
End If

Exit Sub
Grid_AfterEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Grid_AfterEdit of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grid_DblClick()
''If Opt = "add" Then
''    grid.TextMatrix(grid.Row, 6) = "N"
''End If
''If val(grddatagrid.Columns(8).Text) = val(tbno) Then
''    Command1.Enabled = True
''Else
''    Command1.Enabled = False
''End If

On Error GoTo grid_DblClick_Error

If (Opt = "add" Or Opt = "mod") And IssFlg = "Balewise" Then

  If grid.Col = 1 Then
    If grid.Rows >= 1 Then
        GG = MsgBox("Do you want to Delete This Record?", vbYesNo, head)
        If GG = vbYes Then
            Text13.Text = ""
            Text14.Text = ""
            grid.RemoveItem grid.Row
            netwt = 0
            ActissKgs = 0
            tbno = 0
            groswt = 0
            tare = 0
            For i = 1 To grid.Rows
                If (grid.TextMatrix(i, 5) <> "" And Trim(grid.TextMatrix(i, 5)) <> "0") Or grid.TextMatrix(i, 6) <> "" Then
                  tbno = tbno + 1
                  ActissKgs = ActissKgs + val(grid.TextMatrix(i, 5))
                  netwt = netwt + val(grid.TextMatrix(i, 4))
                  groswt = groswt + val(grid.TextMatrix(i, 2))
                  tare = tare + val(grid.TextMatrix(i, 3))
                  grid.TextMatrix(i, 0) = i
                End If
            Next
            Text11.Text = Format(netwt, "0.000")
            Text10.Text = Format(tare, "0.000")
            Text9.Text = Format(groswt, "0.000")
            Text4.Text = Format(ActissKgs, "0.000")
            Text3.Text = tbno
            Command1.Enabled = False
            Command7.Enabled = True
            BUTTON(9).Enabled = False
            BUTTON(12).Enabled = False
               BUTTON(10).Enabled = False

        End If
  End If
  End If
End If



Exit Sub
grid_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grid_DblClick of Form FrmissueKgs", vbInformation, head

End Sub

Private Sub grid_KeyDown(ByVal KeyCode As Integer, ByVal Shift As Integer)
    a = grid.Row
    Select Case grid.Col
        Case 5
        Call ToNumberwithDecimal(grid, 4, KeyCode, 4, 3)
    End Select
End Sub

Private Sub grid_KeyPress(ByVal KeyAscii As Integer)

Select Case grid.Col
Case 5
    a = grid.Row
    b = grid.Col
    If iLen <> 0 Then
        If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or KeyAscii = 45 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
            'to allow numbers,decimal pt and backspace
        Else
            KeyAscii = 0
            Beep
        End If
    Else
        If KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
        'nOT to allow numbers,decimal pt and backspace
        Else
            KeyAscii = 0
            Beep
        End If
    End If
    If Not (InStr(grid.Text, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    Beep
    KeyAscii = 0
    End If
    If Not (InStr(grid.Text, ".") = 0) And Len(grid.Text) - InStr(grid.Text, ".") = iLen And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
         KeyAscii = 0
         Beep
    End If
    If Len(grid.Text) = 4 And KeyAscii <> 46 And (InStr(grid.Text, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
        KeyAscii = 0
        Beep
    End If
End Select
End Sub

Private Sub grid_LostFocus()
'    Command1.SetFocus
End Sub

Private Sub grid_Validate(Cancel As Boolean)
    a = grid.Row
End Sub

'''Private Sub MaskEdBox1_Change(Index As Integer)
'''If Opt = "add" Or Opt = "mod" Then
'''   Select Case Index
'''   Case 0
'''      If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
'''         If Not (IsDate(MaskEdBox1(0).Text)) Then
'''            MsgBox ("invalid date")
'''            MaskEdBox1(0).Text = pdate
'''            MaskEdBox1(0).SetFocus
'''         ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
'''            MsgBox ("Project date should not be greater then processing date"), vbInformation, head
'''            MaskEdBox1(0).SetFocus
'''         End If
'''      End If
'''   End Select
'''End If
'''End Sub

Private Sub MaskEdBox1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox1_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
MaskEdBox1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure MaskEdBox1_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error

Select Case Index
  Case 2
     If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
        If Not (IsDate(MaskEdBox1(2).Text)) Then
           MsgBox ("Please enter a valid date"), vbInformation, head
           MaskEdBox1(2).Text = pdate
           MaskEdBox1(2).SetFocus
        ElseIf CDate(MaskEdBox1(2).Text) > CDate(MaskEdBox1(0).Text) Then
           MsgBox "ATL Date must be before Arrival Date", vbInformation, head
           MaskEdBox1(2).Text = MaskEdBox1(0).Text
        End If
     End If
     
End Select
     If MaskEdBox1(0).Text <> pdate Then
        MsgBox "Issue Date must be equal to the Processing date", vbInformation, head
        MaskEdBox1(0).Text = pdate
        MaskEdBox1(0).SetFocus
     End If

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure MaskEdBox1_LostFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptIndividual_Click()
On Error GoTo OptIndividual_Click_Error

ChkCount = 0
SpdBales.SetText 1, 1, 0
SpdBales.BlockMode = True
SpdBales.Row = 1
SpdBales.Row2 = SpdBales.DataRowCnt
SpdBales.Col = 1
SpdBales.Col2 = 1
SpdBales.Lock = False
SpdBales.BlockMode = False
grid.clear
Text3.Text = ""
Text9.Text = ""
Text10.Text = ""
Text11.Text = ""
Text4.Text = ""
Text13.Text = ""
Text14.Locked = False
Text14.Text = ""
'If optin = True Then TxtIsskgs.tabIndex = OptSequence.tabIndex + 1

Command10.Enabled = True
Command1.Enabled = False
BUTTON(9).Enabled = False
BUTTON(12).Enabled = False
BUTTON(10).Enabled = False
If KeyAscii = vbKeyTab Or KeyAscii = vbKeyReturn Then SpdBales.SetFocus: SpdBales.Col = 1
SpdBales.tabIndex = 146

Exit Sub
OptIndividual_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure OptIndividual_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptIndividual_GotFocus()
On Error GoTo OptIndividual_GotFocus_Error

    StatusBar1.Panels(2).Text = " Select Individual Bales No.(s)"

Exit Sub
OptIndividual_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure OptIndividual_GotFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptIndividual_KeyPress(KeyAscii As Integer)
On Error GoTo OptIndividual_KeyPress_Error

    If KeyAscii = vbKeyTab Or KeyAscii = vbKeyReturn Then
        SpdBales.SetFocus
        SpdBales.Col = 1
    End If

Exit Sub
OptIndividual_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure OptIndividual_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptIndividual_LostFocus()
'    SpdBales.SetFocus
'    SpdBales.Col = 1
On Error GoTo OptIndividual_LostFocus_Error

    

Exit Sub
OptIndividual_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure OptIndividual_LostFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

'Private Sub Text7_LostFocus()
'Set balers = New Recordset
''balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(7).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
''If balers.RecordCount > 0 Then
''Label25.Caption = balers("net weight")
'''Else
'''MsgBox " This Baleno  Already issued", vbInformation, head
'''Text7.SetFocus
''End If
'End Sub

Private Sub Option1_Click()
On Error GoTo Option1_Click_Error

Frame8.Visible = True
Frame8.Enabled = False
Frame9.Visible = False
Command7.Enabled = True
Frame11.Visible = True

Exit Sub
Option1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Option1_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Option2_Click()
On Error GoTo Option2_Click_Error

Frame8.Visible = False
Frame9.Visible = True
If TxtIsskgs.Enabled = False Then TxtIsskgs.Enabled = True
If TxtIsskgs.Visible = False Then TxtIsskgs.Visible = True
If SSTab1.Tab = 1 Then TxtIsskgs.SetFocus

Exit Sub
Option2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Option2_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option7_Click()
On Error GoTo Option7_Click_Error

    Text16.Text = ""

Exit Sub
Option7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Option7_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option8_Click()
On Error GoTo Option8_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    'cmd_report.Visible = False

Exit Sub
Option8_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Option8_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option8_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option8_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame12.Visible = True Then
        Frame12.Visible = False
        cmd_report.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Frame1.Enabled = True
        Frame7.Enabled = True
        Frame4.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option8_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Option8_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option9_Click()
On Error GoTo Option9_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    cmd_report.Visible = True

Exit Sub
Option9_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Option9_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option9_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option9_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame12.Visible = True Then
        Frame12.Visible = False
        cmd_report.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Frame1.Enabled = True
        Frame7.Enabled = True
        Frame4.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option9_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Option9_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub OptSequence_Click()
Dim linti As Integer
On Error GoTo OptSequence_Click_Error

For linti = 1 To SpdBales.DataRowCnt
    SpdBales.SetText 1, linti, 0
Next

SpdBales.BlockMode = True
SpdBales.Row = 1
SpdBales.Row2 = SpdBales.DataRowCnt
SpdBales.Col = 1
SpdBales.Col2 = 1
SpdBales.Lock = True
SpdBales.BlockMode = False
'
'Dim irow As Integer
'For irow = 1 To s
'
'  With SpdBales
'    .Row = irow
'    .Col = 1
'    .Value = 1
''    ChkCount = ChkCount + 1
'End With
'
'
    
'Next

Text13.Text = SBale
Text14.Locked = False
Text14.Text = EBale
Text14.Locked = True
'Text14.SetFocus
If OptSequence = True Then Text14.tabIndex = OptSequence.tabIndex + 1
'Command1.Enabled = True
BUTTON(9).Enabled = False
BUTTON(10).Enabled = False
BUTTON(12).Enabled = False
Command7.Enabled = False
Command10.Enabled = False

Exit Sub
OptSequence_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure OptSequence_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub OptSequence_GotFocus()
On Error GoTo OptSequence_GotFocus_Error
    Command1.Enabled = False
    Text14.Enabled = True
    StatusBar1.Panels(2).Text = " Select Sequential Bales No.(s)"

Exit Sub
OptSequence_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure OptSequence_GotFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptSequence_KeyPress(KeyAscii As Integer)
On Error GoTo OptSequence_KeyPress_Error

    If KeyAscii = vbKeyTab Or KeyAscii = 13 Then
        Text14.tabIndex = OptSequence.tabIndex + 1
        Text14.SetFocus
        Command1.Enabled = True
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
        BUTTON(12).Enabled = False
        Command7.Enabled = False
        Command10.Enabled = False
    End If

Exit Sub
OptSequence_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure OptSequence_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptSequence_LostFocus()
'    Text14.SetFocus
On Error GoTo OptSequence_LostFocus_Error

    

Exit Sub
OptSequence_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure OptSequence_LostFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SpdBales_ButtonClicked(ByVal Col As Long, ByVal Row As Long, ByVal ButtonDown As Integer)
On Error GoTo SpdBales_ButtonClicked_Error

On Error GoTo SpdBales_ButtonClicked_Error

With SpdBales
    If Col = E_SpdBal.SprdCheck Then
            .Row = Row
            .Col = E_SpdBal.SprdCheck
            If .value = 1 Then
            ChkCount = ChkCount + 1
            .Action = 0
         ElseIf .value = 0 And ChkCount > 0 Then
            ChkCount = ChkCount - 1
            .Action = 0
         End If
    End If
End With

Dim lvar As Variant
SpdBales.GetText 1, Row, lvar
If val(lvar) <> 0 Then
    If OptSequence.value = True Or ChkCount > TotalBale Then
        SpdBales.SetText 1, Row, 0
    End If
End If


Exit Sub
SpdBales_ButtonClicked_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure SpdBales_ButtonClicked of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0

End Sub

Private Sub SpdBales_Change(ByVal Col As Long, ByVal Row As Long)
On Error GoTo SpdBales_Change_Error

    Command10.Enabled = True
    Command1.Enabled = False
    BUTTON(9).Enabled = False
    BUTTON(12).Enabled = False

Exit Sub
SpdBales_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure SpdBales_Change of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SpdBales_KeyPress(KeyAscii As Integer)
On Error GoTo SpdBales_KeyPress_Error

    If KeyAscii = vbKeyTab Then Command4.SetFocus

Exit Sub
SpdBales_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure SpdBales_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text11_Change()
    'TxtNetWt.Text = Text11.Text
On Error GoTo Text11_Change_Error

    

Exit Sub
Text11_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text11_Change of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text13_KeyPress(KeyAscii As Integer)
On Error GoTo Text13_KeyPress_Error

  Call tonum(Text13, 3, KeyAscii, 0)

Exit Sub
Text13_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text13_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text13_LostFocus()
iLen = 3
'If Opt = "add" Then
'    'Text13.Text = grdData.Columns(0).Text
'    If s > 0 And val(Text13.Text) > 0 Then
'      If avilbalers.RecordCount <> s Then
'        If val(Text13.Text + s - 2) >= avilbalers.RecordCount Then
'          'MsgBox "Issued Bales is not Matching", vbInformation, head
'          Text13.SetFocus
'          Exit Sub
'        End If
'      End If
'      If avilbalers.RecordCount = s Then
'        grdData.Row = avilbalers.RecordCount - 1
'      Else
'        grdData.Row = val(Text13.Text + s - 2)
'      End If
'    End If
On Error GoTo Text13_LostFocus_Error

    TotalBale = val(grdDataGrid.Columns("Issued Bales"))
    EBaleNo = (val(Text13.Text) + val(grdDataGrid.Columns("Issued Bales"))) - 1
    Text14.Text = EBaleNo
    Text14.Locked = True
'    'Text13.SetFocus
'    Call Text14_LostFocus
'    Command1.SetFocus
'End If

Exit Sub
Text13_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text13_LostFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text14_KeyDown(KeyCode As Integer, Shift As Integer)
'    If KeyCode = 13 Then
'        Command1.Enabled = True
'        Command1.SetFocus
'    End If
On Error GoTo Text14_KeyDown_Error

    

Exit Sub
Text14_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text14_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text14_KeyPress(KeyAscii As Integer)
On Error GoTo Text14_KeyPress_Error

  Call tonum(Text14, 3, KeyAscii, 0)

Exit Sub
Text14_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text14_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text14_LostFocus()
On Error GoTo Text14_LostFocus_Error
If OptSequence.value = True Then
        If Opt = "add" Or Opt = "mod" Then
            If val(Text14.Text) <> 0 And val(Text13.Text) <> 0 Then
                If val(Text14.Text) >= val(Text13.Text) Then
                    CHFLG1 = "N"
                    CHFLG2 = "N"
                    TOTBALES = 0
                    avilbalers.MoveFirst
                     While Not avilbalers.EOF
                          If avilbalers(0) = val(Text13.Text) Then
                            CHFLG1 = "Y"
                         End If
                        If avilbalers(0) = val(Text14.Text) Then
                            CHFLG2 = "Y"
                         End If

                        If val(Text13.Text) <= avilbalers(0) And avilbalers(0) <= val(Text14.Text) Then
                            TOTBALES = TOTBALES + 1
                        End If
                        avilbalers.MoveNext
                    Wend
                    avilbalers.MoveFirst

                    If TOTBALES <> val(grdDataGrid.Columns(9).Text) Then
                        MsgBox "Issued Bales are not Matching", vbInformation, head
                        Text13.SetFocus
                        Exit Sub
                    End If
                    If CHFLG1 = "N" Then
                        MsgBox "From Bale No. must be With in Available Bale No.", vbInformation, head
                        'Text13.SetFocus
                        Exit Sub
                    End If
                    If CHFLG2 = "N" Then
                        MsgBox "To Bale No. must be With in Available Bale No.", vbInformation, head
                        'Text14.SetFocus
                        Exit Sub
                    End If
                    avilbalers.MoveFirst
                    Set avilbalers1 = New Recordset
                    If adoSecondaryRS.RecordCount > 0 Then
                        Set rslotcheck = New Recordset
                        rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",b.PLOTNO ""Party Lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
                        Set rslotcheck.DataSource = adoSecondaryRS

                        baleno = ""
                        rslotcheck.MoveFirst
                        g = 1
                        For i = 1 To rslotcheck.RecordCount
                            If rslotcheck("Lot No.") = grdDataGrid.Columns(0).Text And rslotcheck("Date") = grdDataGrid.Columns(1).Text And rslotcheck(2) = grdDataGrid.Columns(5).Text And rslotcheck("Variety") = grdDataGrid.Columns(4).Text Then
                                If g = 1 Then
                                   baleno = rslotcheck("baleno")
                                Else
                                   baleno = baleno & "," & rslotcheck("baleno")
                                End If
                                g = g + 1
                            End If
                            rslotcheck.MoveNext
                        Next
                        g = 0
                        If baleno = "" Then
                            baleno = 0
                        End If
                        If sWgtFlg = "M" Then
                            avilbalers1.Open "select baleno ""Baleno"",NETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' and baleno  not in (" & baleno & ") and baleno between " & val(Text13.Text) & " and " & val(Text14.Text) & " order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
                        Else
                            avilbalers1.Open "select baleno ""Baleno"",PNETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(Pnetwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' and baleno  not in (" & baleno & ") and baleno between " & val(Text13.Text) & " and " & val(Text14.Text) & " order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
                        End If
                    Else
                        If sWgtFlg = "M" Then
                            avilbalers1.Open "select baleno ""Baleno"",NETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' and baleno between " & val(Text13.Text) & " and " & val(Text14.Text) & " order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
                        Else
                            avilbalers1.Open "select baleno ""Baleno"",PNETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(Pnetwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' and baleno between " & val(Text13.Text) & " and " & val(Text14.Text) & " order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
                        End If

                    End If

                    totbale = val(Text14.Text) - val(Text13.Text) + 1
                    Text3.Text = totbale
                    If avilbalers1.RecordCount > 0 Then
                        Set balers = New Recordset
                        If sWgtFlg = "M" Then
                            balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
                        Else
                            balers.Open "select baleno ""Baleno"",PGRSWT ""Gross Weight"",TAREWT""Tare Weight"",PNETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(Pnetwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
                        End If
                        
                        tgwt = 0
                        tnwt = 0
                        rec_cnt = 1
                        grid.clear
                        grid.AddItem ""
                        Do While Not avilbalers.EOF
                            Set balers = New Recordset
                            If sWgtFlg = "M" Then
                                balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and baleno='" & avilbalers1("Baleno") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
                            Else
                                balers.Open "select baleno ""Baleno"",PGRSWT ""Gross Weight"",TAREWT""Tare Weight"",PNETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grdDataGrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and baleno='" & avilbalers1("Baleno") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(Pnetwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
                            End If

                            
                            grid.TextMatrix(rec_cnt, 0) = rec_cnt
                            grid.TextMatrix(rec_cnt, 1) = avilbalers1("Baleno")
                            grid.TextMatrix(rec_cnt, 2) = Format(balers("gross weight"), "0.000")
                            tgwt = tgwt + balers("gross weight")
                            Text9.Text = Format(val(tgwt), "0.000")
                            grid.TextMatrix(rec_cnt, 3) = Format(balers("Tare weight"), "0.000")
                            ttwt = ttwt + balers("Tare weight")
                            Text10.Text = Format(val(ttwt), "0.000")
                            grid.TextMatrix(rec_cnt, 4) = Format(balers("net weight"), "0.000")
                            tnwt = tnwt + balers("net weight")
                            Text11.Text = Format(val(tnwt), "0.000")
                            grid.TextMatrix(rec_cnt, 6) = "Y"
                        
                            Set rstPARAM = New Recordset
                            rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
                            If rstPARAM!actualIssueKgs = "Z" Then
                                grid.TextMatrix(rec_cnt, 5) = ""
                            Else
                                grid.TextMatrix(rec_cnt, 5) = Format(balers("net weight"), "0.000")
                            End If
                    
                            'grid.TextMatrix(rec_cnt, 5) = balers("net weight")

                            Set chrs = New Recordset
                            chrs.Open "select awt_flg from rm_lot where  DIVCODE='" & Divcode & "' AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
                            If IsNull(chrs(0)) Then
                                chrs(0) = ""
                            End If

                            If chrs(0) = "Y" Then
                                Set rstPARAM = New Recordset
                                rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
                                If rstPARAM!actualIssueKgs = "Z" Then
                                    grid.TextMatrix(rec_cnt, 5) = ""
                                Else
                                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, Format(balers("net weight"), "0.000"), Text8)
                                End If
                        
                                'grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                                taisswt = taisswt + val(grid.TextMatrix(rec_cnt, 5))
                                Text4.Text = Format(val(taisswt), "0.000")
                            End If
                            If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
                                Set rstPARAM = New Recordset
                                rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
                                If rstPARAM!actualIssueKgs = "Z" Then
                                    grid.TextMatrix(rec_cnt, 5) = ""
                                Else
                                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, Format(balers("net weight"), "0.000"), Text8)
                                End If
                        
'                                grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                                taisswt = taisswt + grid.TextMatrix(rec_cnt, 5)
                                Text4.Text = Format(val(taisswt), "0.000")
                            End If
                            If chrs(0) = "N" Then
                                Set rstPARAM = New Recordset
                                rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
                                If rstPARAM!actualIssueKgs = "Z" Then
                                    grid.TextMatrix(rec_cnt, 5) = ""
                                Else
                                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                                End If
                            
'                                grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                                Text4.Text = Format(val(taisswt), "0.000")
                            End If
                            avilbalers1.MoveNext
                            rec_cnt = rec_cnt + 1
                            If Not avilbalers1.EOF Then
                                grid.AddItem ""
                            End If
                            grid.ColAllowEdit(5) = True
                            Command1.Enabled = True

                            If rec_cnt > TOTBALES Then
                                Command7.Enabled = False
                                Command1.Enabled = True
                                Command1.SetFocus
                                Exit Do
                            Else
                                Command1.Enabled = False
                                Command7.Enabled = True
                            End If
                        Loop
'                        grid.SetFocus

                        tbnoG = 0
                        netwtG = 0
                        TAREG = 0
                        GROSWTG = 0
                        ACTISSKGSG = 0
                        For i = 1 To grid.Rows
                            If (grid.TextMatrix(i, 5) <> "" And Trim(grid.TextMatrix(i, 5)) <> "0") Or grid.TextMatrix(i, 6) <> "" Then
                              tbnoG = tbnoG + 1
                              ACTISSKGSG = ACTISSKGSG + val(grid.TextMatrix(i, 5))
                              netwtG = netwtG + val(grid.TextMatrix(i, 4))
                              GROSWTG = GROSWTG + val(grid.TextMatrix(i, 2))
                              TAREG = TAREG + val(grid.TextMatrix(i, 3))
                            End If
                        Next
                        Text11.Text = Format(netwtG, "0.000")
                        Text10.Text = Format(TAREG, "0.000")
                        Text9.Text = Format(GROSWTG, "0.000")
                        Text4.Text = Format(ACTISSKGSG, "0.000")
                        Text3.Text = tbnoG



                        TxtTotBales.Text = Format(vTotBal + val(Text3.Text), "0.000")
                        TxtNetWt.Text = Format(vNetWt + val(Text11.Text), "0.000")
                        TxtActWt.Text = Format(vActWt + val(Text4.Text), "0.000")

                         Exit Sub
                  End If
                End If
            End If
        End If
  End If
  BUTTON(9).Enabled = False
  BUTTON(10).Enabled = False
  If OptIndividual = True Then SpdBales.SetFocus
Exit Sub
Text14_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text14_LostFocus of Form FrmissueKgs", vbInformation, head
End Sub


Private Sub Text16_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Text16_KeyDown_Error

If Option7.value = True Then
    KeyCode = 0
End If

Exit Sub
Text16_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text16_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text3_Change()
    'TxtTotBales.Text = Text3.Text
On Error GoTo Text3_Change_Error

    

Exit Sub
Text3_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text3_Change of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text4_Change()
    'TxtActWt.Text = Text4.Text
On Error GoTo Text4_Change_Error

    

Exit Sub
Text4_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text4_Change of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text7_Click()
''Text7.SetFocus

On Error GoTo Text7_Click_Error

    

Exit Sub
Text7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text7_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text7_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Text7_KeyDown_Error

If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Text7_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text7_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text7_KeyPress(KeyAscii As Integer)

On Error GoTo Text7_KeyPress_Error

Call tonum(Text7, 3, KeyAscii, 0)
 
If Opt = "add" Then

Set balers = New Recordset

balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "'  order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic

If balers.RecordCount > 0 Then
Label25.Caption = balers("net weight")
Else
'MsgBox " This Baleno  Already issued", vbInformation, head
'Text7.SetFocus
End If
'Text8.SetFocus

If KeyAscii = 13 Then
    Text8.SetFocus
End If
End If


Exit Sub
Text7_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text7_KeyPress of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub Text7_LostFocus()
On Error GoTo Text7_LostFocus_Error

If Opt = "add" And Text7.Text <> "" Then
Text8.Locked = False
Text7.Locked = False
Set balers = New Recordset
balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
If balers.RecordCount > 0 Then
    Label25.Caption = balers("net weight")
Else
    'MsgBox " Invalid Bale No.", vbInformation, head
    Text7.SetFocus
    Exit Sub
End If
'Text8.SetFocus
End If
If Opt = "add" Then
Text8.Locked = False
Text7.Locked = False
Text8.SetFocus
End If


Exit Sub
Text7_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text7_LostFocus of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub Text7_Validate(Cancel As Boolean)
On Error GoTo Text7_Validate_Error

If Opt = "add" And Text7.Text <> "" Then
Text8.Locked = False
Text7.Locked = False
Set balers = New Recordset
balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND STATUS IN ('AC','AW') AND lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(6).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
If balers.RecordCount > 0 Then
    Label25.Caption = balers("net weight")
Else
    MsgBox "Please enter a valid Bale No.", vbInformation, head
    Text7.SetFocus
End If
'Text8.SetFocus
End If


Exit Sub
Text7_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text7_Validate of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub Text8_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Text8_KeyDown_Error

    If KeyCode = 13 Then
        SendKeys "{TAB}"
    End If

Exit Sub
Text8_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text8_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text8_KeyPress(KeyAscii As Integer)
On Error Resume Next
If Opt = "add" Then
If KeyAscii = 13 Then
    If val(grdDataGrid.Columns(8).Text) = val(tbno) Then
Command7.Enabled = False
Command1.Enabled = True
Command1.SetFocus
Else
    Command7.SetFocus
 End If
End If
End If
End Sub
Private Sub Text8_LostFocus()
On Error GoTo Text8_LostFocus_Error

If Opt = "add" Then
'If Text8.Text = "" Then
'MsgBox " Enter issue Kgs", vbInformation, head
'Else
If val(grdDataGrid.Columns(8).Text) = val(tbno) Then
    Command7.Enabled = False
    Command1.Enabled = True
    Command1.SetFocus
Else
    If Command7.Visible = True And Command7.Enabled = True Then Command7.SetFocus
End If
End If

Exit Sub
Text8_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text8_LostFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text8_Validate(Cancel As Boolean)
On Error GoTo Text8_Validate_Error

If Opt = "add" Then
grdDataGrid.Enabled = False
Command1.Enabled = True
Frame1.Visible = True
Frame1.Enabled = True
SSTab1.Tab = 1
'Command7.SetFocus
grid.Enabled = True
End If

Exit Sub
Text8_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text8_Validate of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

'Private Sub Text8_KeyDown(KeyCode As Integer, Shift As Integer)
'If KeyCode = 13 Then
'Set balers = New Recordset
'      ''''
''''      balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT ""Net Weight"",actisskgs ""AIssKgs"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(7).Text & "'  and isnull(actisskgs,0)=0   and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
'      balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(7).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
'
'      If balers.RecordCount > 0 Then
'
''      For I = 1 To s
'
'      DataGrid1.Columns(0).Text = balers("baleno")
'      DataGrid1.Columns(1).Text = balers("Gross weight")
'      DataGrid1.Columns(2).Text = balers("Tare weight")
'      DataGrid1.Columns(3).Locked=
'      DataGrid1.Columns(3).Text = balers("Net Weight")
'      balers.AddNew
''      Next
'      'Set DataGrid1.DataSource = balers
'      Call DataGrid1.Scroll(0, -1 * DataGrid1.ApproxCount)
'      DataGrid1.Row = 0
'      DataGrid1.Col = 4
'      DataGrid1.Enabled = True
'      DataGrid1.Enabled = True
'      DataGrid1.AllowUpdate = True
'      DataGrid1.EditActive = True
'      DataGrid1.Columns(2).Locked = True
'      DataGrid1.Columns(0).Locked = True
'      DataGrid1.Columns(1).Locked = True
'      'DataGrid1.Columns(3).Locked = False
'      DataGrid1.Columns(4).Locked = False
'      DataGrid1.Columns(4).Text = Empty
'      DataGrid1.Columns(4).Width = 1980.284
'      DataGrid1.Columns(3).Width = 1980.284
'      DataGrid1.Columns(2).Width = 1085.166
'      DataGrid1.Columns(1).Width = 1250.142
'      DataGrid1.Columns(0).Width = 1544.882
'      DataGrid1.Columns(1).Alignment = dbgRight
'      DataGrid1.Columns(2).Alignment = dbgRight
'      DataGrid1.Columns(3).Alignment = dbgRight
'      DataGrid1.Columns(4).Alignment = dbgRight
'      DataGrid1.Columns(4).NumberFormat = "######.000"
'      DataGrid1.Columns(3).NumberFormat = "######.000"
'      DataGrid1.Columns(2).NumberFormat = "######.000"
'      DataGrid1.Columns(1).NumberFormat = "######.000"
'      grdDataGrid.Enabled = False
'      Command1.Enabled = True
'      Frame1.Visible = True
'      Frame1.Enabled = True
'      'txtfields(3).SetFocus
'      SSTab1.SetFocus
'      'DataGrid1.AllowAddNew
'      Else
'      MsgBox " This Baleno  Already issued", vbInformation, head
'      Text7.SetFocus
'      End If
'Text7.Text = ""
'Text8.Text = ""
'End If
'End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error GoTo Txtfields_Change_Error

If Opt = "add" Or Opt = "" Or Opt = " " Then
   Select Case Index
     Case 2
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(2).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text2.Text = Rs(0)
        End If
        Rs.Close
    Case 1
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(1).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text5.Text = Rs(0)
        End If
        Rs.Close
     Case 3
        Set Rs = New Recordset
        Rs.Open "select oildesc from rm_oil where oilcode = '" & Txtfields(3).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text1.Text = Rs(0)
        Else
           Text1.Text = ""
        End If
        Rs.Close
     Case 11
        Set Rs = New Recordset
        Rs.Open "select oildesc from rm_oil where oilcode = '" & Txtfields(11).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text15.Text = Rs(0)
        Else
           Text15.Text = ""
        End If
        Rs.Close
   End Select
End If
If Opt = "" Or Opt = " " Then
   Select Case Index
      Case 4
         Txtfields(4).Text = Format(val(Txtfields(4).Text), "#0.000")
      Case 5
         Txtfields(5).Text = Format(val(Txtfields(5).Text), "#0.000")
      Case 14
         Txtfields(14).Text = Format(val(Txtfields(14).Text), "#0.00")
   End Select
End If
         Txtfields(4).Text = Format(Txtfields(4).Text, "#0.000")
         Txtfields(12).Text = Format(Txtfields(12).Text, "#0.000")


Exit Sub
Txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Txtfields_Change of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

Txtfields(Index).BackColor = &HC0FFC0
If Opt = "add" Then
   Select Case Index
     Case 2
'         Set rs = New Recordset
'         rs.Open "select count(*) from fa_slmas", DB
'         If Not rs(0) = 0 Then
'
'            'Label15.Caption = "Party Details"
'            KslList1.Visible = True
'            KslList1.conn = connectstring
'            KslList1.listfield1width = 5500
'            KslList1.listfield1width = 3500
'
'            KslList1.table = "fa_slmas where slcode like 'C1%'"
'            KslList1.listfield1 = "slname as SupplierName,city as City"
'            KslList1.listfield2 = "slcode as SupplierCode"
'            KslList1.Caption = "Party Details"
'            Frame3.Visible = True
'            Frame3.ZOrder
'            KslList1.SetFocus
'            Else
'                MsgBox "No Record Found", vbInformation, head
'                Exit Sub
'            End If
        End Select
    End If
    If Opt = "add" Or Opt = "mod" Then
          Select Case Index
               Case 0
                    StatusBar1.Panels(2).Text = "Enter Issue Number"
               Case 1
                    StatusBar1.Panels(2).Text = "Enter Count"
               Case 2
                    StatusBar1.Panels(2).Text = "Enter Party Name"
               Case 3
                    StatusBar1.Panels(2).Text = "Enter Oil Code"
               Case 4
                    StatusBar1.Panels(2).Text = "Enter Oil Weight"
               Case 5
                    StatusBar1.Panels(2).Text = "Enter Water Weight"
               Case 14
                    StatusBar1.Panels(2).Text = "Enter Soft Waste, Maximum 7 Integer with 2 decimals"
          End Select
    End If
'------------------------------------From Lost Focus
     If Opt = "add" Then
        Select Case Index
        Case 1
                    
'        If Combo1.Text = "PR--PRODUCTION" Or Trim(Left(Combo1.Text, 2)) = "T2" Or Trim(Left(Combo1.Text, 2)) = "T3" Then
'            LookUp.clear = True
'            If Combo2.Text = "D-Dying" And txtfields(1).Text = "" Then
'            LookUp.Query = "Select cntcd,cntname from rm_count"
'            Flag = ""
'             LookUp.Caption = "Count Details"
'            LookUp.DefCol = "CNTNAME"
'            LookUp.ALIGN = "2500,5000"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'
'                txtfields(1).Text = LookUp.Fields(0)
'                Text5.Text = LookUp.Fields(1)
'                txtfields(13).SetFocus
'                LookUp.clear = True
'                Exit Sub
'            Else
'            Exit Sub
'
'            End If
'            txtfields(13).SetFocus
'            ElseIf Combo2.Text = "M-Mixing" And txtfields(1).Text = "" Then
'            LookUp.Query = "Select product_code,long_desc1 FROM ig_product"
'            LookUp.Caption = "Count Details"
'            LookUp.DefCol = "long_desc1"
'            LookUp.ALIGN = "2500,5000"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'                txtfields(1).Text = LookUp.Fields(0)
'                Text5.Text = LookUp.Fields(1)
'                txtfields(13).SetFocus
'                LookUp.clear = True
'
'            Else
'            LookUp.clear = True
'            'lookup.
'            txtfields(1).SetFocus
'
'            End If
'            End If
'
'
'
'
'
'         Else
'         Set rs = New Recordset
'         rs.Open "select count(*) from fa_slmas", DB
'         If Not rs(0) = 0 Then
'
'            'Label15.Caption = "Party Details"
'            ksllist1.Visible = True
'            ksllist1.conn = connectstring
'            ksllist1.listfield1width = 5500
'            ksllist1.listfield1width = 3500
'
'            ksllist1.table = "fa_slmas where slcode like 'C1%'"
'            ksllist1.listfield1 = "slname as SupplierName,city as City"
'            ksllist1.listfield2 = "slcode as SupplierCode"
'            ksllist1.Caption = "Party Details"
'            Frame3.Visible = True
'            Frame3.ZOrder
'            ksllist1.SetFocus
'            Else
'                MsgBox "No Record Found", vbInformation, head
'                Exit Sub
'            End If
'
'        End If
        
        Case 3
            If Opt = "add" Or Opt = "mod" Then
              If str <> "n" Then
                    str = "n"
                    Set Rs = New Recordset
                    Rs.Open "select count(*) from rm_oil", DB
                    If Not Rs(0) = 0 Then
                    Else
                        'MsgBox "No record Found", vbInformation, head
                        Exit Sub
                    End If
                End If
            End If
        Case 2
            On Error Resume Next
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
        
        
        End Select
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure txtFields_GotFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
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
        'Call BUTTON_Click(6)    ''Next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        'Call BUTTON_Click(7)    ''Previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)    ''Last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        'Call BUTTON_Click(9)    ''Save
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure txtfields_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtFields_KeyPress_Error

If Index = 0 And Opt = "add" And KeyAscii = 13 Then
      If Combo1.Text = "P-Production" And Trim(Txtfields(0)) <> "" Then
''         Txtfields(7).Text = UCase(Txtfields(7).Text)
''         Set rs = New Recordset
''         'rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issh WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and prefix='" & txtFields(7).Text & "'", db, adOpenStatic, adLockBatchOptimistic
''         ''rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issb WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
''         Txtfields(0).Text = rs(0)
''         Call adddelmod(BUTTON)
''         BUTTON(9).Enabled = False
''         BUTTON(9).ToolTipText = "Add Record"
''         Txtfields(0).Locked = True
''         MaskEdBox1(0).Text = pdate
''         Txtfields(0).SetFocus
''         SSTab1.TabEnabled(1) = True
      End If
   End If

If Opt = "" Or Opt = " " Or Opt = "del" Then
   KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 14
        Call ToNumberAssign(Txtfields(Index), 7, KeyAscii, 7, 2)
   Case 1, 3
        ToUpCase Txtfields(Index), KeyAscii
   Case 4, 5
        Call ToNum1(Txtfields(Index), 5, KeyAscii, 0)
   End Select
End If

Exit Sub
txtFields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure txtFields_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
On Error GoTo txtFields_LostFocus_Error
Txtfields(Index).BackColor = &HFFFFFF
If Opt = "add" Or Opt = "mod" Then
   If Index = 5 Then
      Txtfields(5).Text = Format(Txtfields(5).Text, "#0.000")
      ''TXTFIELDS(6).SetFocus
      ''BUTTON(9).SetFocus
   End If
   If Index = 13 Then
      Txtfields(13).Text = UCase(Txtfields(13).Text)
      If Txtisstype = "P" Then
        Txtfields(14).SetFocus
        Exit Sub
      End If
   End If
    If Index = 14 Then
      Txtfields(14).Text = Format(val(Txtfields(14).Text), "0.00")
      If Txtisstype = "P" And LookUp.Visible = False Then
            grdDataGrid.Col = 0
            If grdDataGrid.Enabled = True Then grdDataGrid.SetFocus
            Exit Sub
      End If
   End If

   If Index = 4 Then
      Txtfields(4).Text = Format(Txtfields(4).Text, "#0.000")
   End If
   If Index = 6 Then
      ''SSTab1.Tab = 1
   End If
   If Index = 0 And Opt = "add" Then
      If Combo1.Text = "PR--PRODUCTION" And Trim(Txtfields(0)) = "" Then
''         'txtFields(7).Text = UCase(txtFields(7).Text)
''         Set rs = New Recordset
''         'rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issh WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and prefix='" & txtFields(7).Text & "'", db, adOpenStatic, adLockBatchOptimistic
''         rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issb WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
''         Txtfields(0).Text = rs(0)
''         Call adddelmod(BUTTON)
''         BUTTON(9).Enabled = False
''         BUTTON(9).ToolTipText = "Add Record"
''         Txtfields(0).Locked = True
''         MaskEdBox1(0).Text = pdate
''         Txtfields(0).SetFocus
''         SSTab1.TabEnabled(1) = True
      End If
   End If
End If
StatusBar1.Panels(2).Text = ""
If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 3, 11
   
   If Txtfields(3).Text <> "" Or Txtfields(11).Text <> "" Then
         Set Rs = New Recordset
           Rs.Open "select oilcode from rm_oil where oilcode='" & Trim(Txtfields(Index).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
           If Rs.RecordCount = 0 Then
              Set Rs = New Recordset
              Rs.Open "select count(*) from rm_oil", DB
              If Not Rs(0) = 0 Then
                 If Index = 3 Then
                    Call LookuPLoad("oilCode as Code", "Oildesc as Name", "rm_oil", Txtfields(4), Txtfields(4), Txtfields(3), Txtfields(1), "Oil Listing")
                 End If
                 If Index = 11 Then
                    Call LookuPLoad("oilCode as Code", "Oildesc as Name", "rm_oil", Txtfields(12), Txtfields(12), Txtfields(11), Txtfields(1), "Oil Listing")
                 End If
              Else
                 MsgBox "No record Found"
                 Screen.MousePointer = 0
                 Exit Sub
              End If
           End If
    End If
If Index = 1 Then
    Txtfields(1).SetFocus
End If
   End Select
End If


Exit Sub
txtFields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure txtFields_LostFocus of Form FrmissueKgs", vbInformation, head
End Sub

Public Sub GRIDALIGN()
If Opt = "mod" Then
   grdDataGrid.Columns(1).Locked = True
   grdDataGrid.Columns(2).Locked = True
   grdDataGrid.Columns(3).Locked = True
   grdDataGrid.Columns(4).Locked = False
   grdDataGrid.Columns(5).Locked = True
   grdDataGrid.Columns(6).Locked = True
   grdDataGrid.Columns(7).Locked = True
   grdDataGrid.Columns(8).Locked = True
   grdDataGrid.Columns(9).Locked = True
   grdDataGrid.Columns(10).Locked = False
   grdDataGrid.Columns(11).Locked = False
Else
   grdDataGrid.Columns(1).Locked = True
   grdDataGrid.Columns(2).Locked = True
   grdDataGrid.Columns(3).Locked = True
   grdDataGrid.Columns(4).Locked = True
   grdDataGrid.Columns(5).Locked = True
   grdDataGrid.Columns(6).Locked = True
   grdDataGrid.Columns(7).Locked = True
   grdDataGrid.Columns(8).Locked = True
    If Opt = "add" Then grdDataGrid.Columns(8).NumberFormat = "######.000"
    
   
End If

End Sub

Public Sub QUERY_MODE()
On Error GoTo QUERY_MODE_Error

If Opt = "" Or Opt = " " Or Opt = "query" Then
   Text1.Text = ""
   grdDataGrid.Enabled = True
'   lblctrl.Visible = False
    Frame10.Visible = False
   Timer1.Enabled = False
   Command1.Enabled = False
   Set adoPrimaryRS = New Recordset
   If Opt <> "mod" Then
     Dim sQry As String
     sQry = " SHAPE {SELECT TOP 1 DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,SoftWaste FROM RM_ISSH  " & _
            " where DIVCODE = '" & Divcode & "' and  DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " Order by A.DOCNO DESC} AS ParentCMD APPEND ({SELECT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.Plotno""Supplier Lot No"",VARname""Variety Name"",colorcode ""Color"",a.CATCD""Category"",a.actISSkgs""Issued Kgs"",a.baleno""Bale No.""  FROM RM_ISSb a,rm_lot b,rm_var c  " & _
            " where c.varcode=a.varcode and b.varcode=c.varcode and isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' and A.DIVCODE='" & Divcode & "' " & _
            " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD"
   
      adoPrimaryRS.Open sQry, DB, adOpenStatic, adLockBatchOptimistic
        Call clears
      If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MoveLast
        'Bind the text boxes,check boxes and option buttons to the data source
         Call bindcontls
    
        If adoPrimaryRS("isstype") = "BT" Then
            If IsNull(adoPrimaryRS("FORM")) = False Then
                If adoPrimaryRS("FORM") = "Form XX" Then
                    Option5.value = True
                ElseIf adoPrimaryRS("FORM") = "Form XXVII" Then
                    Option6.value = True
                Else
                    Option7.value = True
                End If
            End If
        End If

         Set rsa = New Recordset
         rsa.Open "select Issue_code + ' - ' + issue_desc from rm_issuetype where issue_code='" & adoPrimaryRS("isstype") & "'", DB, adOpenStatic
         If rsa.RecordCount > 0 Then
                Combo1.Text = rsa(0)
         End If

         Call disablcontls
         SSTab1.TabEnabled(1) = False
         Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
         Set grdDataGrid.DataSource = adoSecondaryRS
         grdDataGrid.Columns(0).Visible = False
         grdDataGrid.Columns(1).Visible = False
         grdDataGrid.Columns(2).Visible = False
         grdDataGrid.Columns(3).Visible = False
         grdDataGrid.Columns(4).Width = 1000
         grdDataGrid.Columns(5).Width = 1300
         grdDataGrid.Columns(6).Width = 1000
         grdDataGrid.Columns(7).Width = 1500
         grdDataGrid.Columns(8).Width = 1500
         grdDataGrid.Columns(9).Width = 1200
         grdDataGrid.Columns(10).Width = 1200
         grdDataGrid.Columns(11).Width = 1000
         grdDataGrid.Columns(12).Width = 1000
         grdDataGrid.Columns(11).NumberFormat = "#######.000"
         grdDataGrid.Columns(11).Alignment = dbgRight
'         grddatagrid.Columns(10).Alignment = dbgRight
         grdDataGrid.Columns(12).Alignment = dbgRight
         SSTab1.Tab = 0
         Frame1.Visible = True
         Frame7.Visible = True
         grdDataGrid.AllowUpdate = False
         desc.Caption = "Query"
         'This variable is declared as global to show the date
         DATLAB.Caption = pdate
         'Calling newform procedure from Module to disable buttons
         '----
         If Opt <> "add" Then
            If adoPrimaryRS.RecordCount > 0 Then
               On Error Resume Next
               Set RS2 = adoPrimaryRS("childcmd").UnderlyingValue
               If RS2.RecordCount > 0 Then
                  RS2.MoveFirst
                  Set rs1 = New Recordset
                  rs1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where 1=2", DB, adOpenStatic, adLockBatchOptimistic
                  S = 0: C = 0
''                  Do While Not rs2.EOF
''                     Set rs = New Recordset
''                     rs.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where STATUS IN ('AC','AW') AND lotno=" & rs2(4) & " and lotdt='" & Format(rs2(5), "yyyy-mm-dd") & "' and baleno=" & rs2(10) & "  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
''                     c = c + 1
''                     RS1.AddNew
''                     RS1("Baleno") = rs(0)
''                     RS1("Gross Weight") = Format(rs(1), "#0.000")
''                     RS1("Tare Weight") = Format(rs(2), "#0.000")
''                     RS1("Net Weight") = Format(rs(3), "#0.000")
''                     's = s + rs(3)
''                     rs2.MoveNext
''                  Loop
               End If
            End If
         End If
        '-----
        
        '----------------ANBU---------------
        Dim balers As Recordset
        Set balers = New Recordset
        balers.Open "Select Count(Baleno) as Baleno,Sum(IssKgs) as IssueKgs,SUM(ActIssKgs) as ActIssKgs from RM_ISSB where DocNo='" & Trim(Txtfields(0).Text) & "' and docdt='" & Format(MaskEdBox1(1).Text, "yyyy-MM-dd") & "' ", DB
        If Not balers.EOF Then
            TxtTotBales.Text = balers!baleno
            TxtNetWt.Text = Format(balers!IssueKgs, "0.000")
            TxtActWt.Text = Format(balers!ActissKgs, "0.000")
        Else
            TxtTotBales.Text = 0
            TxtNetWt.Text = 0
            TxtActWt.Text = 0
        End If
        balers.Close
        Set balers = Nothing
        '-------------------------------

        
         Call NEWFORM1(BUTTON, GSNO)
         Call disablcontls
         SSTab1.TabEnabled(1) = True
         Exit Sub
      Else
         MsgBox "No Records Found", vbInformation, head
         Call Norecfound(BUTTON)
         SSTab1.Visible = True
         SSTab1.Tab = 0
         'Set DataGrid1.DataSource = Nothing
         Set grdDataGrid.DataSource = Nothing
         For i = 0 To 5
            Txtfields(i).Text = ""
         Next
         Combo1.Text = ""
      End If
   End If
End If



Exit Sub
QUERY_MODE_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure QUERY_MODE of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub delmodok_Click()
On Error GoTo delmodok_Click_Error

Set Rs = New Recordset
Rs.Open "select a.docno,a.docdt from rm_issh a where    a.divcode='" & Divcode & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and docno not in(select distinct issno  from rm_mixingstock where isnull(mixkgs,0)<>0 )", DB, adOpenStatic, adLockBatchOptimistic
If Rs.RecordCount <> 0 Then
   If Opt = "mod" Then
    StatusBar1.Panels(2).Text = "Select Any Document Number For Modification"
   Else
   StatusBar1.Panels(2).Text = "Select Any Document Number For Deletion"
   End If
   
         LookUp.clear = True
         ''''''LookUp.query = "select distinct a.docno,a.docdt,lotno from rm_issh a,rm_issb b where a.divcode=b.divcode and a.docno=b.docno and a.docdt=b.docdt and a.divcode='" & Divcode & "'"
         LookUp.Query = "select distinct a.docno""Doc. No."",a.docdt""Doc. Date"",a.isstype""Issue Type"" from rm_issh a where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and docno not in(select distinct issno  from rm_mixingstock where isnull(mixkgs,0)<>0)"
         LookUp.Caption = "Issue Listing"
         LookUp.DefCol = "Doc. No."
         LookUp.ALIGN = "1500,1500,1500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
            If Opt = "del" Then deltype = InputBox(" Enter Delete type " & vbCrLf & vbCrLf & "  1 - Line Deletion " & vbCrLf & "  2 - Complete Deletion " & vbCrLf & head + "Delete type", head)
                iCount = 0
                Txtfields(0).Text = LookUp.Fields(0)
                MaskEdBox1(0).Mask = Format(LookUp.Fields(1), "dd/mm/yyyy")
                MaskEdBox1(0).Text = MaskEdBox1(0).Mask
                a = Txtfields(0).Text
                b = MaskEdBox1(0).Text
                Text1.Text = ""
                
                Call delmodproc(CStr(a), CStr(b))
                'Option2.Enabled = True
                grdDataGrid.Enabled = True
                Set Rs = New Recordset
                Rs.Open "Select * from rm_param", DB, adOpenStatic
                IssFlg = Rs("issflg")
         Else
            Opt = ""
            desc.Caption = "Query"
            Screen.MousePointer = 11

             'CANCEL
             Select Case Opt
             Case "add"
                 DB.RollbackTrans
             Case "del"
                 DB.RollbackTrans
             End Select
             Opt = ""
             Call QUERY_MODE
             Screen.MousePointer = 0
             Call disablcontls
             grdDataGrid.Enabled = True
            ' lblctrl.Visible = False
             Timer1.Enabled = False
             'procedure unique to this form  to set grid headings
             'calling cancl procedure from module
             Call cancl(BUTTON)
             Frame3.Visible = False
             Frame1.Visible = True
         End If
'''   KslList1.Visible = True
'''   KslList1.conn = connectstring
'''
'''   KslList1.listfield1width = 2500
'''   KslList1.listfield2width = 5500
'''   KslList1.Caption = "Issue Details"
'''   Label15.Caption = "Issue Details"
'''   KslList1.table = "rm_issh"
'''   KslList1.listfield1 = "docno"
'''   KslList1.listfield2 = "docdt"
'''
'''   Frame3.Visible = True
'''   Frame3.ZOrder
'''   KslList1.SetFocus
Else
   MsgBox "No Records Found", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If
'If Opt = "add" Then DB.BeginTrans


Exit Sub
delmodok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure delmodok_Click of Form FrmissueKgs", vbInformation, head
End Sub

Public Sub delmodproc(a As String, b As String)
On Error GoTo delmodproc_Error

If Opt = "mod" Then
   Set adoPrimaryRS = New Recordset
   adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,SoftWaste FROM RM_ISSH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by A.DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.plotno""Supplier Lot No."",b.VARCODE""Variety"",colorcode ""Color"",a.CATCD""Category"",a.actisskgs ""Issued Kgs"",a.baleno""Bale No."",a.arrdt,a.isskgs""Aikgs"",a.issued  FROM RM_ISSb a,rm_lot b " & _
                     " where  isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' order by a.lotno,a.baleno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
   If Not adoPrimaryRS.EOF Then
      Call bindcontls
      If adoPrimaryRS("isstype") = "PR" Then
         Combo1.Text = "PR-Production"
      ElseIf adoPrimaryRS("isstype") = "T2" Then
         Combo1.Text = "T2-Transfer To unit2"
         ElseIf adoPrimaryRS("isstype") = "T3" Then
         Combo1.Text = "T3-Transfer To unit3"
      ElseIf adoPrimaryRS("isstype") = "SA" Then
         Combo1.Text = "SA-Sales"
      End If
      
        If adoPrimaryRS("ISSTO") = "M" Then
           Combo2.Text = "M-Mixing"
        ElseIf adoPrimaryRS("ISSTO") = "D" Then
           Combo2.Text = "D-Dying"
        End If
      
      ''Call disablcontls
      Call ENABLCONTLS
      SSTab1.TabEnabled(1) = False
      Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
      Set grdDataGrid.DataSource = adoSecondaryRS
      grdDataGrid.Columns(10).Locked = True
      
      grdDataGrid.Columns(12).Locked = True
      grdDataGrid.Columns(12).Visible = True
      grdDataGrid.Columns(13).Visible = False
      grdDataGrid.Columns(14).Visible = False
      grdDataGrid.Columns(15).Visible = False
      
      grdDataGrid.Columns(0).Visible = False
      grdDataGrid.Columns(1).Visible = False
      grdDataGrid.Columns(2).Visible = False
      grdDataGrid.Columns(3).Visible = False
      grdDataGrid.Columns(4).Width = 1000
      grdDataGrid.Columns(5).Width = 1300
      grdDataGrid.Columns(6).Width = 1000
      grdDataGrid.Columns(7).Width = 1000
      grdDataGrid.Columns(8).Width = 1000
      grdDataGrid.Columns(9).Width = 1000
      grdDataGrid.Columns(10).Locked = True
      grdDataGrid.Columns(10).Width = 1500
      grdDataGrid.Columns(11).Width = 1214.929
      grdDataGrid.Columns(12).Width = 1000
      grdDataGrid.Columns(11).NumberFormat = "#######.000"
      grdDataGrid.Columns(9).Alignment = dbgLeft
      grdDataGrid.Columns(10).Alignment = dbgLeft
      grdDataGrid.Columns(11).Alignment = dbgRight
      SSTab1.Tab = 0
      Frame1.Visible = True
      adoSecondaryRS.AddNew
      grdDataGrid.AllowUpdate = True
      Txtfields(3).Locked = False
      Txtfields(4).Locked = False
      Txtfields(6).Locked = False
      Frame2.Visible = True
      Text4.Visible = True
      grdDataGrid.AllowUpdate = True
      grdDataGrid.AllowAddNew = True
      Screen.MousePointer = 0
      Call GRIDALIGN
   Else
      Set grdDataGrid.DataSource = Nothing
   End If
Else
   BUTTON(9).Enabled = True
'   BUTTON(10).Enabled = True
   Set adoPrimaryRS = New Recordset
   ''adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno FROM RM_ISSH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno='" & a & "' and  DOCDT ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by A.DOCNO} AS ParentCMD APPEND ({(SELECT distinct a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,a.VARCODE""Variety"",a.CATCD""Category"",b.ISSwt""Issued Kgs"",b.issbal""Bale No.""  FROM RM_ISSb a,rm_lot b " & _
                     " where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and  docno='" & a & "' and  DOCDT ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "') Order by A.LOTno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,SoftWaste FROM RM_ISSH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by A.DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.plotno""Supplier Lot No"",b.VARCODE""Variety"",colorcode ""Color"",a.CATCD""Category"",a.actisskgs ""Issued Kgs"",a.baleno""Bale No."",a.arrdt,a.isskgs""Aikgs"",a.issued  FROM RM_ISSb a,rm_lot b " & _
                     " where  isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' order by a.lotno,a.baleno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
                     
Set adoSecondaryRS = New Recordset
adoSecondaryRS.Open "SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.plotno""Supplier Lot No"",b.VARCODE""Variety"",colorcode ""Color"",a.CATCD""Category"",a.actisskgs ""Issued Kgs"",a.baleno""Bale No."",a.arrdt,a.isskgs""Aikgs"",a.issued,a.ReqDocNo,a.ReqDocDt  FROM RM_ISSb a,rm_lot b " & _
                     " where  isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' order by a.lotno,a.baleno", DB, adOpenStatic, adLockBatchOptimistic
 Set TmpDelRs = adoSecondaryRS
   'Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
   Set grdDataGrid.DataSource = adoSecondaryRS
   Call GRIDALIGN
   
   grdDataGrid.Columns(0).Visible = False
   grdDataGrid.Columns(1).Visible = False
   grdDataGrid.Columns(2).Visible = False
   grdDataGrid.Columns(3).Visible = False
   
    grdDataGrid.Columns(12).Visible = True
    grdDataGrid.Columns(13).Visible = False
    grdDataGrid.Columns(14).Visible = False
    grdDataGrid.Columns(15).Visible = False
    grdDataGrid.Columns(4).Width = 1000
      grdDataGrid.Columns(5).Width = 1300
      grdDataGrid.Columns(6).Width = 1000
      grdDataGrid.Columns(7).Width = 1500
      grdDataGrid.Columns(8).Width = 1000
      grdDataGrid.Columns(9).Width = 1000
      grdDataGrid.Columns(10).Width = 1500
      grdDataGrid.Columns(11).Width = 1214.929
          grdDataGrid.Columns(12).Width = 1200
          grdDataGrid.Columns(11).Alignment = dbgRight
          grdDataGrid.Columns(12).Alignment = dbgRight
   Call bindcontls
   SSTab1.Visible = True
   grdDataGrid.Visible = True
   grdDataGrid.Enabled = True
   grdDataGrid.AllowUpdate = True
   SSTab1.TabEnabled(1) = False
   ''Call GRIDALIGN
End If
If Opt = "mod" Then
   Txtfields(3).Locked = False
   Txtfields(4).Locked = False
   Txtfields(6).Locked = False
   Frame2.Visible = True
   Text4.Visible = True
   grdDataGrid.AllowUpdate = True
   grdDataGrid.AllowAddNew = True
   grdDataGrid.EditActive = True
   grdDataGrid.Enabled = True
   Screen.MousePointer = 0
   Call GRIDALIGN
   grdDataGrid.Columns(4).Locked = True
End If
Screen.MousePointer = 0


Exit Sub
delmodproc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure delmodproc of Form FrmissueKgs", vbInformation, head
End Sub

Public Sub navi1(tol As Object)
tol(0).Enabled = True 'ADD
'tol(1).Enabled = True 'MOD
tol(2).Enabled = True 'DEL
On Error Resume Next
'  tol(3).Enabled = True 'LIST
tol(4).Enabled = True  'QUERY
tol(9).Enabled = False 'SAVE
tol(10).Enabled = False 'CANCEL
tol(11).Enabled = True  'EXIT
End Sub

Public Sub ToNum1(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
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
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index

Case 8
    Call MixgrpLookup
Case 1
Set Rs = New Recordset
Rs.Open "select isstype from rm_issuetype where issue_code='" & Left(Combo1.Text, 2) & "'", DB, adOpenStatic
If Rs.RecordCount > 0 Then
    ISSTYPE = Rs(0)
Else
    ISSTYPE = ""
End If


If ISSTYPE = "S" Or ISSTYPE = "J" Or ISSTYPE = "R" Then
         Set rs1 = New Recordset
         rs1.Open "Select * from masterlen", DB, adOpenStatic
            If ISSTYPE = "S" Then
               If rs1.RecordCount > 0 Then
                  'sup = rs1("ptypecottonsales") & "%"
                  'sup = Mid$(rs1("ptypecottonsales"), 1, InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
               If Len(rs1("ptypecottonsales")) > 2 Then
                sup = Left(rs1("ptypecottonsales"), InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
                sup1 = Left(Mid(rs1("ptypecottonsales"), 4), InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
                sup2 = Right(rs1("ptypecottonsales"), InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
                Else
                sup = rs1("ptypecottonsales") & "%"
                sup1 = ""
               End If
            Else
               sup = ""
               sup1 = ""
            End If
         Else
            If rs1.RecordCount > 0 Then
               sup = rs1("ptypecotton") & "%"
            Else
               sup = ""
            End If
         End If
         Set Rs = New Recordset
         Rs.Open "select * from fa_slmas where slcode='" & Trim(Txtfields(1).Text) & "' and slcode like '" & sup & "'", DB, adOpenStatic
         
         If Rs.RecordCount = 0 Then
            LookUp.clear = True
            LookUp.Query = "Select Slcode as Code,slname as Name FROM fa_slmas where slcode like '" & sup & "' or slcode like '" & sup1 & "' or slcode like '" & sup2 & "'"
            LookUp.Caption = "Customer Listing"
            LookUp.DefCol = "Name"
            LookUp.ALIGN = "2500,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                    Txtfields(1).Text = LookUp.Fields(0)
                    Txtfields(1).Locked = False
                    Text5.Text = LookUp.Fields(1)
                    grdDataGrid.Col = 0
                    LookUp.clear = True
                    Txtfields(7).SetFocus
            Else
                Txtfields(1).SetFocus
                Txtfields(7).SetFocus
            End If
        Else
            Text5.Text = Rs("slname")
        End If
End If


    
If ISSTYPE = "T" Then
    Set rsa = New Recordset
    rsa.Open "Select Divcode,Divname from pp_divmas where divcode ='" & Txtfields(1).Text & "' and divcode not in ('" & Divcode & "')", DB, adOpenStatic
    If rsa.RecordCount = 0 Then
        LookUp.Query = "Select Divcode,Divname from pp_divmas where divcode not in ('" & Divcode & "')"
        Flag = ""
         LookUp.Caption = "Division Listing"
        LookUp.DefCol = "Divname"
        LookUp.ALIGN = "2500,5000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Txtfields(1).Text = LookUp.Fields(0)
            Text5.Text = LookUp.Fields(1)
            LookUp.clear = True
            Txtfields(7).SetFocus
            Exit Sub
        Else
            Exit Sub
        End If
    Else
            Txtfields(1).Text = rsa(0)
            Text5.Text = rsa(1)
            Txtfields(7).SetFocus
    End If
End If
 ''If Left(Combo1.Text, 2) = "PR" Or Trim(Left(Combo1.Text, 2)) = "T2" Or Trim(Left(Combo1.Text, 2)) = "T3" Then
  If ISSTYPE = "P" Then
        LookUp.clear = True
        If Combo2.Text = "D-Dying" Then
            Set rsa = New Recordset
            rsa.Open "Select cntcd,cntname from rm_count where cntcd='" & Txtfields(1).Text & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                LookUp.Query = "Select cntcd,cntname from rm_count"
                Flag = ""
                 LookUp.Caption = "Count Listing"
                LookUp.DefCol = "CNTNAME"
                LookUp.ALIGN = "2500,5000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    
                    Txtfields(1).Text = LookUp.Fields(0)
                    Text5.Text = LookUp.Fields(1)
                    Txtfields(13).SetFocus
                    LookUp.clear = True
                    Exit Sub
                Else
                Exit Sub
                    
                End If
            Else
                    Txtfields(1).Text = rsa(0)
                    Text5.Text = rsa(1)
            End If
                
            Txtfields(13).SetFocus
        ElseIf Combo2.Text = "M-Mixing" Then
            Set rsd = New Recordset
            rsd.Open "select description from ig_product where product_code='" & Txtfields(1).Text & "'", DB
            If rsd.RecordCount > 0 Then
                Text5.Text = rsd(0)
            Else
            'LookUp.query = "Select Distinct Product_code,Description FROM ig_product"
            'LookUp.Query = "Select Distinct CntCD, CntName As Description FROM Rm_Count Where DivCode = '" & Divcode & "'"
            LookUp.Query = "Select Distinct CntCD""Mix Count Code"", CntName""Mix Count Name"",b.MIXGRPCD ""Mix Group Code"",MIXGRPNAME ""Mix Group Name""  FROM Rm_Count a,RM_MIXGRP b Where a.mixgrpcd= b.mixgrpcd and a.divcode =b.divcode"
            LookUp.Caption = "Mix Count Listing"
            LookUp.DefCol = "Mixing Count Name"
            LookUp.ALIGN = "1600,2600,1600,2600"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Txtfields(1).Text = LookUp.Fields(0)
                Text5.Text = LookUp.Fields(1)
                Txtfields(8).Text = LookUp.Fields(2)
                Text12.Text = LookUp.Fields(3)
                Txtfields(13).SetFocus
                LookUp.clear = True
                Call MixgrpLookup
            Else
                LookUp.clear = True
                'lookup.
                Txtfields(1).SetFocus
                Exit Sub
            End If
            End If
            End If
        End If
Case 8
         


Case 13
    Txtfields(13).Text = UCase(Txtfields(13).Text)
If Trim(Txtfields(3).Text) <> "" Then
   Dim os As New Recordset
   Set os = New Recordset
   os.Open "select * from rm_oil where oilcode = '" & Trim(Txtfields(3).Text) & "'", DB
   If os.RecordCount > 0 Then
      Txtfields(3).Text = os(0)
      Text1.Text = os(1)
   Else
   
      'Label15.Caption = "oil Details"
      KslList1.Visible = True
      KslList1.conn = connectstring
      KslList1.Table = "rm_oil"
      KslList1.listfield1width = 2500
      KslList1.listfield2width = 7500
      KslList1.listfield1 = "oilcode"
      KslList1.listfield2 = "oildesc"
      KslList1.Caption = "oil Details"
      Frame3.Visible = True
      Frame3.ZOrder
      KslList1.SetFocus
   End If
End If
End Select
End If


Exit Sub
Txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure txtFields_Validate of Form FrmissueKgs", vbInformation, head
End Sub
Private Sub Format_Grid()
On Error GoTo Format_Grid_Error

grid.clear
grid.Rows = 2
grid.FormatString = "^Baleno       |^Gr|^Nett Wght                   |^Issue Qty        |^Act Issue Kgs         |^Issued    "

Exit Sub
Format_Grid_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Format_Grid of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TxtIsskgs_KeyPress(KeyAscii As Integer)
On Error GoTo TxtIsskgs_KeyPress_Error

If KeyAscii = 13 Then
    SendKeys "{tab}"
End If
ToNumberAssign TxtIsskgs, 10, KeyAscii, 15, 3

Exit Sub
TxtIsskgs_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure TxtIsskgs_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub TxtIsskgs_LostFocus()
On Error Resume Next
         If Opt = "add" Then
            ILotNo = 0
            ILotdt = 1
            ilottype = 2
            Ivarcode = 3
            icolorcode = 6
            icategory = 5
         End If
         If Opt = "mod" Then
            ILotNo = 4
            ILotdt = 5
            ilottype = 6
            Ivarcode = 7
            icolorcode = 8
            icategory = 9
         End If



            DB.Execute "Delete FROM Tmp_Wt"
            'Con.Execute "INSERT INTO Tmp_Wt Select Baleno, NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where Lotno = '" & List1.Text & "' and Catcd = '" & catcode & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(lotdt, "yyyy-mm-dd") & "' order by 1"
            DB.Execute "INSERT INTO Tmp_Wt Select Baleno,Grwt,Tarewt,Netwt,NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where STATUS IN ('AC','AW') AND Lotno = '" & Trim(grdDataGrid.Columns(ILotNo).Text) & "' and Catcd = '" & grdDataGrid.Columns(icategory).Text & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(grdDataGrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by 1"
          twt = 0
            TEMP = val(TxtIsskgs.Text)
            Set balers = New Recordset
            balers.Open "Select * from Tmp_wt order by cast(baleno as decimal(5))", DB, adOpenStatic
                If Rs.RecordCount > 0 Then
                Rs.MoveFirst
                t1bales = 0
                While Not Rs.EOF And TEMP > 0
                            If balers(4) > TEMP Then
                        t1bales = t1bales + 1
                         TEMP = TEMP - val(TxtIsskgs.Text)
                    Else
                        t1bales = t1bales + 1
                        TEMP = TEMP - balers(4)
                    End If
                    balers.MoveNext
                Wend
            End If
            
            
        Txtissbale.Text = t1bales
        Command7.SetFocus
        
        TxtTotBales.Text = Format(val(Text3.Text), "0.000")
        TxtNetWt.Text = Format(val(Text11.Text), "0.000")
        TxtActWt.Text = Format(val(Text4.Text), "0.000")
        
End Sub
Public Sub gatepass(pg1 As Integer)
    Print #a,
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 85, " ") + Chr(27) + "F"
    Print #a,
    Set Rs = New Recordset
    Rs.Open "select distinct slname,add3,a.isstype from rm_issb a,rm_lot c,fa_slmas b where a.lotno=c.lotno and a.lotdt=c.lotdt and  c.supcd=b.slcode and a.divcode=c.divcode  and c.divcode = '" & Divcode & "'   AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  docno = " & Trim(val(Txtfields(0).Text)) & "  Order by slname ", DB, adOpenStatic
    Print #a, Space(3) + Padr("DC for Gatepass List ", 50, " ") + Space(15) + Format(pdate, "dd-mm-yy") + Space(5); "Pg. :"; pg1
    Print #a,
    
    Print #a, Space(3) + "        Please Allow The Following Materials Through         "
    
    If Rs(2) = "T3" Then
        g = "UNIT-III"
    ElseIf Rs(2) = "T2" Then
        g = "UNIT-II"
    ElseIf Rs(2) = "S" Then
         g = "SALES"
    End If
    Print #a, Space(14) + Padl(UCase(Txtfields(7).Text), 10, " ") + Space(1) + "For transfer to " + Space(5) + Padr(g, 10, " ")
    Print #a, Space(3) + "                                     " + Padr(Rs("add3"), 40, " ") + Space(12)
    Print #a,
    Print #a, Space(3) + "S.No                  Description             Quantity             Kgs"
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

Public Sub hdlist(pg1 As Integer)
    Print #a,
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 85, " ") + Chr(27) + "F"
    Print #a,
    Set Rs = New Recordset
  '  rs.Open "select distinct th.DOCNO,th.DOCDT,s.slname,refno from  IN_TRNHEAD th, FA_SLMAS s,  IN_TRNTAIL t, IN_TC tc where th.divcode = '" & Divcode & "' and th.tc = tc.tc and tc.tctype =1  and th.divcode = t.divcode and th.tc = t.tc and th.docno = t.docno  and th.slcode = s.slcode  and th.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and th.docdt=t.docdt and  t.pordno is  null And th.docno = " & Trim(Val(txtFields(2).Text)) & "  Order by TH.DOCNO ", db, adOpenStatic, adLockReadOnly
  Rs.Open "select slname,add3 from fa_slmas where slcode='" & Txtfields(8).Text & "'", DB
    Print #a, Space(3) + Padr("DC for Issue List", 50, " ") + Space(15) + Format(pdate, "dd-mm-yy") + Space(5); "Pg. :"; pg1
    Print #a,
    Print #a, Space(3) + "Doc No         :" + Padr(Txtfields(0).Text, 10, " ") + Space(45) + "Date :" + Padr(Format(MaskEdBox1(0).Text, "dd/mm/yy"), 10, " ")
    If Rs.RecordCount > 0 Then
    Print #a, Space(3) + "Supplier       :" + Padr(Rs("slname"), 40, " ") + Space(12) + "Remarks :" + Padr(" ", 10, " ")
    
     Print #a, Space(3) + "                           " + Padr(Rs("add3"), 40, " ") + Space(12)
     End If
    'Print #a, Space(3) + "Vehile No.     :" + Padr(txtFields(3).Text, 40, " ")
    Print #a, Space(3) + String(85, "-")
    Print #a, Space(3) + "S.No        VarityDescription       Quntity          Kgs        values    Remarks"
    Print #a, Space(3) + String(85, "-")
End Sub

Public Sub CottRecnHeader(pg1 As Integer, Co As Integer, LDT As String)
    Print #z, Chr(18)
    Print #z, Space(5) + Chr(27) + "E" + CENTRE(Trim(DIVNAME), 80, " ") + Chr(27) + "F"
    Print #z,
    SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
    Print #z, Space(5) & CENTRE("Issue Weight Details ", 80, " ")
    Print #z,
    Print #z, Space(5) & "Mixing Count : " & Padr(Text5.Text, 40, " ") + Space(5) + "Iss. No  : " & Padr(Txtfields(0).Text, 5, " ")
    Print #z, Space(5) & "Mixing Group : " & Padr(Text12.Text, 40, " ") + Space(5) + "Iss. Date: " & Padr(Format(MaskEdBox1(0).Text, "dd/mm/yy"), 8, " ")
    Print #z, Space(5) & "Mix.Lot. No. : " & Padr(Txtfields(13), 40, " ") '& Chr(18) + 'pace(2) + "Doc Date : "; Space(5) & "Doc No.      : " & Padr(Txtfields(0).Text, 5, " ")
    Print #z, Space(5)
    Print #z, Space(5) & String(80, "-")
    Print #z, Space(5) & "Lot No.     LotDate    Variety"
    Print #z, Space(5) & "Bale No.               Gross Wt.      Tare Wt    Moist.Wt    Net.Wt.  Actiss Kgs"
    Print #z, Space(5) & String(80, "-")
    Co = Co + 9
End Sub

Sub VisText(IType As String)
On Error GoTo VisText_Error

Select Case IType
Case "P"  'production
    Label9.Visible = True  'issto
    Combo2.Visible = True
    Label21.Caption = "Mix Lot No."
    Txtfields(13).Visible = True  'mixing lotno
    Label21.Visible = True
    Label5.Visible = True  'mixing count
    Label5.Caption = "Mixing Count"
    Txtfields(1).Visible = True 'code
    Text5.Visible = True  'mix desc
    Txtfields(7).Visible = False  'Vehicle
    Frame1.Visible = True
    Label14.Visible = False 'Vehicle

    Label16.Visible = True 'mix grp label
    Txtfields(8).Visible = True 'mix grp code
    Text12.Visible = True 'mixing Grp Name
      
    Txtfields(9).Visible = False  'InvnO
    Label31.Visible = False  '
    
    DTPicker2.Visible = False 'Invdate
    MaskEdBox1(1).Visible = False
    Label32.Visible = False
    
    Txtfields(10).Visible = False 'TimeOut
    Label33.Visible = False
    
    Option5.Visible = False
    Option6.Visible = False
    Option7.Visible = False
    
    Label37.Visible = False
    Text16.Visible = False
    lblSoft.Visible = True
    Txtfields(14).Visible = True
    
    
    
Case "S", "J", "R" 'Sales
    
    Label9.Visible = False  'issto
    Combo2.Visible = False
    Txtfields(13).Visible = True  'Driver
    Label21.Visible = True  'Driver
    Label21.Caption = "Driver"
    Txtfields(9).Visible = True  'InvnO
    Label31.Visible = True  '
    Txtfields(14).Visible = False
    lblSoft.Visible = False
    DTPicker2.Visible = True 'Invdate
    DTPicker2.value = pdate
    MaskEdBox1(1).Visible = True
    Label32.Visible = True
    Txtfields(10).Visible = True  'TimeOut
    Label33.Visible = True
    
    Option5.Visible = True
    Option6.Visible = True
    Option7.Visible = True
    
    Label5.Visible = True  'mixing count
    Label5.Caption = "Supplier"
    Txtfields(1).Visible = True 'code
    Text5.Visible = True  'mix desc
    Txtfields(7).Visible = True  'Vehicle
    Frame1.Visible = False
    Label14.Visible = True 'Vehicle
    
    Label16.Visible = False 'mix grp label
    Txtfields(8).Visible = False 'mix grp code
    Text12.Visible = False 'mixing Grp Name
    
    
    Label37.Visible = True
    Text16.Visible = True
    
    'Label13.Visible = False
    
    
Case "T" 'Transfer
    
    Label9.Visible = False  'issto
    Combo2.Visible = False
    Txtfields(13).Visible = True  'Driver
    Label21.Visible = True  'Driver
    Label21.Caption = "Driver"
    Txtfields(9).Visible = True  'InvnO
    Label31.Visible = True  '
    
    DTPicker2.Visible = True 'Invdate
    DTPicker2.value = pdate
    MaskEdBox1(1).Visible = True
    Label32.Visible = True
    Txtfields(10).Visible = True  'TimeOut
    Label33.Visible = True
    
    Option5.Visible = True
    Option6.Visible = True
    Option7.Visible = True
    
    Label5.Visible = True  'mixing count
    Label5.Caption = "Division"
    Txtfields(1).Visible = True 'code
    Text5.Visible = True  'mix desc
    Txtfields(7).Visible = True  'Vehicle
    Frame1.Visible = False
    Label14.Visible = True 'Vehicle
    
    Label16.Visible = False 'mix grp label
    Txtfields(8).Visible = False 'mix grp code
    Text12.Visible = False 'mixing Grp Name
    
    Label37.Visible = True
    Text16.Visible = True
    
    'Label13.Visible = False
    
    
Case "B"
    Label9.Visible = False  'issto
    Combo2.Visible = False
    Txtfields(13).Visible = False  'mixing lotno
    Label21.Visible = False
    
    Label5.Visible = False  'mixing count
    Txtfields(1).Visible = False 'code
    Text5.Visible = False  'mix desc
    Txtfields(7).Visible = False  'Vehicle
    Frame1.Visible = False
    Label14.Visible = False 'Vehicle
    Label32.Visible = False
    Label16.Visible = False 'mix grp label
    Txtfields(8).Visible = False 'mix grp code
    Text12.Visible = False 'mixing Grp Name
  
    
    Txtfields(9).Visible = False  'InvnO
    Label31.Visible = False  '
    
    DTPicker2.Visible = False 'Invdate
    MaskEdBox1(1).Visible = False
    
    Txtfields(10).Visible = False 'TimeOut
    Label33.Visible = False
    
    Option5.Visible = False
    Option6.Visible = False
    Option7.Visible = False
    
    
    Label37.Visible = False
    Text16.Visible = False
    
    'Label13.Visible = False
    

End Select


Exit Sub
VisText_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure VisText of Form FrmissueKgs", vbInformation, head
End Sub
Sub MixgrpLookup()
On Error GoTo MixgrpLookup_Error

Set rsd = New Recordset
rsd.Open "select Mixgrpname from rm_mixgrp where mixgrpcd='" & Txtfields(8).Text & "'", DB
If rsd.RecordCount > 0 Then
    Text2.Text = rsd(0)
Else
    LookUp.Query = "Select Distinct MixgrpCd""Mixing Group Code"",MixGrpName""Mixing Group Name"" FROM rm_mixgrp"
    LookUp.Caption = "Mixing Group Listing"
    LookUp.DefCol = "Mixing Group Name"
    LookUp.ALIGN = "2500,5000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Txtfields(8).Text = LookUp.Fields(0)
        Text12.Text = LookUp.Fields(1)
        Txtfields(13).SetFocus
        LookUp.clear = True
    Else
        LookUp.clear = True
        Txtfields(8).SetFocus
        Exit Sub
    End If
End If

Exit Sub
MixgrpLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure MixgrpLookup of Form FrmissueKgs", vbInformation, head
End Sub


Private Sub clears()
On Error GoTo clears_Error

    Txtfields(1).Text = ""
    Txtfields(8).Text = ""
    Txtfields(13).Text = ""
    Text5.Text = ""
    Text12.Text = ""
    Txtfields(7).Text = ""
    Txtfields(10).Text = ""
    Txtfields(9).Text = ""
   '' MaskEdBox1(1).Text = "__/__/____"
    Option5.value = False
    Option6.value = False
    Option7.value = True

Exit Sub
clears_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure clears of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Function LookuPLoad(Fld1 As String, Fld2 As String, Tbl As String, NFocus As Object, CanFocus As Object, Fld1focus As Object, fld2Focus As Object, Caption As String) As Boolean
On Error GoTo LookuPLoad_Error

        LookUp.clear = True
        LookUp.Query = "select " & Fld1 & "," & Fld2 & " from " & Tbl & ""
        LookUp.DefCol = "Name"
        LookUp.ALIGN = "2000,6000"
        LookUp.Caption = Caption
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
            Fld1focus.Text = LookUp.Fields(0)
            If Fld1focus <> Fld1focus Then
            fld2Focus.Text = LookUp.Fields(1)
            End If
            LookUp.clear = True
            LookuPLoad = True
            NFocus.SetFocus
        Else
            CanFocus.SetFocus
            LookuPLoad = False
            LookUp.clear = True
        End If


Exit Function
LookuPLoad_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure LookuPLoad of Form FrmissueKgs", vbInformation, head
End Function

Private Sub ubgridalign()
On Error GoTo ubgridalign_Error

    If Opt = "add" Or Opt = "mod" Then
        grid.ColAllowEdit(4) = True
        grid.ColAllowEdit(5) = True
    End If

Exit Sub
ubgridalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure ubgridalign of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Sub Lotdisplay(Varcode As String, LOTDT As String, catcd As String, Optional ByVal vLotNo As Integer)
On Error GoTo Lotdisplay_Error
     If Opt = "add" Then
            ILotNo = 0
            ILotdt = 1
            ilottype = 2
            Ivarcode = 4
            icolorcode = 7
            icategory = 6
         End If
         If Opt = "mod" Then
            ILotNo = 4
            ILotdt = 5
            ilottype = 6
            Ivarcode = 8
            icolorcode = 9
            icategory = 10
         End If


If Opt = "add" Then
    baleno = 0
    issKgs = 0
    Set rslotcheck = New Recordset
    If adoSecondaryRS.RecordCount > 0 Then
           rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",B.PLOTNO ""Supplier Lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
           Set rslotcheck.DataSource = adoSecondaryRS
            
            rslotcheck.MoveFirst
            For i = 1 To rslotcheck.RecordCount
                If rslotcheck("Lot No.") = grdDataGrid.Columns(ILotNo).Text And rslotcheck("Date") = CDate(LOTDT) And rslotcheck(2) = catcd And rslotcheck("Variety") = Varcode Then
                    baleno = baleno + 1
                    issKgs = issKgs + rslotcheck("Issued Kgs")
                End If
                rslotcheck.MoveNext
            Next
    Else
        baleno = 0
    End If
    
    If issKgs > 0 Then
        MsgBox "Lot cannot be returned For This Issue", vbInformation, head
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
        Exit Sub
    End If
Else
issKgs = 0
baleno = 0
End If
        
    If Left(Combo2.Text, 1) = "M" Or Left(Combo2.Text, 3) = "D" Then
        Set rsa = New Recordset
        rsa.Open "SELECT OPFLG,LOTTYPE FROM RM_LOT WHERE VARCODE='" & Varcode & "' AND divcode='" & Divcode & "' and lotno='" & grdDataGrid.Columns(ILotNo).Text & "' and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  LOTYEAR='" & Year(yfdate) & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            If rsa(0) = "N" And rsa("lottype") <> "T" Then
                Set Rs = New Recordset
'                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0)-" & baleno & ",isnull(a.netwt,0) - isnull(isswt,0)-" & issKgs & ",a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(ILotNo).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.lotno = b.lotno and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0)-" & baleno & ",isnull(a.netwt,0) - isnull(isswt,0)-" & issKgs & ",a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & Varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(ILotNo).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.arrno=b.arrno and a.arrdt=b.arrdate AND a.DIVCODE=b.divcode and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and a.catcd='" & catcd & "'", DB, adOpenStatic, adLockBatchOptimistic
                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0)-" & baleno & ",case when weightflg ='M' then (isnull(a.netwt,0) - isnull(isswt,0)-" & issKgs & ") else (isnull(a.pnetwt,0) - isnull(isswt,0)-" & issKgs & ") end as ClsWgt,a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & Varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grdDataGrid.Columns(ILotNo).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.arrno=b.arrno and a.arrdt=b.arrdate AND a.DIVCODE=b.divcode and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and a.catcd='" & catcd & "'", DB, adOpenStatic, adLockBatchOptimistic
            Else
                Set Rs = New Recordset
'                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0)-" & baleno & ",isnull(a.netwt,0) - isnull(isswt,0)-" & issKgs & ",a.colorcode from rm_lot A where A.CATCD = '" & catcd & "' AND A.VARCODE='" & Varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(ILotNo).Text & "' and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0)-" & baleno & ",case when weightflg ='M' then (isnull(a.netwt,0) - isnull(isswt,0)-" & issKgs & ") else (isnull(a.pnetwt,0) - isnull(isswt,0)-" & issKgs & ") end as ClsWgt,a.colorcode from rm_lot A where A.CATCD = '" & catcd & "' AND A.VARCODE='" & Varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grdDataGrid.Columns(ILotNo).Text & "' and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            End If
'            If rsa(0) = "N" And rsa("lottype") <> "T" Then
'                Set Rs = New Recordset
'                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(a.issbal,0)-" & baleno & ",ISNULL(a.netwt,0) -ISNULL(a.isswt,0)-" & issKgs & ",a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & GrdDataGrid.Columns(ILotNo).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.lotno = b.lotno and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                'Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-" & baleno & ",a.netwt -" & issKgs & ",a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & GrdDataGrid.Columns(ILotNo).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.lotno = b.lotno and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'            Else
'                Set Rs = New Recordset
'                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(a.issbal,0)-" & baleno & ",ISNULL(a.netwt,0) -ISNULL(a.isswt,0)-" & issKgs & ",a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & GrdDataGrid.Columns(ILotNo).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.lotno = b.lotno and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                'Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-" & baleno & ",a.netwt -" & issKgs & ",a.colorcode from rm_lot A where A.VARCODE='" & varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & GrdDataGrid.Columns(ILotNo).Text & "' and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'            End If
        Else
            GoTo 10
        End If
    Else
      Set Rs = New Recordset
'      Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0),ISNULL(a.netwt - (SELECT isnull(sum(actisskgs),0),0) FROM RM_issb B WHERE lotno=" & grddatagrid.Columns(ILotNo).Text & " ),a.colorcode,a.arrdt from rm_lot A,RM_BALE B where A. VARCODE='" & Varcode & "' AND  STATUS IN ('AC','AW') AND a.divcode='" & Divcode & "' and a.lotno='" & val(grddatagrid.Columns(ILotNo).Text) & "' and (ISSUED='N' OR ISSUED IS NULL) and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD and  a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and a.arrdt=b.arrdt  and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  isnull(b.rejflg,'N')='N'", DB, adOpenStatic
      Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0),case when weightflg ='M' then ISNULL(a.netwt - (SELECT isnull(sum(actisskgs),0),0) FROM RM_issb B WHERE lotno=" & grdDataGrid.Columns(ILotNo).Text & " ) else ISNULL(a.pnetwt - (SELECT isnull(sum(actisskgs),0),0) FROM RM_issb B WHERE lotno=" & grdDataGrid.Columns(ILotNo).Text & " ) end as ClsWgt,a.colorcode,a.arrdt from rm_lot A,RM_BALE B where A. VARCODE='" & Varcode & "' AND  STATUS IN ('AC','AW') AND a.divcode='" & Divcode & "' and a.lotno='" & val(grdDataGrid.Columns(ILotNo).Text) & "' and (ISSUED='N' OR ISSUED IS NULL) and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD and  a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and a.arrdt=b.arrdt  and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  isnull(b.rejflg,'N')='N'", DB, adOpenStatic
    End If
    
      If Rs.RecordCount = 0 Then
         Set xx = New Recordset
         xx.Open "select rejflg from rm_lot where  VARCODE='" & Varcode & "' AND lotno='" & grdDataGrid.Columns(ILotNo).Text & "' and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
         If xx.RecordCount > 0 Then
            If xx("rejflg") = "Y" Then
               MsgBox "This Lot is Rejected. Please Select the another Lot", vbInformation, head
               Exit Sub
            Else
               GoTo 10
            End If
         End If
10:      MsgBox "The Lot was issued. Not available for the selected Count.", vbInformation, head
         On Error Resume Next
         grdDataGrid.Columns(0).Text = ""
         grdDataGrid.Col = 0
         grdDataGrid.SetFocus
      Else
         xx1 = 0
         Set ry = New Recordset
         currow = grdDataGrid.Row
         
        If Opt = "mod" Then
        
            Set rsg = New Recordset
            Set rsg.DataSource = adoSecondaryRS.DataSource
            opt1 = Opt
            Opt = ""
            gbaleno = "0"
            mlotno = grdDataGrid.Columns(ILotNo).Text
            rsg.MoveFirst
            k = 1
            While Not rsg.EOF
                If val(rsg("Lot No")) = val(mlotno) And rsg("lot Date") = Rs("date") And rsg("Variety") = Varcode Then
                    If val(rsg("bale no.")) <> 0 Then
                            gbaleno = gbaleno & "," & rsg("bale no.")
                    End If
                    k = k + 1
                End If
                rsg.MoveNext
            Wend
            rsg.MovePrevious
            Opt = opt1
           ry.Open "select * from rm_bale where  baleno not in (" & gbaleno & ") and isnull(actisskgs,0)=0 and  VARCODE='" & Varcode & "' AND STATUS IN ('AC','AW') AND (ISSUED='N' OR ISSUED IS NULL) and lotno='" & grdDataGrid.Columns(ILotNo).Text & "'  and lotdt='" & Format(Rs("date"), "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N'", DB, adOpenStatic
        Else
            ry.Open "select * from rm_bale where catcd= '" & catcd & "' AND VARCODE='" & Varcode & "' AND STATUS IN ('AC','AW') AND (ISSUED='N' OR ISSUED IS NULL) and lotno='" & grdDataGrid.Columns(ILotNo).Text & "'  and lotdt='" & Format(Rs("date"), "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N'", DB, adOpenStatic
        End If
         
        If gvar = Varcode Then
                If Option4.value = True Then
                    If diffkgs > 0 Then
                    TxtIsskgs.Text = CStr(diffkgs)
                    End If
                End If
         End If
         If ry.EOF = False Then
            Text6.Text = IIf(IsNull(ry("ARRDT")), " ", ry("arrdt"))
         End If
         Do While Not ry.EOF
            xx1 = xx1 + 1
            ry.MoveNext
         Loop
            
         'Text6.Text = ry("ARRDT")
         
         If xx1 - baleno <= 0 Then
            MsgBox "No Bales Available", vbInformation, head
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            Exit Sub
         End If
         
    
         
         
         grdDataGrid.Columns(ILotdt).Text = Rs(0)
         grdDataGrid.Columns(ilottype).Text = Rs(1)
         If Opt = "add" Then
             grdDataGrid.Columns(3).Text = IIf(Rs(2) = "", 0, Rs(2))
         ElseIf Opt = "mod" Then
             grdDataGrid.Columns(7).Text = IIf(Rs(2) = "", 0, Rs(2))
         End If
         grdDataGrid.Columns(Ivarcode).Text = Rs(3)
         
         
         
         Set Namers = New Recordset
         Namers.Open "Select varname from rm_var where varcode='" & Rs(3) & "'", DB, adOpenStatic
         If Not Namers.EOF Then
            If Opt = "add" Then
                grdDataGrid.Columns(5).value = Namers(0)
            End If
         End If
         Set Namers = New Recordset
         Namers.Open "Select colorname from rm_color where colorcode='" & Rs("colorcode") & "'", DB, adOpenStatic
         If Not Namers.EOF Then
            grdDataGrid.Columns(icolorcode).value = Namers(0)
         End If
         grdDataGrid.Columns(icategory).value = Rs(4)
         If Opt = "add" Then
            grdDataGrid.Columns(7).value = xx1 - baleno
            grdDataGrid.Columns(8).value = Format(Rs(6), "#0.000")
            grdDataGrid.Col = 9
            grdDataGrid.SetFocus
            flg = ""
        End If
      End If


Exit Sub
Lotdisplay_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Lotdisplay of Form FrmissueKgs", vbInformation, head

End Sub

Private Sub modification()

On Error GoTo modification_Error

Set RsMod = New Recordset
RsMod.Open "SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,SoftWaste FROM RM_ISSH where 1=2", DB, adOpenStatic, adLockBatchOptimistic

RsMod.AddNew

       If Txtisstype = "T" Then
            RsMod("cntcd") = Txtfields(1).Text
            cntcode = Txtfields(1).Text
       End If
       If Txtisstype = "S" Or Txtisstype = "J" Then
            RsMod("SLCODE") = Txtfields(1).Text
       End If
       
        RsMod("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
        RsMod("divcode") = Divcode
        RsMod("isstype") = Left(Combo1.Text, 2)
        RsMod("issto") = Left(Combo2.Text, 1)
        RsMod("docno") = Txtfields(0).Text
        
        If Txtisstype.Text = "P" Then
            RsMod("CNTCD") = Trim(Txtfields(1).Text)
            RsMod("ordno") = Trim(Txtfields(13).Text)
            RsMod("mixgrp") = Trim(Txtfields(8).Text)
            RsMod("oilcode") = Trim(Txtfields(3).Text)
            RsMod("oilwt") = val(Txtfields(4).Text)
            RsMod("wtrwt") = val(Txtfields(5).Text)
            RsMod("TINT") = Trim(Txtfields(6).Text)
            RsMod("oilcode1") = Txtfields(11).Text
            RsMod("oilwt1") = val(Txtfields(12).Text)
        ElseIf Txtisstype.Text = "S" Or Txtisstype.Text = "J" Or Txtisstype.Text = "R" Then
            RsMod("slcode") = Trim(Txtfields(1).Text)
        End If
        If Txtisstype.Text = "T" Then
            RsMod("Rdivcode") = Trim(Txtfields(1).Text)
        End If
        

            RsMod.UpdateBatch adAffectAllChapters

 
            ILotNo = 4
            ILotdt = 5
            ilottype = 6
            Ivarcode = 7
            icolorcode = 8
            icategory = 9
            
            opt1 = Opt
            Opt = ""
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
                 If (adoSecondaryRS("Lot No") = "") Then
                     adoSecondaryRS.Delete adAffectCurrent
                 End If
                 adoSecondaryRS.MoveNext
            Loop
            adoSecondaryRS.MoveFirst

Set RSMODS = New Recordset
RSMODS.Open "select Divcode , ISSTYPE, docNo, DOCDT, catcd, LOTNO, LOTDT, baleno, issKgs, LotType, MODUSERID, MODUSRID, ACTISSKGS, ISSUED, arrdt, varcode from rm_issb where 1=2", DB, adOpenStatic, adLockBatchOptimistic

       Opt = ""
       adoSecondaryRS.MoveFirst
       Do While Not adoSecondaryRS.EOF
       
        
               
           RSMODS.AddNew
           RSMODS("docdT") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
           
'           If DB.State = adStateOpen Then
'                DB.Close
'                Set DB = New Connection
'            End If
           DB.CommandTimeout = 1000
           Set rsa = New Recordset
           rsa.Open "SELECT ARRDT FROM RM_LOT WHERE LOTNO='" & grdDataGrid.Columns(ILotNo).Text & "' AND LOTDT='" & Format(grdDataGrid.Columns(ILotdt), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
           If rsa.RecordCount > 0 Then
              RSMODS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
           End If

           RSMODS("DIVCODE") = Divcode
           RSMODS("ISSTYPE") = Left(Combo1.Text, 2)
           RSMODS("DOCNO") = RsMod("docno")
           RSMODS("DOCDT") = RsMod("docdt")
           RSMODS("CATCD") = adoSecondaryRS("category")
           RSMODS("LOTNO") = adoSecondaryRS("Lot No")
           RSMODS("lotdt") = adoSecondaryRS("Lot Date")
           RSMODS("BALENO") = adoSecondaryRS("Bale No.")
           RSMODS("ISSKGS") = adoSecondaryRS("AiKgs")
           RSMODS("LOTTYPE") = adoSecondaryRS("lot type")
           RSMODS("MODUSERID") = usrid
           RSMODS("ACTISSKGS") = adoSecondaryRS("Issued Kgs")
           RSMODS("ISSUED") = adoSecondaryRS("issued")
           RSMODS("VARCODE") = adoSecondaryRS("variety")

           adoSecondaryRS.MoveNext
      Loop
      adoSecondaryRS.MoveFirst
      If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
      
      ''adoSecondaryRS.UpdateBatch adAffectAllChapters
      RSMODS.UpdateBatch adAffectAllChapters
      

         
      If Txtisstype.Text = "T" Or Txtisstype.Text = "S" Or Txtisstype.Text = "J" Or Txtisstype.Text = "R" Then
            DB.Execute "UPDATE RM_ISSH SET VEHICLENO='" & Txtfields(7).Text & "' WHERE DOCNO='" & RsMod("DOCNO") & "' AND DOCDT='" & Format(RsMod("DOCDT"), "YYYY-MM-DD") & "' and divcode='" & Divcode & "'"
      End If
      If Txtisstype.Text = "P" Then
'      Dim strQ As String
    DB.CommandTimeout = 1000
        strq = "UPDATE RM_ISSH SET Mixgrp='" & Trim(Txtfields(8).Text) & "',cntcd='" & Txtfields(1).Text & "' WHERE divcode='" & Divcode & "' and  DOCNO='" & RsMod("DOCNO") & "' AND DOCDT='" & Format(RsMod("DOCDT"), "YYYY-MM-DD") & "'"
            DB.Execute strq
          
      ElseIf Txtisstype.Text = "B" Or Txtisstype.Text = "T" Then
            If Option5.value = True Then
                Cap = "Form XX"
            ElseIf Option6.value = True Then
                Cap = "Form XXVII"
            Else
                Cap = "No"
            End If
            If IsDate(Format(MaskEdBox1(1).Text, "YYYY-MM-DD")) = True Then
                Invdt = Format(MaskEdBox1(1).Text, "YYYY-MM-DD")
            Else
                Invdt = Null
            End If
            DB.Execute "UPDATE RM_ISSH SET CNTCD=NULL,ORDNO=NULL,Formno='" & Text16.Text & "',invoiceno='" & Txtfields(9).Text & "',invdate='" & Invdt & "',Driver='" & Txtfields(13).Text & "',TimeOut='" & Txtfields(10).Text & "',Form='" & Cap & "',VEHICLENO='" & Txtfields(7).Text & "',rdivcode='" & Txtfields(1).Text & "' WHERE DOCNO='" & RsMod("DOCNO") & "' AND DOCDT='" & Format(RsMod("DOCDT"), "YYYY-MM-DD") & "' AND DIVCODE ='" & Divcode & "'"
      ElseIf Txtisstype.Text = "S" Or Txtisstype.Text = "J" Or Txtisstype.Text = "R" Then
            DB.Execute "UPDATE RM_ISSH SET CNTCD=NULL,ORDNO=NULL,VEHICLENO='" & Txtfields(7).Text & "',slcode='" & Txtfields(1).Text & "', invoiceno='" & Txtfields(9).Text & "',invdate='" & Invdt & "',Driver='" & Txtfields(13).Text & "',TimeOut='" & Txtfields(10).Text & "',Form='" & Cap & "' WHERE DOCNO='" & RsMod("DOCNO") & "' AND DOCDT='" & Format(RsMod("DOCDT"), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
      End If
     '*********************  BALE UPDATION **************************/
       If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
       
       Do While Not adoSecondaryRS.EOF
        Set balers = New Recordset
        balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lot type") & "'  and lotdt='" & Format(adoSecondaryRS("lot date"), "yyyy-mm-dd") & "' and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno=" & adoSecondaryRS("BALE NO.") & " and isnull(rejflg,'N')='N'  and divcode='" & Divcode & "' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
        Set rs1 = New Recordset
        rs1.Open "select ISNULL(isqty,0) from rm_bale  where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lot type") & "'  and lotdt='" & Format(adoSecondaryRS("lot date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALE NO.") & "  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        If rs1.RecordCount > 0 Then
            If adoSecondaryRS("Issued Kgs") <> Empty Then
                If adoSecondaryRS!issued = "N" Then
                    DB.Execute ("update rm_bale set isqty= isnull(isqty,0)+" & val(adoSecondaryRS("aiKgs")) & ",ActIssKgs=isnull(ActIssKgs,0) + " & val(adoSecondaryRS("Issued Kgs")) & ",ISSUED= '" & adoSecondaryRS!issued & "'  where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lot type") & "' and lotdt='" & Format(adoSecondaryRS("lot date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALE NO.") & "  and divcode='" & Divcode & "' and isnull(rejflg,'N')='N'")
                    DB.Execute ("update rm_bale set iSSUED= 'Y'  where NETWT=ISNULL(ACTISSKGS,0) AND STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lot type") & "' and lotdt='" & Format(adoSecondaryRS("lot date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALE NO.") & "  and divcode='" & Divcode & "' and isnull(rejflg,'N')='N'")
                Else
                    DB.Execute ("update rm_bale set isqty=isnull(isqty,0)+ " & val(adoSecondaryRS("AIKgs")) & ",ActIssKgs= isnull(ActIssKgs,0) + " & val(adoSecondaryRS("Issued Kgs")) & ",ISSUED= 'Y'  where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lot type") & "' and lotdt='" & Format(adoSecondaryRS("lot date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALE NO.") & " and divcode='" & Divcode & "' and isnull(rejflg,'N')='N'")
                End If
                
                If adoSecondaryRS!issued = "N" Then
                    DB.Execute ("update rm_lot set isswt=isnull(isswt,0) + " & val(adoSecondaryRS("Issued Kgs")) & ",issbal=isnull(issbal,0) where lotno='" & adoSecondaryRS("Lot No") & "' and lotdt='" & Format(adoSecondaryRS("lot date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lot type") & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'")
                Else
                    DB.Execute ("update rm_lot set isswt=isnull(isswt,0) + " & val(adoSecondaryRS("Issued Kgs")) & ",issbal=isnull(issbal,0)+ " & 1 & " where divcode='" & Divcode & "' and lotno='" & adoSecondaryRS("Lot No") & "' and lotdt='" & Format(adoSecondaryRS("lot date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lot type") & "'  and lotyear='" & Year(yfdate) & "'")
                End If
            Else
                DB.Execute ("update rm_bale set isqty=isnull(isqty,0)+" & val(adoSecondaryRS("aikgs")) & ",ActIssKgs=" & val(adoSecondaryRS("Issued Kgs")) & ",ISSUED= 'Y'  where STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALE NO.") & " and divcode='" & Divcode & "' and isnull(rejflg,'N')='N'")
                DB.Execute ("update rm_lot set isswt=isnull(isswt,0) + " & val(adoSecondaryRS("Issued Kgs")) & ",issbal=isnull(issbal,0)+ " & 1 & " where lotno='" & adoSecondaryRS("Lot No") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "'")
            End If
        End If
        adoSecondaryRS.MoveNext
       Loop
  
       Dim CountBale As Long
       '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~''''' Mixing Stock Updation

       If Txtisstype.Text = "P" Then
               Set rsg = New Recordset
               '''rsg.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2 order by a.lotno,a.lotdt,a.varcode", db, adOpenStatic
               rsg.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
               lotnos = 0
               LOTDT = 0
               Sum = 0
               CountBale = 0
               Set rsg.DataSource = adoSecondaryRS
               While Not rsg.EOF
                    Set RSKG = New Recordset
                    RSKG.Open "select ratekg  from rm_lot where lotno=" & rsg("Lot No") & " AND lotdt='" & Format(adoSecondaryRS("lot DATE"), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        
                    If RSKG.RecordCount > 0 Then
                        ratekg = RSKG(0)
                    Else
                        ratekg = 0
                    End If

                    If lotnos <> rsg("Lot No") Then
                        DB.Execute "INSERT INTO RM_MixingSTOCK (issno,issdt,catcd,lotno,lotdt,varcode,ratekg,mixkgs,mixbales,ISSTYPE,DIVCODE) VALUES ( " & RsMod("DOCNO") & ",'" & Format(RsMod("DOCDT"), "YYYY-MM-DD") & "','" & rsg("category") & "'," & rsg("Lot No") & ",'" & Format(rsg("lot Date"), "YYYY-MM-DD") & "','" & rsg("Variety") & "'," & ratekg & ",0,0,'" & Left(Combo1.Text, 2) & "','" & Divcode & "' )"
                    End If
                    Sum = Sum + rsg("ISSUED KGS")
                    CountBale = CountBale + 1
                    lotnos = rsg("Lot No")
                    LOTDT = rsg("lot Date")
                   
                    rsg.MoveNext
        
                    If Not rsg.EOF Then
                        If lotnos <> rsg("Lot No") Then
                            DB.Execute "update rm_Mixingstock set DIVCODE='" & Divcode & "',isskgs=" & Sum & ",issbale=" & CountBale & " WHERE ISSNO=" & RsMod("DOCNO") & "AND ISSDT='" & Format(RsMod("DOCDT"), "YYYY-MM-DD") & "' AND LOTNO=" & lotnos & " AND LOTDT='" & Format(LOTDT, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
                            Sum = 0
                            CountBale = 0
                        End If
                    Else
                        DB.Execute "update rm_Mixingstock set DIVCODE='" & Divcode & "',isskgs=" & Sum & ",issbale=" & CountBale & " WHERE ISSNO=" & RsMod("DOCNO") & "AND ISSDT='" & Format(RsMod("DOCDT"), "YYYY-MM-DD") & "' AND LOTNO=" & lotnos & " AND LOTDT='" & Format(LOTDT, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
                    End If
               Wend
               DB.Execute "Update rm_lot set issbal=x.bal from (select count(Baleno)BAL,A.LOTNO,A.LOTDT,A.CATCD,A.LOTTYPE,B.LOTYEAR,B.DIVCODE FROM RM_BALE A,RM_LOT B Where B.LOTYEAR='" & Year(yfdate) & "' AND a.lotno = b.lotno And a.Lotdt = b.Lotdt And a.Catcd = b.Catcd And a.LOTTYPE = b.LOTTYPE AND A.DIVCODE=B.DIVCODE AND ISNULL(ISSUED,'N')='Y' AND A.DIVCODE='" & Divcode & "' GROUP BY A.LOTNO,A.LOTDT,A.CATCD,A.LOTTYPE,B.LOTYEAR,B.DIVCODE)X,RM_LOT Y Where X.DIVCODE='" & Divcode & "' AND x.lotno = Y.lotno And x.Lotdt = Y.Lotdt And x.Catcd = Y.Catcd And x.LOTTYPE = Y.LOTTYPE AND  Y.LOTYEAR='" & Year(yfdate) & "'"
               DB.Execute "Update rm_lot set issWT=x.WT from (select SUM(A.ACTISSKGS)WT,A.LOTNO,A.LOTDT,A.CATCD,A.LOTTYPE,B.LOTYEAR,B.DIVCODE FROM RM_BALE A,RM_LOT B Where B.LOTYEAR='" & Year(yfdate) & "' AND a.lotno = b.lotno And a.Lotdt = b.Lotdt And a.Catcd = b.Catcd And a.LOTTYPE = b.LOTTYPE AND A.DIVCODE=B.DIVCODE AND A.DIVCODE='" & Divcode & "' GROUP BY A.LOTNO,A.LOTDT,A.CATCD,A.LOTTYPE,B.LOTYEAR,B.DIVCODE)X,RM_LOT Y Where X.DIVCODE='" & Divcode & "' AND x.lotno = Y.lotno And x.Lotdt = Y.Lotdt And x.Catcd = Y.Catcd And x.LOTTYPE = Y.LOTTYPE AND  Y.LOTYEAR='" & Year(yfdate) & "'"
               'Opt = opt1
       End If

Exit Sub
modification_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure modification of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub SetTag(Spd As fpSpread, ByVal sValue As String, ByVal iCOL As Integer, ByVal irow As Integer)
On Error GoTo SetTag_Error
   With Spd
        .Col = iCOL: .Row = irow: .CellTag = sValue
   End With
Exit Sub
SetTag_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure SetTag of Module Module1"
End Sub
Public Sub SetSpreadCol(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal CellType As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal isLock As Boolean = True)
On Error GoTo SetSpreadCol_Error
    With Spd
        .Col = Col
        .Row = -1: .CellType = CellType
        If iColWth <> 0 Then .ColWidth(Col) = iColWth
        If HideCol = True Then
          .ColHidden = True
        Else
          .ColHidden = False
        End If
        .Protect = True
        If isLock = True Then .Lock = True Else .Lock = False
        If CellType = CellTypeNumber And DecWth > 0 Then .TypeNumberDecPlaces = DecWth
        .ColHeaderRows = 1
        .SetText Col, 0, head
    End With
Exit Sub
SetSpreadCol_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure SetSpreadCol of Module RMIMod"
End Sub

Private Sub SetGridHead()
On Error GoTo SetGridHead_Error

    With SpdBales
        .MaxRows = 0
        .MaxCols = 6
        .ColHeadersAutoText = DispBlank
        .CellNoteIndicator = CellNoteIndicatorShowAndFireEvent
        SetSpreadCol SpdBales, E_SpdBal.SprdCheck, "", CellTypeCheckBox, 2, , , True
        SetSpreadCol SpdBales, E_SpdBal.sprdBaleNo, "Bale No", CellTypeStaticText, 7
        SetSpreadCol SpdBales, E_SpdBal.sprdGrossWt, "Gross Wt", CellTypeStaticText, 7
        SetSpreadCol SpdBales, E_SpdBal.sprdTareWt, "Tare Wt", CellTypeStaticText, 7
        SetSpreadCol SpdBales, E_SpdBal.sprdBalanceWt, "Balance Wt", CellTypeStaticText, 7
        SetSpreadCol SpdBales, E_SpdBal.SprdPartyBaleNo, "Party Bale No", CellTypeStaticText, 7
       .RowHeadersShow = False
    End With

Exit Sub
SetGridHead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure SetGridHead of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub ToNumberwithDecimal(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer, Optional dlen As Integer)
    If dlen <> 0 Then
        If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or KeyAscii = 45 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
        'to allow numbers,decimal pt and backspace
        Else
            KeyAscii = 0
            Beep
        End If
    Else
        If KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
        'nOT to allow numbers,decimal pt and backspace
        Else
            KeyAscii = 0
            Beep
        End If
    End If
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    Beep
    KeyAscii = 0
    End If
'    If Not (InStr(Obj, ".") = 0) And Len(Obj) - InStr(Obj, ".") = dlen And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
'         KeyAscii = 0
'         Beep
'    End If
'    If Len(Obj) = maxlen And KeyAscii <> 46 And (InStr(Obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
'        KeyAscii = 0
'        Beep
'    End If
End Sub

