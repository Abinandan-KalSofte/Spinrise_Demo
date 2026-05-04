VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form FrmLotHist 
   Caption         =   "Lot History"
   ClientHeight    =   8310
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   13920
   ForeColor       =   &H80000005&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8310
   ScaleWidth      =   13920
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command5 
      Caption         =   "Select Lot"
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
      Left            =   5445
      TabIndex        =   3
      Top             =   8145
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
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
      Left            =   6840
      TabIndex        =   2
      Top             =   8145
      Width           =   1095
   End
   Begin VB.Frame Frame7 
      Height          =   700
      Left            =   0
      TabIndex        =   9
      Top             =   -90
      Visible         =   0   'False
      Width           =   5040
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILothist.frx":0000
         Height          =   550
         Index           =   10
         Left            =   525
         Picture         =   "RMILothist.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Cancel "
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   11
         Left            =   1050
         Picture         =   "RMILothist.frx":0686
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   555
         Index           =   3
         Left            =   10
         Picture         =   "RMILothist.frx":0AD0
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "List"
         Top             =   135
         Width           =   510
      End
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
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
         Left            =   3675
         TabIndex        =   13
         Top             =   255
         Width           =   630
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
         Left            =   1980
         TabIndex        =   12
         Top             =   255
         Width           =   600
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6825
      Left            =   360
      TabIndex        =   15
      Top             =   1125
      Width           =   10980
      _ExtentX        =   19368
      _ExtentY        =   12039
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "Lot Details"
      TabPicture(0)   =   "RMILothist.frx":0DDA
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame3"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame2"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Frame4"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).ControlCount=   4
      TabCaption(1)   =   "Quality Param"
      TabPicture(1)   =   "RMILothist.frx":0DF6
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame5"
      Tab(1).ControlCount=   1
      Begin VB.Frame Frame5 
         Height          =   4050
         Left            =   -74790
         TabIndex        =   73
         Top             =   435
         Width           =   10545
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   72
            Left            =   5490
            MaxLength       =   7
            TabIndex        =   101
            Top             =   1965
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   154
            Left            =   5490
            MaxLength       =   7
            TabIndex        =   100
            Top             =   2640
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   98
            Left            =   1905
            MaxLength       =   6
            TabIndex        =   99
            Top             =   3000
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   97
            Left            =   8880
            MaxLength       =   7
            TabIndex        =   98
            Top             =   2670
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   96
            Left            =   1905
            MaxLength       =   7
            TabIndex        =   97
            Top             =   3360
            Visible         =   0   'False
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   95
            Left            =   5490
            MaxLength       =   5
            TabIndex        =   96
            Top             =   3330
            Visible         =   0   'False
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   94
            Left            =   8880
            MaxLength       =   7
            TabIndex        =   95
            Top             =   2310
            Visible         =   0   'False
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   90
            Left            =   1905
            MaxLength       =   7
            TabIndex        =   94
            Top             =   2655
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   85
            Left            =   1905
            MaxLength       =   7
            TabIndex        =   93
            Top             =   2295
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   84
            Left            =   8880
            MaxLength       =   7
            TabIndex        =   92
            Top             =   1965
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   43
            Left            =   2040
            MaxLength       =   7
            TabIndex        =   91
            Top             =   1470
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   65
            Left            =   8880
            MaxLength       =   7
            TabIndex        =   90
            Top             =   780
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   48
            Left            =   2040
            MaxLength       =   7
            TabIndex        =   89
            Top             =   120
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   49
            Left            =   5490
            MaxLength       =   7
            TabIndex        =   88
            Top             =   120
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   92
            Left            =   1890
            MaxLength       =   7
            TabIndex        =   87
            Top             =   1965
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   54
            Left            =   8880
            MaxLength       =   5
            TabIndex        =   86
            Top             =   450
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   27
            Left            =   2040
            MaxLength       =   7
            TabIndex        =   85
            Top             =   450
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   26
            Left            =   5490
            MaxLength       =   5
            TabIndex        =   84
            Top             =   450
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   63
            Left            =   8880
            MaxLength       =   7
            TabIndex        =   83
            Top             =   1125
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   66
            Left            =   2040
            MaxLength       =   7
            TabIndex        =   82
            Top             =   1125
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   42
            Left            =   2040
            MaxLength       =   7
            TabIndex        =   81
            Top             =   780
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   64
            Left            =   5490
            MaxLength       =   7
            TabIndex        =   80
            Top             =   1125
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   61
            Left            =   5490
            MaxLength       =   7
            TabIndex        =   79
            Top             =   2970
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
            BackColor       =   &H00FFFFFF&
            DataField       =   "remarks"
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   25
            Left            =   1905
            MaxLength       =   25
            TabIndex        =   78
            Top             =   3690
            Width           =   8295
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   99
            Left            =   1905
            MaxLength       =   5
            TabIndex        =   77
            Top             =   3345
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   47
            Left            =   8880
            MaxLength       =   7
            TabIndex        =   76
            Top             =   120
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   62
            Left            =   5490
            MaxLength       =   7
            TabIndex        =   75
            Top             =   780
            Width           =   1300
         End
         Begin VB.TextBox TxtQualiFlds 
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   134
            Left            =   5505
            MaxLength       =   5
            TabIndex        =   74
            Top             =   2280
            Width           =   1300
         End
         Begin VB.Line Line2 
            X1              =   30
            X2              =   10530
            Y1              =   1890
            Y2              =   1890
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Maturity Coefficient % (MR)"
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   6
            Left            =   120
            TabIndex        =   129
            Top             =   1470
            Width           =   1905
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Maturity Coefficient % (MR)"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   4
            Left            =   3360
            TabIndex        =   128
            Top             =   2760
            Width           =   1905
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "SCN CV"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   34
            Left            =   105
            TabIndex        =   127
            Top             =   3043
            Width           =   585
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Nep CV"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   33
            Left            =   7020
            TabIndex        =   126
            Top             =   2745
            Width           =   555
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "UI"
            Height          =   195
            Index           =   32
            Left            =   120
            TabIndex        =   125
            Top             =   3405
            Visible         =   0   'False
            Width           =   165
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "ML"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   30
            Left            =   3360
            TabIndex        =   124
            Top             =   3405
            Visible         =   0   'False
            Width           =   225
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "UHML"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   2
            Left            =   7020
            TabIndex        =   123
            Top             =   2415
            Visible         =   0   'False
            Width           =   465
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "IFC"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   29
            Left            =   105
            TabIndex        =   122
            Top             =   2698
            Width           =   240
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "UQL(W)"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   24
            Left            =   105
            TabIndex        =   121
            Top             =   2338
            Width           =   585
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "SFC(W)"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   23
            Left            =   7020
            TabIndex        =   120
            Top             =   2055
            Width           =   555
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "SCN/GM"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   14
            Left            =   3360
            TabIndex        =   119
            Top             =   2008
            Width           =   660
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "+b"
            Height          =   195
            Index           =   5
            Left            =   7020
            TabIndex        =   118
            Top             =   1178
            Width           =   180
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "S.F.I."
            Height          =   195
            Index           =   7
            Left            =   7020
            TabIndex        =   117
            Top             =   833
            Width           =   375
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Elongation"
            Height          =   195
            Index           =   8
            Left            =   120
            TabIndex        =   116
            Top             =   1200
            Width           =   750
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Moisture Content"
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   115
            Top             =   855
            Width           =   1200
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Neps/Gm"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   31
            Left            =   105
            TabIndex        =   114
            Top             =   2008
            Width           =   690
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "F.Q.I."
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   3
            Left            =   3360
            TabIndex        =   113
            Top             =   3090
            Width           =   390
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Micronaire (µ/gram)"
            Height          =   195
            Index           =   7
            Left            =   3405
            TabIndex        =   112
            Top             =   503
            Width           =   1380
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "RD"
            Height          =   195
            Index           =   6
            Left            =   3405
            TabIndex        =   111
            Top             =   1178
            Width           =   240
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Remarks"
            ForeColor       =   &H80000001&
            Height          =   195
            Left            =   105
            TabIndex        =   110
            Top             =   3733
            Width           =   630
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Trash %"
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   109
            Top             =   600
            Width           =   570
         End
         Begin VB.Label Label37 
            Caption         =   "2.5 % Span Length(MM) (UHML)"
            Height          =   465
            Left            =   120
            TabIndex        =   108
            Top             =   120
            Width           =   1935
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "50 % Span Length (MM) (ML)"
            Height          =   195
            Index           =   3
            Left            =   3405
            TabIndex        =   107
            Top             =   120
            Width           =   2070
         End
         Begin VB.Label Label41 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Strength (G.Tex)"
            Height          =   195
            Left            =   7020
            TabIndex        =   106
            Top             =   503
            Width           =   1170
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Short Fibre"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   35
            Left            =   105
            TabIndex        =   105
            Top             =   3388
            Width           =   765
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Uniformity  Ratio (UI)"
            Height          =   195
            Index           =   0
            Left            =   7020
            TabIndex        =   104
            Top             =   165
            Width           =   1455
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "S.C.I."
            Height          =   195
            Index           =   4
            Left            =   3405
            TabIndex        =   103
            Top             =   833
            Width           =   390
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "5% Span Length"
            ForeColor       =   &H80000001&
            Height          =   195
            Index           =   54
            Left            =   3360
            TabIndex        =   102
            Top             =   2323
            Width           =   1170
         End
      End
      Begin VB.Frame Frame4 
         Height          =   930
         Left            =   9540
         TabIndex        =   16
         Top             =   3000
         Visible         =   0   'False
         Width           =   3255
         Begin VB.TextBox txtlotno 
            Height          =   345
            Left            =   1335
            TabIndex        =   1
            Top             =   330
            Width           =   1680
         End
         Begin VB.Label Label29 
            Caption         =   "Lot No."
            Height          =   240
            Left            =   585
            TabIndex        =   17
            Top             =   360
            Width           =   705
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Stock Details "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2535
         Left            =   255
         TabIndex        =   52
         Top             =   2865
         Width           =   9180
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   24
            Left            =   7290
            TabIndex        =   72
            Top             =   1470
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   19
            Left            =   2970
            TabIndex        =   60
            Top             =   1110
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   18
            Left            =   7305
            TabIndex        =   59
            Top             =   1065
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   17
            Left            =   2970
            TabIndex        =   58
            Top             =   750
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   16
            Left            =   7305
            TabIndex        =   57
            Top             =   660
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   15
            Left            =   7305
            TabIndex        =   56
            Top             =   300
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   14
            Left            =   2970
            TabIndex        =   55
            Top             =   360
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   7
            Left            =   2955
            TabIndex        =   54
            Top             =   1920
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   23
            Left            =   2955
            TabIndex        =   53
            Top             =   1500
            Width           =   1530
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Issued Qty. in Bales/Borah"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   180
            TabIndex        =   71
            Top             =   1110
            Width           =   2355
         End
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            Caption         =   "Issued Qty. in Kgs."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   5265
            TabIndex        =   70
            Top             =   1125
            Width           =   1620
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "Rejected Qty. in Kgs."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   5265
            TabIndex        =   69
            Top             =   705
            Width           =   1845
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "Rejected Qty. in Bales/Borah"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   180
            TabIndex        =   68
            Top             =   735
            Width           =   2580
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Received Qty. in Kgs."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   5265
            TabIndex        =   67
            Top             =   345
            Width           =   1905
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Received Qty. in Bales/Borah"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   180
            TabIndex        =   66
            Top             =   345
            Width           =   2640
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Closing Stock in Bales / Borah"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Index           =   0
            Left            =   150
            TabIndex        =   65
            Top             =   1920
            Width           =   2685
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Closing Stock in Kgs."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   5265
            TabIndex        =   64
            Top             =   1920
            Width           =   1860
         End
         Begin VB.Label lblqty 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            BorderStyle     =   1  'Fixed Single
            Caption         =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Left            =   7305
            TabIndex        =   63
            Top             =   1860
            Width           =   1485
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Transfer Qty. in Bales / Borah"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Index           =   1
            Left            =   150
            TabIndex        =   62
            Top             =   1485
            Width           =   2595
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "Transfer Qty. in Kgs."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   5265
            TabIndex        =   61
            Top             =   1530
            Width           =   1770
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Issue Details"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   240
         TabIndex        =   18
         Top             =   5430
         Width           =   9165
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   6
            Left            =   5370
            TabIndex        =   21
            Top             =   210
            Width           =   3525
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   20
            Left            =   2085
            TabIndex        =   20
            Top             =   225
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   21
            Left            =   2085
            TabIndex        =   19
            Top             =   645
            Width           =   1530
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   4050
            TabIndex        =   24
            Top             =   240
            Width           =   1170
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Issue Start Date"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   210
            TabIndex        =   23
            Top             =   300
            Width           =   1410
         End
         Begin VB.Label Label27 
            AutoSize        =   -1  'True
            Caption         =   "Last Issue Date"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   210
            TabIndex        =   22
            Top             =   690
            Width           =   1380
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Purchase Details"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2490
         Left            =   255
         TabIndex        =   25
         Top             =   330
         Width           =   9195
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   8
            Left            =   2055
            TabIndex        =   38
            Top             =   570
            Width           =   1500
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   5
            Left            =   2055
            TabIndex        =   37
            Top             =   930
            Width           =   3735
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   2
            Left            =   7455
            TabIndex        =   36
            Top             =   225
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   3
            Left            =   4590
            TabIndex        =   35
            Top             =   585
            Width           =   1185
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   4
            Left            =   7470
            TabIndex        =   34
            Top             =   577
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   0
            Left            =   2055
            TabIndex        =   33
            Top             =   225
            Width           =   1485
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000014&
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   1
            Left            =   4590
            TabIndex        =   32
            Top             =   195
            Width           =   1155
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   9
            Left            =   2055
            TabIndex        =   31
            Top             =   1290
            Width           =   3735
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   10
            Left            =   2055
            TabIndex        =   30
            Top             =   1650
            Width           =   3735
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   11
            Left            =   7470
            TabIndex        =   29
            Top             =   930
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   12
            Left            =   7470
            TabIndex        =   28
            Top             =   1290
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   13
            Left            =   7470
            TabIndex        =   27
            Top             =   1665
            Width           =   1530
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000014&
            DataField       =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   330
            Index           =   22
            Left            =   2055
            TabIndex        =   26
            Top             =   2025
            Width           =   3750
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Lot Type"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Index           =   1
            Left            =   195
            TabIndex        =   51
            Top             =   645
            Width           =   795
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Lot Date"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Index           =   0
            Left            =   5865
            TabIndex        =   50
            Top             =   260
            Width           =   750
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   195
            TabIndex        =   49
            Top             =   975
            Width           =   630
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Bill Date "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   5865
            TabIndex        =   48
            Top             =   645
            Width           =   795
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Bill No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   3720
            TabIndex        =   47
            Top             =   640
            Width           =   630
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Lot No"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Index           =   0
            Left            =   3735
            TabIndex        =   46
            Top             =   265
            Width           =   585
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   195
            TabIndex        =   45
            Top             =   300
            Width           =   825
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Supplier Name"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Index           =   0
            Left            =   195
            TabIndex        =   44
            Top             =   1305
            Width           =   1350
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Broker Name"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Index           =   0
            Left            =   210
            TabIndex        =   43
            Top             =   1695
            Width           =   1200
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Supplier Lot No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   5865
            TabIndex        =   42
            Top             =   990
            Width           =   1425
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Allowance in Kgs."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   5865
            TabIndex        =   41
            Top             =   1350
            Width           =   1560
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Type"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   5865
            TabIndex        =   40
            Top             =   1710
            Width           =   1290
         End
         Begin VB.Label Label28 
            AutoSize        =   -1  'True
            Caption         =   "Station"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   240
            Left            =   210
            TabIndex        =   39
            Top             =   2055
            Width           =   615
         End
      End
   End
   Begin VB.Frame Frame6 
      Height          =   4980
      Left            =   3195
      TabIndex        =   4
      Top             =   1800
      Visible         =   0   'False
      Width           =   7845
      Begin VB.CommandButton Command4 
         Caption         =   "&Cancel"
         Height          =   390
         Left            =   4260
         TabIndex        =   8
         Top             =   4455
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Height          =   390
         Left            =   3060
         TabIndex        =   7
         Top             =   4455
         Width           =   975
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3660
         Left            =   270
         TabIndex        =   5
         Top             =   600
         Visible         =   0   'False
         Width           =   7410
         _ExtentX        =   13070
         _ExtentY        =   6456
         _Version        =   393216
         BackColor       =   16777152
         ForeColor       =   8388608
         HeadLines       =   1
         RowHeight       =   19
         TabAction       =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
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
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3000
         TabIndex        =   6
         Top             =   240
         Width           =   2130
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lot History"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   360
      Left            =   450
      TabIndex        =   0
      Top             =   690
      Width           =   1530
   End
End
Attribute VB_Name = "FrmLotHist"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim adoSecondaryRS1 As Recordset
Dim DB As Connection
Dim opt As String
Dim deltype As String
Dim RW As Double
Dim FLGREPET As Boolean
Dim GRP As String
Dim rpt As String
Dim Fnd As String
Dim oldsecno As Integer
Dim oldsecval  As Double
Dim st1 As String, st2 As String
Dim ITARY() As String
Dim Rs As Recordset
Dim taxc As String
Dim lookupdt As String
Dim tax As Double, EXC As Double, SED As Double, sur As Double, dis As Double, modvat As Double

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Select Case Index
Case 3
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'Browsing
    opt = " "
    Call query_mode
    BUTTON(3).Enabled = True
    BUTTON(10).Enabled = True
    BUTTON(11).Enabled = True
    Screen.MousePointer = 0
    
Case 10
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    opt = " "
    Screen.MousePointer = 0
    Call query_mode
    BUTTON(3).Enabled = True
    BUTTON(10).Enabled = True
    BUTTON(11).Enabled = True
    
    
Case 11
    'EXIT
    Unload Me
End Select
Exit Sub
'er1:
'If Err = -2147467259 Then
'     MsgBox Err.description, vbInformation, head
'Else
'     MsgBox Err.description, vbInformation, head
'End If

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click", vbInformation, head
End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Frame2.Visible = False
Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub query_mode()
On Error Resume Next
 If opt = " " Then
    Frame1.Visible = False
    Frame2.Visible = False
    Frame3.Visible = False
    Frame6.Visible = True
    Frame6.ZOrder
    'DataGrid1.Visible = True
    Set adoPrimaryRS = New Recordset
    'adoprimaryrs.Open "select catcd ""Category Code"",lotno ""Lot No."",lotdt ""Date"",lottype ""Lot Type""  from rm_lot where divcode = '" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    'Ravi
    adoPrimaryRS.Open "select catcd ""Category"",lotno ""     Lot No."",lotdt "" Lot Date"",lottype ""Lot Type"",Varcode,Billdt,cntcode,bales,opflg  from rm_lot where divcode = '" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lotno='" & txtlotno & "' and lotdt = '" & lookupdt & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    If adoPrimaryRS.BOF Then
       MsgBox "No Records Found", vbInformation, head
       Exit Sub
    Else
       Set DataGrid1.DataSource = adoPrimaryRS
       DataGrid1.Columns(0).Text = adoPrimaryRS(0)
       DataGrid1.Columns(1).Text = adoPrimaryRS(1)
       DataGrid1.Columns(2).Text = adoPrimaryRS(2)
       DataGrid1.Columns(3).Text = adoPrimaryRS(3)
       DataGrid1.Columns(0).Width = 1360.284
       DataGrid1.Columns(1).Width = 1114.835
       DataGrid1.Columns(2).Width = 1234.929
       DataGrid1.Columns(3).Width = 1080
       DataGrid1.Columns(1).Alignment = dbgRight
       DataGrid1.Columns(4).Visible = False
       DataGrid1.Columns(5).Visible = False
       DataGrid1.Columns(6).Visible = False
       DataGrid1.Columns(7).Visible = False
       DataGrid1.Columns(8).Visible = False
    End If
    For i = 0 To 7
        DataGrid1.Columns(i).Locked = True
    Next
    Frame6.Visible = True
    LookUp.clear = True
    Frame6.ZOrder
 End If
    End Sub

Private Sub Command1_Click()
'Frame1.Visible = False
'Frame2.Visible = False
'Frame6.Visible = False
'Frame4.Visible = True
'Frame3.Visible = False
'txtlotno.Text = ""
'txtlotno.SetFocus
On Error GoTo Command1_Click_Error

Frame2.Visible = False
Unload Me

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error Resume Next
If opt = " " Then
'         Frame3.Visible = False
'         Frame4.Visible = False
'         Frame6.Visible = False
         
         TXTFIELDS(0).Text = DataGrid1.Columns(0).Text 'Category Code
         TXTFIELDS(1).Text = DataGrid1.Columns(1).Text 'Lot No.
         TXTFIELDS(2).Text = DataGrid1.Columns(2).Text 'Date
         If UCase(DataGrid1.Columns(3).Text) = "T" Then
            TXTFIELDS(8).Text = "Transfer"       'Lot Type
         Else
            TXTFIELDS(8).Text = "Arrival"       'Lot Type
         End If
         'Ravi
         'txtfields(3).Text = DataGrid1.Columns(4).Text 'Variety
         'txtfields(6).Text = DataGrid1.Columns(6).Text 'Count
         'txtfields(7).Text = DataGrid1.Columns(7).Text 'Bales
         'txtfields(4).Text = DataGrid1.Columns(5).Text 'Bill date
        
        
        'select case when isnull(c.dlytype,'')='S' then 'Spot' when isnull(c.dlytype,'') in ('M','F') then 'FOR' else '' end as dlytype " & _

        Set adoSecondaryRS = New Recordset
        'adoSecondaryRS.Open "select distinct d.billno,d.billdt,b.varname,c.mixgrpname,(isnull(d.bales,0)-isnull(d.issbal,0)) from rm_var b,rm_lot d,rm_mixgrp c where b.varcode=d.varcode and d.lotno = '" & DataGrid1.Columns(1).Text & "' and d.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and d.catcd = '" & DataGrid1.Columns(0).Text & "' and d.cntcode*=c.mixgrpcd and d.divcode='" & Divcode & "'", DB, adOpenStatic
        adoSecondaryRS.Open " select a.billno, a.billdt, lotno, lotdt, varname, sl.slname as supname, isnull(br.slname,'') as brkname, areaname, plotno, isnull(allowance,0)" & _
                            " from rm_lot a ,fa_slmas sl, rm_area ar, fa_slmas br, " & _
                            " rm_var v where a.supcd*=sl.slcode and a.brkcd*=br.slcode and a.varcode=v.varcode and a.areacd=ar.areacode and a.lotdt='" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and a.lotno='" & DataGrid1.Columns(1).Text & "' and a.divcode='" & Divcode & "' and a.catcd = '" & DataGrid1.Columns(0).Text & "'", DB, adOpenStatic
                            
        If adoSecondaryRS(0).value = "" Then
             TXTFIELDS(3).Text = ""
        Else
            If IsNull(adoSecondaryRS(0)) Then
                TXTFIELDS(3).Text = " "
            Else
                TXTFIELDS(3).Text = adoSecondaryRS(0)
            End If
        End If
        If adoSecondaryRS(1).value = "" Then
             TXTFIELDS(4).Text = ""
        Else
             TXTFIELDS(4).Text = adoSecondaryRS(1)
        End If
        
        If adoSecondaryRS(4).value = "" Then
             TXTFIELDS(5).Text = ""
        Else
             TXTFIELDS(5).Text = IIf(IsNull(adoSecondaryRS(4)) = True, Empty, adoSecondaryRS(4))
           'End If
        End If
        
        If adoSecondaryRS(5).value = "" Then
             TXTFIELDS(9).Text = ""
        Else
             TXTFIELDS(9).Text = IIf(IsNull(adoSecondaryRS(5)) = True, Empty, adoSecondaryRS(5))
           'End If
        End If
        
        If adoSecondaryRS(6).value = "" Then
             TXTFIELDS(10).Text = ""
        Else
             TXTFIELDS(10).Text = IIf(IsNull(adoSecondaryRS(6)) = True, Empty, adoSecondaryRS(6))
           'End If
        End If
        
        If adoSecondaryRS(8).value = "" Then
             TXTFIELDS(11).Text = ""
        Else
             TXTFIELDS(11).Text = IIf(IsNull(adoSecondaryRS(8)) = True, Empty, adoSecondaryRS(8))
           'End If
        End If
        
        If adoSecondaryRS(7).value = "" Then
             TXTFIELDS(22).Text = ""
        Else
             TXTFIELDS(22).Text = IIf(IsNull(adoSecondaryRS(7)) = True, Empty, adoSecondaryRS(7))
           'End If
        End If
        
        
        If adoSecondaryRS(9).value = "" Then
             TXTFIELDS(12).Text = ""
        Else
             TXTFIELDS(12).Text = IIf(IsNull(adoSecondaryRS(9)) = True, Empty, Format(adoSecondaryRS(9), "#0.000"))
           'End If
        End If


        Set adoSecondaryRS = New Recordset
                
        adoSecondaryRS.Open " select case when isnull(c.dlytype,'')='S' then 'Spot' when isnull(c.dlytype,'') in ('M','F') then 'FOR' else '' end as dlytype" & _
        " from rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,fa_slmas f where a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
        " and a.supcd*=e.slcode and a.brkcd*=f.slcode and a.lotdt='" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and a.lotno='" & DataGrid1.Columns(1).Text & "' and a.divcode='" & Divcode & "' ", DB, adOpenStatic
        
        
        If adoSecondaryRS(0).value = "" Then
             TXTFIELDS(13).Text = ""
        Else
            TXTFIELDS(13).Text = IIf(IsNull(adoSecondaryRS(0)) = True, Empty, adoSecondaryRS(0))
        End If
        
        Set adoPrimaryRS = New Recordset
        
        
adoPrimaryRS.Open " select varcode,lotno,lotdt,sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs," & _
                       " sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales1,0)) issbales1,sum(isnull(issboras1,0)) issboras1, sum(isnull(isskgs1,0)) isskgs1,sum(isnull(issbales2,0)) issbales2,sum(isnull(issboras2,0)) issboras2, sum(isnull(isskgs2,0)) isskgs2,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from (select varcode,a.LOTNO,a.lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras,sum(isnull(a.reckgs,0)) reckgs," & _
                       " sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) totkgs,sum(isnull(a.issbales1,0)) issbales1,sum(isnull(a.issboras1,0)) issboras1,sum(isnull(a.isskgs1,0)) isskgs1,sum(isnull(a.issbales2,0)) issbales2,sum(isnull(a.issboras2,0)) issboras2,sum(isnull(a.isskgs2,0)) isskgs2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0))- sum(isnull(a.rejbales,0)))- sum(isnull(a.issbales1,0)) - sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0))else " & _
                       " sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) -  sum(isnull(a.issbales1,0))-sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0)) end  as clobales," & _
                       " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras1,0))-sum(isnull(a.issboras2,0)) else sum(isnull(a.recboras,0)) -  (sum(isnull(a.issboras1,0))- sum(isnull(a.issboras2,0))) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.rejkgs,0))- sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) -  sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0))- sum(isnull(a.trankgs,0))  end as clokgs from ((" & _
                       " select varcode,LOTNO,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from (" & _
                       " select B.varcode,b.LOTNO,B.lotdt,case when b.bblflg ='B' then SUM(Bales) else 0 end as opbales, case when b.bblflg   IN ('R','H') then SUM(Bales) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where   B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>'" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "') and (OPFLG='Y' or b.lotdt<'" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "') and b.lotno= '" & DataGrid1.Columns(1).Text & "'  and b.lotdt<'" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' group by B.varcode,b.LOTNO,b.lotdt,b.bblflg Union" & _
                       " select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.ISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "') and  b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' /*and '" & Format(pdate, "yyyy-mm-dd") & "'*/ and b.lotno= '" & DataGrid1.Columns(1).Text & "'  group by B.varcode,b.LOTNO,b.lotdt,b.bblflg  )a  group by varcode,LOTNO,lotdt Union All" & _
                       " select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then  sum(bales) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(bales) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b where b.lotdt between '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "') and b.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and b.lotno= '" & DataGrid1.Columns(1).Text & "'" & _
                       " AND b.LOTYEAR=(SELECT MIN(LOTYEAR) FROM RM_LOT WHERE lotdt between '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "') and b.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and b.lotno= '" & DataGrid1.Columns(1).Text & "') group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg Union All" & _
                       " select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B  where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "') and b.lotdt Between '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and b.lotno='" & DataGrid1.Columns(1).Text & "'   group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg Union All" & _
                       " select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales1,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras1,round((sum(isnull(C.ISSKGS,0))),3) as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 AS TRANBALES,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e,RM_ISSUETYPE G where  E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  " & _
                       " and  c.docdt BETWEEN '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' AND '" & Format(pdate, "yyyy-mm-dd") & "' and b.lotno='" & DataGrid1.Columns(1).Text & "'  and b.lotdt between '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and b.divcode='" & Divcode & "' and G.isstype = 'P' and c.isstype=g.issue_code and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno AND b.LOTYEAR='" & Year(yfdate) & "' group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg union all " & _
                       " select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(C.ISSKGS,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e,rm_issuetype g where  E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  c.docdt between '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and c.isstype=g.issue_code " & _
                       " and g.isstype in  ('T','J','S') and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno='" & DataGrid1.Columns(1).Text & "'  and b.lotdt='" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' AND b.LOTYEAR='" & Year(yfdate) & "' group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg ))a where a.lotno='" & DataGrid1.Columns(1).Text & "'" & _
                       " and a.lotdt Between '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' group by varcode,a.LOTNO,a.lotdt) xx group by varcode,lotno,lotdt order by LOTNO , LOTDT", DB, adOpenStatic, adLockBatchOptimistic
         
        If adoPrimaryRS(6).value = "" Then
             TXTFIELDS(14).Text = ""
        Else
            TXTFIELDS(14).Text = IIf(IsNull(adoPrimaryRS(6)) = True, Empty, adoPrimaryRS(6))
        End If
        
        If adoPrimaryRS(8).value = "" Then
             TXTFIELDS(15).Text = ""
        Else
            TXTFIELDS(15).Text = IIf(IsNull(adoPrimaryRS(8)) = True, Empty, Format(adoPrimaryRS(8), "#0.000"))
        End If
        
        
        If adoPrimaryRS(9).value = "" Then
             TXTFIELDS(17).Text = ""
        Else
            TXTFIELDS(17).Text = IIf(IsNull(adoPrimaryRS(9)) = True, Empty, adoPrimaryRS(9))
        End If
        
        
        If adoPrimaryRS(11).value = "" Then
             TXTFIELDS(16).Text = ""
        Else
            TXTFIELDS(16).Text = IIf(IsNull(adoPrimaryRS(9)) = True, Empty, Format(adoPrimaryRS(11), "#0.000"))
        End If
        
        
        If adoPrimaryRS(14).value = "" Then
            TXTFIELDS(19).Text = ""
        Else
            TXTFIELDS(19).Text = IIf(IsNull(adoPrimaryRS(14)) = True, Empty, adoPrimaryRS(14))
        End If
        
        
        If adoPrimaryRS(16).value = "" Then
             TXTFIELDS(18).Text = ""
        Else
            TXTFIELDS(18).Text = IIf(IsNull(adoPrimaryRS(16)) = True, Empty, Format(adoPrimaryRS(16), "#0.000"))
        End If
       
       
        If adoPrimaryRS(23).value = "" Then
             TXTFIELDS(7).Text = ""
        Else
            TXTFIELDS(7).Text = IIf(IsNull(adoPrimaryRS(23)) = True, Empty, adoPrimaryRS(23))
        End If
        
        If adoPrimaryRS(25).value = "" Then
             lblqty.Caption = ""
        Else
            lblqty.Caption = IIf(IsNull(adoPrimaryRS(25)) = True, Empty, Format(adoPrimaryRS(25), "#0.000"))
        End If
                
        If adoPrimaryRS(20).value = "" Then
             TXTFIELDS(23).Text = ""
        Else
            TXTFIELDS(23).Text = IIf(IsNull(adoPrimaryRS(20)) = True, Empty, adoPrimaryRS(20))
        End If
        
        If adoPrimaryRS(22).value = "" Then
             TXTFIELDS(24).Text = ""
        Else
            TXTFIELDS(24).Text = IIf(IsNull(adoPrimaryRS(22)) = True, Empty, adoPrimaryRS(22))
        End If
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select min(docdt) from rm_issb where lotno='" & DataGrid1.Columns(1).Text & "' and lotdt='" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount <> 0 Then
            If adoPrimaryRS(0).value = "" Then
                 TXTFIELDS(20).Text = ""
            Else
                TXTFIELDS(20).Text = IIf(IsNull(adoPrimaryRS(0)) = True, Empty, CStr(Format(adoPrimaryRS(0), "dd-mm-yyyy")))
            End If
        End If
        
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select distinct cntcd from rm_issh a, rm_issb b where a.docno=b.docno and a.docdt=b.docdt and a.divcode=b.divcode and lotno='" & DataGrid1.Columns(1).Text & "' and lotdt='" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount <> 0 Then
        adoPrimaryRS.MoveFirst
        mixcnt = ""
        Do While Not adoPrimaryRS.EOF()
            mixcnt = mixcnt & adoPrimaryRS(0).value & ","
            adoPrimaryRS.MoveNext
        Loop
            If mixcnt = "" Then
                 TXTFIELDS(6).Text = ""
            Else
                TXTFIELDS(6).Text = IIf(IsNull(adoPrimaryRS(0)) = True, Empty, mixcnt)
            End If
        
        End If
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select max(docdt) from rm_issb where lotno='" & DataGrid1.Columns(1).Text & "' and lotdt='" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount <> 0 Then
            If adoPrimaryRS(0).value = "" Then
                 TXTFIELDS(21).Text = ""
            Else
                TXTFIELDS(21).Text = IIf(IsNull(adoPrimaryRS(0)) = True, Empty, CStr(Format(adoPrimaryRS(0), "dd-mm-yyyy")))
            End If
        End If
        
        
        
        Set QualityRs = New Recordset
        QualityRs.Open "select STAPLEN,trash_per,moiture,ELG,MCOEFF,nepspergm,uqlw,ifc,scncv,UI,remarks,STAPLEN50,MICRONAIRE,sci,rd,SCNeps_g,STAPLEN5,MCOEFF1,FQI,ML,UNIRATIO,GTEX,SFI,bb,sfcw,uhml,nepcv from rm_Lot where lotno='" & DataGrid1.Columns(1).Text & "' and lotdt='" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If QualityRs.RecordCount <> 0 Then
            On Error Resume Next
            Dim TX As TextBox
            For Each TX In Me.TxtQualiFlds
                Set TX.DataSource = QualityRs
            Next
        End If
        
        
        
        Frame6.Visible = False
        Frame1.Visible = True
        Frame2.Visible = True
        Frame3.Visible = True
        Call disabletxt
End If
End Sub
Private Sub Command4_Click()
Call BUTTON_Click(11)
End Sub

Private Sub Command5_Click()
On Error GoTo Command5_Click_Error

Set rsg = New Recordset
    rsg.Open "select lotno, lotdt from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and 1=2", DB, adOpenStatic
    
    If rsg.RecordCount > 0 Then
        txtlotno.Text = rsg("lotno")
        'Text3.Text = rsg("lotdt")
    Else
        LookUp.clear = True
        'LookUp.Query = "Select Lotno""Lot No."", lotdt""Lot Date"" FROM rm_lot WHERE divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y'"
        LookUp.query = "Select Lotno""Lot No."", lotdt""Lot Date"", plotno ""Party Lot No"", slname ""Supplier"",varname ""Variety""   FROM rm_lot a, fa_slmas b, rm_var v WHERE a.supcd=b.slcode and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and a.varcode=v.varcode"
        LookUp.Caption = "Lot Listing"
        LookUp.DefCol = "Lot No."
        LookUp.ALIGN = "1000,1500,1000,4500, 2000"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtlotno = LookUp.Fields(0)
            lookupdt = Format(LookUp.Fields(1), "yyyy-mm-dd")
            Frame4.Visible = False
            Call query_mode
            LookUp.clear = True
            Command3_Click
            'txtlotno.SetFocus
        Else
            'txtlotno.SetFocus
        End If
    End If

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_DblClick()
On Error GoTo DataGrid1_DblClick_Error

Call Command3_Click

Exit Sub
DataGrid1_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_DblClick of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
On Error GoTo DataGrid1_KeyPress_Error

KeyAscii = 0

Exit Sub
DataGrid1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyPress of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Activate()
On Error GoTo Form_Activate_Error

    'txtlotno.SetFocus

Exit Sub
Form_Activate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Activate of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

  opt = " "
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  'TabStrip1.Tabs.clear
  ''SSTab1.TabCaption(0) = ""
  SSTab1.Tab = 0
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
  
  Frame4.Visible = False
  Frame4.Enabled = False

'  Frame1.Visible = False
'  Frame2.Visible = False
'  Frame3.Visible = False
'  Frame6.Visible = False
'
  
  
   'Call QUERY_MODE
  'Frame1.Visible = True
  'Frame5.Visible = True

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
  End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  Set adoPrimaryRS = Nothing
  Reset

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
  End Sub

Public Sub clearval()
For i = 0 To 8
  TXTFIELDS(i).Text = ""
Next
End Sub
Public Sub disabletxt()
For i = 0 To 8
  TXTFIELDS(i).Locked = True
Next
'DataGrid2.Columns(0).Locked = True
'DataGrid2.Columns(1).Locked = True
'DataGrid2.Columns(2).Locked = True
'DataGrid2.Columns(3).Locked = True
'DataGrid2.Columns(4).Locked = True
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.TXTFIELDS
        oText.Locked = True
    Next

End Sub
Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.TXTFIELDS
        oText.Locked = False
    Next
End Sub


Private Sub Text1_KeyPress(KeyAscii As Integer)
On Error GoTo Text1_KeyPress_Error

KeyAscii = 0

Exit Sub
Text1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_KeyPress of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text2_KeyPress(KeyAscii As Integer)
On Error GoTo Text2_KeyPress_Error

KeyAscii = 0

Exit Sub
Text2_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text2_KeyPress of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text3_KeyPress(KeyAscii As Integer)
On Error GoTo Text3_KeyPress_Error

KeyAscii = 0

Exit Sub
Text3_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text3_KeyPress of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
End Sub

'End Select


Private Sub txtfields_KeyPress(Index As Integer, KeyAscii As Integer)
'If Not Index = 12 Then
'KeyAscii = 0
'End If
'If Index = 12 Then
'ToNumber txtfields(12), KeyAscii
'If Len(txtfields(12)) = 10 Then KeyAscii = 0
'End If
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
'If opt = "add" Or opt = "mod" Then
'Select Case Index
'Case 12
'     Set ADOSECONDARYRS = New Recordset
'     ADOSECONDARYRS.Open "select isnull(acbal,0) from projl where divcode='" & txtfields(0).Text & "' and projno='" & txtfields(1).Text & "'  and projsno='" & txtfields(2).Text & "' and ficode='" & txtfields(3).Text & "' and ascode='" & txtfields(4).Text & "' ", Db, adOpenStatic, adLockBatchOptimistic
'    If Trim(txtfields(Index).Text) = "" Or Trim(txtfields(Index).Text) = Empty Then
'        MsgBox "Balance Amonut Should not be Empty", vbInformation, head
'        txtfields(12).SetFocus
'    Else
'        If Val(txtfields(12).Text) > Val(ADOSECONDARYRS(0)) Then
'        MsgBox "Balance Amount should not be Greater than Loan Amount", vbOKOnly, head
'        txtfields(12).Text = Val(ADOSECONDARYRS(0))
'        End If
'    End If
'End Select
'End If
End Sub


Private Sub txtlotno_KeyPress(KeyAscii As Integer)
    Call ToNumberAssign(TXTFIELDS(Index), 1, KeyAscii, 1, 1)
End Sub

Private Sub txtlotno_Validate(Cancel As Boolean)
On Error GoTo txtlotno_Validate_Error
    
    Set rsg = New Recordset
    rsg.Open "select lotno, lotdt, plotno from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lotno='" & val(txtlotno) & "' and opflg<>'Y'", DB, adOpenStatic
    
    If rsg.RecordCount > 0 Then
        txtlotno.Text = ""
    Else
         LookUp.clear = True
        'LookUp.Query = "Select Lotno""Lot No."", lotdt""Lot Date"" FROM rm_lot WHERE divcode='" & Divcode & "' and opflg<>'Y'"
        'LookUp.Query = "Select Lotno ""Lot No."", lotdt ""Lot Date"", plotno ""Party Lot No"", slname ""Supplier"" FROM rm_lot a, fa_slmas b WHERE divcode='" & Divcode & "' and opflg<>'Y' and a.supcd=b.slcode"


        LookUp.query = "Select Lotno""Lot No."", lotdt""Lot Date"", plotno ""Supplier Lot No"", slname ""Supplier"",varname ""Variety""   FROM rm_lot a, fa_slmas b, rm_var v WHERE a.supcd=b.slcode and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and a.varcode=v.varcode"
        LookUp.Caption = "Lot Listing"
        LookUp.DefCol = "Lot No."
        'LookUp.ALIGN = "2000,1500"
        LookUp.ALIGN = "1000,1500,1000,4500, 2000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtlotno = LookUp.Fields(0)
            lookupdt = Format(LookUp.Fields(1), "yyyy-mm-dd")
            LookUp.clear = True
            Call query_mode
            Call Command3_Click
            Command1.SetFocus
            Frame4.Visible = False
            Exit Sub
        Else
            'txtlotno.SetFocus
        End If
    End If
Exit Sub
txtlotno_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtlotno_Validate of Form FrmLotHist", vbInformation, head
Screen.MousePointer = 0
End Sub
