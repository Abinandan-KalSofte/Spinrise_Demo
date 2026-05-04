VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{B9411660-10E6-4A53-BE96-7FED334704FA}#8.0#0"; "FPSPRU80.ocx"
Begin VB.Form frm_FibreTestResult 
   Caption         =   "Fibre Test Result"
   ClientHeight    =   8490
   ClientLeft      =   165
   ClientTop       =   -1995
   ClientWidth     =   10680
   ClipControls    =   0   'False
   ForeColor       =   &H00800000&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   10680
   WindowState     =   2  'Maximized
   Begin VB.PictureBox FrameDiscType 
      Appearance      =   0  'Flat
      DrawMode        =   1  'Blackness
      DrawWidth       =   2
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      ForeColor       =   &H80000008&
      Height          =   6555
      Left            =   17400
      ScaleHeight     =   6525
      ScaleWidth      =   13290
      TabIndex        =   103
      ToolTipText     =   "Select an item from list"
      Top             =   2400
      Visible         =   0   'False
      Width           =   13320
      Begin VB.CommandButton Command4 
         BackColor       =   &H00FFC0FF&
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   6900
         MaskColor       =   &H00FFFF80&
         Style           =   1  'Graphical
         TabIndex        =   107
         Top             =   6000
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin VB.CommandButton Command3 
         BackColor       =   &H00FFC0FF&
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   5700
         Style           =   1  'Graphical
         TabIndex        =   106
         Top             =   6000
         Width           =   1035
      End
      Begin VB.CheckBox Check2 
         BackColor       =   &H00C0C0C0&
         Caption         =   "All"
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
         Left            =   180
         TabIndex        =   105
         Top             =   480
         Visible         =   0   'False
         Width           =   525
      End
      Begin VB.TextBox Text7 
         Height          =   375
         Left            =   1920
         TabIndex        =   104
         Top             =   6050
         Visible         =   0   'False
         Width           =   1185
      End
      Begin FPSpreadADO.fpSpread SPDDiscTypeDet2 
         Height          =   1140
         Left            =   240
         TabIndex        =   135
         Top             =   5760
         Width           =   345
         _Version        =   524288
         _ExtentX        =   609
         _ExtentY        =   2011
         _StockProps     =   64
         ArrowsExitEditMode=   -1  'True
         BackColorStyle  =   1
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
         MaxCols         =   6
         MaxRows         =   0
         ProcessTab      =   -1  'True
         RowHeaderDisplay=   0
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "frm_FibreTestResult.frx":0000
         AppearanceStyle =   0
      End
      Begin FPSpreadADO.fpSpread SPDDiscTypeDet 
         Height          =   5205
         Left            =   120
         TabIndex        =   136
         Top             =   480
         Width           =   12990
         _Version        =   524288
         _ExtentX        =   22913
         _ExtentY        =   9181
         _StockProps     =   64
         ArrowsExitEditMode=   -1  'True
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
         MaxCols         =   10
         MaxRows         =   1
         ProcessTab      =   -1  'True
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "frm_FibreTestResult.frx":0454
         Appearance      =   2
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Discount Details"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000004&
         Height          =   375
         Left            =   60
         TabIndex        =   109
         Top             =   45
         Width           =   13305
      End
      Begin VB.Line Line2 
         BorderWidth     =   2
         X1              =   -15
         X2              =   13320
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "Find Discount Type"
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
         Left            =   120
         TabIndex        =   108
         Top             =   6120
         Visible         =   0   'False
         Width           =   1665
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Frame4"
      Height          =   3015
      Left            =   240
      TabIndex        =   96
      Top             =   10320
      Visible         =   0   'False
      Width           =   16815
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "FreightMill_Amt"
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
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   5
         Left            =   15120
         Locked          =   -1  'True
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   127
         Top             =   1425
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "FreightApp_Amt"
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
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   11
         Left            =   15120
         Locked          =   -1  'True
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   126
         Top             =   1800
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "TotalKgs"
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
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   12
         Left            =   15120
         Locked          =   -1  'True
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   125
         Top             =   720
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "TotalBales"
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
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   13
         Left            =   15120
         Locked          =   -1  'True
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   124
         Top             =   360
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFC0&
         DataField       =   "Freightbill_Amt"
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
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   16
         Left            =   15120
         Locked          =   -1  'True
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   123
         Top             =   1080
         Width           =   1600
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000F&
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   360
         Left            =   2145
         Locked          =   -1  'True
         TabIndex        =   118
         Top             =   1830
         Width           =   2535
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H80000003&
         Caption         =   "&Browse..."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   4680
         Style           =   1  'Graphical
         TabIndex        =   117
         Top             =   1800
         Width           =   1095
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         DataField       =   "MDApp_copy"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
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
         ForeColor       =   &H80000002&
         Height          =   330
         Index           =   19
         Left            =   7080
         TabIndex        =   116
         Top             =   1800
         Width           =   3375
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         DataField       =   "FreightBill_copy"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
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
         ForeColor       =   &H80000002&
         Height          =   330
         Index           =   122
         Left            =   7080
         TabIndex        =   115
         Top             =   1320
         Width           =   3375
      End
      Begin VB.CommandButton btnBrowse 
         BackColor       =   &H80000003&
         Caption         =   "&Browse..."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   4680
         Style           =   1  'Graphical
         TabIndex        =   114
         Top             =   1320
         Width           =   1095
      End
      Begin VB.TextBox txt_filename 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000F&
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   360
         Left            =   2145
         Locked          =   -1  'True
         TabIndex        =   113
         Top             =   1350
         Width           =   2535
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         ItemData        =   "frm_FibreTestResult.frx":08AF
         Left            =   2040
         List            =   "frm_FibreTestResult.frx":08BF
         TabIndex        =   111
         Text            =   "Purchase Bill"
         Top             =   960
         Width           =   2295
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H80000003&
         Caption         =   "&Download"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   4560
         Style           =   1  'Graphical
         TabIndex        =   110
         Top             =   960
         Width           =   1095
      End
      Begin VB.TextBox Text5 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3720
         Locked          =   -1  'True
         TabIndex        =   100
         TabStop         =   0   'False
         Top             =   600
         Visible         =   0   'False
         Width           =   8730
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "CarCode"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   24
         Left            =   2100
         Locked          =   -1  'True
         TabIndex        =   99
         ToolTipText     =   "Select the Carrier"
         Top             =   600
         Visible         =   0   'False
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "PJVTC"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   27
         Left            =   2100
         Locked          =   -1  'True
         TabIndex        =   98
         ToolTipText     =   "Select the Carrier"
         Top             =   240
         Visible         =   0   'False
         Width           =   1600
      End
      Begin VB.TextBox Text6 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3720
         Locked          =   -1  'True
         TabIndex        =   97
         TabStop         =   0   'False
         Top             =   240
         Visible         =   0   'False
         Width           =   8730
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Freight Bill As per Mill"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   6
         Left            =   12600
         TabIndex        =   132
         Top             =   1485
         Width           =   2145
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Freight Bill Approved"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   7
         Left            =   12600
         TabIndex        =   131
         Top             =   1800
         Width           =   2070
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Total Bales"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   8
         Left            =   12600
         TabIndex        =   130
         Top             =   360
         Width           =   1080
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Total Kgs"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   9
         Left            =   12600
         TabIndex        =   129
         Top             =   765
         Width           =   900
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Freight Bill Value"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   10
         Left            =   12600
         TabIndex        =   128
         Top             =   1125
         Width           =   1665
      End
      Begin VB.Label Label3 
         Caption         =   "MD Approved Copy"
         Height          =   255
         Left            =   600
         TabIndex        =   122
         Top             =   1920
         Width           =   1455
      End
      Begin VB.Label Label1 
         Caption         =   "File Name"
         Height          =   255
         Index           =   0
         Left            =   6000
         TabIndex        =   121
         Top             =   1920
         Width           =   975
      End
      Begin VB.Label Label96 
         Caption         =   "File Name"
         Height          =   255
         Left            =   6000
         TabIndex        =   120
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label93 
         Caption         =   "Transporter Bill Copy"
         Height          =   255
         Left            =   600
         TabIndex        =   119
         Top             =   1440
         Width           =   1455
      End
      Begin VB.Label Label7 
         Caption         =   "Download Bill Copy"
         Height          =   255
         Left            =   480
         TabIndex        =   112
         Top             =   960
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Carrier Name"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   8
         Left            =   240
         TabIndex        =   102
         Top             =   615
         Visible         =   0   'False
         Width           =   1305
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "TC"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   10
         Left            =   240
         TabIndex        =   101
         Top             =   255
         Visible         =   0   'False
         Width           =   480
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   9450
      Top             =   705
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   10050
      Top             =   705
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   30
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   7440
         Picture         =   "frm_FibreTestResult.frx":0900
         Style           =   1  'Graphical
         TabIndex        =   35
         ToolTipText     =   "CN Print"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   11295
         Picture         =   "frm_FibreTestResult.frx":0D42
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "List (Ctrl L)"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FibreTestResult.frx":10D9
         Height          =   510
         Index           =   3
         Left            =   1140
         Picture         =   "frm_FibreTestResult.frx":13E3
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Find (Ctrl+F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   8970
         Picture         =   "frm_FibreTestResult.frx":1778
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Print (Ctrl+P)"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FibreTestResult.frx":1BBA
         Height          =   510
         Index           =   8
         Left            =   3240
         Picture         =   "frm_FibreTestResult.frx":2004
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "Last Record (Ctrl+Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FibreTestResult.frx":2366
         Height          =   510
         Index           =   10
         Left            =   4290
         Picture         =   "frm_FibreTestResult.frx":2670
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Cancel (Ctrl+Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FibreTestResult.frx":29EC
         Height          =   510
         Index           =   9
         Left            =   3765
         Picture         =   "frm_FibreTestResult.frx":2CF6
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Save (Ctrl+S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FibreTestResult.frx":3098
         Height          =   510
         Index           =   11
         Left            =   4820
         Picture         =   "frm_FibreTestResult.frx":34E2
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Exit (Ctrl+Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FibreTestResult.frx":3877
         Height          =   510
         Index           =   7
         Left            =   2715
         Picture         =   "frm_FibreTestResult.frx":3CC1
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Previous Record (Ctrl+Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FibreTestResult.frx":4011
         Height          =   510
         Index           =   5
         Left            =   1665
         Picture         =   "frm_FibreTestResult.frx":445B
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "First Record (Ctrl+Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FibreTestResult.frx":47C0
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "frm_FibreTestResult.frx":4ACA
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Add (Ctrl+A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FibreTestResult.frx":4E5D
         Height          =   510
         Index           =   6
         Left            =   2205
         Picture         =   "frm_FibreTestResult.frx":52A7
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Next Record (Ctrl+Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FibreTestResult.frx":55F4
         Height          =   510
         Index           =   1
         Left            =   6720
         Picture         =   "frm_FibreTestResult.frx":58FE
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Modify (Ctrl+M)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FibreTestResult.frx":5C78
         BeginProperty Font 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   615
         Picture         =   "frm_FibreTestResult.frx":5F82
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Delete (Ctrl+D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   8115
         TabIndex        =   32
         Top             =   255
         Width           =   840
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
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   10380
         TabIndex        =   31
         Top             =   270
         Width           =   885
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   36
      Top             =   8190
      Width           =   10680
      _ExtentX        =   18838
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   4410
            MinWidth        =   4410
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   12788
            MinWidth        =   12788
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "07/03/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "03:35 PM"
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
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      ClipControls    =   0   'False
      ForeColor       =   &H80000008&
      Height          =   7455
      Left            =   240
      TabIndex        =   11
      Top             =   1200
      Width           =   18480
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "Line_no"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
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
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   34
         Left            =   5160
         Locked          =   -1  'True
         MaxLength       =   20
         MultiLine       =   -1  'True
         TabIndex        =   153
         ToolTipText     =   "Enter Bill No"
         Top             =   1560
         Width           =   1710
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "Batch_No"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   33
         Left            =   1980
         Locked          =   -1  'True
         MaxLength       =   8
         MultiLine       =   -1  'True
         TabIndex        =   2
         ToolTipText     =   "Enter Bill No"
         Top             =   1560
         Width           =   1710
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "lotno"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   32
         Left            =   8400
         Locked          =   -1  'True
         TabIndex        =   147
         ToolTipText     =   "Select the Carrier"
         Top             =   480
         Width           =   1365
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataField       =   "IssDocno"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   31
         Left            =   16140
         Locked          =   -1  'True
         TabIndex        =   1
         ToolTipText     =   "Select the Carrier"
         Top             =   720
         Visible         =   0   'False
         Width           =   1365
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "plcode"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   30
         Left            =   8400
         Locked          =   -1  'True
         TabIndex        =   141
         ToolTipText     =   "Select the Supplier"
         Top             =   1560
         Width           =   1365
      End
      Begin VB.TextBox Text9 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   9810
         Locked          =   -1  'True
         TabIndex        =   140
         TabStop         =   0   'False
         Top             =   1560
         Width           =   3570
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "Varcode"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   29
         Left            =   8400
         Locked          =   -1  'True
         TabIndex        =   138
         ToolTipText     =   "Select the Supplier"
         Top             =   1200
         Width           =   1365
      End
      Begin VB.TextBox Text8 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   9810
         Locked          =   -1  'True
         TabIndex        =   137
         TabStop         =   0   'False
         Top             =   1200
         Width           =   3570
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "ArrDT"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   4
         Left            =   5400
         TabIndex        =   5
         TabStop         =   0   'False
         ToolTipText     =   "Transaction Doc. Date"
         Top             =   480
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin MSComCtl2.DTPicker DTPicker5 
         DataField       =   "ArrDT"
         Height          =   315
         Left            =   5400
         TabIndex        =   6
         TabStop         =   0   'False
         Top             =   450
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   156106753
         CurrentDate     =   36218
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataField       =   "arrno"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   28
         Left            =   1980
         Locked          =   -1  'True
         TabIndex        =   0
         ToolTipText     =   "Select the Carrier"
         Top             =   480
         Width           =   1485
      End
      Begin VB.Frame Frame3 
         Caption         =   "Credit/Debit"
         Height          =   1095
         Left            =   4560
         TabIndex        =   86
         Top             =   9360
         Visible         =   0   'False
         Width           =   8895
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "DrCrReason"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
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
            Index           =   26
            Left            =   1485
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   89
            Text            =   "Rate Difference"
            ToolTipText     =   "Enter the Reason For Credit/Debit Note with Maximum of 100 Characters"
            Top             =   600
            Width           =   4440
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "DBValue"
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
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   25
            Left            =   1440
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   87
            Top             =   240
            Width           =   1600
         End
         Begin VB.Label lblReason 
            AutoSize        =   -1  'True
            Caption         =   "Reason "
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   90
            Top             =   675
            Width           =   765
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Value"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   14
            Left            =   120
            TabIndex        =   88
            Top             =   285
            Width           =   540
         End
      End
      Begin VB.Frame Frame2 
         Height          =   2655
         Left            =   14160
         TabIndex        =   59
         Top             =   8760
         Width           =   3975
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Roff_amt"
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
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   23
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   79
            Top             =   1800
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Igstamt"
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
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   22
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   77
            Top             =   1440
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Sgstamt"
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
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   21
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   75
            Top             =   1110
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Cgstamt"
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
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   20
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   73
            Top             =   800
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "GSTPer"
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
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   17
            Left            =   1440
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   72
            Top             =   450
            Width           =   765
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "OtherAmt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
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
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   9
            Left            =   1245
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   70
            Top             =   3360
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "GSTAmt"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   6
            Left            =   2325
            Locked          =   -1  'True
            TabIndex        =   69
            ToolTipText     =   "Select the AGENT "
            Top             =   450
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "GSTCode"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
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
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   10
            Left            =   780
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   67
            Top             =   450
            Width           =   645
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "TDS_Amt"
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
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   3
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   65
            Top             =   2880
            Visible         =   0   'False
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "TDS_per"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
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
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   14
            Left            =   1635
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   64
            Top             =   2880
            Visible         =   0   'False
            Width           =   645
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Disc_Value"
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
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   15
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   61
            Top             =   120
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Total_Amt"
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
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   8
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   60
            Top             =   2160
            Width           =   1600
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Round off Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   13
            Left            =   240
            TabIndex        =   80
            Top             =   1845
            Width           =   1740
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "IGST Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   12
            Left            =   240
            TabIndex        =   78
            Top             =   1485
            Width           =   1275
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "SGST Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   11
            Left            =   240
            TabIndex        =   76
            Top             =   1125
            Width           =   1305
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "CGST Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   4
            Left            =   240
            TabIndex        =   74
            Top             =   830
            Width           =   1305
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Other Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   5
            Left            =   -720
            TabIndex        =   71
            Top             =   3405
            Width           =   1350
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "GST"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   4
            Left            =   240
            TabIndex        =   68
            Top             =   480
            Width           =   375
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "TDS Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   2
            Left            =   240
            TabIndex        =   66
            Top             =   2925
            Visible         =   0   'False
            Width           =   1185
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Value"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   0
            Left            =   240
            TabIndex        =   63
            Top             =   165
            Width           =   540
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Total Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   6
            Left            =   240
            TabIndex        =   62
            Top             =   2235
            Width           =   1305
         End
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "LCNo"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   4
         Left            =   1980
         Locked          =   -1  'True
         MaxLength       =   20
         MultiLine       =   -1  'True
         TabIndex        =   54
         ToolTipText     =   "Enter the CHEQUE NO with Maximum of 15 Characters"
         Top             =   11445
         Visible         =   0   'False
         Width           =   1590
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "Billno"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
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
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   1
         Left            =   1980
         Locked          =   -1  'True
         MaxLength       =   20
         MultiLine       =   -1  'True
         TabIndex        =   8
         ToolTipText     =   "Enter Bill No"
         Top             =   880
         Width           =   1710
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "Remarks"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   0
         Left            =   1980
         Locked          =   -1  'True
         MaxLength       =   90
         MultiLine       =   -1  'True
         TabIndex        =   3
         ToolTipText     =   "Enter the Remarks with Maximum of 70 Characters"
         Top             =   1875
         Width           =   10365
      End
      Begin VB.TextBox Text3 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3600
         Locked          =   -1  'True
         TabIndex        =   47
         TabStop         =   0   'False
         Top             =   11775
         Visible         =   0   'False
         Width           =   8730
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "PJ"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   18
         Left            =   1980
         Locked          =   -1  'True
         TabIndex        =   53
         ToolTipText     =   "Select the AGENT "
         Top             =   11790
         Visible         =   0   'False
         Width           =   1600
      End
      Begin VB.TextBox Text2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3360
         Locked          =   -1  'True
         TabIndex        =   40
         TabStop         =   0   'False
         Top             =   1200
         Width           =   3570
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "slcode"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   7
         Left            =   1980
         Locked          =   -1  'True
         TabIndex        =   7
         ToolTipText     =   "Select the Supplier"
         Top             =   1200
         Width           =   1365
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
         DataField       =   "DocNo"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   405
         Index           =   2
         Left            =   2000
         Locked          =   -1  'True
         TabIndex        =   39
         TabStop         =   0   'False
         ToolTipText     =   "Document Number"
         Top             =   90
         Width           =   1575
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "Docdt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   0
         Left            =   11880
         TabIndex        =   41
         TabStop         =   0   'False
         ToolTipText     =   "Transaction Doc. Date"
         Top             =   150
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin MSComCtl2.DTPicker DTPicker1 
         DataField       =   "Docdt"
         Height          =   315
         Left            =   11880
         TabIndex        =   45
         TabStop         =   0   'False
         Top             =   135
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   156237825
         CurrentDate     =   36218
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "Billdt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   1
         Left            =   5400
         TabIndex        =   9
         Top             =   885
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin MSComCtl2.DTPicker DTPicker2 
         DataField       =   "Billdt"
         Height          =   315
         Left            =   5400
         TabIndex        =   10
         TabStop         =   0   'False
         Top             =   885
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   156237825
         CurrentDate     =   36218
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "LCDate"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   2
         Left            =   10815
         TabIndex        =   55
         TabStop         =   0   'False
         ToolTipText     =   "CHEQUE Date"
         Top             =   11430
         Visible         =   0   'False
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin MSComCtl2.DTPicker DTPicker3 
         DataField       =   "LCDate"
         Height          =   315
         Left            =   10920
         TabIndex        =   56
         TabStop         =   0   'False
         Top             =   11415
         Visible         =   0   'False
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   156237825
         CurrentDate     =   36218
      End
      Begin FPSpreadADO.fpSpread SpdLCReq 
         Height          =   5085
         Left            =   120
         TabIndex        =   4
         Top             =   2280
         Width           =   18270
         _Version        =   524288
         _ExtentX        =   32226
         _ExtentY        =   8969
         _StockProps     =   64
         ArrowsExitEditMode=   -1  'True
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
         MaxCols         =   10
         MaxRows         =   1
         ProcessTab      =   -1  'True
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "frm_FibreTestResult.frx":631E
         Appearance      =   2
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "PaidDate"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   3
         Left            =   15255
         TabIndex        =   91
         Top             =   1215
         Visible         =   0   'False
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin MSComCtl2.DTPicker DTPicker4 
         DataField       =   "PaidDate"
         Height          =   315
         Left            =   15240
         TabIndex        =   92
         TabStop         =   0   'False
         Top             =   1200
         Visible         =   0   'False
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Format          =   156237825
         CurrentDate     =   36218
      End
      Begin FPSpreadADO.fpSpread SPD_MDISCDETAILS 
         Height          =   2565
         Left            =   0
         TabIndex        =   134
         Top             =   8040
         Width           =   13230
         _Version        =   524288
         _ExtentX        =   23336
         _ExtentY        =   4524
         _StockProps     =   64
         ArrowsExitEditMode=   -1  'True
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
         MaxCols         =   10
         MaxRows         =   1
         ProcessTab      =   -1  'True
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "frm_FibreTestResult.frx":6779
         Appearance      =   2
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "IssDocdt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   5
         Left            =   15240
         TabIndex        =   143
         TabStop         =   0   'False
         ToolTipText     =   "Transaction Doc. Date"
         Top             =   360
         Visible         =   0   'False
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin MSComCtl2.DTPicker DTPicker6 
         DataField       =   "IssDocdt"
         Height          =   315
         Left            =   16560
         TabIndex        =   144
         TabStop         =   0   'False
         Top             =   360
         Visible         =   0   'False
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   156237825
         CurrentDate     =   36218
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "lotdt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   6
         Left            =   11895
         TabIndex        =   150
         TabStop         =   0   'False
         ToolTipText     =   "Transaction Doc. Date"
         Top             =   495
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin MSComCtl2.DTPicker DTPicker7 
         DataField       =   "lotdt"
         Height          =   315
         Left            =   11880
         TabIndex        =   151
         TabStop         =   0   'False
         Top             =   480
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   156237825
         CurrentDate     =   36218
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Line No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   16
         Left            =   3960
         TabIndex        =   154
         Top             =   1560
         Width           =   780
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Batch No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   15
         Left            =   120
         TabIndex        =   152
         Top             =   1560
         Width           =   915
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Arr.No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   20
         Left            =   120
         TabIndex        =   149
         Top             =   525
         Width           =   690
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Arr. Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   19
         Left            =   3960
         TabIndex        =   148
         Top             =   480
         Width           =   885
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Arrival No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   18
         Left            =   14280
         TabIndex        =   146
         Top             =   720
         Visible         =   0   'False
         Width           =   1050
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Arrival Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   17
         Left            =   16680
         TabIndex        =   145
         Top             =   720
         Visible         =   0   'False
         Width           =   1185
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Plant"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   16
         Left            =   7200
         TabIndex        =   142
         Top             =   1560
         Width           =   495
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Variety"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   15
         Left            =   7200
         TabIndex        =   139
         Top             =   1200
         Width           =   705
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Discount Details"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   14
         Left            =   120
         TabIndex        =   133
         Top             =   7680
         Width           =   1575
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Mill Lot Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   12
         Left            =   10320
         TabIndex        =   95
         Top             =   520
         Width           =   1200
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Mill Lot No"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   11
         Left            =   7200
         TabIndex        =   94
         Top             =   480
         Width           =   1005
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Paid Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   9
         Left            =   14160
         TabIndex        =   93
         Top             =   1245
         Visible         =   0   'False
         Width           =   930
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "PJV No"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   3
         Left            =   120
         TabIndex        =   58
         Top             =   11460
         Visible         =   0   'False
         Width           =   645
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "PJV. Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   5
         Left            =   9120
         TabIndex        =   57
         Top             =   11460
         Visible         =   0   'False
         Width           =   900
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Invoice. Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   0
         Left            =   3840
         TabIndex        =   50
         Top             =   885
         Width           =   1305
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Invoice No."
         BeginProperty Font 
            Name            =   "Verdana"
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
         Left            =   120
         TabIndex        =   49
         Top             =   885
         Width           =   1110
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "PJV TC"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   13
         Left            =   120
         TabIndex        =   48
         Top             =   11805
         Visible         =   0   'False
         Width           =   630
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Remarks"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   46
         Top             =   1905
         Width           =   855
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Supplier Name"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   7
         Left            =   150
         TabIndex        =   44
         Top             =   1215
         Width           =   1425
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Doc.Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   3
         Left            =   10320
         TabIndex        =   43
         Top             =   180
         Width           =   870
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Doc.No"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   2
         Left            =   165
         TabIndex        =   42
         Top             =   195
         Width           =   675
      End
   End
   Begin VB.Frame Frame8 
      Height          =   6165
      Left            =   5160
      TabIndex        =   33
      Top             =   1320
      Visible         =   0   'False
      Width           =   13215
      Begin VB.TextBox Text4 
         Height          =   300
         Left            =   1200
         TabIndex        =   84
         Top             =   600
         Visible         =   0   'False
         Width           =   4905
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "frm_FibreTestResult.frx":6BD4
         Left            =   6600
         List            =   "frm_FibreTestResult.frx":6BE1
         TabIndex        =   82
         Text            =   "LRNo"
         Top             =   600
         Visible         =   0   'False
         Width           =   1815
      End
      Begin VB.CheckBox ChkSelectAll 
         Caption         =   "Select &All"
         Height          =   240
         Left            =   270
         TabIndex        =   37
         Top             =   5640
         Width           =   1125
      End
      Begin VB.CommandButton cmdItemSelect 
         Caption         =   "&OK"
         Height          =   405
         Left            =   4830
         TabIndex        =   13
         Top             =   5535
         Width           =   1305
      End
      Begin VB.CommandButton cmdItemSelectClose 
         Caption         =   "&Close"
         Height          =   405
         Left            =   6195
         TabIndex        =   38
         Top             =   5535
         Width           =   1305
      End
      Begin FPSpreadADO.fpSpread SPDPO1 
         Height          =   390
         Left            =   120
         TabIndex        =   52
         Top             =   6240
         Width           =   11250
         _Version        =   524288
         _ExtentX        =   19844
         _ExtentY        =   688
         _StockProps     =   64
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         SpreadDesigner  =   "frm_FibreTestResult.frx":6BFC
         AppearanceStyle =   0
      End
      Begin FPSpreadADO.fpSpread spdPO 
         Height          =   4830
         Left            =   240
         TabIndex        =   83
         Top             =   600
         Width           =   12855
         _Version        =   524288
         _ExtentX        =   22675
         _ExtentY        =   8520
         _StockProps     =   64
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "frm_FibreTestResult.frx":701B
      End
      Begin FPSpreadADO.fpSpread SPDPO5 
         Height          =   4125
         Left            =   240
         TabIndex        =   85
         Top             =   6360
         Width           =   12870
         _Version        =   524288
         _ExtentX        =   22701
         _ExtentY        =   7276
         _StockProps     =   64
         ArrowsExitEditMode=   -1  'True
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
         MaxCols         =   10
         MaxRows         =   1
         ProcessTab      =   -1  'True
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "frm_FibreTestResult.frx":7445
         Appearance      =   2
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackColor       =   &H80000014&
         Caption         =   "Search"
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
         Left            =   240
         TabIndex        =   81
         Top             =   675
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Shape Shape2 
         BorderWidth     =   2
         Height          =   5880
         Left            =   75
         Top             =   195
         Width           =   13080
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "List of OutStanding List(s)"
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
         Left            =   165
         TabIndex        =   34
         Top             =   240
         Width           =   12885
      End
   End
   Begin FPUSpreadADO.fpSpread S1pdLCReq1 
      Height          =   840
      Left            =   14880
      TabIndex        =   51
      Top             =   120
      Visible         =   0   'False
      Width           =   3585
      _Version        =   524288
      _ExtentX        =   6324
      _ExtentY        =   1482
      _StockProps     =   64
      ArrowsExitEditMode=   -1  'True
      DisplayRowHeaders=   0   'False
      EditEnterAction =   5
      EditModePermanent=   -1  'True
      EditModeReplace =   -1  'True
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
      ScrollBarExtMode=   -1  'True
      SpreadDesigner  =   "frm_FibreTestResult.frx":78A0
      Appearance      =   2
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   12000
      Top             =   600
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Left            =   8790
      TabIndex        =   26
      Top             =   690
      Visible         =   0   'False
      Width           =   60
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Fibre Test Note"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Left            =   255
      TabIndex        =   29
      Top             =   660
      Width           =   2385
   End
   Begin VB.Label Label5 
      Caption         =   "TC"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2400
      TabIndex        =   28
      Top             =   1350
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label Label4 
      Caption         =   "GIN No."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   960
      TabIndex        =   27
      Top             =   1350
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   3
      Height          =   7620
      Left            =   195
      Top             =   1155
      Width           =   18555
   End
End
Attribute VB_Name = "frm_FibreTestResult"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim itemrec As Recordset
Dim CRY As String
Dim d As Integer
Dim TFlg As String
Dim VisFlg As String
Dim WithEvents rsb As Recordset
Attribute rsb.VB_VarHelpID = -1
Dim ah As Boolean, al As Boolean
Dim PenQty As Double
Dim trs As ADODB.Recordset
Dim vrs As Recordset
Dim sp As String
Dim itemc As String
Dim sp1 As String
Dim DB As Connection
Public Opt As String
Dim st2 As String
Dim deltype As String
Public FreightBillEntryType As String

'Dim Fa_Instal, Fa_Instal, FA_BillApp As String

Dim r As Integer
Dim MDOC As Long
Dim IGSTFLG As String
Dim rs1 As New Recordset
Dim rs2 As New Recordset
Dim TC As Integer
Dim rs3, rs4, rs5, RS6 As New Recordset
Dim ITARY() As String
Dim modqty As Double
Dim roff1 As Double
Dim sp2 As Double
Dim pordrs As Recordset
Dim Invdt As String
Dim rpt As String
Dim tmp As String
Dim RW As Integer
Dim lck As Integer
Dim Rs As Recordset
Dim Roff As Integer
Dim I As Integer
Dim a As Double
Dim lno As Integer
Dim pgn As Integer
Dim rep As Report.ReportView
Dim MIBDESPATCH As Boolean  'THIS VARIABLE FOR DECIDE RECIEPT FROM MIB DESPATCH OR PO
Dim MIBNO, MIBDT As String
Dim LOOKUPRS As Recordset
Dim NewRs As Recordset
Private RepFoot As String
Dim TotValue As Double
Dim MOVELINKFlg As String
Dim nCurrRate As Double
Dim nAmount As Double
Dim nDisAmt As Double
Dim nTaxAmt As Double
Dim nPackAmt As Double
Dim nFreightAmt As Double
Dim nOtherAmt As Double
Dim nDisAmt2 As Double
Dim nTotalAmt As Double
Dim nTmpTotal As Double
Dim nTotalQty As Double
Dim nTotDisAmt As Double
Dim nTotTaxAmt As Double
Dim nTotPackAmt As Double
Dim nTotFreightAmt As Double
Dim nTotOtherAmt As Double
Dim nTotDisAmt2 As Double
Dim nRoff As Double
Dim nNetAmt As Double
Dim nRow As Double
Dim POAppFlag As Boolean
Dim lSuppSel As Boolean
Dim lQtyChange As Boolean
Dim nDispCount As Double

Dim rstItemTol As New ADODB.Recordset
Dim rstTrnDate As New ADODB.Recordset
''For spread Index
Private Enum eLCReqDtls
    E_DivCode = 1
    E_docno = 2
    E_Docdt = 3
    E_DOCSNO = 4
    E_LotDate = 5
    E_LOTNO = 6
    E_VarCode = 7
    E_SBaleNO = 8
    E_BaleNO = 9
    E_INVGrssWt = 10
    E_ActGrossWt = 11
    E_GrossWtDiff = 12
    E_NetWt = 13
    E_CommWt = 14
    E_ProductionDate = 15
    E_InvoiceMoiture = 16
    E_MRHOTAIR1 = 17
    E_MRHOTAIR2 = 18
    E_MRHOTAIRAVG = 19
    
    E_MROHAUS1 = 20
    E_MROHAUS2 = 21
    E_MROHAUS3 = 22
    E_MROHAUS4 = 23
    E_MROHAUS5 = 24
    E_MROHAUS6 = 25
    E_MROHAUS7 = 26
    E_MROHAUS8 = 27
    E_MROHAUS9 = 28
    E_MROHAUS10 = 29
    E_MROHAUS = 30
    
  
    E_INVVsHOTAir = 31
    E_InvVsOHAUS = 32
    E_TotCNDiscValue = 33
    E_TotCNDiscRate = 34
    
    E_TotAssDisc = 35
    E_TaxCode = 36
    E_CGSTPER = 37
    E_CGSTAmt = 38
    E_SGSTPER = 39
    E_SGSTAmt = 40
    E_IGSTPER = 41
    E_IGSTAmt = 42
    E_TotalAmt = 43
    E_Remarks = 44
 
End Enum
Private Enum ePODtls
    P_Select = 1

    P_SupplierCode = 2
    P_SupplierName = 3
    P_ContainerNo = 4
    P_INVGrossWt = 5
    P_INVMOI = 6
    P_FavaourableWt = 7
    P_SBaleNO = 8
    P_BaleNO = 9
    P_Varcode = 10
    P_BillDt = 11
    P_Lotno = 12
    P_LotDate = 13
    
   
    P_CommWt = 14
    P_GrossWtACT = 15
    P_DiffWt = 16
    P_ContNo = 17
    P_ContDate = 18
    P_PlantName = 19
End Enum
Private Enum SpdDiscType
    SPDDTSNO = 1
    SPDDTContno
    SPDDTContdt
    SPDDTDocno
    SPDDTDOCDT
    SPDDTLOTNO
    SPDDTLOTDT
    SPDDTVARSNO
    SPDDTVarcode
    SPDDTDISCCODE
    SPDDTDISCDESC
    SPDDTCNFlg
    SPDDTDRate
    SPDDTinvDiscRate
    SPDDTDiffDiscRate
    SPDDTDValue
    SPDDTReceivedValue
End Enum

Private Enum SpdMDiscount
    M_SPDDTSNO = 1
    M_SPDDTContno
    M_SPDDTContdt
    M_SPDDTDocno
    M_SPDDTDOCDT
    M_SPDDTLOTNO
    M_SPDDTLOTDT
    M_SPDDTVARSNO
    M_SPDDTVarcode
    M_SPDDTDISCCODE
    M_SPDDTDISCDESC
    M_SPDDTCNFlg
    M_SPDDTDRate
    M_SPDDTinvDiscRate
    M_SPDDTDiffDiscRate
    M_SPDDTDValue
    M_SPDDTReceivedValue
End Enum


Private Enum eSuppDtls
   S_SupplierCode = 1
   S_SupplierName = 2
End Enum
Private Declare Function GetDesktopWindow Lib "USER32" () As Long

Private Declare Function ShellExecute Lib "shell32.dll" _
() '() '    Alias "ShellExecuteA" _
   (ByVal hWnd As Long, _
    ByVal lpOperation As String, _
    ByVal lpFile As String, _
    ByVal lpParameters As String, _
    ByVal lpDirectory As String, _
    ByVal nShowCmd As Long) As Long

Private Const SW_SHOWNORMAL As Long = 1
Private Const SW_SHOWMAXIMIZED As Long = 3
Private Const SW_SHOWDEFAULT As Long = 10
Private Const SE_ERR_NOASSOC As Long = 31
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error Resume Next
  'This will display the current record position for this recordset

  If Opt = " " Or Opt = "" Then
      If adoPrimaryRS.AbsolutePosition > 0 Then
          stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
      Else
          stbar.Panels(2).Text = "No records found"
          Exit Sub
      End If
  End If

  If adoPrimaryRS.BOF = False And adoPrimaryRS.EOF = False And Opt <> "add" And Opt <> "mod" And Opt <> "del" Then
     Set adoSecondaryRS = New Recordset
     Set adoSecondaryRS.DataSource = adoPrimaryRS("childcmd").value

    ' Check1.Value = IIf(IsNull(adoPrimaryRS("BlankChequedtFlg")), 0, adoPrimaryRS("BlankChequedtFlg"))
  End If

  If Opt = " " Or Opt = "fnd" Or Opt = "" Then
     'Check1.Value = IIf(IsNull(adoPrimaryRS("BlankChequedtFlg")), 0, adoPrimaryRS("BlankChequedtFlg"))
     RW = 1
     With SpdLCReq
        If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
        .MaxRows = 0
        Do While Not adoSecondaryRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText eLCReqDtls.E_DivCode, RW, adoSecondaryRS("Divcode")
            .SetText eLCReqDtls.E_docno, RW, adoSecondaryRS("DocNo")
            .SetText eLCReqDtls.E_Docdt, RW, adoSecondaryRS("Docdt")
            .SetText eLCReqDtls.E_DOCSNO, RW, adoSecondaryRS("DocSNo")
            .SetText eLCReqDtls.E_SBaleNO, RW, adoSecondaryRS("PBaleno")
            .SetText eLCReqDtls.E_BaleNO, RW, adoSecondaryRS("baleno")
            .SetText eLCReqDtls.E_MROHAUS, RW, adoSecondaryRS("MROHAUS")
            .SetText eLCReqDtls.E_MROHAUS1, RW, adoSecondaryRS("MROHAUS1")
            .SetText eLCReqDtls.E_MROHAUS2, RW, adoSecondaryRS("MROHAUS2")
            .SetText eLCReqDtls.E_MROHAUS3, RW, adoSecondaryRS("MROHAUS3")
            .SetText eLCReqDtls.E_MROHAUS5, RW, adoSecondaryRS("MROHAUS5")
            .SetText eLCReqDtls.E_MROHAUS4, RW, adoSecondaryRS("MROHAUS4")
            .SetText eLCReqDtls.E_MROHAUS6, RW, adoSecondaryRS("MROHAUS6")
            .SetText eLCReqDtls.E_MROHAUS9, RW, adoSecondaryRS("MROHAUS9")
            .SetText eLCReqDtls.E_MROHAUS8, RW, adoSecondaryRS("MROHAUS8")
             .SetText eLCReqDtls.E_MROHAUS7, RW, adoSecondaryRS("MROHAUS7")
            .SetText eLCReqDtls.E_MROHAUS10, RW, adoSecondaryRS("MROHAUS10") '
            .SetText eLCReqDtls.E_MRHOTAIR2, RW, adoSecondaryRS("MRHOTAIR2") '
            .SetText eLCReqDtls.E_MRHOTAIRAVG, RW, adoSecondaryRS("MRHOTAIRAVG")
           
            
             .SetText eLCReqDtls.E_VarCode, RW, adoSecondaryRS("varcode")
             .SetText eLCReqDtls.E_GrossWtDiff, RW, adoSecondaryRS("GrossWtDiff")
             .SetText eLCReqDtls.E_INVGrssWt, RW, adoSecondaryRS("INVGrssWt")
             .SetText eLCReqDtls.E_ActGrossWt, RW, adoSecondaryRS("ActGrossWt")
             .SetText eLCReqDtls.E_ProductionDate, RW, Format(adoSecondaryRS("ProductionDate"), "dd/MM/yyyy")
             .SetText eLCReqDtls.E_InvoiceMoiture, RW, adoSecondaryRS("InvoiceMoiture")
             .SetText eLCReqDtls.E_MRHOTAIR1, RW, adoSecondaryRS("MRHOTAIR1")
                
             .SetText eLCReqDtls.E_LotDate, RW, Format(adoSecondaryRS("lotdt"), "dd/MM/yyyy")
             .SetText eLCReqDtls.E_LOTNO, RW, adoSecondaryRS("lotno")
             
          

            .SetText eLCReqDtls.E_INVVsHOTAir, RW, adoSecondaryRS("INVVsHOTAir")
            .SetText eLCReqDtls.E_CommWt, RW, adoSecondaryRS("CommWt")

            .SetText eLCReqDtls.E_NetWt, RW, adoSecondaryRS("NetWt")
            .SetText eLCReqDtls.E_InvVsOHAUS, RW, adoSecondaryRS("InvVsOHAUS")
           
    


            RW = RW + 1
            adoSecondaryRS.MoveNext
         Loop
     End With
     If Not adoPrimaryRS.EOF Then
     Call CreditNoteLoad
     End If
     Tmplrow = 0
     If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst

     nTotalQty = 0
     nTmpTotal = 0
     tmp = Opt
     Opt = ""
'     With SpdLCReq
'     For nRow = 1 To .MaxRows
'         .Row = nRow
'         If Val(GetText(SpdLCReq, E_MROHAUS9, nRow)) > 0 Then
'             .SetText E_Value, .Row, Format(Val(GetText(SpdLCReq, E_Amount, nRow)) * Val(txtfields(11).Text), "0.00")
'             nTotalQty = nTotalQty + GetText(SpdLCReq, E_MROHAUS9, nRow)
'         End If
'     Next
'     End With
'     txtQty.Text = Format(nTotalQty, "0.000")
  End If


  If Opt = "" Or Opt = " " Or Opt = "mod" Or Opt = "fnd" Or Opt = "del" Then
     If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then

        If IsNull(adoPrimaryRS("Docdt")) = False Then
            MaskEdBox1(0).Text = Format(adoPrimaryRS("Docdt"), "dd/MM/yyyy")
            If MOVELINKFlg = "Y" Then MaskEdBox1(0).Mask = Format(adoPrimaryRS("Docdt"), "dd/MM/yyyy")
            MaskEdBox1(0).Text = Format(adoPrimaryRS("Docdt"), "dd/MM/yyyy")
            MaskEdBox1(0).ZOrder
        Else
            If MOVELINKFlg = "Y" Then MaskEdBox1(0).Mask = "__/__/____"
            MaskEdBox1(0).Text = "__/__/____"
        End If
         MaskEdBox1(6).Text = IIf(IsNull(adoPrimaryRS("lotdt")), "__/__/____", Format(adoPrimaryRS("lotdt"), "dd/MM/yyyy"))
         MaskEdBox1(4).Text = IIf(IsNull(adoPrimaryRS("arrdt")), "__/__/____", Format(adoPrimaryRS("arrdt"), "dd/MM/yyyy"))
        
            MaskEdBox1(1).Text = IIf(IsNull(adoPrimaryRS("billdt")), "__/__/____", Format(adoPrimaryRS("billdt"), "dd/MM/yyyy"))
            If IsNull(adoPrimaryRS("billdt")) = False Then
            DTPicker2.value = Format(adoPrimaryRS("billdt"), "dd/MM/yyyy")
            End If

            'MaskEdBox1(3).Text = IIf(IsNull(adoPrimaryRS("PaidDate")), "__/__/____", Format(adoPrimaryRS("PaidDate"), "dd/MM/yyyy"))
'            If IsNull(adoPrimaryRS("PaidDate")) = False Then
'            DTPicker4.value = Format(adoPrimaryRS("PaidDate"), "dd/MM/yyyy")
'            End If

            ' MaskEdBox1(2).Text = IIf(IsNull(adoPrimaryRS("LCDate")), "__/__/____", Format(adoPrimaryRS("LCDate"), "dd/MM/yyyy"))
'            If IsNull(adoPrimaryRS("LCDate")) = False Then
'            DTPicker3.value = Format(adoPrimaryRS("LCDate"), "dd/MM/yyyy")
'            End If


            Set MaskEdBox1(1).DataSource = adoPrimaryRS
           ' Set MaskEdBox1(2).DataSource = adoPrimaryRS




    End If

End If
Exit Sub

Errh:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : adoPrimaryRS_MoveComplete " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub CreditNoteLoad()
On Error GoTo Errh

    Call SETDISCOUNTHead
    Set adoSecondaryRS1 = New Recordset
    adoSecondaryRS1.Open "SELECT Divcode,DocNo,Docdt,ContNo,Contdt,Lotno,Lotdt,MDocno,MDocdate,SUPCD,Varcode,DType,Bill_DRate,PO_DRate,Rate_Diff,Receivable_Amt,Received_Amt,IPADD,B.DESCRIPTION,a.Flg from RM_CNReceived A INNER JOIN RM_DiscountType B ON B.CODE=A.DType where IPADD ='" & LocalIPAdd & "' and a.DivCode='" & Divcode & "'  And docno = " & val(adoPrimaryRS("docno")) & " and Docdt = '" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' ORDER BY CONTNO,CONTDT,LOTNO,LOTDT,DType", DB, adOpenStatic, adLockBatchOptimistic
    RW = 1
     With SPD_MDISCDETAILS
        If adoSecondaryRS1.RecordCount > 0 Then adoSecondaryRS1.MoveFirst
        .MaxRows = 0
        Do While Not adoSecondaryRS1.EOF
            .MaxRows = .MaxRows + 1
            r1 = .MaxRows
            .SetText M_SPDDTSNO, r1, r1
            .SetText M_SPDDTContno, r1, adoSecondaryRS1.Fields("CONTNO")
            .SetText M_SPDDTContdt, r1, Format(adoSecondaryRS1.Fields("CONTDT"), "dd/mm/yyyy")
            .SetText M_SPDDTLOTNO, r1, adoSecondaryRS1.Fields("lotno")
            .SetText M_SPDDTLOTDT, r1, Format(adoSecondaryRS1.Fields("lotdt"), "dd/mm/yyyy")
            .SetText M_SPDDTDocno, r1, adoSecondaryRS1.Fields("mdocno")
            .SetText M_SPDDTDOCDT, r1, Format(adoSecondaryRS1.Fields("MDocdate"), "dd/mm/yyyy")
            .SetText M_SPDDTVarcode, r1, adoSecondaryRS1.Fields("varcode")
            .SetText M_SPDDTDISCCODE, r1, adoSecondaryRS1.Fields("DType")
            .SetText M_SPDDTDISCDESC, r1, adoSecondaryRS1.Fields("Description")
            .SetText M_SPDDTinvDiscRate, r1, adoSecondaryRS1.Fields("Bill_DRate")
            .SetText M_SPDDTDRate, r1, adoSecondaryRS1.Fields("PO_DRate")
            .SetText M_SPDDTDiffDiscRate, r1, adoSecondaryRS1.Fields("Rate_Diff")
            .SetText M_SPDDTDValue, r1, adoSecondaryRS1.Fields("Receivable_Amt")
            .SetText M_SPDDTReceivedValue, r1, adoSecondaryRS1.Fields("Received_Amt")
            .SetText M_SPDDTCNFlg, r1, adoSecondaryRS1.Fields("flg")

            RW = RW + 1
            adoSecondaryRS1.MoveNext
         Loop
     End With
Exit Sub

Errh:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : adoPrimaryRS_MoveComplete " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"


End Sub

Private Sub btnBrowse_Click()
  On Error GoTo openconnection_Error
If Opt = "add" Or Opt = "mod" Then
Dim strNewFile As String
'If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
'    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
'    End
'End If

     Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMI")) Then
        fso.CreateFolder (App.Path & "\RMI")
    End If

    strNewFile = ""
  '  Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMI\RMFreightTransporterBill" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMI\RMFreightTransporterBill" & CustID)

    End If

    ' display Common Dialog and choose a file
    CommonDialog1.ShowOpen
    strNewFile = CommonDialog1.FileTitle
    txt_filename.Text = CommonDialog1.FileName
    txtfields(122).Text = strNewFile
    If Len(Trim(txtfields(122).Text)) > 40 Then
        MsgBox "File Name should be 40 character", vbInformation, head
        Exit Sub
    End If
    FileEXT = Trim(Mid(CommonDialog1.FileName, InStr(3, CommonDialog1.FileName, "."), Len(CommonDialog1.FileName)))




    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMI\RMFreightTransporterBill" & CustID & "\" & Divcode & "-DocNo-" & Trim(txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & strNewFile
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
        If MsgBox("Supplier Bill Already Exists!!! Do you want to override?", vbYesNo, head) = vbNo Then Exit Sub

    End If

  If strNewFile <> "" Then

    Dim myPath As String
    myPath = strNewFile
    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
    FileCopy strNewFile, sFilePath ' App.Path & "\RMI\RMFreightTransporterBill" & CustID & "\" & Divcode & "-" & Trim(Txtfields(8).Text) + "-" + Trim(Format(MaskEdBox1(2).Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) + "--" & strNewFile
   End If
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"

End Sub

Private Sub BUTTON_Click(Index As Integer)
Dim Ass As Double, j As Integer
Dim RsFa As Recordset

Dim FaInstall As String, Fatc As String, FaGl As String, FaNarr As String

On Error GoTo Errh

Select Case Index
Case 0
       If Not TrnDateValidation Then Exit Sub
      ' If Record_Exists("fa_slmas where slcode like '" & PartyType & "%'", "Please define Supplier in Supplier Master") = False Then Exit Sub
      ' If Record_Exists("IM_LCType", "Please define LC Type in Setup") = False Then Exit Sub
       'If Record_Exists("IG_LoadUnLoadChargeHD where divcode = '" & DivCode & "'", "No Records Found") = False Then Exit Sub

       Opt = "add"
       sp = " "
       desc.Caption = "Addition"
       Screen.MousePointer = 11
       stbar.Panels(2).Text = " "
       MaskEdBox1(0).Mask = pdate
        MaskEdBox1(4).Text = pdate
       DTPicker1.value = pdate
       DTPicker5.value = pdate
       DTPicker1.MinDate = yfdate
       On Error Resume Next

       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT Divcode,Docno,Docdt,slcode,Billno,Billdt,LotNo,LotDT,ArrNo,ArrDT,Varcode,Line_no,PlCode,Batch_No,Remarks,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,HostID FROM RM_FibreTestHD WHERE 1=2 Order by DivCode,DocNo", DB, adOpenStatic, adLockBatchOptimistic


       Set adoSecondaryRS = New Recordset
       adoSecondaryRS.Open "SELECT Divcode,Docno,Docdt,DOCSNO,LOTNO,LOTDT,Varcode,BaleNO,INVGrssWt,ActGrossWt,GrossWtDiff,NetWt,CommWt,ProductionDate,InvoiceMoiture,MRHOTAIR1,MRHOTAIR2,MRHOTAIRAVG,MROHAUS1,MROHAUS2,MROHAUS3,MROHAUS4,MROHAUS5,MROHAUS6,MROHAUS7,MROHAUS8,MROHAUS9,MROHAUS10,MROHAUS,INVVsHOTAir,InvVsOHAUS ,PBaleno FROM RM_FibreTestDT a Where a.divcode='" & Divcode & "' And 1=2 Order by a.DocSNo", DB, adOpenStatic, adLockBatchOptimistic

       lck = 1
       adoSecondaryRS.AddNew
       SpdLCReq.Enabled = True

       Call bindcontls
       '''''''''''''''Set SpdLCReq.DataSource = adoSecondaryRS
       Text2.Text = ""
       Text1.Text = ""
       Text3.Text = ""
       Text5.Text = ""
       Text6.Text = ""

       txt_filename.Text = ""
       adoPrimaryRS.AddNew
       Call SpreadAlign(0)
       Call SpreadAlignPO(0)

       rpt = "N"
       Dim rs2 As Recordset
       Screen.MousePointer = 0

       txtfields(2).Locked = True
       Call ENABLCONTLS
       txtfields(2).Locked = True
       ReDim ITARY(50, 0)

       BUTTON(12).Enabled = False
       Set RS6 = New Recordset
       Call adddelmod(BUTTON)

       Fnd = "n"
       RW = 1000
       Screen.MousePointer = 0
       On Error Resume Next
       MaskEdBox1(0).Enabled = False
       DTPicker1.value = pdate
       txtfields(5).Enabled = True
       txtfields(5).Locked = False
       txtfields(10).Locked = False
       txtfields(14).Locked = False
       DTPicker2.value = pdate
       MaskEdBox1(1).Text = "__/__/____"
       txtfields(7).Locked = False
       txtfields(28).Locked = True
       Frame2.Enabled = True
         txtfields(10).Enabled = True
        txtfields(10).Locked = False
       'txtFields(1).SetFocus


       itemc = "' '"
        txtfields(2).Text = newdocno
       'txtFields(1).Locked = False
       txtfields(28).SetFocus
       lSuppSel = False



Case 1 'modification
       'If ToValidFinYear = False Then Exit Sub
       If Record_Exists("RM_FibreTestDT Where Docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub
        Opt = "mod"
        desc.Caption = "Modification"
        sp = " "
        lSuppSel = True
        LookUp.Clear = True
      
            LookUp.query = "SELECT Distinct h.DocNo ""Doc.No."",h.Docdt ""Date"",s.slname ""Party Name"",s.City,h.Slcode ""Party Code"",h.ArrNo Arrival_No,h.ArrDT Arrival_Date FROM  RM_FibreTestHD h inner join RM_FibreTestDT l on  h.divcode = l.divcode and h.DocNo = l.DocNo And h.Docdt = l.Docdt inner join  FA_SLMAS s on h.Slcode = s.slcode " & _
                           "  Where  h.divcode = '" & Divcode & "' and isnull(FirstFR_AppFlg,'N')<>'Y' and PaidDate is null and h.Docdt=(select max(Docdt) from RM_FibreTestHD where divcode='" & Divcode & "') " ''and h.Docdt  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "'

     
        LookUp.Caption = "Credit Note Received Listing"
        LookUp.DefCol = "Doc.No."
        LookUp.ALIGN = "1000,1100,5000,1500,1000,1000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Screen.MousePointer = 11
            MaskEdBox1(0).Mask = Format(IIf(IsNull(LookUp.Fields(1)), "__/__/____", LookUp.Fields(1)), "dd/MM/yyyy")
            itemc = "' '"
            If Opt = "mod" Then
               Call ENABLCONTLS
            Else
               Call disablcontls
            End If
            txtfields(7).Locked = True
            a = LookUp.Fields(0)
            B = LookUp.Fields(1)
            Call delmodproc(CStr(a), CStr(B))
            Call adddelmod(BUTTON)
            txtfields(28).Locked = True
            txtfields(27).Locked = True
            MaskEdBox1(4).Enabled = False
            DTPicker5.Enabled = False

'             Dim STCODE As String
'            Set rs1 = New Recordset
'            rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE,isnull(Supptype,'R') Supptype FROM FA_SLMAS   WHERE SLCODE='" & Trim(LookUp.Fields("Party Code")) & "' ", db
'            If rs1.EOF Then
'                MsgBox "PLEASE ENTER GST STATE CODE IN MASTER ", vbInformation, head
'                Call BUTTON_Click(10)
'                Exit Sub
'            Else
'                If rs1("GSTSTATECODE") = "0" Then
'                    MsgBox "PLEASE ENTER GST STATE CODE IN MASTER ", vbInformation, head
'                    Call BUTTON_Click(10)
'                    Exit Sub
'                End If
'                STCODE = rs1("GSTSTATECODE")
'            End If
'
'
'                Set rs1 = New Recordset
'                rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A INNER JOIN FA_SLMAS B ON  A.GSTSTATECODE=B.GSTSTATECODE  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & STCODE & "'", db
'                If Not rs1.EOF Then
'                    IGSTFLG = "Y"
'                Else
'                    IGSTFLG = "N"
'                End If
            If FreightBillEntryType = "S" Then
                BUTTON(0).Enabled = False
                BUTTON(2).Enabled = False
                lblLabels(9).Visible = True
                DTPicker4.Visible = True
                MaskEdBox1(3).Visible = True
                DTPicker4.value = pdate
            Else
                lblLabels(9).Visible = False
                DTPicker4.Visible = False
                MaskEdBox1(3).Visible = False
            End If

        Else
            Screen.MousePointer = 0
            BUTTON(9).Enabled = False
        End If
        'txtfields(1).SetFocus
Case 2
        'Deletion
       ' If ToValidFinYear = False Then Exit Sub
        If Record_Exists("RM_FibreTestDT Where Docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub
        Opt = "del"
        desc.Caption = "Deletion"
        sp = " "
        lSuppSel = True

        LookUp.Clear = True
      '  LookUp.query = "SELECT Distinct h.DocNo ""Doc.No."",h.Docdt ""Date"",s.slname ""Party Name"",s.City,h.Slcode ""Party Code"" FROM  RM_FibreTestHD h,RM_FibreTestDT l, FA_SLMAS s Where h.divcode = '" & Divcode & "' And h.divcode = l.divcode and h.DocNo = l.DocNo And h.Docdt = l.Docdt and h.Slcode = s.slcode and isnull(FirstFR_AppFlg,'N')<>'Y' and h.Docdt=(select max(Docdt) from RM_FibreTestHD where divcode='" & Divcode & "') " ''and h.Docdt  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "'
        LookUp.query = "SELECT Distinct h.DocNo ""Doc.No."",h.Docdt ""Date"",s.slname ""Party Name"",s.City,h.Slcode ""Party Code"",h.ArrNo Arrival_No,h.ArrDT Arrival_Date FROM  RM_FibreTestHD h inner join RM_FibreTestDT l on  h.divcode = l.divcode and h.DocNo = l.DocNo And h.Docdt = l.Docdt inner join  FA_SLMAS s on h.Slcode = s.slcode " & _
                    " where h.divcode = '" & Divcode & "'  and h.Docdt=(select max(Docdt) from RM_FibreTestHD where divcode='" & Divcode & "') " '' and isnull(FirstFR_AppFlg,'N')<>'Y' and PaidDate is null and h.Docdt  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "'

        LookUp.Caption = "Credit Note Received Listing"
        LookUp.DefCol = "Doc.No."
        LookUp.ALIGN = "1000,1100,5000,1500,1000,1000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
        MaskEdBox1(0).Text = Format(LookUp.Fields(1), "dd/MM/yyyy")
            Screen.MousePointer = 11
            If Opt = "mod" Then
                Call ENABLCONTLS
            Else
                Call disablcontls
            End If
            a = LookUp.Fields(0)
            B = LookUp.Fields(1)
            Call delmodproc(CStr(a), CStr(B))
            Call adddelmod(BUTTON)
            txtfields(28).Locked = True
            txtfields(27).Locked = True
            MaskEdBox1(4).Enabled = False
            DTPicker5.Enabled = False
        Else
            Screen.MousePointer = 0
            BUTTON(9).Enabled = False
            Call BUTTON_Click(10)
        End If

Case 3
        If Record_Exists("RM_FibreTestDT Where Docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub

        desc.Caption = "Find"

        Buttonframe.Enabled = True
        LookUp.Clear = True
        qry = "SELECT Distinct h.DocNo ""Doc No."",h.Docdt ""Date"",s.slname ""Party Name"",s.City,h.Slcode ""Party Code"",h.ArrNo Arrival_No,h.ArrDT Arrival_Date FROM  RM_FibreTestHD h,RM_FibreTestDT l, FA_SLMAS s Where h.divcode = '" & Divcode & "'  And h.divcode = l.divcode and h.DocNo = l.DocNo And h.Docdt = l.Docdt and h.Slcode = s.slcode and h.Docdt between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "' "
'        Lookup.Caption = "Cheque Collection Listing "
'        Lookup.DefCol = "Party Name"
'        Lookup.ALIGN = "1000,1100,5000,1500,0"
'        Lookup.Show vbModal

            LookUp.Clear = True
            LookUp.query = qry
            LookUp.Caption = "Freight Bill Listing "
            LookUp.DefCol = "Bank Name"
            LookUp.ALIGN = "1000,1200,3000,1000,1000,1000"
            LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Opt = "fnd"
            MaskEdBox1(0).Mask = Format(LookUp.Fields(1), "dd/MM/yyyy")
            Call query_mode(LookUp.Fields(0), LookUp.Fields(1))
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = False
        Else
            Call BUTTON_Click(10)
        End If
        If FreightBillEntryType = "S" Then
            BUTTON(0).Enabled = False
            BUTTON(2).Enabled = False
        End If
Case 4

Case 5
       'first
        desc.Caption = "Query"

        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        Call FIR(BUTTON)
        Exit Sub
GoFirstError:

Case 6
        'next
        desc.Caption = "Query"

        On Error GoTo GoNextError
        If Not adoPrimaryRS.EOF Then
            adoPrimaryRS.MoveNext
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
            adoPrimaryRS.MoveLast
        End If
        Exit Sub
GoNextError:

Case 7
        'previous
        desc.Caption = "Query"

        On Error GoTo GoPrevError
        If Not adoPrimaryRS.BOF Then
            adoPrimaryRS.MovePrevious
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
         End If
         Exit Sub
GoPrevError:

Case 8
        'last
        desc.Caption = "Query"

        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        Call las(BUTTON)
        Exit Sub
GoLastError:

Case 9

        'Save

        DB.CommandTimeout = 600
        tmp = Opt
        'Screen.MousePointer = 11
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED

        Opt = tmp
        value = 0
        If Opt = "add" Or Opt = "mod" Then

              If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
                Set fso = New FileSystemObject
'                strNewFile = Trim(txtfields(122).Text)
'                sFilePath = App.Path & "\RMI\RMFreightTransporterBill" & CustID & "\" & Divcode & "-DocNo-" & Trim(txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & strNewFile
'                If fso.FileExists(sFilePath) Then
'                   ' MsgBox "File Exist."
'                Else
'                      MsgBox "Transporter Bill Copy not updated Properly !! Update again..."
'                      Exit Sub
'                End If
'
'
'                Set fso = New FileSystemObject
'                strNewFile = Trim(txtfields(19).Text)
'                sFilePath = App.Path & "\RMI\RMFreightMD_Approval" & CustID & "\" & Divcode & "-DocNo-" & Trim(txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & strNewFile
'                If fso.FileExists(sFilePath) Then
'                   ' MsgBox "File Exist."
'                Else
'                      MsgBox "MD Copy not updated Properly !! Update again..."
'                      Exit Sub
'                End If


             End If
'            If Opt = "add" Then
'                Set Rs = New Recordset
'                Rs.Open "SELECT IssDocno FROM RM_FibreTestHD WHERE Docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and PJVtc='" & val(txtfields(27).Text) & "'  and IssDocno =" & val(txtfields(28).Text), db, adOpenStatic
'                If Rs.EOF = False Then
'                        MsgBox "P.J.V. Number is " & val(txtfields(28).Text), vbInformation, head
'                End If
'
'                Set Rs = New Recordset
'                Rs.Open "SELECT ISNULL(MAX(IssDocno),0)+1 FROM fa_purhd WHERE IssDocdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and tc='" & val(txtfields(27).Text) & "'", db, adOpenStatic
'                txtfields(28).Text = Rs(0)
'                If MaskEdBox1(4).Text = "__/__/____" Then MaskEdBox1(4).Text = pdate
'
'                Set TmpRs = New Recordset
'                TmpRs.Open "select count(IssDocno) from fa_purhd where IssDocno is not NULL and slcode ='" & txtfields(7).Text & "' And Billdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And BillNo ='" & Trim(txtfields(1).Text) & "'", db, adOpenStatic
'                If TmpRs(0) > 0 Then
'                    MsgBox "Please enter valid Bill Number ", vbInformation, head
'                    txtfields(1).SetFocus
'                    Exit Sub
'                End If
'            End If
            If Trim(txtfields(1).Text) = "" Then
                MsgBox "Bill No should be Filled", vbInformation, head
                txtfields(1).SetFocus
                Exit Sub
            End If

'            If Trim(txtfields(122).Text) = "" Then
'                MsgBox "Bill Copy Cannot be Empty", vbInformation, head
'               ' txtfields(122).SetFocus
'                Exit Sub
'            End If
'
'            If Trim(txtfields(19).Text) = "" Then
'                MsgBox "MD approved Copy Cannot be Empty", vbInformation, head
'               ' txtfields(19).SetFocus
'                Exit Sub
'            End If
            If MaskEdBox1(4).Text = "__/__/____" Or IsDate(MaskEdBox1(4).Text) = False Then
                MsgBox "PJV. Date should be Filled", vbInformation, head
                MaskEdBox1(4).SetFocus
                Exit Sub
            End If

            If MaskEdBox1(1).Text = "__/__/____" Or IsDate(MaskEdBox1(1).Text) = False Then
                MsgBox "Bill. Date should be Filled", vbInformation, head
                MaskEdBox1(1).SetFocus
                Exit Sub
            End If
'            If val(txtfields(27).Text) = 0 Or Trim(txtfields(27).Text) = "" Then
'                MsgBox "TC should be Filled", vbInformation, head
'                txtfields(27).SetFocus
'                Exit Sub
'            End If
            If Len(txtfields(7).Text) = 0 Then
                MsgBox "Name should be Filled", vbInformation, head
                txtfields(7).SetFocus
                Exit Sub
            End If
'            If Len(txtfields(24).Text) = 0 Then
'                MsgBox "Carrier should be Filled", vbInformation, head
'                txtfields(24).SetFocus
'                Exit Sub
'            End If


'            If CDate(MaskEdBox1(4).Text) < CDate(MaskEdBox1(0).Text) Then
'               MsgBox "PJV Date Cannot be Less than Document Date", vbInformation
'               Screen.MousePointer = 0
'               MaskEdBox1(4).SetFocus
'               Exit Sub
'            End If

            If CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(0).Text) Then
               MsgBox "Bill Date Cannot be Greater than Document Date", vbInformation
               Screen.MousePointer = 0
               MaskEdBox1(1).SetFocus
               Exit Sub
            End If

            If (MaskEdBox1(1).Enabled) Then
                If Not (IsDate(MaskEdBox1(1).Text)) Then
                    MsgBox "Please Enter valid Date", vbInformation, head
                    MaskEdBox1(1).SetFocus
                ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(0).Text) Then
                    MsgBox "Bill Date must be Less or equal to Document Date", vbInformation, head
                    MaskEdBox1(1).SetFocus
                End If
            End If


'            If (MaskEdBox1(4).Enabled) Then
'                If Not (IsDate(MaskEdBox1(4).Text)) Then
'                    MsgBox "Please Enter valid Date", vbInformation, head
'                    MaskEdBox1(4).SetFocus
'                    Exit Sub
'                ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(4).Text) Then
'                    MsgBox "PJV Date must Greater or equal to Bill Date", vbInformation, head
'                    MaskEdBox1(4).SetFocus
'                    Exit Sub
'                End If
'            End If


'            Set Rs = New Recordset
'            Rs.Open "SELECT Max(IssDocdt) FROM FA_PURHD WHERE IssDocdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and tc =" & val(txtfields(27).Text), db, adOpenStatic
'            If Rs.EOF = False Then
'                If Rs(0) = False Then
'                    If CDate(Rs(0)) > CDate(MaskEdBox1(4).Text) Then
'                        MsgBox "P.J.V. Date should be greater or equal to Last PJV Date , vbInformation, head"
'                        Exit Sub
'                    End If
'                End If
'            End If

'            If Val(txtfields(5).Text) = 0 Then
'                MsgBox "Paid Amount should be Filled", vbInformation, head
'                txtfields(5).SetFocus
'                Exit Sub
'            End If

            tmp = Opt
            Opt = ""
            Opt = tmp
        End If

        'Check there is record to save
        If SpdLCReq.MaxRows = 0 Then
            MsgBox "Please Enter Pjv Details ", vbInformation, head
            Opt = "add"
            Screen.MousePointer = 0
            Exit Sub
        End If


        For nRow = 1 To SpdLCReq.MaxRows
                SpdLCReq.Row = nRow
                SpdLCReq.SetActiveCell E_MROHAUS9, nRow
                If val(GetText(SpdLCReq, E_MROHAUS1, nRow)) <> 0 Then
'                    If val(GetText(SpdLCReq, E_MROHAUS10, nRow)) = 0 Then
'                        MsgBox "Freight Approved Amount Cannot be Zero", vbInformation, head
'                        Exit Sub
'                    End If
'
'                    If val(GetText(SpdLCReq, E_MROHAUS8, nRow)) = 0 Then
'                        MsgBox "Freight Bill Amount Cannot be Zero", vbInformation, head
'                        Exit Sub
'                    End If
'                    If val(GetText(SpdLCReq, E_MROHAUS10, nRow)) > val(GetText(SpdLCReq, E_MROHAUS8, nRow)) Then
'                        MsgBox "Freight Approved Amount Cannot be Greater than Bill Amount", vbInformation, head
'                        Exit Sub
'                    End If

                    nSno = nSno + 1
                End If
           Next
          If Opt = "mod" Then
            If FreightBillEntryType = "S" Then
                If MaskEdBox1(3).Text = "__/__/____" Or IsDate(MaskEdBox1(3).Text) = False Then
                    MsgBox "Paid. Date should be Filled", vbInformation, head
                    MaskEdBox1(3).SetFocus
                    Exit Sub
                End If
               ' db.Execute "update RM_FibreTestHD set PaidDate='" & Format(MaskEdBox1(3).Text, "YYYY-mm-dd") & "' Where Divcode='" & Divcode & "' And DocNo=" & adoPrimaryRS("DocNo") & " And Docdt='" & Format(adoPrimaryRS("Docdt"), "yyyy-mm-dd") & "' "

                MsgBox "Record Modified Successfully", vbInformation, head
                 GoTo qry
                Exit Sub

            End If
          End If
        Opt = temp1 = Opt
        Opt = tmp
        Screen.MousePointer = 11
        If Opt = "add" Or Opt = "mod" Then

        Call TotalCalculation


'            If (val(txtfields(25).Text) <> 0) Then
'                If val(txtfields(25).Text) < 0 Then
'                    TSTR1 = MsgBox("Generate Credit Note?  " & val(val(txtfields(25).Text)), vbYesNo, head)
'                    strReasonhead = "Enter Credit Note Reason"
'                Else
'                    TSTR1 = MsgBox("Generate Debit Note? - " & val(txtfields(25).Text), vbYesNo, head)
'                    strReasonhead = "Enter Debit Note Reason"
'                End If
'                If TSTR1 = vbYes Then
'                    If val(txtfields(25).Text) < 0 Then
'                        CREDITFLG = "Y"
'                        DEBITFLG = "N"
'                    Else
'                        DEBITFLG = "Y"
'                        CREDITFLG = "N"
'                    End If
'                Else
'                    DEBITFLG = "N"
'                    CREDITFLG = "N"
'                End If
'            Else
'                DEBITFLG = "N"
'                CREDITFLG = "N"
'            End If

            nTotalAmt = 0
            nTotalQty = 0
            nrecamt = 0
            tmp = Opt
            Opt = ""

         '   txtfields(4).Text = Val(SpdLCReq.MaxRows)
            Opt = tmp

            DB.BeginTrans
            Dim ff As Form
            Set ff = Me

            ''=================
            '' HEADER UPDATION
            ''=================
            adoPrimaryRS("DivCode").value = Divcode


            If Opt = "add" Then
                adoPrimaryRS("DocNo") = newdocno()
            End If
            If MaskEdBox1(0).Text <> "__/__/____" Then
                adoPrimaryRS("Docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            End If

            If MaskEdBox1(1).Text <> "__/__/____" Then
                adoPrimaryRS("Billdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            End If

            
            If MaskEdBox1(6).Text <> "__/__/____" Then
                adoPrimaryRS("lotdt") = Format(MaskEdBox1(6).Text, "yyyy-mm-dd")
            End If
            If MaskEdBox1(4).Text <> "__/__/____" Then
                adoPrimaryRS("arrdt") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            End If
             
                    
                 
            

'            adoPrimaryRS("IssDocno") = Trim(Trim(txtfields(28).Text))
'            adoPrimaryRS("pjvtc") = Trim(Trim(txtfields(27).Text))
            adoPrimaryRS("Billno") = Trim(Trim(txtfields(1).Text))
        

            adoPrimaryRS("Slcode") = Trim(txtfields(7).Text)



     
            adoPrimaryRS("HostID") = Left(HostName, 15)
            If Opt = "add" Then
                adoPrimaryRS("CreatedBy") = usrid
                adoPrimaryRS("CreatedDate") = GetServerDate
            ElseIf Opt = "mod" Then
                adoPrimaryRS("ModifiedBy") = usrid
                adoPrimaryRS("ModifiedDate") = GetServerDate
            End If

            adoPrimaryRS.UpdateBatch adAffectAllChapters

            If Opt = "mod" Then
                DB.Execute "Delete From RM_FibreTestDT Where Divcode='" & Divcode & "' And DocNo=" & adoPrimaryRS("DocNo") & " And Docdt='" & Format(adoPrimaryRS("Docdt"), "yyyy-mm-dd") & "' "
             '   strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & val(txtfields(27).Text) & "' and IssDocno = " & val(txtfields(28).Text) & " and IssDocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'"
'                db.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & val(txtfields(27).Text) & "' and IssDocno = " & val(txtfields(28).Text) & " and IssDocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
'                db.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & val(txtfields(27).Text) & "' and IssDocno = " & val(txtfields(28).Text) & " and IssDocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
'                db.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(txtfields(27).Text) & "' and vocno = " & val(txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
'                Set Rs = New Recordset
'                Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(txtfields(27).Text) & "' and vocno = " & val(txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'", db, adOpenStatic
'                Do While Not Rs.EOF
'                    db.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(txtfields(27).Text) & "' and vocno = " & val(txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' AND GLCODE='" & Rs!glcode & "'")
'                    Rs.MoveNext
'                Loop


            End If

'            Dim nSno As Double
            Dim rsTail As Recordset
            Set rsTail = New Recordset

            rsTail.Open "SELECT Divcode,Docno,Docdt,DOCSNO,LOTNO,LOTDT,Varcode,BaleNO,INVGrssWt,ActGrossWt,GrossWtDiff,NetWt,CommWt,ProductionDate,InvoiceMoiture,MRHOTAIR1,MRHOTAIR2,MRHOTAIRAVG,MROHAUS1,MROHAUS2,MROHAUS3,MROHAUS4,MROHAUS5,MROHAUS6,MROHAUS7,MROHAUS8,MROHAUS9,MROHAUS10,MROHAUS,INVVsHOTAir,InvVsOHAUS,PBaleno FROM RM_FibreTestDT a  WHERE divcode='" & Divcode & "' And 1=2", DB, adOpenStatic, adLockBatchOptimistic

            nSno = 1
            For nRow = 1 To SpdLCReq.MaxRows
                SpdLCReq.Row = nRow
                SpdLCReq.SetActiveCell E_MROHAUS9, nRow
                'If val(GetText(SpdLCReq, E_MROHAUS8, nRow)) <> 0 Then
                    rsTail.AddNew
                    rsTail("DivCode") = Divcode
                    rsTail("DocNo") = adoPrimaryRS("DocNo")
                    rsTail("Docdt") = Format(adoPrimaryRS("Docdt"), "yyyy/MM/dd")
                    rsTail("DocSNo") = nSno
                    rsTail("BaleNO") = val(GetText(SpdLCReq, E_BaleNO, nRow))
                    rsTail("PBaleno") = Trim(GetText(SpdLCReq, E_SBaleNO, nRow))
                   
                    rsTail("MRHOTAIR2") = val(GetText(SpdLCReq, E_MRHOTAIR2, nRow))
                    rsTail("MRHOTAIRAVG") = val(GetText(SpdLCReq, E_MRHOTAIRAVG, nRow))
                    
                    rsTail("MROHAUS") = val(GetText(SpdLCReq, E_MROHAUS, nRow))
                    rsTail("MROHAUS1") = val(GetText(SpdLCReq, E_MROHAUS1, nRow))
                    rsTail("MROHAUS2") = val(GetText(SpdLCReq, E_MROHAUS2, nRow))
                    rsTail("MROHAUS3") = val(GetText(SpdLCReq, E_MROHAUS3, nRow))
                    rsTail("MROHAUS4") = val(GetText(SpdLCReq, E_MROHAUS4, nRow))
                    
                    rsTail("MROHAUS5") = val(GetText(SpdLCReq, E_MROHAUS5, nRow))
                    rsTail("MROHAUS6") = val(GetText(SpdLCReq, E_MROHAUS6, nRow))
                     rsTail("MROHAUS7") = val(GetText(SpdLCReq, E_MROHAUS7, nRow))
                    rsTail("MROHAUS8") = val(GetText(SpdLCReq, E_MROHAUS8, nRow))
                    rsTail("MROHAUS9") = val(GetText(SpdLCReq, E_MROHAUS9, nRow))
                    rsTail("MROHAUS10") = val(GetText(SpdLCReq, E_MROHAUS10, nRow))

                    rsTail("varcode") = Trim(GetText(SpdLCReq, E_VarCode, nRow))
                    rsTail("MRHOTAIR1") = val(GetText(SpdLCReq, E_MRHOTAIR1, nRow))
                    rsTail("INVGrssWt") = val(GetText(SpdLCReq, E_INVGrssWt, nRow))
                    rsTail("ProductionDate") = Format((GetText(SpdLCReq, E_ProductionDate, nRow)), "yyyy/MM/dd")
                    rsTail("InvoiceMoiture") = val(GetText(SpdLCReq, E_InvoiceMoiture, nRow))
                    
                    rsTail("lotdt") = Format((GetText(SpdLCReq, E_LotDate, nRow)), "yyyy/MM/dd")
                    rsTail("lotno") = val(GetText(SpdLCReq, E_LOTNO, nRow))
                    rsTail("GrossWtDiff") = val(GetText(SpdLCReq, E_GrossWtDiff, nRow))
                    rsTail("ActGrossWt") = val(GetText(SpdLCReq, E_ActGrossWt, nRow))
                    
                    

                    rsTail("INVVsHOTAir") = val(GetText(SpdLCReq, E_INVVsHOTAir, nRow))
                    rsTail("CommWt") = val(GetText(SpdLCReq, E_CommWt, nRow))
                    rsTail("NetWt") = val(GetText(SpdLCReq, E_NetWt, nRow))
                    rsTail("InvVsOHAUS") = val(GetText(SpdLCReq, E_InvVsOHAUS, nRow))
                 
                
                    
                    rsTail("MRHOTAIR2") = val(GetText(SpdLCReq, E_MRHOTAIR2, nRow))
                    rsTail("MRHOTAIRAVG") = val(GetText(SpdLCReq, E_MRHOTAIRAVG, nRow))
                    
                    

        
                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Fibre Test Note"
                            TrnLog("Trans_Mod") = Opt
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("Agent_code") = Trim(GetText(SpdLCReq, E_BaleNO, nRow))
                            TrnLog("slcode") = Trim(txtfields(7).Text)
                            TrnLog("CARCODE") = Trim(txtfields(24).Text)


                            If IsDate(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")) = True Then
                                TrnLog("billdate") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
                            End If
                            TrnLog("billno") = Trim(Trim(txtfields(1).Text))

                            TrnLog("netwt") = val(GetText(SpdLCReq, E_MROHAUS4, nRow))
                            TrnLog("docno") = adoPrimaryRS("DocNo")

                            TrnLog("docdt") = Format(adoPrimaryRS("Docdt"), "yyyy-mm-dd")

                            TrnLog("BOENO") = Trim(GetText(SpdLCReq, E_MRHOTAIR2, nRow))
                       
                            TrnLog("Arrno") = val(GetText(SpdLCReq, E_MROHAUS1, nRow))
                            TrnLog("PLCode") = Trim(GetText(SpdLCReq, E_MROHAUS, nRow))
                            TrnLog("pnetwt") = val(GetText(SpdLCReq, E_MROHAUS3, nRow))
                           ' TrnLog("Arrdt") = Format(GetText(SpdLCReq, E_MROHAUS2, nRow), "yyyy/MM/dd")
                            TrnLog("CONTNO") = val(GetText(SpdLCReq, E_ActGrossWt, nRow))
                            TrnLog("CONTDT") = Format(GetText(SpdLCReq, E_GrossWtDiff, nRow), "yyyy/MM/dd")
                            TrnLog("LOTNO") = val(GetText(SpdLCReq, E_LOTNO, nRow))
                            TrnLog("LOTDT") = Format(GetText(SpdLCReq, E_LotDate, nRow), "yyyy/MM/dd")


                            TrnLog("AssAmount") = val(GetText(SpdLCReq, E_TotAssDisc, nRow))
                            TrnLog("Adv_AMT") = val(GetText(SpdLCReq, E_MROHAUS8, nRow))
                            TrnLog("Oth_Amt") = val(GetText(SpdLCReq, E_MROHAUS9, nRow))
                            TrnLog("Frg_Amt") = val(GetText(SpdLCReq, E_MROHAUS10, nRow))
                            TrnLog("LandcostWithTax") = val(GetText(SpdLCReq, E_TotCNDiscRate, nRow))
                            TrnLog("CGSTPER") = val(GetText(SpdLCReq, E_CGSTPER, nRow))
                            TrnLog("CGSTAmt") = val(GetText(SpdLCReq, E_CGSTAmt, nRow))
                            TrnLog("sGSTPER") = val(GetText(SpdLCReq, E_SGSTPER, nRow))
                            TrnLog("sGSTAmt") = val(GetText(SpdLCReq, E_SGSTAmt, nRow))
                            TrnLog("iGSTPER") = val(GetText(SpdLCReq, E_IGSTPER, nRow))
                            TrnLog("iGSTAmt") = val(GetText(SpdLCReq, E_IGSTAmt, nRow))

                            TrnLog.UpdateBatch adAffectAllChapters


                     nSno = nSno + 1
               ' End If
                'Code added on 01-06-2019-----------------------------------
'                If SpdLCReq.MaxRows = nRow Then
'                    If receiptamount > 0 Then
'                        rsTail("receiptamt") = receiptamount
'                    End If
'                Else
'                    rsTail("receiptamt") = GetText(SpdLCReq, E_Value, nRow)
'                End If
                '-----------------------------------------------------------

               rsTail.UpdateBatch adAffectAllChapters

               ' DB.Execute "Update PO_ORDL Set LCQty=ISNULL(LCQty,0)+" & Val(GetText(SpdLCReq, E_MROHAUS9, nRow)) & " Where Divcode='" & divcode & "' And invno=" & Val(GetText(SpdLCReq, E_MROHAUS1, nRow)) & " And invdt='" & Format(GetText(SpdLCReq, E_MROHAUS2, nRow), "yyyy-mm-dd") & "' And INV_TYPE=" & Val(GetText(SpdLCReq, E_MRHOTAIR2, nRow)) & " And invamt='" & Trim(GetText(SpdLCReq, E_Value, nRow)) & "'"

               ' If Not adoSecondaryRS.EOF Then adoSecondaryRS.MoveNext
            Next

        nSno = 1
        Set rsTail = New Recordset
        rsTail.Open "SELECT Divcode,DocNo,Docdt,ContNo,Contdt,Lotno,Lotdt,DOCSNO,MDocno,MDocdate,SUPCD,Varcode,DType,Bill_DRate,PO_DRate,Rate_Diff,Receivable_Amt,Received_Amt,IPADD,Flg from RM_CNReceived where IPADD ='" & LocalIPAdd & "' and divcode='" & Divcode & "' AND 1=2 ", DB, adOpenStatic, adLockBatchOptimistic

        For lRow = 1 To SPD_MDISCDETAILS.MaxRows
               SPD_MDISCDETAILS.Row = lRow
               SPD_MDISCDETAILS.Col = P_Select
            If val(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTReceivedValue, lRow)) > 0 Then
               rsTail.AddNew
                rsTail("DivCode") = Divcode
                rsTail("DocNo") = val(txtfields(2).Text)
                rsTail("DocDt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                rsTail("DocSno") = lRow
                rsTail("SUPCD") = Trim(txtfields(7).Text)
                rsTail("MDocno") = val(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDocno, lRow))
                rsTail("MDocdate") = Format(Trim(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDOCDT, lRow)), "yyyy-mm-dd")
                rsTail("Varcode") = Trim(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTVarcode, lRow))
                rsTail("ContNo") = val(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTContno, lRow))
                rsTail("Contdt") = Format(Trim(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTContdt, lRow)), "yyyy-mm-dd")
                rsTail("Lotno") = val(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTLOTNO, lRow))
                rsTail("Lotdt") = Format(Trim(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTLOTDT, lRow)), "yyyy-mm-dd")
                rsTail("DType") = Trim(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDISCCODE, lRow))
                rsTail("Bill_DRate") = val(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTinvDiscRate, lRow))
                rsTail("PO_DRate") = val(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDRate, lRow))
                rsTail("Rate_Diff") = val(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDiffDiscRate, lRow))
                rsTail("Receivable_Amt") = val(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDValue, lRow))
                rsTail("Received_Amt") = val(GetText(SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTReceivedValue, lRow))
                rsTail("flg") = Trim(GetText(SPD_MDISCDETAILS, SpdDiscType.SPDDTCNFlg, lRow))
                rsTail("IPADD") = LocalIPAdd
             End If
            Next lRow
             rsTail.UpdateBatch adAffectAllChapters


'             db.Execute "update c set c.frtentrapp='Y' from rm_arrival c inner join rm_lot a  on a.ARRNO =c.ARRNO and a.arrdt=c.ARRDATE and a.divcode=c.divcode and a.varcode=c.varcode and a.contnum=c.contno and c.CONTDT=a.Contdate " & _
'                               " and a.SUPCD=c.supcd   where a.divcode='" & Divcode & "' and a.pjno='" & val(GetText(SpdLCReq, E_MROHAUS1, nRow)) & "'  and pjdt='" & Format(GetText(SpdLCReq, E_MROHAUS2, nRow), "yyyy-mm-dd") & "'"


'                Set TrnPURHD = New Recordset
'                TrnPURHD.Open " select DIVCODE,TC,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt,RoundOff,auditflg,TaxAmount,ENTUSRID,ENTDATE, OtherTaxAmt, OthersAmt, AssessableAmt,MODULE,TaxName,Narration,OtherTaxableAmt,AdjustAmt,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER,TCS_Amont,Bill_Type,TDSPER,TDSAMT,TDSCODE,TDS_AssAMT from fa_purhd WHERE 1=2 ", db, adOpenStatic, adLockBatchOptimistic
'                TrnPURHD.AddNew
'                TrnPURHD("DIVCODE") = Divcode
'                TrnPURHD("MODULE") = ModuleNo
'                TrnPURHD("TC") = val(txtfields(27).Text)
'                TrnPURHD("IssDocno") = val(txtfields(28).Text)
'                TrnPURHD("IssDocdt") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
'                TrnPURHD("ENTUSRID") = usrid
'                TrnPURHD("ENTDATE") = Format(Now, "yyyy-mm-dd hh:mm:ss")
'                TrnPURHD("slcode") = Trim(txtfields(7).Text)
'                TrnPURHD("AssessableAmt") = val(txtfields(15).Text)
'                TrnPURHD("TaxName") = Trim(txtfields(10).Text)
'                TrnPURHD("CGSTAMT") = val(txtfields(20).Text)
'                TrnPURHD("SGSTAMT") = val(txtfields(21).Text)
'                TrnPURHD("IGSTAMT") = val(txtfields(22).Text)
'                TrnPURHD("auditflg") = "F"
'                TrnPURHD("TaxAmount") = val(txtfields(6).Text)
'                TrnPURHD("TAXAMT") = val(txtfields(6).Text)
'
'                TrnPURHD("RoundOff") = val(txtfields(23).Text)
'                TrnPURHD("BILLAMT") = val(txtfields(8).Text)
'                TrnPURHD("BILLNO") = Trim(txtfields(1).Text)
'                TrnPURHD("BILLDT") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
'                Narr = "Freight Bill - Bill No. " & val(txtfields(1)) & " Dt. " & MaskEdBox1(1).Text
'                TrnPURHD("Narration") = Trim(Narr)
'
'                TrnPURHD.UpdateBatch adAffectAllChapters
'
''                strSQL = ""
''                strSQL = "INSERT INTO FA_PURDT(DIVCODE,TC,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER)VALUES('" & Divcode & "'," & thistc & "," & thispjno & " ,'" & Format(MaskEdBox1(3).Text, "yyyy-MM-dd") & "',1,'" & thisgl & "','" & a13 & "'," & val(txtfields(50).Text) & "," & Round(val(txtfields(78).Text) / val(txtfields(50).Text), 4) & "," & val(txtfields(7).Text) & ",'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "')"          'IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue")) & ")"
''
'                Set TrnPURHD = New Recordset
'                TrnPURHD.Open " select DIVCODE,TC,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER from fa_purdt WHERE Divcode='" & Divcode & "' and 1=2 ", db, adOpenStatic, adLockBatchOptimistic
'                TrnPURHD.AddNew
'                TrnPURHD("DIVCODE") = Divcode
'
'                TrnPURHD("TC") = val(txtfields(27).Text)
'                TrnPURHD("IssDocno") = val(txtfields(28).Text)
'                TrnPURHD("IssDocdt") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
'                TrnPURHD("PJVSNO") = 1
'                TrnPURHD("AMOUNT") = val(txtfields(15).Text)
'                Set rsGl = New Recordset
'                rsGl.Open "select glcode from fa_tcmas where tc='" & val(txtfields(27).Text) & "'", db, adOpenStatic
'                If Not rsGl.EOF Then
'                    TrnPURHD("GLCODE") = rsGl(0)
'                End If
'                TrnPURHD("NARRATION1") = Trim(Narr)
'                TrnPURHD("CGSTAMT") = val(txtfields(20).Text)
'                TrnPURHD("SGSTAMT") = val(txtfields(21).Text)
'                TrnPURHD("IGSTAMT") = val(txtfields(22).Text)
'                If IGSTFLG = "Y" Then
'                    TrnPURHD("CGSTPER") = val(txtfields(17).Text) / 2
'                    TrnPURHD("SGSTPER") = val(txtfields(17).Text) / 2
'                    TrnPURHD("IGSTPER") = "0"
'                Else
'                    TrnPURHD("IGSTPER") = val(txtfields(17).Text)
'                    TrnPURHD("CGSTPER") = "0"
'                    TrnPURHD("SGSTPER") = "0"
'                End If
'                TrnPURHD.UpdateBatch adAffectAllChapters
'



            Opt = tmp
            DB.CommitTrans


        If "Y" = "N" Then
        Dim frmFa As New frmFaPostingVerification
        frmFa.sTC = val(txtfields(27).Text)
        frmFa.sVocno = val(txtfields(28).Text)
        frmFa.sVocdt = Format(MaskEdBox1(4).Text, "dd/mm/yyyy")
        frmFa.sBillNo = txtfields(1).Text
        frmFa.sBillDt = Format(MaskEdBox1(1).Text, "dd/mm/yyyy")
        frmFa.sTrnType = "PU"
        frmFa.Show vbModal
        If Not frmFa.bolTally Then
           If Opt = "add" Then
            DB.BeginTrans
            Set frs = New Recordset
            frs.Open "select fainstal from rm_param", DB
            If frs(0) = "Y" Then

         

'                If Opt = "add" Or Opt = "mod" Then
'                    For I = 1 To spdVar.MaxRows
'                        db.Execute ("UPDATE rm_lot SET pjtc = NULL, pjno = NULL, pjdt = NULL,purpreparedby=NULL ,purpredate=NULL WHERE opflg='N' and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, I)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, I), "yyyy-mm-dd") & "' and varcode='" & GetText(spdVar, IVarcode, I) & "'")
'                       '***********************Deletion********************
'                    Next
'                End If


                If Opt = "add" Or Opt = "mod" Then
                    MsgBox "Record(s) Deleted", vbInformation, head
                End If

            End If

            DB.CommitTrans

            Opt = ""
            Call query_mode(0, 0)
            Exit Sub
           End If
        End If
    End If

            If Opt = "add" Then
                MsgBox "Fibre Test Result Entry for your transaction is " & adoPrimaryRS("DocNo"), vbInformation, head
            Else
                MsgBox "Record Modified Successfully", vbInformation, head
            End If

        End If
        If Opt = "del" Then     'del

            If MsgBox("Are You Sure You want to Delete this Record ?", vbYesNo, head) = vbYes Then
                DB.BeginTrans


            nSno = 1
            For nRow = 1 To SpdLCReq.MaxRows
                SpdLCReq.Row = nRow

                If val(GetText(SpdLCReq, E_MROHAUS8, nRow)) <> 0 Then

                      DB.Execute "update c set c.frtentrapp='N' from rm_arrival c inner join rm_lot a  on a.ARRNO =c.ARRNO and a.arrdt=c.ARRDATE and a.divcode=c.divcode and a.varcode=c.varcode and a.contnum=c.contno and c.CONTDT=a.Contdate " & _
                               " and a.SUPCD=c.supcd   where a.divcode='" & Divcode & "' and a.pjno='" & val(GetText(SpdLCReq, E_MROHAUS1, nRow)) & "'  and pjdt='" & Format(GetText(SpdLCReq, E_MROHAUS2, nRow), "yyyy-mm-dd") & "'"
                              Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Freight Bill Entry"
                            TrnLog("Trans_Mod") = Opt
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("Agent_code") = Trim(GetText(SpdLCReq, E_BaleNO, nRow))
                            TrnLog("slcode") = Trim(txtfields(7).Text)
                            TrnLog("CARCODE") = Trim(txtfields(24).Text)


                            If IsDate(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")) = True Then
                                TrnLog("billdate") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
                            End If
                            TrnLog("billno") = Trim(Trim(txtfields(1).Text))

                            TrnLog("netwt") = val(GetText(SpdLCReq, E_MROHAUS4, nRow))
                            TrnLog("docno") = adoPrimaryRS("DocNo")

                            TrnLog("docdt") = Format(adoPrimaryRS("Docdt"), "yyyy-mm-dd")


                            TrnLog("BOENO") = Trim(GetText(SpdLCReq, E_MRHOTAIR2, nRow))
                            TrnLog("BOE_DT") = Format(GetText(SpdLCReq, E_MRHOTAIRAVG, nRow), "yyyy/MM/dd")
                            TrnLog("Arrno") = val(GetText(SpdLCReq, E_MROHAUS1, nRow))
                            TrnLog("PLCode") = Trim(GetText(SpdLCReq, E_MROHAUS, nRow))
                            TrnLog("pnetwt") = val(GetText(SpdLCReq, E_MROHAUS3, nRow))
                            TrnLog("Arrdt") = Format(GetText(SpdLCReq, E_MROHAUS2, nRow), "yyyy/MM/dd")


                            TrnLog("AssAmount") = val(GetText(SpdLCReq, E_MROHAUS5, nRow))
                            TrnLog("Adv_AMT") = val(GetText(SpdLCReq, E_MROHAUS8, nRow))
                            TrnLog("Oth_Amt") = val(GetText(SpdLCReq, E_MROHAUS9, nRow))
                            TrnLog("Frg_Amt") = val(GetText(SpdLCReq, E_MROHAUS10, nRow))
                            TrnLog("LandcostWithTax") = val(GetText(SpdLCReq, E_TotCNDiscRate, nRow))

                            TrnLog("CGSTPER") = val(GetText(SpdLCReq, E_VarCode, nRow))
                            TrnLog("CGSTAmt") = val(GetText(SpdLCReq, E_GrossWtDiff, nRow))
                            TrnLog("sGSTPER") = val(GetText(SpdLCReq, E_InvoiceMoiture, nRow))
                            TrnLog("sGSTAmt") = val(GetText(SpdLCReq, E_MRHOTAIR1, nRow))
                            TrnLog("iGSTPER") = val(GetText(SpdLCReq, E_LotDate, nRow))
                            TrnLog("iGSTAmt") = val(GetText(SpdLCReq, E_LOTNO, nRow))

                            TrnLog.UpdateBatch adAffectAllChapters

                     nSno = nSno + 1
                End If
             Next
                DB.Execute ("DELETE FROM RM_FibreTestDT WHERE Divcode = '" & Divcode & "'  AND DocNo =  " & val(txtfields(2).Text) & " and Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
                DB.Execute ("DELETE FROM RM_FibreTestHD WHERE DivCode = '" & Divcode & "' And DocNo =  " & val(txtfields(2).Text) & " and Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
                
'

                DB.CommitTrans
                MsgBox "Record Deleted Successfully", vbInformation, head
            Else
               GoTo qry
            End If
            Opt = "del"
        End If

        ' Return to query mode
qry:       Call query_mode(0, 0)
        'Calling newform procedure to check for add,mod,del permissions of users
          Call NEWFORM1(BUTTON, GSNO)
         If FreightBillEntryType = "S" Then
            BUTTON(0).Enabled = False
            BUTTON(2).Enabled = False
        End If

Case 10


    If Opt = "add" Or Opt = "mod" Or Opt = "del" Or Opt = "fnd" Then
        If MsgBox("Do you want to cancel?", vbCritical + vbYesNo, head) = vbNo Then Exit Sub
    End If
    Frame8.Visible = False
    Buttonframe.Enabled = True

    tmp = Opt
    desc.Caption = "Query"
    Screen.MousePointer = 11

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

    'To return default settings - i.e query mode
    Screen.MousePointer = 0
    Call query_mode(0, 0)
    Label4.Visible = False
    Label5.Visible = False
    Frame1.Visible = True
    SpdLCReq.Visible = True
    'calling cancl procedure from module
    'Call cancl(BUTTON, 11)
    Call NEWFORM1(BUTTON, GSNO)
    If FreightBillEntryType = "S" Then
        BUTTON(0).Enabled = False
        BUTTON(2).Enabled = False
    End If


Case 11
    'EXIT
    I = MsgBox("Do You Want to Exit?", vbCritical + vbYesNo, head)
    If I = vbYes Then
        Unload Me
    End If

Case 13

    Dim CryStkSta As clsCrystal
        Set CryStkSta = New clsCrystal
        Set CryStkSta.cryRept = Cry_RMICNReceviable
        CryStkSta.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode
        CrystalReport1.ParameterFields(1) = "@docno;" & Trim(txtfields(2).Text)
        CrystalReport1.ParameterFields(2) = "@docdt;" & Format(MaskEdBox1(0), "YYYY-MM-DD")

        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0

End Select
Exit Sub
er1:
If Err = -2147467259 Then
 MsgBox Err.Description, vbCritical, head

    If Mid$(Err.Description, InStr(Err.Description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  tc " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head + "Save Message"
    End If
ElseIf Err = -2147217864 Then
     Resume Next
Else
    Resume Next
End If
Opt = tmp
n1:
            Opt = tmp
            Exit Sub

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : BUTTON_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub

Private Sub ChkSelectAll_Click()
On Error GoTo Errh
For nRow = 1 To spdPO.MaxRows
    spdPO.Row = nRow
    spdPO.Col = P_Select
    If ChkSelectAll.value = 1 Then
        spdPO.value = 1
    Else
        spdPO.value = 0
    End If
Next

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : ChkSelectAll_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub cmdItemSelect_Click()
Dim Ltemplrs As New ADODB.Recordset
Dim lRow As Long
Dim lcount As Long
Dim Ltemplrs1 As New Recordset
Dim rstItem As New ADODB.Recordset

On Error GoTo Errh

        ''''''''Movement Flag = "N" then We have to Load From Po List, Else We have to load From Material Inward
        lcount = 0

        spdPO.Col = P_Select
        For nRow = 1 To spdPO.MaxRows
            spdPO.Row = nRow
            spdPO.Col = P_Select
            If spdPO.value = 1 Then
                lcount = lcount + 1
            End If
        Next

        If lcount = 0 Then
            MsgBox "Please Select item from the list", vbInformation, head
            Exit Sub
            SpdLCReq.Visible = True
            Screen.MousePointer = 0
            Buttonframe.Enabled = True
            BUTTON(9).Enabled = True
            Call query_mode(0, 0)
            Call NEWFORM1(BUTTON, GSNO)
            If FreightBillEntryType = "S" Then
                BUTTON(0).Enabled = False
                BUTTON(2).Enabled = False
            End If

            Exit Sub
        End If
        Frame8.Visible = False
        SpdLCReq.Visible = False

        Buttonframe.Enabled = True
        BUTTON(9).Enabled = False

'        If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
'        Do Until adoSecondaryRS.EOF
'            adoSecondaryRS.Delete
'            adoSecondaryRS.MoveNext
'        Loop
'
'        Dim nSno As Double
        Dim sRefNo As String
        nSno = 1
        With SpdLCReq
            .MaxRows = 0
            For lRow = 1 To spdPO.MaxRows
               spdPO.Row = lRow
               spdPO.Col = P_Select
               If spdPO.value = 1 Then
                    .MaxRows = .MaxRows + 1
                    .Row = .MaxRows
                    .SetText E_TC, .Row, 1
                    .SetText E_DOCSNO, .Row, nSno
'                    .SetText E_MROHAUS7, .Row, Trim(GetText(spdPO, P_ContainerNo, lRow))
'                    .SetText E_Remarks, .Row, Trim(GetText(spdPO, P_SupplierName, lRow))
                    .SetText E_InvoiceMoiture, .Row, Trim(GetText(spdPO, P_INVMOI, lRow))
                    .SetText E_GrossWtDiff, .Row, Trim(GetText(spdPO, P_DiffWt, lRow))

                    .SetText E_ActGrossWt, .Row, Trim(GetText(spdPO, P_GrossWtACT, lRow))
                   
                    .SetText E_CommWt, .Row, GetText(spdPO, P_CommWt, lRow)
                
                    .SetText E_NetWt, .Row, GetText(spdPO, P_FavaourableWt, lRow)
                    .SetText E_BaleNO, .Row, GetText(spdPO, P_BaleNO, lRow)

     
                    .SetText E_VarCode, .Row, GetText(spdPO, P_Varcode, lRow)
                   
                    .SetText E_INVGrssWt, .Row, Trim(GetText(spdPO, P_INVGrossWt, lRow))
                  
                    .SetText E_LOTNO, .Row, Trim(GetText(spdPO, P_Lotno, lRow))
                    .SetText E_LotDate, .Row, Trim(GetText(spdPO, P_LotDate, lRow))
                    .SetText E_SBaleNO, .Row, Trim(GetText(spdPO, P_SBaleNO, lRow))
'                      .SetText E_InvoiceMoiture, .Row, Trim(GetText(spdPO, P_INVGrossWt, lRow))
'                    Set Lrs = New Recordset
'                    Lrs.Open "select *from VW_RM_FibreDisc_Receivable where pjdt<='" & Format(pdate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and supcd='" & Trim(txtfields(7).Text) & "' and pjdt='" & Format(Trim(GetText(spdPO, P_FavaourableWt, lRow)), "yyyy-mm-dd") & "' and pjno='" & val(GetText(spdPO, P_INVMOI, lRow)) & "' and lotno='" & val(GetText(spdPO, P_Lotno, lRow)) & "' and lotdt='" & Format(Trim(GetText(spdPO, P_LotDate, lRow)), "yyyy-mm-dd") & "'   order by SLNAME,pjdt,pjno", db, adOpenStatic, 1
'                    If Lrs.RecordCount > 0 Then
'                        .SetText E_MROHAUS8, .Row, Trim(Lrs("RATECY"))
'                        .SetText E_MROHAUS9, .Row, Trim(Lrs("bill_rate"))
'                        .SetText E_MROHAUS10, .Row, Trim(Lrs("Basic_Rate_Diff"))
'                        .SetText E_InvoiceMoiture, .Row, Trim(Lrs("docdate"))
'                        .SetText E_MRHOTAIR1, .Row, Trim(Lrs("docno"))
'                        .SetText E_VarCode, .Row, Trim(Lrs("varcode"))
'
'                    End If
                    nLandCost = 0
                    nSno = nSno + 1
                End If

            Next lRow
        End With
        Tmplrow = 0
       ' txtfields(5).Enabled = True
        txtfields(7).Enabled = True
         lSuppSel = False
        nTotalAmt = 0
        nTotalHrs = 0
        nTotalPerson = 0
        nTotalKgs = 0
        nTotalPacks = 0
        FreightAmtBill = 0
       ' nTotalPacks = 0
        tmp = Opt
        Opt = ""
        With SpdLCReq
        For nRow = 1 To .MaxRows
            .Row = nRow
            If val(GetText(SpdLCReq, E_MROHAUS1, nRow)) > 0 Then

                nTotalPacks = nTotalPacks + GetText(SpdLCReq, E_MROHAUS3, nRow)
               ' nTotalHrs = nTotalHrs + GetText(SpdLCReq, E_VarCode, nRow)
                nTotalPerson = nTotalPerson + GetText(SpdLCReq, E_t, nRow)
                nTotalKgs = nTotalKgs + GetText(SpdLCReq, E_MROHAUS4, nRow)
                FreightAmtBill = FreightAmtBill + val(GetText(SpdLCReq, E_MROHAUS9, nRow))
            End If
        Next
        End With

        txtfields(5).Text = Format(Round(val(FreightAmtBill), 2), "0.00")

        txtfields(13).Text = Format(Round(val(nTotalPacks), 0), "0")
        txtfields(12).Text = Format(val(nTotalKgs), "0.000")
      '  txtfields(4).Text = Val(SpdLCReq.MaxRows)
        Opt = tmp

        ''Proforma Invoice No
        ''txtFields(13).Text = Trim(sRefNo)

        ''================================================================================
        ''Dont Touch This Coding, Otherwise Alternate Product Loading Problem may Araise
        ''================================================================================

        ''================================================================================

       ' If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst

    If lcount = 0 Then
        MsgBox "Item not Yet Selected.", vbOKOnly + vbDefaultButton1, head
    End If

    On Error Resume Next

    SpdLCReq.Visible = True
    BUTTON(9).Enabled = True
    txtfields(7).SetFocus

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : cmdItemSelect_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub

Private Sub cmdItemSelectClose_Click()
On Error GoTo Errh

    Call BUTTON_Click(10)

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : cmdItemSelectClose_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub Command1_Click()
 On Error GoTo openconnection_Error
If Opt = "add" Or Opt = "mod" Then
Dim strNewFile As String

     Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMI")) Then
        fso.CreateFolder (App.Path & "\RMI")
    End If

    strNewFile = ""

    If Not (fso.FolderExists(App.Path & "\RMI\RMFreightMD_Approval" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMI\RMFreightMD_Approval" & CustID)

    End If

    ' display Common Dialog and choose a file
    CommonDialog1.ShowOpen
    strNewFile = CommonDialog1.FileTitle
    Text1.Text = CommonDialog1.FileName
    txtfields(19).Text = strNewFile
    If Len(Trim(txtfields(19).Text)) > 40 Then
        MsgBox "File Name should be 40 character", vbInformation, head
        Exit Sub
    End If
    FileEXT = Trim(Mid(CommonDialog1.FileName, InStr(3, CommonDialog1.FileName, "."), Len(CommonDialog1.FileName)))




    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMI\RMFreightMD_Approval" & CustID & "\" & Divcode & "-DocNo-" & Trim(txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & strNewFile
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
        If MsgBox("MD Scan Copy Already Exists!!! Do you want to override?", vbYesNo, head) = vbNo Then Exit Sub

    End If

  If strNewFile <> "" Then

    Dim myPath As String
    myPath = strNewFile
    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
    FileCopy strNewFile, sFilePath ' App.Path & "\RMFreightMD_Approval" & CustID & "\" & Divcode & "-" & Trim(Txtfields(8).Text) + "-" + Trim(Format(MaskEdBox1(2).Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) + "--" & strNewFile
   End If
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"

End Sub

Private Sub Command2_Click()
Dim startpath As String
Dim sTopic As String
Dim sFile As String
Dim sParams As Variant
Dim sDirectory As Variant
sTopic = "Open"
sParams = 0&
sDirectory = 0&

Set fso = New FileSystemObject
If Opt = "" Or Opt = "mod" Or Opt = "fnd" Or Opt = " " Or Opt = "add" Then
    If Combo2.Text = "Purchase Bill" Then
        sFilePath = App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-RM Purchase Bill-" & Trim(GetText(SpdLCReq, E_MROHAUS1, 1)) + " DT-" + Trim(Format(Trim(GetText(SpdLCReq, E_MROHAUS2, SpdLCReq.ActiveRow)), "dd-mm-yy")) + "-" + Left(Trim(GetText(SpdLCReq, E_Remarks, SpdLCReq.ActiveRow)), 15) & ".pdf"
        sFile = sFilePath
        If fso.FileExists(sFilePath) Then
        Else
        MsgBox "ERP Purchase Bill Copy Not Found", vbInformation, head
        Exit Sub
        End If
        Call RunShellExecute(sTopic, sFile, sParams, sDirectory, 1)
    ElseIf Combo2.Text = "Transporter Bill" Then
        sFilePath = App.Path & "\RMI\RMFreightTransporterBill" & CustID & "\" & Divcode & "-DocNo-" & Trim(txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & Trim(txtfields(122).Text)
        sFile = sFilePath
        If fso.FileExists(sFilePath) Then
        Else
            MsgBox "Transporter Bill Copy Not Found", vbInformation, head
        Exit Sub
        End If
        Call RunShellExecute(sTopic, sFile, sParams, sDirectory, 1)
    ElseIf Combo2.Text = "MD Approved" Then
        sFilePath = App.Path & "\RMI\RMFreightMD_Approval" & CustID & "\" & Divcode & "-DocNo-" & Trim(txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & Trim(txtfields(19).Text)
        sFile = sFilePath
        If fso.FileExists(sFilePath) Then
        Else
            MsgBox "MD Approved Copy Not Found", vbInformation, head
            Exit Sub
        End If
        Call RunShellExecute(sTopic, sFile, sParams, sDirectory, 1)
    ElseIf Combo2.Text = "Supplier Bill" Then
        Set FNRs = New Recordset
        FNRs.Open "select distinct supfilename from rm_lot where divcode='" & Divcode & "' and pjno='" & Trim(GetText(SpdLCReq, E_MROHAUS1, SpdLCReq.ActiveRow)) & "' and pjdt='" & Trim(Format(Trim(GetText(SpdLCReq, E_MROHAUS2, SpdLCReq.ActiveRow)), "yyyy-mm-dd")) & "'", DB, adOpenStatic
        If Not FNRs.EOF Then
            sFilePath = App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(GetText(SpdLCReq, E_MROHAUS1, SpdLCReq.ActiveRow)) + "-" + Trim(Format(Trim(GetText(SpdLCReq, E_MROHAUS2, SpdLCReq.ActiveRow)), "dd-mm-yy")) + "-" + Left(Trim(GetText(SpdLCReq, E_Remarks, SpdLCReq.ActiveRow)), 4) + "--" & FNRs(0)
        Else
            sFilePath = ""
        End If
        sFile = sFilePath
        If fso.FileExists(sFilePath) Then
        Else
            MsgBox "Supplier Bill Copy Not Found", vbInformation, head
            Exit Sub
        End If
        Call RunShellExecute(sTopic, sFile, sParams, sDirectory, 1)
    End If
End If

End Sub

Private Sub Command3_Click()
Dim Ltemplrs As New ADODB.Recordset
Dim lRow As Long
Dim lcount As Long
Dim Ltemplrs1 As New Recordset
Dim rstItem As New ADODB.Recordset
    Frame8.Visible = False
On Error GoTo Errh


        ''''''''Movement Flag = "N" then We have to Load From Po List, Else We have to load From Material Inward
        lcount = 0

        SPDDiscTypeDet.Col = P_Select
        For nRow = 1 To spdPO.MaxRows
            SPDDiscTypeDet.Row = nRow
            SPDDiscTypeDet.Col = P_Select
'            If val(GetText(SPDDiscTypeDet, P_PACKNO, nRow)) = 0 Then
'                MsgBox "Pack No should be greater than Zero", vbInformation, head
'                Frame8.Visible = True
'                Exit Sub
'            End If
'             If val(GetText(SPDDiscTypeDet, SPDDTReceivedValue, nRow)) = 0 Then
'                MsgBox "Netwt should be greater than Zero", vbInformation, head
'                Frame8.Visible = True
'                Exit Sub
'            End If


'            If Trim(GetText(SPDDiscTypeDet, P_ITEMCode, nRow)) <> "" And val(GetText(SPDDiscTypeDet, P_PACKNO, nRow)) > 0 And val(GetText(SPDDiscTypeDet, P_NETWt, nRow)) > 0 Then
'                lcount = lcount + 1
'            End If
        Next

'        If lcount = 0 Then
'            MsgBox "Please Enter Pack Details ", vbInformation, head
'            Exit Sub
'            SpdOrdDetail.Visible = True
'            Screen.MousePointer = 0
'            Buttonframe.Enabled = True
'            BUTTON(9).Enabled = True
''            Call Query_mode(0, 0)
''            Call NEWFORM1(BUTTON, GSNo)
'            Exit Sub
'        End If
        DB.Execute "Delete from RM_CNReceivedtxn where IPADD ='" & LocalIPAdd & "'  and divcode='" & Divcode & "' and Docdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and DOCNO='" & val(txtfields(2).Text) & "' and lotno='" & val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTLOTNO, SPDDiscTypeDet.ActiveRow)) & "' and lotdt='" & Format(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTLOTDT, SPDDiscTypeDet.ActiveRow), "yyyy-mm-dd") & "' AND contdt='" & Format(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTContdt, SPDDiscTypeDet.ActiveRow), "yyyy-mm-dd") & "' AND contno='" & val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTContno, SPDDiscTypeDet.ActiveRow)) & "' AND varcode='" & Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, SPDDiscTypeDet.ActiveRow)) & "'"

        Dim nSno As Double
        Dim sRefNo As String
        nSno = 1
        Set rsTail = New Recordset
        rsTail.Open "SELECT Divcode,DocNo,Docdt,ContNo,Contdt,Lotno,Lotdt,MDocno,MDocdate,SUPCD,Varcode,DType,Bill_DRate,PO_DRate,Rate_Diff,Receivable_Amt,Received_Amt,IPADD,Flg from RM_CNReceivedTXN where IPADD ='" & LocalIPAdd & "' and divcode='" & Divcode & "' AND 1=2 ", DB, adOpenStatic, adLockBatchOptimistic

        For lRow = 1 To SPDDiscTypeDet.MaxRows
               SPDDiscTypeDet.Row = lRow
               SPDDiscTypeDet.Col = P_Select
              ' If Trim(GetText(spdPO, P_ItemCode, lRow)) <> "" And val(GetText(spdPO, P_PACKNO, lRow)) > 0 And val(GetText(spdPO, P_NETWt, lRow)) > 0 Then
               rsTail.AddNew
                rsTail("DivCode") = Divcode
                rsTail("DocNo") = val(txtfields(2).Text)
                rsTail("DocDt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
               ' rsTail("DocSno") = lRow
                rsTail("SUPCD") = Trim(txtfields(7).Text)
                rsTail("MDocno") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDocno, lRow))
                rsTail("MDocdate") = Format(Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDOCDT, lRow)), "yyyy-mm-dd")
                rsTail("Varcode") = Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, lRow))

                rsTail("ContNo") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTContno, lRow))
                rsTail("Contdt") = Format(Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTContdt, lRow)), "yyyy-mm-dd")
                rsTail("Lotno") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTLOTNO, lRow))
                rsTail("Lotdt") = Format(Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTLOTDT, lRow)), "yyyy-mm-dd")

                rsTail("DType") = Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDISCCODE, lRow))
                rsTail("Bill_DRate") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTinvDiscRate, lRow))
                rsTail("PO_DRate") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDRate, lRow))

                rsTail("Rate_Diff") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDiffDiscRate, lRow))
                rsTail("Receivable_Amt") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDValue, lRow))
                rsTail("Received_Amt") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTReceivedValue, lRow))

                rsTail("flg") = Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTCNFlg, lRow))
                rsTail("IPADD") = LocalIPAdd


              '  End If
            Next lRow
       rsTail.UpdateBatch adAffectAllChapters

    Set RsChk = New Recordset
    RsChk.Open "select (Receivable_Amt ) Receivable_Amt,(Received_Amt ) Received_Amt ,b.description from RM_CNReceivedtxn  A INNER JOIN RM_DiscountType B ON B.CODE=A.DType  where IPADD ='" & LocalIPAdd & "'  and divcode='" & Divcode & "' and Docdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and DOCNO='" & val(txtfields(2).Text) & "' and lotno='" & val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTLOTNO, SPDDiscTypeDet.ActiveRow)) & "' and lotdt='" & Format(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTLOTDT, SPDDiscTypeDet.ActiveRow), "yyyy-mm-dd") & "' AND contdt='" & Format(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTContdt, SPDDiscTypeDet.ActiveRow), "yyyy-mm-dd") & "' AND contno='" & val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTContno, SPDDiscTypeDet.ActiveRow)) & "' AND varcode='" & Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, SPDDiscTypeDet.ActiveRow)) & "' and Received_Amt >Receivable_Amt ", DB, adOpenStatic

'    RsChk.Open "select isnull(count(Pack_NO),0) Pack_NO,Pack_NO from Ig_TMPReceiptPacks where IPADD ='" & LocalIPAdd & "' and Docdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and DOCNO='" & val(txtfields(2).Text) & "'  and divcode='" & Divcode & "' AND ITEMCODE='" & Trim(GetText(SpdOrdDetail, eORDDtls.E_ItemCode, SpdOrdDetail.ActiveRow)) & "' group by Pack_NO ", db, adOpenStatic
    If Not RsChk.EOF Then
        If RsChk(0) > 1 Then
            MsgBox "Received Amount cannot be greater than Receivable Amount : Credit Note " + CStr(RsChk(2)), vbInformation, head
            FrameDiscType.Visible = True
            Exit Sub
        End If
    End If
    Set RsChk = New Recordset
    RsChk.Open "select isnull(SUM(Receivable_Amt ),0) Receivable_Amt,isnull(SUM(Received_Amt ),0) Received_Amt,isnull(sum(Rate_Diff),0) Rate_Diff from RM_CNReceivedtxn where IPADD ='" & LocalIPAdd & "'  and divcode='" & Divcode & "' and Docdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and DOCNO='" & val(txtfields(2).Text) & "' and lotno='" & val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTLOTNO, SPDDiscTypeDet.ActiveRow)) & "' and lotdt='" & Format(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTLOTDT, SPDDiscTypeDet.ActiveRow), "yyyy-mm-dd") & "' AND contdt='" & Format(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTContdt, SPDDiscTypeDet.ActiveRow), "yyyy-mm-dd") & "' AND contno='" & val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTContno, SPDDiscTypeDet.ActiveRow)) & "' AND varcode='" & Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, SPDDiscTypeDet.ActiveRow)) & "'", DB, adOpenStatic
    If Not RsChk.EOF Then
        SpdLCReq.SetText E_TotCNDiscValue, SpdLCReq.ActiveRow, RsChk.Fields(1)
        SpdLCReq.SetText E_InvVsOHAUS, SpdLCReq.ActiveRow, RsChk.Fields(0)
        SpdLCReq.SetText E_TotCNDiscRate, SpdLCReq.ActiveRow, RsChk.Fields(2)
        
    End If
'    Set RsChk = New Recordset
'    RsChk.Open "select isnull(sum(NETWT),0) NETWT,isnull(sum(GrossWt),0) GrossWt,isnull(sum(TareWt),0) TareWt,isnull(count(Pack_NO),0) Pack_NO from Ig_TMPReceiptPacks where IPADD ='" & LocalIPAdd & "' and Docdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and DOCNO='" & val(txtfields(2).Text) & "' and PDocSno='" & val(GetText(SpdOrdDetail, eORDDtls.E_DOCSNO, SpdOrdDetail.ActiveRow)) & "' and SizeinCM='" & val(GetText(SpdOrdDetail, eORDDtls.E_SIZEINCM, SpdOrdDetail.ActiveRow)) & "' AND  SizeInInch='" & val(GetText(SpdOrdDetail, eORDDtls.E_SIZEININCH, SpdOrdDetail.ActiveRow)) & "' and divcode='" & Divcode & "' AND ITEMCODE='" & Trim(GetText(SpdOrdDetail, eORDDtls.E_ItemCode, SpdOrdDetail.ActiveRow)) & "'", db, adOpenStatic
'    If Not RsChk.EOF Then
'        If RsChk(0) <> val(GetText(SpdOrdDetail, eORDDtls.E_NetWt, SpdOrdDetail.ActiveRow)) Then
'            MsgBox "Net Weight not equal", vbInformation, head
'            Frame8.Visible = True
'            Exit Sub
'        End If
'        If RsChk(1) <> val(GetText(SpdOrdDetail, eORDDtls.E_grosswt, SpdOrdDetail.ActiveRow)) Then
'            MsgBox "Gross Weight not equal", vbInformation, head
'            Frame8.Visible = True
'            Exit Sub
'        End If
'        If RsChk(2) <> val(GetText(SpdOrdDetail, eORDDtls.E_TareWt, SpdOrdDetail.ActiveRow)) Then
'            MsgBox "Tare Weight not equal", vbInformation, head
'            Frame8.Visible = True
'            Exit Sub
'        End If
'        If RsChk(3) <> val(GetText(SpdOrdDetail, eORDDtls.E_TotPacks, SpdOrdDetail.ActiveRow)) Then
'            MsgBox "Total Bale not equal", vbInformation, head
'            Frame8.Visible = True
'            Exit Sub
'        End If
'
'    End If



    Call SETDISCOUNTHead
    Set adoSecondaryRS1 = New Recordset
    adoSecondaryRS1.Open "SELECT Divcode,DocNo,Docdt,ContNo,Contdt,Lotno,Lotdt,MDocno,MDocdate,SUPCD,Varcode,DType,Bill_DRate,PO_DRate,Rate_Diff,Receivable_Amt,Received_Amt,IPADD,B.DESCRIPTION,a.Flg from RM_CNReceivedTXN A INNER JOIN RM_DiscountType B ON B.CODE=A.DType where IPADD ='" & LocalIPAdd & "' and a.DivCode='" & Divcode & "'  And docno = " & val(txtfields(2).Text) & " and Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' ORDER BY CONTNO,CONTDT,LOTNO,LOTDT", DB, adOpenStatic, adLockBatchOptimistic
    RW = 1
     With SPD_MDISCDETAILS
        If adoSecondaryRS1.RecordCount > 0 Then adoSecondaryRS1.MoveFirst
        .MaxRows = 0
        Do While Not adoSecondaryRS1.EOF
            .MaxRows = .MaxRows + 1
            r1 = .MaxRows
            .SetText M_SPDDTSNO, r1, r1
            .SetText M_SPDDTContno, r1, adoSecondaryRS1.Fields("CONTNO")
            .SetText M_SPDDTContdt, r1, Format(adoSecondaryRS1.Fields("CONTDT"), "dd/mm/yyyy")
            .SetText M_SPDDTLOTNO, r1, adoSecondaryRS1.Fields("lotno")
            .SetText M_SPDDTLOTDT, r1, Format(adoSecondaryRS1.Fields("lotdt"), "dd/mm/yyyy")
            .SetText M_SPDDTDocno, r1, adoSecondaryRS1.Fields("mdocno")
            .SetText M_SPDDTDOCDT, r1, Format(adoSecondaryRS1.Fields("MDocdate"), "dd/mm/yyyy")
            .SetText M_SPDDTVarcode, r1, adoSecondaryRS1.Fields("varcode")
            .SetText M_SPDDTDISCCODE, r1, adoSecondaryRS1.Fields("DType")
            .SetText M_SPDDTDISCDESC, r1, adoSecondaryRS1.Fields("Description")
            .SetText M_SPDDTinvDiscRate, r1, adoSecondaryRS1.Fields("Bill_DRate")
            .SetText M_SPDDTDRate, r1, adoSecondaryRS1.Fields("PO_DRate")
            .SetText M_SPDDTDiffDiscRate, r1, adoSecondaryRS1.Fields("Rate_Diff")
            .SetText M_SPDDTDValue, r1, adoSecondaryRS1.Fields("Receivable_Amt")
            .SetText M_SPDDTReceivedValue, r1, adoSecondaryRS1.Fields("Received_Amt")
            .SetText M_SPDDTCNFlg, r1, adoSecondaryRS1.Fields("flg")

            RW = RW + 1
            adoSecondaryRS1.MoveNext
         Loop
     End With

'     Set RsChk = New Recordset
'    RsChk.Open "select isnull(sum(NETWT),0) NETWT,isnull(sum(GrossWt),0) GrossWt,isnull(sum(TareWt),0) TareWt,isnull(count(Pack_NO),0) Pack_NO from Ig_TMPReceiptPacks where IPADD ='" & LocalIPAdd & "' and Docdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and DOCNO='" & val(txtfields(2).Text) & "' and divcode='" & Divcode & "' ", db, adOpenStatic
'    If Not RsChk.EOF Then
'
'        txtfields(12).Text = Format(RsChk(0), "#0.000")
'        txtfields(9).Text = Format(RsChk(1), "#0.000")
'        txtfields(11).Text = Format(RsChk(2), "#0.000")
'        txtQty.Text = Format(RsChk(3), "#0")
'    End If
    FrameDiscType.Visible = False
    Call TotalCalculation
'
'    On Error Resume Next
'
'    SpdOrdDetail.Visible = True
'    SpdOrdDetail.Col = eORDDtls.E_Tax_Code
'    SpdOrdDetail.SetFocus
'    BUTTON(9).Enabled = True
'    'txtfields(3).SetFocus

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : cmdItemSelect_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
'SpdOrdDetail.Visible = True
End Sub

Private Sub Command4_Click()
FrameDiscType.Visible = False

End Sub

Private Sub DTPicker3_CloseUp()
MaskEdBox1(2).Text = Format(DTPicker3.value, "dd/MM/yyyy")
txtfields(3).SetFocus
End Sub
Private Sub DTPicker1_CloseUp()
MaskEdBox1(0).Text = Format(DTPicker1.value, "dd/MM/yyyy")
End Sub
Private Sub DTPicker2_CloseUp()
MaskEdBox1(1).Text = Format(DTPicker2.value, "dd/MM/yyyy")
MaskEdBox1(1).SetFocus

End Sub

Private Sub DTPicker2_LostFocus()
On Error GoTo Errh
If (MaskEdBox1(1).Enabled) Then
    If Not (IsDate(MaskEdBox1(1).Text)) Then
        MsgBox "Please Enter valid Date", vbInformation, head
        MaskEdBox1(1).SetFocus
    ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(0).Text) Then
        MsgBox "Bill Date must be earlier or equal to Document Date", vbInformation, head
        MaskEdBox1(1).SetFocus
    End If
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : DTPicker1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub DTPicker4_CloseUp()
MaskEdBox1(3).Text = Format(DTPicker4.value, "dd/MM/yyyy")
MaskEdBox1(3).SetFocus
End Sub
Private Sub DTPicker4_LostFocus()
On Error GoTo Errh
If (MaskEdBox1(3).Enabled) Then
    If Not (IsDate(MaskEdBox1(3).Text)) Then
        MsgBox "Please Enter valid Date", vbInformation, head
        MaskEdBox1(3).SetFocus
    ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(3).Text) Then
        MsgBox "Paid Date must be Greater or equal to Bill Date", vbInformation, head
        MaskEdBox1(3).SetFocus
    End If
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : DTPicker1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub DTPicker1_LostFocus()
On Error GoTo Errh
If Index = 0 And (MaskEdBox1(0).Enabled) Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox "Please Enter valid Date", vbInformation, head
        MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
        MsgBox "OC Request Date must be earlier or equal to Processing Date", vbInformation, head
        MaskEdBox1(0).SetFocus
    End If
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : DTPicker1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub DTPicker5_CloseUp()
MaskEdBox1(4).Text = Format(DTPicker5.value, "dd/MM/yyyy")
MaskEdBox1(4).SetFocus
End Sub

Private Sub Form_Activate()
    If BUTTON(0).Visible = True And BUTTON(0).Enabled = True Then
        BUTTON(0).SetFocus
    End If
    Buttonframe.Width = Me.Width
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

On Error GoTo Errh

    If KeyCode = vbKeyA And Shift = 2 And BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 And BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 And BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 And BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)
   ElseIf KeyCode = vbKeyF And Shift = 2 And BUTTON(4).Enabled = True Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 And BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 And BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 And BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    ElseIf KeyCode = vbKeyRight And Shift = 2 And BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 And BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 And BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 And BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 And BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyEscape Then
        Call BUTTON_Click(10)
    End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Form_KeyDown " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then SendKeys "{tab}"
    If KeyAscii = 26 Then Call Form_KeyDown(vbKeyZ, 2)
End Sub

Private Sub Form_Load()

On Error GoTo Errh

'txtFields(12).Locked = False
'stbar.Panels(1).Text = SbMsg
stbar.Panels(1).Text = head
Set DB = New Connection
DB.CursorLocation = adUseClient
DB.Open "PROVIDER=MSDataShape;" + connectstring

SpreadAlign
 'Call getBrokertype

 Set rsa = New Recordset
rsa.Open "select fainstal,fatfr,isnull(BillEntryApp_Flg,'') as BillApp from in_para", DB, adOpenStatic, adLockBatchOptimistic
If rsa.RecordCount > 0 Then
    Fa_Instal = rsa("fainstal")
    Fa_Tfr = rsa("fatfr")
    FA_BillApp = Trim(rsa("BillApp"))
End If

BUTTON(9).Enabled = False
Opt = "qry"
If QryStat Then
   GSNO = 16
   Call query_mode(val(QSLCode), 1)
Else
   Call query_mode(0, 0)
End If
lblUserID = UserNme
'stbar.Panels(1).Text = SbMsg
stbar.Panels(1).Text = head
Call NEWFORM1(BUTTON, GSNO)
If QryStat Then
    BUTTON(0).Enabled = False
    BUTTON(1).Enabled = False
    BUTTON(2).Enabled = False
    BUTTON(3).Enabled = False
    BUTTON(4).Enabled = False
    BUTTON(6).Enabled = False
    BUTTON(7).Enabled = False
    BUTTON(8).Enabled = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    BUTTON(12).Enabled = False
End If

If FreightBillEntryType = "S" Then
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    lblLabels(9).Visible = True
    DTPicker4.Visible = True
    MaskEdBox1(3).Visible = True
   heading.Caption = " Freight Bill Payment Status"
   Me.Caption = heading.Caption
Else
    lblLabels(9).Visible = False
    DTPicker4.Visible = False
    MaskEdBox1(3).Visible = False
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Form_Load " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub Form_Resize()
On Error Resume Next

'    ''For Entry Form
'    stbar.Panels(2).Width = Me.Width - Val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
'    Buttonframe.Width = Me.Width - 200
'
'    Shape1.Width = Me.Width - 400
'    Frame1.Width = Me.Width - 600
'    SpdLCReq.Width = Me.Width - 1000
'
'    Shape1.Height = Me.Height - 2100
'    Frame1.Height = Me.Height - 2200
'    SpdLCReq.Height = Me.Height - 8000
'
'    Label7.Top = Me.Height - 2500
'    txtQty.Top = Me.Height - 2600
'    Label7.Left = Label7.Left + 6700
'    txtQty.Left = txtQty.Left + 6700
'
'    ''For PO Order List Frame
'    Frame8.Top = (Me.Height / 2) - (Frame8.Height / 2)
'    Frame8.Left = (Me.Width / 2) - (Frame8.Width / 2)

End Sub

Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  If adoPrimaryRS.State > 0 Then adoPrimaryRS.Close
  Set adoPrimaryRS = Nothing
  Set adoSecondaryRS = Nothing
  Set Nqcrecept = Nothing
  Reset

End Sub



Private Sub Value_Validate(Cancel As Boolean)

nTotalAmt = 0
tmp = Opt
Opt = ""
With SpdLCReq
For nRow = 1 To .MaxRows
    .Row = nRow
    If val(GetText(SpdLCReq, E_MROHAUS9, nRow)) > 0 Then
        ''Order Value in Foreign Currency
        nTotalAmt = nTotalAmt + GetText(SpdLCReq, E_Amount, nRow)
    End If
Next
End With
Opt = tmp


'txtfields(15).Text = Format(KSLRound(nTotalAmt, 0) * Val(txtfields(11).Text), "0.00")
'txtfields(16).Text = Format(KSLRound((Val(txtfields(15).Text) / 100) * Val(txtfields(6).Text), 0), "0.00")
'
'txtfields(15).Text = Format(KSLRound(Val(Value), 0) * Val(txtfields(11).Text), "0.00")
'txtfields(16).Text = Format(KSLRound((Val(txtfields(15).Text) / 100) * Val(txtfields(6).Text), 0), "0.00")
End Sub

Private Sub FrameDiscType_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
Static lx As Single, ly As Single
  If BUTTON = vbLeftButton Then
   Dim dx As Single, dy As Single
   dx = ScaleX(X - lx, vbTwips, ScaleMode)
   dy = ScaleY(Y - ly, vbTwips, ScaleMode)
    FrameDiscType.Move FrameDiscType.Left + dx, FrameDiscType.Top + dy
  Else
    lx = X
    ly = Y
  End If
End Sub

Private Sub SpdLCReq_BeforeEditMode(ByVal Col As Long, ByVal Row As Long, ByVal UserAction As FPSpreadADO.BeforeEditModeActionConstants, CursorPos As Variant, Cancel As Variant)

    If SpdLCReq.ActiveCol = E_MROHAUS9 Then
        stbar.Panels(2).Text = "Enter The Rate"
    End If

End Sub

Private Sub SpdLCReq_Change(ByVal Col As Long, ByVal Row As Long)
If Col = E_MROHAUS8 Or Col = E_MROHAUS10 Then
   lQtyChange = True
   Call TotalCalculation
End If
End Sub

Private Sub SpdLCReq_DblClick(ByVal Col As Long, ByVal Row As Long)
If Col = E_DOCSNO Then
    If Opt = "add" Or Opt = "mod" Then
        If SpdLCReq.MaxRows > 1 Then
            If MsgBox("Are You Sure You want to Delete this Record ?", vbYesNo, head) = vbYes Then
                SpdLCReq.DeleteRows SpdLCReq.ActiveRow, 1
                SpdLCReq.MaxRows = SpdLCReq.MaxRows - 1
                tmp = Opt
                Opt = ""
                With SpdLCReq
                    For nRow = 1 To .MaxRows
                        .Row = nRow
                        .SetText E_DOCSNO, .Row, nRow
                    Next
                End With
                Opt = tmp
            End If
        Else
            MsgBox "You cannot delete this record - Detail can have atleast one record", vbInformation, head
        End If
    End If
End If
End Sub

Private Sub SpdLCReq_EditError(ByVal Col As Long, ByVal Row As Long, ByVal EditError As Integer)
EditError = 0
End Sub

Private Sub SpdLCReq_GotFocus()
lQtyChange = False
End Sub

Private Sub SpdLCReq_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Errh

    If KeyCode = vbKeyA And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        Call BUTTON_Click(7)
    ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyEscape Then
        Call BUTTON_Click(10)
    End If



'
If Opt = "add" Then
'
'

    With SpdLCReq
        If .ActiveCol = eLCReqDtls.E_INVVsHOTAir Then
            If val(GetText(SpdLCReq, eLCReqDtls.E_CommWt, SpdLCReq.ActiveRow)) < val(GetText(SpdLCReq, eLCReqDtls.E_INVVsHOTAir, SpdLCReq.ActiveRow)) Then
            MsgBox "Received Amount Cannot be Greater than Reeivable Amount", vbInformation, head
            .SetText eLCReqDtls.E_INVVsHOTAir, .ActiveRow, CStr(val(GetText(SpdLCReq, eLCReqDtls.E_CommWt, SpdLCReq.ActiveRow)))
            Exit Sub
            End If

           ' .SetText eLCReqDtls.E_Value, .ActiveRow, CStr(val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS8, SpdLCReq.ActiveRow)) * val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS9, SpdLCReq.ActiveRow)))
        End If
           ' End If




    End With
End If



Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : SpdLCReq_KeyDown " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub


Public Sub bindcontls()
    On Error Resume Next
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.txtfields
        Set oText.DataSource = adoPrimaryRS
    Next
   ' Set Value.DataSource = adoPrimaryRS
    If Opt = "add" Then
        MaskEdBox1(0).Text = Format(Date, "dd/MM/yyyy")
    End If

    Set MaskEdBox1(0).DataSource = adoPrimaryRS
     Set MaskEdBox1(1).DataSource = adoPrimaryRS
    ' Check1.Value = adoPrimaryRS("BlankChequedtFlg")
   ' Check1.Value = IIf(IsNull(adoPrimaryRS("BlankChequedtFlg")), 0, adoPrimaryRS("BlankChequedtFlg"))
     'DTPicker2.DataSource = adoPrimaryRS
   ' Set MaskEdBox1(2).DataSource = adoPrimaryRS




End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
On Error GoTo Errh

    For Each oText In Me.txtfields
        oText.Locked = True
    Next
    Text2.Locked = True
    MaskEdBox1(0).Enabled = False
    DTPicker1.Enabled = False

    'txtFields(9).Locked = True
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : disablcontls " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
On Error GoTo Errh

    For Each oText In Me.txtfields
        oText.Locked = False
    Next

  '  txtFields(1).Locked = True
    MaskEdBox1(0).Enabled = True
    DTPicker1.Enabled = False
    'txtFields(9).Locked = True

    If Opt = "add" Then
        MaskEdBox1(0).Text = Format(pdate, "dd/MM/yyyy")
    End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : ENABLCONTLS " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

    End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)

On Error GoTo Errh

    If Opt = "add" Or Opt = "mod" Then
        Select Case Index
            Case 0
                MaskEdBox1(Index).BackColor = &HC0FFC0
                stbar.Panels(2).Text = MaskEdBox1(Index).ToolTipText
        End Select
    End If
    If Index = 0 Then
        If val(txtfields(2)) = 0 Then
            If MaskEdBox1(0).Text = "__/__/____" Then
                MaskEdBox1(0) = Format(pdate, "dd/MM/yyyy")
            End If
        End If
    End If



Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_GotFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub
Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo Errh

    If Opt = "add" Or Opt = "mod" Then

        Select Case Index
            Case 0
                MaskEdBox1(Index).BackColor = &H80000005
                stbar.Panels(2).Text = ""
        End Select

    End If

If Opt = "add" Or Opt = "mod" Then

    If Index = 0 Then
        If MaskEdBox1(0).Enabled Then
            If Not (IsDate(MaskEdBox1(0).Text)) Then
                MsgBox "Please Enter valid Date", vbInformation, head
                MaskEdBox1(0).SetFocus
                Exit Sub
            ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
                MsgBox "Reference Date must be earlier or equal to processing date", vbInformation, head
                MaskEdBox1(0).SetFocus
                MaskEdBox1(0).Text = Format(pdate, "dd/MM/yyyy")
                Exit Sub
            End If
        End If
    End If
    If Index = 1 Then
'    If IsDate((MaskEdBox1(1).Text)) = False Then
'    Check1.value = 1
'    Else
'    Check1.value = 0
'    End If
'        If (MaskEdBox1(1).Enabled) Then
'            If Not (IsDate(MaskEdBox1(1).Text)) Then
'                MsgBox "Please Enter valid Date", vbInformation, head
'                MaskEdBox1(1).SetFocus
'            ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(0).Text) Then
'                MsgBox "Bill Date must be Less or equal to Document Date", vbInformation, head
'                MaskEdBox1(1).SetFocus
'            End If
'        End If
    End If
    If Index = 3 Then

        If (MaskEdBox1(3).Enabled) Then
            If Not (IsDate(MaskEdBox1(3).Text)) Then
                MsgBox "Please Enter valid Date", vbInformation, head
                MaskEdBox1(1).SetFocus
            ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(3).Text) Then
                MsgBox "Paid Date must be Greater or equal to Bill Date", vbInformation, head
                MaskEdBox1(1).SetFocus
            End If
        End If
    End If
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Errh

If Opt = "add" And Index = 0 Then
    stbar.Panels(2).Text = "Select "
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_Validate " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub


Private Sub SpdLCReq_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
nAmount = 0
Dim PenQty1 As Double
If Opt = "add" Or Opt = "mod" Then

    If Col = eLCReqDtls.E_MRHOTAIR1 Or Col = eLCReqDtls.E_MRHOTAIR2 Or Col = eLCReqDtls.E_MRHOTAIRAVG Then
        SpdLCReq.SetText eLCReqDtls.E_MRHOTAIRAVG, Row, CStr((val(GetText(SpdLCReq, eLCReqDtls.E_MRHOTAIR1, SpdLCReq.ActiveRow)) + val(GetText(SpdLCReq, eLCReqDtls.E_MRHOTAIR2, SpdLCReq.ActiveRow))) / 2)
    End If
    If Col = eLCReqDtls.E_MRHOTAIR1 Or Col = eLCReqDtls.E_MRHOTAIR2 Or Col = eLCReqDtls.E_MRHOTAIRAVG Then
        SpdLCReq.SetText eLCReqDtls.E_INVVsHOTAir, Row, CStr(val(GetText(SpdLCReq, eLCReqDtls.E_InvoiceMoiture, SpdLCReq.ActiveRow)) - val(GetText(SpdLCReq, eLCReqDtls.E_MRHOTAIRAVG, SpdLCReq.ActiveRow)))
    End If
    
    If Col = eLCReqDtls.E_ActGrossWt Then
        SpdLCReq.SetText eLCReqDtls.E_GrossWtDiff, SpdLCReq.ActiveRow, (val(GetText(SpdLCReq, eLCReqDtls.E_INVGrssWt, SpdLCReq.ActiveRow)) - val(GetText(SpdLCReq, eLCReqDtls.E_ActGrossWt, SpdLCReq.ActiveRow)))
    End If
    
     If Col = eLCReqDtls.E_MROHAUS1 Or Col = eLCReqDtls.E_MROHAUS2 Or Col = eLCReqDtls.E_MROHAUS3 Or Col = eLCReqDtls.E_MROHAUS4 Or Col = eLCReqDtls.E_MROHAUS5 Or Col = eLCReqDtls.E_MROHAUS6 Or Col = eLCReqDtls.E_MROHAUS7 Or Col = eLCReqDtls.E_MROHAUS8 Or Col = eLCReqDtls.E_MROHAUS9 Or Col = eLCReqDtls.E_MROHAUS10 Or Col = eLCReqDtls.E_MROHAUS Then
        TotalMROHAUS = val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS1, SpdLCReq.ActiveRow)) + val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS2, SpdLCReq.ActiveRow)) + val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS3, SpdLCReq.ActiveRow)) + val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS4, SpdLCReq.ActiveRow)) + val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS5, SpdLCReq.ActiveRow))
        TotalMROHAUS1 = val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS6, SpdLCReq.ActiveRow)) + val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS7, SpdLCReq.ActiveRow)) + val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS8, SpdLCReq.ActiveRow)) + val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS9, SpdLCReq.ActiveRow)) + val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS10, SpdLCReq.ActiveRow))
        MROHAUS_CNT = 0
        If val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS1, SpdLCReq.ActiveRow)) > 0 Then
            MROHAUS_CNT = 1
        End If
        If val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS2, SpdLCReq.ActiveRow)) > 0 Then
            MROHAUS_CNT = MROHAUS_CNT + 1
        End If
        If val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS3, SpdLCReq.ActiveRow)) > 0 Then
            MROHAUS_CNT = MROHAUS_CNT + 1
        End If
        If val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS4, SpdLCReq.ActiveRow)) > 0 Then
            MROHAUS_CNT = MROHAUS_CNT + 1
        End If
        If val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS5, SpdLCReq.ActiveRow)) > 0 Then
            MROHAUS_CNT = MROHAUS_CNT + 1
        End If
        If val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS6, SpdLCReq.ActiveRow)) > 0 Then
            MROHAUS_CNT = MROHAUS_CNT + 1
        End If
        If val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS7, SpdLCReq.ActiveRow)) > 0 Then
            MROHAUS_CNT = MROHAUS_CNT + 1
        End If
        If val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS8, SpdLCReq.ActiveRow)) > 0 Then
            MROHAUS_CNT = MROHAUS_CNT + 1
        End If
        If val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS9, SpdLCReq.ActiveRow)) > 0 Then
            MROHAUS_CNT = MROHAUS_CNT + 1
        End If
        If val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS10, SpdLCReq.ActiveRow)) > 0 Then
            MROHAUS_CNT = MROHAUS_CNT + 1
        End If
       If MROHAUS_CNT > 0 Then
        SpdLCReq.SetText eLCReqDtls.E_MROHAUS, SpdLCReq.ActiveRow, CStr((val(TotalMROHAUS) + val(TotalMROHAU1)) / MROHAUS_CNT)
        SpdLCReq.SetText eLCReqDtls.E_InvVsOHAUS, SpdLCReq.ActiveRow, CStr(val(GetText(SpdLCReq, eLCReqDtls.E_InvoiceMoiture, SpdLCReq.ActiveRow)) - val(GetText(SpdLCReq, eLCReqDtls.E_MROHAUS, SpdLCReq.ActiveRow)))
        End If
    End If
    
End If
End Sub

Private Sub spdPO_GotFocus()
'spdPO.SetActiveCell P_Select, 1
End Sub

Private Sub Timer11_Timer()
Timer1.Interval = 500
If IsEmpty(nDispCount) = True Then
    nDispCount = 0
End If
If nDispCount = 0 Then
    txtfields(2).ForeColor = &H0&
    nDispCount = 1
ElseIf nDispCount = 1 Then
    txtfields(2).ForeColor = &H80FF&
    nDispCount = 0
End If
End Sub

Private Sub Text_Change()

End Sub

Private Sub Text4_Change()
If Opt = "add" Then

  Dim position As Integer


            If Trim(Text4.Text) = "" Then Exit Sub

            Dim I As Long, j As Long
            Dim FindCol As Integer
            If Combo1.Text = "LRNo" Then
                FindCol = P_ContainerNo
            ElseIf Combo1.Text = "Supplier" Then
                FindCol = P_SupplierName
            Else
                FindCol = P_INVMOI
            End If


            j = IIf(UCase(Trim(GetText(spdPO, FindCol, spdPO.Row))) = UCase(Trim(Text4)), spdPO.Row + 1, 1)
            For I = j To spdPO.MaxRows + 1
            position = InStr(1, UCase(GetText(spdPO, FindCol, I)), UCase(Trim(Text4)))
              If position > 0 Then
                    spdPO.Row = I
                    spdPO.SetSelection 0, spdPO.Row, spdPO.MaxCols, spdPO.Row
'                    SPDPO.SetFocus
'                    SPDPO.SetSelection 0, 10, 1, 10
                    spdPO.SetFocus
                    Text4.SetFocus
                    Exit For

                    Exit Sub
                End If
            Next I
            'Text4.SetFocus
          End If
        Exit Sub
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo Errh
Dim TypRs As Recordset
If Opt = "add" Or Opt = "mod" Then
If Index = 5 Or Index = 14 Or Index = 9 Or Index = 5 Then
 Call Totcalc

End If
End If
If Opt = "" Or Opt = "qry" Or Opt = " " Or Opt = "mod" Or Opt = "del" Then
Select Case Index

Case 19


Case 23

Case 20

Case 1


Case 5


Case 24
    Set Rs = New Recordset
    Rs.Open "select  a.carcode,carname from po_car a where carcode='" & txtfields(24).Text & "'", DB, adOpenStatic

    If Rs.RecordCount > 0 Then
         Text5.Text = Rs("carname")
         txtfields(24).Text = UCase(txtfields(24).Text)

        Exit Sub
    End If

Case 29
    Set nrs = New Recordset
    nrs.Open "select varcode,varname from rm_var where  varcode='" & txtfields(Index).Text & "'", DB, adOpenStatic

    If nrs.RecordCount > 0 Then
         Text8.Text = nrs("varname")
         Exit Sub
    End If
Case 30
    Set nrs = New Recordset
    nrs.Open "select PLCode,PLName from RM_Plant where  PLCode='" & txtfields(Index).Text & "'", DB, adOpenStatic

    If nrs.RecordCount > 0 Then
         Text9.Text = nrs("PLName")
         Exit Sub
    End If
Case 30
    Set nrs = New Recordset
    nrs.Open "select PLCode,PLName from RM_Plant where  PLCode='" & txtfields(Index).Text & "'", DB, adOpenStatic

    If nrs.RecordCount > 0 Then
         Text9.Text = nrs("PLName")
         Exit Sub
    End If
    
Case 6
'    Set Rs = New Recordset
'    Rs.Open "select * from ig_bank where BANK_CODE='" & Txtfields(6).Text & "'", DB, adOpenStatic
'    If Rs.RecordCount > 0 Then
'        Text1.Text = Rs("NAME")
'       Else
'        Text1.Text = ""
'    End If

Case 7
    Set TypeRs = New Recordset
    TypeRs.Open "Select SlCode,SLName,City from Fa_Slmas where SLCode='" & Trim(txtfields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
    If Not TypeRs.EOF Then
        Text2.Text = TypeRs(1) + ", " + IIf(IsNull(Trim(TypeRs(2))), "", Trim(TypeRs(2)))
    Else
        Text2.Text = ""
    End If
    Set TypeRs = Nothing
Case 6

Case 11

    nTotalAmt = 0
    nTotalQty = 0
'    tmp = Opt
'    Opt = ""
    With SpdLCReq
    For nRow = 1 To .MaxRows
        .Row = nRow
        If val(GetText(SpdLCReq, E_MROHAUS9, nRow)) > 0 Then
'            .SetText E_Value, .Row, Format(Val(GetText(SpdLCReq, E_Amount, nRow)) * Val(txtfields(11).Text), "0.00")
'            nTotalAmt = nTotalAmt + Val(GetText(SpdLCReq, E_Amount, nRow))
'            nTotalQty = nTotalQty + Val(GetText(SpdLCReq, E_MROHAUS9, nRow))
        End If
    Next
    End With
'    txtQty.Text = Format(nTotalQty, "0.000")
'    Value.Text = Format(KSLRound(nTotalAmt, 0), "0.00")
'    txtfields(15).Text = Format(KSLRound(nTotalAmt, 0) * Val(txtfields(11).Text), "0.00")
'    txtfields(16).Text = Format(KSLRound((Val(txtfields(15).Text) / 100) * Val(txtfields(6).Text), 0), "0.00")
'    Opt = tmp

Case 27
    Set Rs = New Recordset
    Rs.Open "select Distinct a.tc""Transaction Type Code"",a.tchead""Transaction Type Head"" from fa_tcmas a where  TC= " & val(txtfields(27).Text) & "", DB, adOpenStatic
    If Not Rs.EOF Then
        Text6.Text = Rs(1)
    Else
        Text6.Text = ""
    End If

End Select


End If


Exit Sub
Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtfields_Change " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo Errh

    If Opt = "add" Then
        If Index = 5 Then
            If lSuppSel = True Then
                lSuppSel = False
                Exit Sub
            End If
        End If

        If Index = 28 Then
'            Set Rs = New Recordset
'            Rs.Open "SELECT ISNULL(MAX(IssDocno),0)+1 FROM fa_purhd WHERE IssDocdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and tc='" & val(txtfields(27).Text) & "'", db, adOpenStatic
'            txtfields(28).Text = Rs(0)
        End If

    End If
    If Opt = "add" Or Opt = "mod" Then
        If Index <> 2 Or Index <> 9 Or Index <> 47 Then
            txtfields(Index).BackColor = &HC0FFC0
            stbar.Panels(2).Text = txtfields(Index).ToolTipText
        End If
    End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description    : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtFields_GotFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)

On Error GoTo Errh

'//////////**************FOR ALL FIELD VALIDATION *****************/////////
'//////////**************FOR ALL FIELD VALIDATION *****************/////////

    If Opt = "add" Or Opt = "mod" Then
        Select Case Index
            Case 1 'LC Type
              '  ToAlphaNumber txtfields(Index), 5, KeyAscii
            Case 5 'Payment Type
              ' Call ToNumber(Txtfields(Index), 15, KeyAscii)
            Case 6 'Margin Money
              '  TodueDate txtfields(Index), 5, KeyAscii, 2
            Case 3 'Country of Shipment
               ' ToAlphaNumber txtfields(Index), 100, KeyAscii
'                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
'                    (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
'                     KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
'                     Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
'                     KeyAscii = 0
'                End If

            Case 8 'Delivery Schedule
              '  ToAlphaNumber txtfields(Index), 100, KeyAscii
                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                    (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                     KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                     Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                     KeyAscii = 0
                End If

            Case 4 'Despatch Mode
               ' ToAlphaNumber txtfields(Index), 100, KeyAscii

            Case 9 'Currency
              '  ToAlphaNumber txtfields(Index), 3, KeyAscii

            Case 5 'Payment Term
                ' ToAlphaNumber txtfields(Index), 10, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                           (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                            KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                             Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                            KeyAscii = 0
                 End If
            Case 7 ' Supplier Code Validation
                If txtfields(7).Text = "" Then
              '  Call ToAlpha(txtfields(Index), 7, KeyAscii)
            Else
                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                       (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                        KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58)) Then
                        KeyAscii = 0
                End If
                If Len(txtfields(Index).Text) > 7 Then
                    KeyAscii = 0
                End If
            End If
            Case 10 'Delivery Term
               ' ToAlphaNumber txtfields(Index), 100, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                        (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                         KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                         KeyAscii = 0
                 End If
            Case 11 'Conversion Rate
               ' TodueDate txtfields(Index), 12, KeyAscii, 5
            Case 12 'Payment Term
                ' ToAlphaNumber txtfields(Index), 100, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                        (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                         KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                         KeyAscii = 0
                 End If

        End Select
    End If

    If Opt = "mod" Then
        txtfields(7).Enabled = False
    Else
        txtfields(7).Enabled = True
    End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : TXTFIELDS_KeyPress " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error Resume Next
If Not (txtfields(Index).Text = "") Then
    txtfields(Index).Text = UCase(txtfields(Index).Text)
End If

If Index = 3 Then
    If Opt = "add" Then
        If Trim(txtfields(3).Text) = "" Then
            txtfields(3).SetFocus
            Exit Sub
        End If
    End If
End If

If Index = 7 Then
    If Opt = "add" Or Opt = "mod" Then
        If Trim(txtfields(7).Text) = "" Then
            spdPO.SetFocus
            Exit Sub
        End If
    End If
End If
If Opt = "add" Or Opt = "mod" Then
    If Index <> 2 Then
        txtfields(Index).BackColor = &H80000005
        stbar.Panels(2).Text = ""
    End If
End If

txtfields(Index).BackColor = &H80000005

End Sub
Public Sub query_mode(ndocno As Long, dDocdt As Date)

Dim Rs As Recordset
On Error GoTo Errh
If FreightBillEntryType = "S" Then
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
End If
    If Not Opt = " " Then
        On Error GoTo er1
        lQtyChange = False
        txtfields(0).Text = Divcode
        Frame8.Visible = False
        Buttonframe.Enabled = True
        BUTTON(12).Enabled = True
        Call disablcontls
        DATLAB.Caption = Format(pdate, "dd/MM/yyyy")  'This variable is declared as global to show the date
        If ndocno = 0 Then
            Opt = " "
            Set adoPrimaryRS = New Recordset
            Call qry1
        Else
            Call fnd1(ndocno, dDocdt)
        End If
        If adoPrimaryRS.RecordCount = 0 And (Opt = "qry" Or Opt = " ") Then
            Call SpreadAlign(0)
            MsgBox "No Records Found", vbInformation, head
            '''''''''''''''''Set SpdLCReq.DataSource = Nothing
            Dim oText As TextBox
            'Bind the text boxes to the recordset
            For Each oText In Me.txtfields
                oText.Text = ""
            Next

           ' LCTName.Text = ""

            MaskEdBox1(0).Text = "__/__/____"
            Screen.MousePointer = 0
            Exit Sub
        End If

        If adoPrimaryRS.RecordCount = 0 And Opt = "fnd" Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = dv1
            Call BUTTON_Click(10)
            Exit Sub
        End If
        If Opt <> "fnd" Then
            If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
        End If
        Call bindcontls
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
        Set adoSecondaryRS = New Recordset
        Set adoSecondaryRS.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
        Call SpreadAlign(adoSecondaryRS.RecordCount)
        SpdLCReq.Lock = True

        If Opt <> "fnd" Then
            desc.Caption = "Query"
        End If

        Label2.Visible = False

    End If

    ' Calling newform procedure from Module to disable buttons
    If adoPrimaryRS.RecordCount = 0 And (Opt = "qry" Or Opt = " ") Then
        MsgBox "No Records Found", vbInformation, head
        Call Norecfound(BUTTON)
        LCTName.Text = ""
        Text1.Text = ""
        Text2.Text = ""
        Call bindcontls
        ''''''''''''''''''''Set SpdLCReq.DataSource = Nothing
        Screen.MousePointer = 0
        Exit Sub
    Else
        Call NEWFORM1(BUTTON, GSNO)
    End If

    If adoPrimaryRS.RecordCount = 0 And Opt = "fnd" Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = dv1
        Exit Sub
    End If
    Call adddelmod(BUTTON)
    Screen.MousePointer = 0
If FreightBillEntryType = "S" Then
BUTTON(0).Enabled = False
End If
    Exit Sub
er1:
    If Err = 3021 Then
        MsgBox "No Records Found", vbInformation, head + "Message"
        If Opt = "fnd" Then
            ''''''''''''''''Set SpdLCReq.DataSource = Nothing
        End If
        Screen.MousePointer = 0
    End If
    If Err = -2147467259 Then
        MsgBox "Connection  coul", vbInformation, head
        Screen.MousePointer = 0
    End If
    Screen.MousePointer = 0
If FreightBillEntryType = "S" Then
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Query_mode " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Public Sub delmodproc(a As String, B As String)

On Error GoTo Errh

    RW = 1000
    BUTTON(9).Enabled = True
    BUTTON(9).Enabled = True
    On Error GoTo Er
    Set adoPrimaryRS = New Recordset
    Set adoSecondaryRS = New Recordset

    Set adoPrimaryRS = New Recordset



    adoPrimaryRS.Open " SHAPE {SELECT Divcode,Docno,Docdt,slcode,Billno,Billdt,LotNo,LotDT,ArrNo,ArrDT,Varcode,Line_no,PlCode,Batch_No,Remarks,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,HostID FROM RM_FibreTestHD WHERE DivCode='" & Divcode & "' And docNo = " & val(a) & " and Docdt = '" & Format(B, "yyyy-mm-dd") & "' And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                  " Order by DivCode,Docdt,docno} AS ParentCMD APPEND ({SELECT Divcode,Docno,Docdt,DOCSNO,LOTNO,LOTDT,Varcode,BaleNO,INVGrssWt,ActGrossWt,GrossWtDiff,NetWt,CommWt,ProductionDate,InvoiceMoiture,MRHOTAIR1,MRHOTAIR2,MRHOTAIRAVG,MROHAUS1,MROHAUS2,MROHAUS3,MROHAUS4,MROHAUS5,MROHAUS6,MROHAUS7,MROHAUS8,MROHAUS9,MROHAUS10,MROHAUS,INVVsHOTAir,InvVsOHAUS,PBaleno FROM RM_FibreTestDT a Where a.divcode='" & Divcode & "' " & _
                  "  And DocNo = " & val(a) & " and Docdt = '" & Format(B, "yyyy-mm-dd") & "' And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "'  Order by a.DivCode,DocNo,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE ,docno TO docno,Docdt TO Docdt) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

    Call bindcontls

    If Opt = "mod" Or Opt = "del" Then
        Set adoSecondaryRS.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
        RW = 1
        With SpdLCReq
        If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
        .MaxRows = 0
        Do While Not adoSecondaryRS.EOF
            .MaxRows = .MaxRows + 1
          .SetText eLCReqDtls.E_DivCode, RW, adoSecondaryRS("Divcode")
            .SetText eLCReqDtls.E_docno, RW, adoSecondaryRS("DocNo")
            .SetText eLCReqDtls.E_Docdt, RW, adoSecondaryRS("Docdt")
            .SetText eLCReqDtls.E_DOCSNO, RW, adoSecondaryRS("DocSNo")
            .SetText eLCReqDtls.E_SBaleNO, RW, adoSecondaryRS("PBaleno")
            .SetText eLCReqDtls.E_BaleNO, RW, adoSecondaryRS("baleno")
            .SetText eLCReqDtls.E_MROHAUS, RW, adoSecondaryRS("MROHAUS")
            .SetText eLCReqDtls.E_MROHAUS1, RW, adoSecondaryRS("MROHAUS1")
            .SetText eLCReqDtls.E_MROHAUS2, RW, adoSecondaryRS("MROHAUS2")
            .SetText eLCReqDtls.E_MROHAUS3, RW, adoSecondaryRS("MROHAUS3")
            .SetText eLCReqDtls.E_MROHAUS5, RW, adoSecondaryRS("MROHAUS5")
            .SetText eLCReqDtls.E_MROHAUS4, RW, adoSecondaryRS("MROHAUS4")
            .SetText eLCReqDtls.E_MROHAUS6, RW, adoSecondaryRS("MROHAUS6")
            .SetText eLCReqDtls.E_MROHAUS9, RW, adoSecondaryRS("MROHAUS9")
            .SetText eLCReqDtls.E_MROHAUS8, RW, adoSecondaryRS("MROHAUS8")
             .SetText eLCReqDtls.E_MROHAUS7, RW, adoSecondaryRS("MROHAUS7")
            .SetText eLCReqDtls.E_MROHAUS10, RW, adoSecondaryRS("MROHAUS10") '
            .SetText eLCReqDtls.E_MRHOTAIR2, RW, adoSecondaryRS("MRHOTAIR2") '
            .SetText eLCReqDtls.E_MRHOTAIRAVG, RW, adoSecondaryRS("MRHOTAIRAVG")
           
            
             .SetText eLCReqDtls.E_VarCode, RW, adoSecondaryRS("varcode")
             .SetText eLCReqDtls.E_GrossWtDiff, RW, adoSecondaryRS("GrossWtDiff")
             .SetText eLCReqDtls.E_INVGrssWt, RW, adoSecondaryRS("INVGrssWt")
             .SetText eLCReqDtls.E_ActGrossWt, RW, adoSecondaryRS("ActGrossWt")
             .SetText eLCReqDtls.E_ProductionDate, RW, Format(adoSecondaryRS("ProductionDate"), "dd/MM/yyyy")
             .SetText eLCReqDtls.E_InvoiceMoiture, RW, adoSecondaryRS("InvoiceMoiture")
             .SetText eLCReqDtls.E_MRHOTAIR1, RW, adoSecondaryRS("MRHOTAIR1")

             .SetText eLCReqDtls.E_LotDate, RW, Format(adoSecondaryRS("lotdt"), "dd/MM/yyyy")
             .SetText eLCReqDtls.E_LOTNO, RW, adoSecondaryRS("lotno")
             
          

            .SetText eLCReqDtls.E_INVVsHOTAir, RW, adoSecondaryRS("INVVsHOTAir")
            .SetText eLCReqDtls.E_CommWt, RW, adoSecondaryRS("CommWt")

            .SetText eLCReqDtls.E_NetWt, RW, adoSecondaryRS("NetWt")
            .SetText eLCReqDtls.E_InvVsOHAUS, RW, adoSecondaryRS("InvVsOHAUS")
           
     


            RW = RW + 1
            adoSecondaryRS.MoveNext
        Loop
        End With
        Call CreditNoteLoad
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT Divcode,Docno,Docdt,slcode,Billno,Billdt,LotNo,LotDT,ArrNo,ArrDT,Varcode,Line_no,PlCode,Batch_No,Remarks,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,HostID FROM RM_FibreTestHD Where DivCode='" & Divcode & "'  And docno = " & val(a) & " and Docdt = '" & Format(B, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

        Call bindcontls

    End If

    Call SpreadAlign(adoSecondaryRS.RecordCount)
    Frame1.Visible = True
    BUTTON(12).Enabled = False
    SpdLCReq.Visible = True
    txtfields(0).Locked = False '23-10-2020 changed
   ' txtfields(1).Locked = True
    txtfields(2).Locked = True

    Label4.Visible = False
    Label5.Visible = False
    MaskEdBox1(0).Enabled = False

    If Opt = "mod" Then
        stbar.Panels(2).Text = "Modify dueDate,Store Code and Click Save button to Save the Modified Records"
    ElseIf Opt = "del" Then
        stbar.Panels(2).Text = "Click Save Button to Save the Delete Records"
    End If
    Screen.MousePointer = 0
    If Opt = "del" Then
        Call disablcontls
    End If

Exit Sub
Er:
    MsgBox "Please Select a valid Value from the List", vbOKOnly, head + "Selection Warning"
    Screen.MousePointer = 0
    BUTTON(9).Enabled = False

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : delmodproc " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Public Function newdocno()

    Dim v_stdate  As String, v_endate As String
    Dim Rs As Recordset
    Dim tcrs As Recordset
    On Error GoTo Errh

    v_stdate = Format(yfdate, "yyyy-mm-dd")
    v_endate = Format(yldate, "yyyy-mm-dd")
    Set Rs = New Recordset
    Rs.Open "Select right(isnull(max(convert(numeric,docno)),0),4) From RM_FibreTestHD where Divcode = '" & Divcode & "'  and Docdt between '" & v_stdate & "'   and  '" & v_endate & "'", DB, adOpenStatic, adLockReadOnly
    If Not (IsNull(Rs(0))) And (Rs.BOF = False) Then 'check new entry for the year or not
        'newdocno = Format(yfdate, "YY") & Padl(CStr(Rs(0) + 1), 4, "0")
         newdocno = Rs(0) + 1
    Else
        'newdocno = Format(yfdate, "YY") & Padl(CStr(Rs(0) + 1), 4, "0")
        newdocno = Rs(0) + 1
    End If



    Exit Function

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : newDocNo " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Function
Public Sub qry1()
On Error GoTo Errh
Call SETDISCOUNTHead
Set adoPrimaryRS = New Recordset

adoPrimaryRS.Open " SHAPE {SELECT Divcode,Docno,Docdt,slcode,Billno,Billdt,LotNo,LotDT,ArrNo,ArrDT,Varcode,Line_no,PlCode,Batch_No,Remarks,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,HostID FROM RM_FibreTestHD WHERE DivCode='" & Divcode & "' And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                  " Order by DivCode,Docdt,docno} AS ParentCMD APPEND ({SELECT Divcode,Docno,Docdt,DOCSNO,LOTNO,LOTDT,Varcode,BaleNO,INVGrssWt,ActGrossWt,GrossWtDiff,NetWt,CommWt,ProductionDate,InvoiceMoiture,MRHOTAIR1,MRHOTAIR2,MRHOTAIRAVG,MROHAUS1,MROHAUS2,MROHAUS3,MROHAUS4,MROHAUS5,MROHAUS6,MROHAUS7,MROHAUS8,MROHAUS9,MROHAUS10,MROHAUS,INVVsHOTAir,InvVsOHAUS,PBaleno FROM RM_FibreTestDT a Where a.divcode='" & Divcode & "' " & _
                  "  And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "'  Order by a.DivCode,DocNo,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE ,docno TO docno,Docdt TO Docdt) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : qry1 " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

 End Sub

Public Sub fnd1(a As Long, B As Date)
On Error GoTo Errh

Set adoPrimaryRS = New Recordset

 adoPrimaryRS.Open " SHAPE {SELECT Divcode,Docno,Docdt,slcode,Billno,Billdt,LotNo,LotDT,ArrNo,ArrDT,Varcode,Line_no,PlCode,Batch_No,Remarks,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,HostID FROM RM_FibreTestHD WHERE DivCode='" & Divcode & "' And docNo = " & val(a) & " and Docdt = '" & Format(B, "yyyy-mm-dd") & "' And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                  " Order by DivCode,Docdt,docno} AS ParentCMD APPEND ({SELECT Divcode,Docno,Docdt,DOCSNO,LOTNO,LOTDT,Varcode,BaleNO,INVGrssWt,ActGrossWt,GrossWtDiff,NetWt,CommWt,ProductionDate,InvoiceMoiture,MRHOTAIR1,MRHOTAIR2,MRHOTAIRAVG,MROHAUS1,MROHAUS2,MROHAUS3,MROHAUS4,MROHAUS5,MROHAUS6,MROHAUS7,MROHAUS8,MROHAUS9,MROHAUS10,MROHAUS,INVVsHOTAir,InvVsOHAUS,PBaleno FROM RM_FibreTestDT a Where a.divcode='" & Divcode & "' " & _
                  "  And DocNo = " & val(a) & " and Docdt = '" & Format(B, "yyyy-mm-dd") & "' And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "'  Order by a.DivCode,DocNo,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE ,docno TO docno,Docdt TO Docdt) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic


Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : fnd1 " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub


Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Errh

    If Opt = "add" Or Opt = "mod" Then



   If Index = 10 Then

      Set Rs = New Recordset

   Rs.Open "select  tax_code,description,st_per from ig_tax where tax_code='" & txtfields(10).Text & "'", DB, adOpenStatic

    If Rs.RecordCount > 0 Then
         Text3.Text = Rs("Description")
         txtfields(17).Text = Rs("st_per")
         txtfields(10).Text = Rs("tax_code")

         Exit Sub
    Else
         LookUp.Clear = True

          LookUp.query = "select  tax_code 'Tax _code',Description,st_per 'GST % ' from ig_tax where isnull(taxstatus,'n')='Y' "

         LookUp.Caption = "Tax Listing"
         LookUp.DefCol = "Description"
         LookUp.ALIGN = "1200,3000,1200"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
                txtfields(17).Text = LookUp.Fields(2)
                txtfields(10).Text = LookUp.Fields(0)

                Call TotalCalculation
                LookUp.Clear = True
              '  txtfields(6).SetFocus
         Else
                txtfields(10).Text = ""
                Text3.Text = ""

         End If
        stbar.Panels(2).Text = "Select Tax Name from the List"

    End If

   End If

     If Index = 27 Then
        Set rsa = New Recordset
        strSQL = "select Distinct a.tc""Tc"",a.tchead""TcHead"" from fa_tcmas a,RM_FA_PAYMENTGL b  where A.TC=B.tc AND B.DIVCODE ='" & Divcode & "' And a.tc='" & val(txtfields(27).Text) & "' "
        rsa.Open strSQL, DB, adOpenStatic
        If Not rsa.EOF Then
            txtfields(27).Text = rsa("TC")
            Text6.Text = rsa("TcHead")
            Exit Sub
        Else
            LookUp.Clear = True
            LookUp.query = "select Distinct a.tc""TC"",a.tchead""TC Head"" from fa_tcmas a,RM_FA_PAYMENTGL b  where A.TC=B.tc AND B.DIVCODE ='" & Divcode & "' "
            LookUp.Caption = "TC Listing"
            LookUp.DefCol = "TC Head"
            LookUp.ALIGN = "1000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(27).Text = LookUp.Fields(0)
                Text6.Text = LookUp.Fields(1)
                Set Rs = New Recordset
'                Rs.Open "SELECT ISNULL(MAX(IssDocno),0)+1 FROM fa_purhd WHERE IssDocdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and tc='" & val(txtfields(27).Text) & "'", db, adOpenStatic
'                txtfields(28).Text = Rs(0)
                Call TotalCalculation
                LookUp.Clear = True
            Else
                txtfields(27).Text = ""
                Text6.Text = ""
            End If
                stbar.Panels(2).Text = "Select TC Head from the List"
        End If
   End If





       If Index = 28 Then   '' Supplier

            
            Set rss = New Recordset
            If IsDate(MaskEdBox1(5).Text) = True Then
                qry = "select distinct a.supcd""Supplier Code"",a.slname""Supplier Name"" from  VW_ArrivalDetails a where supcd='" & Trim(txtfields(7).Text) & "' and docno='" & val(txtfields(31).Text) & "' and docdt='" & Format(MaskEdBox1(5).Text, "yyyy-mm-dd") & "' and Divcode='" & Divcode & "' "
            Else
                qry = "select distinct a.supcd""Supplier Code"",a.slname""Supplier Name"" from  VW_ArrivalDetails a where supcd='" & Trim(txtfields(7).Text) & "' and docno='" & val(txtfields(31).Text) & "' and ARRNO='" & val(txtfields(28).Text) & "' and lotno='" & val(txtfields(31).Text) & "' and Divcode='" & Divcode & "' "
            End If
            rss.Open qry, DB, adOpenStatic
'            If rss.RecordCount = 0 Then
'                MsgBox "No Orders Found", vbInformation, head
'                Exit Sub
'            End If


            If Not rss.EOF Then

                    txtfields(7).Text = rss(0)
                    Text2.Text = rss(1)
            Else
                qry = "select distinct a.Docno 'Doc.No.',a.Docdt 'Doc.Date',a.LotNo 'Lot No.',a.lotDt 'Lot Date',a.varname 'Variety', a.supcd""Supplier Code"",a.slname""Supplier Name"" from  VW_ArrivalDetails a where Divcode='" & Divcode & "'"
                LookUp.Clear = True
                LookUp.query = qry
                LookUp.Caption = "Arrival Listing"
                LookUp.DefCol = "Doc.No."
                LookUp.ALIGN = "800,1000,800,1000,1800,1200,3000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then  '8
                    txtfields(7).Text = LookUp.Fields("Supplier Code")
                    Text2.Text = LookUp.Fields("Supplier Name")
                    
                    txtfields(31).Text = LookUp.Fields("Doc.No.")
                    txtfields(32).Text = LookUp.Fields("Lot No.")
                    
                    MaskEdBox1(5).Text = LookUp.Fields("Doc.Date")
                    DTPicker6.value = LookUp.Fields("Doc.Date")
                    
                    MaskEdBox1(6).Text = LookUp.Fields("Lot Date")
                    DTPicker7.value = LookUp.Fields("Lot Date")
                    
                    Set rsnew = New Recordset
                    rsnew.Open "select Distinct arrno,arrdt,plcode,plname,billno,billdt,Line_No,varcode,varname from  VW_ArrivalDetails a where supcd='" & Trim(txtfields(7).Text) & "' and docno='" & val(txtfields(31).Text) & "' and docdt='" & Format(MaskEdBox1(5).Text, "yyyy-mm-dd") & "'  and lotno='" & val(txtfields(32).Text) & "' and lotdt='" & Format(MaskEdBox1(6).Text, "yyyy-mm-dd") & "'  and Divcode='" & Divcode & "' ", DB, adOpenStatic, 1
                    If Not rsnew.EOF Then
                        txtfields(28).Text = rsnew("arrno")
                        MaskEdBox1(4).Text = rsnew("arrdt")
                        DTPicker5.value = rsnew("arrdt")
                        
                        txtfields(1).Text = rsnew("billno")
                        MaskEdBox1(1).Text = rsnew("billdt")
                        DTPicker2.value = rsnew("billdt")
                        
                        txtfields(30).Text = rsnew("plcode")
                        Text9.Text = rsnew("plname")
                        
                        txtfields(34).Text = rsnew("Line_No")
                        txtfields(29).Text = rsnew("varcode")
                        Text8.Text = rsnew("varname")
                        
                    End If

              

  If Opt = "add" Then

        Set Lrs = New Recordset
        Lrs.Open "select Distinct baleno,comm_wt,lotno,lotdt,NETWT,PGRWT,GRWT,Diffgrswt,varcode,inv_MOI MOITURE,partybaleno from VW_ArrivalDetails a where supcd='" & Trim(txtfields(7).Text) & "' and docno='" & val(txtfields(31).Text) & "' and docdt='" & Format(MaskEdBox1(5).Text, "yyyy-mm-dd") & "'  and lotno='" & val(txtfields(32).Text) & "' and lotdt='" & Format(MaskEdBox1(6).Text, "yyyy-mm-dd") & "'  and Divcode='" & Divcode & "' ", DB, adOpenStatic, 1

        If Lrs.RecordCount > 0 Then

            spdPO.CursorStyle = CursorStyleArrow
            LookUp.Clear = True
'                        Set spdPO.DataSource = Lrs
            RW = 1
            Do While Not Lrs.EOF
                    spdPO.MaxRows = spdPO.MaxRows + 1
                  '  spdPO.SetText ePODtls.P_SupplierCode, RW, Lrs("supcd")
                  
                    spdPO.SetText ePODtls.P_BaleNO, RW, Lrs("baleno")
                    spdPO.SetText ePODtls.P_FavaourableWt, RW, Lrs("NETWT")
                 '   spdPO.SetText ePODtls.P_SupplierName, RW, Lrs("slname")
                    spdPO.SetText ePODtls.P_INVGrossWt, RW, Lrs("PGRWT")
                   
                    spdPO.SetText ePODtls.P_GrossWtACT, RW, Lrs("GRWT")
                    spdPO.SetText ePODtls.P_CommWt, RW, Lrs("comm_wt")
                    spdPO.SetText ePODtls.P_DiffWt, RW, Lrs("Diffgrswt")
                    spdPO.SetText ePODtls.P_Varcode, RW, Lrs("varcode")
'                    spdPO.SetText ePODtls.P_BillDt, RW, Lrs("fbilldt")
'                    'spdPO.SetText ePODtls.P_ContainerNo, RW, Lrs("LORRYNOS")
'                    spdPO.SetText ePODtls.P_ContNo, RW, Lrs("contno")
                     spdPO.SetText ePODtls.P_INVMOI, RW, Lrs("MOITURE")

                     spdPO.SetText ePODtls.P_Lotno, RW, Lrs("lotno")
                    spdPO.SetText ePODtls.P_LotDate, RW, Lrs("lotdt")
                    spdPO.SetText ePODtls.P_SBaleNO, RW, Lrs("partybaleno")
                    
                    

                    Lrs.MoveNext
                RW = RW + 1

                Loop

            Call SpreadAlignPO(Lrs.RecordCount)
            Label10.Caption = "List of Pending Test Results List(s)"
            Frame8.Visible = True
            Frame8.ZOrder
            ChkSelectAll.value = 0
            ChkSelectAll.SetFocus
                       ' txtfields(5).Enabled = False
            Exit Sub
        Else
            MsgBox "No Record For this  ", vbInformation, head
            txtfields(7).Text = ""
            Text2.Text = ""
            txtfields(7).SetFocus
            lSuppSel = False
            Exit Sub
        End If
    End If
  Else
    Call BUTTON_Click(10)
    Exit Sub
  End If
End If

    End If
    End If


    If Index = 24 And Opt = "add" Then


      Set rss = New Recordset
      rss.Open "select  a.carcode 'Code',carname 'Carrier Name',isnull(a.Slcode,'') 'Transporter Code',isnull(b.slname,'') 'Transporter Name' from po_car a left join fa_slmas b on a.slcode=b.slcode where a.carcode='" & txtfields(24).Text & "'", DB, adOpenStatic

      If rss.RecordCount > 0 Then
           Text5.Text = rss("Carrier Name")
           txtfields(24).Text = rss("Code")

           Text2.Text = rss("Transporter Name")
           txtfields(7).Text = rss("Transporter Code")

          Exit Sub

      Else
         LookUp.Clear = True

         LookUp.query = "select distinct  a.carcode 'Code',carname 'Carrier Name',isnull(a.Slcode,'') 'Transporter Code',isnull(b.slname,'') 'Transporter Name'  from po_car  a left join fa_slmas b on a.slcode=b.slcode inner join rm_arrival c on c.carcode=a.carcode "

         LookUp.Caption = "Carrier Listing"
         LookUp.DefCol = "Carrier Name"
         LookUp.ALIGN = "1200,3500,1500,3500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
                Text5.Text = LookUp.Fields(1)
                txtfields(24).Text = LookUp.Fields(0)

                Text2.Text = LookUp.Fields("Transporter Name")
                txtfields(7).Text = LookUp.Fields("Transporter Code")

                LookUp.Clear = True
                 lSuppSel = True

                If Opt = "add" Then

                Set Lrs = New Recordset

                Lrs.Open "select *from Vw_RM_PendingFreightBill where pjdt<='" & Format(pdate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and carcode='" & Trim(txtfields(24).Text) & "'  order by SLNAME,pjdt,pjno", DB, adOpenStatic, 1


                    If Lrs.RecordCount > 0 Then

                     spdPO.CursorStyle = CursorStyleArrow
                        LookUp.Clear = True
'                        Set spdPO.DataSource = Lrs
                        RW = 1
                        Do While Not Lrs.EOF
'                            spdPO.ScrollBarShowMax = True
'                            spdPO.ScrollBars = ScrollBarsBoth
                            spdPO.MaxRows = spdPO.MaxRows + 1
                            spdPO.SetText ePODtls.P_SupplierCode, RW, Lrs("slcode")
                            spdPO.SetText ePODtls.P_INVMOI, RW, Lrs("pjno")
                            spdPO.SetText ePODtls.P_BaleNO, RW, Lrs("bales")
                            spdPO.SetText ePODtls.P_FavaourableWt, RW, Lrs("pjdt")
                            spdPO.SetText ePODtls.P_SupplierName, RW, Lrs("slname")
                            spdPO.SetText ePODtls.P_INVGrossWt, RW, Lrs("PlCode")
                            spdPO.SetText ePODtls.P_PlantName, RW, Lrs("plname")
                            spdPO.SetText ePODtls.P_GrossWtACT, RW, Lrs("ratekg")
                            spdPO.SetText ePODtls.P_CommWt, RW, Lrs("comm_wt")

                            spdPO.SetText ePODtls.P_DiffWt, RW, Lrs("fbillvalue")
                            spdPO.SetText ePODtls.P_Varcode, RW, Lrs("Fbillno")
                            spdPO.SetText ePODtls.P_BillDt, RW, Lrs("fbilldt")
                            spdPO.SetText ePODtls.P_ContainerNo, RW, Lrs("LORRYNOS")
                            spdPO.SetText ePODtls.P_ContNo, RW, Lrs("FREIGHT")

'                            Set rsF = New Recordset
'                            rsF.Open "select  max(freight_amt) Frgamt from RM_TransportRate t where t.Supcd=a.supcd and t.plant='" & Lrs("slcode") & "' and '" & Lrs("comm_wt") & "' betweeen VslCapacity and MinQty and Transporter='" & Trim(TXTFIELDS(7).Text) & "'", DB, adOpenStatic
'                            If rsF.EOF Then
'                                spdPO.SetText ePODtls.P_ContDate, RW, rsF("Frgamt")
'                                Else
'                                spdPO.SetText ePODtls.P_ContDate, RW, "0.0"
'                            End If



                            Lrs.MoveNext
                            RW = RW + 1

                        Loop

                        Call SpreadAlignPO(Lrs.RecordCount)
                        Label10.Caption = "List of Pending CN Bill List(s)"
                        Frame8.Visible = True
                        Frame8.ZOrder
                        ChkSelectAll.value = 0
                        ChkSelectAll.SetFocus
                       ' txtfields(5).Enabled = False
                        Exit Sub
                    Else
                        MsgBox "No Record For this  ", vbInformation, head
                        txtfields(7).Text = ""
                        Text2.Text = ""
                        txtfields(7).SetFocus
                        lSuppSel = False
                        Exit Sub
                    End If
                End If


              '  txtfields(6).SetFocus
         Else
                txtfields(10).Text = ""
                Text3.Text = ""

         End If
        stbar.Panels(2).Text = "Select Tax Name from the List"

      End If


    End If

    If Index = 11 Then
        txtfields(6).SetFocus
    End If
    If Index = 9 Or Index = 14 Then
        Call TotalCalculation
    End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtFields_Validate " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub


Private Sub SpreadAlign(Optional NoofRows As Integer = 0)

On Error GoTo spreadalign_Error

    SpdLCReq.Row = 1
    SpdLCReq.FontBold = True
    SpdLCReq.TypeTextWordWrap = True
    SpdLCReq.ClearSelection
    SpdLCReq.AllowColMove = True
    SpdLCReq.MaxCols = E_Remarks


    SetSpreadCol2 SpdLCReq, eLCReqDtls.E_DivCode, "Divcode", CellTypeStaticText, 2, , True, True
  '  SetSpreadCol SpdLCReq, E_DivCode, "DivCode", CellTypeStaticText, 8, 0

    SetSpreadCol2 SpdLCReq, E_docno, "DocNo", CellTypeNumber, 5, , True, True
    SetSpreadCol2 SpdLCReq, E_Docdt, "Date", CellTypeDate, 8, , True, True

    SpdLCReq.Col = E_DOCSNO
    SpdLCReq.TypeHAlign = TypeHAlignCenter
    SpdLCReq.TypeNumberDecPlaces = 0
    SetSpreadCol2 SpdLCReq, E_DOCSNO, "Sno", CellTypeNumber, 6, 0, False, False

    SetSpreadCol2 SpdLCReq, E_SBaleNO, "Supplier Bale No.", CellTypeStaticText, 8, , False, True
    SetSpreadCol2 SpdLCReq, E_BaleNO, "Bale No.", CellTypeNumber, 8, , False, True

    SetSpreadCol2 SpdLCReq, E_INVGrssWt, "Invoice Gross Wt.", CellTypeNumber, 8, 3, False, True
    SetSpreadCol2 SpdLCReq, E_MRHOTAIR2, "MR% (Hot Air) 2", CellTypeNumber, 10, 2, False, False
    SetSpreadCol2 SpdLCReq, E_MRHOTAIRAVG, "MR% (Hot Air)", CellTypeNumber, 9, 2, False, False
    SetSpreadCol2 SpdLCReq, E_MRHOTAIR1, "MR% (Hot Air) 1", CellTypeNumber, 9, 2, False, False

    SetSpreadCol2 SpdLCReq, E_MROHAUS, "MR% (OHAUS)", CellTypeNumber, 12, 2, False, False
    SetSpreadCol2 SpdLCReq, E_ActGrossWt, "Actual Gross Wt..", CellTypeNumber, 8, 3, False, False
    SetSpreadCol2 SpdLCReq, E_GrossWtDiff, "Gross Wt Difference", CellTypeNumber, 9, 3, False, True
    
     SetSpreadCol2 SpdLCReq, E_NetWt, "Favaourable Wt.", CellTypeNumber, 9, 3, False, True
    SetSpreadCol2 SpdLCReq, E_CommWt, "Commercial WT.", CellTypeNumber, 8, 3, False, True
    SetSpreadCol2 SpdLCReq, E_VarCode, "Varierty", CellTypeStaticText, 8, , False, True
   
    SetSpreadCol2 SpdLCReq, E_ProductionDate, "Production Date", CellTypeDate, 8, , False, False
'     SetSpreadCol2 SpdLCReq, E_Docdt, "Date", CellTypeDate, 8, , True, True
    SetSpreadCol2 SpdLCReq, E_InvoiceMoiture, "Invoice Moiture", CellTypeNumber, 8, 2, False, False
    SetSpreadCol2 SpdLCReq, E_LOTNO, "Lot No.", CellTypeStaticText, 9, 2, False, True
    SetSpreadCol2 SpdLCReq, E_LotDate, "Lot Date", CellTypeStaticText, 8, 2, False, True

'
' SpdLCReq.Col = E_MROHAUS1
'    SpdLCReq.TypeHAlign = TypeHAlignCenter
'    SpdLCReq.TypeNumberDecPlaces = 0
    SetSpreadCol2 SpdLCReq, E_MROHAUS1, "MR% (OHAUS) Level 1", CellTypeNumber, 8, 2, False, False
    SetSpreadCol2 SpdLCReq, E_MROHAUS2, "MR% (OHAUS) Level 2", CellTypeNumber, 8, 2, False, False

    SetSpreadCol2 SpdLCReq, E_MROHAUS3, "MR% (OHAUS) Level 3", CellTypeNumber, 8, 2, False, False
    SetSpreadCol2 SpdLCReq, E_MROHAUS4, "MR% (OHAUS) Level 4", CellTypeNumber, 8, 2, False, False
    SetSpreadCol2 SpdLCReq, E_MROHAUS5, "MR% (OHAUS) Level 5", CellTypeNumber, 8, 2, False, False
    SetSpreadCol2 SpdLCReq, E_MROHAUS6, "MR% (OHAUS) Level 6", CellTypeNumber, 8, 2, False, False
    SetSpreadCol2 SpdLCReq, E_MROHAUS7, "MR% (OHAUS) Level 7", CellTypeNumber, 8, 2, False, False
    SetSpreadCol2 SpdLCReq, E_MROHAUS8, "MR% (OHAUS) Level 8", CellTypeNumber, 8, 2, False, False
    SetSpreadCol2 SpdLCReq, E_MROHAUS9, "MR% (OHAUS) Level 9", CellTypeNumber, 8, 2, False, False
    SetSpreadCol2 SpdLCReq, E_MROHAUS10, "MR% (OHAUS) Level 10", CellTypeNumber, 8, 2, False, False
   
    SetSpreadCol2 SpdLCReq, E_INVVsHOTAir, "Invoice Vs. Hot Air", CellTypeNumber, 8, 2, False, False
    SetSpreadCol2 SpdLCReq, E_InvVsOHAUS, "Invoice Vs. OHAUS", CellTypeNumber, 10, 2, False, False


    SetSpreadCol2 SpdLCReq, E_TotCNDiscRate, "CND Rate", CellTypeNumber, 10, 2, True, True
    SetSpreadCol2 SpdLCReq, E_TotCNDiscValue, "CND Value", CellTypeNumber, 10, 2, True, True
    

    SetSpreadCol2 SpdLCReq, E_TotAssDisc, "Total Discount", CellTypeNumber, 9, 2, True, True
    SetSpreadCol2 SpdLCReq, E_TaxCode, "Tax Code", CellTypeEdit, 8, , True, True
    SetSpreadCol2 SpdLCReq, E_CGSTAmt, "CGST Amt.", CellTypeNumber, 9, 2, True, True
    SetSpreadCol2 SpdLCReq, E_CGSTPER, "CGST %", CellTypeNumber, 8, 2, True, True
    SetSpreadCol2 SpdLCReq, E_SGSTAmt, "SGST Amt.", CellTypeNumber, 9, 2, True, True
    SetSpreadCol2 SpdLCReq, E_SGSTPER, "SGST %", CellTypeNumber, 8, 2, True, True
    SetSpreadCol2 SpdLCReq, E_IGSTAmt, "IGST Amt.", CellTypeNumber, 9, 2, True, True
    SetSpreadCol2 SpdLCReq, E_IGSTPER, "IGST %", CellTypeNumber, 8, 2, True, True
    SetSpreadCol2 SpdLCReq, E_TotalAmt, "Total Amount", CellTypeNumber, 10, 2, True, True
    SetSpreadCol2 SpdLCReq, E_Remarks, "Remarks", CellTypeEdit, 18, , True, False

    SpdLCReq.MaxCols = E_Remarks
    SpdLCReq.MaxRows = NoofRows
   ' SpdLCReq.SetActiveCell E_MROHAUS9, 1
    SpdLCReq.ColsFrozen = E_LotDate
 



    Exit Sub

spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form frmLCRequest"
End Sub

Private Sub SpreadAlignPO(Optional NoofRows As Integer = 0)

On Error GoTo spreadalign_Error
'With spdPO
'    .ClearSelection
'    .MaxRows = NoofRows
'    .ColHeadersAutoText = DispBlank
'    .ClearSelection
'    .MaxCols = P_PlantName
'    .RowHeadersShow = False
'    .Row = 1
'    .FontBold = True
'    .OperationMode = OperationModeRow
'    .TypeCheckCenter = True
'    .TypeCheckType = TypeCheckTypeThreeState
    spdPO.Row = 0
    spdPO.FontBold = True
    spdPO.TypeTextWordWrap = True
    spdPO.ClearSelection
    spdPO.AllowColMove = True
    spdPO.Row = 0
    spdPO.FontBold = True
    spdPO.TypeTextWordWrap = True
    spdPO.ClearSelection
    spdPO.AllowColMove = True
    spdPO.AllowColMove = True
    spdPO.Row = 0
    spdPO.FontBold = True
    SetSpreadCol2 spdPO, P_Select, "   ", CellTypeCheckBox, 3, , False, False
    SetSpreadCol2 spdPO, P_SupplierCode, "Supplier Code", CellTypeStaticText, 8, , True, True

    spdPO.Col = P_INVMOI
    spdPO.TypeHAlign = TypeHAlignCenter
    spdPO.TypeNumberDecPlaces = 0
 
    SetSpreadCol2 spdPO, P_BaleNO, "Bale No..", CellTypeNumber, 5, 0, False, True
    
    SetSpreadCol2 spdPO, P_SBaleNO, "Supplier Bale No..", CellTypeStaticText, 8, 0, False, True
    
    SetSpreadCol2 spdPO, P_FavaourableWt, "Favaourable Wt.", CellTypeNumber, 10, 3, False, True

    
    SetSpreadCol2 spdPO, P_INVGrossWt, "Inv. Gross Wt.", CellTypeStaticText, 10, 3, False, True
    SetSpreadCol2 spdPO, P_PlantName, "Plant Name", CellTypeStaticText, 10, 2, True, True
    SetSpreadCol2 spdPO, P_CommWt, "Commercial Wt.", CellTypeNumber, 9, 3, False, True
    SetSpreadCol2 spdPO, P_GrossWtACT, "Gross Wt.(Actual)", CellTypeNumber, 9, 3, False, True
    SetSpreadCol2 spdPO, P_DiffWt, "Wt Difference", CellTypeNumber, 10, 3, False, True
 

    SetSpreadCol2 spdPO, P_Lotno, "Lot No.", CellTypeStaticText, 10, , False, True
    SetSpreadCol2 spdPO, P_LotDate, "Lot Date", CellTypeStaticText, 10, , False, True
    SetSpreadCol2 spdPO, P_INVMOI, "Invoice Moiture.", CellTypeNumber, 8, 2, False, True
    SetSpreadCol2 spdPO, P_Varcode, "Varcode", CellTypeStaticText, 10, , True, True
    SetSpreadCol2 spdPO, P_BillDt, "Bill Date", CellTypeStaticText, 9, , True, True
    SetSpreadCol2 spdPO, P_ContNo, "Order No.", CellTypeStaticText, 10, , True, True
    SetSpreadCol2 spdPO, P_ContDate, "Order Date", CellTypeStaticText, 10, , True, True
    SetSpreadCol2 spdPO, P_ContainerNo, "LR No.", CellTypeStaticText, 15, , True, True
    SetSpreadCol2 spdPO, P_SupplierName, "Supplier Name", CellTypeStaticText, 18, , True, True
    
    For nRow = 1 To spdPO.MaxRows
        spdPO.Row = nRow
        spdPO.Col = P_Select
        spdPO.value = 0
    Next

    spdPO.MaxCols = P_PlantName
    spdPO.MaxRows = NoofRows
   ' spdPO.SetActiveCell P_Select, 1
'End With
    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form frmLCRequest"
End Sub

Private Sub SpreadAlignSupplier(Optional NoofRows As Integer = 0)

On Error GoTo spreadalign_Error

'    SPSupplier.Row = 0
'    SPSupplier.FontBold = True
'
'    SetSpreadCol2 SPSupplier, S_SupplierCode, "Supplier Code", CellTypeStaticText, 12, , False, False
'    SetSpreadCol2 SPSupplier, S_SupplierName, "Supplier Name", CellTypeStaticText, 20, , False, True
'
'    SPSupplier.MaxCols = S_SupplierName
'    SPSupplier.MaxRows = NoofRows
'    SPSupplier.SetActiveCell S_SupplierCode, 1

    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form frmLCRequest"
End Sub
Private Function TrnDateValidation() As Boolean

    Set rstTrnDate = New ADODB.Recordset
    strQry = "Select isnull(MAX(Docdt),'" & Format(pdate, "yyyy-MM-dd") & "') as Ldate from RM_FibreTestHD  Where DivCode='" & Divcode & "' and Docdt Between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'"
    rstTrnDate.Open strQry, DB, adOpenForwardOnly, adLockReadOnly
    If Not rstTrnDate.EOF Then
        If rstTrnDate("Ldate") <= pdate Then
            TrnDateValidation = True
        Else
            MsgBox "The Last Date of Transaction is " & Format(rstTrnDate("Ldate"), "dd/MM/yyyy") & ". You are not Allowed to make a Transaction on Previous Date.", vbInformation, head
        End If
    Else
        TrnDateValidation = True
    End If

End Function


Private Sub OrderbyIndent(IType As Integer)

    Set indentrs = New ADODB.Recordset
    Dim SstrSql  As String
    SstrSql = ""
    indentrs.CursorLocation = adUseClient

    indentrs.Open "exec SP_PRToPO_RMI '" & Divcode & "','" & Format(pdate, "dd-mmm-yyyy") & "'," & IType, DB, adOpenStatic, 1

    If Not indentrs.EOF Then
        RW = 1
        Call SpreadAlignPO
        spdPO.Visible = True
        spdPO.MaxRows = 1
        With spdPO
        .Visible = True
        .ZOrder
        Do While Not indentrs.EOF
            .ScrollBarShowMax = True
            .ScrollBars = ScrollBarsBoth
            .MaxRows = .MaxRows + 1
'            .SetText ePODtls.P_INVMOI, RW, indentrs("Indent No.")
'            .SetText ePODtls.P_FavaourableWt, RW, indentrs("Indent Date")
'            .SetText ePODtls.P_INVGrossWt, RW, indentrs("Varity Code")
'            .SetText ePODtls.P_PlantName, RW, indentrs("Description")
'            .SetText ePODtls.P_DiffWt, RW, indentrs("Packtype")
'            .SetText ePODtls.P_OrdQty, RW, indentrs("BalQty")
'            .SetText ePODtls.P_BalQty, RW, indentrs("BalQtyKG")
'          '  .SetText ePODtls.P_ RW, indentrs("ename")
'            .SetText ePODtls.P_SupplierName, RW, indentrs("INV_TYPE")
            indentrs.MoveNext
            RW = RW + 1


        Loop
       End With
       ' DataGrid1.SetFocus
        BUTTON(4).Enabled = False
        BUTTON(12).Enabled = False
        BUTTON(13).Enabled = False
    Else
        MsgBox "No OutStanding Invoice(s)", vbInformation, head
 '       FpSpdIndHead_KeyPress (vbBack)
         Call BUTTON_Click(10)
        Exit Sub
    End If
End Sub

Private Sub Totcalc()
On Error Resume Next
Dim totrecamt As Double
'totrecamt = Val(txtfields(5).Text)
'txtfields(3).Text = Format(Round(val(txtfields(15).Text) * val(txtfields(14).Text) / 100, 0), "0.00")
'txtfields(8).Text = Format((val(txtfields(15).Text) + (val(txtfields(3).Text) + val(txtfields(5).Text) + val(txtfields(9).Text))), "0.00")

'    If SpdLCReq.MaxRows > 0 Then
'        For RW = 1 To SpdLCReq.MaxRows
'            SpdLCReq.Row = RW
'
'                If totrecamt > 0 Then
'                    If totrecamt >= Val(GetText(SpdLCReq, eLCReqDtls.E_VarCode, RW)) Then
'
'                        SpdLCReq.SetText eLCReqDtls.E_GrossWtDiff, RW, Val(GetText(SpdLCReq, eLCReqDtls.E_VarCode, RW))
'                    Else
'                        SpdLCReq.SetText eLCReqDtls.E_GrossWtDiff, RW, totrecamt
'
'                    End If
'
'                    totrecamt = totrecamt - Val(GetText(SpdLCReq, eLCReqDtls.E_VarCode, RW))
'                  Else
'                  SpdLCReq.SetText eLCReqDtls.E_GrossWtDiff, RW, 0
'               End If
'        Next
'
'    End If
End Sub
Public Sub SetSpreadCol2(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal IsLock As Boolean = True, Optional MinVal As Double = 0, Optional Maxval As Double = 9999999.99)
On Error GoTo SetSpreadCol1_Error
    With Spd
        .Col = Col
        .Row = -1: .celltype = celltype
        If iColWth <> 0 Then .ColWidth(Col) = iColWth
        If HideCol = True Then
          .ColHidden = True
        Else
          .ColHidden = False
        End If
        .Protect = True
        If IsLock = True Then .Lock = True Else .Lock = False
        If celltype = CellTypeNumber And DecWth > 0 Then .TypeNumberDecPlaces = DecWth
        If celltype = CellTypeNumber Then
            .TypeNumberMin = MinVal
            .TypeNumberMax = Maxval
        End If

        .ColHeaderRows = 1
        .SetText Col, 0, head
    End With
Exit Sub
SetSpreadCol1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetSpreadCol1 of Module RMIMod"
End Sub

Private Sub TotalCalculation()

    TotValue = 0: TotPacks = 0: totkgs = 0: TotPerson = 0: TotHrs = 0: FreightAmtBill = 0: FreightAmtMill = 0: FreightAmtApproved = 0: TDSValue = 0
    CGSTAMT = 0: IGSTAMT = 0: SGSTAMT = 0

    nTotalAmt = 0
    tmp = Opt
    Opt = ""
    With SpdLCReq
    For nRow = 1 To .MaxRows
        .Row = nRow
        If val(GetText(SpdLCReq, E_MROHAUS4, nRow)) > 0 Then
            If IGSTFLG = "Y" Then
                .SetText E_CGSTPER, .Row, Format(val(txtfields(17).Text) / 2, "0.00")
                .SetText E_SGSTPER, .Row, Format(val(txtfields(17).Text) / 2, "0.00")
                .SetText E_IGSTPER, .Row, Format("0", "0.00")
            Else
                .SetText E_IGSTPER, .Row, Format(val(txtfields(17).Text), "0.00")
                .SetText E_SGSTPER, .Row, Format("0", "0.00")
                .SetText E_CGSTPER, .Row, Format("0", "0.00")
            End If
            .SetText E_TotAssDisc, .Row, Format((val(GetText(SpdLCReq, E_INVVsHOTAir, nRow)) + val(GetText(SpdLCReq, E_TotCNDiscValue, nRow))), "0.00")

            .SetText E_CGSTAmt, .Row, Format((val(GetText(SpdLCReq, E_TotAssDisc, nRow)) * val(GetText(SpdLCReq, E_CGSTPER, nRow)) / 100), "0.00")
            .SetText E_SGSTAmt, .Row, Format((val(GetText(SpdLCReq, E_TotAssDisc, nRow)) * val(GetText(SpdLCReq, E_SGSTPER, nRow)) / 100), "0.00")
            .SetText E_IGSTAmt, .Row, Format((val(GetText(SpdLCReq, E_TotAssDisc, nRow)) * val(GetText(SpdLCReq, E_IGSTPER, nRow)) / 100), "0.00")
             Tottaxamt = val(GetText(SpdLCReq, E_CGSTAmt, nRow)) + val(GetText(SpdLCReq, E_SGSTAmt, nRow)) + val(GetText(SpdLCReq, E_IGSTAmt, nRow))


          '  .SetText E_NetWt, .Row, Format(Tottaxamt * val(txtfields(14).Text) / 100, "0.00")
            .SetText E_TotalAmt, .Row, Format(val(Tottaxamt) + val(GetText(SpdLCReq, E_TotAssDisc, nRow)), "0.00")


           '  TDSValue = TDSValue + (val(GetText(SpdLCReq, E_NetWt, nRow)))

             TotValue = TotValue + (val(GetText(SpdLCReq, E_TotAssDisc, nRow)))
'             FreightAmtBill = FreightAmtBill + (val(GetText(SpdLCReq, E_MROHAUS8, nRow)))
'             FreightAmtMill = FreightAmtMill + (val(GetText(SpdLCReq, E_MROHAUS9, nRow)))
'             FreightAmtApproved = FreightAmtApproved + (val(GetText(SpdLCReq, E_MROHAUS10, nRow)))

             CGSTAMT = CGSTAMT + (val(GetText(SpdLCReq, E_CGSTAmt, nRow)))
             SGSTAMT = SGSTAMT + (val(GetText(SpdLCReq, E_SGSTAmt, nRow)))
             IGSTAMT = IGSTAMT + (val(GetText(SpdLCReq, E_IGSTAmt, nRow)))

             totkgs = totkgs + (val(GetText(SpdLCReq, E_MROHAUS4, nRow)))
             TotPacks = TotPacks + (val(GetText(SpdLCReq, E_MROHAUS3, nRow)))

         End If
    Next
    End With
    txtfields(15).Text = Format(Round(TotValue, 2), "0.00")

   ' txtfields(3).Text = Format(Round(TDSValue, 2), "0.00")
    txtfields(20).Text = Format(Round(CGSTAMT, 2), "0.00")
    txtfields(21).Text = Format(Round(SGSTAMT, 2), "0.00")
    txtfields(22).Text = Format(Round(IGSTAMT, 2), "0.00")
    txtfields(6).Text = Format(Round(IGSTAMT + CGSTAMT + SGSTAMT, 2), "0.00")

    txtfields(16).Text = Format(Round(FreightAmtBill, 2), "0.00")

    txtfields(5).Text = Format(Round(FreightAmtMill, 2), "0.00")
    txtfields(11).Text = Format(Round(FreightAmtApproved, 2), "0.00")

    txtfields(13).Text = Format(Round(TotPacks, 2), "0.000")
    txtfields(12).Text = Format(Round(totkgs, 2), "0.000")
    GtotalAmt = Format(val(txtfields(15).Text) + val(txtfields(6).Text) - val(txtfields(3).Text), "00.00")

          If InStr(CStr(GtotalAmt), ".") > 0 Then
            tmprnd = Mid(CStr(GtotalAmt), InStr(CStr(GtotalAmt), "."), 4)
            If Right(tmprnd, 1) >= 5 Then
            GtotalAmt = Format(GtotalAmt, "#########0.00")
            End If
            Round1 = Mid(CStr(GtotalAmt), InStr(CStr(GtotalAmt), "."), 3)
            If Round1 <= 0.5 Then
                txtfields(23).Text = Format("-" & Round1, "#0.00")
                txtfields(8) = Format(GtotalAmt - Round1, "#0.00")
            Else
                txtfields(23).Text = Format(1 - Round1, "#0.00")
                txtfields(8).Text = Format(GtotalAmt + (1 - Round1), "#0.00")
            End If
            End If





 Opt = tmp
'Call calctotal

End Sub

Public Sub RunShellExecute(sTopic As String, _
                           sFile As Variant, _
                           sParams As Variant, _
                           sDirectory As Variant, _
                           nShowCmd As Long)

   Dim hWndDesk As Long
   Dim success As Long
' If Adobe Reader is installed:
'   1. On the Toolbox, right-click and select Components.
'   2. Select the "Adobe Acrobat 7.0 Browser Control Type Library 1.0" and click OK.
'   3. Add a PDF reader to the form and use its src property to open the PDF file.
  'the desktop will be the
  'default for error messages
   hWndDesk = GetDesktopWindow()

  'execute the passed operation
   success = ShellExecute(hWndDesk, sTopic, sFile, sParams, sDirectory, nShowCmd)

  'This is optional. Uncomment the three lines
  'below to have the "Open With.." dialog appear
  'when the ShellExecute API call fails
  'If success = SE_ERR_NOASSOC Then
     Call Shell("rundll32.exe shell32.dll,OpenAs_RunDLL " & sFile, vbNormalFocus)
 ' End If

End Sub



Private Sub SETDISCTYPEHead()
With SPDDiscTypeDet
        .ClearSelection
        .MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        .ClearSelection

        .MaxCols = SPDDTDValue
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True
'
    SPDDiscTypeDet.Row = 1
    SPDDiscTypeDet.FontBold = True
    SPDDiscTypeDet.TypeTextWordWrap = True
    SPDDiscTypeDet.ClearSelection
    SPDDiscTypeDet.AllowColMove = True
    SPDDiscTypeDet.MaxCols = SPDDTReceivedValue

        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTSNO, "S.No", CellTypeStaticText, 8, , False, True    'a
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTContno, "Cont No", CellTypeStaticText, 7, , False, True 'b
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTContdt, "Cont Date", CellTypeStaticText, 7, , False, True 'b
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTLOTNO, "Lot No", CellTypeStaticText, 6, , False, True 'b
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTLOTDT, "Lot Date", CellTypeStaticText, 7, , False, True 'b
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTDocno, "Docno", CellTypeStaticText, 8, , True, True 'b
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTDOCDT, "Doc Date", CellTypeStaticText, 8, , True, True 'b
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTVARSNO, "Variety Sno.", CellTypeStaticText, 8, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, "Varcode.", CellTypeStaticText, 8, , False, True  'b
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTDISCCODE, "Discount Type Code ", CellTypeStaticText, 8, , True, True 'b
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTCNFlg, "Flag", CellTypeStaticText, 8, , True, True 'b
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTDISCDESC, "Discount Type.", CellTypeStaticText, 25, , False, True 'i
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTinvDiscRate, "Invoice Disc. Rate/Kgs", CellTypeNumber, 8, 2, False, True  'i
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTDRate, "Agreed Disc. Rate/Kgs", CellTypeNumber, 8, 2, False, True  'i
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTDiffDiscRate, "Difference Disc. Rate/Kgs", CellTypeNumber, 8, 2, False, True  'i
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTDValue, "To be Received Discount Amount", CellTypeNumber, 8, 2, False, True  'i
        SetSpreadCol2 SPDDiscTypeDet, SpdDiscType.SPDDTReceivedValue, "Received Amount", CellTypeNumber, 8, 2, False, False  'i

   End With
End Sub




Private Sub SETDISCOUNTHead()
With SPD_MDISCDETAILS
        .ClearSelection
        .MaxRows = 0
        .ClearSelection
        .MaxCols = M_SPDDTReceivedValue
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True

        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTSNO, "Sno", CellTypeNumber, 6, 0, False, False
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTSNO, "S.No", CellTypeStaticText, 8, , False, True    'a
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTContno, "Cont No", CellTypeStaticText, 7, , False, True 'b
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTContdt, "Cont Date", CellTypeStaticText, 7, , False, True 'b
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTLOTNO, "Lot No", CellTypeStaticText, 6, , False, True 'b
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTLOTDT, "Lot Date", CellTypeStaticText, 7, , False, True 'b
        SetSpreadCol1 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDocno, "Docno", CellTypeStaticText, 8, , True, True 'b
        SetSpreadCol1 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDOCDT, "Doc Date", CellTypeStaticText, 8, , True, True 'b
        SetSpreadCol1 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTVARSNO, "Variety Sno.", CellTypeStaticText, 8, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
        SetSpreadCol1 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTVarcode, "Varcode.", CellTypeStaticText, 8, , False, True  'b
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDISCCODE, "Discount Type Code ", CellTypeStaticText, 8, , True, True 'b
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTCNFlg, "Discount Type Code ", CellTypeStaticText, 8, , True, True 'b

        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDISCDESC, "Discount Type.", CellTypeStaticText, 25, , False, True 'i
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTinvDiscRate, "Invoice Disc. Rate/Kgs", CellTypeNumber, 8, 2, False, True  'i
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDRate, "Agreed Disc. Rate/Kgs", CellTypeNumber, 8, 2, False, True  'i
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDiffDiscRate, "Difference Disc. Rate/Kgs", CellTypeNumber, 8, 2, False, True  'i
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTDValue, "To be Received Discount Amount", CellTypeNumber, 8, 2, False, True  'i
        SetSpreadCol2 SPD_MDISCDETAILS, SpdMDiscount.M_SPDDTReceivedValue, "Received Amount", CellTypeNumber, 8, 2, False, False
    End With
End Sub

